# Roblox IQ

A Roblox progression game about growing from barely being able to mentally visualize simple objects to comprehending increasingly complex, absurd, and eventually reality-bending things.

## Current core

```text
enter an area
→ find an item you can comprehend
→ visualize / obtain it
→ use it as part of IQ progression
→ return to your plot
→ improve your study setup and other authored plot upgrades
→ gain enough IQ / money to reach stronger items and areas
→ repeat
```

The exact tuning and some reward details are still in design. The durable product direction lives in `docs/`.

## Current first-area concept

The first area is a compact floating apple-orchard island. The orchard is the gameplay/social center, player plots frame the sides, spawn sits at one end, and a comprehension-gated route to the next area sits at the opposite end.

There is no general shop planned for the starting area. Most early upgrades should happen directly on authored positions on the player's plot.

## Development stack

- Roblox Studio: world, models, Parts, lighting, terrain, animation
- Roblox Studio MCP: Codex access to the live Studio scene, screenshots, inspection, and playtesting
- Rojo: filesystem-owned Luau sync
- Rokit: pinned tooling
- StyLua: formatting
- Selene: linting/static analysis
- Git/GitHub: history and safety
- Codex: implementation agent, guided by `AGENTS.md`, project docs, and skills

## First-time setup

```powershell
rokit install
rojo plugin install
rojo serve
```

Then open the matching Roblox place in Studio, connect the Rojo plugin, and enable/connect Studio MCP when Codex needs live Studio access.

## Project map

- `docs/GAME-VISION.md` — game identity and design pillars
- `docs/CORE-LOOP.md` — player loop and early-session experience
- `docs/PROGRESSION.md` — progression axes and current milestone model
- `docs/OPEN-QUESTIONS.md` — decisions that are intentionally not locked yet
- `docs/art/` — visual and UI direction
- `docs/world/` — area/layout specs
- `docs/systems/` — gameplay-system specs
- `docs/reference-games/` — what to learn from other games and what not to copy
- `references/approved/` — successful visual outputs
- `references/inspiration/` — external inspiration
- `references/rejected/` — useful failed experiments

## Source-of-truth rule

Anything under `src/` is filesystem-owned and should be edited there, then synced through Rojo. Hand-authored world/visual content remains Studio-owned unless explicitly changed later.
