# codex-kit

Codex CLI로 실무형 과제를 할 때 쓰는 개인 작업 키트입니다.
작업 절차, 검증 루틴, 문서 템플릿과 최소한의 서버 뼈대만 들어 있고, 특정 과제의 풀이는 들어 있지 않습니다.

## 구성
- `AGENTS.md`: Codex 작업 규칙 (세션마다 DOCTRINE, RESPONSE_FORMAT을 읽게 함)
- `DOCTRINE.md`: 행동강령. 작업 사이클, 과제 유형별 기준, 환각 방지, 막혔을 때, 시간 관리
- `RESPONSE_FORMAT.md`: Codex 답변 구조
- `SKILL_MAP.md`: 과제 유형별로 쓸 스킬 지도
- `skills/`: 자체 스킬 interview, plan, verify, review, handoff, submit
- `third_party/`: OpenAI, Anthropic 공개 스킬 중 Apache 2.0 스킬 6개 (출처는 THIRD_PARTY.md)
- `templates/`: PLAN, DECISIONS, VERIFY, INTERVIEW_NOTES, AI_COLLABORATION, HANDOFF, gitignore
- `scaffold/fastapi-basic/`: FastAPI + 정적 페이지 + pytest 최소 뼈대 (필요할 때만 복사)
- `PLAYBOOK.md`: 사람용 진행 순서와 지시문
- `setup.sh`: 작업 폴더에 AGENTS.md와 docs 템플릿을 설치

## 사용
```bash
git clone https://github.com/<계정>/codex-kit ~/kit
cd <작업 폴더>
bash ~/kit/setup.sh        # git 저장소가 아니면 --git
codex
```
