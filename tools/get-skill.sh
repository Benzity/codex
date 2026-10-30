#!/usr/bin/env bash
# 스킬 설치. 사용: bash ~/kit/tools/get-skill.sh <id 또는 이름>
#   예: bash ~/kit/tools/get-skill.sh superpowers/systematic-debugging
#   설치 위치: ~/.agents/skills (SKILLS_DIR로 변경 가능)
#   '금지' 스킬은 설치하지 않는다. FORCE=1은 응시자가 직접 승인했을 때만 쓴다 (AI가 임의로 쓰지 않는다).
set -euo pipefail
KIT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CAT="$KIT/tools/skills_catalog.tsv"
DEST="${SKILLS_DIR:-$HOME/.agents/skills}"
CACHE="${TMPDIR:-/tmp}/kit-skill-src"
[ $# -eq 1 ] || { echo "사용: $0 <id 또는 이름>"; exit 1; }

ROW="$(python3 - "$CAT" "$1" <<'EOF'
import sys
cat, q = sys.argv[1], sys.argv[2]
lines = open(cat, encoding="utf-8").read().splitlines()
cols = lines[0].split("\t")
rows = [dict(zip(cols, l.split("\t"))) for l in lines[1:]]
hit = [r for r in rows if r["id"] == q] or [r for r in rows if r["name"] == q]
if not hit:
    print("ERR\t찾을 수 없음. find-skill.sh로 id를 확인하세요."); sys.exit(0)
if len(hit) > 1:
    print("ERR\t이름이 여러 개입니다. id로 지정하세요: " + ", ".join(r["id"] + "(" + r["status"] + ")" for r in hit)); sys.exit(0)
r = hit[0]
print("\t".join([r["id"], r["name"], r["status"], r["reason"] or "-", r["install"], r["source"], r["path"], r["license"]]))
EOF
)"
IFS=$'\t' read -r ID NAME STATUS REASON INSTALL SOURCE SPATH LICENSE <<<"$ROW"
if [ "$ID" = "ERR" ]; then echo "[get-skill] $NAME"; exit 2; fi

if [ "$STATUS" = "금지" ] && [ "${FORCE:-0}" != "1" ]; then
  echo "[get-skill] 거부: $ID 는 금지 스킬입니다 ($REASON). 대회 규정상 쓰지 않습니다."
  exit 3
fi
[ "$STATUS" = "주의" ] && echo "[get-skill] 주의: 본문에 $REASON. 외부 연결 없이 쓸 수 있는지 SKILL.md를 먼저 확인하세요."

mkdir -p "$DEST"
TARGET="$DEST/$NAME"
if [ -e "$TARGET" ]; then
  echo "[get-skill] 이미 설치됨: $TARGET"
  exit 0
fi

case "$INSTALL" in
  core)
    cp -r "$KIT/third_party/$NAME" "$TARGET" ;;
  library/*)
    cp -r "$KIT/$INSTALL" "$TARGET" ;;
  upstream)
    REPO_DIR="$CACHE/${SOURCE//\//_}"
    if [ ! -d "$REPO_DIR/.git" ]; then
      mkdir -p "$CACHE"
      git clone -q --depth 1 --filter=blob:none --sparse "https://github.com/$SOURCE" "$REPO_DIR"
    fi
    git -C "$REPO_DIR" sparse-checkout add "$SPATH"
    [ -f "$REPO_DIR/$SPATH/SKILL.md" ] || { echo "[get-skill] 원본에서 $SPATH/SKILL.md를 찾지 못함"; exit 4; }
    cp -r "$REPO_DIR/$SPATH" "$TARGET"
    rm -rf "$TARGET/.git" ;;
  *)
    echo "[get-skill] 알 수 없는 설치 방식: $INSTALL"; exit 5 ;;
esac

echo "[get-skill] 설치됨: $ID → $TARGET (라이선스: $LICENSE)"
echo "[get-skill] 사용 전에 $TARGET/SKILL.md 를 읽고, 호출은 \$$NAME"
