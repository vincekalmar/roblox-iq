# Starting Island — Floating Orchard

## Purpose

The starting island teaches the entire game language in one compact space:

```text
spawn
→ orchard / first item
→ visualize and train
→ nearby personal plot
→ upgrade study tools
→ see the next comprehension gate
```

It should not feel like a generic lobby.

## Current scale

Target playable footprint: approximately **320–350 studs across**, with **~340 × 340 studs** as the current blockout starting point.

This is a playtest target, not a sacred dimension. Adjust if avatar-scale walking tests show the layout is cramped or empty.

## World orientation — current blockout target

Working coordinates from the current design discussion:
- spawn near `(0, 0.5, 120)`, facing toward negative Z
- orchard centered roughly around `(0, 0, -20)`
- next-area gate roughly around `(0, 0, -135)`

Codex may nudge positions during blockout/visual QA. Preserve the Spawn → Orchard → Gate hierarchy rather than exact numbers.

## Composition

### Spawn
- near the front/lower edge
- intentionally small; no giant lobby plaza
- player spawns facing the orchard
- from spawn the orchard should be the first read, plots the second, future gate the third

### Orchard
- central gameplay/social area
- approximately five apple trees for the first pass
- not a dense forest
- trees should be slightly irregular rather than perfectly symmetrical
- preserve clear space around each interactable tree/item
- use existing Studio tree/apple work as the style anchor where available

### Player plots
- six plots for the current first pass
- three left and three right of the orchard/main corridor
- approximately 55–60 studs square each
- push them far enough toward the perimeter to give the orchard breathing room
- entrances face the central area/main path
- plots are authored progression spaces, not free-build areas

### Main path
- strong route from spawn through/along the orchard to the comprehension gate
- smaller branches to plots and key trees
- avoid turning the entire center into a rigid circular road/grid
- keep early walking distances short

### Next-area comprehension gate
- opposite spawn, beyond the orchard
- compact landmark, not a huge fantasy portal
- slightly elevated by roughly 6–10 studs with a short stair/ramp is a strong current direction because it improves visibility
- working world-space copy: `Requires 250 IQ to Comprehend` (placeholder balance only)
- actual unlock/teleport logic is a separate system task

## Floating-island construction

Desired read:
- grass playable top
- thick/chunky rocky underside
- visible floating silhouette
- sparse edge rock/tree/bush clusters
- optional simple waterfall only if it helps the composition and is cheap to maintain

Use invisible edge barriers as the actual fall-prevention system where necessary. Natural rocks/cliffs/vegetation should visually explain the boundary.

## Plot contents — blockout

Each plot should reserve authored locations for:

1. **Study Station** — central early progression object; simple starting desk/book placeholder
2. **Research Center** — initially a foundation/build location; deeper function is still open
3. **Item Display / reserved space** — open area for future visualized-item representation or other progression content

Do not fill reserved space with random decoration.

## No general shop

Do not build a traditional general shop in the starting island.

Current direction is that routine progression purchases happen directly at authored plot locations. Specialized shops may exist later only if they solve a distinct gameplay need.

## Environment density

Use:
- a few rock clusters
- sparse bushes/flowers/grass accents
- simple fences/entry cues where useful
- enough edge dressing to sell the floating island

Avoid:
- perimeter forest walls
- excessive prop spam
- empty 100-stud lawns
- decoration that hides gameplay objects

## Explorer organization — target

```text
Workspace
└── StartingIsland
    ├── Environment
    │   ├── Island
    │   ├── Paths
    │   ├── Rocks
    │   └── Decorations
    ├── Orchard
    │   ├── Tree01
    │   ├── Tree02
    │   ├── Tree03
    │   ├── Tree04
    │   └── Tree05
    ├── Plots
    │   ├── Plot01
    │   └── ...
    ├── Spawn
    └── Area2Gate
```

Each plot should group its ground/boundary and authored build locations rather than dumping loose Parts into Workspace.

## Visual build workflow

Do not attempt a one-pass finished island.

1. inspect existing Studio content/tree assets
2. block out floating island silhouette and scale
3. place plots and spawn/gate landmarks
4. establish paths
5. screenshot from spawn + overhead and correct composition
6. place the five-tree orchard using the canonical style
7. screenshot/correct again
8. add only enough decoration to make boundaries and hierarchy readable
9. run final visual QA

## Acceptance criteria

- orchard is immediately readable from spawn
- player plots are visible and nearby without dominating the center
- next-area landmark is visible/aspirational beyond the orchard
- five orchard trees feel related but not copy-pasted
- stud usage follows the visual-style rules
- paths make the intended route obvious
- island clearly reads as floating
- normal walking around the first loop does not feel tedious
- no giant lobby or general shop appears
- all created world content is organized and named
