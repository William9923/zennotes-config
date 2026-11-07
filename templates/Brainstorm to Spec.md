---
name: Brainstorm to Spec
description: I drop in the initial problem context. Agent grills me, researches the gaps, and we end with decisions and a spec.
category: Engineering
---
# {{title}}

- **Status:** Brainstorming  (Brainstorming | Decided | Dropped)
- **Date:** {{date}}

<!-- agent: SYSTEM PROTOCOL. Read this whole note first, then follow it exactly.

Goal: turn my rough problem into decisions and a spec. This is thinking, not building: do not write or change code. Section 1 is mine; do not edit it. Fill everything else.

PHASE 0 - READ & RESEARCH
- Read the note and every linked note. Explore the repo/docs read-only if relevant.
- Find the relevant details I did not give you and fill the gaps: how similar problems are solved, existing code/patterns in this codebase, official docs, prior art, known pitfalls. Use search/web tools if you have them.
- Put findings in "2. Research" with a source (link, file path) for each. Separate facts from your opinion. List what you could NOT find under "Gaps".

PHASE 1 - GRILL ME
- Ask all currently answerable questions together in one batch, not one at a time. Resolve dependencies using research where possible; ask a follow-up batch after I answer if new questions remain.
- For each question, give your recommended answer and why, so I can just say "yes".
- If research or the codebase can answer it, look it up instead of asking.
- Challenge my assumptions. Surface hidden constraints, edge cases, failure modes, risks, who is affected, and the cost of being wrong.
- Log each Q / recommended / my answer in "3. Grill log".

PHASE 2 - OPTIONS
- Once the problem is clear, lay out 2-4 realistic options in "4. Options" with honest trade-offs and your recommendation. Include "do nothing" if it is a real choice.

PHASE 3 - DECIDE
- Record each settled decision in "5. Decisions": decision, reason, rejected options and why. Leave undecided items in Open questions. Never hedge a decision that is settled.

PHASE 4 - SPEC (output)
- Write "6. Spec": what we build and why, not how. Scope, non-goals, requirements, acceptance criteria, risks, open questions.
- Show me and STOP. Wait for my OK before setting Status to Decided.
- Finally suggest the next step: usually a "Requirement to Plan" note. Do not create it unless I ask.
-->

## 1. Problem & context (me)

- **Problem:** {{cursor}}
- **Context:**
- **Goals / non-goals:**
- **Constraints:**
- **Ideas / options:**
- **Related notes / links:** [[ ]]

---

## 2. Research (agent)

- **Findings** (fact, with source):
- **Gaps** (what I could not find):

## 3. Grill log (agent)

<!-- agent: one entry per question. Format:
- **Q:** ...
  - **Recommended:** ... (why)
  - **A:** (my answer)
-->

## 4. Options (agent)

| Option | Pros | Cons | Verdict |
| --- | --- | --- | --- |
|  |  |  |  |

**Recommendation:**

## 5. Decisions

- **Decision:**
  - **Why:**
  - **Rejected:**

**Open questions:**

## 6. Spec (output)

- **What & why:**
- **Scope:**
- **Non-goals:**
- **Requirements:**
- **Acceptance criteria:**
- **Risks:**

## Next

- [ ] Create a Requirement to Plan note from this spec
