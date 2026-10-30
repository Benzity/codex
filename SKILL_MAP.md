# 스킬 지도 (SKILL_MAP)

과제 유형을 판단한 뒤(DOCTRINE.md 3장) 아래 표에서 해당하는 스킬만 쓴다.
쓸 때는 `$스킬이름`으로 명시 호출하거나 SKILL.md를 직접 읽는다. 암묵적 선택에 기대지 않는다.
표에 없는 스킬을 새로 받아야 하면 응시자에게 먼저 묻는다.

## 항상 쓰는 스킬 (키트 자체 스킬)
| 단계 | 스킬 |
|---|---|
| 담당자 인터뷰 | interview |
| 계획 | plan |
| 검증 | verify |
| 교차 리뷰 (리뷰 세션) | review |
| 인수인계 | handoff |
| 제출 전 점검 | submit |

## 과제 유형별 스킬
| 과제 유형 / 상황 | 스킬 | 출처 | 언제 쓰나 |
|---|---|---|---|
| 화면(UI)이 있는 서비스 | frontend-design | Anthropic, Apache 2.0 (키트 포함) | 화면을 만들기 전에 한 번 읽고 방향을 정한다 |
| 화면, 보고서의 색과 글꼴 통일 | theme-factory | Anthropic, Apache 2.0 (키트 포함) | 테마 하나를 골라 CSS 변수로 적용한다. 테마 목록은 themes/ 폴더 |
| 화면 동작 확인 (Python) | webapp-testing | Anthropic, Apache 2.0 (키트 포함) | verify 단계. Python Playwright가 될 때 |
| 화면 동작 확인 (Node) | playwright | OpenAI, Apache 2.0 (키트 포함) | verify 단계. npx가 될 때 |
| PDF 읽기, 만들기 | pdf | OpenAI, Apache 2.0 (키트 포함) | PDF가 입력이나 결과물일 때 |
| 노트북 결과물 | jupyter-notebook | OpenAI, Apache 2.0 (키트 포함) | 과제가 .ipynb를 요구할 때만 |
| 보안 점검 | security-best-practices | OpenAI, Apache 2.0 (키트 포함) | 제출 전 review에서 명시 호출 |
| OpenAI API로 LLM 기능 구현 | openai-docs | Codex 기본 내장 | API 사용법과 파라미터를 확인할 때 |
| 엑셀, 워드 결과물 | anthropic/xlsx, anthropic/docx | Anthropic 공개 저장소 (재배포 불가 라이선스라 키트에 없음) | 과제가 그 파일 형식을 결과물로 요구할 때만 get-skill.sh로 받는다 |
| 데이터 분석 (CSV 등) | 별도 스킬 없음 | | DOCTRINE 3장 데이터 기준 + verify |

## 브라우저 확인 준비 (처음 한 번, 최대 10분)
```bash
python -c "import playwright; print('python playwright ok')" 2>/dev/null; command -v npx >/dev/null && echo "npx ok"
```
- 둘 다 안 되면 `pip install playwright && python -m playwright install chromium`을 한 번만 시도한다.
- 그래도 안 되면 브라우저 자동 확인은 포기한다. curl, 테스트 클라이언트, 응시자의 미리보기 확인으로 대체하고 VERIFY.md에 이유를 적는다.
- playwright 스킬의 래퍼 스크립트 경로는 스킬 본문의 `$CODEX_HOME/skills/...` 대신
  `~/.agents/skills/playwright/scripts/playwright_cli.sh`를 쓴다.

