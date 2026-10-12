# Development Setup

## Required

- Roblox Studio
- Git
- Codex
- Rokit
- Rojo (installed through Rokit)
- StyLua (installed through Rokit)
- Selene (installed through Rokit)

## Recommended editor

VS Code with extensions for:
- Luau language support
- Rojo
- StyLua
- Git/GitHub
- Codex, if you want Codex inside the editor

Keep the extension set small. Avoid installing several competing AI coding extensions unless you have a specific reason.

## Install project tools

From the repository root:

```powershell
rokit install
```

Install/update the Rojo Studio plugin:

```powershell
rojo plugin install
```

Start synchronization:

```powershell
rojo serve
```

Then connect the Rojo plugin inside Roblox Studio.

## Studio MCP

When using Codex for live Studio work, enable Roblox Studio's MCP server and connect Codex.

Treat:
- Studio as authoritative for hand-authored visual/world content.
- the filesystem as authoritative for anything under `src/`.

This avoids two independent sources of truth for scripts.
