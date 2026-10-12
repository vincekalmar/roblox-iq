# Study Station

**Status: CURRENT DIRECTION**

The Study Station is the central plot progression object and the closest equivalent to the treadmill in the structural reference game. It should be immediately understandable, visually upgrade over time, and directly support IQ training.

## Fantasy

The player has acquired a mental image of an object. The Study Station helps them hold, manipulate, rotate, and understand that image more vividly.

The station starts mundane and becomes increasingly advanced as the player's intelligence grows.

Working visual arc:

```text
simple desk + book
→ better books / study materials
→ chess / logic setup
→ personal computer
→ advanced workstation
→ laboratory / neural / high-IQ technology
→ late-game impossible-looking cognition technology
```

The exact tier count is not locked.

## Relationship to spinning

**Current best-fit interpretation:** the player selects a visualized item and uses the Study Station to "spin" or mentally manipulate it. This produces IQ over time or through active input.

The station therefore has two jobs:

1. make the abstract act of training IQ physically visible in the world;
2. provide a clear money sink whose upgrades increase training effectiveness.

It is still open whether spinning can also happen away from the plot. If portable spinning is allowed, the plot station should still be the strongest or most efficient way to train so the plot remains meaningful.

## Upgrade effects

A higher station tier may improve one or more of:

- IQ gained per successful manipulation / training cycle
- training speed
- how difficult an item the player can efficiently train with
- number of simultaneous mental processes later in progression
- bonuses to vividness / precision if those stats become real systems

Avoid stacking many invisible multipliers early. Each upgrade should create a visible physical change first, with one or two understandable gameplay improvements.

## Purchase model

The station occupies one predetermined authored location on every plot.

The player should be able to see the next upgrade and its money requirement directly at or near the station. A routine upgrade should not require traveling to a general shop.

Example interaction pattern:

```text
Study Desk Lv. 1
Upgrade to Chess Study Setup
$500
[Upgrade]
```

Exact names, costs, and numbers are placeholders until economy tuning.

## Social readability

From the central island or plot entrance, another player should be able to tell roughly how advanced a player is from the station silhouette.

A computer should not look like a tiny stat upgrade from a book. The visual difference should be obvious.

## Implementation principles

- station tier and purchase state are server-authoritative
- tier definitions should be data-driven
- models for each tier should be swappable without rewriting the system
- the current selected visualized item should be a separate concept from the station tier
- do not hard-code final balance values into interaction scripts

## Questions to test

- Is active spinning fun enough to repeat, or should the station blend active and passive training?
- Must the player physically return to the plot to use a newly visualized item?
- Should one item remain equipped/active until changed, or does each training cycle consume/finish something?
- Does the station only multiply IQ gain, or does it also unlock new training mechanics?