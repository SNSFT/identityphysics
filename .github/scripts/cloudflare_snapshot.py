#!/usr/bin/env python3
"""Daily Cloudflare site snapshot for the Repository Acquisition Panel.

Reads Cloudflare's GraphQL Analytics API for each site and merges the result into
cloudflare.json, so history accumulates past Cloudflare's 31-day retention:
  - daily totals: requests, visits, bytes served
  - AI and search crawlers by name: allowed (status < 400), unsuccessful (status >= 400), bytes
  - the paths those crawlers requested most
  - visitor usage: page views, unique visitors, cached and threat counts, top pages by visits,
    countries, referrers, browsers, operating systems, device types, status codes, cache status,
    and the paths most often refused (403), which are automated probes
Days are UTC calendar days. Nothing recorded is ever removed: a stored day is never lowered or
emptied by a later read. A field the plan does not serve is skipped and noted. Standard library only.

Environment:
  CF_TOKEN        Cloudflare API token with Zone > Zone: Read and Zone > Analytics: Read
  CF_ZONES        comma-separated site names, e.g. uuia.app,proofpress.org
  CF_BACKFILL     days to read back from yesterday (default 2, at most 30)
  OUT             optional output path (default cloudflare.json)
"""
import json, os, sys, time, datetime, urllib.request, urllib.error

API = "https://api.cloudflare.com/client/v4"
TOKEN = os.environ.get("CF_TOKEN", "")
ZONES = [z.strip() for z in os.environ.get("CF_ZONES", "").split(",") if z.strip()]
BACKFILL = max(1, min(30, int(os.environ.get("CF_BACKFILL", "2") or "2")))
OUT = os.environ.get("OUT", "cloudflare.json")

# Crawlers by user-agent token, matched in this order (case-insensitive).
# kind: crawl = bulk collection · assistant = a fetch made live for a person in a chat
#       search = search indexing · preview = link preview when a page is shared · archive
CRAWLERS = [
    ("Claude-SearchBot", "Anthropic", "search"),
    ("Claude-User", "Anthropic", "assistant"),
    ("ClaudeBot", "Anthropic", "crawl"),
    ("OAI-SearchBot", "OpenAI", "search"),
    ("ChatGPT-User", "OpenAI", "assistant"),
    ("GPTBot", "OpenAI", "crawl"),
    ("meta-externalfetcher", "Meta", "assistant"),
    ("meta-externalagent", "Meta", "crawl"),
    ("meta-webindexer", "Meta", "search"),
    ("facebookexternalhit", "Meta", "preview"),
    ("Perplexity-User", "Perplexity", "assistant"),
    ("PerplexityBot", "Perplexity", "search"),
    ("MistralAI-User", "Mistral", "assistant"),
    ("DuckAssistBot", "DuckDuckGo", "assistant"),
    ("Google-CloudVertexBot", "Google", "crawl"),
    ("Googlebot", "Google", "search"),
    ("bingbot", "Microsoft", "search"),
    ("Applebot", "Apple", "search"),
    ("Amazonbot", "Amazon", "crawl"),
    ("PetalBot", "Huawei", "crawl"),
    ("Bytespider", "ByteDance", "crawl"),
    ("TikTokSpider", "ByteDance", "crawl"),
    ("CCBot", "Common Crawl", "crawl"),
    ("Baiduspider", "Baidu", "search"),
    ("archive.org_bot", "Internet Archive", "archive"),
]
UA_FILTER = [{"userAgent_like": f"%{tok}%"} for tok, _, _ in CRAWLERS]


def classify(ua):
    low = (ua or "").lower()
    for tok, _, _ in CRAWLERS:
        if tok.lower() in low:
            return tok
    return None


def call(method, path, body=None):
    req = urllib.request.Request(API + path, method=method, headers={
        "Authorization": "Bearer " + TOKEN,
        "Content-Type": "application/json",
        "User-Agent": "tl-acquisition-snapshot",
    }, data=json.dumps(body).encode() if body is not None else None)
    try:
        with urllib.request.urlopen(req, timeout=60) as r:
            return json.load(r)
    except urllib.error.HTTPError as e:
        sys.exit(f"Cloudflare API {e.code} on {path}: {e.read().decode('utf-8', 'replace')[:300]}")


