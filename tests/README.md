# Tests

The repository currently has formatting, linting, and Rojo-build verification. This folder is the scaffold for automated gameplay/business-logic tests.

## First test targets

Prefer pure/data-oriented rules that do not require a live Roblox place:
- item IQ requirements
- reward/value formulas
- Study Station tier transitions
- upgrade affordability/purchase rules
- area requirements
- configuration invariants

## Runner

Do not choose/add a test runner merely to fill this folder. Select the runner when the first real tests are written, then add it to Rokit/verification in one deliberate change.

Once tests are active, the standard verification order should include them before Studio runtime testing.
