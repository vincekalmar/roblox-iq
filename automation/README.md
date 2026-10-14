# Automation

This folder is for deterministic helpers that make the agent workflow more reliable.

Do not fill it with speculative scripts just because automation sounds useful. A helper should have a clear input/output contract and solve a demonstrated recurring task or failure.

## Planned areas

- `ui/` — preview generation and multi-resolution layout checks
- `map/` — traversal/reachability/collision checks
- `vfx/` — phase-freeze/capture helpers and effect cataloging
- `audio/` — library indexing/recipe metadata
- `animation/` — pose data conversion/contact sheets
- `blender/` — cleanup, decimation, bake, render-angle, export helpers
- `opencloud/` — authenticated asset publishing once configured

## Script quality rule

Reusable helpers should be:
- deterministic where practical
- safe to rerun
- explicit about inputs/outputs
- free of hard-coded secrets
- documented with a small example
- tested on a real project case before being treated as stable
