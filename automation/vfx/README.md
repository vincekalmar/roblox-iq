# VFX Automation — Scaffold

## Planned phase-freeze workflow

1. trigger an effect in a controlled Studio test scene
2. advance to selected timestamps
3. freeze/pause relevant emitters/effect state
4. capture representative screenshots
5. review start / middle / end coherence

## Planned library metadata

Each reusable primitive/recipe should eventually record:
- name
- category
- source/license
- expected duration
- scale/intensity
- dependencies/textures
- example usage

The implementation depends on what the current Studio MCP/runtime tooling exposes during testing.
