# Agent Workflow Architecture

## Core idea

Codex is the coordinating agent, but each discipline has its own workflow, references, validation, and eventually deterministic helpers.

```text
roblox-game-manager
        |
        +-- roblox-code
        +-- roblox-environment
        +-- roblox-map-qa
        +-- roblox-ui
        +-- roblox-vfx
        +-- roblox-audio
        +-- roblox-animation
        +-- roblox-3d
        +-- roblox-visual-qa
```

## Three layers

### Skills
Describe how a discipline should be performed and when to use its helpers.

### Automation
Scripts/checks for stable, repeatable operations. These should reduce repeated reasoning and prevent known failures.

### References
Examples that teach taste and quality. Approved and rejected examples need notes explaining why.

## Failure-to-tool loop

```text
agent attempts task
-> something goes wrong
-> diagnose root cause
-> fix current task
-> decide whether failure is reusable
   -> rule if judgment/process issue
   -> script/check if deterministic
   -> test if code behavior
   -> reference if taste/visual issue
-> next task inherits the improvement
```

## Completion standard

A feature is not complete merely because files/Instances exist. Depending on scope, completion includes:
- code verification
- tests
- Studio playtest
- screenshots/visual QA
- map traversal QA
- responsive UI QA
- VFX phase review
- animation visual review
- asset optimization checks

Only apply checks relevant to the task.
