# 서드파티 스킬

`third_party/` 아래 스킬은 원본을 수정 없이 복사했다. 각 폴더의 LICENSE.txt(와 NOTICE.txt)를 그대로 유지한다.

| 스킬 | 원본 | 라이선스 |
|---|---|---|
| frontend-design | https://github.com/anthropics/skills (skills/frontend-design, commit ca45fc4) | Apache License 2.0 |
| theme-factory | https://github.com/anthropics/skills (skills/theme-factory, commit ca45fc4) | Apache License 2.0 |
| webapp-testing | https://github.com/anthropics/skills (skills/webapp-testing, commit ca45fc4) | Apache License 2.0 |
| playwright | https://github.com/openai/skills (skills/.curated/playwright, commit 49f948f) | Apache License 2.0 |
| pdf | https://github.com/openai/skills (skills/.curated/pdf, commit 49f948f) | Apache License 2.0 |
| jupyter-notebook | https://github.com/openai/skills (skills/.curated/jupyter-notebook, commit 49f948f) | Apache License 2.0 |
| security-best-practices | https://github.com/openai/skills (skills/.curated/security-best-practices, commit 49f948f) | Apache License 2.0 |

Anthropic의 xlsx, docx, pdf 문서 스킬은 재배포가 허용되지 않는 라이선스라 포함하지 않았다. 필요하면 `tools/get-skill.sh`로 원본 저장소에서 받는다.

## library/ (키트 내장, 기본 설치하지 않음)
원본을 수정 없이 복사했고 라이선스 파일을 함께 두었다.

| 폴더 | 원본 | 라이선스 |
|---|---|---|
| library/openai | https://github.com/openai/skills (commit 49f948f) | 스킬별 Apache License 2.0 (각 폴더 LICENSE.txt) |
| library/anthropic | https://github.com/anthropics/skills (commit ca45fc4) | 스킬별 Apache License 2.0 (각 폴더 LICENSE.txt) |
| library/superpowers | https://github.com/obra/superpowers | MIT (library/superpowers/LICENSE) |
| library/vercel | https://github.com/vercel-labs/agent-skills | MIT (각 SKILL.md의 license 필드) |

## 카탈로그만 있고 키트에 없는 출처 (get-skill.sh가 원본에서 받음)
| 원본 | 라이선스 |
|---|---|
| https://github.com/github/awesome-copilot | MIT |
| https://github.com/huggingface/skills | Apache License 2.0 |
| https://github.com/trailofbits/skills | CC BY-SA 4.0 |
| https://github.com/ComposioHQ/awesome-codex-skills | 저장소 라이선스 미표기 |
재배포 범위를 줄이고 키트 크기를 작게 유지하려고 위 출처는 목록만 두었다.
