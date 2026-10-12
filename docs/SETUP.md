# Development Setup — Roblox IQ

## Goal

Use a simple hybrid workflow:

```text
Roblox Studio = world / visual source of truth
filesystem + Rojo = code source of truth
Codex + Studio MCP = implementation/inspection agent
Git = safety/history
```

Do not duplicate ownership of the same code between Studio and the filesystem.

## Required tools

- Roblox Studio
- Git
- Codex
- Rokit
- Rojo (managed by Rokit)
- StyLua (managed by Rokit)
- Selene (managed by Rokit)

Recommended editor: VS Code with Luau/Rojo/Git support and Codex if desired.

Do not install many overlapping AI coding extensions unless they solve a specific problem.

## Clone / first-time setup

From the local project directory:

```powershell
rokit install
```

Install the Rojo Studio plugin:

```powershell
rojo plugin install
```

Verify tool availability:

```powershell
rojo --version
stylua --version
selene --version
```

## Normal development session

### 1. Open the repository

Open `roblox-iq` in Codex / your editor.

### 2. Start Rojo

```powershell
rojo serve
```

### 3. Open the correct Roblox Studio place

The Studio place contains the hand-authored world/assets such as the existing apple/tree work and future starting island.

### 4. Connect the Rojo plugin

Connect Studio to the running Rojo server.

Anything under `src/` is now filesystem-owned.

### 5. Connect Studio MCP when using Codex on the live game

In Studio, enable Studio as an MCP server and connect Codex using the supported MCP connection flow.

Use MCP for:
- inspecting Workspace/Explorer
- environment/model/property work
- screenshots
- playtesting
- Studio-only state

Use filesystem edits for Rojo-owned scripts.

## Ownership rules

### Filesystem / Rojo owns

- `src/client/`
- `src/server/`
- `src/shared/`
- configuration modules
- reusable Luau systems

If a script appears in Studio because Rojo synced it, edit the source file—not the Studio copy.

### Roblox Studio owns

- hand-authored maps
- Parts/MeshParts/models
- Terrain
- lighting
- visual environment layout
- animations
- non-Rojo visual assets

Codex can modify these through Studio MCP, but Studio remains their source of truth.

## Recommended code layout

```text
src/
├── client/
│   ├── controllers/
│   ├── ui/
│   └── init.client.luau
├── server/
│   ├── services/
│   ├── systems/
│   └── init.server.luau
└── shared/
    ├── config/
    ├── types/
    ├── utilities/
    └── GameConfig.luau
```

Create folders only when real code needs them; do not generate empty architecture for appearance.

## Configuration direction

Keep progression data centralized.

Likely future config modules:

```text
src/shared/config/
├── Items.luau
├── Areas.luau
├── StudyStations.luau
├── PlotUpgrades.luau
└── Economy.luau
```

Do not scatter IQ requirements/costs through interaction scripts.

## Verification

Windows:

```powershell
./scripts/verify.ps1
```

macOS/Linux:

```bash
./scripts/verify.sh
```

Current verification checks:
- StyLua formatting
- Selene lint/static analysis
- successful Rojo build

Runtime behavior still requires Roblox Studio playtesting.

## Git workflow

Commit at stable milestones, especially before large agent-driven changes.

Useful milestones:

```text
core visualization prototype
first Study Station loop
starting island blockout
approved orchard style
plot purchase system
Area 2 gate working
```

Before large Studio environment changes, create a commit/checkpoint so bad automated changes are reversible.

## Codex workflow

Codex should read `AGENTS.md` automatically.

For environment work, relevant context usually includes:
- `docs/art/VISUAL-STYLE.md`
- the target file under `docs/world/`
- `references/approved/`
- the live Studio scene

For gameplay work, relevant context usually includes:
- `docs/CORE-LOOP.md`
- the relevant file under `docs/systems/`
- `docs/OPEN-QUESTIONS.md` when a behavior is not locked

Do not ask Codex to load every document for every task.

## Visual work rule

For meaningful environment work:

```text
inspect
→ blockout
→ screenshot
→ critique/correct
→ primary assets
→ screenshot
→ critique/correct
→ restrained polish
```

Do not accept "all requested Parts exist" as visual completion.

## Reference workflow

When a visual result is approved:
- save screenshot/reference to `references/approved/`
- add a short Markdown note explaining what is approved

When a failure teaches a useful lesson:
- save it to `references/rejected/`
- record specific reasons

This gradually gives Codex stronger project-specific taste examples.

## Current development priority

Do not build the entire game at once.

Recommended order:
1. approve visual kit / canonical tree and environment language
2. block out starting island
3. prototype apple visualization
4. prototype mental-item → Study Station → IQ loop
5. add money + first station upgrade
6. add plot purchase/build behavior
7. add first comprehension gate
8. tune first 5–15 minutes before expanding content