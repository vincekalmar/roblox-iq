---
name: roblox-visual-qa
description: Visually inspect a Roblox scene or UI against project style rules and approved references, identify concrete problems, and correct safe issues before completion.
---

# Roblox Visual QA

Use this workflow after meaningful environment or UI work.

## Inspect

When Studio screenshot tools are available, capture views that represent actual player experience rather than relying only on Explorer hierarchy or coordinates.

## Evaluate

Check the result against the project documentation and approved references.

### Composition
- Is there a clear focal hierarchy?
- Does the player know where to go?
- Are landmarks readable from important viewpoints?
- Is there excessive symmetry or accidental visual noise?

### Scale
- Do paths, props, buildings, trees, and interaction spaces feel correct relative to the Roblox avatar?
- Are traversal distances appropriate?

### Style consistency
- Are materials and surface treatments consistent with `VISUAL-STYLE.md`?
- Are studs used exactly where the style rules say they should be used?
- Are canonical assets being respected?
- Did newly generated objects drift into a different art style?

### Density
- Is the scene too empty?
- Is it cluttered?
- Does decoration compete with gameplay objects?

### Gameplay readability
- Are interactables visually distinct?
- Are plot entrances and paths understandable?
- Can the player see the next objective where appropriate?

## Correct

If an identified problem can be safely corrected inside the current task scope, fix it rather than merely reporting it.

After meaningful corrections, inspect again.

## Completion

Summarize remaining limitations only after the correction loop is complete.