def gql(query, variables, soft=False):
    res = call("POST", "/graphql", {"query": query, "variables": variables})
    time.sleep(0.4)
    if res.get("errors"):
        msg = "; ".join(e.get("message", "") for e in res["errors"])
        if soft:
            print("  skipped:", msg[:160])
            return None
        sys.exit("Cloudflare GraphQL: " + msg)
    return res["data"]["viewer"]["zones"][0]


def zone_id(name):
    res = call("GET", f"/zones?name={name}")
    if not res.get("result"):
        sys.exit(f"No Cloudflare zone named {name} is visible to this token.")
    return res["result"][0]["id"]


Q_TOTALS = """query($z:string,$f:ZoneHttpRequestsAdaptiveGroupsFilter_InputObject){viewer{zones(filter:{zoneTag:$z}){
  httpRequestsAdaptiveGroups(filter:$f,limit:1){count sum{visits edgeResponseBytes}}}}}"""

Q_CRAWLERS = """query($z:string,$f:ZoneHttpRequestsAdaptiveGroupsFilter_InputObject){viewer{zones(filter:{zoneTag:$z}){
  httpRequestsAdaptiveGroups(filter:$f,limit:5000,orderBy:[count_DESC]){count sum{edgeResponseBytes}
  dimensions{userAgent edgeResponseStatus}}}}}"""

Q_PATHS = """query($z:string,$f:ZoneHttpRequestsAdaptiveGroupsFilter_InputObject){viewer{zones(filter:{zoneTag:$z}){
  httpRequestsAdaptiveGroups(filter:$f,limit:500,orderBy:[count_DESC]){count
  dimensions{userAgent clientRequestPath}}}}}"""


Q_DAILY = """query($z:string,$d:Date){viewer{zones(filter:{zoneTag:$z}){
  httpRequests1dGroups(filter:{date:$d},limit:1){sum{requests pageViews bytes cachedRequests threats} uniq{uniques}}}}}"""

Q_TOP = """query($z:string,$f:ZoneHttpRequestsAdaptiveGroupsFilter_InputObject){viewer{zones(filter:{zoneTag:$z}){
  httpRequestsAdaptiveGroups(filter:$f,limit:%d,orderBy:[%s]){count sum{visits} dimensions{%s}}}}}"""

# (key in cloudflare.json, dimension, rows kept, order, extra filter)
USAGE = [
    ("pages", "clientRequestPath", 30, "sum_visits_DESC", [{"visits_gt": 0}]),
    ("countries", "clientCountryName", 20, "count_DESC", []),
    ("referrers", "clientRefererHost", 20, "count_DESC", []),
    ("browsers", "userAgentBrowser", 12, "count_DESC", []),
    ("os", "userAgentOS", 10, "count_DESC", []),
    ("devices", "clientDeviceType", 6, "count_DESC", []),
    ("status", "edgeResponseStatus", 15, "count_DESC", []),
    ("cache", "cacheStatus", 10, "count_DESC", []),
    ("probes", "clientRequestPath", 15, "count_DESC", [{"edgeResponseStatus": 403}]),
]


def read_usage(zid, day, base):
    out = {}
    d = gql(Q_DAILY, {"z": zid, "d": day}, soft=True)
    g = (d or {}).get("httpRequests1dGroups") or []
    if g:
        out["pageviews"] = g[0]["sum"]["pageViews"]
        out["uniques"] = g[0]["uniq"]["uniques"]
        out["cached"] = g[0]["sum"]["cachedRequests"]
        out["threats"] = g[0]["sum"]["threats"]
    for key, dim, n, order, extra in USAGE:
        res = gql(Q_TOP % (n, order, dim), {"z": zid, "f": {"AND": base + extra}}, soft=True)
        if res is None:
            continue
        out[key] = [{"k": str(r["dimensions"][dim] if r["dimensions"][dim] not in ("", None) else "(none)"),
                     "n": r["count"], "visits": r["sum"]["visits"]}
                    for r in res["httpRequestsAdaptiveGroups"]]
    return out


