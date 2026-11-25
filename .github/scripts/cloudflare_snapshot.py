#!/usr/bin/env python3
"""Daily Cloudflare site snapshot for the Repository Acquisition Panel.

Reads Cloudflare's GraphQL Analytics API for each site and merges the result into
cloudflare.json, so history accumulates past Cloudflare's 31-day retention:
  - daily totals: requests, visits, bytes served
  - AI and search crawlers by name: allowed (status < 400), unsuccessful (status >= 400), bytes
  - the paths those crawlers requested most
Days are UTC calendar days. Standard library only.

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


def gql(query, variables):
    res = call("POST", "/graphql", {"query": query, "variables": variables})
    if res.get("errors"):
        sys.exit("Cloudflare GraphQL: " + "; ".join(e.get("message", "") for e in res["errors"]))
    time.sleep(0.4)
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

    return {
        "requests": t["count"],
        "visits": t["sum"]["visits"],
        "bytes": t["sum"]["edgeResponseBytes"],
        "crawlers": dict(sorted(crawlers.items())),
        "paths": [{"path": p, "crawler": n, "count": c} for (p, n), c in top],
    }


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
    days = [(today - datetime.timedelta(days=b)).isoformat() for b in range(BACKFILL, 0, -1)]
    for name in ZONES:
        zid = zone_id(name)
        z = data["zones"].setdefault(name, {"days": {}})
        for day in days:
            z["days"][day] = read_day(zid, day)
        z["days"] = dict(sorted(z["days"].items()))
        print(f"{name}: {len(z['days'])} days recorded, read {days[0]} – {days[-1]}")

    data["updated"] = datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    with open(OUT, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=1, ensure_ascii=False)
        f.write("\n")


if __name__ == "__main__":
    main()
