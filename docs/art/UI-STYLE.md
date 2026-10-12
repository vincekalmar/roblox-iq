# UI Style

The final UI art direction is not locked yet. This file defines behavior/readability rules Codex may rely on without inventing a full visual identity.

## Current principles

- readable at a glance during active movement
- mobile-friendly hit targets
- important world interactions should not require opening deep menus
- IQ and money should be easy to check because they drive moment-to-moment progression
- world-space requirements such as recommended/required IQ should be short and readable
- UI should support the bright Roblox world rather than cover it with large opaque panels
- progression feedback should feel immediate when IQ, money, or a plot upgrade changes

## Interaction hierarchy

Primary actions:
- visualize/comprehend
- train/spin when applicable
- purchase/build/upgrade plot content

Secondary actions:
- inspect information
- browse deeper research/upgrades

Destructive actions are not currently a major gameplay pattern and should require explicit confirmation if introduced later.

## World-space UI

For object requirements, prefer concise patterns such as:

```text
APPLE
Recommended IQ: 80
[Visualize]
```

Exact wording, fonts, colors, strokes, and effects are provisional until approved screenshots establish the UI language.

## Responsiveness

All core UI must be usable on both desktop and mobile.

Do not rely on hover-only information or tiny click targets.

## Do not invent yet

Until approved references exist, do not mass-produce a full UI design system with arbitrary:
- fonts
- corner radii
- gradients
- icon packs
- complex animations

Prototype functional UI cleanly, then promote successful examples into `references/approved/`.
