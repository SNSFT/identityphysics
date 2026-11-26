#!/usr/bin/env python3
"""Formal record: the theorem mass of a Lean repository, read from its full git history.

Walks every commit on a ref in order and counts `theorem` and `lemma` declarations in each
.lean file at each change, the same count the repository READMEs carry. Writes leanmass.json:

  days   {date: {theorems, files, lines, mass, added}}
         theorems/files/lines  the repository as it stood at the end of that day (UTC)
         mass                  the record high of theorems to that day: it holds or rises
         added                 mass on that day minus mass the day before
  files  {path: {theorems, lines, peak, first, last, coord}}
         first  the day the file entered the repository; coord its [a,b,c,d] coordinate

The run is incremental: it stores the last commit read and continues from there, so the
history is read in full once and each later run reads only new commits. Days already on the
record are never lowered. Standard library only; needs git with full history.

Environment:
  REF    the ref to read, e.g. origin/main (default HEAD)
  OUT    output path (default leanmass.json)
  REPO   owner/name label for the record
  LEAN_PATHS  optional comma-separated path prefixes to count (e.g. SNSFL/); default every .lean file
  GIT_DIR_PATH  path of the repository (default .)
"""
import json, os, re, subprocess, sys, datetime

REF = os.environ.get("REF", "HEAD")
OUT = os.environ.get("OUT", "leanmass.json")
REPO = os.environ.get("REPO", "")
GD = os.environ.get("GIT_DIR_PATH", ".")
PATHS = tuple(x.strip() for x in os.environ.get("LEAN_PATHS", "").split(",") if x.strip())
DECL = re.compile(r"^\s*(?:@\[[^\]]*\]\s*)?(?:(?:private|protected|noncomputable|nonrec)\s+)*(?:theorem|lemma)\s", re.M)
BLOCK = re.compile(r"/-.*?-/", re.S)
COORD = re.compile(r"Coordinate:\s*(\[[0-9A-Za-z, ]+\](?:\([A-Z]+\))?)")


def git(*args):
    return subprocess.run(["git", "-C", GD, *args], capture_output=True, text=True, check=True).stdout


class Blobs:
    """One `git cat-file --batch` process serving every file read."""
    def __init__(self):
        self.p = subprocess.Popen(["git", "-C", GD, "cat-file", "--batch"], stdin=subprocess.PIPE, stdout=subprocess.PIPE)

    def read(self, spec):
        self.p.stdin.write((spec + "\n").encode()); self.p.stdin.flush()
        head = self.p.stdout.readline().decode().split()
        if len(head) < 3 or head[1] == "missing":
            return None
        size = int(head[2]); data = self.p.stdout.read(size); self.p.stdout.read(1)
        return data.decode("utf-8", errors="ignore")


def measure(src):
    body = BLOCK.sub("", src)
    m = COORD.search(src)
    lines = src.count("\n") + 1
    return len(DECL.findall(body)), lines, (m.group(1).replace(" ", "") if m else "")


def main():
    try:
        with open(OUT, encoding="utf-8") as f:
            rec = json.load(f)
    except (FileNotFoundError, json.JSONDecodeError):
        rec = {}
    rec.update({"schema": 1, "source": "lean", "repo": REPO or rec.get("repo", "")})
    rec.setdefault("days", {}); rec.setdefault("files", {})
    state = rec.setdefault("state", {"last": "", "current": {}})
    cur = state["current"]  # path -> [theorems, lines]

    rng = f"{state['last']}..{REF}" if state["last"] else REF
    try:
        commits = git("rev-list", "--reverse", "--first-parent", rng).split()
    except subprocess.CalledProcessError:
        commits = git("rev-list", "--reverse", "--first-parent", REF).split()
        cur.clear()
    if not commits:
        print("No new commits."); return
    blobs = Blobs()
    for c in commits:
        meta = git("show", "-s", "--format=%ct %P", c).split()
        day = datetime.datetime.fromtimestamp(int(meta[0]), datetime.timezone.utc).date().isoformat()
        parent = meta[1] if len(meta) > 1 else None
        diff = git("diff-tree", "-r", "--no-renames", "--name-status", *( [parent, c] if parent else ["--root", c] ))
        for line in diff.splitlines():
            parts = line.split("\t")
            if len(parts) < 2 or not parts[-1].endswith(".lean") or parts[-1].endswith("lakefile.lean"):
                continue
            if PATHS and not parts[-1].startswith(PATHS):
                continue
            status, path = parts[0], parts[-1]
            f = rec["files"].setdefault(path, {"first": day, "peak": 0})
            if status.startswith("D"):
                cur.pop(path, None); f["theorems"] = 0; f["last"] = day
                continue
            src = blobs.read(f"{c}:{path}")
            if src is None:
                continue
            t, n, coord = measure(src)
            cur[path] = [t, n]
            f.update({"theorems": t, "lines": n, "last": day, "peak": max(f.get("peak", 0), t)})
            if coord:
                f["coord"] = coord
        tot_t = sum(v[0] for v in cur.values()); tot_l = sum(v[1] for v in cur.values())
        d = rec["days"].setdefault(day, {})
        d.update({"theorems": tot_t, "files": len(cur), "lines": tot_l})
    state["last"] = commits[-1]
    # mass: record high of theorems, never lowered; added: its day-over-day rise
    hi = 0
    for day in sorted(rec["days"]):
        d = rec["days"][day]
        hi = max(hi, d.get("theorems", 0), d.get("mass", 0))
        d["mass"] = hi
    prev = 0
    for day in sorted(rec["days"]):
        d = rec["days"][day]; d["added"] = max(0, d["mass"] - prev); prev = d["mass"]
    rec["updated"] = datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    with open(OUT, "w", encoding="utf-8") as f:
        json.dump(rec, f, ensure_ascii=False, separators=(",", ":"), sort_keys=True)
    last = rec["days"][max(rec["days"])]
    print(f"{len(commits)} commits read · {last['files']} files · {last['theorems']} theorems · mass {last['mass']}")


if __name__ == "__main__":
    main()
