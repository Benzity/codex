# codex-kit

Codex CLI로 실무형 과제를 할 때 쓰는 개인 작업 키트입니다.
작업 절차, 검증 루틴, 문서 템플릿, 공개 스킬, 최소한의 서버 뼈대만 들어 있고 특정 과제의 풀이는 없습니다.

## 시작 (Codex에 이 한 줄)
```
https://github.com/Benzity/codex-kit 를 ~/kit 에 clone하고 ~/kit/START.md 읽고 그대로 진행해
```

## 구성
| 파일 | 역할 |
|---|---|
| START.md | 첫 프롬프트가 가리키는 부트스트랩. 설치, 규칙 로드, 환경 점검, 과제 파악, 질문 준비까지 |
| AGENTS.md | Codex 작업 규칙 (setup.sh가 작업 폴더에 설치) |
| DOCTRINE.md | 행동강령: 작업 사이클, 과제 유형별 기준, 환각 방지, 막혔을 때, 시간 관리 |
| RESPONSE_FORMAT.md | Codex 답변 구조 |
| SKILL_MAP.md | 과제 유형별로 쓸 스킬과 쓰지 말 스킬 |
| PLAYBOOK.md | 사람용 진행 순서, 지시문, 확인 문제 답 구조 |
| skills/ | 자체 스킬: interview, plan, verify, review, handoff, submit |
| third_party/ | 공개 스킬 7개 (Apache 2.0, 출처는 THIRD_PARTY.md) |
| templates/ | PLAN, DECISIONS, VERIFY, INTERVIEW_NOTES, AI_COLLABORATION, HANDOFF, gitignore |
| tools/envcheck.sh | 환경 점검 |
| scaffold/fastapi-basic/ | FastAPI + 정적 페이지 + pytest 최소 뼈대 (필요할 때만) |
| setup.sh | 작업 폴더에 AGENTS.md, docs, 스킬 설치 |
