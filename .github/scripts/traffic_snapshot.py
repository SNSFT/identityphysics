#!/usr/bin/env python3
"""Daily GitHub traffic snapshot for the TL Traffic panel.

Reads the GitHub traffic API (14-day window) and merges it into traffic.json,
so history accumulates past GitHub's 14-day limit. Standard library only.

Environment:
  TRAFFIC_TOKEN  fine-grained token with Administration: Read on the repo
  REPO           owner/name, e.g. SNSFT/identityphysics
  API            optional API base (default https://api.github.com)
  OUT            optional output path (default traffic.json)
"""
import json, os, sys, datetime, urllib.request, urllib.error

API = os.environ.get("API", "https://api.github.com").rstrip("/")
REPO = os.environ["REPO"]
TOKEN = os.environ.get("TRAFFIC_TOKEN", "")
OUT = os.environ.get("OUT", "traffic.json")


def get(path):
    req = urllib.request.Request(API + path, headers={
        "Accept": "application/vnd.github+json",
        "X-GitHub-Api-Version": "2022-11-28",
        "User-Agent": "tl-traffic-snapshot",
        **({"Authorization": "Bearer " + TOKEN} if TOKEN else {}),
    })
    try:
        with urllib.request.urlopen(req, timeout=30) as r:
            return json.load(r)
    except urllib.error.HTTPError as e:
        body = e.read().decode("utf-8", "replace")[:300]
        sys.exit(f"GitHub API {e.code} on {path}: {body}")


def load():
    try:
        with open(OUT, encoding="utf-8") as f:
            return json.load(f)
    except FileNotFoundError:
        return {}


def main():
    today = datetime.datetime.now(datetime.timezone.utc).date().isoformat()
    data = load()
    data.setdefault("schema", 1)
    data["repo"] = REPO
    for k in ("views", "clones", "referrers", "paths", "repo_stats"):
        data.setdefault(k, {})

    # Daily views and clones: GitHub revises recent days, so the newest read wins.
    for kind in ("views", "clones"):
        res = get(f"/repos/{REPO}/traffic/{kind}?per=day")
        for d in res.get(kind, []):
            day = d["timestamp"][:10]
            data[kind][day] = {"count": d["count"], "uniques": d["uniques"]}

    # Referrers and paths are 14-day totals only: keep one snapshot per collection day.
    data["referrers"][today] = get(f"/repos/{REPO}/traffic/popular/referrers")
    data["paths"][today] = [
        {"path": p["path"], "title": p.get("title", ""), "count": p["count"], "uniques": p["uniques"]}
        for p in get(f"/repos/{REPO}/traffic/popular/paths")
    ]

    # Structure at collection time (public data), plus commits in the last 24 hours.
    info = get(f"/repos/{REPO}")
    since = (datetime.datetime.now(datetime.timezone.utc) - datetime.timedelta(days=1)).strftime("%Y-%m-%dT%H:%M:%SZ")
    commits = get(f"/repos/{REPO}/commits?since={since}&per_page=100")
    data["repo_stats"][today] = {
        "stars": info.get("stargazers_count", 0),
        "forks": info.get("forks_count", 0),
        "watchers": info.get("subscribers_count", 0),
        "open_issues": info.get("open_issues_count", 0),
        "size_kb": info.get("size", 0),
        "commits_24h": len(commits) if isinstance(commits, list) else 0,
    }

    data["updated"] = datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    for k in ("views", "clones", "referrers", "paths", "repo_stats"):
        data[k] = dict(sorted(data[k].items()))
    with open(OUT, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=1, ensure_ascii=False)
        f.write("\n")
    v, c = data["views"], data["clones"]
    print(f"{REPO}: {len(v)} days of views, {len(c)} days of clones, snapshot {today}")


if __name__ == "__main__":
    main()
