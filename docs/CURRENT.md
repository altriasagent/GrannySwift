# GrannySwift — current project state

**Checked:** November 4, 2026 (America/New_York), from GitHub source inspection.  
**Evidence level:** repository files and PR metadata. No local build, real Apple data access, signing test, or installed release was verified for this review.

This is the short, replace-in-place snapshot of what **actually exists**. [DESIGN.md](DESIGN.md) records agreed intent; [GRILL.md](GRILL.md) records decisions still being refined. PRs and tests hold detailed verification evidence.

## What's real now

| Area | Verified state |
| --- | --- |
| Repository | Public `justanothernon-dev/GrannySwift` repository; Swift Package Manager scaffold on `main`. |
| Executable | Placeholder `granny` command, `GrannyCore` target, and test target. No selected Apple provider is integrated in this scaffold. |
| Installed dependencies | `Package.swift` declares Swift Argument Parser and the SwiftLint build plugin. The other selected packages are architectural decisions, not yet installed dependencies. |
| Build configuration | Swift tools 6.0, macOS 14 declaration, and macOS 26 CI for `swift build`, `swift test`, and strict SwiftLint. These settings do not verify a support matrix for planned providers. |
| Agent setup | Root `AGENTS.md`, existing `CLAUDE.md` symlink, and a repository-management skill. |
| macOS integration and distribution | No verified GrannySwift permission host, authorized data integration, notarized release, or installed runtime. |

## Active milestone

The architecture kickoff documents live in [draft PR #1](https://github.com/justanothernon-dev/GrannySwift/pull/1). Check that PR for live review or merge status; this page is not another PR tracker.

**Next action:** use the repository-grounded `/grill-with-docs` process from [GRILL.md](GRILL.md). Resolve open product, interface, permission, platform, and release-boundary decisions with the owner. Then write an approved implementation slice with observable acceptance criteria. Do not treat the whole initial braindump as blanket build authorization.

## State boundaries

- The prior AppleSuite is reference behavior, not proof of working GrannySwift features.
- A selected upstream library's capabilities are not proof of a GrannySwift integration.
- A successful placeholder build is not feature parity, permission acceptance, or a release.
- Unanswered recommendations are not locked owner decisions.

## Maintenance

Update this file **only when the current picture materially changes**: design alignment, a completed verified slice, a new significant blocker, a merge, installation, or observed working behavior. Replace stale status rather than appending chronology. Keep the current next action obvious and link to the PR, spec, or evidence that establishes the status. Apply the [guidance consistency review](agent-guidance/README.md) when a PR affects this state or other project instructions.
