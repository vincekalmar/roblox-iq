---
name: roblox-animation
description: Create and validate Roblox character/object animations using pose/timing data, Studio or Blender tooling, visual contact-sheet review, and approved motion references.
---

# Roblox Animation Workflow

## Direction

Animation should be reviewable as data and as visuals. For agent-generated animation, store the intended poses/timings explicitly enough that the motion can be reproduced and adjusted.

## Workflow

1. Define purpose, rig, duration, loop behavior, and gameplay constraints.
2. Gather approved motion references when style matters.
3. Block key poses before polishing curves/secondary motion.
4. Export/render representative frames or a contact sheet.
5. Inspect silhouette, weight, continuity, timing, clipping, and Roblox readability.
6. Test the real animation on the actual Roblox rig in context.
7. Save reusable pose/timing lessons after approval.

## Tool choice

- simple Roblox interactions: Studio Animation Editor is acceptable
- cinematic/multi-object work: use an appropriate timeline tool when helpful
- custom rigs/complex transforms: Blender may be appropriate

See `automation/animation/README.md` for the planned contact-sheet pipeline.
