#!/usr/bin/env bash
# 미리보기에서 보이도록 0.0.0.0에 바인딩한다. 포트는 PORT 환경변수로 바꿀 수 있다.
cd "$(dirname "$0")"
exec python -m uvicorn app.main:app --host 0.0.0.0 --port "${PORT:-8000}" --reload
