# Starting Island — Apple Orchard Hub

## Status

The starting-island structure below is the current source of truth.

The exact dimensions, coordinates, plot count, island silhouette, tree models, decoration, and path curves remain flexible until they are validated in Studio.

The intended spatial structure is:

Spawn
→ horseshoe-shaped player plot neighborhood
→ central shared area
→ Apple Orchard
→ future Area 2 gate / next-area progression

The important part is the relationship between these spaces, not an exact diagram.

---

## Purpose

The starting island should establish the game's world, social layout, and early progression spaces without feeling like a large empty lobby.

The island should immediately communicate:

- this is a floating Roblox world
- players have personal plots
- other players' plots are nearby and socially visible
- there is a shared central space
- the Apple Orchard is a distinct destination
- progression continues beyond the orchard into later areas

The island should be compact and intentionally occupied.

Avoid large areas of grass that exist only because the island was made too large.

---

## High-Level Layout

The current preferred structure is approximately:

                      FUTURE AREA 2
                          ↑

                    APPLE ORCHARD
                distinct shared area

                         ↑

                  CENTRAL SHARED AREA
             future shops / events / systems

                  ↗               ↖

              [PLOT]             [PLOT]

          [PLOT]                     [PLOT]

              [PLOT]             [PLOT]

                       SPAWN

This diagram is conceptual.

The final island does not need to be symmetrical.

The plot neighborhood should read as a horseshoe surrounding or framing the central shared space while leaving a clear opening toward the orchard.

---

## Island Scale

Do not design the island around a fixed numerical size before testing it at Roblox avatar scale.

The island should be only as large as needed to comfortably support:

- the player plots
- the central shared area
- the Apple Orchard
- paths and circulation
- reasonable environmental decoration
- future progression spaces that are already intentionally reserved

Prefer shrinking or reshaping the island over preserving large unused lawns.

The island should still leave enough space for:

- multiplayer movement
- normal Roblox camera behavior
- future plot progression objects
- orchard interactions
- visual breathing room

Compact does not mean cramped.

---

## Spawn

Spawn should sit near the open end of the horseshoe-shaped plot neighborhood.

The player should enter the island facing useful content rather than a wall, monument, or empty field.

From the spawn area, the player should be able to understand that:

1. player plots exist nearby
2. a shared central area exists ahead
3. the Apple Orchard lies beyond the shared area

Spawn itself should remain visually simple.

Do not create a giant spawn plaza or oversized welcome structure.

---

## Player Plot Neighborhood

The current direction is a horseshoe-shaped social neighborhood.

### Plot Count

Target approximately **5–6 plots**.

The exact number is not locked.

Use the number that fits naturally once the island is tested at player scale.

Do not force six plots into the island if doing so creates poor spacing, awkward circulation, or excessive island size.

Likewise, do not reduce the plot count merely to make composition easier if six fit comfortably.

### Arrangement

Plots should:

- form a clear horseshoe or partial horseshoe
- feel like one social neighborhood
- remain visually connected to each other
- generally face inward toward shared circulation
- leave an opening toward the central area and orchard
- allow players to see other players' progression during normal movement

The plots should not be scattered independently around the entire island.

### Plot Size

Plot dimensions are not final.

They should be large enough to eventually contain authored progression objects and visual upgrades without requiring oversized empty plots at the beginning of the game.

Determine practical plot dimensions through Studio blockout and avatar-scale testing.

### Plot Interiors

The detailed contents of each plot are outside the scope of the initial environment build.

The map only needs to reserve enough usable space for future plot progression.

Do not fill empty plot space with permanent decoration before the plot systems require it.

---

## Central Shared Area

The center of the horseshoe should contain a shared communal space.

This area is intentionally distinct from both:

- the personal plot neighborhood
- the Apple Orchard

Its long-term purpose is to provide space for shared world content such as:

- shops
- events
- communal systems
- temporary event objects
- other shared features that benefit from a central location

