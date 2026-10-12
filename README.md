# Roblox Game Template

A lean, reusable starter for Roblox development with **Roblox Studio + Codex + Roblox Studio MCP + Rojo + Rokit + Git + StyLua + Selene**.

The template deliberately separates responsibilities:

- **Roblox Studio** owns maps, models, Parts, terrain, lighting, animation, and other hand-authored visual content.
- **Rojo / `src/`** owns filesystem-managed Luau code.
- **Codex + Roblox Studio MCP** can inspect and modify the live Studio experience, take visual passes, and playtest.
- **`docs/`** defines what the current game is supposed to be.
- **`references/`** preserves visual examples that are approved, inspirational, or rejected.
- **`.agents/skills/`** contains reusable Codex workflows for environment creation and visual QA.

## First-time setup

Install:

1. Roblox Studio
2. Git
3. VS Code (or another filesystem editor)
4. Codex
5. Rokit
6. Roblox Studio MCP / Codex connection

Then from this repository:

```powershell
rokit install
rojo plugin install
rojo serve
```

Open the Roblox place in Studio and connect the Rojo Studio plugin to the running server.

For Codex visual work, also enable Studio's MCP server and connect Codex.

## Daily workflow

```text
Open repository in Codex / editor
            +
Open Roblox place in Studio
            +
Run `rojo serve`
            +
Connect Rojo plugin
            +
Connect Studio MCP when Codex needs live Studio access
            ↓
Develop
```

## Source-of-truth rule

Do not maintain two independent copies of the same script.

Anything under `src/` is filesystem-owned. Edit it on disk and let Rojo sync it into Studio.

Visual/world content remains Studio-owned unless a project explicitly chooses another workflow.

## Verification

Windows:

```powershell
./scripts/verify.ps1
```

macOS/Linux:

```bash
./scripts/verify.sh
```

Verification checks formatting, linting, and whether Rojo can successfully build the project.

## Starting a new game

1. Create a repository from this template.
2. Rename the Rojo project in `default.project.json`.
3. Fill in:
   - `docs/GAME-VISION.md`
   - `docs/CORE-LOOP.md`
   - `docs/art/VISUAL-STYLE.md`
4. Add visual inspiration to `references/inspiration/`.
5. Add accepted outputs to `references/approved/` as the game develops.
6. Keep game-specific instructions in this repository's `AGENTS.md`.
