# Next design session

**Purpose:** resume `/grill-with-docs` from this repository, not from a remembered chat.  
**State:** ready for refinement; the recommendations below have not been accepted.

Read [CURRENT.md](CURRENT.md) for actual project state, [DESIGN.md](DESIGN.md) for locked choices, and [SOURCES.md](SOURCES.md) for the upstream reading map. The owner explicitly requested the capture PR first, with grilling afterward. Do not block this capture on answers or infer acceptance from the instruction to open the PR.

## How to run the session

Use the installed `grill-with-docs` skill when available. It combines `grilling` and `domain-modeling`. Otherwise follow the same method directly: ask the independent decisions whose prerequisites are settled in one numbered round, explain the consequence, recommend an answer, then wait. Investigate repository/library facts yourself; do not make the owner answer questions source inspection can resolve.

Keep locked provider choices intact. Challenge a settled choice only when concrete contradictory evidence is found, and distinguish that evidence from a preference. A source/example implementation is not proof of permission behavior on the target Mac.

Update the owning document after an answer. Use a small glossary for truly ambiguous concepts, and create an ADR only for a consequential, hard-to-reverse tradeoff whose rationale would otherwise be lost. Avoid inventing files before there is information to put in them.

## Open owner decisions

These were raised before the destination changed to GrannySwift. None was answered; they are not requirements.

| Question | Recommendation previously proposed, not adopted | Why it matters |
| --- | --- | --- |
| How far must compatibility extend beyond aliases? | Allow better flags/JSON where useful, with explicit migration of real consumers rather than indefinite adapters. | One executable and compatibility aliases are locked; exact old schemas are not. |
| What is the first public release boundary? | A useful Messages-focused increment including the agreed Send Later and v1 awakening work, rather than waiting for every domain. | All selected domains remain target scope; delivery order and first-release completeness are not fixed. |
| How should missing permissions behave in ordinary commands? | Separate interactive setup from unattended reads/actions; return an actionable error rather than a surprise offscreen dialog. | This determines the user experience before the host/IPC mechanism is designed. |
| Does transcription alone imply a retained audio export? | Use direct authorized access or temporary staging where appropriate; retain audio only when export is requested. | Extraction capability is locked; staging lifetime and retained artifacts still need policy. |
| What platform breadth does the first release promise? | Evaluate Apple silicon/macOS 26+ first, but decide only after dependency requirements and target use are clear. | The current scaffold says Swift tools 6.0/macOS 14 and CI uses macOS 26. Do not silently raise the deployment target or treat either as validated support. |
| How should upstream patches be maintained? | Permit narrow pinned patches with attribution and an upgrade path; contribute generic improvements upstream when practical. | Beeper CLI extensibility and TSRP extraction are chosen, but fork/patch ownership and delivery policy remain open. |

The next command-design pass should also resolve names, hierarchy, semantic defaults, output examples, partial-result conventions, and the relationship of the existing transcription capability to GrannySwift. Do not treat previous illustrative commands or the placeholder `granny` command as a finalized API.

## Facts for the implementing agent to establish

These are research/acceptance tasks, not preference questions for the owner:

- Which selected APIs are exposed by the chosen upstream revisions, and which CLI additions actually remain necessary?
- Which process is responsible for each macOS grant, including external providers, and what survives an update?
- Can Beeper's event identities and history cursors support the intended catch-up/recovery behavior without losing source messages?
- How are scheduled rows distinguished from genuinely pending scheduled sends on supported macOS versions?
- Does copying a resolved Voice Memos file reproduce the expected original/edited recording, and can the transcription pipeline decode real `.m4a` and `.qta` assets?
- Which call/voicemail records and audio assets are present locally, and how is incomplete synchronization reported?
- Which compatible Core ML artifact preserves the chosen model family, and what accuracy, long-form, speaker, memory, startup, and cancellation behavior does the actual pipeline exhibit?

During planning, read source and existing evidence. Run live checks or benchmarks when an implementation change or explicit verification request justifies them; do not launch a broad test campaign simply to resume the conversation.

## Suggested first-session prompt

> Read AGENTS.md, docs/CURRENT.md, docs/DESIGN.md, docs/GRILL.md, and the relevant upstream sources in docs/SOURCES.md. This PR captures owner decisions; it is not a final build specification. Use /grill-with-docs to resolve the remaining product and implementation boundaries. Preserve the selected providers, Swift-first/minimal-extension principle, public-repository requirements, and the final TSRP-plus-export / FluidAudio decisions. Inspect source before asking factual questions. Ask the independent open choices together, with recommended answers, and record only answers the owner actually gives. Leave naming and command design open until we work through concrete usage and output examples. Do not implement or deploy the whole stack from this brief.

## Suggested workflow after alignment

Use `to-spec` for a multi-session approved slice, `domain-modeling` for terms/tradeoffs as needed, `to-tickets` only when work is ready to decompose, and the available implementation/review skills for the build. Keep one accountable integration owner. A fresh-session handoff should link to these records and name only the remaining work; it should not copy the design into another permanent document.

Completion of this design phase means the relevant choices have owner answers and a scoped specification has observable acceptance criteria. It does not mean every provider has been exercised or the software is installed.
