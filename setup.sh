#!/usr/bin/env bash
# 사용법: 과제 폴더에서  bash ~/kit/setup.sh [--git] [작업폴더]
#   --git     작업 폴더가 git 저장소가 아니면 git init 하고 .gitignore를 넣는다
#   작업폴더  생략하면 현재 폴더
set -euo pipefail

KIT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DO_GIT=0
WORK=""
for a in "$@"; do
  case "$a" in
    --git) DO_GIT=1 ;;
    *) WORK="$a" ;;
  esac
done
WORK="$(cd "${WORK:-$PWD}" && pwd)"

echo "[kit] 키트 위치: $KIT"
echo "[kit] 작업 폴더: $WORK"

# 1. docs 템플릿 (이미 있으면 건드리지 않음)
mkdir -p "$WORK/docs"
for f in "$KIT"/templates/*.md; do
  name="$(basename "$f")"
  if [ -e "$WORK/docs/$name" ]; then
    echo "[kit] docs/$name 이미 있음, 건너뜀"
  else
    cp "$f" "$WORK/docs/$name"
    echo "[kit] docs/$name 생성"
  fi
done

# 2. AGENTS.md (키트 경로를 실제 위치로 바꿔서 넣음, 기존 파일이 있으면 뒤에 덧붙임)
TMP_AGENTS="$(mktemp)"
if [ "$KIT" = "$HOME/kit" ]; then
  cp "$KIT/AGENTS.md" "$TMP_AGENTS"
else
  sed "s|~/kit|$KIT|g" "$KIT/AGENTS.md" > "$TMP_AGENTS"
fi
if [ -e "$WORK/AGENTS.md" ]; then
  if grep -q "KIT-AGENTS" "$WORK/AGENTS.md"; then
    echo "[kit] AGENTS.md에 이미 키트 규칙 있음, 건너뜀"
  else
    { printf '\n\n'; cat "$TMP_AGENTS"; } >> "$WORK/AGENTS.md"
    echo "[kit] 기존 AGENTS.md 뒤에 키트 규칙 덧붙임 (기존 내용 우선 확인할 것)"
  fi
else
  cp "$TMP_AGENTS" "$WORK/AGENTS.md"
  echo "[kit] AGENTS.md 생성"
fi
rm -f "$TMP_AGENTS"

# 3. Codex 스킬 폴더에도 복사 (인식 여부와 무관하게 AGENTS.md가 경로로 안내함)
mkdir -p "$HOME/.codex/skills"
for d in "$KIT"/skills/*/; do
  n="$(basename "$d")"
  if [ -e "$HOME/.codex/skills/$n" ]; then
    echo "[kit] ~/.codex/skills/$n 이미 있음, 건너뜀"
  else
    cp -r "$d" "$HOME/.codex/skills/$n"
  fi
done
echo "[kit] 스킬 복사: ~/.codex/skills/"

# 4. git
if git -C "$WORK" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "[kit] git 저장소 확인됨: $(git -C "$WORK" rev-parse --show-toplevel)"
elif [ "$DO_GIT" = "1" ]; then
  git -C "$WORK" init -q
  [ -e "$WORK/.gitignore" ] || cp "$KIT/templates/gitignore" "$WORK/.gitignore"
  if [ -z "$(git -C "$WORK" config user.name || true)" ]; then
    git -C "$WORK" config user.name "candidate"
    git -C "$WORK" config user.email "candidate@localhost"
  fi
  echo "[kit] git init 완료, .gitignore 추가"
else
  echo "[kit] git 저장소 아님. 필요하면:  bash $KIT/setup.sh --git \"$WORK\""
fi

cat <<EOF

[kit] 완료. 다음 순서:
  1) codex 실행 → /model 로 모델 선택 → /status 로 AGENTS.md 로드 확인
  2) 첫 지시는 $KIT/PLAYBOOK.md 의 "첫 지시" 복사
EOF
