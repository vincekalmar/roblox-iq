# Agent Governance

This document defines how project knowledge, tasks, references, implementation state, and human decisions relate to each other.

Its purpose is to prevent drift without turning routine development into process overhead.

## 1. Authority hierarchy

When two sources disagree, use this order:

1. explicit current human direction
2. current durable project documentation
3. approved/canonical project artifacts
4. current task instructions
5. inspiration and exploratory references

A task may narrow the scope of durable documentation, but it may not silently override it.

If a task conflicts with durable documentation, stop and surface the conflict. The durable documentation should be corrected first if the design has actually changed.

`OPEN` decisions are intentionally unresolved. Do not resolve them merely because implementation would be easier with an answer.

## 2. Artifact roles

Each project artifact has a distinct job.

### `AGENTS.md`

Repository-wide operating rules, guardrails, ownership boundaries, routing, and pointers to this governance model.

It should not become a second game-design document.

### Durable docs

`docs/` contains product, system, world, art, technical, and workflow knowledge that should survive individual tasks.

Use the project's status language:

- `LOCKED` — central direction; do not change casually
- `CURRENT DIRECTION` — best working answer; prototype around it and revise deliberately when evidence supports a better answer
- `OPEN` — unresolved; requires human/design resolution before being treated as final

### Skills

`.agents/skills/` defines reusable discipline-specific execution and validation workflows.

Skills should encode process and judgment, not task-specific values or project-specific design decisions unless the skill is intentionally project-local.

### Tasks

Tasks define the current unit of work: goal, scope, task-specific constraints, unusual context, and completion conditions.

Tasks should not duplicate the design bible or redefine durable project knowledge.

### References

References provide visual, interaction, or quality evidence. They do not automatically define product behavior or durable rules.

### Automation

`automation/` contains deterministic helpers for recurring, tested problems.

Do not add speculative automation before a real repeated need exists.

### Tests

Tests encode executable behavior guarantees. They are not the home for design rationale.

### Studio

Roblox Studio owns hand-authored world and visual content adopted into the game.

The repository should identify the canonical development place/experience and intended Studio roots once those identifiers are stable enough to register.

### `src/`

`src/` owns Rojo-managed code. Do not create a second independent Studio-owned copy of Rojo-managed source.

## 3. Mutability boundaries

Agents may autonomously iterate on reversible implementation details that remain inside the current task and do not change durable design intent.

Examples include:

- blockout dimensions
- spacing and composition within documented constraints
- code structure that preserves specified behavior
- reversible visual experiments
- temporary placeholders explicitly allowed by the task/docs
- implementation fixes discovered during validation

Agents should stop for human resolution or explicit approval before:

- changing a `LOCKED` design direction
- resolving an `OPEN` design question
- changing high-level product/system/world intent because implementation is inconvenient
- promoting inspiration or an experiment into an approved reference
- declaring or replacing a canonical asset
- publishing a Roblox experience/place
- performing a destructive Studio migration that is difficult to reverse
- replacing approved work when replacement was not requested

An agent may propose any of these changes. It should not silently perform the promotion or design decision.

## 4. Lifecycle vocabulary

Use these states to distinguish exploration from accepted project knowledge.

### Inspiration

External or internal material worth looking at.

No commitment. Inspiration may be used by a task when explicitly relevant, but does not override durable docs.

### Experiment / Candidate

Something created or tested to explore a direction.

It is intentionally mutable and may be iterated on or discarded.

### Approved Reference

Human-approved evidence of a quality or direction worth repeating.

Approval applies only to the qualities described in its accompanying note. An approved screenshot does not automatically make every visible object canonical.

### Canonical Asset

The actual reusable project asset future work should preserve/reuse unless replacement is explicitly requested.

A canonical asset should have a known Studio/repository location and enough provenance to identify what was approved.

### Durable Rule

A reusable constraint or principle promoted into the appropriate durable project documentation.

Approval of an asset or screenshot does not automatically create a durable rule.

### Rejected

A tested direction that should not be repeated without new evidence. Record the reason for rejection when it teaches something reusable.

### Deprecated

Something previously accepted but intentionally superseded. Record what replaces it when that relationship would otherwise be ambiguous.

## 5. Promotion rules

Promotion is deliberate, not automatic.

Typical flow:

```text
inspiration
→ experiment / candidate
→ human review
→ approved or rejected

approved work
→ optionally approved reference
→ optionally canonical asset
→ optionally durable rule
```

These are separate promotions.

For a promotion that matters beyond the current task, preserve enough evidence to answer:

- what was approved
- which qualities were approved
- who/what provided the approval
- where the resulting artifact lives
- what older artifact/rule it supersedes, if any

Do not create ceremony for trivial implementation details.

## 6. Conflict and ambiguity handling

When information conflicts:

1. determine whether the conflict is real or whether one source only narrows another
2. apply the authority hierarchy above
3. if a lower-authority source contradicts durable direction, do not implement the contradiction
4. if durable docs conflict with each other, stop and surface the conflict
5. if current human direction intentionally changes durable design, update the durable docs before treating the new direction as normal implementation context

When information is missing:

- use a reversible placeholder only when the docs/task permit one and it does not resolve an `OPEN` decision
- otherwise stop and ask for the missing decision

## 7. Tool and ownership boundary

Choose tools based on artifact ownership and task needs rather than availability alone.

- use Studio MCP for live Studio inspection, hand-authored environment/visual work, screenshots, and playtesting
- use filesystem/Rojo tooling for `src/` code
- use specialist skills for discipline workflow
- use automation only when a tested deterministic helper exists or a repeated real problem justifies creating one
- use Blender/external generation only when it materially improves an asset that Studio-native construction cannot reasonably produce at the required quality

External/generated assets do not become canonical merely because they were imported successfully.

## 8. Learning loop

After a task or failure, promote only the reusable lesson:

- judgment/process lesson → skill or governance rule
- deterministic repeated operation → automation
- behavior guarantee → test
- visual/taste lesson → approved or rejected reference
- product/system/world decision → durable project doc

One-off accidents should not become permanent rules.

## 9. Completion and human review

A technically valid output may still be an experiment.

When a task requests human review, completion means the work is ready to evaluate, not automatically approved or canonical.

Human review may result in:

- iterate
- reject
- approve as-is
- promote selected qualities to an approved reference
- promote an asset to canonical
- update durable documentation with a reusable rule or design decision

Keep these outcomes distinct.
