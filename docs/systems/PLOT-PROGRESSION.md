# Plot Progression

## Status

The authored-plot model and central Study Station are **LOCKED CURRENT DIRECTION**. Exact future structures and upgrade counts remain open.

## Purpose

The player's plot is the persistent physical expression of progression.

A player should be able to look at their own plot—or another player's—and roughly understand advancement without opening a menu.

The plot gives money a concrete purpose and creates a satisfying return point between world/object progression.

## Authored placement

This is **not** a free-build system.

Major plot objects have predetermined locations designed by the game.

The player interacts with those locations to purchase/build/upgrade them.

Benefits:
- controlled visual composition
- obvious next goals
- simple mobile interaction
- predictable space for effects/UI
- strong visible before/after progression
- easier social readability

Do not add drag-and-drop placement unless the game later develops a separate decoration/customization system.

## Current plot footprint

Working size for the starting island: roughly **55–60 studs square** per plot.

The plot entrance should face the central orchard/path.

Key elements should be readable from the entrance and preferably from the shared central area.

## Primary authored locations

### 1. Study Station

The most important early progression object.

See `STUDY-STATION.md`.

Working visual arc:

```text
simple desk + book
→ improved study materials
→ chess / logic setup
→ computer
→ advanced workstation
→ research / cognition technology
```

The exact tiers/costs are not final.

### 2. Research Center

A major build location that begins as an obvious empty foundation/pad/locked structure.

Purpose:
- provide an early-mid-term money aspiration
- make the plot visibly expand beyond one desk
- eventually house deeper systems that do not belong on the basic Study Station

Potential future responsibilities:
- movement technology
- visualization improvements
- item analysis/modifiers
- advanced research branches

Do not decide all of these at once. The Research Center should only gain systems when the base loop needs more depth.

### 3. Item / mental display space

Reserve an open region for representing visualized/mastered content or another future progression system.

Possible uses:
- display current mental object
- showcase best/highest-complexity item
- collection display
- physical representation of memories/research

This space should stay uncluttered until its gameplay role is chosen.

## Purchase interaction

Current preferred pattern:

1. authored location clearly communicates what can be built/upgraded;
2. cost and requirements are readable nearby;
3. player clicks/taps/interacts;
4. server validates money/IQ/prerequisites;
5. construction/upgrade visibly occurs;
6. new state is saved.

Example:

```text
Research Center
$2,500
Requires 150 IQ
[Build]
```

Numbers are placeholders.

Routine plot progression should happen directly on the plot rather than through a distant general shop.

## Construction feedback

Purchases should feel physical.

Prefer:
- quick build animation
- parts/materializing effect
- satisfying sound
- clear before/after silhouette

Avoid upgrades that only change a tiny label from `Lv. 3` to `Lv. 4` while the station looks identical.

## Progress visibility

A stronger plot should communicate advancement through:
- larger/more advanced Study Station
- Research Center presence/tier
- advanced technology/effects
- future item displays
- more sophisticated materials/lighting where appropriate

Do not rely on clutter. A few major silhouettes are better than dozens of tiny purchased props.

## Ownership / multiplayer

Each server plot should clearly belong to one player.

Requirements:
- player is assigned an available plot
- plot state loads from saved progression
- purchase prompts/actions reject other players where appropriate
- visual state is replicated so everyone can see it
- plot state cleans up/reassigns safely when the owner leaves

Exact assignment implementation is an engineering decision, not a design constraint.

## Upgrade dependencies

Use simple prerequisite chains where useful:

```text
Study Station tier
→ enough IQ / enough money
→ Research Center
→ later advanced structures
```

Avoid a confusing web of prerequisites in the early game.

## Customization

Cosmetic customization is not a current core system.

If added later, keep gameplay upgrade locations authored and allow customization around them rather than making progression depend on free placement.

## Server authority / persistence

Server owns:
- plot assignment
- purchased structures
- Study Station tier
- Research Center state
- costs/prerequisites

Persist only durable progression state; reconstruct visual models from configuration when the player joins.

## First-pass acceptance criteria

- player can identify their plot quickly
- plot entrance faces shared gameplay area
- Study Station is clearly the main object
- Research Center location creates a visible future goal
- purchases can be understood without opening a shop menu
- each meaningful purchase visibly changes the plot
- another player can roughly compare plots by sight
- layout leaves deliberate open space for future systems