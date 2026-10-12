# Roblox IQ — Design Bible

This folder is the current source of truth for the game design. It is intentionally more specific than a brainstorm and less rigid than a final GDD.

## Status language

Use these labels when reviewing decisions:

- **LOCKED** — central to the current game identity; do not change casually.
- **CURRENT DIRECTION** — best working design; build prototypes around it, but change it if testing gives a better answer.
- **OPEN** — intentionally unresolved; do not let an implementation agent silently decide it.

## The game in one paragraph

Roblox IQ is a progression game about training the player's mind. The player begins with simple objects such as an apple, attempts to **visualize/comprehend** them, then mentally manipulates or **spins** the obtained mental image to train IQ. Higher IQ lets the player comprehend stronger, stranger, larger, and eventually absurd or impossible things. Money is used to physically improve a personal plot, especially the main **study station** and later facilities such as a Research Center. New areas represent things the player has become intelligent enough to comprehend. The long-term fantasy is going from struggling with an apple to understanding reality-bending objects and concepts.

## Core documents

- `GAME-VISION.md` — what the game is and is not.
- `CORE-LOOP.md` — what the player repeatedly does.
- `PROGRESSION.md` — how capability, areas, items, money, and the plot grow.
- `OPEN-QUESTIONS.md` — decisions that still need playtesting/design work.
- `LESSONS.md` — durable lessons learned during development.

## Art

- `art/VISUAL-STYLE.md` — environment/asset language.
- `art/UI-STYLE.md` — current UI/readability direction.

## World

- `world/STARTING-ISLAND.md` — current Area 1 / floating orchard specification.
- `world/README.md` — world structure and future-area principles.

## Systems

- `systems/VISUALIZATION.md` — obtaining/comprehending items.
- `systems/STUDY-STATION.md` — the treadmill-equivalent training station.
- `systems/PLOT-PROGRESSION.md` — authored plot construction/upgrades.
- `systems/ECONOMY.md` — IQ vs money and the current reward model.
- `systems/AREA-PROGRESSION.md` — comprehension gates and future zones.
- `systems/MOVEMENT.md` — traversal philosophy and future mobility progression.
- `systems/README.md` — system relationships and implementation principles.

## References

- `reference-games/STEAL-AN-EGG.md` — a structural/readability reference, not a clone target.

## Review priority

When reviewing this first pass, focus on these questions first:

1. Is the **visualize → spin/train → grow IQ → unlock harder things** fantasy correct?
2. Should **money come mainly from successfully visualizing items**, while IQ mainly comes from spinning/training them?
3. Is the study station truly the central treadmill-equivalent, or should spinning happen elsewhere?
4. Does the plot progression model feel right: authored purchase/build locations instead of a general shop?
5. Is the starting island structure right: compact floating orchard, plots on the sides, next-area gate ahead?

If those five are aligned, most implementation choices become much easier.