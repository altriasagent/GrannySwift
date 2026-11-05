# GrannySwift — agent instructions

GrannySwift is a public, Swift-first macOS capability layer built around established Apple integrations. `CLAUDE.md` already links to this file; maintain one shared instruction source.

## Read according to the task

- **Status, continuation, handoff:** [docs/CURRENT.md](docs/CURRENT.md) records actual progress and the next milestone.
- **Architecture and product design:** [docs/DESIGN.md](docs/DESIGN.md) records owner decisions; [docs/GRILL.md](docs/GRILL.md) records unanswered choices. Recommendations are not approvals.
- **Provider implementation:** consult the approved component specification, [docs/SOURCES.md](docs/SOURCES.md), and actual upstream code before adding an alternative.
- **Builds and tests:** [Package.swift](Package.swift) and [CI](.github/workflows/ci.yml) reflect the actual configuration; verify and use them rather than copying commands into instructions.
- **Component walkthroughs:** when implementing or changing a meaningful feature, read and update its folder-level README as a code-grounded, conversational explanation. Follow the owner's approved wording and examples; see [documentation guidance](docs/agent-guidance/README.md#component-walkthrough-readmes).
- **Repository workflow and settings:** follow the [repository-management skill](.agents/skills/repository-management/SKILL.md) for branches, PRs, safe cleanup, and approval boundaries.

## Engineering defaults

Favor the simplest architecture that reliably delivers the intended functionality. Use established libraries and native capabilities wherever they reduce custom code. Keep responsibilities clear, and introduce additional infrastructure when it provides a concrete benefit in functionality, performance, security, reliability, or maintainability. Explain meaningful tradeoffs rather than treating fewer components as an objective by itself.

Preserve useful behavior, not the old Python module layout. Use SwiftPM and idiomatic Swift. Explain non-obvious mechanisms for a developer learning Swift, and use SourceKit-LSP diagnostics when available.

**Public repo:** only synthetic/sanitized fixtures; never commit personal data, credentials, signing keys, or private configuration. Don't inherit ambient secrets into build plugins or subprocesses. A signing identity is not an automatic macOS privacy grant.

Distinguish proposed, built, tested, reviewed, merged, installed, and working. Verify real effects rather than treating command launch as success. Update [CURRENT.md](docs/CURRENT.md) at meaningful milestones; keep history and detailed evidence in their owning PRs/specifications.

**Work hygiene:** Prefer the coding app's native Git and worktree tools. Use a branch for each coherent task, keep unrelated work separate, and leave an understandable PR or preservation handoff. After merge, tidy completed branches/worktrees only after verifying no unfinished or unpushed work will be lost.

**Guidance upkeep:** At every PR handoff, reconcile changes against affected project guidance—including relevant folder READMEs—using [docs/agent-guidance/README.md](docs/agent-guidance/README.md). Repair stale explanations in the same PR or record that the related docs were checked. Keep this root file concise.
