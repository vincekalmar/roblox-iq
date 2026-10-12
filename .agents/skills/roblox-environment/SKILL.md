---
name: roblox-environment
description: Build or substantially modify a Roblox environment using the project's visual style, approved references, staged construction, Studio inspection, screenshots, and correction passes.
---

# Roblox Environment Workflow

Use this workflow for meaningful world/environment creation or redesign.

## 1. Read only relevant project context

Read:
- `docs/art/VISUAL-STYLE.md`
- the specification for the target area under `docs/world/`
- relevant approved references

Do not load unrelated game documentation unless needed.

## 2. Inspect before building

When Roblox Studio MCP is available:
- inspect the target area
- identify existing canonical/reusable assets
- identify content that must be preserved
- understand current scale and coordinates

Do not recreate an approved asset if a suitable canonical version already exists.

## 3. Block out first

Create or adjust only the large structural forms:
- playable footprint
- major elevation
- primary paths
- plot/building footprints
- large landmarks

Do not start with decorative clutter.

## 4. Inspect the blockout visually

When screenshot capability is available, inspect from:
- the primary player/spawn viewpoint
- an overhead or elevated composition view
- any critical gameplay viewpoint

Check:
- scale
- walking distances
- sightlines
- landmark hierarchy
- dead space
- confusing routes

Correct obvious problems before continuing.

## 5. Add primary assets

Add gameplay-relevant environment assets and canonical visual components.

Prefer variation derived from approved assets rather than unrelated one-off styles.

## 6. Inspect again

Perform another visual pass before secondary decoration.

## 7. Add restrained decoration

Decoration should support:
- composition
- navigation
- atmosphere
- landmark emphasis

It should not obscure interactables or fill space merely because it is empty.

## 8. Final QA

Use the visual QA workflow.

A task is not complete simply because every requested instance exists.
