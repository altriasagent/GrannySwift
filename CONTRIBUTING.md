# Contributing to GrannySwift

GrannySwift is early in design. Start with [docs/DESIGN.md](docs/DESIGN.md), then use [docs/GRILL.md](docs/GRILL.md) for the questions that still need decisions. A provider choice does not imply that its integration is ready or that every feature should ship in the first implementation slice.

## Current development setup

Use a Mac with Xcode or an appropriate Swift toolchain. The current `Package.swift` declares Swift tools 6.0, macOS 14, a `granny` executable, `GrannyCore`, and a test target. It depends on Argument Parser and SwiftLintPlugins. The existing CI runs on `macos-26`. These are the scaffold's settings, not a verified support matrix for all planned dependencies.

Swift Package Manager is the project's dependency manager. Keep `Package.resolved` under version control. CocoaPods is not part of this project's setup.

The current verification commands are:

```sh
swift build
swift test
swift package plugin --allow-writing-to-package-directory swiftlint --strict --reporter github-actions-logging
```

`swift build` already invokes the SwiftLint build plugin. The separate strict-lint step also treats warnings as failures. The workflow in `.github/workflows/ci.yml` is the authority when commands change.

Do not run builds with a shell environment full of unrelated credentials. Use a deliberately limited environment for build tools and subprocesses, and review diagnostics before publishing them. A dependency or plugin can fail before project-level logging filters run.

The current executable is a placeholder. Building it does not prepare models, grant macOS permissions, or establish that a provider integration works.

## Work in small, reviewable changes

Use a topic branch and a pull request. Keep documentation-only kickoff work separate from runtime changes. Preserve unrelated work and inspect existing files before replacing them.

For design work, capture settled decisions in the design document and open questions in the grilling document. Create component specifications when a slice is ready. Use a glossary only for genuinely ambiguous terms, and architecture decision records only for durable tradeoffs that need their rationale preserved. Avoid an empty documentation framework.

For implementation, begin at the real command boundary and the selected provider. Prefer extending an upstream capability to building a competing version. Small pinned patches may be proposed, but their maintenance and contribution policy is not settled yet.

## Swift, tests, and explanations

Use idiomatic Swift and structured concurrency where they fit. Explain non-obvious choices, not every line of syntax. Keep interfaces understandable to contributors who are learning Swift.

Swift Testing is selected for ordinary tests and Quick for useful behavioral specifications; avoid writing the same tests twice. Both are architectural selections, not a statement that both packages are currently installed. SwiftFormat is the selected formatting tool, with SwiftLint focused on complementary checks. Jazzy documentation comes when the API stabilizes.

Use invented fixtures for automated tests. Test the result and observable side effects, including ambiguous identities, equal timestamps, partial reads, unsupported fields, cancellation, and uncertain writes. Run a bounded live macOS scenario at a relevant integration milestone under the applicable authorization. Do not publish its personal contents.

Documentation edits need source/diff/link/privacy checks, not transcription benchmarks or live application mutations. Existing CI is left intact.

## Pull request explanation

Write for a reader who has not opened the diff:

- **Summary:** what the change is for, what changes for a user, and whether it works yet.
- **Evidence:** what was inspected or exercised, with simulated, real-service, application, and installed evidence kept distinct.
- **Merge danger:** what a revert would undo and what else the change can affect.
- **Still open:** remaining choices, limitations, and implementation gates.
- **What was asked:** the request and relevant owner decisions, using only public-safe excerpts.

Name the exact head commit. State which checks ran, were reused, or were not run and why. A merge does not establish installation or normal use. Do not invent a review-session link or a passing test result.

## Public contribution safety

Keep secrets, signing keys, personal recordings, transcripts, messages, and real account fixtures out of commits and logs. Public-safe examples should not depend on private repository links or a particular home directory. Preserve upstream attribution and verify licensing before copying implementation code.

Repository settings, collaboration permissions, security-reporting configuration, and release publication require their own explicit authority. Do not invent a reporting address, security response promise, or project license. The existing repository-management skill describes that boundary for agent-assisted work.
