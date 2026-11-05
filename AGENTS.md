# GrannySwift development instructions

This public repository is the Swift-first successor to the earlier AppleSuite integration approach. `CLAUDE.md` is a symlink to this file; keep one source of agent instructions.

## Start with the right record

1. Read [docs/DESIGN.md](docs/DESIGN.md) before architecture or provider work. Its locked decisions are the owner-approved direction, not proof of implemented behavior.
2. For design refinement, read [docs/GRILL.md](docs/GRILL.md). It records unanswered questions separately from recommendations. Do not convert a suggested answer into an owner decision.
3. For an implementation, read the approved specification for that slice and the relevant upstream sources in [docs/SOURCES.md](docs/SOURCES.md). Inspect the actual manifest, source, and help before claiming a feature or command exists.
4. Follow [CONTRIBUTING.md](CONTRIBUTING.md) for build, test, review, and public-data handling. Repository settings and collaboration/security files use the existing [repository-management skill](.agents/skills/repository-management/SKILL.md).

This kickoff is a design capture, not authorization to implement every listed feature. The next session refines the design before build slices are approved. New explicit owner choices supersede older choices only for the same scope; update the owning document and keep unresolved points open.

## Implement simply

Preserve useful behavior rather than porting the old Python module layout. Prefer native library capabilities and small CLI extensions over duplicate readers, speculative abstractions, or another general-purpose framework. Check what a selected dependency already supplies before writing an alternative. Keep project-owned routing and adaptation Swift-first; mature upstream tools may retain their own languages.

Use explicit dependencies and small, meaningful boundaries. Add a service, database, cache, retry loop, compatibility layer, or dependency-injection framework only for a named current requirement whose simpler solution is inadequate. A selected library does not require a contrived use case, and a source example is not automatically production-ready code.

Keep target resolution, completeness, native action results, and verification distinct. A launched command is not a completed operation; a recorded outgoing message is not recipient delivery. Preserve uncertain writes without blindly replaying them. Command schemas, final names, and compatibility details are still subject to design.

## Code should teach without becoming a tutorial

Explain each substantial component's role and its approved design reference. Explain unfamiliar mechanisms and non-obvious decisions close to the code: actors, cancellation, permission ownership, cursor ordering, and verified side effects are useful examples. Avoid comments that repeat obvious syntax.

Flag standard Swift facilities or established libraries that remove custom work. Explain meaningful tradeoffs in ordinary language. Keep the dependency/source map and current documentation updated instead of appending parallel specifications or permanent handoffs.

## Swift code intelligence and verification

The existing Claude Code setup uses the `swift-lsp` plugin backed by Xcode's `sourcekit-lsp`. Read diagnostics after Swift edits and inspect definitions/references before changing shared symbols. Other contributors may use an equivalent SourceKit-LSP-enabled editor. If code intelligence is unavailable, disclose the missing evidence rather than claim it ran.

For a Swift change, preserve the repository's build, test, and strict-lint requirements in CONTRIBUTING and CI. During implementation, use focused checks after coherent behavior changes; use broader checks at integration/release milestones. Do not weaken assertions or disable required CI. Reuse still-valid evidence rather than repeating expensive model or live-service runs without a relevant change.

Documentation-only work requires source, diff, link, and privacy inspection, not local model runs or application tests. Existing CI may run normally. At connected-feature checkpoints, exercise the actual command and authorized integration path; label fixtures, real services, application runs, and installed use separately. Never claim a Mac-side check from a non-Mac environment.

## Public repository and action boundaries

Publish only invented or sanitized fixtures. Do not copy private AppleSuite evidence, real messages, recordings, contacts, calendar records, absolute personal paths, credentials, or private agent-setup instructions into this repository. Preserve license notices when reusing upstream code; do not select or change the project license without a decision.

Treat signing identity and macOS authorization as separate concerns. Restrict any permission-owning helper to its intended operations; it must not become an arbitrary protected-file or command-execution gateway. Pass subprocesses only the environment they need and avoid emitting environment values or sensitive native payloads in logs.

Keep unrelated changes, tracked symlinks, and existing setup intact. A documentation PR does not authorize dependency changes, live sends, permission grants, signing-key creation, merges, installs, or repository-setting changes. Report the exact branch/commit, scope, evidence, and remaining gaps at handoff. Planned, built, reviewed, merged, installed, and observed working are different states.

Repository skills remain in `.agents/skills/<name>/` with tracked `.claude/skills/<name>` symlinks. Use available specification, grilling, implementation, and review skills proportionately; public contributors must not need the owner's private skill installation to understand this repository.
