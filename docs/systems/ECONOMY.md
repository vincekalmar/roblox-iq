# Economy

## Status

**CURRENT DIRECTION.** IQ and money are both core. Their exact formulas and the money-payout interaction still need testing.

## Resource roles

### IQ = capability

IQ represents how much the player can understand.

It should primarily:
- rise through training/spinning mental images
- gate harder items and areas
- gate or recommend advanced technology
- persist as a long-term capability stat

IQ should generally not be spent down like cash.

### Money = construction / support

Money represents resources the player can invest into better learning infrastructure.

It should primarily buy:
- Study Station upgrades
- Research Center construction/upgrades
- future authored plot structures
- possible support/movement equipment

Money is the resource that creates frequent purchasing decisions.

## Current recommended earning model

The cleanest current model is:

```text
visualize/comprehend item successfully
→ determine value from item difficulty + quality/vividness
→ award/produce money

use the mental image to spin/train
→ gain IQ
```

This prevents IQ and money from feeling like two copies of the same reward.

The word "sell" does not require a physical shop. Possible implementations, in preference order for early testing:

1. **Immediate payout on successful visualization** — simplest and fastest.
2. **Automatic payout when the mental image is mastered/completed** — adds a stronger finish state.
3. **Very quick plot-side conversion** — only if physically "selling the imagined result" feels satisfying.

Avoid a distant general shop whose only job is converting routine objects into cash.

## Item value

A visualizable item should have a base value related to how impressive/difficult it is to comprehend.

Possible contributors later:
- base object difficulty
- object size/complexity
- player's visualization quality/vividness
- mutations/modifiers if that system is adopted
- area tier

Do not implement all modifiers at once. Start with a single base value and one understandable quality/difficulty factor.

## Vividness concept

The original fantasy includes being paid more for imagining something more vividly.

A future `Vividness` result could give the visualization minigame skill expression:

```text
poor visualization → lower value
clear visualization → normal value
exceptional visualization → bonus value
```

This is promising because it links player performance to money, but it should only be implemented if the visualization interaction supports meaningful quality differences.

## Spending priorities

Early spending order should naturally present choices such as:
- upgrade Study Station now for faster IQ growth
- save for Research Center / major plot build
- later buy mobility/support technology

There should not be so many purchase categories that the player cannot understand what money is for.

## Pricing principles

- first upgrade arrives quickly enough to teach the loop
- early prices create frequent visible progress
- major structures can require saving
- each price increase should correspond to a noticeable visual/gameplay improvement
- keep all costs in data/config modules
- never hide economy constants across scripts

## Server authority

The server owns:
- money balance
- rewards
- purchase validation
- Study Station/plot purchase state

The client may display previews, animations, and responsive feedback but cannot award itself money or confirm purchases.

## Avoid

- separate gems merely because other simulators use gems
- research currency before Research Center gameplay truly needs it
- rebirth currency before a reset loop is designed
- random price inflation with no gameplay purpose
- monetization assumptions baked into the base economy

## Open questions

- Is money awarded immediately after visualization or after a mastery/spin step?
- Is vividness a real scored stat or just presentation?
- Can the same object be visualized repeatedly for money, and if so what prevents trivial farming?
- Is there a first-time discovery bonus?
- Do items stay permanently unlocked in a mental library?