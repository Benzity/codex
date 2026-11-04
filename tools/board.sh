#!/usr/bin/env bash
# 팀 모드 현황판. 작업 폴더에서 실행: bash ~/kit/tools/board.sh
# 각 탭에 보낼 한 줄, 역할별 갱신 시각과 막힌 것, 계약 버전, 요구사항 현황을 보여 준다.
set -uo pipefail

D=docs
if [ ! -d "$D" ]; then
  echo "docs/가 없습니다. 작업 폴더에서 실행하거나 먼저 setup.sh를 돌리세요." >&2
  exit 1
fi

P="$D/pm/prompts"
echo "== 탭마다 보낼 한 줄 =="
found=0
for f in "$P"/*.md; do
  [ -e "$f" ] || continue
  r="$(basename "$f" .md)"
  echo "[$r] 너는 $r 역할이야. $P/$r.md 를 읽고 그대로 진행해."
  found=1
done
[ "$found" -eq 1 ] || echo "(아직 지시서 없음. PM이 명세 승인 후 작성)"

if [ -f "$D/pm/QUESTIONS.md" ]; then
  echo
  echo "== 담당자 질문 (docs/pm/QUESTIONS.md) =="
  awk -F'|' '
    /^\| *D[0-9]+ *\|/ {
      id=$2; st=$3; q=$4
      gsub(/^ +| +$/, "", id); gsub(/^ +| +$/, "", st); gsub(/^ +| +$/, "", q)
      if (q == "") next
      total++; cnt[st]++
      if (st != "답받음") pending = pending sprintf("  %s [%s] %s\n", id, st, q)
    }
    END {
      if (total == 0) { print "(아직 없음)"; exit }
      line = sprintf("총 %d개", total)
      for (s in cnt) line = line sprintf(", %s %d", s, cnt[s])
      print line
      if (pending != "") { print "답 안 받은 질문:"; printf "%s", pending }
    }' "$D/pm/QUESTIONS.md"
fi

if [ -f "$D/CONTRACT.md" ]; then
  echo
  echo "== 계약 =="
  head -1 "$D/CONTRACT.md" | sed 's/^# *//'
fi

echo
echo "== 역할별 상태 =="
for f in "$D"/status/*.md; do
  [ -e "$f" ] || continue
  r="$(basename "$f" .md)"
  t="$(grep -m1 '^갱신 시각:' "$f" | sed 's/^갱신 시각:[[:space:]]*//')"
  echo "[$r] 갱신 ${t:-없음}"
  awk '/^## 막힘과 요청/{flag=1; next} /^## /{flag=0} flag && NF' "$f" | sed 's/^/    막힘: /'
done

echo
echo "== 요구사항 (docs/PLAN.md) =="
if [ -f "$D/PLAN.md" ]; then
  awk -F'|' '
    /^\| *R[0-9]+ *\|/ {
      id=$2; req=$3; owner=$4; st=$5
      gsub(/^ +| +$/, "", id); gsub(/^ +| +$/, "", req)
      gsub(/^ +| +$/, "", owner); gsub(/ /, "", st)
      if (req == "") next
      if (st == "") st = "todo"
      total++; cnt[st]++
      if (st != "verified") open_list = open_list sprintf("  %s [%s] %s: %s\n", id, owner == "" ? "미배정" : owner, st, req)
    }
    END {
      if (total == 0) { print "(요구사항 표 비어 있음)"; exit }
      line = sprintf("총 %d개", total)
      for (s in cnt) line = line sprintf(", %s %d", s, cnt[s])
      print line
      if (open_list != "") { print "아직 verified 아님:"; printf "%s", open_list }
    }' "$D/PLAN.md"
else
  echo "(PLAN.md 없음)"
fi
