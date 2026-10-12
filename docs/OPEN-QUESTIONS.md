# Open Design Questions

These questions are intentionally unresolved. Do not let Codex or an implementation task silently convert one option into permanent design.

## Priority 1 — answer through the first playable prototype

### 1. What exactly is the visualization interaction?

The fantasy is strong; the input is not yet solved.

Current possibilities:
- repeated input/clicking as a throwaway prototype
- timing/focus meter
- matching orientation / mental rotation
- briefly observe, then reproduce/identify something from memory
- trace/align features of the object

Success criteria:
- understandable in seconds
- works on mobile
- has enough skill/feedback to avoid feeling like arbitrary clicking
- can scale in difficulty with harder objects

### 2. Where exactly does spinning/training happen?

Current best fit: mainly at the Study Station on the player's plot.

Questions:
- must the player return to the plot after each new visualization?
- can spinning happen anywhere at reduced efficiency?
- is spinning active, semi-active, or partly passive?
- does the player keep one mental item selected until changing it?

This decision strongly affects how often the player travels between area and plot.

### 3. How is money actually earned?

Current recommended separation:

```text
visualization/value → money
spinning/training → IQ
```

Need to decide:
- immediate payout on visualization?
- payout after item mastery/training?
- quick plot-side "sell imagined result" interaction?
- can the same object be farmed repeatedly?
- does visualization quality/vividness create a multiplier?

Do not add a general shop merely to create a sale interaction.

### 4. Is IQ a hard requirement or a difficulty recommendation?

Possible model:
- below a minimum: cannot comprehend at all
- around recommended IQ: possible but difficult
- above recommended IQ: easier/faster

This may make IQ feel more interesting than a pure hard gate, but the interaction must support it.

### 5. What is the first 15-minute progression curve?

Need playtest answers for:
- starting IQ
- apple recommended/required IQ
- first money reward
- first Study Station upgrade cost
- how many desk upgrades before Research Center becomes relevant
- first Area 2 IQ threshold

Numbers should be tuned from playtime rather than invented in isolation.

## Priority 2 — decide after the core loop feels good

### Research Center

Current role:
- major authored plot build after early progression
- home for deeper upgrades/research
- visual marker of a more advanced player

Need to decide whether it controls:
- movement technology
- visualization improvements
- item analysis/modifiers
- area-related technologies
- Study Station sidegrades

Avoid creating a new research currency unless the center genuinely needs one.

### Item ownership / mental library

After visualizing an object:
- is it permanently discovered?
- can the player select it later from a mental library?
- does the player need to reacquire it to train again?
- can multiple versions/quality levels of the same item exist?

A permanent discovery model supports collection; reacquisition creates a stronger area↔plot loop. This needs testing.

### Item modifiers / mutations

Earlier ideas include larger/crazier/mutated objects being more valuable.

Possible future roles:
- rare version of a known target
- harder visualization challenge
- better money payout
- better IQ training value

Do not add this until normal items already create a satisfying loop.

### Movement progression

Current philosophy is documented in `systems/MOVEMENT.md`.

Need to pick the first actual upgrade and where it is purchased/unlocked.

### Area 2 theme

Area 1 is the Apple Orchard. Area 2 should be chosen only after the first loop establishes what kinds of objects are fun to comprehend.

Potential broad directions include educational/study, workshop/machines, museum, town/city, laboratory, etc., but none is locked.

## Priority 3 — later product questions

### Prestige / rebirth

Not designed. Do not implement because of genre convention.

If added, it must answer:
- what fantasy explains losing/resetting progression?
- what meaningful new decision does it create?
- why is permanent growth better with a reset than without one?

### Monetization

Not designed.

Base progression should work without assuming gamepasses/dev products. Later monetization should accelerate, personalize, or add convenience without destroying the comprehension fantasy.

### Social features

Possible future directions:
- comparing plots
- co-op comprehension challenges
- leaderboards
- visiting/helping other plots

No social feature beyond shared-world visibility is currently required.

### UI art direction

Functional hierarchy is documented, but final typography, icons, component style, effects, and colors should come from approved references rather than agent invention.

## Resolved / currently strong decisions

These no longer need repeated debate unless playtesting exposes a problem:

- two central resources: IQ + money
- IQ represents capability, money represents spendable infrastructure
- authored plot positions rather than free building
- Study Station is the primary plot progression object
- starting area is a compact floating apple-orchard hub
- no general shop in the starting area
- roughly five orchard trees for the first pass
- six plots around the central activity for the current server/layout concept
- higher IQ should eventually reduce traversal friction in-theme rather than only increasing walk speed
- visual work should use screenshot/correction loops rather than one-shot generation