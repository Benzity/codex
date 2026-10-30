# codex-kit

Codex CLI로 실무형 과제를 할 때 쓰는 개인 작업 키트입니다.
작업 절차, 검증 루틴, 문서 템플릿과 최소한의 서버 뼈대만 들어 있고, 특정 과제의 풀이는 들어 있지 않습니다.

## 구성
- `AGENTS.md`: Codex 작업 규칙
- `skills/`: interview, plan, verify, review, handoff, submit
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
