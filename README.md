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

The long-term goal is for the presentation itself to communicate the fantasy: the player's mind is becoming powerful enough to understand things that previously felt impossible.

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

### Creative production tooling — planned / optional

These are expected to become useful as production expands, but they are not required for the basic project setup.

- **Figma + Figma MCP** — UI/UX design, approved interface references, component/layout exploration, and a stronger design-to-Roblox workflow
- **Meshy + Meshy MCP** — generated 3D concepts or complex assets where Roblox-native construction is not the better choice
- **Blender + Blender MCP** — 3D cleanup, modification, optimization, rigging, complex animation, and export preparation
- **Roblox Animation Editor** — normal character/object keyframe animation inside the Roblox pipeline
- **Moon Animator or similar tooling** — optional cinematic or multi-object animation workflow when Studio's standard workflow becomes limiting
- **Roblox Studio VFX systems** — ParticleEmitters, Beams, Trails, Highlights, lights, attachments, tweens, and scripted effects for runtime feedback

External tools should support the game's visual language rather than replace it. Simple environment assets may look better when intentionally Roblox-native, while external 3D tools are more useful for advanced technology, unusual late-game objects, complex rigs, hero assets, and effects geometry.

## Creative pipeline direction

The intended production flow is roughly:

```text
GAME DESIGN / REFERENCES
        ↓
      CODEX
        │
        ├── Roblox Studio MCP → world, gameplay, VFX, runtime presentation
        ├── Figma MCP         → UI design/reference workflow
        ├── Meshy MCP         → generated 3D starting points where useful
        └── Blender MCP       → 3D refinement / rigs / advanced animation
        ↓
   ROBLOX STUDIO
        ↓
 screenshot + playtest + visual QA
        ↓
      iterate
```

Approved examples should gradually become reusable visual rules rather than asking Codex to invent the look from scratch on every task.

As VFX and animation direction becomes established, add dedicated documents such as:

- `docs/art/VFX-STYLE.md`
- `docs/art/ANIMATION-STYLE.md`
- potentially an audio/feedback specification if sound becomes substantial enough

Those documents should be based on approved in-game examples rather than theoretical style rules alone.

## First-time setup

```powershell
rokit install
rojo plugin install
rojo serve
```

Then open the matching Roblox place in Studio, connect the Rojo plugin, and enable/connect Studio MCP when Codex needs live Studio access.

Creative tools such as Figma, Meshy, Blender, or additional animation software can be added when the project reaches work that benefits from them; they should not block basic game development.

## Project map

- `docs/README.md` — design-bible index and review priorities
- `docs/GAME-VISION.md` — game identity and design pillars
- `docs/CORE-LOOP.md` — player loop and early-session experience
- `docs/PROGRESSION.md` — progression axes and current milestone model
- `docs/OPEN-QUESTIONS.md` — decisions that are intentionally not locked yet
- `docs/art/` — environment, UI, and eventually VFX/animation direction
- `docs/world/` — area/layout specifications
- `docs/systems/` — gameplay-system specifications
- `docs/reference-games/` — what to learn from other games and what not to copy
- `references/approved/` — successful visual outputs that future work should learn from
- `references/inspiration/` — external inspiration and references
- `references/rejected/` — useful failed experiments and what was wrong with them

## Source-of-truth rule

Anything under `src/` is filesystem-owned and should be edited there, then synced through Rojo.

Hand-authored world/visual content remains Studio-owned unless explicitly changed later.

Generated or externally created assets should be imported intentionally, organized clearly, and treated as part of the Studio-owned visual world once adopted into the game.
