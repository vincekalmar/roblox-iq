# Roblox IQ — Project Instructions

This repository is the Roblox IQ game, developed with Roblox Studio, Rojo, and Codex.

## Product identity

The central fantasy is increasing IQ from struggling to visualize simple objects to comprehending increasingly complex and absurd objects/concepts.

The current loop combines:
- area exploration
- IQ-gated item comprehension / visualization
- item-based IQ progression
- money as a secondary progression resource
- authored upgrades on a personal plot
- new areas unlocked through increased comprehension

Do not reinterpret this into a generic pet simulator, free-build tycoon, or menu-only upgrade game without explicit direction.

## Sources of truth

- Studio owns hand-authored world and visual assets.
- `src/` owns Rojo-managed Luau code.
- `docs/GAME-VISION.md` defines product direction.
- `docs/CORE-LOOP.md` defines the central loop.
- `docs/PROGRESSION.md` defines current progression assumptions.
- `docs/OPEN-QUESTIONS.md` records decisions that are intentionally unresolved. Do not silently decide them.
- `docs/art/VISUAL-STYLE.md` defines visual language.
- `docs/world/` contains durable world/layout specs.
- `docs/systems/` contains durable gameplay-system specs.
- `docs/agent/GOVERNANCE.md` defines authority precedence, mutability boundaries, artifact lifecycle, and escalation rules.
- `docs/agent/` defines the agent workflow and iteration model.
- `references/approved/` contains successful visual references.
- `references/rejected/` contains approaches not to repeat.

Read only the documentation relevant to the current task.

When sources conflict or when work may require promotion into approved/canonical/durable state, follow `docs/agent/GOVERNANCE.md`.

## Skill routing

For multi-discipline features, use `roblox-game-manager` to coordinate specialist workflows.

Use specialist skills when applicable:
- `roblox-code` — Luau architecture, config, networking, tests, verification
- `roblox-environment` — environment/world construction
- `roblox-map-qa` — reachability, stuck zones, movement-space validation
- `roblox-ui` — UI design/implementation/responsive validation
- `roblox-vfx` — reusable VFX primitives/recipes and phase review
- `roblox-audio` — reusable audio library/recipes
- `roblox-animation` — pose/timing workflow and visual review
- `roblox-3d` — Studio/Blender/generated 3D asset pipeline
- `roblox-visual-qa` — final visual inspection and correction

Do not invoke every skill for every task. Use only the disciplines the feature actually requires.

## Learning and automation

When a workflow fails, fix the task first, then decide whether the lesson should become:
- a skill rule for judgment/process
- a deterministic helper under `automation/`
- a test for gameplay/code behavior
- an approved/rejected reference for taste

Do not repeatedly solve the same deterministic failure with fresh prose reasoning.

Do not add speculative automation that has not been tested on a real project case.

## Roblox Studio MCP

When Studio MCP is available, inspect relevant existing content before substantial changes.

Use Studio MCP for:
- live DataModel inspection
- Studio-owned environment/visual work
- instance/property modification
- screenshots and visual inspection
- playtesting

Preserve existing approved/canonical assets unless replacement is explicitly requested.

## Visual work

Use the `roblox-environment` skill for meaningful environment work and `roblox-visual-qa` for visual inspection/correction.

Do not build a large polished environment in one blind pass.

For meaningful visual work:
1. inspect the existing scene and relevant references
2. build or adjust the structural blockout
3. inspect from player and elevated/overhead viewpoints
4. capture screenshots when available
5. correct composition, scale, material, stud, and readability problems
6. add primary assets
7. inspect again
8. add restrained decoration only after the structure works

A visual task is not complete merely because the requested instances exist.

## Current visual priorities

The game should feel intentionally Roblox-like rather than generic low-poly fantasy.

Important current traits include:
- simple/chunky readable geometry
- selective but obvious classic studded surfaces
- bright, readable colors
- sparse intentional decoration
- strong silhouettes and landmarks
- gameplay readability over realism

Follow `docs/art/VISUAL-STYLE.md` for exact current rules.

## Rojo ownership

Scripts under `src/` are filesystem-owned. Edit their filesystem source rather than independently modifying the synced Studio copy.

Avoid moving or renaming Rojo-owned Studio instances without updating the Rojo mapping.

## Coding quality

For meaningful code changes:
- keep client/server responsibility clear
- keep authoritative economy/progression logic server-side
- prefer configuration modules over duplicated magic values
- centralize network contracts as networking grows
- avoid unrelated rewrites
- run the repository verification script before completion when possible
- run relevant automated tests once a test runner is active
- playtest behavior that depends on Roblox runtime state

## Secrets

Never commit API keys or credentials. `.env` and `.secrets/` are local-only. Open Cloud and other external APIs must read secrets from local secure configuration/environment variables.

## Scope and uncertainty

Do not invent final economy values, prestige systems, monetization, area counts, exact movement progression, or other open design decisions merely to complete a task.

When a safe reversible placeholder is necessary, make it explicit and configurable.
