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

# 3. 스킬 설치: Codex 사용자 스킬 경로 ~/.agents/skills
#    (구버전 Codex 대비: SKILLS_DIR=~/.codex/skills bash setup.sh 로 경로 변경 가능)
SKILLS_DIR="${SKILLS_DIR:-$HOME/.agents/skills}"
mkdir -p "$SKILLS_DIR"
for d in "$KIT"/skills/*/ "$KIT"/third_party/*/; do
  [ -f "$d/SKILL.md" ] || continue
  n="$(basename "$d")"
  if [ -e "$SKILLS_DIR/$n" ]; then
    echo "[kit] $SKILLS_DIR/$n 이미 있음, 건너뜀"
  else
    cp -r "$d" "$SKILLS_DIR/$n"
  fi
done
echo "[kit] 스킬 설치: $SKILLS_DIR ($(ls "$SKILLS_DIR" | tr '\n' ' '))"

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
  1) codex 실행 → /model 로 모델 선택 → /status 로 AGENTS.md 로드 확인 → /skills 로 스킬 목록 확인
     (목록에 키트 스킬이 없으면: SKILLS_DIR=~/.codex/skills bash $KIT/setup.sh 후 codex 재시작)
  2) 첫 지시는 $KIT/PLAYBOOK.md 의 "첫 지시" 복사
EOF
