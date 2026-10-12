# Starting Island — Floating Orchard

## Status

The overall composition is **CURRENT DIRECTION** and strong enough to build/playtest:

```text
spawn
→ central apple orchard
→ player plots framing the activity
→ comprehension gate / next-area aspiration
```

Exact coordinates, island silhouette, path curves, and decoration are blockout variables.

## Purpose

Area 1 must teach the whole game without feeling like a tutorial lobby.

The player should understand:
- where to find the first item
- what a personal plot is
- where IQ training happens
- that money improves the plot
- that harder things exist
- that a future area is locked by comprehension

The island should also establish the visual identity of the project.

## Scale

Target playable footprint: approximately **320–350 studs across**.

Use **~340 × 340 studs** as a blockout starting point, not an immutable requirement.

If walking tests show the space is too spread out, shrink it. If six plots crowd the orchard, adjust island silhouette/plot size before making traversal longer.

## Working orientation

Current blockout target:
- spawn near `(0, 0.5, 120)`, facing negative Z
- orchard centered roughly around `(0, 0, -20)`
- comprehension gate roughly around `(0, 0, -135)`

Preserve the hierarchy more than the numbers.

## Top-level layout

```text
                 [AREA 2 / COMPREHENSION GATE]
                        slightly raised
                              ↑

      [Plot 3]          APPLE ORCHARD          [Plot 6]
      [Plot 2]        ~5 irregular trees       [Plot 5]
      [Plot 1]      shared gameplay center     [Plot 4]

                    main path / branches
                              ↑
                           [SPAWN]

                 floating cliff / island edge
```

Plots do not need to form perfect rows in the final art pass; the current three-left/three-right structure exists to keep the center readable.

## Spawn

### Goals
- small and immediate
- player faces gameplay rather than a wall/sign
- first apple/orchard read within seconds
- plots visible peripherally
- next-area landmark visible or at least strongly implied beyond orchard

### Do not build
- giant plaza
- giant title monument
- shop district
- long bridge before gameplay begins
- decorative structure taller/more important than orchard/gate

A simple spawn platform, subtle arch/sign, or path threshold is enough.

## Apple Orchard

The orchard is the central shared gameplay/social space.

### First-pass content
- approximately five apple trees
- one clear tutorial/hero apple interaction
- enough spacing to move/camera comfortably around each tree
- slight irregularity so it feels planted rather than diagrammed

### Tree rules
- existing Studio tree/apple work is the style anchor
- establish one approved canonical tree before producing variants
- derive 3–4 subtle variants through rotation, scale, canopy/branch changes, and apple placement
- do not independently invent five unrelated tree models
- do not turn Area 1 into a dense forest

### Gameplay density

The first prototype does not need five different item mechanics. The orchard can visually contain several trees while one/tutorial apple proves the core interaction.

Once visualization/training is fun, add harder orchard content in a controlled way.

Possible structure later:

```text
first easy apple
→ slightly harder orchard target
→ aspirational object the player cannot yet comprehend
```

Exact objects are open.

## Player plots

Current server/layout concept: **six plots**.

Working plot size: **55–60 studs square**.

### Arrangement
- three generally left of the main orchard corridor
- three generally right
- entrances face inward toward the orchard/main path
- plots pushed toward the perimeter enough to give orchard breathing room

### Plot composition

Each plot reserves authored positions for:

1. **Study Station** — main early progression object
2. **Research Center** — future construction pad/footprint
3. **Item/display/future system space** — intentionally open until the system is chosen

The Study Station should be visible from the plot entrance and preferably from parts of the shared center.

### Plot identity

Plots should feel like personal spaces rather than blank rectangles through:
- clear boundary treatment
- entrance/path opening
- slight framing/fence/landscape language
- progression objects providing the main visual complexity

Do not pre-fill every empty area with decoration that later blocks progression.

## Paths

### Primary route

Strong visual line:

```text
Spawn → Orchard → Comprehension Gate
```

### Secondary routes

Smaller branches connect:
- main corridor to plots
- main corridor/orchard to key trees

### Shape