def read_day(zid, day):
    start = f"{day}T00:00:00Z"
    end = (datetime.date.fromisoformat(day) + datetime.timedelta(days=1)).isoformat() + "T00:00:00Z"
    base = [{"datetime_geq": start}, {"datetime_lt": end}, {"requestSource": "eyeball"}]

    tot = gql(Q_TOTALS, {"z": zid, "f": {"AND": base}})["httpRequestsAdaptiveGroups"]
    t = tot[0] if tot else {"count": 0, "sum": {"visits": 0, "edgeResponseBytes": 0}}

    crawl_f = {"AND": base + [{"OR": UA_FILTER}]}
    crawlers = {}
    for g in gql(Q_CRAWLERS, {"z": zid, "f": crawl_f})["httpRequestsAdaptiveGroups"]:
        name = classify(g["dimensions"]["userAgent"])
        if not name:
            continue
        c = crawlers.setdefault(name, {"ok": 0, "fail": 0, "bytes": 0})
        c["ok" if g["dimensions"]["edgeResponseStatus"] < 400 else "fail"] += g["count"]
        c["bytes"] += g["sum"]["edgeResponseBytes"]

    paths = {}
    for g in gql(Q_PATHS, {"z": zid, "f": crawl_f})["httpRequestsAdaptiveGroups"]:
        name = classify(g["dimensions"]["userAgent"])
        if not name:
            continue
        key = (g["dimensions"]["clientRequestPath"], name)
        paths[key] = paths.get(key, 0) + g["count"]
    top = sorted(paths.items(), key=lambda kv: -kv[1])[:40]

    usage = read_usage(zid, day, base)

    return {
        **usage,
        "requests": t["count"],
        "visits": t["sum"]["visits"],
        "bytes": t["sum"]["edgeResponseBytes"],
        "crawlers": dict(sorted(crawlers.items())),
        "paths": [{"path": p, "crawler": n, "count": c} for (p, n), c in top],
    }


def merge(old, new, recent):
    """A stored day is never lowered or emptied. The last two days take the new read, since
    Cloudflare is still finishing them. An older day takes a new read only when it counts at
    least as many requests. Either way, a field the stored day has and the new read lacks is kept."""
    if not old:
        return new
    keep_new = recent or new.get("requests", 0) >= old.get("requests", 0)
    base, other = (dict(new), old) if keep_new else (dict(old), new)
    for k, v in other.items():
        if k not in base or base[k] in (None, [], {}):
            base[k] = v
    return base


def main():
    if not TOKEN or not ZONES:
        print("CF_TOKEN or CF_ZONES not set; Cloudflare snapshot skipped.")
        return
    try:
        with open(OUT, encoding="utf-8") as f:
            data = json.load(f)
    except FileNotFoundError:
        data = {}
    data["schema"] = 1
    data["crawlers"] = {tok: {"operator": op, "kind": kind} for tok, op, kind in CRAWLERS}
    data.setdefault("zones", {})

    today = datetime.datetime.now(datetime.timezone.utc).date()
    settled = (today - datetime.timedelta(days=2)).isoformat()
    days = [(today - datetime.timedelta(days=b)).isoformat() for b in range(BACKFILL, 0, -1)]
    for name in ZONES:
        zid = zone_id(name)
        z = data["zones"].setdefault(name, {"days": {}})
        for day in days:
            z["days"][day] = merge(z["days"].get(day), read_day(zid, day), day >= settled)
        z["days"] = dict(sorted(z["days"].items()))
        print(f"{name}: {len(z['days'])} days recorded, read {days[0]} – {days[-1]}")

    data["updated"] = datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    with open(OUT, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=1, ensure_ascii=False)
        f.write("\n")


if __name__ == "__main__":
    main()
