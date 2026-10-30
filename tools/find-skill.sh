#!/usr/bin/env bash
# 스킬 검색. 사용: bash ~/kit/tools/find-skill.sh 키워드 [키워드...]
#   대소문자 무시, 모든 키워드가 이름이나 설명에 들어간 스킬만 보여 준다.
#   기본은 '금지' 스킬을 숨긴다. 함께 보려면: ALL=1 bash find-skill.sh ...
KIT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CAT="$KIT/tools/skills_catalog.tsv"
if [ $# -lt 1 ]; then echo "사용: $0 키워드 [키워드...]"; exit 1; fi
python3 - "$CAT" "${ALL:-0}" "$@" <<'EOF'
import sys
cat, show_all, kws = sys.argv[1], sys.argv[2] == "1", [k.lower() for k in sys.argv[3:]]
lines = open(cat, encoding="utf-8").read().splitlines()
cols = lines[0].split("\t")
order = {"core": 0, "library": 1, "upstream": 2}
res = []
for ln in lines[1:]:
    r = dict(zip(cols, ln.split("\t")))
    if r["status"] == "금지" and not show_all:
        continue
    hay = (r["id"] + " " + r["name"] + " " + r["desc"]).lower()
    if all(k in hay for k in kws):
        inst = "core" if r["install"] == "core" else ("library" if r["install"].startswith("library") else "upstream")
        res.append((order[inst], r["status"] != "허용", r["id"], r["status"], inst, r["desc"][:150]))
res.sort()
for _, _, i, s, inst, d in res[:40]:
    print(f"{i:<48} {s:<3} {inst:<9} {d}")
print(f"-- {len(res)}개 일치 (최대 40개 표시). 설치: bash ~/kit/tools/get-skill.sh <id>")
EOF
