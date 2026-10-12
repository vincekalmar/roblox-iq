# Visualization / Comprehension System

## Fantasy

Objects are not simply pickups. The player must be intelligent enough to understand/visualize them.

This system should make IQ feel like capability rather than only a number.

## Object data — expected direction

Each visualizable object will likely need configurable data such as:
- identifier
- display name
- recommended or required IQ
- base progression/value
- area/source
- model/reference
- optional future modifiers

Keep these values data-driven rather than hard-coded across interaction scripts.

## Interaction states

Working conceptual states:

```text
visible in world
→ inspect requirement
→ attempt visualization
→ success / obtain mental image
→ available for training/spinning and downstream progression
```

The exact visualization minigame is not final.

## Recommended vs required IQ

The UI concept has used `Recommended IQ` for early objects. Design testing should decide whether IQ is:
- a hard gate
- a difficulty modifier
- or both depending on object type

Do not hard-code one interpretation across the whole game until this is decided.

## Spinning / mental manipulation

Once an item is visualized, the player should be able to use the mental image as part of IQ training.

The exact controls, timing, and relationship with the study station are open questions.

## Progression value

Harder, larger, stranger, or otherwise advanced items should generally support stronger progression. The exact formula and whether mutations/rarities are included is not locked.

## Server authority

When implemented:
- server validates unlock/ownership state
- server validates rewards/progression changes
- client may handle presentation, input, camera, and responsive effects
- never trust the client to declare successful acquisition or arbitrary IQ/money gains
