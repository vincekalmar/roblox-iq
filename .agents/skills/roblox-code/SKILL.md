---
name: roblox-code
description: Implement and validate Roblox Luau gameplay systems using Rojo-owned filesystem code, data-driven configuration, centralized networking, tests, linting, formatting, and Studio playtests.
---

# Roblox Code Workflow

## Principles

- Code under `src/` is filesystem-owned. Never create a competing Studio-only copy.
- Keep authoritative progression/economy state server-side.
- Put tweakable numbers and definitions in configuration modules rather than scattering literals through behavior code.
- Prefer intent-based remotes over reward-granting remotes.
- Keep network names/contracts centralized rather than inventing strings throughout the codebase.

## Before implementation

1. Read relevant system docs.
2. Inspect existing modules and config before adding new architecture.
3. Identify client, server, shared, persistence, and network responsibilities.
4. Define the smallest testable behavior.

## Validation order

1. formatter
2. linter/static analysis
3. pure logic/unit tests when available
4. Rojo build
5. Studio runtime playtest for engine-dependent behavior

Use `scripts/verify.ps1` or `scripts/verify.sh` for the existing repository checks.

## Testability

Keep game rules that do not require Roblox Instances as plain data/functions where practical. Examples include costs, requirements, reward formulas, tier transitions, and item definitions.

## Iteration rule

If the same coding failure happens twice, consider adding a deterministic test or validation script instead of another prose warning.
