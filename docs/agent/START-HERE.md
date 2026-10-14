# Roblox IQ Agent Workflow — Start Here

This repository now contains the scaffold for a specialized Roblox development workflow. The scaffold is usable immediately, but the highest-value automation should be learned from real work rather than guessed in advance.

## Fill in now

These are the inputs only you can reliably provide.

### 1. Confirm the live project connection

After pulling the repo:
- open the correct Roblox IQ place in Studio
- run `rojo serve`
- connect the Rojo plugin
- enable/connect Roblox Studio MCP to Codex

Do not let Rojo overwrite Studio-owned visual work while migrating existing code. Inspect first.

### 2. Add taste references

Add a small number of strong examples, with notes explaining what you like.

Priorities:
- 3–8 UI screenshots/styles you would actually want the game to resemble
- 3–8 environment/map references
- 3–8 VFX examples or clips/frames
- 3–8 animation examples if you have a specific motion style in mind
- examples of late-game spectacle/dopamine moments

Use `references/inspiration/` initially. Promote only proven project outputs into `references/approved/`.

Do not dump hundreds of unlabeled images. The explanation of *why* a reference is good is more useful than volume.

### 3. Identify libraries/assets you are allowed to use

When we start VFX/audio production, identify any packs/assets you own or are permitted to use. Keep license/source notes.

Do not commit redistributed third-party libraries unless their license allows it.

### 4. Decide which optional external tools you actually want installed

Not required for the first apple gameplay slice:
- Blender / Blender MCP
- Meshy or another 3D-generation provider
- Figma/Figma MCP if we choose a design-tool-assisted UI workflow
- Roblox Open Cloud credentials

We should add these only when a real task benefits from them.

### 5. Keep secrets local

Never commit or paste API keys into project docs/chat logs unnecessarily.

When Open Cloud or another API is activated, store the secret locally using environment variables or the provider's secure credential flow. `.env` and `.secrets/` are ignored by Git.

## Already scaffolded

- manager/orchestrator skill
- code skill
- environment + visual QA skills
- map gameplay QA skill
- UI skill
- VFX skill
- audio skill
- animation skill
- 3D asset skill
- automation folders for future deterministic helpers
- testing/config/networking architecture guidance
- VFX/animation/audio style placeholders

## What gets iterated as we build

These should *not* be fully invented today:

- exact UI component system and responsive checker
- map reachability/geometry validator thresholds
- VFX primitive library and phase-freeze helper
- sound library and layering recipes
- animation pose library and contact-sheet renderer
- Blender cleanup/decimation/export scripts
- Open Cloud asset uploader
- game-specific unit tests
- manager routing rules for workflows we have not encountered yet

Every time a workflow fails, ask:
1. Was this a one-off mistake or a recurring class of problem?
2. Can a deterministic check/script prevent it next time?
3. Should this become a skill rule, a script, a test, or an approved/rejected reference?

That is how this harness becomes valuable over time.

## Recommended first proving task

Do not try to validate every skill at once.

A strong first vertical slice is:
1. apple visualization interaction
2. basic reward feedback
3. basic Study Station training
4. one Study Station upgrade
5. IQ + money state
6. save/load only when the loop itself feels right

That slice exercises code, UI, VFX, audio, environment, and QA without requiring the full game.
