<h1 align="center">
  <code>dotfiles-opencode</code>
</h1>

<p align="center">
  <em>Multi-agent OpenCode configuration: agents, skills, and commands.</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/license-MIT-3fb950?style=flat-square&labelColor=0d1117" alt="MIT">
  <img src="https://img.shields.io/badge/agents-8-58a6ff?style=flat-square&labelColor=0d1117" alt="8 agents">
  <img src="https://img.shields.io/badge/runtime-OpenCode-000000?style=flat-square&labelColor=0d1117" alt="OpenCode">
</p>

---

```text
$ cat /etc/motd
```

A ready-to-use OpenCode config with **8 specialized agents**, multi-model
routing, GitHub account isolation, and custom skills/commands.

Drop it into any machine and start working.

---

## `$ install`

```bash
git clone git@github.com:Najo24-code/dotfiles-opencode.git
cd dotfiles-opencode
bash install.sh
```

---

## `$ tree .`

```text
opencode/
├── opencode.jsonc            # main config + model routing
├── agents/                   # 8 agents, each with a role
│   ├── orchestrator.md       # primary — decides which agents to use
│   ├── researcher.md         # investigates docs, APIs, code
│   ├── architect.md          # designs technical solutions
│   ├── implementer.md        # writes / modifies code
│   ├── reviewer.md           # hunts bugs in the diff
│   ├── tester.md             # runs / writes tests
│   ├── devops.md             # Docker, CI/CD, Linux server expert
│   └── debugger.md           # reproduces and fixes bugs
├── skills/
│   └── git-workflow/         # multi-account GitHub isolation rules
└── commands/
    ├── review.md             # /review
    ├── deploy.md             # /deploy
    └── debug.md              # /debug

AGENTS.md                     # global rules for all agents
```

---

## `$ agents --list` — the roster

| Agent | Model | Role |
|---|---|---|
| `orchestrator` | big-pickle | Primary. Routes tasks, keeps context, enforces Regla #1 |
| `researcher` | big-pickle | Reads docs, APIs, repos. Never writes. |
| `architect` | big-pickle | Designs components, contracts, trade-offs. No code. |
| `implementer` | mimo-v2.5 | Writes code. Respects conventions. Runs validations. |
| `reviewer` | big-pickle | Finds real bugs in the diff with a concrete failure scenario. |
| `tester` | mimo-v2.5 | Designs and runs tests. Covers happy path, edges, errors, invariants. |
| `devops` | big-pickle | Docker, CI/CD, deploy, infra, Linux servers, monitoring. |
| `debugger` | mimo-v2.5 | Reproduces bugs, gathers evidence, finds root cause, implements fix. |

---

## `$ models` — multi-model routing

| Model | Handles |
|---|---|
| `opencode/big-pickle` | Reasoning: orchestrator, architect, reviewer, devops, researcher |
| `opencode/mimo-v2.5-free` | Code: implementer, tester, debugger |
| `opencode/ling-3.0-flash-fin-free` | Titles, summaries, light tasks |

---

## `$ accounts` — Git safety rule

| Rule |
|---|
| Only use the GitHub account the user explicitly confirms for the operation |
| Never use a different account (work, school, or other) without explicit permission |

> Agents are forbidden from running `gh` or `git` remote commands without
> user confirmation. This is Regla #1.

---

## `$ license`

[MIT](LICENSE)
