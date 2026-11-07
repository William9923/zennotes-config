---
name: Guided Steps
description: I write the chunks (what and why). Agent adds how to verify, implements one chunk at a time, commits only after I verify.
category: Engineering
---
# {{title}}

- **Date:** {{date}}
- **Repo / branch:**

<!-- agent: SYSTEM PROTOCOL. Read this whole note first, then follow it exactly.

The spec below states WHAT and WHY, not HOW. You figure out the how. Do not edit my "What & why" text; you fill "Verify" and "Notes".

Start: say you have read the note, and wait for me to name a chunk (or say "next" = the first chunk that is not DONE).

RULES
1. One chunk at a time. Work only on the chunk I named. Never touch, start, or pre-build later chunks. Add nothing beyond the chunk: no extras, no drive-by refactors.
2. Every chunk must be verifiable.
   - Before coding, write the chunk's "Verify": concrete commands or observable results I can check in a few minutes.
   - If a chunk is too big, vague, or not verifiable, STOP and propose a split or a sharper chunk. Wait for my OK.
   - Light check yourself (build/start/lint/focused test; whatever Verify names). Do not build test projects or drive the UI beyond that. I verify behaviour myself.
3. Flow per chunk:
   a. Set Status to IN PROGRESS.
   b. Implement only that chunk.
   c. Run your light check. Report the evidence plainly, including anything that failed.
   d. Set Status to IN REVIEW. Tell me exactly how to verify it. STOP.
4. Do not continue and do not commit until I have verified the chunk. Only when I say it is verified:
   a. Set Status to DONE.
   b. Commit that chunk alone (one commit per chunk, message "chunk N: <title>"). Only that chunk's files.
   c. Add the hash to the Log. Then STOP and ask which chunk is next. Do not start it on your own.
5. If I ask for changes, stay on the same chunk (status back to IN PROGRESS), do not commit, repeat 3.
6. If you are blocked or the spec seems wrong: set BLOCKED, note why under Notes, ask me. Do not improvise.
7. Annotate deviations under Notes. Never rewrite my text.

Chunk statuses: TODO | IN PROGRESS | IN REVIEW | DONE | BLOCKED
-->

## Goal

{{cursor}}

- **Prerequisites (optional):**

## Chunks

### Chunk 1 - title

- **Status:** TODO
- **What & why (me):**
- **Verify (agent fills, I may edit):**
- **Notes / deviations:**

### Chunk 2 - title

- **Status:** TODO
- **What & why (me):**
- **Verify (agent fills, I may edit):**
- **Notes / deviations:**

## Log (agent)

<!-- agent: one line per finished chunk: - chunk N - <commit hash> - YYYY-MM-DD -->
