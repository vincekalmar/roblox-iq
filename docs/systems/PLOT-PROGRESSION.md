# Plot Progression

## Purpose

The player's plot is the persistent physical expression of progression.

It should provide the same kind of immediate readability that successful tycoon/simulator bases provide: a player can look at a plot and understand roughly how advanced its owner is.

## Authored placement

This is **not** a free-build system.

Major plot objects have predetermined authored locations. The player buys/builds/upgrades content at those positions.

This gives the game:
- controlled composition
- clear progression
- simpler interaction/readability
- visible before/after changes
- predictable space for later upgrades

## Study Station

Primary early progression station and treadmill-equivalent.

Working visual progression:

```text
basic desk + book
→ upgraded study/books
→ chess/study setup
→ computer
→ advanced computer
→ high-IQ research/technology setup
```

The exact tier list, stat effects, and costs are not locked.

The station should be placed so its visual progression is easy to see from the plot entrance and, where possible, from the shared central area.

## Research Center

A predetermined future build location that becomes available after some early progression.

Current intended role:
- visible next aspiration on the plot
- home for deeper upgrades/research later

Exact systems housed inside it remain open. See `docs/OPEN-QUESTIONS.md`.

## Item / display space

Reserve space for future representation of items the player has visualized/obtained or for another progression system.

Do not commit this space to decorative clutter before the system design is decided.

## Purchase interaction

Current direction:
- player approaches/clicks/interacts with the authored upgrade/build location
- requirement/cost is shown clearly
- server validates the purchase
- successful purchase produces a visible physical construction/upgrade

Avoid forcing routine plot progression through a distant general shop.

## Social readability

Prefer upgrades with strong silhouettes and obvious visual changes over invisible percentage increases.

When practical, another player should be able to infer progression from:
- study-station tier
- presence/level of Research Center
- future plot structures
- displayed advanced items/content
