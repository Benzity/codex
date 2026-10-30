"""스킬 카탈로그 생성기.
사용: python3 -I build_catalog.py <ext_dir> <kit_dir>
- ext_dir: 공개 스킬 저장소들을 clone해 둔 폴더 (신뢰하지 않는 데이터로 취급, 읽기만 함)
- kit_dir: 키트 저장소. library/ 에 허용 라이선스 스킬을 복사하고 tools/skills_catalog.tsv, SKILL_CATALOG.md 생성
"""
import re
import shutil
import sys
from pathlib import Path

EXT = Path(sys.argv[1]).resolve()
KIT = Path(sys.argv[2]).resolve()
LIB = KIT / "library"

# (폴더, GitHub 저장소, 저장소 내 스킬 루트들, 라이브러리 복사 여부, 라이브러리 하위 폴더 이름)
SOURCES = [
    ("openai-skills", "openai/skills", ["skills/.system", "skills/.curated"], True, "openai"),
    ("anthropic-skills", "anthropics/skills", ["skills"], True, "anthropic"),
    ("obra_superpowers", "obra/superpowers", ["skills"], True, "superpowers"),
    ("vercel-labs_agent-skills", "vercel-labs/agent-skills", ["skills"], True, "vercel"),
    ("github_awesome-copilot", "github/awesome-copilot", ["skills"], False, "awesome-copilot"),
    ("huggingface_skills", "huggingface/skills", ["."], False, "huggingface"),
    ("trailofbits_skills", "trailofbits/skills", ["."], False, "trailofbits"),
    ("ComposioHQ_awesome-codex-skills", "ComposioHQ/awesome-codex-skills", ["."], False, "composio"),
]

REPO_LICENSE = {
    "obra/superpowers": "MIT",
    "github/awesome-copilot": "MIT",
    "huggingface/skills": "Apache-2.0",
    "trailofbits/skills": "CC-BY-SA-4.0",
    "ComposioHQ/awesome-codex-skills": "미표기(재배포 불가로 취급)",
}
PERMISSIVE = {"MIT", "Apache-2.0"}

# 키트 기본 설치 스킬 (third_party/에 이미 있음): (저장소, 이름)
CORE_THIRD_PARTY = {
    ("anthropics/skills", "frontend-design"), ("anthropics/skills", "theme-factory"),
    ("anthropics/skills", "webapp-testing"), ("openai/skills", "playwright"), ("openai/skills", "pdf"),
    ("openai/skills", "jupyter-notebook"), ("openai/skills", "security-best-practices"),
}

# 명시적 금지 (이름 기준)
EXPLICIT_BLOCK = {
    "vercel-deploy": "외부 배포", "netlify-deploy": "외부 배포", "cloudflare-deploy": "외부 배포",
    "render-deploy": "외부 배포", "deploy-to-vercel": "외부 배포", "vercel-cli-with-tokens": "외부 배포",
    "yeet": "git push, PR", "gh-fix-ci": "GitHub 원격 작업", "gh-address-comments": "GitHub 원격 작업",
    "imagegen": "외부 AI API", "speech": "외부 AI API", "transcribe": "외부 AI API",
    "finishing-a-development-branch": "push, PR 단계 포함",
    "web-artifacts-builder": "다른 에이전트 전용 산출물",
    "linear": "외부 서비스", "sentry": "외부 서비스",
}

RULES_BLOCK = [
    ("외부 배포", re.compile(r"\bdeploy", re.I)),
    ("외부 전송", re.compile(r"git push|gh pr create|(open|create) (a )?pull request|publish to", re.I)),
    ("외부 AI API", re.compile(r"OPENAI_API_KEY|ANTHROPIC_API_KEY|GEMINI_API_KEY|HF_TOKEN|api\.openai\.com|api\.anthropic\.com|replicate\.com", re.I)),
    ("외부 서비스", re.compile(r"\b(composio|rube|slack|notion|jira|figma|sentry|gmail|google drive|salesforce|hubspot|stripe|twilio|discord|airtable|asana|trello|zapier|azure|aws|gcp|hugging ?face hub)\b|mcp__", re.I)),
]


def parse_frontmatter(text):
    m = re.match(r"^---\s*\n(.*?)\n---", text, re.S)
    fm = m.group(1) if m else ""
    def field(key):
        mm = re.search(rf"^{key}:\s*(.*(?:\n[ \t]+.*)*)", fm, re.M)
        if not mm:
            return ""
        v = mm.group(1).strip()
        if v in (">", "|", ">-", "|-"):
            v = ""
        v = re.sub(r"^[>|]-?\s*", "", v)
        v = " ".join(v.split()).strip().strip('"').strip("'")
        return v
    return field("name"), field("description"), field("license")


def skill_license(skill_dir, repo):
    for f in skill_dir.iterdir():
        if f.is_file() and f.name.lower().startswith("licen"):
            head = f.read_text(errors="ignore")[:600]
            if "Apache License" in head:
                return "Apache-2.0"
            if "MIT License" in head:
                return "MIT"
            if "Anthropic" in head and ("rights reserved" in head.lower() or "©" in head):
                return "Anthropic 독점(재배포 불가)"
            return "기타"
    return REPO_LICENSE.get(repo, "미표기")


def classify(name, desc, body):
    if name in EXPLICIT_BLOCK:
        return "금지", EXPLICIT_BLOCK[name]
    for label, rx in RULES_BLOCK:
        if rx.search(name) or rx.search(desc):
            return "금지", label
    hits = [label for label, rx in RULES_BLOCK if rx.search(body)]
    if hits:
        return "주의", ", ".join(dict.fromkeys(hits)) + " 언급"
    return "허용", ""


