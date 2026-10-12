# Task — <name>

## Goal

Describe the concrete result that should exist when the task is complete.

Good:

> Create the starting-island structural blockout with six plots, spawn, main path, orchard placeholders, and the Area 2 gate. Do not add decorative polish yet.

Bad:

> Make the map cool.

## Why this task exists

What player/design problem does this solve?

## Relevant context

List only the files/references needed for this task.

Example:
- `docs/world/STARTING-ISLAND.md`
- `docs/art/VISUAL-STYLE.md`
- `references/approved/<relevant reference>`

Do not tell Codex to load every project document unless genuinely necessary.

## Current Studio / code state

Record important existing objects/files that must be inspected or preserved.

Example:
- existing canonical apple tree in Workspace
- existing apple model
- current HUD should not be replaced

## Requirements

- 
- 
- 

## Do not change

Explicitly protect unrelated work.

- 
- 

## Allowed placeholders

List anything that can be temporary without becoming a design decision.

Example:
- exact IQ thresholds can use configurable placeholder values
- Study Station can use a blockout model

## Acceptance criteria

Write objective checks.

- 
- 
- 

## Visual checks

Required when changing world/UI.

Specify actual viewpoints, for example:
- default player camera from spawn
- orchard center looking toward plots
- player camera from plot entrance
- elevated/overhead composition view
- close-up of any new hero asset

For each view, state what should be readable.

## Gameplay checks

List runtime behavior to playtest.

Examples:
- prompt appears at correct distance
- insufficient IQ state works
- purchase rejects insufficient money
- mobile/touch interaction is usable
- another player cannot purchase your plot upgrade

## Validation

For filesystem code changes, run the repository verification script when possible.

Windows:

```powershell
./scripts/verify.ps1
```

For Roblox-runtime behavior, also playtest in Studio.

## Completion report

Codex should finish with:
- what changed
- what was actually playtested/visually inspected
- screenshots/views inspected for visual work
- any placeholder values used
- remaining issues that genuinely could not be resolved inside scope

Do not treat "instances/scripts were created" as sufficient completion.