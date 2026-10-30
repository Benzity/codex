#!/usr/bin/env bash
# 환경 점검: 필요한 도구와 접근 가능 여부를 한 번에 출력한다. 비밀값은 출력하지 않는다.
chk() {
  local label="$1"; shift
  local out rc
  out=$("$@" 2>&1); rc=$?
  if [ $rc -eq 0 ] && [ -n "$out" ]; then
    printf "%-20s OK   %s\n" "$label" "$(printf '%s\n' "$out" | head -1)"
  else
    printf "%-20s 없음\n" "$label"
  fi
}

echo "== 도구 =="
chk python   python3 --version
chk pip      python3 -m pip --version
chk node     node --version
chk npm      npm --version
chk npx      npx --version
chk git      git --version
chk codex    codex --version

echo "== 파이썬 패키지 =="
for m in fastapi uvicorn httpx pytest pandas numpy openpyxl matplotlib playwright openai; do
  chk "py:$m" python3 -c "import $m; print(getattr($m, '__version__', 'ok'))"
done

echo "== 브라우저 =="
chk chromium bash -c 'command -v chromium || command -v chromium-browser || command -v google-chrome || ls -d ~/.cache/ms-playwright/* 2>/dev/null | head -1'

echo "== 네트워크 =="
chk "pypi 접근"   bash -c 'timeout 10 python3 -m pip download --no-deps -q -d /tmp/_pipchk six && echo ok'
chk "github 접근" bash -c 'timeout 10 git ls-remote https://github.com/openai/skills HEAD | cut -c1-12'
chk "npm 접근"    bash -c 'timeout 10 npm view left-pad version'

echo "== 키 (값은 출력하지 않음) =="
chk OPENAI_API_KEY bash -c '[ -n "${OPENAI_API_KEY:-}" ] && echo "설정됨"'

echo "== 스킬 =="
echo "~/.agents/skills: $(ls ~/.agents/skills 2>/dev/null | tr '\n' ' ')"
echo "~/.codex/skills:  $(ls ~/.codex/skills 2>/dev/null | tr '\n' ' ')"
