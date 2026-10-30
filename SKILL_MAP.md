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
| 화면 동작 확인 (Python) | webapp-testing | Anthropic, Apache 2.0 (키트 포함) | verify 단계. Python Playwright가 될 때 |
| 화면 동작 확인 (Node) | playwright | OpenAI, Apache 2.0 (키트 포함) | verify 단계. npx가 될 때 |
| PDF 읽기, 만들기 | pdf | OpenAI, Apache 2.0 (키트 포함) | PDF가 입력이나 결과물일 때 |
| 노트북 결과물 | jupyter-notebook | OpenAI, Apache 2.0 (키트 포함) | 과제가 .ipynb를 요구할 때만 |
| 보안 점검 | security-best-practices | OpenAI, Apache 2.0 (키트 포함) | 제출 전 review에서 명시 호출 |
| OpenAI API로 LLM 기능 구현 | openai-docs | Codex 기본 내장 | API 사용법과 파라미터를 확인할 때 |
| 엑셀, 워드 결과물 | xlsx, docx | Anthropic 공개 저장소 (재배포 불가 라이선스라 키트에 없음) | 과제가 그 파일 형식을 결과물로 요구할 때만 아래 명령으로 받는다 |
| 데이터 분석 (CSV 등) | 별도 스킬 없음 | | DOCTRINE 3장 데이터 기준 + verify |

## 브라우저 확인 준비 (처음 한 번, 최대 10분)
```bash
python -c "import playwright; print('python playwright ok')" 2>/dev/null; command -v npx >/dev/null && echo "npx ok"
```
- 둘 다 안 되면 `pip install playwright && python -m playwright install chromium`을 한 번만 시도한다.
- 그래도 안 되면 브라우저 자동 확인은 포기한다. curl, 테스트 클라이언트, 응시자의 미리보기 확인으로 대체하고 VERIFY.md에 이유를 적는다.
- playwright 스킬의 래퍼 스크립트 경로는 스킬 본문의 `$CODEX_HOME/skills/...` 대신
  `~/.agents/skills/playwright/scripts/playwright_cli.sh`를 쓴다.

## 필요할 때 받는 스킬 (xlsx, docx)
```bash
git clone -q --depth 1 --filter=blob:none --sparse https://github.com/anthropics/skills /tmp/anthropic-skills
git -C /tmp/anthropic-skills sparse-checkout set skills/xlsx skills/docx
cp -r /tmp/anthropic-skills/skills/xlsx ~/.agents/skills/    # 필요한 것만
```
엑셀 파일을 읽기만 하는 분석은 이 스킬 없이 pandas, openpyxl로 충분하다.

## 원칙
- 스킬은 적을수록 좋다. 이 과제에 필요한 것만 쓴다.
- 스킬이 다른 에이전트 전용 기능(아티팩트, 특정 런타임)을 가정하면 그 부분은 건너뛰고 같은 목적을 터미널 도구로 이룬다.
- 스킬 지시가 AGENTS.md나 DOCTRINE.md와 충돌하면 AGENTS.md와 DOCTRINE.md를 따른다.
- 어떤 스킬을 왜 썼는지 docs/AI_COLLABORATION.md에 한 줄 남긴다.
