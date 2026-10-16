# Roblox IQ — Design Bible

This folder is the current source of truth for the game design. It is intentionally more specific than a brainstorm and less rigid than a final GDD.

## Status language

Use these labels when reviewing decisions:

- **LOCKED** — central to the current game identity; do not change casually.
- **CURRENT DIRECTION** — best working design; build prototypes around it, but change it if testing gives a better answer.
- **OPEN** — intentionally unresolved; do not let an implementation agent silently decide it.

## The game in one paragraph

Roblox IQ is a progression game about training the player's mind. The player begins with simple objects such as an apple, attempts to **visualize/comprehend** them, this allows them to obtain the item. A player will have some amount of slots where each slot allows you to equip one item/ concept. When a concept is equipped, it will produce some modifiers, equipping an item allows the item to orbit around you as if you are "conceptualzing" it. A player can also put the item on their plot to generate income per a second, this also generates money offline. Otherwise, a player can just leave it in their inventory. A player can gain IQ by studying at the study desk, the player will just sit at the study desk and have some repetitve animation showing that they are studying, it will show some IQ gained per a second. Higher IQ lets the player comprehend stronger, stranger, larger, and eventually absurd or impossible things. Money is used to physically improve a personal plot, especially the main **Study Station** and potential later facilities such as a **Research Center**. New areas represent things the player has become intelligent enough to comprehend. The long-term fantasy is going from struggling with an apple to understanding reality-bending objects and concepts.

## Core documents

- `GAME-VISION.md` — what the game is and is not.
- `CORE-LOOP.md` — what the player repeatedly does.
- `PROGRESSION.md` — how capability, areas, items, money, and the plot grow.
- `OPEN-QUESTIONS.md` — decisions that still need playtesting/design work.
- `LESSONS.md` — durable lessons learned during development.
- `SETUP.md` — local Studio/Rojo/Codex development workflow.

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
- `systems/RESEARCH-CENTER.md` — the first major plot expansion and home for deeper technology.
- `systems/ECONOMY.md` — IQ vs money and the current reward model.
- `systems/AREA-PROGRESSION.md` — comprehension gates and future zones.
- `systems/MOVEMENT.md` — traversal philosophy and future mobility progression.
- `systems/README.md` — system relationships and implementation principles.

## References

- `reference-games/STEAL-AN-EGG.md` — a structural/readability reference, not a clone target.
- `reference-games/README.md` — how to use reference games without copying them.

## Tasking

- `tasks/TEMPLATE.md` — structure for larger Codex tasks so scope, visual checks, and acceptance criteria stay explicit.