The exact contents are not decided yet.

Do not prematurely build permanent shops, event structures, or gameplay systems simply because space has been reserved for them.

For the initial map, this area should mainly establish:

- circulation
- visual separation between plots and orchard
- room for future shared content
- a natural transition through the island

It should not become a giant empty plaza.

---

## Apple Orchard

The Apple Orchard is a distinct shared environment beyond the central area.

It should feel like the player has moved from:

personal/social plot space
→ shared central space
→ orchard gameplay space

The orchard should not simply be trees scattered inside the plot neighborhood.

### Orchard Structure

The first orchard should contain several apple trees with enough spacing for:

- player movement
- camera movement
- multiplayer activity
- future apple interactions
- clear sightlines

The orchard should feel intentionally planted without becoming a dense forest.

Slight irregularity is preferred over a rigid tree grid.

### Trees

The exact canonical Apple Orchard tree has not yet been finalized.

For initial environment work:

- create or prototype trees based on the current task's provided inspiration
- keep the tree language coherent
- avoid creating several unrelated tree styles
- prioritize strong Roblox-native silhouettes and readable construction

Once a tree design is explicitly approved, it can become a canonical asset and future orchard variants should derive from it.

### Apples

Apple gameplay and final apple assets are not required for the first starting-island environment pass.

The environment can establish the orchard and tree language before apple functionality is implemented.

---

## Orchard Ground and Greenery

The detailed Apple Orchard grass, shrubbery, and foliage language is still being explored.

Current environment work may use task-provided inspiration to experiment with:

- studded grass treatment
- stylized ground patterns
- orchard-specific shrubbery
- small planted greenery
- decorative grass forms

These experiments do not automatically become permanent global visual rules.

Only approved results should later be promoted into durable visual-style documentation or canonical assets.

---

## Paths and Circulation

The island should have a clear natural flow:

Spawn
→ plot neighborhood
→ central shared area
→ Apple Orchard
→ future Area 2 progression

Paths should support this flow without turning the island into a rigid road grid.

Prefer:

- broad readable circulation
- gentle curves or offsets where they improve composition
- short travel distances
- clear entrances into plots
- clear transition into the orchard

Avoid:

- unnecessary ring roads
- excessively long paths
- paths created solely to fill space
- confusing branching before gameplay requires it

The player should not need a minimap to understand the starting island.

---

## Future Area 2 Gate

A progression gate toward Area 2 will eventually sit beyond the Apple Orchard.

Its exact design, position, requirement, and gameplay behavior are not part of the first starting-island environment task.

The island composition should still leave a natural continuation beyond the orchard so the future gate can be added without rebuilding the entire map.

Do not build the Area 2 gate until its dedicated task.

---

## Floating-Island Construction

The starting area should clearly read as a floating island.

### Playable Top

The playable surface should:

- support the project's Roblox-native visual language
- use readable terrain/platform construction
- provide clear distinction between paths, plots, shared space, and orchard
- remain easy to navigate

### Island Silhouette

The island should have an intentional outer shape.

Avoid:

- a simple rectangular baseplate
- a perfect circle with no composition reason
- a huge landmass surrounding a small amount of content

The outer silhouette should follow the internal layout.

The horseshoe plot neighborhood, central area, and orchard should help determine the island shape rather than being placed onto an arbitrary slab.

### Underside

The underside should make the island visibly read as floating.

Use chunky layered forms rather than one thin flat plate.

The underside does not need final detail during early blockout work.

---

## Environment Density

Every major area of the island should have a reason to exist.

When evaluating empty space, ask whether it supports:

- gameplay
- movement
- camera readability
- social visibility
- future reserved content
- composition
- environmental atmosphere

If it does none of these, reduce or remove it.

Do not create large lawns with the assumption that decoration will make them interesting later.

Fix the composition first.

---

## Decoration

Decoration should support the map rather than determine its structure.

Potential starting-area decoration may eventually include:

