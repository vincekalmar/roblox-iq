# Visualization / Comprehension System

## Status

The fantasy and role of visualization are **LOCKED**. The exact minigame/input is **OPEN** and should be prototyped rather than overdesigned on paper.

## Fantasy

World objects are not ordinary pickups. The player is attempting to hold a sufficiently accurate mental representation of the object.

The interaction should communicate:

> I understand this object well enough to picture it in my mind.

That mental image then becomes usable in the IQ-training/spinning loop.

## Why this system exists

Visualization should do four jobs:

1. make IQ feel like capability rather than only a number;
2. turn world objects into active gameplay rather than passive collectibles;
3. create a reason to search for harder/more valuable targets;
4. provide the bridge between exploration, money, and Study Station training.

## Object data

Visualizable objects should be data-driven.

Likely fields:

```text
id
displayName
areaId
model/reference
recommendedIQ
minimumIQ (optional)
baseMoneyValue
baseTrainingValue / difficulty
category/tags
```

Possible later fields:
- size/complexity modifier
- mutation/variant data
- discovery state
- mastery state
- vividness bonus rules

Do not hard-code object values across individual interaction scripts.

## Interaction states

Conceptual flow:

```text
object exists in area
→ player approaches / focuses it
→ requirement and action become readable
→ player starts Visualization
→ short active challenge
→ success or failure
→ on success: mental image is acquired / updated
→ money/value result is granted or prepared
→ mental image becomes available for Study Station training
```

## IQ relationship

A promising model is to distinguish **minimum IQ** from **recommended IQ**.

Example concept:
- far below minimum: cannot start
- below recommended: challenge is noticeably harder
- around recommended: intended difficulty
- well above recommended: easier/faster

This would make IQ affect interaction quality rather than only acting as a locked door.

However, if the first minigame cannot support meaningful difficulty scaling, use a simpler hard requirement for the prototype.

## First apple experience

The apple is the tutorial target.

Working presentation:

```text
APPLE
Recommended IQ: 80
[Visualize]
```

`80` is a placeholder until starting IQ/balance are tested.

The first apple should:
- be visible almost immediately from spawn/tutorial route
- take only a short time to understand
- strongly communicate success
- become the first mental image used for training

Do not make the first interaction difficult enough that new players fail repeatedly before understanding the game.

## Visualization minigame requirements

Whatever mechanic is chosen should:
- work on touch and mouse
- explain itself visually with minimal text
- last seconds, not minutes, for normal targets
- scale to harder objects
- support strong feedback for progress and success
- feel related to perception, memory, orientation, focus, or mental manipulation

Potential prototype families:
- click/tap rapidly enough — easiest to build, weakest thematic fit
- keep focus/timing inside a moving target
- rotate/align a mental silhouette
- briefly inspect then answer/replicate a visual detail
- match object orientation or component layout

Do not build several complex minigames before one basic interaction has been playtested.

## Success / failure

Success should feel decisive:
- clear sound/visual burst
- object/mental-image transition
- money/value feedback where appropriate
- explicit availability for training

Failure should not feel punitive early.

Possible failure response:
- show progress achieved
- allow quick retry
- suggest higher IQ if substantially under recommendation

Avoid losing large amounts of currency/items for ordinary failure.

## Mental ownership model

**OPEN:** what exactly the player owns after success.

Possible models:

### Permanent discovery

Once visualized, the item is permanently in a mental library and can be selected later.

Pros:
- satisfying collection
- simple persistence
- encourages completion

Risk:
- area↔plot loop becomes weaker because reacquisition is unnecessary

### Reacquired mental instance

The player visualizes an item, then brings/uses that instance in training. Better items must be reacquired.

Pros:
- stronger repeated world loop
- closer structural analogy to carrying progression objects home

Risk:
- can feel grindy if the visualization interaction is repetitive

### Hybrid

Discovery is permanent, but fresh/high-vividness visualizations provide the best training/value.

This may eventually be the strongest design, but should not be implemented until the basic loop is proven.

## Money/value relationship

Current recommended design:
- successful visualization produces money/value
- visualization quality/vividness may later modify payout
- more difficult objects have larger base value

See `ECONOMY.md`.

## Relationship to Study Station

A visualized object should clearly become usable at the Study Station.

The player should never wonder:

> I visualized the apple; where did it go and why did I do that?

After success, tutorial/feedback should point toward the training action until the player understands the relationship.

## Server authority

Server validates:
- whether the object can currently be interacted with
- IQ requirement state
- success/reward result as appropriate
- ownership/discovery changes
- money grants

Client handles:
- responsive input
- camera/presentation
- animations/effects
- local prediction/feedback where safe

Never trust the client to declare arbitrary visualization success or reward amounts.

## Anti-exploit / repetition considerations

If the same object can generate repeated money:
- add cooldown/state or another controlled loop
- validate proximity/interaction
- avoid client-driven reward calls

The solution should also make sense as gameplay, not only as anti-cheat.

## Acceptance criteria for first prototype

- player can understand how to start visualization without instruction text walls
- first apple can be completed on PC and mobile
- success clearly produces a mental-image state
- player knows the next action is to train/spin the image
- requirements are data-driven
- no client can simply fire a remote to award itself success/money