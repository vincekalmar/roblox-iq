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

The first area is a compact floating apple-orchard hub that combines shared gameplay with visible player progression.

The current direction is **not** to isolate the orchard far away from the plots. Instead, player plots should form a compact social neighborhood around the spawn-to-orchard route so new players repeatedly see what more advanced players have built.

A new player should be able to spawn with a basic plot, look nearby, and see another player's much more advanced Study Station, Research Center, technology, displays, or other future progression. That visible contrast should create aspiration: **"How do I get that?"**

The orchard remains a distinct shared gameplay space rather than being placed inside every plot, but it should be integrated into the same hub closely enough that plots remain visible during normal early gameplay.

Working spatial hierarchy:

```text
               NEXT AREA / COMPREHENSION GATE
                           ↑

                    APPLE ORCHARD
                  shared gameplay space

          [PLOT]                     [PLOT]
          [PLOT]    MAIN ROUTE       [PLOT]
          [PLOT]                     [PLOT]

                          SPAWN
```

A horseshoe or similar layout may work better than a rigid corridor; the exact arrangement should be decided through Studio blockout and player-camera testing.

There is no general shop planned for the starting area. Most early upgrades should happen directly at authored positions on the player's plot.

## Presentation direction

The game should feel highly responsive and increasingly spectacular as the player's IQ grows.

VFX, animation, sound, camera feedback, UI motion, and world reactions are part of the core experience rather than polish to add only at the end.

The presentation should escalate with progression. Visualizing an apple should already feel satisfying, but comprehending a skyscraper, rocket, planet, black hole, or reality-bending object should feel dramatically more intense.

Possible feedback ingredients include:

- object outlines, holograms, projections, and mental-image effects
- particles, Beams, Trails, Highlights, lighting changes, and flipbook effects
- character and object animation
- UI number bursts and animated progression feedback
- camera FOV changes, framing, impact, and controlled shake
- layered sound effects and brief music/audio moments
- construction/transformation sequences for plot upgrades
- environmental reactions for major comprehension moments

Do not make every action maximum intensity. Preserve an escalation ladder so major unlocks still feel exceptional.

```text
routine action        → light feedback
successful visualize  → satisfying feedback
new important item    → stronger reveal
plot upgrade          → construction / transformation moment
new area              → major presentation beat
late-game object      → increasingly absurd spectacle
```

## Agent workflow scaffold

The project now uses a multi-discipline Codex workflow inspired by production pipelines where each discipline gets its own skill, validation, and reusable automation.

Start here after pulling the repo:

- `docs/agent/START-HERE.md` — what you need to provide now vs what we iterate later
- `docs/agent/WORKFLOW.md` — how the manager and specialist skills fit together
- `.agents/skills/` — manager + code/environment/map/UI/VFX/audio/animation/3D/visual-QA workflows
- `automation/` — deterministic helpers that will be built as real recurring problems appear
- `tests/` — scaffold for pure gameplay/business-logic tests

The rule is: **skills encode process, automation encodes repeatable operations, tests encode behavior, references encode taste.**

## Development stack

### Core development

- Roblox Studio — world, models, Parts, lighting, terrain, runtime VFX, animation, audio, and playtesting
- Roblox Studio MCP — Codex access to the live Studio scene, screenshots, inspection, modification, and playtesting
- Codex — implementation agent guided by `AGENTS.md`, project docs, references, and skills
- Rojo — filesystem-owned Luau sync
- Rokit — pinned development tooling
- StyLua — Luau formatting
- Selene — linting/static analysis
- Git/GitHub — history, safety, collaboration, and reusable project infrastructure

### Creative/platform tooling — optional until activated

- Figma/Figma MCP — optional UI design/reference workflow
- Meshy or another approved 3D-generation provider — generated 3D starting points where useful
- Blender/Blender MCP — cleanup, optimization, rigging, complex animation, export
- Roblox Animation Editor — normal Roblox animation workflow
- Roblox Studio VFX systems — runtime effects
- Roblox Open Cloud — future external asset publishing/platform automation; credentials stay local

External tools support the visual language rather than replace it. Simple environment assets may look better Roblox-native; external 3D tools are more useful for advanced technology, unusual late-game objects, complex rigs, hero assets, and effects geometry.

## First-time setup

```powershell
rokit install
rojo plugin install
rojo serve
```

Then open the matching Roblox place in Studio, connect the Rojo plugin, and enable/connect Studio MCP when Codex needs live Studio access.

After pulling this scaffold, read `docs/agent/START-HERE.md` before adding external APIs or filling the automation folders.

## Project map

- `docs/README.md` — design-bible index and review priorities
- `docs/agent/` — agent workflow, onboarding, and iteration rules
- `docs/GAME-VISION.md` — game identity and design pillars
- `docs/CORE-LOOP.md` — player loop and early-session experience
- `docs/PROGRESSION.md` — progression axes and current milestone model
- `docs/OPEN-QUESTIONS.md` — decisions that are intentionally not locked yet
- `docs/art/` — environment, UI, VFX, animation, and audio direction
- `docs/world/` — area/layout specifications
- `docs/systems/` — gameplay-system specifications
- `docs/reference-games/` — what to learn from other games and what not to copy
- `automation/` — reusable deterministic helpers as they mature
- `tests/` — gameplay/business-logic tests as they are introduced
- `references/approved/` — successful visual outputs that future work should learn from
- `references/inspiration/` — external inspiration and references
- `references/rejected/` — useful failed experiments and what was wrong with them

## Source-of-truth rule

Anything under `src/` is filesystem-owned and should be edited there, then synced through Rojo.

Hand-authored world/visual content remains Studio-owned unless explicitly changed later.

Generated or externally created assets should be imported intentionally, organized clearly, and treated as part of the Studio-owned visual world once adopted into the game.
