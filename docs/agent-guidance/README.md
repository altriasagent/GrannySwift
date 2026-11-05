# Agent guidance — references and upkeep

**Purpose:** One maintained, on-demand reference area for coding-agent instructions, external guidance, and documentation consistency. This file is not another always-loaded instruction set.  
**Primary sources reviewed:** November 4, 2026 (America/New_York). Re-check version-dependent details when a tool or workflow changes; the recorded date does not imply automatic future monitoring.

## Reference register

| Source | Type | GrannySwift use | Review trigger |
| --- | --- | --- | --- |
| [OpenAI: AGENTS.md](https://learn.chatgpt.com/docs/agent-configuration/agents-md) | Official | Concise project instructions; scoped overrides only for real differences | Codex instructions or discovery changes |
| [Claude Code: best practices](https://code.claude.com/docs/en/best-practices) | Official | Small always-loaded instructions, focused skills, enforceable CI/hooks for deterministic rules | Claude tooling, hooks or workflows change |
| [Claude Code: memory and AGENTS.md](https://code.claude.com/docs/en/memory) | Official | Project instructions differ from automatic memory; current versions can read AGENTS.md. The existing CLAUDE.md symlink is valid single-source sharing | Claude version, instruction loading, memory or symlink changes |
| [Matt Pocock: writing-for-agents](https://github.com/mattpocock/skills/blob/main/skills/productivity/writing-for-agents/SKILL.md) | Upstream skill | Progressive disclosure, strong context pointers, one authoritative home per rule | Agent instruction structure changes |
| [Matt Pocock: grill-with-docs](https://github.com/mattpocock/skills/blob/main/skills/engineering/grill-with-docs/SKILL.md), [grilling](https://github.com/mattpocock/skills/blob/main/skills/productivity/grilling/SKILL.md), [domain-modeling](https://github.com/mattpocock/skills/blob/main/skills/engineering/domain-modeling/SKILL.md) | Upstream skills | Ask only unresolved owner decisions, record actual answers, add glossary/ADRs when warranted | Design-refinement workflow changes |
| [Matt Pocock: handoff](https://github.com/mattpocock/skills/blob/main/skills/productivity/handoff/SKILL.md) | Upstream skill | Point agents to canonical records, not copies of an entire conversation | Session and handoff workflow changes |
| [Community AGENTS.md examples](https://gist.github.com/0xfauzi/7c8f65572930a21efa62623557d83f6e) | Community | Evaluate relevant patterns selectively; do not copy unrelated Python/AWS instructions or version claims | An example is considered for adoption |

The register is a **map of sources and adopted practices**, not a copy of those instruction sets. Prefer current official documentation to community claims or older summaries. New references need a URL, authority, project-specific reason, and review trigger. Remove obsolete entries.

## Canonical project documents

| Home | Owns |
| --- | --- |
| [AGENTS.md](../../AGENTS.md) (shared by CLAUDE.md) | Small cross-agent instructions, routing, core guardrails |
| [README.md](../../README.md) | Public product description and navigation |
| [CONTRIBUTING.md](../../CONTRIBUTING.md) and [CI](../../.github/workflows/ci.yml) | Real build/test commands and contributor/review procedures |
| [CURRENT.md](../CURRENT.md) | Actual verified state, meaningful blockers and next milestone |
| [DESIGN.md](../DESIGN.md) | Durable owner-approved product and architecture decisions |
| [GRILL.md](../GRILL.md) | Unanswered owner questions, separate from recommendations |
| [SOURCES.md](../SOURCES.md) | Product/provider implementation sources, not agent instruction references |
| Component specs, glossary, ADRs and specialized skills | Local contracts, terminology, durable tradeoffs and recurring procedures, created only when needed |

Keep each meaning in one authoritative place. Cross-reference it rather than copying it.

## Guidance drift review

**Run at every PR handoff, including documentation-only changes.** Reconcile the PR's actual diff against *all affected guidance homes* above, including documents not edited by the PR. This is a scoped consistency check, not a complete repository audit or a reason to run tests solely for a documentation change.

1. **Map impact:** Does the PR change project purpose, capabilities, dependencies, supported platforms, commands, outputs, permissions, build/CI, installation, agent behavior, or settled owner decisions? Identify the relevant canonical docs and referenced instructions.
2. **Check reality:** Compare those docs with actual source/configuration, approved decisions, and linked upstream guidance where the change affects a version-dependent claim. Verify links, stale commands, contradictory statements, duplicated rules and claims that proposed work is already installed.
3. **Reconcile in the same PR:** Correct or prune each affected document. Put actual status in CURRENT, approved decisions in DESIGN, unresolved questions in GRILL, provider evidence in SOURCES, contributor procedure in CONTRIBUTING, and source guidance here. Keep AGENTS.md concise. Do not silently reinterpret an unanswered owner choice.
4. **Record a short handoff line:** For example, “Guidance reviewed: AGENTS.md, CURRENT.md and DESIGN.md; updated CURRENT.md, others unchanged. External guidance recheck: not applicable.” Or “Guidance reviewed: no updates needed.” Flag unresolved conflicts explicitly.
5. **At major agent-tooling changes or release review:** Revisit the *relevant* official references, verify instruction loading in the actual host, update interpretations here, and record the check date. An unrelated PR does not require a fresh web search of every source.

A PR author or agent is responsible for performing the check; this document does not itself run background monitoring. If actual drift persists, propose a small deterministic CI check for broken local links or other enforceable facts rather than making the root instruction file longer.

## Pruning rule

Replace outdated guidance instead of appending a chronology of exceptions. Keep permanent state and decisions in their respective homes, historical evidence in PRs, and temporary handoffs temporary. Source links and interpretations should remain useful, verified when relevant, and removable when obsolete.