def main():
    if LIB.exists():
        shutil.rmtree(LIB)
    rows, seen = [], set()
    for folder, repo, roots, vendor, libname in SOURCES:
        base = EXT / folder
        if not base.exists():
            continue
        for root in roots:
            for sk in sorted((base / root).rglob("SKILL.md")):
                sdir = sk.parent
                rel = sdir.relative_to(base).as_posix()
                if any(part.startswith(".") and part not in (".system", ".curated") for part in sdir.relative_to(base).parts):
                    continue
                text = sk.read_text(errors="ignore")
                name, desc, fm_lic = parse_frontmatter(text)
                name = name or sdir.name
                lic = skill_license(sdir, repo)
                if fm_lic and lic in ("미표기", "기타"):
                    lic = "MIT" if "MIT" in fm_lic else ("Apache-2.0" if "Apache" in fm_lic else fm_lic)
                status, reason = classify(name, desc, text)
                key = (repo, name)
                if key in seen:
                    continue
                seen.add(key)
                size_kb = sum(f.stat().st_size for f in sdir.rglob("*") if f.is_file()) // 1024
                if (repo, name) in CORE_THIRD_PARTY:
                    install = "core"
                elif vendor and lic in PERMISSIVE and status != "금지" and size_kb <= 1500:
                    dest = LIB / libname / sdir.name
                    shutil.copytree(sdir, dest, symlinks=False, ignore=shutil.ignore_patterns(".git"))
                    install = f"library/{libname}/{sdir.name}"
                else:
                    install = "upstream"
                sid = f"{libname}/{name}"
                rows.append({
                    "id": sid, "name": name, "source": repo, "status": status, "reason": reason,
                    "install": install, "path": rel, "license": lic,
                    "desc": " ".join(desc.split())[:400],
                })
    # 저장소 단위 라이선스 파일을 라이브러리에 같이 둔다 (MIT 고지 의무)
    for folder, repo, _, vendor, libname in SOURCES:
        if vendor and (LIB / libname).exists():
            for lf in (EXT / folder).glob("LICENSE*"):
                shutil.copy(lf, LIB / libname / lf.name)

    # TSV
    cols = ["id", "name", "status", "reason", "install", "source", "path", "license", "desc"]
    out = KIT / "tools" / "skills_catalog.tsv"
    with out.open("w", encoding="utf-8") as f:
        f.write("\t".join(cols) + "\n")
        for r in rows:
            f.write("\t".join(str(r[c]).replace("\t", " ").replace("\n", " ") for c in cols) + "\n")

    # Markdown
    from collections import Counter, defaultdict
    by_src = defaultdict(list)
    for r in rows:
        by_src[r["source"]].append(r)
    st = Counter(r["status"] for r in rows)
    inst = Counter("core" if r["install"] == "core" else ("library" if r["install"].startswith("library") else "upstream") for r in rows)
    md = ["# 스킬 카탈로그 (SKILL_CATALOG)", "",
          f"공개 스킬 저장소 {len(by_src)}곳에서 모은 스킬 {len(rows)}개. "
          f"상태: 허용 {st['허용']}, 주의 {st['주의']}, 금지 {st['금지']}. "
          f"설치 방식: 기본 설치(core) {inst['core']}, 키트 내장(library) {inst['library']}, 원본에서 받기(upstream) {inst['upstream']}.", "",
          "## 쓰는 법 (Codex용)",
          "- 검색: `bash ~/kit/tools/find-skill.sh 키워드 [키워드...]` (모든 키워드가 들어간 스킬만 보여 줌)",
          "- 설치: `bash ~/kit/tools/get-skill.sh <id 또는 이름>` → ~/.agents/skills/ 에 설치. 그다음 `$이름`으로 호출",
          "- 상태 '금지'는 설치하지 않는다 (외부 배포, 외부 전송, 외부 AI API, 외부 서비스 연동). 스크립트도 거부한다.",
          "- 상태 '주의'는 본문에 외부 서비스 언급이 있다는 뜻이다. SKILL.md를 먼저 읽고 외부 연결 없이 쓸 수 있을 때만 쓴다.",
          "- 한 과제에서 추가로 받는 스킬은 3개 이내. 받기 전에 응시자에게 한 줄로 알린다.",
          "- 상태 판정은 키워드 기반 자동 분류라 틀릴 수 있다. 최종 판단은 SKILL.md를 읽고 한다.", ""]
    for src, items in by_src.items():
        md.append(f"## {src} ({len(items)}개, 라이선스: {items[0]['license'] if src not in ('openai/skills','anthropics/skills') else '스킬별'})")
        md.append("")
        if src == "ComposioHQ/awesome-codex-skills":
            auto = [r for r in items if r["name"].endswith("-automation")]
            rest = [r for r in items if not r["name"].endswith("-automation")]
            md.append(f"`*-automation` 스킬 {len(auto)}개는 Composio를 통한 외부 SaaS 연동이라 전부 금지다. 목록은 skills_catalog.tsv에만 있다.")
            md.append("")
            items = rest
        md.append("| id | 상태 | 설치 | 설명 |")
        md.append("|---|---|---|---|")
        for r in sorted(items, key=lambda x: x["id"]):
            d = r["desc"][:140].replace("|", "/")
            stx = r["status"] + (f" ({r['reason']})" if r["reason"] else "")
            ins = "core" if r["install"] == "core" else ("library" if r["install"].startswith("library") else "upstream")
            md.append(f"| {r['id']} | {stx} | {ins} | {d} |")
        md.append("")
    (KIT / "SKILL_CATALOG.md").write_text("\n".join(md), encoding="utf-8")
    print(f"rows={len(rows)} status={dict(st)} install={dict(inst)}")


main()
