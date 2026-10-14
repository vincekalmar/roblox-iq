---
name: roblox-vfx
description: Build Roblox VFX from an approved library of reusable effect primitives, validate timing and readability across key phases, and grow the library from successful legal-to-use assets and project-created effects.
---

# Roblox VFX Workflow

## Direction

VFX should be composed from reusable building blocks rather than random emitter settings invented from scratch every time.

The library may include project-created or legally usable primitives such as bursts, rings, glows, beams, trails, sparks, smoke, shockwaves, energy wisps, and screen/world accents.

## Workflow

1. Read `docs/art/VFX-STYLE.md` and relevant gameplay context.
2. Search the approved VFX library before creating new primitives.
3. Define the beat: anticipation -> action/impact -> resolve.
4. Compose the smallest coherent effect.
5. Test at actual gameplay camera distance and on lower-intensity hardware/settings when practical.
6. Inspect representative start/middle/end phases.
7. Correct clutter, timing, scale, color, layering, and gameplay obstruction.
8. Save strong reusable primitives/recipes with names and usage notes.

## Phase-freeze direction

Short effects are hard to screenshot consistently. The planned QA helper will trigger an effect, pause/freeze it at selected timestamps, and capture representative phases for visual review. See `automation/vfx/README.md`.

## Constraints

- do not obscure interaction targets for spectacle
- routine actions must leave headroom for major unlocks
- do not copy or redistribute third-party VFX libraries without permission
