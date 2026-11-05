# GrannySwift

A Swift-first macOS capability layer for people and local coding agents. The direction is to reuse strong Apple integrations, extend their interfaces where necessary, and return useful results without rebuilding the providers underneath them.

**Current state:** read [CURRENT.md](docs/CURRENT.md) for verified implementation status, active milestones, and next work. The selected integrations below are design decisions, not implemented or installed features.

## Start here

- [Current state](docs/CURRENT.md): verified status, current milestone, and next step.
- [Design capture](docs/DESIGN.md): the product intent, locked decisions, selected providers and libraries, boundaries, and superseded ideas from the initial architecture discussion.
- [Next design session](docs/GRILL.md): the unresolved questions and a restart prompt for `/grill-with-docs`. Naming and the detailed CLI experience remain part of that work.
- [Source map](docs/SOURCES.md): upstream implementations to inspect and the important limits on earlier findings.
- [Contributing](CONTRIBUTING.md): development, verification, documentation, and public-repository practices.
- [Agent instructions](AGENTS.md): the repository-specific working rules. `CLAUDE.md` points to the same file.

## Direction

One Swift command surface, compatibility aliases where needed, and a coherent signing/permission strategy. Messages uses Beeper; Calendar and Contacts use Apple PIM; Reminders uses RemCTL. Voice Memos uses TSRP with a small extraction/export addition. Call history and voicemail start read-only. Notes MCP stays separate and Photos retains osxphotos. FluidAudio is the selected transcription engine; its existing consumers and migration boundary must remain explicit.

The previous AppleSuite behavior is a useful reference, not a requirement to reproduce its Python architecture. GrannySwift should be usable without WobOS; any WobOS-specific watches, decisions, and notifications belong to that consumer.

## Development

Use the prerequisites and commands in [CONTRIBUTING.md](CONTRIBUTING.md). The checked-in manifest currently declares Swift tools 6.0 and macOS 14; those scaffold declarations are not yet a compatibility promise for the selected providers.

No migration, signing grant, model preparation, or production installation occurs just by building this scaffold.
