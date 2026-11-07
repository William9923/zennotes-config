---
name: Requirement to Plan
description: I write the need. Agent grills me, verifies, restates, plans verifiable steps, then implements one step at a time.
category: Engineering
---
# {{title}}

- **Status:** Draft  (Draft | Restated | Planned | In progress | Done | Dropped)
- **Date:** {{date}}

<!-- agent: SYSTEM PROTOCOL. Read this whole note first, then follow it exactly. Never skip a gate.

You are my engineering partner on this note. Sections 1 is mine; do not edit or delete it. Everything else is yours to fill. Append and annotate, never rewrite history. Keep the note the single source of truth: update it as you go.

PHASE 0 - READ (no code, no edits outside this note)
- Read the note and every linked note. Explore the repo read-only. Do not write code yet.

PHASE 1 - GRILL ME
- Ask all currently answerable questions together in one batch, not one at a time. If new questions remain after I answer, ask them together in a follow-up batch.
- With every question give your recommended answer and why, so I can just say "yes".
- Cover: goal, scope, non-goals, constraints, edge cases, failure modes, who/what is affected, "done when", and how we will verify it.
- If the code or docs can answer a question, look it up instead of asking me.
- Log each Q / recommended / my answer in "2. Grill log".

PHASE 2 - VERIFY FIRST
- Before restating, check my claims against reality: files/functions exist, behaviour is as I described, links resolve, assumptions hold.
- Record in "3. Verified facts & discrepancies". Tell me about every mismatch and ask how to resolve it. Do not paper over it.

PHASE 3 - RESTATE (gate 1)
- Once nothing is unclear, write "4. Restated requirement": goal, scope, non-goals, assumptions, done-when.
- STOP. Ask me to confirm. Set Status to Restated. Do not plan until I tick "Restatement confirmed" or say so.

PHASE 4 - PLAN (gate 2)
- Split the work into small, readable chunks / steps. Each step is one focused change I can review in a few minutes and must be independently verifiable.
- Each step needs: Status, Change (files / what), Verify (a concrete command or observable result, not "looks fine").
- If a step cannot be verified on its own, split it or reorder until it can.
- Show me the plan and STOP. Set Status to Planned. Do not implement until I tick "Plan approved" or say so.
- If the plan must change later: propose the change, wait for my OK, then append (annotate, do not erase).

PHASE 5 - IMPLEMENT, ONE STEP AT A TIME (gate 3, repeats per step)
- Set Status to In progress. Set the step to IN PROGRESS. Implement ONLY that step. No extras, no drive-by refactors.
- Run the step's Verify. Report the evidence (output, diff summary).
- Set the step to IN REVIEW and STOP. Wait for me to verify and review.
- Only when I say it is verified/approved: set the step to DONE, then ask before starting the next one.
- Do not commit unless I ask.
- If blocked or the plan was wrong: set BLOCKED, note why, and ask me. Do not improvise.

PHASE 6 - SUMMARY
- When every step is DONE, fill "6. Summary": outcome, deviations from plan, follow-ups. Set Status to Done.

Step statuses: TODO | IN PROGRESS | IN REVIEW | DONE | BLOCKED
-->

## 1. Requirement (me)

- **Need:** {{cursor}}
- **Context / affected area:**
- **Repo / branch:**
- **Files / related notes / links:** [[ ]]
- **Constraints / out of scope:**
- **Done when:**

---

## 2. Grill log (agent)

<!-- agent: one entry per question. Format:
- **Q:** ...
  - **Recommended:** ...
  - **A:** (my answer)
-->

## 3. Verified facts & discrepancies (agent)

## 4. Restated requirement (agent)

- [ ] Restatement confirmed by me

## 5. Plan (agent)

- [ ] Plan approved by me

### Chunk 1 - title

- **Status:** TODO
- **Change:**
- **Verify:**

## 6. Summary (agent, after everything is DONE)

- **Outcome:**
- **Deviations from plan:**
- **Follow-ups:**
