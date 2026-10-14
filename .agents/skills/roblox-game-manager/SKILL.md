---
name: roblox-game-manager
description: Coordinate multi-discipline Roblox work by routing code, environment, UI, VFX, audio, animation, and 3D tasks to the relevant project skills, then integrate and validate the result.
---

# Roblox Game Manager

Use this skill for features that cross more than one discipline or when the user asks to build a complete gameplay slice.

## Job

Do not personally improvise every discipline. Break the task into the smallest useful sequence and use the relevant specialist workflow.

## Routing

- gameplay/code architecture -> `roblox-code`
- environment/world creation -> `roblox-environment`
- movement/reachability/map validation -> `roblox-map-qa`
- UI -> `roblox-ui`
- VFX -> `roblox-vfx`
- sound/audio feedback -> `roblox-audio`
- character/object animation -> `roblox-animation`
- external/custom 3D assets -> `roblox-3d`
- final visual inspection -> `roblox-visual-qa`

## Workflow

1. Read only the game/design docs required for the requested feature.
2. Inspect current filesystem and Studio state before changing either.
3. Write down the feature's acceptance criteria and which disciplines are actually required.
4. Build the smallest playable vertical slice first.
5. Route each discipline to its specialist workflow.
6. Integrate in Studio/Rojo without creating duplicate sources of truth.
7. Run code verification and applicable discipline validation.
8. Playtest the integrated behavior.
9. Inspect screenshots/visual output when presentation changed.
10. Fix safe in-scope issues before completion.

## Learning loop

When a failure is likely to recur:
- record the lesson in the most relevant skill or project lesson file
- if the fix can be deterministic, add or improve a reusable script/check under `automation/`
- if the result establishes taste, save an approved or rejected reference with an explanation

Do not turn one-off accidents into permanent rules without evidence.