## 상황별 추가 스킬 (필요할 때 `bash ~/kit/tools/get-skill.sh <id>`로 설치)
| 상황 | id | 위치 |
|---|---|---|
| 버그 원인을 못 찾을 때 | superpowers/systematic-debugging | 키트 내장 |
| 테스트를 먼저 짜며 구현할 때 | superpowers/test-driven-development | 키트 내장 |
| "다 됐다"고 말하기 직전 | superpowers/verification-before-completion | 키트 내장 |
| 요구사항, 아이디어 정리 | superpowers/brainstorming | 키트 내장 |
| 큰 작업을 계획으로 쪼갤 때 | superpowers/writing-plans | 키트 내장 |
| 리뷰 요청과 반영 | superpowers/requesting-code-review, superpowers/receiving-code-review | 키트 내장 |
| React 화면 구조와 성능 | vercel/vercel-react-best-practices, vercel/vercel-composition-patterns | 키트 내장 |
| UI 접근성, 가이드라인 점검 | vercel/web-design-guidelines | 원본에서 받기 |
| 화면 디자인 리뷰 | awesome-copilot/web-design-reviewer | 원본에서 받기 |
| 테스트 커버리지 올리기 | awesome-copilot/pytest-coverage | 원본에서 받기 |
| 낯선 코드베이스 파악 | awesome-copilot/acquire-codebase-knowledge | 원본에서 받기 |
| README 작성 | awesome-copilot/readme-blueprint-generator | 원본에서 받기 |
| 보안 위협 모델 | openai/security-threat-model | 키트 내장 |
| MCP 서버를 만드는 과제 | anthropic/mcp-builder | 키트 내장 |
| 엑셀, 워드 결과물 | anthropic/xlsx, anthropic/docx | 원본에서 받기 |
엑셀 파일을 읽기만 하는 분석은 스킬 없이 pandas, openpyxl로 충분하다.
superpowers의 using-superpowers, subagent-driven-development, dispatching-parallel-agents는 다른 에이전트 전용 도구를 전제로 하므로 쓰지 않는다.

## 표에 없는 상황: 카탈로그에서 찾기
전체 목록은 SKILL_CATALOG.md에 있다(공개 저장소 8곳, 1,500개 이상). 통째로 읽지 말고 검색 스크립트를 쓴다.
1. `bash ~/kit/tools/find-skill.sh 키워드 [키워드...]` (영어 키워드가 잘 걸린다. 예: test, debug, react, chart, sql)
2. 후보의 SKILL.md를 읽고 외부 연결 없이 쓸 수 있는지 판단한다. 설치 전이면 카탈로그의 설명으로 판단한다.
3. 응시자에게 한 줄로 알리고 `bash ~/kit/tools/get-skill.sh <id>`로 설치한다.
4. `$이름`으로 호출하고 docs/AI_COLLABORATION.md에 기록한다.
- 상태 '금지'(외부 배포, 외부 전송, 외부 AI API, 외부 서비스)는 설치 스크립트가 거부한다. FORCE=1은 응시자가 직접 승인한 경우에만.
- 한 과제에서 추가로 받는 스킬은 3개 이내.

## 설치하지 않는 스킬 (쓰지 말 것)
| 스킬 | 이유 |
|---|---|
| vercel-deploy, netlify-deploy, cloudflare-deploy, render-deploy | 외부 배포 = 작업물 외부 전송 (금지) |
| yeet, gh-fix-ci, gh-address-comments | git push, PR 등 외부 전송 (push 차단, 금지) |
| linear, notion-*, sentry, figma-* | 외부 서비스 연결이 필요하고 과제와 무관 |
| imagegen, speech, transcribe | 별도 AI 모델 API 호출에 해당할 수 있음 |
| web-artifacts-builder, algorithmic-art, canvas-design, brand-guidelines | 다른 에이전트 전용 산출물이거나 과제와 무관 |
기본 내장 skill-installer로 위 스킬을 설치하지 않는다.

## 원칙
- 스킬은 적을수록 좋다. 이 과제에 필요한 것만 쓴다.
- 스킬이 다른 에이전트 전용 기능(아티팩트, 특정 런타임)을 가정하면 그 부분은 건너뛰고 같은 목적을 터미널 도구로 이룬다.
- 스킬 지시가 AGENTS.md나 DOCTRINE.md와 충돌하면 AGENTS.md와 DOCTRINE.md를 따른다.
- 어떤 스킬을 왜 썼는지 docs/AI_COLLABORATION.md에 한 줄 남긴다.
