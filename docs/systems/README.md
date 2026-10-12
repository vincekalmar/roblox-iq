# Systems Overview

This folder describes durable gameplay behavior. System docs explain what the player experiences and the architectural boundaries Codex should respect.

## Current core system chain

```text
World Area
→ Visualization / Comprehension
→ Mental Item State
→ Study Station / Spinning
→ IQ
→ Area & Technology Access

Visualization / Item Value
→ Money
→ Plot Purchases
→ Better Study / Research Infrastructure
→ Faster / deeper progression
```

## Current system documents

### `VISUALIZATION.md`
How the player comprehends world objects and turns them into usable mental images.

### `STUDY-STATION.md`
The primary plot training station and treadmill-equivalent.

### `PLOT-PROGRESSION.md`
How authored plot buildings/upgrades are purchased and displayed.

### `RESEARCH-CENTER.md`
The first major plot expansion and likely home for deeper technology, visualization, movement, or analysis upgrades.

### `ECONOMY.md`
Roles of IQ and money and the current recommended reward separation.

### `AREA-PROGRESSION.md`
How new content/areas become comprehensible.

### `MOVEMENT.md`
How traversal should improve without turning IQ into arbitrary run speed.

## Architectural principles

### Server authoritative

Server should own:
- IQ
- money
- item discovery/ownership state
- purchase validation
- plot progression
- area unlock state
- durable progression

Client can own:
- input
- camera
- responsive visual/audio effects
- minigame presentation
- local UI state

Do not trust a client event that says "give me 500 IQ" or "I succeeded." Validate state/actions server-side.

### Data-driven progression

Use configuration modules for:
- item definitions
- area definitions
- Study Station tiers
- Research Center upgrades
- plot upgrade definitions
- costs
- IQ requirements

Avoid scattering balance numbers across scripts.

### Separate presentation from progression state

Visual models/effects should reflect durable state rather than *be* the durable state.

Example:

```text
saved StudyStationTier = 3
→ server loads player
→ plot renderer builds tier-3 station model
```

Do not save every decorative Part if the same state can be reconstructed from configuration.

### Build the smallest working system first

For the earliest prototype:
- one apple
- one visualization interaction
- one mental-item state
- one Study Station training loop
- IQ
- money
- one visible Study Station upgrade

Do not build mutations, prestige, collections, research trees, and ten areas before that loop is fun.

## Persistence direction

Eventually save at minimum:
- IQ
- money
- Study Station tier
- Research Center build/tier state
- purchased plot progression
- durable item discovery/mastery if the final design uses it
- area unlocks when they are not purely derived from IQ

Do not persist temporary visual effects, open UI panels, or transient minigame state.

Exact DataStore/profile architecture can be chosen during implementation.

## Events and remotes

Prefer remotes that describe player intent:

```text
RequestVisualization(objectId)
SubmitVisualizationInput(...)
RequestStudyUpgrade(tier)
RequestBuildPlotUpgrade(id)
RequestResearchUpgrade(id)
```

rather than remotes that directly request rewards:

```text
GiveMoney(1000)
SetIQ(500)
```

## Testing priority

Every core system should have:
- normal success case
- insufficient-IQ/money case
- repeated-input/spam case
- invalid player/object case
- mobile interaction check where relevant
- server-side validation check

## System additions

Before adding a new system, answer:

1. What player problem does it solve?
2. Which existing resource/system is insufficient?
3. Does it strengthen the IQ/comprehension fantasy?
4. Can the first version be smaller?

This is particularly important for currencies, prestige, pets, research points, rarity systems, and monetization layers.