- orchard greenery
- shrubs
- grass details
- rocks
- small trees
- edge treatment
- simple environmental props

Do not decorate heavily until the island layout works at player scale.

The current task may use provided inspiration to explore environment styling, but inspiration is not automatically source of truth.

---

## Visual Inspiration vs Source of Truth

Project documentation defines what the starting island is supposed to accomplish.

Task-specific inspiration may be used to explore how the environment could look.

Inspiration files:

- are temporary visual guidance
- may contain ideas worth testing
- are not automatically permanent design rules
- should not override this document
- should not be copied for unrelated layout/gameplay decisions

Once a result is reviewed and explicitly approved, successful visual decisions may be promoted into:

- approved references
- canonical assets
- `VISUAL-STYLE.md`
- other appropriate source-of-truth documentation

Until then, inspiration remains exploratory.

---

## Current Build Order

The starting island should be developed in stages.

### Phase 1 — Starting Island Environment

Build:

- floating island
- horseshoe plot neighborhood
- central shared area
- Apple Orchard
- orchard trees
- paths and circulation
- enough environment treatment to evaluate the intended visual language

Do not add gameplay functionality.

### Phase 2 — Apple / Orchard Gameplay Assets

After the island and tree direction are approved:

- develop the apple asset
- establish the first orchard interaction presentation
- refine orchard assets as needed

### Phase 3 — Area 2 Gate

After the starting island is established:

- design and place the Area 2 progression gate
- validate its relationship to the orchard and island composition

Additional systems and polish should be added only when their own tasks require them.

---

## Studio Ownership

The starting island is Studio-owned environment content.

Roblox Studio should own:

- island geometry
- plots
- orchard environment
- trees
- paths
- decorative environment assets
- future gate geometry

Rojo-managed filesystem code should not be used as a second representation of hand-authored environment geometry unless a specific system requires procedural generation.

---

## Explorer Organization

Keep the Studio hierarchy organized around meaningful environment groups.

Suggested structure:

Workspace
└── StartingIsland
    ├── Environment
    │   ├── Island
    │   ├── Paths
    │   └── Decorations
    │
    ├── Plots
    │   ├── Plot01
    │   ├── Plot02
    │   ├── Plot03
    │   ├── Plot04
    │   ├── Plot05
    │   └── Plot06
    │
    ├── CentralArea
    │
    ├── Orchard
    │   ├── Trees
    │   ├── Ground
    │   └── Greenery
    │
    └── Spawn

The final hierarchy may evolve as the environment becomes more complex.

Avoid large numbers of unnamed loose Parts directly under `Workspace`.

---

## Player-View Readability

From spawn, the intended hierarchy is:

1. nearby social plot neighborhood
2. central shared area
3. Apple Orchard beyond it

From the central shared area:

1. surrounding player plots
2. orchard entrance / transition
3. space reserved for future communal activity

From inside the orchard:

1. orchard trees and future gameplay space
2. clear route back toward the central area
3. natural continuation toward the future Area 2 gate

These relationships are more important than exact coordinates.

---

## Acceptance Criteria for the Starting-Island Environment

The starting island direction is working when:

- the island clearly reads as floating
- the plot neighborhood clearly reads as a horseshoe
- approximately 5–6 plots fit comfortably at avatar scale
- the plots feel socially connected
- the central shared area is clearly distinct from the plots
- the central area has useful future capacity without feeling like an empty plaza
- the Apple Orchard reads as its own destination
- the orchard does not feel blended into the plot neighborhood
- movement between plots, central area, and orchard feels quick
- there is little or no meaningless dead grass
- the island silhouette feels designed around its content
- orchard trees form a coherent visual family
- the environment feels intentionally Roblox-native
- the result has been inspected from normal player camera and elevated viewpoints
- the result has been playtested for basic traversal
- the layout has been visually iterated rather than accepted after the first technically valid build

Detailed gameplay functionality is not required for this stage.