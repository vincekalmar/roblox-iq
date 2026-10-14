---
name: roblox-ui
description: Design, implement, preview, and validate Roblox UI from a shared specification so the intended design and in-game result do not silently drift apart.
---

# Roblox UI Workflow

This is a scaffold. The final component language should be learned from approved Roblox IQ UI references.

## Source of truth

Use `docs/art/UI-STYLE.md` plus approved references. Do not invent a new design system per screen.

Long-term direction: maintain structured UI tokens/specification that can drive both preview output and Roblox implementation.

## Workflow

1. Identify the player decision/information the screen must support.
2. Reuse established tokens/components before inventing new ones.
3. Build a functional first pass.
4. Validate at representative phone, tablet, laptop, and desktop sizes.
5. Check tap targets, overlap, clipping, centering/alignment, text readability, safe areas, and hierarchy.
6. Inspect the real Roblox result, not only a mockup.
7. Promote approved component patterns into the UI spec/reference library.

## Avoid

- emoji used as substitute icons unless intentionally designed
- inconsistent strokes/radii/shadows across neighboring controls
- tiny text or click targets
- layout that only works at one resolution
- mockups that cannot be reproduced by the implementation source

## Automation to earn over time

See `automation/ui/README.md` for planned preview and multi-resolution checks.
