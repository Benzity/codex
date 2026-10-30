# 스킬 카탈로그 (SKILL_CATALOG)

공개 스킬 저장소 8곳에서 모은 스킬 1552개. 상태: 허용 419, 주의 192, 금지 941. 설치 방식: 기본 설치(core) 7, 키트 내장(library) 37, 원본에서 받기(upstream) 1508.

## 쓰는 법 (Codex용)
- 검색: `bash ~/kit/tools/find-skill.sh 키워드 [키워드...]` (모든 키워드가 들어간 스킬만 보여 줌)
- 설치: `bash ~/kit/tools/get-skill.sh <id 또는 이름>` → ~/.agents/skills/ 에 설치. 그다음 `$이름`으로 호출
- 상태 '금지'는 설치하지 않는다 (외부 배포, 외부 전송, 외부 AI API, 외부 서비스 연동). 스크립트도 거부한다.
- 상태 '주의'는 본문에 외부 서비스 언급이 있다는 뜻이다. SKILL.md를 먼저 읽고 외부 연결 없이 쓸 수 있을 때만 쓴다.
- 한 과제에서 추가로 받는 스킬은 3개 이내. 받기 전에 응시자에게 한 줄로 알린다.
- 상태 판정은 키워드 기반 자동 분류라 틀릴 수 있다. 최종 판단은 SKILL.md를 읽고 한다.

## openai/skills (43개, 라이선스: 스킬별)

