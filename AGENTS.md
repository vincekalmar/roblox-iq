# Roblox Project Instructions

This repository is a Roblox game developed with Roblox Studio, Rojo, and Codex.

## Sources of truth

- Roblox Studio owns hand-authored world and visual assets.
- `src/` owns Rojo-managed Luau code.
- `docs/GAME-VISION.md` defines the product direction.
- `docs/CORE-LOOP.md` defines the central player loop.
- `docs/art/VISUAL-STYLE.md` defines the project's visual language.
- `references/approved/` contains visual results that should be treated as successful references.
- `references/rejected/` contains examples of approaches that should not be repeated.

Read only the documentation relevant to the current task. Do not load every project document by default.

## Roblox Studio MCP

When Studio MCP is available, inspect relevant existing content before making substantial changes.

Use Studio MCP for tasks such as:
- inspecting the live DataModel
- environment and visual work
- modifying Studio-owned instances
- screenshots and visual inspection
- playtesting

Do not replace approved existing assets unless the task requires it.

## Visual work

For environment tasks, use the `roblox-environment` skill when applicable.

For visual inspection and correction, use the `roblox-visual-qa` skill when applicable.

Do not attempt a large polished environment in one blind pass.

For meaningful visual work:
1. establish or inspect the blockout
2. inspect from relevant player viewpoints
3. capture screenshots when the tool is available
4. identify obvious composition/style problems
5. correct them before declaring completion

A visual task is not complete merely because the required instances exist.

## Rojo ownership

Scripts under `src/` are filesystem-owned.

Edit their filesystem source rather than independently changing the synced Studio copy.

Avoid moving or renaming Rojo-owned Studio instances without updating the Rojo project mapping.

## Coding quality

For meaningful code changes:
- keep client/server responsibility clear
- prefer configuration modules over duplicated magic values
- avoid unrelated rewrites
- run the repository verification script before completion when possible

## Scope

Do not reinterpret the game's core design without explicit direction.

When requirements are ambiguous but a safe, reversible implementation exists, choose the smallest implementation that satisfies the current task.