Prefer gentle curves/offsets over a rigid grid when practical.

Avoid a complete perfect ring road around the orchard unless playtesting proves it reads better.

Paths should be broad enough for multiple players and should remain visually separate from grass.

## Comprehension Gate / Area 2 landmark

Position opposite spawn beyond the orchard.

### Current form
- compact stone/strange arch, doorway, or incomprehensible structure
- slightly elevated ~6–10 studs with short steps/ramp is a strong current direction
- visible enough from spawn/orchard to create aspiration
- not a giant generic fantasy portal

Working requirement copy:

```text
You cannot comprehend this yet.
Requires 250 IQ
```

`250 IQ` is placeholder balance.

Actual teleport/unlock logic belongs to the area-progression system, not the environment blockout.

## No general shop

Do **not** build a traditional general shop in the starting area.

Current progression philosophy:
- Study Station upgrades happen at the Study Station
- Research Center is built at its authored plot position
- other routine plot upgrades happen where they physically appear
- money payout/conversion should not require a long trip to a generic shop

Specialized shops can be considered later only when they offer a distinct experience/system.

## Floating-island construction

The island should clearly read as floating.

### Playable top
- bright grass / stud language per visual style
- readable paths
- mostly level where gameplay needs clarity
- slight authored elevation near gate/landmarks

### Underside
- thick, chunky cliff/rock forms
- layered downward shapes
- visible floating silhouette from useful camera angles
- avoid a single thin flat slab

### Edge treatment

Use sparse:
- rock clusters
- bushes/flowers
- occasional trees/fences
- cliff variation

Do not create a perimeter forest wall.

Use invisible barriers where necessary for reliable safety. Visual edge dressing explains the boundary but does not need to physically block every fall.

### Waterfall

Optional only. Add a small waterfall if it strengthens the floating-island silhouette without becoming a maintenance/performance distraction.

## Decoration budget

The first pass should contain only enough decoration to:
- frame paths
- explain island edges
- make plots feel intentional
- support the orchard mood
- break up large empty areas

Do not polish the island before avatar-scale layout works.

## World-space readability

From spawn, expected hierarchy:
1. orchard / apple gameplay
2. plots / personal progression
3. gate / future area

From orchard center:
1. nearby interactable trees/items
2. plot entrances
3. gate

From a plot entrance:
1. Study Station
2. next build location
3. route back to orchard

## Explorer organization target

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
    │   ├── Plot02
    │   └── ...
    ├── Spawn
    └── Area2Gate
```

Each plot should group its ground, boundary, Study Station position, Research Center position, and reserved display/future-system space.

Avoid hundreds of unnamed loose Parts at Workspace root.

## Build workflow for Codex

Do not one-prompt the finished environment.

### Phase 1 — inspect
- inspect current Studio hierarchy
- identify existing apple/tree assets
- preserve approved assets
- confirm baseplate/current ground state

### Phase 2 — blockout
- floating island silhouette
- six plot footprints
- spawn location
- gate location/elevation
- main path

Then capture:
- spawn view
- overhead/elevated view

Correct scale/composition before continuing.

### Phase 3 — orchard
- canonical tree
- variants derived from it
- ~5 tree placement
- hero/tutorial apple

Capture and correct again.

### Phase 4 — plot readability
- basic plot boundaries/entrances
- Study Station tier-1 placeholder/model
- Research Center pad
- reserved open space

### Phase 5 — restrained polish
- rocks
- sparse plants
- edge dressing
- lighting/material cleanup
- final visual QA

## Acceptance criteria

- first orchard target is obvious from spawn
- plots are visible but do not overpower the center
- gate is a clear long-term landmark
- walking between orchard and plot feels quick
- five trees feel related but not identical copies
- surface/stud treatment follows `VISUAL-STYLE.md`
- island clearly reads as floating
- no giant lobby exists
- no general shop exists
- no area is filled with meaningless decorative clutter
- player cannot easily/constantly fall off the island during normal movement
- all created content is organized and named
- screenshots from spawn and overhead look intentionally composed, not merely technically complete