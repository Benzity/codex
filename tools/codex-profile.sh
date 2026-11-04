#!/usr/bin/env bash
# Codex 승인 설정 Plan B: ~/.codex/config.toml 맨 아래에 kit 프로필을 추가한다.
# 기존 설정(모델, 접속 정보 등)은 건드리지 않고 백업만 해 둔다.
#   설정:     bash ~/kit/tools/codex-profile.sh      그다음 각 탭에서  codex --profile kit
#   되돌리기: bash ~/kit/tools/codex-profile.sh --undo
set -euo pipefail

CODEX_DIR="${CODEX_HOME:-$HOME/.codex}"
CFG="$CODEX_DIR/config.toml"
BAK="$CFG.kit-backup"
NONE="$CFG.kit-none"

if [ "${1:-}" = "--undo" ]; then
  if [ -f "$BAK" ]; then
    cp "$BAK" "$CFG" && rm -f "$BAK"
    echo "[kit] 원래 설정으로 되돌림: $CFG"
  elif [ -f "$NONE" ]; then
    rm -f "$CFG" "$NONE"
    echo "[kit] 원래 설정 파일이 없었으므로 지움: $CFG"
  else
    echo "[kit] 되돌릴 백업이 없음 (아직 설정 안 했거나 이미 되돌림)"
  fi
  exit 0
fi

mkdir -p "$CODEX_DIR"
if [ -f "$CFG" ] && grep -q '^\[profiles\.kit\]' "$CFG"; then
  echo "[kit] 이미 kit 프로필이 있음: $CFG"
else
  if [ -f "$CFG" ]; then
    [ -f "$BAK" ] || cp "$CFG" "$BAK"
    echo "[kit] 기존 설정 백업: $BAK"
  else
    : > "$NONE"
  fi
  {
    printf '\n# cofa kit: 작업 폴더 안은 묻지 않고, 폴더 밖과 네트워크는 승인 요청\n'
    printf '[profiles.kit]\n'
    printf 'approval_policy = "on-request"\n'
    printf 'sandbox_mode = "workspace-write"\n'
  } >> "$CFG"
  echo "[kit] kit 프로필 추가: $CFG"
fi

echo "[kit] 이제 각 탭에서:  codex --profile kit"
echo "[kit] codex가 설정 오류로 안 뜨면:  bash ~/kit/tools/codex-profile.sh --undo"