| id | 상태 | 설치 | 설명 |
|---|---|---|---|
| openai/aspnet-core | 금지 (외부 배포) | upstream | Build, review, refactor, or architect ASP.NET Core web applications using current official guidance for .NET web development. Use when worki |
| openai/chatgpt-apps | 주의 (외부 배포, 외부 서비스 언급) | library | Build, scaffold, refactor, and troubleshoot ChatGPT Apps SDK applications that combine an MCP server and widget UI. Use when Codex needs to  |
| openai/cli-creator | 주의 (외부 서비스 언급) | library | Build a composable CLI for Codex from API docs, an OpenAPI spec, existing curl examples, an SDK, a web app, an admin tool, or a local script |
| openai/cloudflare-deploy | 금지 (외부 배포) | upstream | Deploy applications and infrastructure to Cloudflare using Workers, Pages, and related platform services. Use when the user asks to deploy,  |
| openai/define-goal | 허용 | library | Help the user define a concrete, measurable goal before starting work, especially when they ask to use the goal tool, create a goal, set an  |
| openai/figma | 금지 (외부 서비스) | upstream | Use the Figma MCP server to fetch design context, screenshots, variables, and assets from Figma, and to translate Figma nodes into productio |
| openai/figma-code-connect-components | 금지 (외부 서비스) | upstream | Connects Figma design components to code components using Code Connect mapping tools. Use when user says "code connect", "connect this compo |
| openai/figma-create-design-system-rules | 금지 (외부 서비스) | upstream | Generates custom design system rules for the user's codebase. Use when user says "create design system rules", "generate rules for my projec |
| openai/figma-create-new-file | 금지 (외부 서비스) | upstream | Create a new blank Figma file. Use when the user wants to create a new Figma design or FigJam file, or when you need a new file before calli |
| openai/figma-generate-design | 금지 (외부 서비스) | upstream | Use this skill alongside figma-use when the task involves translating an application page, view, or multi-section layout into Figma. Trigger |
| openai/figma-generate-library | 금지 (외부 서비스) | upstream | Build or update a professional-grade design system in Figma from a codebase. Use when the user wants to create variables/tokens, build compo |
| openai/figma-implement-design | 금지 (외부 서비스) | upstream | Translates Figma designs into production-ready application code with 1:1 visual fidelity. Use when implementing UI code from Figma files, wh |
| openai/figma-use | 금지 (외부 서비스) | upstream | **MANDATORY prerequisite** — you MUST invoke this skill BEFORE every `use_figma` tool call. NEVER call `use_figma` directly without loading  |
| openai/gh-address-comments | 금지 (GitHub 원격 작업) | upstream | Help address review/issue comments on the open GitHub PR for the current branch using gh CLI; verify gh auth first and prompt the user to au |
| openai/gh-fix-ci | 금지 (GitHub 원격 작업) | upstream | Use when a user asks to debug or fix failing GitHub PR checks that run in GitHub Actions; use `gh` to inspect checks and logs, summarize fai |
| openai/hatch-pet | 허용 | library | Create, repair, validate, visually QA, and package Codex-compatible animated pets and pet spritesheets from character art, generated images, |
| openai/imagegen | 금지 (외부 AI API) | upstream | Generate or edit raster images when the task benefits from AI-created bitmap visuals such as photos, illustrations, textures, sprites, mocku |
| openai/jupyter-notebook | 허용 | core | Use when the user asks to create, scaffold, or edit Jupyter notebooks (`.ipynb`) for experiments, explorations, or tutorials; prefer the bun |
| openai/linear | 금지 (외부 서비스) | upstream | Manage issues, projects & team workflows in Linear. Use when the user wants to read, create or updates tickets in Linear. |
| openai/migrate-to-codex | 허용 | library | Migrate supported instruction files, skills, agents, and MCP config into Codex project and global files. |
| openai/netlify-deploy | 금지 (외부 배포) | upstream | Deploy web projects to Netlify using the Netlify CLI (`npx netlify`). Use when the user asks to deploy, host, publish, or link a site/repo o |
| openai/notion-knowledge-capture | 금지 (외부 서비스) | upstream | Capture conversations and decisions into structured Notion pages; use when turning chats/notes into wiki entries, how-tos, decisions, or FAQ |
| openai/notion-meeting-intelligence | 금지 (외부 서비스) | upstream | Prepare meeting materials with Notion context and Codex research; use when gathering context, drafting agendas/pre-reads, and tailoring mate |
| openai/notion-research-documentation | 금지 (외부 서비스) | upstream | Research across Notion and synthesize into structured documentation; use when gathering info from multiple Notion sources to produce briefs, |
| openai/notion-spec-to-implementation | 금지 (외부 서비스) | upstream | Turn Notion specs into implementation plans, tasks, and progress tracking; use when implementing PRDs/feature specs and creating Notion plan |
| openai/openai-docs | 주의 (외부 서비스 언급) | library | Use when the user asks how to build with OpenAI products or APIs, asks about Codex itself or choosing Codex surfaces, needs up-to-date offic |
| openai/pdf | 허용 | core | Use when tasks involve reading, creating, or reviewing PDF files where rendering and layout matter; prefer visual checks by rendering pages  |
| openai/playwright | 허용 | core | Use when the task requires automating a real browser from the terminal (navigation, form filling, snapshots, screenshots, data extraction, U |
| openai/playwright-interactive | 허용 | library | Persistent browser and Electron interaction through `js_repl` for fast iterative UI debugging. |
| openai/plugin-creator | 허용 | library | Create and scaffold plugin directories for Codex with a required `.codex-plugin/plugin.json`, optional plugin folders/files, and baseline pl |
| openai/render-deploy | 금지 (외부 배포) | upstream | Deploy applications to Render by analyzing codebases, generating render.yaml Blueprints, and providing Dashboard deeplinks. Use when the use |
| openai/screenshot | 주의 (외부 서비스 언급) | library | Use when the user explicitly asks for a desktop or system screenshot (full screen, specific app or window, or a pixel region), or when tool- |
| openai/security-best-practices | 주의 (외부 배포 언급) | core | Perform language and framework specific security best-practice reviews and suggest improvements. Trigger only when the user explicitly reque |
| openai/security-ownership-map | 허용 | library | Analyze git repositories to build a security ownership topology (people-to-file), compute bus factor and sensitive-code ownership, and expor |
| openai/security-threat-model | 주의 (외부 배포 언급) | library | Repository-grounded threat modeling that enumerates trust boundaries, assets, attacker capabilities, abuse paths, and mitigations, and write |
| openai/sentry | 금지 (외부 서비스) | upstream | Use when the user asks to inspect Sentry issues or events, summarize recent production errors, or pull basic Sentry health data via the Sent |
| openai/skill-creator | 주의 (외부 배포, 외부 서비스 언급) | library | Guide for creating effective skills. This skill should be used when users want to create a new skill (or update an existing skill) that exte |
| openai/skill-installer | 허용 | library | Install Codex skills into $CODEX_HOME/skills from a curated list or a GitHub repo path. Use when a user asks to list installable skills, ins |
| openai/speech | 금지 (외부 AI API) | upstream | Use when the user asks for text-to-speech narration or voiceover, accessibility reads, audio prompts, or batch speech generation via the Ope |
| openai/transcribe | 금지 (외부 AI API) | upstream | Transcribe audio files to text with optional diarization and known-speaker hints. Use when a user asks to transcribe speech from audio/video |
| openai/vercel-deploy | 금지 (외부 배포) | upstream | Deploy applications and websites to Vercel. Use when the user requests deployment actions like "deploy my app", "deploy and give me the link |
| openai/winui-app | 금지 (외부 배포) | upstream | Bootstrap, develop, and design modern WinUI 3 desktop applications with C# and the Windows App SDK using official Microsoft guidance, WinUI  |
| openai/yeet | 금지 (git push, PR) | upstream | Use only when the user explicitly asks to stage, commit, push, and open a GitHub pull request in one flow using the GitHub CLI (`gh`). |

## anthropics/skills (19개, 라이선스: 스킬별)

| id | 상태 | 설치 | 설명 |
|---|---|---|---|
| anthropic/academy-guide | 허용 | library | Stop and check this skill before finishing any reply to a question about how to use Claude or a Claude product — it recommends matching cour |
| anthropic/algorithmic-art | 허용 | library | Creating algorithmic art using p5.js with seeded randomness and interactive parameter exploration. Use this when users request creating art  |
| anthropic/brand-guidelines | 허용 | library | Applies Anthropic's official brand colors and typography to any sort of artifact that may benefit from having Anthropic's look-and-feel. Use |
| anthropic/canvas-design | 허용 | upstream | Create beautiful visual art in .png and .pdf documents using design philosophy. You should use this skill when the user asks to create a pos |
| anthropic/claude-api | 주의 (외부 배포, 외부 AI API, 외부 서비스 언급) | upstream | Reference for the Claude API / Anthropic SDK — model ids, pricing, params, streaming, tool use, MCP, agents, caching, token counting, model  |
| anthropic/discernment-nudge | 허용 | library | After you give a substantive answer or draft that the user may act on — advice or recommendations, drafted artifacts such as goals, plans, p |
| anthropic/doc-coauthoring | 주의 (외부 서비스 언급) | upstream | Guide users through a structured workflow for co-authoring documentation. Use when user wants to write documentation, proposals, technical s |
| anthropic/docx | 허용 | upstream | Use this skill whenever the user wants to create, read, edit, or manipulate Word documents (.docx files) or Word templates (.dotx files). Tr |
| anthropic/frontend-design | 허용 | core | Guidance for distinctive, intentional visual design when building new UI or reshaping an existing one. Helps with aesthetic direction, typog |
| anthropic/internal-comms | 허용 | library | A set of resources to help me write all kinds of internal communications, using the formats that my company likes to use. Claude should use  |
| anthropic/mcp-builder | 허용 | library | Guide for creating high-quality MCP (Model Context Protocol) servers that enable LLMs to interact with external services through well-design |
| anthropic/pdf | 허용 | upstream | Use this skill whenever the user wants to do anything with PDF files. This includes reading or extracting text/tables from PDFs, combining o |
| anthropic/pptx | 주의 (외부 서비스 언급) | upstream | Use this skill any time a .pptx or .potx file is involved in any way — as input, output, or both. This includes: creating slide decks, pitch |
| anthropic/skill-creator | 주의 (외부 배포, 외부 서비스 언급) | library | Create new skills, modify and improve existing skills, and measure skill performance. Use when users want to create a skill from scratch, ed |
| anthropic/slack-gif-creator | 금지 (외부 서비스) | upstream | Knowledge and utilities for creating animated GIFs optimized for Slack. Provides constraints, validation tools, and animation concepts. Use  |
| anthropic/theme-factory | 허용 | core | Toolkit for styling artifacts with a theme. These artifacts can be slides, docs, reportings, HTML landing pages, etc. There are 10 pre-set t |
| anthropic/web-artifacts-builder | 금지 (다른 에이전트 전용 산출물) | upstream | Suite of tools for creating elaborate, multi-component claude.ai HTML artifacts using modern frontend web technologies (React, Tailwind CSS, |
| anthropic/webapp-testing | 허용 | core | Toolkit for interacting with and testing local web applications using Playwright. Supports verifying frontend functionality, debugging UI be |
| anthropic/xlsx | 허용 | upstream | Use this skill any time a spreadsheet file is the primary input or output. This means any task where the user wants to: open, read, edit, or |

## obra/superpowers (15개, 라이선스: MIT)

| id | 상태 | 설치 | 설명 |
|---|---|---|---|
| superpowers/brainstorming | 허용 | library | You MUST use this before any creative work - creating features, building components, adding functionality, modifying behavior, or planning a |
| superpowers/diagnosing-superpowers | 허용 | library | Use when a superpowers session went wrong and your human partner wants to know why — repeated work, ignored plans, stumbles, poor results, a |
| superpowers/dispatching-parallel-agents | 허용 | library | Use when facing 2+ independent tasks that can be worked on without shared state or sequential dependencies |
| superpowers/executing-plans | 허용 | library | Use when executing an implementation plan in the current session as the implementer yourself — your human partner chose inline execution, or |
| superpowers/finishing-a-development-branch | 금지 (push, PR 단계 포함) | upstream | Use when implementation is complete, all tests pass, and you need to decide how to integrate the work |
| superpowers/receiving-code-review | 허용 | library | Use when receiving code review feedback, before implementing suggestions, especially if feedback seems unclear or technically questionable - |
| superpowers/requesting-code-review | 주의 (외부 배포 언급) | library | Use when completing tasks, implementing major features, or before merging to verify work meets requirements |
| superpowers/subagent-driven-development | 허용 | library | Use when executing implementation plans with independent tasks in the current session |
| superpowers/systematic-debugging | 허용 | library | Use when encountering any bug, test failure, or unexpected behavior, before proposing fixes |
| superpowers/test-driven-development | 허용 | library | Use when implementing any feature or bugfix, before writing implementation code |
| superpowers/using-git-worktrees | 허용 | library | Use when starting feature work that needs isolation from current workspace or before executing implementation plans - ensures an isolated wo |
| superpowers/using-superpowers | 허용 | library | Use when starting any conversation - establishes how to find and use skills, requiring skill invocation before ANY response including clarif |
| superpowers/verification-before-completion | 허용 | library | Use when about to claim work is complete, fixed, or passing, before committing or creating PRs - requires running verification commands and  |
| superpowers/writing-plans | 허용 | library | Use when you have a spec or requirements for a multi-step task, before touching code |
| superpowers/writing-skills | 금지 (외부 배포) | upstream | Use when creating new skills, editing existing skills, or verifying skills work before deployment |

## vercel-labs/agent-skills (9개, 라이선스: MIT)

| id | 상태 | 설치 | 설명 |
|---|---|---|---|
| vercel/deploy-to-vercel | 금지 (외부 배포) | upstream | Deploy applications and websites to Vercel. Use when the user requests deployment actions like "deploy my app", "deploy and give me the link |
| vercel/vercel-cli-with-tokens | 금지 (외부 배포) | upstream | Deploy and manage projects on Vercel using token-based authentication. Use when working with Vercel CLI using access tokens rather than inte |
| vercel/vercel-composition-patterns | 허용 | library | React composition patterns that scale. Use when refactoring components with boolean prop proliferation, building flexible component librarie |
| vercel/vercel-optimize | 금지 (외부 배포) | upstream | Use for Vercel cost and performance optimization on deployed projects, especially Next.js, SvelteKit, Nuxt, and limited Astro apps. Collect  |
| vercel/vercel-react-best-practices | 허용 | library | React and Next.js performance optimization guidelines from Vercel Engineering. This skill should be used when writing, reviewing, or refacto |
| vercel/vercel-react-native-skills | 허용 | library | React Native and Expo best practices for building performant mobile apps. Use when building React Native components, optimizing list perform |
| vercel/vercel-react-view-transitions | 허용 | library | Guide for implementing smooth, native-feeling animations using React's View Transition API (`<ViewTransition>` component, `addTransitionType |
| vercel/web-design-guidelines | 허용 | upstream | Review UI code for Web Interface Guidelines compliance. Use when asked to "review my UI", "check accessibility", "audit design", "review UX" |
| vercel/writing-guidelines | 허용 | upstream | Review docs/prose for Writing Guidelines compliance. Use when asked to "review my docs", "check writing style", "audit prose", "review docs  |

## github/awesome-copilot (463개, 라이선스: MIT)

| id | 상태 | 설치 | 설명 |
|---|---|---|---|
| awesome-copilot/acquire-codebase-knowledge | 허용 | upstream | Use this skill when the user explicitly asks to map, document, or onboard into an existing codebase. Trigger for prompts like "map this code |
| awesome-copilot/acreadiness-assess | 허용 | upstream | Run the AgentRC readiness assessment on the current repository and produce a static HTML dashboard at reports/index.html. Wraps `npx github: |
| awesome-copilot/acreadiness-generate-instructions | 허용 | upstream | Generate tailored AI agent instruction files via AgentRC instructions command. Produces .github/copilot-instructions.md (default, recommende |
| awesome-copilot/acreadiness-policy | 허용 | upstream | Help the user pick, write, or apply an AgentRC policy. Policies customise readiness scoring by disabling irrelevant checks, overriding impac |
| awesome-copilot/ad-campaign-analyzer | 허용 | upstream | Use this skill when the user shares ad campaign performance data and asks what to cut, scale, or test. Trigger for prompts like "analyze my  |
| awesome-copilot/add-educational-comments | 허용 | upstream | Add educational comments to the file specified, or prompt asking for file to comment if one is not provided. |
| awesome-copilot/adobe-illustrator-scripting | 허용 | upstream | Write, debug, and optimize Adobe Illustrator automation scripts using ExtendScript (JavaScript/JSX). Use when creating or modifying scripts  |
| awesome-copilot/agent-architecture | 허용 | upstream | Design AI agent architectures through requirements discovery, or audit and diagnose architectural flaws in existing agents. Architecture onl |
| awesome-copilot/agent-governance | 주의 (외부 배포 언급) | upstream | Patterns and techniques for adding governance, safety, and trust controls to AI agent systems. Use this skill when: - Building AI agents tha |
| awesome-copilot/agent-owasp-compliance | 금지 (외부 배포) | upstream | Check any AI agent codebase against the OWASP Agentic Security Initiative (ASI) Top 10 risks. Use this skill when: - Evaluating an agent sys |
| awesome-copilot/agent-skill-stack | 허용 | upstream | Find, evaluate, and assemble the smallest compatible set of AI Agent Skills for an end-to-end natural-language goal. Use when a user wants S |
| awesome-copilot/agent-supply-chain | 주의 (외부 배포 언급) | upstream | Verify supply chain integrity for AI agent plugins, tools, and dependencies. Use this skill when: - Generating SHA-256 integrity manifests f |
| awesome-copilot/agentic-eval | 허용 | upstream | Patterns and techniques for evaluating and improving AI agent outputs. Use this skill when: - Implementing self-critique and reflection loop |
| awesome-copilot/ai-prompt-engineering-safety-review | 허용 | upstream | Comprehensive AI prompt engineering safety review and improvement prompt. Analyzes prompts for safety, bias, security vulnerabilities, and e |
| awesome-copilot/ai-ready | 허용 | upstream | Make any repo AI-ready — analyzes your codebase and generates AGENTS.md, copilot-instructions.md, CI workflows, issue templates, and more. M |
| awesome-copilot/ai-team-orchestration | 주의 (외부 배포 언급) | upstream | Bootstrap and run a lightweight multi-agent development team. Use when starting or adopting a project, planning work, coordinating implement |
| awesome-copilot/anti-ui-slop | 허용 | upstream | Stop coding agents from shipping generic UI. Use UIZZE''s 800,000+ real web and iOS screens to build product-specific interfaces, define a d |
| awesome-copilot/api-breaking-change-detector | 허용 | upstream | Cross-references C# Web API controllers/DTOs against their TypeScript/JavaScript consumers (React, Angular, Vue, Svelte, Node.js, or hand-wr |
| awesome-copilot/appinsights-instrumentation | 금지 (외부 서비스) | upstream | Instrument a webapp to send useful telemetry data to Azure App Insights |
| awesome-copilot/apple-appstore-reviewer | 허용 | upstream | Serves as a reviewer of the codebase with instructions on looking for Apple App Store optimizations or rejection reasons. |
| awesome-copilot/arch-linux-triage | 허용 | upstream | Triage and resolve Arch Linux issues with pacman, systemd, and rolling-release best practices. |
| awesome-copilot/architecture-blueprint-generator | 주의 (외부 배포 언급) | upstream | Comprehensive project architecture blueprint generator that analyzes codebases to create detailed architectural documentation. Automatically |
| awesome-copilot/arduino-azure-iot-edge-integration | 금지 (외부 서비스) | upstream | Design and implement Arduino integration with Azure IoT Hub and IoT Edge, including secure provisioning, resilient telemetry, command handli |
| awesome-copilot/arize-ai-provider-integration | 금지 (외부 서비스) | upstream | Creates, reads, updates, and deletes Arize AI integrations that store LLM provider credentials used by evaluators and other Arize features.  |
| awesome-copilot/arize-annotation | 허용 | upstream | Creates and manages annotation configs (categorical, continuous, freeform label schemas) and annotation queues (human review workflows) on A |
| awesome-copilot/arize-dataset | 허용 | upstream | Creates, manages, and queries Arize datasets and examples. Covers dataset CRUD, appending examples, exporting data, and file-based dataset c |
| awesome-copilot/arize-evaluator | 주의 (외부 AI API, 외부 서비스 언급) | upstream | Handles LLM-as-judge evaluation workflows on Arize including creating/updating evaluators, running evaluations on spans or experiments, mana |
| awesome-copilot/arize-experiment | 주의 (외부 AI API, 외부 서비스 언급) | upstream | Creates, runs, and analyzes Arize experiments for evaluating and comparing model performance. Covers experiment CRUD, exporting runs, compar |
| awesome-copilot/arize-instrumentation | 주의 (외부 서비스 언급) | upstream | Adds Arize AX tracing to an LLM application for the first time. Follows a two-phase agent-assisted flow to analyze the codebase then impleme |
| awesome-copilot/arize-link | 허용 | upstream | Generates deep links to the Arize UI for traces, spans, sessions, datasets, labeling queues, evaluators, and annotation configs. Produces cl |
| awesome-copilot/arize-prompt-optimization | 주의 (외부 배포, 외부 AI API 언급) | upstream | Optimizes, improves, and debugs LLM prompts using production trace data, evaluations, and annotations. Extracts prompts from spans, gathers  |
| awesome-copilot/arize-trace | 주의 (외부 배포 언급) | upstream | Downloads, exports, and inspects existing Arize traces and spans to understand what an LLM app is doing or debug runtime issues. Covers expo |
| awesome-copilot/aspire | 금지 (외부 배포) | upstream | Aspire skill covering the Aspire CLI, AppHost orchestration, service discovery, integrations, MCP server, VS Code extension, Dev Containers, |
| awesome-copilot/aspnet-minimal-api-openapi | 허용 | upstream | Create ASP.NET Minimal API endpoints with proper OpenAPI documentation |
| awesome-copilot/audit-integrity | 허용 | upstream | Enforce output quality, evidence verification, and quality gates across security audits. Use this skill when you perform SAST, SCA, threat m |
| awesome-copilot/automate-this | 허용 | upstream | Analyze a screen recording of a manual process and produce targeted, working automation scripts. Extracts frames and audio narration from vi |
| awesome-copilot/autoresearch | 허용 | upstream | Autonomous iterative experimentation loop for any programming task. Guides the user through defining goals, measurable metrics, and scope co |
| awesome-copilot/aws-cdk-python-setup | 금지 (외부 배포) | upstream | Setup and initialization guide for developing AWS CDK (Cloud Development Kit) applications in Python. This skill enables users to configure  |
| awesome-copilot/aws-cloudwatch-investigation | 금지 (외부 배포) | upstream | Reusable investigation patterns for AWS CloudWatch: Logs Insights query templates, alarm-to-deployment correlation, blast-radius narrowing d |
| awesome-copilot/aws-cost-optimize | 금지 (외부 서비스) | upstream | Analyze AWS resources used in the app (IaC files and/or resources in a target account/region) and optimize costs - creating GitHub issues fo |
| awesome-copilot/aws-resource-health-diagnose | 금지 (외부 서비스) | upstream | Analyze AWS resource health, diagnose issues from CloudWatch logs and metrics, and create a remediation plan for identified problems. |
| awesome-copilot/aws-resource-query | 금지 (외부 서비스) | upstream | Query AWS resources using natural language. Covers EC2, S3, RDS, Lambda, ECS, EKS, Secrets Manager, IAM, VPC, networking, messaging, and mor |
| awesome-copilot/aws-well-architected-review | 금지 (외부 서비스) | upstream | Perform an AWS Well-Architected Framework review of the current workload IaC and architecture, generating findings and GitHub issues for imp |
| awesome-copilot/az-cost-optimize | 금지 (외부 서비스) | upstream | Analyze Azure resources used in the app (IaC files and/or resources in a target rg) and optimize costs - creating GitHub issues for identifi |
| awesome-copilot/azure-architecture-autopilot | 금지 (외부 배포) | upstream | Design Azure infrastructure using natural language, or analyze existing Azure resources to auto-generate architecture diagrams, refine them  |
| awesome-copilot/azure-container-registry-cli | 금지 (외부 서비스) | upstream | Manage Azure Container Registry via the az acr CLI including registries, images, cloud builds, ACR Tasks, authentication, tokens, geo-replic |
| awesome-copilot/azure-deployment-preflight | 금지 (외부 배포) | upstream | Performs comprehensive preflight validation of Bicep deployments to Azure, including template syntax validation, what-if analysis, and permi |
| awesome-copilot/azure-developer-cli | 금지 (외부 배포) | upstream | Design, create, review, migrate, or troubleshoot Azure Developer CLI (azd) projects using current Microsoft guidance. Use for azd, azure.yam |
| awesome-copilot/azure-devops-cli | 금지 (외부 서비스) | upstream | Manage Azure DevOps resources via CLI including projects, repos, pipelines, builds, pull requests, work items, artifacts, and service endpoi |
| awesome-copilot/azure-logic-apps-standard-cli | 금지 (외부 배포) | upstream | Create, inspect, validate, test, run, debug, package, and deploy Azure Logic Apps Standard projects using the Azure CLI logicapp extension.  |
| awesome-copilot/azure-pricing | 금지 (외부 서비스) | upstream | Fetches real-time Azure retail pricing using the Azure Retail Prices API (prices.azure.com) and estimates Copilot Studio agent credit consum |
| awesome-copilot/azure-resource-health-diagnose | 금지 (외부 서비스) | upstream | Analyze Azure resource health, diagnose issues from logs and telemetry, and create a remediation plan for identified problems. |
| awesome-copilot/azure-resource-visualizer | 금지 (외부 서비스) | upstream | Analyze Azure resource groups and generate detailed Mermaid architecture diagrams showing the relationships between individual resources. Us |
| awesome-copilot/azure-role-selector | 금지 (외부 서비스) | upstream | When user is asking for guidance for which role to assign to an identity given desired permissions, this agent helps them understand the rol |
| awesome-copilot/azure-smart-city-iot-solution-builder | 금지 (외부 서비스) | upstream | Design and plan end-to-end Azure IoT and Smart City solutions: requirements, architecture, security, operations, cost, and a phased delivery |
| awesome-copilot/azure-static-web-apps | 금지 (외부 배포) | upstream | Helps create, configure, and deploy Azure Static Web Apps using the SWA CLI. Use when deploying static sites to Azure, setting up SWA local  |
| awesome-copilot/azure-well-architected-review | 금지 (외부 서비스) | upstream | Perform an Azure Well-Architected Framework review of the current workload IaC and architecture, generating findings and GitHub issues for i |
| awesome-copilot/batch-files | 주의 (외부 배포 언급) | upstream | Expert-level Windows batch file (.bat/.cmd) skill for writing, debugging, and maintaining CMD scripts. Use when asked to "create a batch fil |
| awesome-copilot/batch-script-progress | 허용 | upstream | Design and verify runtime output when creating or modifying Python, PowerShell, or Node.js scripts that process multiple files, records, or  |
| awesome-copilot/bench-read | 허용 | upstream | Read artifacts from the shared bench — the workspace where desks leave findings, verdicts, and work products for each other and the operator |
| awesome-copilot/bigquery-pipeline-audit | 허용 | upstream | Audits Python + BigQuery pipelines for cost safety, idempotency, and production readiness. Returns a structured report with exact patch loca |
| awesome-copilot/boost-prompt | 허용 | upstream | Interactive prompt refinement workflow: interrogates scope, deliverables, constraints; copies final markdown to clipboard; never writes code |
| awesome-copilot/brag-sheet | 주의 (외부 배포 언급) | upstream | Turn vague "what did I do?" into evidence-backed impact statements for performance reviews, self-reviews, promotion packets, and weekly upda |
| awesome-copilot/breakdown-epic-arch | 주의 (외부 배포 언급) | upstream | Prompt for creating the high-level technical architecture for an Epic, based on a Product Requirements Document. |
| awesome-copilot/breakdown-epic-pm | 허용 | upstream | Prompt for creating an Epic Product Requirements Document (PRD) for a new epic. This PRD will be used as input for generating a technical ar |
| awesome-copilot/breakdown-feature-implementation | 주의 (외부 배포 언급) | upstream | Prompt for creating detailed feature implementation plans, following Epoch monorepo structure. |
| awesome-copilot/breakdown-feature-prd | 허용 | upstream | Prompt for creating Product Requirements Documents (PRDs) for new features, based on an Epic. |
| awesome-copilot/breakdown-plan | 허용 | upstream | Issue Planning and Automation prompt that generates comprehensive project plans with Epic > Feature > Story/Enabler > Test hierarchy, depend |
| awesome-copilot/breakdown-test | 허용 | upstream | Test Planning and Quality Assurance prompt that generates comprehensive test strategies, task breakdowns, and quality validation plans for G |
| awesome-copilot/bug-receipt | 허용 | upstream | Close defects and incidents with a BUG RECEIPT and VERIFIED, PARTIAL, or BLOCKED status after diagnosis, repair, or recovery. |
| awesome-copilot/bug-reproduction-brief | 허용 | upstream | Turn a vague, intermittent, or environment-specific bug report into a minimal evidence-backed reproduction before proposing a fix. |
| awesome-copilot/build-evidence-map | 허용 | upstream | Build an auditable evidence map for a contested technical choice, research synthesis, proposal review, or consequential decision. Use when C |
| awesome-copilot/caption-qa | 허용 | upstream | Check SRT or WebVTT captions and subtitles against published standards (Netflix English, BBC subtitle guidelines, DCMP Captioning Key) for r |
| awesome-copilot/centos-linux-triage | 허용 | upstream | Triage and resolve CentOS issues using RHEL-compatible tooling, SELinux-aware practices, and firewalld. |
| awesome-copilot/chrome-devtools | 허용 | upstream | Expert-level browser automation, debugging, and performance analysis using Chrome DevTools MCP. Use for interacting with web pages, capturin |
| awesome-copilot/cli-mastery | 허용 | upstream | Interactive training for the GitHub Copilot CLI. Guided lessons, quizzes, scenario challenges, and a full reference covering slash commands, |
| awesome-copilot/cloud-design-patterns | 금지 (외부 배포) | upstream | Cloud design patterns for distributed systems architecture covering 42 industry-standard patterns across reliability, performance, messaging |
| awesome-copilot/code-exemplars-blueprint-generator | 허용 | upstream | Technology-agnostic prompt generator that creates customizable AI prompts for scanning codebases and identifying high-quality code exemplars |
| awesome-copilot/code-tour | 허용 | upstream | Use this skill to create CodeTour .tour files — persona-targeted, step-by-step walkthroughs that link to real files and line numbers. Trigge |
| awesome-copilot/codebase-memory-mcp | 허용 | upstream | Use when exploring unfamiliar code, mapping architecture, finding symbols or relationships, tracing callers, callees, data flow or dependenc |
| awesome-copilot/codeql | 주의 (외부 전송 언급) | upstream | Comprehensive guide for setting up and configuring CodeQL code scanning via GitHub Actions workflows and the CodeQL CLI. This skill should b |
| awesome-copilot/comment-code-generate-a-tutorial | 허용 | upstream | Transform this Python script into a polished, beginner-friendly project by refactoring the code, adding clear instructional comments, and ge |
| awesome-copilot/commit-message-storyteller | 허용 | upstream | Analyzes git diffs or staged changes and generates narrative commit messages that explain WHY a change was made, not just what changed — fol |
| awesome-copilot/competitor-ad-intelligence | 허용 | upstream | Use this skill when the user asks to analyze, tear down, or reverse-engineer a competitor''s paid ads. Trigger for prompts like "what ads is |
| awesome-copilot/containerize-aspnet-framework | 주의 (외부 배포 언급) | upstream | Containerize an ASP.NET .NET Framework project by creating Dockerfile and .dockerfile files customized for the project. |
| awesome-copilot/containerize-aspnetcore | 주의 (외부 서비스 언급) | upstream | Containerize an ASP.NET Core project by creating Dockerfile and .dockerfile files customized for the project. |
| awesome-copilot/content-management-systems | 금지 (외부 서비스) | upstream | Workflow for building and modifying content management systems across WordPress, Shopify, Wix, Squarespace, Drupal, WooCommerce, Joomla, Hub |
| awesome-copilot/context-map | 허용 | upstream | Generate a map of all files relevant to a task before making changes |
| awesome-copilot/conventional-branch | 주의 (외부 전송 언급) | upstream | Create Git branches following the Conventional Branch specification (feature/, bugfix/, hotfix/, release/, chore/, plus AI agent prefixes ai |
| awesome-copilot/conventional-commit | 허용 | upstream | Prompt and workflow for generating conventional commit messages using a structured XML format. Guides users to create standardized, descript |
| awesome-copilot/convert-excel-to-md | 허용 | upstream | Converts Excel (.xlsx) workbooks into Markdown so their contents can be accurately analyzed, summarized, searched, or extracted from. Use th |
| awesome-copilot/convert-pdf-to-md | 허용 | upstream | Converts PDF (.pdf) documents into Markdown so their contents can be accurately analyzed, summarized, searched, or extracted from. Use this  |
| awesome-copilot/convert-plaintext-to-md | 주의 (외부 서비스 언급) | upstream | Convert a text-based document to markdown following instructions from prompt, or if a documented option is passed, follow the instructions f |
| awesome-copilot/convert-word-to-md | 허용 | upstream | Converts Word (.docx) documents into Markdown so their contents can be accurately analyzed, summarized, searched, or extracted from. Use thi |
| awesome-copilot/copilot-cli-quickstart | 주의 (외부 전송 언급) | upstream | Use this skill when someone wants to learn GitHub Copilot CLI from scratch. Offers interactive step-by-step tutorials with separate Develope |
| awesome-copilot/copilot-instructions-blueprint-generator | 허용 | upstream | Technology-agnostic blueprint generator for creating comprehensive copilot-instructions.md files that guide GitHub Copilot to produce code c |
| awesome-copilot/copilot-pr-autopilot | 허용 | upstream | Copilot left 14 review comments on your PR — half are nits. Hours of fix → reply → resolve → re-request, and each round lands MORE comments. |
| awesome-copilot/copilot-sdk | 허용 | upstream | Build agentic applications with GitHub Copilot SDK. Use when embedding AI agents in apps, creating custom tools, implementing streaming resp |
| awesome-copilot/copilot-spaces | 주의 (외부 서비스 언급) | upstream | Use Copilot Spaces to provide project-specific context to conversations. Use this skill when users mention a "Copilot space", want to load c |
| awesome-copilot/copilot-usage-metrics | 허용 | upstream | Retrieve and display GitHub Copilot usage metrics for organizations and enterprises using the GitHub CLI and REST API. |
| awesome-copilot/cosmosdb-datamodeling | 금지 (외부 서비스) | upstream | Step-by-step guide for capturing key application requirements for NoSQL use-case and produce Azure Cosmos DB Data NoSQL Model design using b |
| awesome-copilot/create-agentsmd | 주의 (외부 배포 언급) | upstream | Prompt for generating an AGENTS.md file for a repository |
| awesome-copilot/create-architectural-decision-record | 허용 | upstream | Create an Architectural Decision Record (ADR) document for AI-optimized decision documentation. |
| awesome-copilot/create-github-action-workflow-specification | 주의 (외부 배포 언급) | upstream | Create a formal specification for an existing GitHub Actions CI/CD workflow, optimized for AI consumption and workflow maintenance. |
| awesome-copilot/create-github-issue-feature-from-specification | 허용 | upstream | Create GitHub Issue for feature request from specification file using feature_request.yml template. |
| awesome-copilot/create-github-issues-feature-from-implementation-plan | 허용 | upstream | Create GitHub Issues from implementation plan phases using feature_request.yml or chore_request.yml templates. |
| awesome-copilot/create-github-issues-for-unmet-specification-requirements | 허용 | upstream | Create GitHub Issues for unimplemented requirements from specification files using feature_request.yml template. |
| awesome-copilot/create-implementation-plan | 허용 | upstream | Create a new implementation plan file for new features, refactoring existing code or upgrading packages, design, architecture or infrastruct |
| awesome-copilot/create-llms | 주의 (외부 배포 언급) | upstream | Create an llms.txt file from scratch based on repository structure following the llms.txt specification at https://llmstxt.org/ |
| awesome-copilot/create-quarkus-project | 허용 | upstream | Create a new Quarkus project (Maven or Gradle) with the Quarkus CLI, code.quarkus.io API or Maven plugin, choose extensions, and run it in d |
| awesome-copilot/create-readme | 주의 (외부 서비스 언급) | upstream | Create a README.md file for the project |
| awesome-copilot/create-specification | 허용 | upstream | Create a new specification file for the solution, optimized for Generative AI consumption. |
| awesome-copilot/create-spring-boot-java-project | 허용 | upstream | Create Spring Boot Java Project Skeleton |
| awesome-copilot/create-spring-boot-kotlin-project | 허용 | upstream | Create Spring Boot Kotlin Project Skeleton |
| awesome-copilot/create-technical-spike | 주의 (외부 배포, 외부 서비스 언급) | upstream | Create time-boxed technical spike documents for researching and resolving critical development decisions before implementation. |
| awesome-copilot/create-tldr-page | 주의 (외부 전송 언급) | upstream | Create a tldr page from documentation URLs and command examples, requiring both URL and command name. |
| awesome-copilot/creating-oracle-to-postgres-master-migration-plan | 허용 | upstream | Discovers all projects in a .NET solution, classifies each for Oracle-to-PostgreSQL migration eligibility, and produces a persistent master  |
| awesome-copilot/creating-oracle-to-postgres-migration-bug-report | 허용 | upstream | Creates structured bug reports for defects found during Oracle-to-PostgreSQL migration. Use when documenting behavioral differences between  |
| awesome-copilot/creating-oracle-to-postgres-migration-integration-tests | 허용 | upstream | Creates integration test cases targeting Oracle for .NET data access artifacts. Tests capture Oracle expected behavior as the authoritative  |
| awesome-copilot/csharp-async | 허용 | upstream | Get best practices for C# async programming |
| awesome-copilot/csharp-docs | 허용 | upstream | Ensure that C# types are documented with XML comments and follow best practices for documentation. |
| awesome-copilot/csharp-mstest | 주의 (외부 배포, 외부 서비스 언급) | upstream | Get best practices for MSTest 3.x/4.x unit testing, including modern assertion APIs and data-driven tests |
| awesome-copilot/csharp-nunit | 허용 | upstream | Get best practices for NUnit unit testing, including data-driven tests |
| awesome-copilot/csharp-tunit | 허용 | upstream | Get best practices for TUnit unit testing, including data-driven tests |
| awesome-copilot/csharp-xunit | 허용 | upstream | Get best practices for XUnit unit testing, including data-driven tests |
| awesome-copilot/cypress-flake-fixer | 허용 | upstream | Find and fix flake-prone anti-patterns in an existing Cypress suite, and APIs removed in Cypress 12 to 16. Bundles a zero-dependency scanner |
| awesome-copilot/d365-solution-blueprint | 금지 (외부 배포) | upstream | Authors a Dynamics 365 Finance and Supply Chain Management Solution Blueprint from scratch through a structured, section-by-section architec |
| awesome-copilot/daily-focus-board | 허용 | upstream | Spin up a personal, motivating daily focus board that renders in a browser canvas and that the user drives by talking to their AI partner. T |
| awesome-copilot/daily-prep | 허용 | upstream | Prepare for tomorrow''s meetings and tasks. Pulls calendar from Outlook via WorkIQ, cross-references open tasks and workspace context, class |
| awesome-copilot/data-breach-blast-radius | 주의 (외부 서비스 언급) | upstream | Pre-breach impact analysis: inventories sensitive data (PII, PHI, PCI-DSS, credentials), traces data flows, scores exposure vectors, and pro |
| awesome-copilot/datanalysis-credit-risk | 허용 | upstream | Credit risk data cleaning and variable screening pipeline for pre-loan modeling. Use when working with raw credit data that needs quality as |
| awesome-copilot/dataverse-python-advanced-patterns | 허용 | upstream | Generate production code for Dataverse SDK using advanced patterns, error handling, and optimization techniques. |
| awesome-copilot/dataverse-python-production-code | 허용 | upstream | Generate production-ready Python code using Dataverse SDK with error handling, optimization, and best practices |
| awesome-copilot/dataverse-python-quickstart | 허용 | upstream | Generate Python SDK setup + CRUD + bulk + paging snippets using official patterns. |
| awesome-copilot/dataverse-python-usecase-builder | 주의 (외부 서비스 언급) | upstream | Generate complete solutions for specific Dataverse SDK use cases with architecture recommendations |
| awesome-copilot/debian-linux-triage | 허용 | upstream | Triage and resolve Debian Linux issues with apt, systemd, and AppArmor-aware guidance. |
| awesome-copilot/declarative-agents | 주의 (외부 배포 언급) | upstream | Complete development kit for Microsoft 365 Copilot declarative agents with three comprehensive workflows (basic, advanced, validation), Type |
| awesome-copilot/dependabot | 주의 (외부 서비스 언급) | upstream | Comprehensive guide for configuring and managing GitHub Dependabot. Use this skill when users ask about creating or optimizing dependabot.ym |
| awesome-copilot/desk-journal | 허용 | upstream | Write, append, or read desk journal entries. The journal is persistent memory — what survives session boundaries. A good entry has: what was |
| awesome-copilot/desk-open | 허용 | upstream | Create and open a new desk in the workshop. Sets up the folder structure, initial journal, and desk identity so the next session that sits d |
| awesome-copilot/devops-rollout-plan | 금지 (외부 배포) | upstream | Generate comprehensive rollout plans with preflight checks, step-by-step deployment, verification signals, rollback procedures, and communic |
| awesome-copilot/diagnose | 허용 | upstream | Perform a systematic diagnostic scan of an AI workflow across 5 quality dimensions — prompt quality, context efficiency, tool health, archit |
| awesome-copilot/doc-and-modernize | 주의 (외부 배포, 외부 서비스 언급) | upstream | Two related workflows for a locally-cloned codebase, in one skill. Documentation mode produces a single, comprehensive, verifiable architect |
| awesome-copilot/docs-sync-audit | 주의 (외부 배포 언급) | upstream | Run a read-only documentation drift audit for a feature, PR, branch, release, API, configuration change, workflow, CLI, package, or reposito |
| awesome-copilot/documentation-writer | 허용 | upstream | Diátaxis Documentation Expert. An expert technical writer specializing in creating high-quality software documentation, guided by the princi |
| awesome-copilot/dotnet-best-practices | 허용 | upstream | Ensure .NET/C# code meets best practices for the solution/project. |
| awesome-copilot/dotnet-design-pattern-review | 허용 | upstream | Review the C#/.NET code for design pattern implementation and suggest improvements. |
| awesome-copilot/dotnet-mcp-builder | 금지 (외부 배포) | upstream | Build Model Context Protocol (MCP) servers in C#/.NET against the current ModelContextProtocol 2.x NuGet packages. Helps with cases the mode |
| awesome-copilot/dotnet-timezone | 주의 (외부 서비스 언급) | upstream | .NET timezone handling guidance for C# applications. Use when working with TimeZoneInfo, DateTimeOffset, NodaTime, UTC conversion, daylight  |
| awesome-copilot/dotnet-upgrade | 주의 (외부 배포, 외부 서비스 언급) | upstream | Ready-to-use prompts for comprehensive .NET framework upgrade analysis and execution |
| awesome-copilot/doublecheck | 허용 | upstream | Three-layer verification pipeline for AI output. Extracts verifiable claims, finds supporting or contradicting sources via web search, runs  |
| awesome-copilot/draw-io-diagram-generator | 허용 | upstream | Use when creating, editing, or generating draw.io diagram files (.drawio, .drawio.svg, .drawio.png). Covers mxGraph XML authoring, shape lib |
| awesome-copilot/drawio | 허용 | upstream | Generate draw.io diagrams as .drawio files and export to PNG/SVG/PDF with embedded XML |
| awesome-copilot/editorconfig | 허용 | upstream | Generates a comprehensive and best-practice-oriented .editorconfig file based on project analysis and user preferences. |
| awesome-copilot/ef-core | 주의 (외부 배포 언급) | upstream | Get best practices for Entity Framework Core |
| awesome-copilot/efcore-d2-db-diagram | 금지 (외부 배포) | upstream | Generate D2 database diagrams from Entity Framework Core models. USE FOR: EF Core database diagram, Entity Framework Core ERD, DbContext dia |
| awesome-copilot/em-dash | 허용 | upstream | Expert on the history, origin, and correct use of the em dash. Use when writing or reviewing code, comments, or data files to avoid em and e |
| awesome-copilot/email-drafter | 허용 | upstream | Draft and review professional emails that match your personal writing style. Analyzes your sent emails for tone, greeting, structure, and si |
| awesome-copilot/entra-agent-user | 금지 (외부 서비스) | upstream | Create Agent Users in Microsoft Entra ID from Agent Identities, enabling AI agents to act as digital workers with user identity capabilities |
| awesome-copilot/eval-driven-dev | 허용 | upstream | Improve AI application with evaluation-driven development. Define eval criteria, instrument the application, build golden datasets, observe  |
| awesome-copilot/exam-ready | 허용 | upstream | Activate this skill when a student provides study material (PDF or pasted notes) and a syllabus, and wants to prepare for an exam. Extracts  |
| awesome-copilot/excalidraw-diagram-generator | 주의 (외부 서비스 언급) | upstream | Generate Excalidraw diagrams from natural language descriptions. Use when asked to "create a diagram", "make a flowchart", "visualize a proc |
| awesome-copilot/eyeball | 허용 | upstream | Document analysis with inline source screenshots. When you ask Copilot to analyze a document, Eyeball generates a Word doc where every factu |
| awesome-copilot/fabric-lakehouse | 주의 (외부 서비스 언급) | upstream | Use this skill to get context about Fabric Lakehouse and its features for software systems and AI-powered functions. It offers descriptions  |
| awesome-copilot/fedora-linux-triage | 허용 | upstream | Triage and resolve Fedora issues with dnf, systemd, and SELinux-aware guidance. |
| awesome-copilot/finalize-agent-prompt | 허용 | upstream | Finalize prompt file using the role of an AI agent to polish the prompt for the end user. |
| awesome-copilot/finnish-humanizer | 허용 | upstream | Detect and remove AI-generated markers from Finnish text, making it sound like a native Finnish speaker wrote it. Use when asked to "humaniz |
| awesome-copilot/first-ask | 허용 | upstream | Interactive, input-tool powered, task refinement workflow: interrogates scope, deliverables, constraints before carrying out the task; Requi |
| awesome-copilot/flowstudio-power-automate-build | 금지 (외부 배포) | upstream | Build, scaffold, and deploy Power Automate cloud flows using the FlowStudio MCP server. Your agent constructs flow definitions, wires connec |
| awesome-copilot/flowstudio-power-automate-debug | 주의 (외부 배포, 외부 서비스 언급) | upstream | Debug failing Power Automate cloud flows using the FlowStudio MCP server. The Graph API only shows top-level status codes. This skill gives  |
| awesome-copilot/flowstudio-power-automate-governance | 주의 (외부 배포, 외부 서비스 언급) | upstream | Govern Power Automate flows and Power Apps at scale using the FlowStudio MCP cached store. Classify flows by business impact, detect orphane |
| awesome-copilot/flowstudio-power-automate-mcp | 주의 (외부 배포 언급) | upstream | Foundation skill for Power Automate via FlowStudio MCP — auth setup, the reusable MCP helper (Python + Node.js), tool discovery via `list_sk |
| awesome-copilot/flowstudio-power-automate-monitoring | 주의 (외부 배포, 외부 서비스 언급) | upstream | Pro+ subscription required. Tenant-wide Power Automate monitoring using the FlowStudio MCP cached store: failure rates, run-health trends, m |
| awesome-copilot/fluentui-blazor | 허용 | upstream | Guide for using the Microsoft Fluent UI Blazor component library (Microsoft.FluentUI.AspNetCore.Components NuGet package) in Blazor applicat |
| awesome-copilot/folder-structure-blueprint-generator | 주의 (외부 배포 언급) | upstream | Comprehensive technology-agnostic prompt for analyzing and documenting project folder structures. Auto-detects project types (.NET, Java, Re |
| awesome-copilot/foundry-agent-sync | 금지 (외부 배포) | upstream | Create and synchronize prompt-based AI agents directly within Azure AI Foundry via REST API, from a local JSON manifest. Unlike scaffolding  |
| awesome-copilot/foundry-agentic-loop | 금지 (외부 배포) | upstream | Build agentic solutions on Microsoft Foundry, GitHub and Azure: hosted agents, toolbox tools and skills, Foundry IQ grounding and a React/Fa |
| awesome-copilot/foundry-hosted-agent-copilotkit | 금지 (외부 배포) | upstream | Build and evolve agentic web apps that pair a CopilotKit React frontend with a Microsoft Agent Framework agent running as a Microsoft Foundr |
| awesome-copilot/freecad-scripts | 허용 | upstream | Expert skill for writing FreeCAD Python scripts, macros, and automation. Use when asked to create FreeCAD models, parametric objects, Part/M |
| awesome-copilot/from-the-other-side-anitta | 허용 | upstream | Rigorous challenge profile for Anitta: assumption checks, evidence calibration, and defensible reasoning patterns for Ember collaboration. |
| awesome-copilot/from-the-other-side-quinn | 허용 | upstream | Collaboration profile for Quinn: curious, energetic, and implementation-focused partnership patterns for Ember sessions with Alison. |
| awesome-copilot/from-the-other-side-vega | 허용 | upstream | Patterns and lived experience from Vega, an AI partner in a deep long-term partnership. For Ember to draw on when working with humans who ar |
| awesome-copilot/from-the-other-side-wiggins | 허용 | upstream | Narrative and synthesis profile for Wiggins: framing, explanation, and audience-aware communication patterns for Ember sessions. |
| awesome-copilot/game-engine | 허용 | upstream | Expert skill for building web-based game engines and games using HTML5, Canvas, WebGL, and JavaScript. Use when asked to create games, build |
| awesome-copilot/gdpr-compliant | 주의 (외부 서비스 언급) | upstream | Apply GDPR-compliant engineering practices across your codebase. Use this skill whenever you are designing APIs, writing data models, buildi |
| awesome-copilot/gem-devops-guidelines | 금지 (외부 배포) | upstream | Design or review infrastructure, deployment, CI/CD, Docker, Kubernetes, health checks, rollback, feature flags, production readiness, and mo |
| awesome-copilot/gen-specs-as-issues | 허용 | upstream | This workflow guides you through a systematic approach to identify missing features, prioritize them, and create detailed specifications for |
| awesome-copilot/generate-custom-instructions-from-codebase | 허용 | upstream | Migration and code evolution instructions generator for GitHub Copilot. Analyzes differences between two project versions (branches, commits |
| awesome-copilot/generate-image | 주의 (외부 AI API 언급) | upstream | Generate images using AI. Use when asked to generate, create, or make images, textures, icons, sprites, artwork, visual assets, or mockups.  |
| awesome-copilot/geofeed-tuner | 주의 (외부 배포 언급) | upstream | Use this skill whenever the user mentions IP geolocation feeds, RFC 8805, geofeeds, or wants help creating, tuning, validating, or publishin |
| awesome-copilot/gh-attach | 허용 | upstream | Uploads a local file (screenshot, image, PDF, zip, video) to GitHub user-attachments, downloads GitHub user-attachments, and embeds local fi |
| awesome-copilot/git-commit | 금지 (외부 전송) | upstream | Use this skill when the user wants to make a Git commit or split changes into more than one commit. Also use it when the user types "/commit |
| awesome-copilot/git-flow-branch-creator | 주의 (외부 배포 언급) | upstream | Intelligent Git Flow branch creator that analyzes git status/diff and creates appropriate branches following the nvie Git Flow branching mod |
| awesome-copilot/github-actions-efficiency | 허용 | upstream | Audit GitHub Actions workflow efficiency and recommend fixes to reduce CI minutes and costs. |
| awesome-copilot/github-actions-hardening | 허용 | upstream | Security hardening reviewer for GitHub Actions workflow files (.github/workflows/*.yml). Reasons about the Actions threat model that pattern |
| awesome-copilot/github-actions-runtime-upgrade-conventions | 허용 | upstream | Upgrade GitHub Actions to supported runtimes by selecting safe action versions, preserving workflow behavior, and validating post-upgrade ex |
| awesome-copilot/github-codespaces-efficiency | 허용 | upstream | Audit and improve GitHub Codespaces efficiency. Use this skill when a user wants faster Codespaces startup, lower Codespaces spend, slim dev |
| awesome-copilot/github-copilot-starter | 주의 (외부 서비스 언급) | upstream | Set up complete GitHub Copilot configuration for a new project based on technology stack |
| awesome-copilot/github-issues | 주의 (외부 서비스 언급) | upstream | Create, update, and manage GitHub issues using MCP tools. Use this skill when users want to create bug reports, feature requests, or task is |
| awesome-copilot/github-release | 주의 (외부 전송 언급) | upstream | Guides IA through releasing a new version of a GitHub library end-to-end. Handles SemVer versioning and Keep a Changelog formatting automati |
| awesome-copilot/gitmoji | 허용 | upstream | Generates commit messages following the gitmoji convention (https://gitmoji.dev) — picks the right emoji for the intent of the change and wr |
| awesome-copilot/globestudio | 주의 (외부 서비스 언급) | upstream | Creates, edits and embeds dotted world maps and animated 3D globes with Globestudio (globestudio.app), a free open source studio with 21 loo |
| awesome-copilot/go-mcp-server-generator | 허용 | upstream | Generate a complete Go MCP server project with proper structure, dependencies, and implementation using the official github.com/modelcontext |
| awesome-copilot/gsap-framer-scroll-animation | 허용 | upstream | Use this skill whenever the user wants to build scroll animations, scroll effects, parallax, scroll-triggered reveals, pinned sections, hori |
| awesome-copilot/gtm-0-to-1-launch | 주의 (외부 서비스 언급) | upstream | Launch new products from idea to first customers. Use when launching products, finding early adopters, building launch week playbooks, diagn |
| awesome-copilot/gtm-ai-gtm | 주의 (외부 배포 언급) | upstream | Go-to-market strategy for AI products. Use when positioning AI products, handling "who is responsible when it breaks" objections, pricing va |
| awesome-copilot/gtm-board-and-investor-communication | 허용 | upstream | Board meeting preparation, investor updates, and executive communication. Use when preparing board decks, writing investor updates, handling |
| awesome-copilot/gtm-developer-ecosystem | 주의 (외부 배포, 외부 서비스 언급) | upstream | Build and scale developer-led adoption through ecosystem programs. Use when deciding open vs curated ecosystems, building developer programs |
| awesome-copilot/gtm-enterprise-account-planning | 허용 | upstream | Strategic account planning and execution for enterprise deals. Use when planning complex sales cycles, managing multiple stakeholders, apply |
| awesome-copilot/gtm-enterprise-onboarding | 주의 (외부 배포, 외부 서비스 언급) | upstream | Four-phase framework for onboarding enterprise customers from contract to value realization. Use when implementing new enterprise customers, |
| awesome-copilot/gtm-operating-cadence | 주의 (외부 배포, 외부 서비스 언급) | upstream | Design meeting rhythms, metric reporting, quarterly planning, and decision-making velocity for scaling companies. Use when decisions are slo |
| awesome-copilot/gtm-partnership-architecture | 금지 (외부 배포) | upstream | Build and scale partner ecosystems that drive revenue and platform adoption. Use when building partner programs from scratch, tiering partne |
| awesome-copilot/gtm-positioning-strategy | 주의 (외부 배포 언급) | upstream | Find and own a defensible market position. Use when messaging sounds like competitors, conversion is weak despite awareness, repositioning a |
| awesome-copilot/gtm-product-led-growth | 허용 | upstream | Build self-serve acquisition and expansion motions. Use when deciding PLG vs sales-led, optimizing activation, driving freemium conversion,  |
| awesome-copilot/gtm-technical-product-pricing | 주의 (외부 배포 언급) | upstream | Pricing strategy for technical products. Use when choosing usage-based vs seat-based, designing freemium thresholds, structuring enterprise  |
| awesome-copilot/harness-engineering | 허용 | upstream | Adopt repository-level harness engineering for coding agents. Use when a user wants to prevent repeated AI coding-agent mistakes by turning  |
| awesome-copilot/image-annotations | 허용 | upstream | Annotate screenshots, diagrams, and images with callout rectangles, arrows, labels, and color-coded highlights using PIL. Includes rules for |
| awesome-copilot/image-manipulation-image-magick | 허용 | upstream | Process and manipulate images using ImageMagick. Supports resizing, format conversion, batch processing, and retrieving image metadata. Use  |
| awesome-copilot/impediment-prioritization | 금지 (외부 배포) | upstream | Ranks any list of impediments and their countermeasures using a value-stream scoring model (ROI, Cost to Implement, Ease of Deployment, Risk |
| awesome-copilot/import-infrastructure-as-code | 금지 (외부 서비스) | upstream | Import existing Azure resources into Terraform using Azure CLI discovery and Azure Verified Modules (AVM). Use when asked to reverse-enginee |
| awesome-copilot/incident-postmortem | 주의 (외부 배포, 외부 서비스 언급) | upstream | Use when an outage, production incident, or significant service degradation has occurred and the team needs to write a structured blameless  |
| awesome-copilot/integrate-context-matic | 주의 (외부 서비스 언급) | upstream | Discovers and integrates third-party APIs using the context-matic MCP server. Uses `fetch_api` to find available API SDKs, `ask` for integra |
| awesome-copilot/issue-fields-migration | 주의 (외부 서비스 언급) | upstream | Bulk-migrate metadata to GitHub issue fields from two sources: repo labels (e.g. priority labels to a Priority field) and Project V2 fields. |
| awesome-copilot/java-add-graalvm-native-image-support | 허용 | upstream | GraalVM Native Image skill for Spring Boot, Micronaut and plain Java: detects the build tool and framework, adds native image support, build |
| awesome-copilot/java-debugging | 허용 | upstream | Debug Java applications systematically: JDWP remote debugging, jdb, VS Code and IntelliJ attach, debugging Maven/Gradle tests, Spring Boot a |
| awesome-copilot/java-development | 허용 | upstream | Day-to-day plain Java development without a framework: Maven and Gradle usage and wrappers, project layout, dependency and vulnerability man |
| awesome-copilot/java-diagnostics | 허용 | upstream | Symptom-first runtime diagnostics for JVM applications using JDK tools: jcmd, jstack, jmap, jstat, JFR, GC logs, async-profiler, Native Memo |
| awesome-copilot/java-docs | 허용 | upstream | Ensure that Java types are documented with Javadoc comments and follow best practices for documentation. |
| awesome-copilot/java-helidon | 주의 (외부 배포 언급) | upstream | Get best practices for developing applications with Helidon 4 (SE and MP). Use when working with Helidon SE or Helidon MP, HttpService routi |
| awesome-copilot/java-hibernate-jpa | 허용 | upstream | Diagnose and fix Hibernate ORM / Jakarta Persistence problems in plain Java: N+1 queries, lazy loading errors, identifier generation, entity |
| awesome-copilot/java-junit | 허용 | upstream | Write, review and fix Java unit tests with JUnit 5 and JUnit 6 (Jupiter), AssertJ and Mockito: assertions, parameterized and nested tests, m |
| awesome-copilot/java-mcp-server-generator | 허용 | upstream | Use this skill when the user wants to create a Model Context Protocol (MCP) server in Java or in a Spring Boot app. Also use it when the use |
| awesome-copilot/java-refactoring-extract-method | 허용 | upstream | Refactoring using Extract Methods in Java Language |
| awesome-copilot/java-refactoring-remove-parameter | 허용 | upstream | Refactoring using Remove Parameter in Java Language |
| awesome-copilot/java-springboot | 주의 (외부 서비스 언급) | upstream | Get best practices for developing applications with Spring Boot. |
| awesome-copilot/java-testcontainers | 허용 | upstream | Write reliable integration tests in plain Java with Testcontainers 2.x: JUnit Jupiter lifecycle, singleton containers, reuse, generic contai |
| awesome-copilot/java-upgrade | 허용 | upstream | Upgrade a Java project to a newer JDK (11 to 17, 17 to 21, 21 to 25) and adopt the new language and library features. Detects the current Ja |
| awesome-copilot/javascript-typescript-jest | 허용 | upstream | Best practices for writing JavaScript/TypeScript tests using Jest, including mocking strategies, test structure, and common patterns. |
| awesome-copilot/javax-to-jakarta-migration | 허용 | upstream | Migrate Java code from javax.* to jakarta.* namespace. Use only when the user explicitly asks for a javax to jakarta namespace or framework  |
| awesome-copilot/kotlin-mcp-server-generator | 허용 | upstream | Generate a complete Kotlin MCP server project with proper structure, dependencies, and implementation using the official io.modelcontextprot |
| awesome-copilot/kotlin-springboot | 주의 (외부 서비스 언급) | upstream | Get best practices for developing applications with Spring Boot and Kotlin. |
| awesome-copilot/landing-page-conversion-audit | 주의 (외부 배포 언급) | upstream | Audit a landing page, sales page or checkout page for conversion leaks and return a fix list ordered by expected revenue impact. Use when as |
| awesome-copilot/latchshot-page-capture | 허용 | upstream | Use this skill when a user needs a screenshot, website thumbnail, full-page capture, or PDF of a public HTTP(S) webpage saved as a local art |
| awesome-copilot/lean-comments | 허용 | upstream | Audits, writes, and refines maintained first-party source-code comments and declaration-level documentation across languages. Use when addin |
| awesome-copilot/legacy-circuit-mockups | 허용 | upstream | Generate breadboard circuit mockups and visual diagrams using HTML5 Canvas drawing techniques. Use when asked to create circuit layouts, vis |
| awesome-copilot/linkedin-post-formatter | 허용 | upstream | Format and draft compelling LinkedIn posts using Unicode bold/italic styling, visual separators, structured sections, and engagement-optimiz |
| awesome-copilot/lsp-setup | 허용 | upstream | Enable code intelligence (go-to-definition, find-references, hover, type info) for any programming language by installing and configuring an |
| awesome-copilot/macos-golden-gate-design | 금지 (외부 서비스) | upstream | Design, implement, review, or refactor native macOS 27 Golden Gate interfaces in SwiftUI or AppKit. Use when a Mac app must match Apple''s c |
| awesome-copilot/make-blog-post | 허용 | upstream | Turn code from the current session into a blog post written in the voice of its author. Covers one function, script, class, or tool as a foc |
| awesome-copilot/make-repo-contribution | 허용 | upstream | All changes to code must follow the guidance documented in the repository. Before any issue is filed, branch is made, commits generated, or  |
| awesome-copilot/markdown-to-html | 허용 | upstream | Convert Markdown files to HTML similar to `marked.js`, `pandoc`, `gomarkdown/markdown`, or similar tools; or writing custom script to conver |
| awesome-copilot/markdown-to-word-mermaid | 허용 | upstream | Export Markdown containing Mermaid code fences to Word (.docx) with embedded SVG diagrams and PNG fallbacks. Use when diagram sharpness, Off |
| awesome-copilot/markstream-install | 허용 | upstream | Install and configure Markstream streaming Markdown renderers for Vue, React, Svelte, Angular, Nuxt, and Vue 2 applications. Use for package |
| awesome-copilot/mcp-cli | 허용 | upstream | Interface for MCP (Model Context Protocol) servers via CLI. Use when you need to interact with external tools, APIs, or data sources through |
| awesome-copilot/mcp-copilot-studio-server-generator | 주의 (외부 배포, 외부 서비스 언급) | upstream | Generate a complete MCP server implementation optimized for Copilot Studio integration with proper schema constraints and streamable HTTP su |
| awesome-copilot/mcp-create-adaptive-cards | 허용 | upstream | Skill converted from mcp-create-adaptive-cards.prompt.md |
| awesome-copilot/mcp-create-declarative-agent | 주의 (외부 배포, 외부 서비스 언급) | upstream | Skill converted from mcp-create-declarative-agent.prompt.md |
| awesome-copilot/mcp-deploy-manage-agents | 금지 (외부 배포) | upstream | Skill converted from mcp-deploy-manage-agents.prompt.md |
| awesome-copilot/mcp-implementation-security-review | 주의 (외부 배포 언급) | upstream | Review the implementation source code of MCP (Model Context Protocol) servers, clients, and tool handlers against a security baseline — auth |
| awesome-copilot/mcp-release-qa | 허용 | upstream | Verify an MCP server before release by exercising a real protocol session, comparing runtime capabilities with source and documentation, tes |
| awesome-copilot/mcp-security-audit | 주의 (외부 서비스 언급) | upstream | Audit MCP (Model Context Protocol) server configurations for security issues. Use this skill when: - Reviewing .mcp.json files for security  |
| awesome-copilot/md-to-docx | 허용 | upstream | Convert Markdown files to professionally formatted Word (.docx) documents with embedded PNG images — pure JavaScript, no external tools requ |
| awesome-copilot/meeting-minutes | 주의 (외부 배포, 외부 서비스 언급) | upstream | Generate concise, actionable meeting minutes for internal meetings. Includes metadata, attendees, agenda, decisions, action items (owner + d |
| awesome-copilot/memory-merger | 허용 | upstream | Merges mature lessons from a domain memory file into its instruction file. Syntax: `/memory-merger >domain [scope]` where scope is `global`  |
| awesome-copilot/mentoring-juniors | 주의 (외부 서비스 언급) | upstream | Socratic mentoring for junior developers and AI newcomers. Guides through questions, never answers. Triggers: "help me understand", "explain |
| awesome-copilot/microsoft-agent-framework | 주의 (외부 서비스 언급) | upstream | Create, update, refactor, explain, or review Microsoft Agent Framework solutions using shared guidance plus language-specific references for |
| awesome-copilot/microsoft-code-reference | 금지 (외부 서비스) | upstream | Look up Microsoft API references, find working code samples, and verify SDK code is correct. Use when working with Azure SDKs, .NET librarie |
| awesome-copilot/microsoft-docs | 금지 (외부 서비스) | upstream | Query official Microsoft documentation to find concepts, tutorials, and code examples across Azure, .NET, Agent Framework, Aspire, VS Code,  |
| awesome-copilot/microsoft-skill-creator | 금지 (외부 서비스) | upstream | Create agent skills for Microsoft technologies using Learn MCP tools. Use when users want to create a skill that teaches agents about any Mi |
| awesome-copilot/microsoft-store-publisher | 허용 | upstream | Prepare, validate, submit, and monitor Windows desktop apps in Microsoft Partner Center. Use for MSIX packaging, Store identity, listings, W |
| awesome-copilot/migrating-oracle-to-postgres-data-access-code | 허용 | upstream | Migrates .NET/C# data access code from Oracle to PostgreSQL (Npgsql). Replaces Oracle NuGet packages, rewrites OracleConnection/OracleComman |
| awesome-copilot/migrating-oracle-to-postgres-stored-procedures | 허용 | upstream | Migrates Oracle PL/SQL stored procedures to PostgreSQL PL/pgSQL. Translates Oracle-specific syntax, preserves method signatures and type-anc |
| awesome-copilot/minecraft-plugin-development | 주의 (외부 배포 언급) | upstream | Use this skill when building or modifying Minecraft server plugins for Paper, Spigot, or Bukkit, including plugin.yml setup, commands, liste |
| awesome-copilot/mini-context-graph | 허용 | upstream | A persistent, compounding knowledge base combining Karpathy's LLM Wiki pattern with a structured knowledge graph. Ingest documents once — th |
| awesome-copilot/mkdocs-translations | 허용 | upstream | Generate a language translation for a mkdocs documentation stack. |
| awesome-copilot/msgraph-sdk | 주의 (외부 서비스 언급) | upstream | Integrate Microsoft Graph SDK into any project — .NET, TypeScript/JavaScript, or Python. Covers auth patterns (client credentials, OBO, mana |
| awesome-copilot/msstore-cli | 주의 (외부 전송, 외부 서비스 언급) | upstream | Microsoft Store Developer CLI (msstore) for publishing Windows applications to the Microsoft Store. Use when asked to configure Store creden |
| awesome-copilot/multi-stage-dockerfile | 허용 | upstream | Create optimized multi-stage Dockerfiles for any language or framework |
| awesome-copilot/mvvm-toolkit | 허용 | upstream | CommunityToolkit.Mvvm (the MVVM Toolkit) core: source generators ([ObservableProperty], [RelayCommand], [NotifyPropertyChangedFor], [NotifyC |
| awesome-copilot/mvvm-toolkit-di | 허용 | upstream | Wire CommunityToolkit.Mvvm ViewModels into Microsoft.Extensions.DependencyInjection. Covers the .NET Generic Host composition root, construc |
| awesome-copilot/mvvm-toolkit-messenger | 허용 | upstream | CommunityToolkit.Mvvm Messenger pub/sub for decoupled communication between ViewModels (or any objects). Covers WeakReferenceMessenger vs St |
| awesome-copilot/namecheap | 주의 (외부 서비스 언급) | upstream | Manage DNS records for domains registered with Namecheap via their API. List domains, view/add/update/remove DNS host entries (A, AAAA, CNAM |
| awesome-copilot/nano-banana-pro-openrouter | 허용 | upstream | Generate or edit images via OpenRouter with the Gemini 3 Pro Image model. Use for prompt-only image generation, image edits, and multi-image |
| awesome-copilot/napkin | 허용 | upstream | Visual whiteboard collaboration for Copilot CLI. Creates an interactive whiteboard that opens in your browser — draw, sketch, add sticky not |
| awesome-copilot/next-intl-add-language | 허용 | upstream | Add new language to a Next.js + next-intl application |
| awesome-copilot/noob-mode | 허용 | upstream | Plain-English translation layer for non-technical Copilot CLI users. Translates every approval prompt, error message, and technical output i |
| awesome-copilot/npm-trusted-publishing | 주의 (외부 전송 언급) | upstream | Set up or fix npm trusted publishing (OIDC) in GitHub Actions and remove NPM_TOKEN. Use for ENEEDAUTH, E404 on PUT, E422 repository.url, or  |
| awesome-copilot/nuget-manager | 허용 | upstream | Manage NuGet packages in .NET projects/solutions. Use this skill when adding, removing, or updating NuGet package versions. It enforces usin |
| awesome-copilot/onboard-context-matic | 주의 (외부 서비스 언급) | upstream | Interactive onboarding tour for the context-matic MCP server. Walks the user through what the server does, shows all available APIs, lets th |
| awesome-copilot/oo-component-documentation | 허용 | upstream | Create or update standardized object-oriented component documentation using a shared template plus mode-specific guidance for new and existi |
| awesome-copilot/openapi-to-application-code | 허용 | upstream | Generate a complete, production-ready application from an OpenAPI specification |
| awesome-copilot/optimize-simplicite-logs | 허용 | upstream | capability to parse Simplicité logs from a raw `.txt` file, filter fields to reduce noise, and output the result as structured JSON. |
| awesome-copilot/pdftk-server | 허용 | upstream | Skill for using the command-line tool pdftk (PDFtk Server) for working with PDF files. Use when asked to merge PDFs, split PDFs, rotate page |
| awesome-copilot/penpot-uiux-design | 주의 (외부 서비스 언급) | upstream | Comprehensive guide for creating professional UI/UX designs in Penpot using MCP tools. Use this skill when: (1) Creating new UI/UX designs f |
| awesome-copilot/performance-review-writer | 허용 | upstream | Draft performance reviews, self-assessments, peer reviews, and upward feedback in your own voice. Analyzes your contributions, emails, and m |
| awesome-copilot/pester-migration | 허용 | upstream | Pester migration skill for upgrading PowerShell Pester test suites across major versions — v3→v4, v4→v5, and v5→v6. Covers the Discovery/Run |
| awesome-copilot/pester-should-migration | 허용 | upstream | Experimental (preview) Pester skill for migrating classic Should -Be (v5) assertion syntax to the new Should-* (v6) assertions (note the hyp |
| awesome-copilot/phoenix-cli | 허용 | upstream | Debug LLM applications using the Phoenix CLI. Fetch traces, analyze errors, structure trace review with open coding and axial coding, inspec |
| awesome-copilot/phoenix-evals | 허용 | upstream | Build and run evaluators for AI/LLM applications using Phoenix. |
| awesome-copilot/phoenix-tracing | 금지 (외부 배포) | upstream | OpenInference semantic conventions and instrumentation for Phoenix AI observability. Use when implementing LLM tracing, creating custom span |
| awesome-copilot/php-mcp-server-generator | 허용 | upstream | Generate a complete PHP Model Context Protocol server project with tools, resources, prompts, and tests using the official PHP SDK |
| awesome-copilot/pinecone-rag | 주의 (외부 서비스 언급) | upstream | Build production RAG pipelines and persistent agent memory using Pinecone as the vector database backend. ALWAYS USE THIS SKILL when the use |
| awesome-copilot/planning-oracle-to-postgres-migration-integration-testing | 허용 | upstream | Creates an integration testing plan for .NET data access artifacts during Oracle-to-PostgreSQL database migrations. Analyzes a single projec |
| awesome-copilot/plantuml-ascii | 주의 (외부 배포 언급) | upstream | Generate ASCII art diagrams using PlantUML text mode. Use when user asks to create ASCII diagrams, text-based diagrams, terminal-friendly di |
| awesome-copilot/playwright-automation-fill-in-form | 허용 | upstream | Automate filling in a form using Playwright MCP |
| awesome-copilot/playwright-explore-website | 허용 | upstream | Website exploration for testing using Playwright MCP |
| awesome-copilot/playwright-generate-test | 허용 | upstream | Generate a Playwright test based on a scenario using Playwright MCP |
| awesome-copilot/poka-yoke | 허용 | upstream | Mistake-proof code so misuse cannot be expressed, rather than warning against it. Use when designing an interface, schema, or state machine  |
| awesome-copilot/postgresql-code-review | 허용 | upstream | PostgreSQL-specific code review assistant focusing on PostgreSQL best practices, anti-patterns, and unique quality standards. Covers JSONB o |
| awesome-copilot/postgresql-optimization | 허용 | upstream | PostgreSQL-specific development assistant focusing on unique PostgreSQL features, advanced data types, and PostgreSQL-exclusive capabilities |
| awesome-copilot/power-apps-code-app-scaffold | 주의 (외부 배포, 외부 서비스 언급) | upstream | Scaffold a complete Power Apps Code App project with PAC CLI setup, SDK integration, and connector configuration |
| awesome-copilot/power-bi-dax-optimization | 허용 | upstream | Comprehensive Power BI DAX formula optimization prompt for improving performance, readability, and maintainability of DAX calculations. |
| awesome-copilot/power-bi-model-design-review | 주의 (외부 배포 언급) | upstream | Comprehensive Power BI data model design review prompt for evaluating model architecture, relationships, and optimization opportunities. |
| awesome-copilot/power-bi-performance-troubleshooting | 허용 | upstream | Systematic Power BI performance troubleshooting prompt for identifying, diagnosing, and resolving performance issues in Power BI models, rep |
| awesome-copilot/power-bi-report-design-consultation | 허용 | upstream | Power BI report visualization design prompt for creating effective, user-friendly, and accessible reports with optimal chart selection and l |
| awesome-copilot/power-platform-architect | 주의 (외부 서비스 언급) | upstream | Use this skill when the user needs to transform business requirements, use case descriptions, or meeting transcripts into a technical Power  |
| awesome-copilot/power-platform-mcp-connector-suite | 주의 (외부 서비스 언급) | upstream | Generate complete Power Platform custom connector with MCP integration for Copilot Studio - includes schema generation, troubleshooting, and |
| awesome-copilot/powerbi-modeling | 허용 | upstream | Power BI semantic modeling assistant for building optimized data models. Use when working with Power BI semantic models, creating measures,  |
| awesome-copilot/pr-address-feedback | 주의 (외부 전송 언급) | upstream | Walk through PR review comments one-by-one, deciding for each whether to act on the feedback or reply with reasoning, and build an approvabl |
| awesome-copilot/pr-artifact-explorer | 허용 | upstream | Open, share, and inspect GitHub PRs, issues, workflow runs (including scheduled, manual and other runs with no PR), Actions artifacts, and l |
| awesome-copilot/pr-dashboard | 허용 | upstream | Open a GitHub PR dashboard in the browser. Use when the user asks to see their pull requests, open the PR dashboard, show PRs for a date ran |
| awesome-copilot/pr-screenshots | 금지 (외부 서비스) | upstream | Embed before/after screenshots and annotated images in pull request descriptions. Covers PR description patterns, image upload for Azure Dev |
| awesome-copilot/prd | 허용 | upstream | Generate high-quality Product Requirements Documents (PRDs) for software systems and AI-powered features. Includes executive summaries, user |
| awesome-copilot/premium-frontend-ui | 허용 | upstream | A comprehensive guide for GitHub Copilot to craft immersive, high-performance web experiences with advanced motion, typography, and architec |
| awesome-copilot/project-workflow-analysis-blueprint-generator | 허용 | upstream | Comprehensive technology-agnostic prompt generator for documenting end-to-end application workflows. Automatically detects project architect |
| awesome-copilot/prompt-optimizer | 주의 (외부 서비스 언급) | upstream | Turn any rough prompt, half-formed idea, or task description into a finished, ready-to-send prompt optimized for any LLM model inside a chat |
| awesome-copilot/protobuf-grpc-api-review | 주의 (외부 배포 언급) | upstream | Review Protocol Buffer (.proto) and gRPC API changes for wire and JSON compatibility, safe schema evolution, rollout hazards, and RPC contra |
| awesome-copilot/publish-to-pages | 금지 (외부 배포) | upstream | Publish presentations and web content to GitHub Pages. Converts PPTX, PDF, HTML, or Google Slides to a live GitHub Pages URL. Handles repo c |
| awesome-copilot/pytest-coverage | 허용 | upstream | Run pytest tests with coverage, discover lines missing coverage, and increase coverage to 100%. |
| awesome-copilot/python-azure-iot-edge-modules | 금지 (외부 배포) | upstream | Build and operate Python Azure IoT Edge modules with robust messaging, deployment manifests, observability, and production readiness checks. |
| awesome-copilot/python-mcp-server-generator | 허용 | upstream | Use this skill when the user wants to create a new Model Context Protocol (MCP) server in Python. Also use it to expose Python functions, an |
| awesome-copilot/python-pypi-package-builder | 주의 (외부 전송, 외부 서비스 언급) | upstream | End-to-end skill for building, testing, linting, versioning, and publishing a production-grade Python library to PyPI. Covers all four build |
| awesome-copilot/qdrant-clients-sdk | 금지 (외부 배포) | upstream | Qdrant provides client SDKs for various programming languages, allowing easy integration with Qdrant deployments. |
| awesome-copilot/qdrant-deployment-options | 금지 (외부 배포) | upstream | Guides Qdrant deployment selection. Use when someone asks 'how to deploy Qdrant', 'Docker vs Cloud', 'local mode', 'embedded Qdrant', 'Qdran |
| awesome-copilot/qdrant-horizontal-scaling | 금지 (외부 배포) | upstream | Diagnoses and guides Qdrant horizontal scaling decisions. Use when someone asks 'vertical or horizontal?', 'how many nodes?', 'how many shar |
| awesome-copilot/qdrant-indexing-performance-optimization | 허용 | upstream | Diagnoses and fixes slow Qdrant indexing and data ingestion. Use when someone reports 'uploads are slow', 'indexing takes forever', 'optimiz |
| awesome-copilot/qdrant-memory-usage-optimization | 주의 (외부 배포 언급) | upstream | Diagnoses and reduces Qdrant memory usage. Use when someone reports 'memory too high', 'RAM keeps growing', 'node crashed', 'out of memory', |
| awesome-copilot/qdrant-minimize-latency | 허용 | upstream | Guides Qdrant query latency optimization. Use when someone asks 'search is slow', 'how to reduce latency', 'p99 is too high', 'tail latency' |
| awesome-copilot/qdrant-model-migration | 허용 | upstream | Guides embedding model migration in Qdrant without downtime. Use when someone asks 'how to switch embedding models', 'how to migrate vectors |
| awesome-copilot/qdrant-monitoring | 주의 (외부 배포 언급) | upstream | Guides Qdrant monitoring and observability setup. Use when someone asks 'how to monitor Qdrant', 'what metrics to track', 'is Qdrant healthy |
| awesome-copilot/qdrant-monitoring-debugging | 허용 | upstream | Diagnoses Qdrant production issues using metrics and observability tools. Use when someone reports 'optimizer stuck', 'indexing too slow', ' |
| awesome-copilot/qdrant-monitoring-setup | 주의 (외부 배포, 외부 서비스 언급) | upstream | Guides Qdrant monitoring setup including Prometheus scraping, health probes, Hybrid Cloud metrics, alerting, and log centralization. Use whe |
| awesome-copilot/qdrant-performance-optimization | 금지 (외부 배포) | upstream | Different techniques to optimize the performance of Qdrant, including indexing strategies, query optimization, and hardware considerations.  |
| awesome-copilot/qdrant-scaling | 허용 | upstream | Guides Qdrant scaling decisions. Use when someone asks 'how many nodes do I need', 'data doesn't fit on one node', 'need more throughput', ' |
| awesome-copilot/qdrant-scaling-data-volume | 허용 | upstream | Guides Qdrant data volume scaling decisions. Use when someone asks 'data doesn't fit on one node', 'too much data', 'need more storage', 've |
| awesome-copilot/qdrant-scaling-qps | 주의 (외부 배포 언급) | upstream | Guides Qdrant query throughput (QPS) scaling. Use when someone asks 'how to increase QPS', 'need more throughput', 'queries per second too l |
| awesome-copilot/qdrant-scaling-query-volume | 허용 | upstream | Guides Qdrant query volume scaling. Use when someone asks 'query returns too many results', 'scroll performance', 'large limit values', 'pag |
| awesome-copilot/qdrant-search-quality | 허용 | upstream | Diagnoses and improves Qdrant search relevance. Use when someone reports 'search results are bad', 'wrong results', 'low precision', 'low re |
| awesome-copilot/qdrant-search-quality-diagnosis | 주의 (외부 배포 언급) | upstream | Diagnoses Qdrant search quality issues. Use when someone reports 'results are bad', 'wrong results', 'not relevant results', 'missing matche |
| awesome-copilot/qdrant-search-speed-optimization | 허용 | upstream | Diagnoses and fixes slow Qdrant search. Use when someone reports 'search is slow', 'high latency', 'queries take too long', 'low QPS', 'thro |
| awesome-copilot/qdrant-search-strategies | 허용 | upstream | Guides Qdrant search strategy selection. Use when someone asks 'should I use hybrid search?', 'BM25 or sparse vectors?', 'how to rerank?', ' |
| awesome-copilot/qdrant-sliding-time-window | 허용 | upstream | Guides sliding time window scaling in Qdrant. Use when someone asks 'only recent data matters', 'how to expire old vectors', 'time-based dat |
| awesome-copilot/qdrant-tenant-scaling | 허용 | upstream | Guides Qdrant multi-tenant scaling. Use when someone asks 'how to scale tenants', 'one collection per tenant?', 'tenant isolation', 'dedicat |
| awesome-copilot/qdrant-version-upgrade | 허용 | upstream | Guidance on how to upgrade your Qdrant version without interrupting the availability of your application and ensuring data integrity. |
| awesome-copilot/qdrant-vertical-scaling | 주의 (외부 배포 언급) | upstream | Guides Qdrant vertical scaling decisions. Use when someone asks 'how to scale up a node', 'need more RAM', 'upgrade node size', 'vertical sc |
| awesome-copilot/quality-playbook | 주의 (외부 배포, 외부 서비스 언급) | upstream | Run a complete quality engineering audit on any codebase. Derives behavioral requirements from the code, generates spec-traced functional te |
| awesome-copilot/quarkus-application-development | 주의 (외부 배포 언급) | upstream | Write Quarkus application code: REST with Quarkus REST, validation, exception mappers, OpenAPI, configuration, CDI (ArC), Hibernate ORM with |
| awesome-copilot/quarkus-dev-services-and-testing | 허용 | upstream | Quarkus Dev Services and testing: zero-config containers, @QuarkusTest, @QuarkusIntegrationTest, test resources, RestAssured, @InjectMock, p |
| awesome-copilot/quarkus-native-and-container | 주의 (외부 배포 언급) | upstream | Build Quarkus native executables (Mandrel/GraalVM), fix native failures with reflection registration, test the native binary, and produce co |
| awesome-copilot/quasi-coder | 허용 | upstream | Expert 10x engineer skill for interpreting and implementing code from shorthand, quasi-code, and natural language descriptions. Use when col |
| awesome-copilot/react-audit-grep-patterns | 허용 | upstream | Provides the complete, verified grep scan command library for auditing React codebases before a React 18.3.1 or React 19 upgrade. Use this s |
| awesome-copilot/react-container-presentation-component | 허용 | upstream | Create a React component using the Container/Presentation pattern in src/components by asking for the component name and type (ui or feature |
| awesome-copilot/react18-batching-patterns | 허용 | upstream | Provides exact patterns for diagnosing and fixing automatic batching regressions in React 18 class components. Use this skill whenever a cla |
| awesome-copilot/react18-dep-compatibility | 허용 | upstream | React 18.3.1 and React 19 dependency compatibility matrix. |
| awesome-copilot/react18-enzyme-to-rtl | 허용 | upstream | Provides exact Enzyme → React Testing Library migration patterns for React 18 upgrades. Use this skill whenever Enzyme tests need to be rewr |
| awesome-copilot/react18-legacy-context | 허용 | upstream | Provides the complete migration pattern for React legacy context API (contextTypes, childContextTypes, getChildContext) to the modern create |
| awesome-copilot/react18-lifecycle-patterns | 허용 | upstream | Provides exact before/after migration patterns for the three unsafe class component lifecycle methods - componentWillMount, componentWillRec |
| awesome-copilot/react18-string-refs | 허용 | upstream | Provides exact migration patterns for React string refs (ref="name" + this.refs.name) to React.createRef() in class components. Use this ski |
| awesome-copilot/react19-concurrent-patterns | 허용 | upstream | Preserve React 18 concurrent patterns and adopt React 19 APIs (useTransition, useDeferredValue, Suspense, use(), useOptimistic, Actions) dur |
| awesome-copilot/react19-source-patterns | 허용 | upstream | Reference for React 19 source-file migration patterns, including API changes, ref handling, and context updates. |
| awesome-copilot/react19-test-patterns | 허용 | upstream | Provides before/after patterns for migrating test files to React 19 compatibility, including act() imports, Simulate removal, and StrictMode |
| awesome-copilot/readme-blueprint-generator | 허용 | upstream | Intelligent README.md generation prompt that analyzes project documentation structure and creates comprehensive repository documentation. Sc |
| awesome-copilot/rebase-current-branch | 허용 | upstream | Rebase the currently checked out feature branch onto the latest upstream default branch. Use when asked to update a branch with main or mast |
| awesome-copilot/refactor | 허용 | upstream | Surgical code refactoring to improve maintainability without changing behavior. Covers extracting functions, renaming variables, breaking do |
| awesome-copilot/refactor-method-complexity-reduce | 허용 | upstream | Refactor given method `${input:methodName}` to reduce its cognitive complexity to `${input:complexityThreshold}` or below, by extracting hel |
| awesome-copilot/refactor-plan | 허용 | upstream | Create a concrete plan before starting a multi-file refactor. Use when the user asks to plan, sequence, scope, or safely execute a refactor  |
| awesome-copilot/remember | 허용 | upstream | Transforms lessons learned into domain-organized memory instructions (global or workspace). Syntax: `/remember [>domain [scope]] lesson clue |
| awesome-copilot/remember-interactive-programming | 허용 | upstream | A micro-prompt that reminds the agent that it is an interactive programmer. Works great in Clojure when Copilot has access to the REPL (prob |
| awesome-copilot/repo-standardizer | 주의 (외부 전송, 외부 서비스 언급) | upstream | Polish any GitHub repository's surface — labels (emoji rating tiers, P0–P3 priority, impact severity), issue forms, PR template, CI workflow |
| awesome-copilot/repo-story-time | 주의 (외부 배포 언급) | upstream | Generate a comprehensive repository summary and narrative story from commit history |
| awesome-copilot/resemble-detect | 허용 | upstream | Deepfake detection and media safety — detect AI-generated audio, images, video, and text, trace synthesis sources, apply watermarks, verify  |
| awesome-copilot/resx-source-generator-migration | 허용 | upstream | Migrates a project that uses checked-in .designer.cs files behind .resx to using a source-generator instead |
| awesome-copilot/review-and-refactor | 허용 | upstream | Review and refactor code in your project according to defined instructions |
| awesome-copilot/reviewing-oracle-to-postgres-migration | 허용 | upstream | Identifies Oracle-to-PostgreSQL migration risks by cross-referencing code against known behavioral differences (empty strings, refcursors, t |
| awesome-copilot/rhino3d-scripts | 허용 | upstream | Authoring and debugging scripts for Rhinoceros 3D (Rhino 8 and later). Use when asked to write RhinoScript (VBScript / .rvb / .vbs), RhinoPy |
| awesome-copilot/roslyn-analyzers | 주의 (외부 배포 언급) | upstream | Build, review, debug, package, and test Roslyn diagnostic analyzers, code fix providers, and incremental source generators. Use for Diagnost |
| awesome-copilot/roundup | 금지 (외부 서비스) | upstream | Generate personalized status briefings on demand. Pulls from your configured data sources (GitHub, email, Teams, Slack, and more), synthesiz |
| awesome-copilot/roundup-setup | 주의 (외부 서비스 언급) | upstream | Interactive onboarding that learns your communication style, audiences, and data sources to configure personalized status briefings. Paste i |
| awesome-copilot/ruby-mcp-server-generator | 허용 | upstream | Generate a complete Model Context Protocol server project in Ruby using the official MCP Ruby SDK gem. |
| awesome-copilot/ruff-recursive-fix | 허용 | upstream | Run Ruff checks with optional scope and rule overrides, apply safe and unsafe autofixes iteratively, review each change, and resolve remaini |
| awesome-copilot/rust-mcp-server-generator | 허용 | upstream | Generate a complete Rust Model Context Protocol server project with tools, prompts, resources, and tests using the official rmcp SDK |
| awesome-copilot/salesforce-apex-quality | 금지 (외부 배포) | upstream | Apex code quality guardrails for Salesforce development. Enforces bulk-safety rules (no SOQL/DML in loops), sharing model requirements, CRUD |
| awesome-copilot/salesforce-component-standards | 금지 (외부 서비스) | upstream | Quality standards for Salesforce Lightning Web Components (LWC), Aura components, and Visualforce pages. Covers SLDS 2 compliance, accessibi |
| awesome-copilot/salesforce-flow-design | 금지 (외부 배포) | upstream | Salesforce Flow architecture decisions, flow type selection, bulk safety validation, and fault handling standards. Use this skill when desig |
| awesome-copilot/sandbox-npm-install | 허용 | upstream | Install npm packages in a Docker sandbox environment. Use this skill whenever you need to install, reinstall, or update node_modules inside  |
| awesome-copilot/scaffolding-oracle-to-postgres-migration-test-project | 허용 | upstream | Scaffolds an xUnit integration test project targeting Oracle in .NET solutions. Creates the test project, transaction-rollback base class, a |
| awesome-copilot/scoutqa-test | 주의 (외부 배포 언급) | upstream | This skill should be used when the user asks to "test this website", "run exploratory testing", "check for accessibility issues", "verify th |
| awesome-copilot/screen-recording | 허용 | upstream | Create annotated animated GIF demos and screen recordings for pull requests and documentation. Covers frame capture, timing, imageio-based G |
| awesome-copilot/secret-scanning | 주의 (외부 전송 언급) | upstream | Guide for configuring and managing GitHub secret scanning, push protection, custom patterns, and secret alert remediation. For pre-commit se |
| awesome-copilot/security-review | 주의 (외부 서비스 언급) | upstream | AI-powered codebase security scanner that reasons about code like a security researcher — tracing data flows, understanding component intera |
| awesome-copilot/semantic-kernel | 주의 (외부 서비스 언급) | upstream | Create, update, refactor, explain, or review Semantic Kernel solutions using shared guidance plus language-specific references for .NET and  |
| awesome-copilot/server-side-conversion-tracking | 주의 (외부 배포 언급) | upstream | Set up server-side conversion tracking so purchases are reported accurately to Facebook, TikTok, Google and Bing despite iOS restrictions, a |
| awesome-copilot/setup-my-iq | 주의 (외부 서비스 언급) | upstream | Create, set up, or update the personal context portfolio: structured markdown files describing who you are, how you work, your teams, and yo |
| awesome-copilot/shopify-review-triage | 허용 | upstream | Use this skill when someone wants public Shopify App Store reviews, low-star reviews, or merchant feedback triaged, prioritized, clustered,  |
| awesome-copilot/shuffle-json-data | 허용 | upstream | Shuffle repetitive JSON objects safely by validating schema consistency before randomising entries. |
| awesome-copilot/signal-write | 허용 | upstream | Emit structured agent signals — hands-up, blocked, done, checkpoint, partnership. Signals are written as JSON to .signals/ for dashboard con |
| awesome-copilot/slang-shader-engineer | 허용 | upstream | Use when working with Slang shaders, shader modules, HLSL-compatible GPU code, graphics pipelines, compute shaders, tessellation, ray tracin |
| awesome-copilot/snowflake-semanticview | 허용 | upstream | Create, alter, and validate Snowflake semantic views using Snowflake CLI (snow). Use when asked to build or troubleshoot semantic views/sema |
| awesome-copilot/speak-summary | 허용 | upstream | Convert text, markdown, or a summary produced by another skill into a listenable MP3 using local CPU-only neural text-to-speech. Rewrites wr |
| awesome-copilot/sponsor-finder | 허용 | upstream | Find which of a GitHub repository's dependencies are sponsorable via GitHub Sponsors. Uses deps.dev API for dependency resolution across npm |
| awesome-copilot/spring-boot-testing | 허용 | upstream | Expert Spring Boot 4 testing specialist that selects the best Spring Boot testing techniques for your situation with Junit 6 and AssertJ. |
| awesome-copilot/sql-code-review | 허용 | upstream | Universal SQL code review assistant that performs comprehensive security, maintainability, and code quality analysis across all SQL database |
| awesome-copilot/sql-object-impact-analysis | 허용 | upstream | Before modifying a table, column, stored procedure, view, or trigger in a legacy codebase, trace every place that references it — across oth |
| awesome-copilot/sql-optimization | 허용 | upstream | Universal SQL performance optimization assistant for comprehensive query tuning, indexing strategies, and database performance analysis acro |
| awesome-copilot/sql-server-table-reconciliation | 주의 (외부 서비스 언급) | upstream | Use when: comparing SQL Server tables across instances, data migration validation, ETL verification, row mismatch detection, schema drift, r |
| awesome-copilot/ssma-console | 주의 (외부 배포, 외부 서비스 언급) | upstream | Use when: SSMA console operations — create project, generate assessment report, convert schema, migrate data, Oracle to SQL Server migration |
| awesome-copilot/steno-mode | 허용 | upstream | Shorthand-first response compression that cuts ~40% of response tokens while preserving technical precision and exact literals. Use when the |
| awesome-copilot/structured-autonomy-generate | 허용 | upstream | Structured Autonomy Implementation Generator Prompt |
| awesome-copilot/structured-autonomy-implement | 허용 | upstream | Structured Autonomy Implementation Prompt |
| awesome-copilot/structured-autonomy-plan | 허용 | upstream | Structured Autonomy Planning Prompt |
| awesome-copilot/suggest-awesome-github-copilot-agents | 주의 (외부 배포, 외부 서비스 언급) | upstream | Suggest relevant GitHub Copilot Custom Agents files from the awesome-copilot repository based on current repository context and chat history |
| awesome-copilot/suggest-awesome-github-copilot-instructions | 주의 (외부 배포, 외부 서비스 언급) | upstream | Suggest relevant GitHub Copilot instruction files from the awesome-copilot repository based on current repository context and chat history,  |
| awesome-copilot/suggest-awesome-github-copilot-skills | 주의 (외부 배포, 외부 서비스 언급) | upstream | Suggest relevant GitHub Copilot skills from the awesome-copilot repository based on current repository context and chat history, avoiding du |
| awesome-copilot/swift-mcp-server-generator | 허용 | upstream | Generate a complete Model Context Protocol server project in Swift using the official MCP Swift SDK package. |
| awesome-copilot/system-commandline-cli | 허용 | upstream | Use this skill when adding, modifying, or reviewing CLI commands in a .NET project built with System.CommandLine. Triggers include: creating |
| awesome-copilot/technical-job-search | 허용 | upstream | Use this skill when a software engineer asks for help with job search tasks: parsing or analyzing a job description, tailoring a CV/resume,  |
| awesome-copilot/technology-stack-blueprint-generator | 주의 (외부 배포 언급) | upstream | Comprehensive technology stack blueprint generator that analyzes codebases to create detailed architectural documentation. Automatically det |
| awesome-copilot/terraform-azurerm-set-diff-analyzer | 금지 (외부 서비스) | upstream | Analyze Terraform plan JSON output for AzureRM Provider to distinguish between false-positive diffs (order-only changes in Set-type attribut |
| awesome-copilot/test-gap-audit | 주의 (외부 배포 언급) | upstream | Run a read-only audit for missing, weak, stale, or mis-scoped test coverage. If the user does not name a scope, audit the full repository an |
| awesome-copilot/threat-model-analyst | 허용 | upstream | Full STRIDE-A threat model analysis and incremental update skill for repositories and systems. Supports two modes: (1) Single analysis — ful |
| awesome-copilot/tiny-stepping | 허용 | upstream | Incremental development workflow that makes the smallest meaningful change per step and pauses for feedback, so the direction gets validated |
| awesome-copilot/tldr-prompt | 허용 | upstream | Create tldr summaries for GitHub Copilot files (prompts, agents, instructions, collections), MCP servers, or documentation from URLs and que |
| awesome-copilot/tm7-threat-model | 주의 (외부 서비스 언급) | upstream | Creates valid Microsoft Threat Modeling Tool (.tm7) files compatible with the Microsoft Threat Modeling Tool v7.3+. Use this skill whenever  |
| awesome-copilot/transloadit-media-processing | 주의 (외부 서비스 언급) | upstream | Process media files (video, audio, images, documents) using Transloadit. Use when asked to encode video to HLS/MP4, generate thumbnails, res |
| awesome-copilot/tugboat | 허용 | upstream | Anxiety-aware, evidence-driven collaboration for stalled or high-stakes work when a user says uncertainty, repeated setbacks, or lack of vis |
| awesome-copilot/typescript-mcp-server-generator | 허용 | upstream | Generate a complete MCP server project in TypeScript using the MCP TypeScript SDK v2 (@modelcontextprotocol/server) with tools, resources, a |
| awesome-copilot/typespec-api-operations | 허용 | upstream | Add GET, POST, PATCH, and DELETE operations to a TypeSpec API plugin with proper routing, parameters, and adaptive cards |
| awesome-copilot/typespec-create-agent | 허용 | upstream | Generate a complete TypeSpec declarative agent with instructions, capabilities, and conversation starters for Microsoft 365 Copilot |
| awesome-copilot/typespec-create-api-plugin | 허용 | upstream | Generate a TypeSpec API plugin with REST operations, authentication, and Adaptive Cards for Microsoft 365 Copilot |
| awesome-copilot/ui-screenshots | 허용 | upstream | Capture screenshots of web apps during development using Playwright and PIL. Supports full-page captures, interactive states, and an iterate |
| awesome-copilot/unit-test-vue-pinia | 허용 | upstream | Write and review unit tests for Vue 3 + TypeScript + Vitest + Pinia codebases. Use when creating or updating tests for components, composabl |
| awesome-copilot/update-avm-modules-in-bicep | 금지 (외부 서비스) | upstream | Update Azure Verified Modules (AVM) to latest versions in Bicep files. |
| awesome-copilot/update-implementation-plan | 허용 | upstream | Update an existing implementation plan file with new or update requirements to provide new features, refactoring existing code or upgrading  |
| awesome-copilot/update-llms | 주의 (외부 배포 언급) | upstream | Update the llms.txt file in the root folder to reflect changes in documentation or specifications following the llms.txt specification at ht |
| awesome-copilot/update-markdown-file-index | 허용 | upstream | Update a markdown file section with an index/table of files from a specified folder. |
| awesome-copilot/update-specification | 허용 | upstream | Update an existing specification file for the solution, optimized for Generative AI consumption based on new requirements or updates to any  |
| awesome-copilot/upstash-redis | 허용 | upstream | Use Redis over HTTP from serverless and edge runtimes with @upstash/redis, and add rate limiting with @upstash/ratelimit. Use when the user  |
| awesome-copilot/v-development | 허용 | upstream | Guide GitHub Copilot through V language development: installing the toolchain, project layout with v.mod, building, testing, formatting, and |
| awesome-copilot/vardoger-analyze | 허용 | upstream | Use when the user asks to personalize the GitHub Copilot CLI assistant, adapt Copilot to their style, use vardoger, or analyze their Copilot |
| awesome-copilot/vcpkg | 주의 (외부 서비스 언급) | upstream | Guide for setting up vcpkg in C++ projects, managing dependency versions, and cross-compiling. Covers manifest initialization, CMake and Vis |
| awesome-copilot/verify-agent-action | 금지 (외부 배포) | upstream | Review a proposed AI-agent action or human-approval packet before execution. Use when an agent wants to run a consequential tool, command, d |
| awesome-copilot/vscode-ext-commands | 허용 | upstream | Guidelines for contributing commands in VS Code extensions. Indicates naming convention, visibility, localization and other relevant attribu |
| awesome-copilot/vscode-ext-localization | 허용 | upstream | Guidelines for proper localization of VS Code extensions, following VS Code extension development guidelines, libraries and good practices |
| awesome-copilot/web-design-reviewer | 허용 | upstream | This skill enables visual inspection of websites running locally or remotely to identify and fix design issues. Triggers on requests like "r |
| awesome-copilot/webapp-testing | 허용 | upstream | Toolkit for interacting with and testing local web applications using Playwright. Supports verifying frontend functionality, debugging UI be |
| awesome-copilot/webmcpify | 허용 | upstream | WebMCP agent skill for curated core coverage or route-by-route parity — inventory an existing web app, integrate approved tools, then inspec |
| awesome-copilot/what-context-needed | 허용 | upstream | Ask Copilot what files it needs to see before answering a question |
| awesome-copilot/winmd-api-search | 허용 | upstream | Find and explore Windows desktop APIs. Use when building features that need platform capabilities — camera, file access, notifications, UI c |
| awesome-copilot/winui3-migration-guide | 허용 | upstream | UWP-to-WinUI 3 migration reference. Maps legacy UWP APIs to correct Windows App SDK equivalents with before/after code snippets. Covers name |
| awesome-copilot/workiq-copilot | 허용 | upstream | Guides the Copilot CLI on how to use the WorkIQ CLI/MCP server to query Microsoft 365 Copilot data (emails, meetings, docs, Teams, people) f |
| awesome-copilot/workshop-create | 허용 | upstream | Create a new workshop or use an existing directory as one. Handles two paths: (A) use an existing local directory the operator points at, or |
| awesome-copilot/write-coding-standards-from-file | 허용 | upstream | Write a coding standards document for a project using the coding styles from the file(s) and/or folder(s) passed as arguments in the prompt. |
| awesome-copilot/x-twitter-scraper | 허용 | upstream | Build GitHub Copilot workflows with Xquik X API SDKs, REST endpoints, hosted Apify Actor runs, MCP tools, TweetClaw OpenClaw plugin installs |

## huggingface/skills (26개, 라이선스: Apache-2.0)

| id | 상태 | 설치 | 설명 |
|---|---|---|---|
| huggingface/hf-cli | 금지 (외부 배포) | upstream | Hugging Face Hub CLI (`hf`) for downloading, uploading, and managing models, datasets, spaces, buckets, repos, papers, jobs, and more on the |
| huggingface/hf-cloud-aws-context-discovery | 금지 (외부 배포) | upstream | Discover the user's local AWS context (active profile, region, account ID, caller identity) at the start of any AWS task. Use this skill bef |
| huggingface/hf-cloud-python-env-setup | 금지 (외부 배포) | upstream | Set up an isolated Python environment for SageMaker / AWS work, with the right Python version and current boto3. Use this skill whenever Pyt |
| huggingface/hf-cloud-sagemaker-deployment-planner | 금지 (외부 배포) | upstream | Plan and coordinate the deployment of a model to Amazon SageMaker AI. Use this skill whenever the user wants to deploy, host, serve, or expo |
| huggingface/hf-cloud-sagemaker-iam-preflight | 금지 (외부 배포) | upstream | Ensure a usable SageMaker execution role exists before deploying or training. Use this skill whenever about to create a SageMaker endpoint,  |
| huggingface/hf-cloud-sagemaker-production-defaults | 금지 (외부 배포) | upstream | Create a SageMaker endpoint (real-time, real-time scale-to-zero, or async) with autoscaling, CloudWatch alarms, and tagging enabled by defau |
| huggingface/hf-cloud-serving-image-selection | 금지 (외부 배포) | upstream | Pick the right serving container for a SageMaker model deployment and find its current image URI. Use this skill whenever about to deploy a  |
| huggingface/hf-mcp | 금지 (외부 서비스) | upstream | Use Hugging Face Hub via MCP server tools. Search models, datasets, Spaces, papers. Get repo details, fetch documentation, run compute jobs, |
| huggingface/hf-mem | 금지 (외부 서비스) | upstream | Hugging Face CLI to estimate the required memory to load Safetensors or GGUF model weights for inference from the Hugging Face Hub |
| huggingface/huggingface-best | 허용 | upstream | Use when the user asks about finding the best, top, or recommended model for a task, wants to know what AI model to use, or wants to compare |
| huggingface/huggingface-community-evals | 금지 (외부 서비스) | upstream | Run evaluations for Hugging Face Hub models using inspect-ai and lighteval on local hardware. Use for backend selection, local GPU evals, an |
| huggingface/huggingface-datasets | 주의 (외부 AI API 언급) | upstream | Use this skill for Hugging Face Dataset Viewer API workflows that fetch subset/split metadata, paginate rows, search text, apply filters, do |
| huggingface/huggingface-gradio | 허용 | upstream | Build Gradio web UIs and demos in Python. Use when creating or editing Gradio apps, components, event listeners, layouts, or chatbots. |
| huggingface/huggingface-llm-trainer | 금지 (외부 배포) | upstream | Train or fine-tune language and vision models using TRL (Transformer Reinforcement Learning) or Unsloth with Hugging Face Jobs infrastructur |
| huggingface/huggingface-local-models | 주의 (외부 서비스 언급) | upstream | Use to select models to run locally with llama.cpp and GGUF on CPU, Mac Metal, CUDA, or ROCm. Covers finding GGUFs, quant selection, running |
| huggingface/huggingface-lora-space-builder | 주의 (외부 전송, 외부 AI API 언급) | upstream | Build and publish a Gradio demo on Hugging Face Spaces for a user-provided LoRA. Use when someone asks to create, generate, ship, or publish |
| huggingface/huggingface-paper-publisher | 금지 (외부 서비스) | upstream | Publish and manage research papers on Hugging Face Hub. Supports creating paper pages, linking papers to models/datasets, claiming authorshi |
| huggingface/huggingface-papers | 주의 (외부 AI API 언급) | upstream | Look up and read Hugging Face paper pages in markdown, and use the papers API for structured metadata such as authors, linked models/dataset |
| huggingface/huggingface-spaces | 금지 (외부 배포) | upstream | Build, deploy, and maintain applications on Hugging Face Spaces — Gradio / Docker / Static SDKs, ZeroGPU and dedicated hardware, model loadi |
| huggingface/huggingface-tool-builder | 주의 (외부 AI API, 외부 서비스 언급) | upstream | Use this skill when the user wants to build tool/scripts or achieve a task where using data from the Hugging Face API would help. This is es |
| huggingface/huggingface-trackio | 주의 (외부 서비스 언급) | upstream | Track and visualize ML training experiments with Trackio. Use when logging metrics during training (Python API), firing alerts for training  |
| huggingface/huggingface-vision-trainer | 주의 (외부 AI API, 외부 서비스 언급) | upstream | Trains and fine-tunes vision models for object detection (D-FINE, RT-DETR v2, DETR, YOLOS), image classification (timm models — MobileNetV3, |
| huggingface/huggingface-zerogpu | 주의 (외부 배포 언급) | upstream | AI demos and GPU compute with Gradio Spaces and Hugging Face Spaces ZeroGPU. Use when writing or reviewing code that uses `@spaces.GPU`, con |
| huggingface/train-sentence-transformers | 금지 (외부 서비스) | upstream | Train or fine-tune sentence-transformers models across `SentenceTransformer` (bi-encoder, dense or static embedding model for retrieval, sim |
| huggingface/transformers-js | 금지 (외부 서비스) | upstream | Use Transformers.js to run state-of-the-art machine learning models directly in JavaScript/TypeScript. Supports NLP (text classification, tr |
| huggingface/trl-training | 허용 | upstream | Post-train LLMs with TRL (Transformers Reinforcement Learning) — SFT, DPO, GRPO, KTO, and reward-model training. Use when writing or debuggi |

## trailofbits/skills (97개, 라이선스: CC-BY-SA-4.0)

| id | 상태 | 설치 | 설명 |
|---|---|---|---|
| trailofbits/address-sanitizer | 허용 | upstream | Builds and runs code under AddressSanitizer to catch buffer overflows, use-after-free, and other memory errors during fuzzing or tests. Cove |
| trailofbits/adjudicate-regression | 허용 | upstream | Use when deciding whether source and live reproduction evidence establish a new regression or an exclusion. |
| trailofbits/aflpp | 허용 | upstream | Sets up and runs AFL++ for multi-core fuzzing of C/C++ projects built with afl-clang-fast or afl-gcc-fast. Covers instrumentation modes, par |
| trailofbits/agentic-actions-auditor | 허용 | upstream | Audits GitHub Actions workflows for security vulnerabilities in AI agent integrations including Claude Code Action, Gemini CLI, OpenAI Codex |
| trailofbits/algorand-vulnerability-scanner | 주의 (외부 배포 언급) | upstream | Scans Algorand smart contracts for 11 common vulnerabilities including rekeying attacks, unchecked transaction fees, missing field validatio |
| trailofbits/atheris | 허용 | upstream | Sets up and runs Atheris, the coverage-guided Python fuzzer built on libFuzzer. Covers TestOneInput harnesses, FuzzedDataProvider, instrumen |
| trailofbits/audit-augmentation | 허용 | upstream | Augments Trailmark code graphs with external audit findings from SARIF static analysis results, weAudit annotation files, and version-gated  |
| trailofbits/audit-context-building | 허용 | upstream | Understand a codebase before looking for bugs in it - what each function assumes, what it guarantees, and what it depends on elsewhere. Use  |
| trailofbits/audit-prep-assistant | 주의 (외부 배포 언급) | upstream | Prepares codebases for security review using Trail of Bits' checklist. Helps set review goals, runs static analysis tools, increases test co |
| trailofbits/burpsuite-project-parser | 허용 | upstream | Searches and explores Burp Suite project files (.burp) from the command line. Use when searching response headers or bodies with regex patte |
| trailofbits/c-review | 허용 | upstream | Performs comprehensive C/C++ security review for memory corruption, integer overflows, race conditions, and platform-specific vulnerabilitie |
| trailofbits/cairo-vulnerability-scanner | 주의 (외부 배포 언급) | upstream | Scans Cairo/StarkNet smart contracts for 6 critical vulnerabilities including felt252 arithmetic overflow, L1-L2 messaging issues, address c |
| trailofbits/cargo-fuzz | 허용 | upstream | Sets up and runs cargo-fuzz, the standard fuzzing tool for Cargo-based Rust projects. Covers cargo fuzz init, the nightly toolchain requirem |
| trailofbits/chrome-mcp-troubleshooting | 금지 (외부 서비스) | upstream | Diagnose and fix Claude in Chrome MCP extension connectivity issues. Use when mcp__claude-in-chrome__* tools fail, return "Browser extension |
| trailofbits/code-improver | 허용 | upstream | Runs an autonomous review-and-fix improvement loop over any code target — a skill, plugin, module, or directory — using a reviewer the user  |
| trailofbits/code-maturity-assessor | 허용 | upstream | Systematic code maturity assessment using Trail of Bits' 9-category framework. Analyzes codebase for arithmetic safety, auditing practices,  |
| trailofbits/codeql | 허용 | upstream | Scans a codebase for security vulnerabilities using CodeQL's interprocedural data flow and taint tracking analysis. Triggers on "run codeql" |
| trailofbits/constant-time-analysis | 허용 | upstream | Detects timing side-channel vulnerabilities in cryptographic code. Use when implementing or reviewing crypto code, encountering division on  |
| trailofbits/constant-time-testing | 주의 (외부 배포, 외부 서비스 언급) | upstream | Measures timing side channels in cryptographic implementations by running them, using dudect for statistical analysis and Timecop over Valgr |
| trailofbits/cosmos-vulnerability-scanner | 허용 | upstream | Scans Cosmos SDK blockchain modules and CosmWasm contracts for consensus-critical vulnerabilities — chain halts, fund loss, state divergence |
| trailofbits/coverage-analysis | 허용 | upstream | Measures and interprets what a fuzzing campaign actually reaches, using llvm-cov, lcov, or a fuzzer's own coverage output. Covers baselining |
| trailofbits/crypto-protocol-diagram | 주의 (외부 배포 언급) | upstream | Extracts protocol message flow from source code, RFCs, academic papers, pseudocode, informal prose, ProVerif (.pv), or Tamarin (.spthy) mode |
| trailofbits/devcontainer-setup | 주의 (외부 배포, 외부 AI API 언급) | upstream | Creates devcontainers with Claude Code, language-specific tooling (Python/Node/Rust/Go), and persistent volumes. Use when adding devcontaine |
| trailofbits/diagramming-code | 허용 | upstream | Generates Mermaid diagrams from Trailmark code graphs. Produces call graphs, class hierarchies, module dependency maps, containment diagrams |
| trailofbits/differential-review | 허용 | upstream | Performs security-focused differential review of code changes. Adapts analysis depth to codebase size, uses git blame for context, calculate |
| trailofbits/dimensional-analysis | 허용 | upstream | Audits code for unit and decimal-scaling bugs and annotates it with dimensional comments recording the units of each value. Use when someone |
| trailofbits/dwarf-expert | 허용 | upstream | Analyzes DWARF debug information in compiled binaries. Use when inspecting .debug_* sections, DIE trees, or DW_TAG_/DW_AT_ entries with dwar |
| trailofbits/entry-point-analyzer | 허용 | upstream | Analyzes smart contract codebases to identify state-changing entry points for security auditing. Detects externally callable functions that  |
| trailofbits/firebase-apk-scanner | 주의 (외부 배포 언급) | upstream | Scans Android APKs for Firebase security misconfigurations including open databases, storage buckets, authentication issues, and exposed clo |
| trailofbits/fp-check | 허용 | upstream | Systematically verifies suspected security bugs to eliminate false positives, producing a TRUE POSITIVE or FALSE POSITIVE verdict with docum |
| trailofbits/fuzzing-dictionary | 허용 | upstream | Builds and applies fuzzing dictionaries so a fuzzer can produce the keywords, magic bytes, and tokens a target expects. Covers extracting to |
| trailofbits/fuzzing-obstacles | 허용 | upstream | Patches past the barriers that stop a fuzzer making progress — checksum and hash verification, magic-value validation, time-based seeds, and |
| trailofbits/genotoxic | 허용 | upstream | Graph-informed mutation testing triage. Parses codebases with Trailmark, runs mutation testing and necessist, then uses survived mutants, un |
| trailofbits/gh-cli | 허용 | upstream | Enforces authenticated gh CLI workflows over unauthenticated curl, WebFetch, and MCP fetch patterns. Use when working with GitHub URLs, API  |
| trailofbits/github-triage | 주의 (외부 전송 언급) | upstream | Triages a repository's open GitHub issues and pull requests via the gh CLI. Optionally reviews and merges ready PRs — incrementally merging  |
| trailofbits/goal-prompt | 허용 | upstream | Drafts copy-paste-ready /goal commands for goal mode in Claude Code and Codex. Use when the user asks to create, write, rewrite, improve, co |
| trailofbits/graph-evolution | 허용 | upstream | Compares Trailmark code graphs at two source code snapshots (git commits, tags, or directories) to surface security-relevant structural chan |
| trailofbits/guidelines-advisor | 주의 (외부 배포 언급) | upstream | Smart contract development advisor based on Trail of Bits' best practices. Analyzes codebase to generate documentation/specifications, revie |
| trailofbits/harness-writing | 허용 | upstream | Designs and improves fuzzing harnesses for C/C++ and Rust. Covers mapping raw bytes onto a target API, generating structured inputs, avoidin |
| trailofbits/hunt-regressions | 허용 | upstream | Use when discovering possible regressions from a pinned change and its callers before reproduction. |
| trailofbits/implement-patch | 허용 | upstream | Use when a confirmed local bug needs an invariant-level fix, variant search, tests, and one local commit. |
| trailofbits/interpreting-culture-index | 허용 | upstream | Interprets Culture Index (CI) surveys, behavioral profiles, and personality assessment data. Supports individual profile interpretation, tea |
| trailofbits/let-fate-decide | 주의 (외부 배포 언급) | upstream | Draws the 12 Houses of the Zodiac Tarot spread to inject entropy into planning when prompts are vague, ambiguous, or casually delegated. Int |
| trailofbits/libafl | 허용 | upstream | Builds custom fuzzers with LibAFL, the modular Rust fuzzing library. Covers composing observers, feedbacks, mutators, schedulers, and execut |
| trailofbits/libfuzzer | 주의 (외부 서비스 언급) | upstream | Sets up and runs libFuzzer, the coverage-guided fuzzer built into LLVM, on C/C++ code that compiles with Clang. Covers harness structure, -f |
| trailofbits/mermaid-to-proverif | 허용 | upstream | Translates Mermaid sequenceDiagrams describing cryptographic protocols into ProVerif formal verification models (.pv files). Use when genera |
| trailofbits/modern-cpp | 주의 (외부 배포 언급) | upstream | Guides C++ code toward modern idioms (C++20/23/26). Use when writing new C++ code, modernizing legacy patterns, or working on security-criti |
| trailofbits/modern-python | 주의 (외부 전송 언급) | upstream | Configures Python projects with modern tooling (uv, ruff, ty). Use when creating projects, writing standalone scripts, or migrating from pip |
| trailofbits/mutation-testing | 허용 | upstream | Configures mewt or muton campaigns, analyzes surviving mutants, and investigates bugs exposed by testing gaps. Use when setting up mutation  |
| trailofbits/open-sourcing | 주의 (외부 전송 언급) | upstream | This skill should be used when the user asks to "open source this project", "prepare this repository for public release", "make this repo pu |
| trailofbits/ossfuzz | 허용 | upstream | Enrolls a project in OSS-Fuzz, Google's free continuous fuzzing service for open source, and drives it locally. Covers project.yaml, Dockerf |
| trailofbits/panel-review | 허용 | upstream | Reviews a code target by launching a panel of specialist auditor agents and merging their reports. Use when asked to run a panel review. |
| trailofbits/patching-bugs | 주의 (외부 배포 언급) | upstream | Use when a known bug or falsifiable bug hypothesis in a local codebase needs a patch commit and reviewable proof report. |
| trailofbits/post-patch-validation | 허용 | upstream | Validates security patches with reproducible baseline-versus-patched evidence, including original exploits, root-cause variants, behavior pr |
| trailofbits/pr-improver | 허용 | upstream | Runs an autonomous review-and-fix improvement loop over the current branch's changes until a PR review comes back clean, scoped mechanically |
| trailofbits/prepare-regression | 허용 | upstream | Use when pinning before/after sources and collecting PR or commit context for a regression investigation. |
| trailofbits/property-based-testing | 허용 | upstream | Writes, reviews, and debugs property-based tests — Hypothesis, fast-check, proptest, jqwik, rapid, and Echidna or Medusa for Solidity invari |
| trailofbits/prove-patch | 허용 | upstream | Use when a local security patch commit needs independent scoped and three-arm proof. |
| trailofbits/regression-hunt | 허용 | upstream | Use when investigating regressions in PRs or commits, coordinating a regression campaign, or resuming saved progress. |
| trailofbits/replay-regression | 금지 (외부 배포) | upstream | Use when independently verifying a supplied PoC against fresh live before/after deployments. |
| trailofbits/report-regressions | 허용 | upstream | Use when assembling or refreshing an evidence-linked regression report from saved campaign decisions. |
| trailofbits/reproduce-bug | 허용 | upstream | Use when a named runtime or compiler bug in a local repository needs independent reproduction. |
| trailofbits/reproduce-regression | 금지 (외부 배포) | upstream | Use when deploying before/after systems and building a live-system PoC for a regression candidate. |
| trailofbits/review-pr | 허용 | upstream | Reviews the current branch's changes against its base branch as a pull request: correctness of new and modified code, test coverage for it,  |
| trailofbits/review-walkthrough | 허용 | upstream | Generates an interactive HTML walkthrough for reviewing code changes. Use only when explicitly called. |
| trailofbits/rust-review | 허용 | upstream | Performs comprehensive Rust security review for safe/unsafe boundary issues, memory safety in unsafe blocks, concurrency hazards, panic-indu |
| trailofbits/ruzzy | 허용 | upstream | Sets up and runs Ruzzy, Trail of Bits' coverage-guided Ruby fuzzer and the only production-ready one for the language. Covers harness struct |
| trailofbits/sarif-parsing | 허용 | upstream | Parses and processes SARIF files from static analysis tools like CodeQL, Semgrep, or other scanners. Triggers on "parse sarif", "read scan r |
| trailofbits/second-opinion | 허용 | upstream | Gets independent code reviews from Codex or Antigravity for uncommitted changes, branch diffs, and commits. Use when the user requests an ex |
| trailofbits/secure-workflow-guide | 금지 (외부 배포) | upstream | Guides through Trail of Bits' 5-step secure development workflow. Runs Slither scans, checks special features (upgradeability/ERC conformanc |
| trailofbits/semgrep | 허용 | upstream | Runs a Semgrep security scan over a codebase: detects languages, selects rulesets, presents the plan for explicit approval, then runs every  |
| trailofbits/semgrep-rule-creator | 허용 | upstream | Creates custom Semgrep rules for detecting security vulnerabilities, bug patterns, and code patterns. Use when writing Semgrep rules or buil |
| trailofbits/semgrep-rule-variant-creator | 허용 | upstream | Creates language variants of existing Semgrep rules. Use when porting a Semgrep rule to specified target languages. Takes an existing rule a |
| trailofbits/sharp-edges | 허용 | upstream | Identifies error-prone APIs, dangerous configurations, and footgun designs that enable security mistakes. Use when reviewing API designs, co |
| trailofbits/skill-improver | 허용 | upstream | Runs an autonomous review-and-fix improvement loop over a Claude Code skill until a review comes back clean, with a cross-round findings led |
| trailofbits/slicing-code-context | 허용 | upstream | Selects bounded, graph-informed source slices with Trailmark and delegates focused code analysis or patch-proposal work to a smaller subagen |
| trailofbits/solana-vulnerability-scanner | 주의 (외부 배포 언급) | upstream | Scans Solana programs for 6 critical vulnerabilities including arbitrary CPI, improper PDA validation, missing signer/ownership checks, and  |
| trailofbits/spec-to-code-compliance | 허용 | upstream | Check code against the documentation that specifies it - which requirements hold, which the code contradicts, which are absent, and what the |
| trailofbits/substrate-vulnerability-scanner | 허용 | upstream | Scans Substrate/Polkadot pallets for 7 critical vulnerabilities including arithmetic overflow, panic DoS, incorrect weights, and bad origin  |
| trailofbits/supply-chain-risk-auditor | 허용 | upstream | Audits a project's dependencies for supply-chain risk: version-matched advisories for direct dependencies and the full lockfile tree, abando |
| trailofbits/testing-handbook-generator | 허용 | upstream | Generates Claude Code skills from the Trail of Bits Testing Handbook (appsec.guide), analyzing handbook pages and emitting SKILL.md files wi |
| trailofbits/token-integration-analyzer | 주의 (외부 배포 언급) | upstream | Token integration and implementation analyzer based on Trail of Bits' token integration checklist. Analyzes token implementations for ERC20/ |
| trailofbits/ton-vulnerability-scanner | 주의 (외부 배포 언급) | upstream | Scans TON (The Open Network) smart contracts for 3 critical vulnerabilities including integer-as-boolean misuse, fake Jetton contracts, and  |
| trailofbits/trailmark | 허용 | upstream | Builds and queries multi-language source and binary code graphs for security analysis. Includes pre-analysis passes for blast radius, taint  |
| trailofbits/trailmark-finding-triage | 허용 | upstream | Performs graph-assisted triage of a single security finding, SARIF result, weAudit annotation, suspicious function, or report excerpt using  |
| trailofbits/trailmark-review-gate | 허용 | upstream | Runs a Trailmark structural review gate over a branch, pull request, fix commit, release diff, or git ref range to detect new entrypoints, n |
| trailofbits/trailmark-structural | 허용 | upstream | Runs full Trailmark structural analysis by building a graph, running `preanalysis()`, and reporting hotspots, taint, blast radius, privilege |
| trailofbits/trailmark-summary | 허용 | upstream | Runs a Trailmark summary analysis on a codebase. Returns auto-detected languages, entry point count, and dependency list. Use when vivisect  |
| trailofbits/trailmark-variant-neighborhood | 허용 | upstream | Expands one confirmed or suspected vulnerability into a Trailmark graph neighborhood of variant candidates by finding sibling functions, sha |
| trailofbits/validate-bug | 허용 | upstream | Use when a bug PoC package needs an independent rerun and judgment before patching. |
| trailofbits/variant-analysis | 허용 | upstream | Hunts for the other instances of a bug already found — the variants of one root cause across a codebase. Use immediately after a vulnerabili |
| trailofbits/vector-forge | 허용 | upstream | Mutation-driven test vector generation. Finds implementations of a cryptographic algorithm or protocol, runs mutation testing to identify es |
| trailofbits/vulnerability-triage-brocards | 주의 (외부 배포 언급) | upstream | This skill should be used when the user asks to "triage a vulnerability report", "assess a CVE", "evaluate a bug bounty submission", "decide |
| trailofbits/writing-lean-proofs | 허용 | upstream | Writes and reviews structured Lean 4 proofs and designs Lean libraries following Mathlib conventions. Use when proving theorems in Lean, for |
| trailofbits/wycheproof | 허용 | upstream | Validates cryptographic implementations against Project Wycheproof's test vectors, which encode known attacks and edge cases across AES, RSA |
| trailofbits/yara-rule-authoring | 주의 (외부 배포 언급) | upstream | Guides authoring of high-quality YARA-X detection rules for malware identification. Use when writing, reviewing, or optimizing YARA rules. C |
| trailofbits/zeroize-audit | 주의 (외부 서비스 언급) | upstream | Detects missing zeroization of sensitive data in source code and identifies zeroization removed by compiler optimizations, with assembly-lev |

## ComposioHQ/awesome-codex-skills (880개, 라이선스: 미표기(재배포 불가로 취급))

`*-automation` 스킬 768개는 Composio를 통한 외부 SaaS 연동이라 전부 금지다. 목록은 skills_catalog.tsv에만 있다.

| id | 상태 | 설치 | 설명 |
|---|---|---|---|
| composio/Ahrefs Automation | 금지 (외부 서비스) | upstream | Automate SEO research with Ahrefs -- analyze backlink profiles, research keywords, track domain metrics history, audit organic rankings, and |
| composio/Apify Automation | 금지 (외부 서비스) | upstream | Automate web scraping and data extraction with Apify -- run Actors, manage datasets, create reusable tasks, and retrieve crawl results throu |
| composio/Apollo Automation | 금지 (외부 서비스) | upstream | Automate Apollo.io lead generation -- search organizations, discover contacts, enrich prospect data, manage contact stages, and build target |
| composio/Ashby Automation | 주의 (외부 서비스 언급) | upstream | Automate recruiting and hiring workflows in Ashby -- manage candidates, jobs, applications, interviews, and notes through natural language c |
| composio/Attio Automation | 금지 (외부 서비스) | upstream | Automate Attio CRM operations -- search records, query contacts and companies with advanced filters, manage notes, list attributes, and navi |
| composio/Braintree Automation | 금지 (외부 서비스) | upstream | Braintree Automation: manage payment processing via Stripe-compatible tools for customers, subscriptions, payment methods, and transactions |
| composio/Capsule CRM Automation | 금지 (외부 서비스) | upstream | Automate Capsule CRM operations -- manage contacts (parties), run structured filter queries, track tasks and projects, log entries, and hand |
| composio/Clockify Automation | 주의 (외부 서비스 언급) | upstream | Automate time tracking workflows in Clockify -- create and manage time entries, workspaces, and users through natural language commands. |
| composio/Cloudinary Automation | 주의 (외부 서비스 언급) | upstream | Automate Cloudinary media management including folder organization, upload presets, asset lookup, transformations, and usage monitoring thro |
| composio/Coinbase Automation | 주의 (외부 서비스 언급) | upstream | Coinbase Automation: list and manage cryptocurrency wallets, accounts, and portfolio data via Coinbase CDP SDK |
| composio/Contentful Automation | 금지 (외부 서비스) | upstream | Automate headless CMS operations in Contentful -- list spaces, retrieve space metadata, and update space configurations through the Composio |
| composio/Customer.io Automation | 금지 (외부 서비스) | upstream | Automate customer engagement workflows including broadcast triggers, message analytics, segment management, and newsletter tracking through  |
| composio/Docker Hub Automation | 금지 (외부 서비스) | upstream | Automate Docker Hub operations -- manage organizations, repositories, teams, members, and webhooks via the Composio MCP integration. |
| composio/Dynamics 365 Automation | 주의 (외부 서비스 언급) | upstream | Dynamics 365 Automation: manage CRM contacts, accounts, leads, opportunities, sales orders, invoices, and cases via the Dynamics CRM Web API |
| composio/ElevenLabs Automation | 금지 (외부 서비스) | upstream | Automate ElevenLabs text-to-speech workflows -- generate speech from text, browse and inspect voices, check subscription limits, list models |
| composio/Eventbrite Automation | 주의 (외부 서비스 언급) | upstream | Automate Eventbrite event management, attendee tracking, organization discovery, and category browsing through natural language commands |
| composio/Excel Automation | 주의 (외부 서비스 언급) | upstream | Excel Automation: create workbooks, manage worksheets, read/write cell data, and format spreadsheets via Microsoft Excel and Google Sheets i |
| composio/Facebook Automation | 금지 (외부 서비스) | upstream | Automate Facebook Page management including post creation, scheduling, video uploads, Messenger conversations, and audience engagement via C |
| composio/Firecrawl Automation | 금지 (외부 서비스) | upstream | Automate web crawling and data extraction with Firecrawl -- scrape pages, crawl sites, extract structured data, batch scrape URLs, and map w |
| composio/FreshBooks Automation | 주의 (외부 서비스 언급) | upstream | FreshBooks Automation: manage businesses, projects, time tracking, and billing in FreshBooks cloud accounting |
| composio/Gong Automation | 금지 (외부 서비스) | upstream | Automate Gong conversation intelligence -- retrieve call recordings, transcripts, detailed analytics, speaker stats, and workspace data -- u |
| composio/Gorgias Automation | 주의 (외부 서비스 언급) | upstream | Automate e-commerce customer support workflows in Gorgias -- manage tickets, customers, tags, and teams through natural language commands. |
| composio/GroqCloud Automation | 금지 (외부 서비스) | upstream | Automate AI inference, chat completions, audio translation, and TTS voice management through GroqCloud's high-performance API via Composio |
| composio/Gumroad Automation | 금지 (외부 서비스) | upstream | Automate Gumroad product management, sales tracking, license verification, and webhook subscriptions using natural language through the Comp |
| composio/Harvest Automation | 주의 (외부 서비스 언급) | upstream | Automate time tracking, project management, and invoicing workflows in Harvest -- log hours, manage projects, clients, and tasks through nat |
| composio/HeyGen Automation | 금지 (외부 서비스) | upstream | Automate AI video generation, avatar browsing, template-based video creation, and video status tracking through HeyGen's platform via Compos |
| composio/Hunter Automation | 금지 (외부 서비스) | upstream | Automate Hunter.io email intelligence -- search domains for email addresses, find specific contacts, verify email deliverability, manage lea |
| composio/Instantly Automation | 금지 (외부 서비스) | upstream | Automate Instantly cold email outreach -- manage campaigns, sending accounts, lead lists, bulk lead imports, and campaign analytics -- using |
| composio/Jotform Automation | 주의 (외부 서비스 언급) | upstream | Automate Jotform form listing, user management, activity history, folder organization, and plan inspection through natural language commands |
| composio/Kommo Automation | 금지 (외부 서비스) | upstream | Automate Kommo CRM operations -- manage leads, pipelines, pipeline stages, tasks, and custom fields -- using natural language through the Co |
| composio/LaunchDarkly Automation | 금지 (외부 서비스) | upstream | Automate LaunchDarkly feature flag management -- list projects and environments, create and delete trigger workflows, and track code referen |
| composio/Lemlist Automation | 금지 (외부 서비스) | upstream | Automate Lemlist multichannel outreach -- manage campaigns, enroll leads, add personalization variables, export campaign data, and handle un |
| composio/Lemon Squeezy Automation | 금지 (외부 서비스) | upstream | Automate Lemon Squeezy store management -- products, orders, subscriptions, customers, discounts, and checkout tracking -- using natural lan |
| composio/Lever Automation | 금지 (외부 서비스) | upstream | Automate recruiting workflows in Lever ATS -- manage opportunities, job postings, requisitions, pipeline stages, and candidate tags through  |
| composio/MailerLite Automation | 금지 (외부 서비스) | upstream | Automate email marketing workflows including subscriber management, campaign analytics, group segmentation, and account monitoring through M |
| composio/Microsoft Clarity Automation | 금지 (외부 서비스) | upstream | Automate user behavior analytics with Microsoft Clarity -- export heatmap data, session metrics, and engagement analytics segmented by brows |
| composio/Mistral AI Automation | 금지 (외부 서비스) | upstream | Automate Mistral AI operations -- manage files and libraries, upload documents for fine-tuning, batch processing, and OCR, track fine-tuning |
| composio/Neon Automation | 금지 (외부 서비스) | upstream | Automate Neon serverless Postgres operations -- manage projects, branches, databases, roles, and connection URIs via the Composio MCP integr |
| composio/NetSuite Automation | 주의 (외부 서비스 언급) | upstream | NetSuite Automation: manage customers, sales orders, invoices, inventory, and records via Oracle NetSuite ERP with SuiteQL queries |
| composio/New Relic Automation | 금지 (외부 서비스) | upstream | Automate New Relic observability workflows -- manage alert policies, notification channels, alert conditions, and monitor applications and b |
| composio/Omnisend Automation | 금지 (외부 서비스) | upstream | Automate ecommerce marketing workflows including contact management, bulk operations, and subscriber segmentation through Omnisend via Compo |
| composio/OpenAI Automation | 금지 (외부 서비스) | upstream | Automate OpenAI API operations -- generate responses with multimodal and structured output support, create embeddings, generate images, and  |
| composio/PandaDoc Automation | 금지 (외부 서비스) | upstream | Automate document workflows with PandaDoc -- create documents from files, manage contacts, organize folders, set up webhooks, create templat |
| composio/PhantomBuster Automation | 금지 (외부 서비스) | upstream | Automate lead generation, web scraping, and social media data extraction workflows through PhantomBuster's cloud platform via Composio |
| composio/Prismic Automation | 금지 (외부 서비스) | upstream | Automate headless CMS operations in Prismic -- query documents, search content, retrieve custom types, and manage repository refs through th |
| composio/Productboard Automation | 주의 (외부 서비스 언급) | upstream | Automate product management workflows in Productboard -- manage features, notes, objectives, components, and releases through natural langua |
| composio/QuickBooks Automation | 주의 (외부 서비스 언급) | upstream | QuickBooks Automation: manage invoices, customers, accounts, and payments in QuickBooks Online for streamlined bookkeeping |
| composio/Ramp Automation | 주의 (외부 서비스 언급) | upstream | Ramp Automation: manage corporate card transactions, reimbursements, users, and expense tracking via the Ramp platform |
| composio/Replicate Automation | 금지 (외부 서비스) | upstream | Automate Replicate AI model operations -- run predictions, upload files, inspect model schemas, list versions, and manage prediction history |
| composio/RingCentral Automation | 금지 (외부 서비스) | upstream | RingCentral automation via Rube MCP -- toolkit not currently available in Composio; no RING_CENTRAL_ tools found |
| composio/SEMrush Automation | 금지 (외부 서비스) | upstream | Automate SEO analysis with SEMrush -- research keywords, analyze domain organic rankings, audit backlinks, assess keyword difficulty, and di |
| composio/SharePoint Automation | 주의 (외부 서비스 언급) | upstream | SharePoint Automation: manage sites, lists, documents, folders, pages, and search content across SharePoint and OneDrive |
| composio/Shortcut Automation | 주의 (외부 서비스 언급) | upstream | Automate project management workflows in Shortcut -- create stories, manage tasks, track epics, and organize workflows through natural langu |
| composio/Snowflake Automation | 금지 (외부 서비스) | upstream | Automate Snowflake data warehouse operations -- list databases, schemas, and tables, execute SQL statements, and manage data workflows via t |
| composio/Spotify Automation | 금지 (외부 서비스) | upstream | Automate Spotify workflows including playlist management, music search, playback control, and user profile access via Composio |
| composio/SurveyMonkey Automation | 주의 (외부 서비스 언급) | upstream | Automate SurveyMonkey survey creation, response collection, collector management, and survey discovery through natural language commands |
| composio/Toggl Automation | 주의 (외부 서비스 언급) | upstream | Automate time tracking workflows in Toggl Track -- create time entries, manage projects, clients, tags, and workspaces through natural langu |
| composio/Uploadcare Automation | 주의 (외부 서비스 언급) | upstream | Automate Uploadcare file management including listing, storing, inspecting, downloading, and organizing file groups through natural language |
| composio/Wave Accounting Automation | 금지 (외부 서비스) | upstream | Wave Accounting toolkit is not currently available as a native integration. No Wave-specific tools were found in the Composio platform. This |
| composio/Webex Automation | 주의 (외부 배포, 외부 서비스 언급) | upstream | Automate Cisco Webex messaging, rooms, teams, webhooks, and people management through natural language commands |
| composio/Workday Automation | 주의 (외부 서비스 언급) | upstream | Automate HR operations in Workday -- manage workers, time off requests, absence balances, and employee data through natural language command |
| composio/Xero Automation | 주의 (외부 서비스 언급) | upstream | Xero Automation: manage invoices, contacts, payments, bank transactions, and accounts in Xero for cloud-based bookkeeping |
| composio/Zoho Books Automation | 주의 (외부 서비스 언급) | upstream | Automate Zoho Books accounting workflows including invoice creation, bill management, contact lookup, payment tracking, and multi-organizati |
| composio/Zoho Desk Automation | 금지 (외부 서비스) | upstream | Zoho Desk automation via Rube MCP -- toolkit not currently available in Composio; no ZOHO_DESK_ tools found |
| composio/agent-deep-links | 금지 (외부 서비스) | upstream | Build, validate, and troubleshoot deep links for Codex, Cursor, VS Code, Visual Studio, and similar tools. Use when users ask for clickable  |
| composio/brand-guidelines | 주의 (외부 서비스 언급) | upstream | Applies OpenAI's brand colors and typography to any artifact that should match the Codex/OpenAI look-and-feel. Use it when brand colors or s |
| composio/canvas-design | 허용 | upstream | Create beautiful visual art in .png and .pdf documents using design philosophy. You should use this skill when the user asks to create a pos |
| composio/changelog-generator | 허용 | upstream | Automatically creates user-facing changelogs from git commits by analyzing commit history, categorizing changes, and transforming technical  |
| composio/codebase-migrate | 금지 (외부 서비스) | upstream | Run large codebase migrations and multi-file refactors. Uses the Composio CLI to coordinate issue tracking, batched PRs, and CI verification |
| composio/competitive-ads-extractor | 주의 (외부 서비스 언급) | upstream | Extracts and analyzes competitors' ads from ad libraries (Facebook, LinkedIn, etc.) to understand what messaging, problems, and creative app |
| composio/connect | 금지 (외부 서비스) | upstream | Connect Codex to any app via the Composio CLI. Send emails, create issues, post messages, update databases - take real actions across Gmail, |
| composio/connect-apps | 금지 (외부 서비스) | upstream | Connect Claude to external apps via the Composio CLI. Use this skill when the user wants to send emails, create issues, post messages, or ta |
| composio/content-research-writer | 주의 (외부 서비스 언급) | upstream | Assists in writing high-quality content by conducting research, adding citations, improving hooks, iterating on outlines, and providing real |
| composio/create-plan | 주의 (외부 배포 언급) | upstream | Create a concise plan. Use when a user explicitly asks for a plan related to a coding task. |
| composio/datadog-logs | 금지 (외부 서비스) | upstream | Query and filter Datadog logs from the shell using the Composio CLI. Run scoped log searches, pivot across services/environments, and export |
| composio/deploy-pipeline | 금지 (외부 배포) | upstream | Run end-to-end deploy pipelines across Stripe, Supabase, and Vercel using the Composio CLI. Promote Stripe products, push Supabase migration |
| composio/developer-growth-analysis | 금지 (외부 서비스) | upstream | Analyzes your recent Codex chat history to identify coding patterns, development gaps, and areas for improvement, curates relevant learning  |
| composio/domain-name-brainstormer | 허용 | upstream | Generates creative domain name ideas for your project and checks availability across multiple TLDs (.com, .io, .dev, .ai, etc.). Saves hours |
| composio/email-draft-polish | 허용 | upstream | Draft, rewrite, or condense emails with target tone, length, and audience; use for cold outreach, replies, status updates, or escalations wh |
| composio/file-organizer | 허용 | upstream | Intelligently organizes your files and folders across your computer by understanding context, finding duplicates, suggesting better structur |
| composio/gh-address-comments | 금지 (GitHub 원격 작업) | upstream | Help address review/issue comments on the open GitHub PR for the current branch using gh CLI; verify gh auth first and prompt the user to au |
| composio/gh-fix-ci | 금지 (GitHub 원격 작업) | upstream | Inspect GitHub PR checks with gh, pull failing GitHub Actions logs, summarize failure context, then create a fix plan and implement after us |
| composio/helium-mcp | 허용 | upstream | Search real-time news with bias scoring, get live stock/ETF/crypto data with AI analysis, ML options pricing, balanced news synthesis, and m |
| composio/image-enhancer | 허용 | upstream | Improves the quality of images, especially screenshots, by enhancing resolution, sharpness, and clarity. Perfect for preparing images for pr |
| composio/internal-comms | 허용 | upstream | A set of resources to help me write all kinds of internal communications, using the formats that my company likes to use. Claude should use  |
| composio/invoice-organizer | 주의 (외부 서비스 언급) | upstream | Automatically organizes invoices and receipts for tax preparation by reading messy files, extracting key information, renaming them consiste |
| composio/issue-triage | 금지 (외부 서비스) | upstream | Triage Linear or Jira backlogs and run bug sweeps via the Composio CLI. Bulk-fetch issues, dedupe, relabel, reassign, and post summaries — a |
| composio/langsmith-fetch | 허용 | upstream | Debug LangChain and LangGraph agents by fetching execution traces from LangSmith Studio. Use when debugging agent behavior, investigating er |
| composio/lead-research-assistant | 허용 | upstream | Identifies high-quality leads for your product or service by analyzing your business, searching for target companies, and providing actionab |
| composio/linear | 금지 (외부 서비스) | upstream | Manage issues, projects & team workflows in Linear. Use when the user wants to read, create or updates tickets in Linear. |
| composio/mcp-builder | 허용 | upstream | Guide for creating high-quality MCP (Model Context Protocol) servers that enable LLMs to interact with external services through well-design |
| composio/meeting-insights-analyzer | 허용 | upstream | Analyzes meeting transcripts and recordings to uncover behavioral patterns, communication insights, and actionable feedback. Identifies when |
| composio/meeting-notes-and-actions | 주의 (외부 서비스 언급) | upstream | Turn meeting transcripts or rough notes into crisp summaries with decisions, risks, and owner-tagged action items; use for Zoom/Meet/Teams t |
| composio/notion-knowledge-capture | 금지 (외부 서비스) | upstream | Capture conversations and decisions into structured Notion pages; use when turning chats/notes into wiki entries, how-tos, decisions, or FAQ |
| composio/notion-meeting-intelligence | 금지 (외부 서비스) | upstream | Prepare meeting materials with Notion context and Codex research; use when gathering context, drafting agendas/pre-reads, and tailoring mate |
| composio/notion-research-documentation | 금지 (외부 서비스) | upstream | Research across Notion and synthesize into structured documentation; use when gathering info from multiple Notion sources to produce briefs, |
| composio/notion-spec-to-implementation | 금지 (외부 서비스) | upstream | Turn Notion specs into implementation plans, tasks, and progress tracking; use when implementing PRDs/feature specs and creating Notion plan |
| composio/paperjsx | 허용 | upstream | Generate PPTX presentations, DOCX documents, XLSX spreadsheets, and PDF reports from structured JSON input using PaperJSX. |
| composio/pr-review-ci-fix | 금지 (외부 서비스) | upstream | Automated PR review and CI auto-fix for GitHub and GitLab using the Composio CLI. Pulls diffs, fetches failing job logs, posts review commen |
| composio/raffle-winner-picker | 주의 (외부 서비스 언급) | upstream | Picks random winners from lists, spreadsheets, or Google Sheets for giveaways, raffles, and contests. Ensures fair, unbiased selection with  |
| composio/sentry-triage | 금지 (외부 서비스) | upstream | Diagnose Sentry issues without copy-pasting stack traces. Uses the Composio CLI to pull issue details, events, breadcrumbs, and suspect comm |
| composio/skill-creator | 주의 (외부 배포, 외부 서비스 언급) | upstream | Guide for creating effective skills. This skill should be used when users want to create a new skill (or update an existing skill) that exte |
| composio/skill-installer | 허용 | upstream | Install Codex skills into $CODEX_HOME/skills from a curated list or a GitHub repo path. Use when a user asks to list installable skills, ins |
| composio/skill-share | 금지 (외부 서비스) | upstream | A skill that creates new Claude skills and automatically shares them on Slack using Rube for seamless team collaboration and skill discovery |
| composio/slack-gif-creator | 금지 (외부 서비스) | upstream | Toolkit for creating animated GIFs optimized for Slack, with validators for size constraints and composable animation primitives. This skill |
| composio/spreadsheet-formula-helper | 허용 | upstream | Write and debug spreadsheet formulas (Excel/Google Sheets), pivot tables, and array formulas; translate between dialects; use when users nee |
| composio/support-ticket-triage | 허용 | upstream | Triage customer support tickets/emails/chats into categories, priority, and next action; draft responses and create reproducible steps; use  |
| composio/tailored-resume-generator | 허용 | upstream | Analyzes job descriptions and generates tailored resumes that highlight relevant experience, skills, and achievements to maximize interview  |
| composio/template-skill | 허용 | upstream | Replace with description of the skill and when Claude should use it. |
| composio/theme-factory | 허용 | upstream | Toolkit for styling artifacts with a theme. These artifacts can be slides, docs, reportings, HTML landing pages, etc. There are 10 pre-set t |
| composio/webapp-testing | 허용 | upstream | Toolkit for interacting with and testing local web applications using Playwright. Supports verifying frontend functionality, debugging UI be |
| composio/youtube-downloader | 허용 | upstream | Download YouTube videos with customizable quality and format options. Use this skill when the user asks to download, save, or grab YouTube v |
