---
name: roblox-map-qa
description: Validate a Roblox environment for traversal, reachability, fall/stuck hazards, scale, sightlines, collision problems, and other measurable gameplay-space issues using project movement rules.
---

# Roblox Map QA

Use after meaningful environment blockout and before declaring a map complete.

## Two kinds of QA

Visual quality is handled by `roblox-visual-qa`. This skill checks whether the space actually works for the player.

## Validate

Where applicable, measure/check:
- spawn can reach required objectives
- required objectives can return to the main loop
- no accidental unreachable high ground
- no reachable spaces the player should not enter
- no pockets/pits the player cannot exit
- falls/cliffs behave as intended
- paths, gaps, stairs, ramps, and jumps fit actual movement values
- collision/intersection does not create obvious blockers
- sightlines are neither unintentionally blind nor excessively open
- traversal time matches the intended pacing

## Data rule

Read movement values from the game's own config/runtime where possible. Clearly label guessed thresholds.

## Workflow

1. Inspect map structure and movement configuration.
2. Run available deterministic checks.
3. Playtest critical routes.
4. Report exact failing locations/conditions.
5. Correct safe in-scope problems.
6. Re-run checks after corrections.

Planned deterministic map checks live under `automation/map/`.
