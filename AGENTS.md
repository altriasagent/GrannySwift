# GrannySwift — agent instructions

GrannySwift is a public, Swift-first macOS capability layer built around established Apple integrations. `CLAUDE.md` already links to this file; maintain one shared instruction source.

## Read according to the task

- **Status, continuation, handoff:** [docs/CURRENT.md](docs/CURRENT.md) records actual progress and the next milestone.
- **Architecture and product design:** [docs/DESIGN.md](docs/DESIGN.md) records owner decisions; [docs/GRILL.md](docs/GRILL.md) records unanswered choices. Recommendations are not approvals.
- **Provider implementation:** consult the approved component specification, [docs/SOURCES.md](docs/SOURCES.md), and actual upstream code before adding an alternative.
- **Building, testing, review, releases:** [CONTRIBUTING.md](CONTRIBUTING.md) and [CI](.github/workflows/ci.yml) own the commands and procedures.
- **Repository settings:** follow the existing [repository-management skill](.agents/skills/repository-management/SKILL.md) and its approval boundary.

## Engineering defaults

Favor the simplest architecture that reliably delivers the intended functionality. Use established libraries and native capabilities wherever they reduce custom code. Keep responsibilities clear, and introduce additional infrastructure when it provides a concrete benefit in functionality, performance, security, reliability, or maintainability. Explain meaningful tradeoffs rather than treating fewer components as an objective by itself.

Preserve useful behavior, not the old Python module layout. Use SwiftPM and idiomatic Swift. Explain non-obvious mechanisms for a developer learning Swift, and use SourceKit-LSP diagnostics when available.

**Public repo:** only synthetic/sanitized fixtures; never commit personal data, credentials, signing keys, or private configuration. Don't inherit ambient secrets into build plugins or subprocesses. A signing identity is not an automatic macOS privacy grant.

Distinguish proposed, built, tested, reviewed, merged, installed, and working. Verify real effects rather than treating command launch as success. Update [CURRENT.md](docs/CURRENT.md) at meaningful milestones; keep history and detailed evidence in their owning PRs/specifications.

**Instruction drift:** At every PR handoff, compare this file and its links with the actual changes to code, dependencies, CI, conventions, and project docs. Correct or prune stale instructions in the same PR; keep domain detail in its owning document rather than expanding this file. If no update is necessary, record that it was checked. See [CONTRIBUTING.md](CONTRIBUTING.md#agent-instruction-drift-check).
