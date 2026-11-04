# codex (작업 키트)

Codex CLI로 실무형 과제를 할 때 쓰는 개인 작업 키트입니다.
작업 절차, 검증 루틴, 문서 템플릿, 공개 스킬과 스킬 카탈로그, 최소한의 서버 뼈대만 들어 있고 특정 과제의 풀이는 없습니다.

## 시작 (Codex에 이 한 줄)
```
https://github.com/Benzity/codex 를 ~/kit 에 clone하고 ~/kit/START.md 읽고 그대로 진행해
```

## 구성
| 파일 | 역할 |
|---|---|
| START.md | 첫 프롬프트가 가리키는 부트스트랩. 설치, 규칙 로드, 환경 점검, 과제 파악, 질문 준비까지 |
| AGENTS.md | Codex 작업 규칙 (setup.sh가 작업 폴더에 설치) |
| DOCTRINE.md | 행동강령: 작업 사이클, 과제 유형별 기준, 환각 방지, 막혔을 때, 시간 관리 |
| RESPONSE_FORMAT.md | Codex 답변 구조 |
| SKILL_MAP.md | 과제 유형별, 상황별로 쓸 스킬과 쓰지 말 스킬 |
| SKILL_CATALOG.md | 공개 저장소 8곳의 스킬 1,500개 이상 목록 (상태: 허용, 주의, 금지) |
| FLOW.md | 사람용 한 장 요약: 팀 모드 진행 순서와 명령어 (시험 중 이것만 보면 됨) |
| PLAYBOOK.md | 사람용 진행 순서, 지시문, 확인 문제 답 구조 |
| skills/ | 자체 스킬: interview, plan, verify, review, handoff, submit, team (기본 설치) |
| team/ | 팀 모드: 역할 파일(backend-core, backend-api, frontend, qa), 지시서와 상태 양식, PM 폴더 양식(BRIEF, QUESTIONS, CHECKPOINTS, EXPECTED_QUESTIONS) |
| third_party/ | 기본 설치되는 공개 스킬 7개 (Apache 2.0) |
| library/ | 키트에 들어 있지만 기본 설치하지 않는 공개 스킬 (MIT, Apache 2.0) |
| tools/find-skill.sh, tools/get-skill.sh | 카탈로그 검색, 스킬 설치 (금지 스킬은 거부) |
| tools/envcheck.sh | 환경 점검 |
| tools/board.sh | 팀 모드 현황판: 탭마다 보낼 한 줄, 역할별 상태와 막힌 것, 요구사항 현황 |
| tools/build_catalog.py | 카탈로그 생성기 |
| templates/ | PLAN, CONTRACT, DECISIONS, VERIFY, INTERVIEW_NOTES, AI_COLLABORATION, HANDOFF, gitignore |
| scaffold/fastapi-basic/ | FastAPI + 정적 페이지 + pytest 최소 뼈대 (필요할 때만) |
| setup.sh | 작업 폴더에 AGENTS.md, docs, 기본 스킬 설치 |

서드파티 스킬의 출처와 라이선스는 THIRD_PARTY.md를 보세요.
