# UI Style

## Status

The interaction hierarchy and readability rules are **CURRENT DIRECTION**. The exact graphic design system—fonts, colors, icons, corner radii, gradients, and animation language—is intentionally not locked until approved references exist.

## UI philosophy

The game world should carry as much information as possible.

Use UI to clarify actions and progression, not to replace the environment with menus.

Priorities:
- fast readability
- mobile-friendly interaction
- strong feedback
- minimal navigation depth
- world-space prompts where the relevant object is physically present
- compact HUD for persistent resources

## Core HUD

The player should be able to check these at a glance:

### IQ

Primary capability stat.

Should be visually prominent because it answers:

> What can I comprehend next?

When IQ increases, feedback should be satisfying but not cover the screen every second.

### Money

Main spendable resource.

Should be immediately readable near IQ but visually distinct enough that the two cannot be confused.

### Optional current item / training state

Only show persistently if it helps the player understand which mental image is currently selected/training.

Do not add permanent HUD widgets for systems that are not important every minute.

## World-space object UI

Visualizable objects should communicate information near the object.

Working pattern:

```text
APPLE
Recommended IQ: 80
[Visualize]
```

Possible state changes:

```text
APPLE
You can comprehend this
[Visualize]
```

or

```text
APPLE
Your mind is not ready
Requires 120 IQ
```

Keep world-space copy short. Do not show paragraphs above objects.

## Recommended vs required communication

If the final system allows under-IQ attempts, communicate difficulty rather than showing a hard lock.

Example:

```text
Recommended IQ: 120
Your IQ: 95
Difficult
```

If the system uses a hard minimum, the UI should be unambiguous about why the action is unavailable.

## Visualization UI

The visualization minigame should use the minimum UI needed to make the interaction readable.

Potential elements:
- focus/progress indicator
- object silhouette/orientation target
- timer only if timing matters
- success quality/vividness result if that becomes a real mechanic

The object itself should remain the visual focus whenever possible.

## Study Station / plot UI

Routine upgrades should be understandable directly from the physical station/build location.

Working purchase pattern:

```text
STUDY DESK
Upgrade: Chess Study Setup
$500
[Upgrade]
```

Build pad example:

```text
RESEARCH CENTER
$2,500
Requires 150 IQ
[Build]
```

Numbers are placeholders.

Avoid sending the player into a full-screen shop for every plot purchase.

## Area gate UI

The comprehension gate should reinforce theme.

Possible copy progression:

```text
You cannot comprehend this yet.
Requires 250 IQ
```

Near unlock:

```text
Something about this is beginning to make sense...
```

Unlocked:

```text
You understand.
[Enter]
```

Do not make the thematic copy so vague that the player cannot see the actual requirement.

## Feedback moments

Important events need distinct feedback:
- visualization success
- visualization failure/retry
- money earned
- IQ gained / milestone reached
- Study Station upgrade
- structure built
- new item becomes comprehensible
- area unlocked

Feedback can combine:
- concise text
- sound
- animation
- particles
- world changes

Prefer one strong feedback package over several overlapping popups.

## Interaction hierarchy

### Primary actions
- Visualize / Comprehend
- Spin / Train
- Build / Upgrade
- Enter newly comprehended area

### Secondary actions
- change selected mental item
- inspect collection/research
- browse deeper Research Center options

### Destructive actions
Not currently central. If introduced later, require explicit confirmation.

## Mobile rules

- do not rely on hover
- use large touch targets
- keep critical buttons away from common system/joystick regions
- visualization mechanics must work with taps/drags without precision mouse assumptions
- do not require reading tiny world text from far away

## Desktop rules

- support mouse/keyboard naturally
- prompts should not demand cursor travel across the whole screen for repeated actions
- maintain readable scale at common Roblox resolutions

## Menu depth

Target:
- routine action: zero or one panel deep
- major research/collection system: one or two panels deep

Avoid nested shop → category → item → confirmation flows for basic upgrades.

## Visual style — not yet locked

Do not mass-produce a UI system with invented:
- fonts
- rounded-corner conventions
- gradients
- icon libraries
- neon outlines
- animations

until the project has approved UI references.

For prototypes:
- use clean high-contrast Roblox UI
- consistent spacing
- clear hierarchy
- minimal decoration

Once an interface is approved, capture it in `references/approved/` and document the reusable style here.

## Accessibility/readability

- do not communicate requirement state only through color
- use text/icon/state changes for locked/unlocked
- maintain sufficient contrast
- avoid rapidly flashing effects
- numbers should use readable abbreviations only when values become large enough to require them

## First-pass acceptance criteria

- player can always find IQ and money
- first apple interaction is understandable without menu exploration
- a plot upgrade communicates cost and result before purchase
- locked gates explain the actual reason
- core interactions work on mobile and desktop
- UI supports the world instead of obscuring it