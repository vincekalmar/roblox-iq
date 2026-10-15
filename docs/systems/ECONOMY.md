# Economy

## Status

**CURRENT DIRECTION.**

IQ and Money are the two core progression resources.

Their roles are now fairly distinct:

- **IQ** comes primarily from studying.
- **Money** comes primarily from Concepts placed on the player's plot.
- **Concepts** are obtained by visualization and can be equipped, plotted, sold, or kept.

Exact formulas, rates, scaling, and the physical implementation of plotted Concepts are still open.

---

## Resource roles

### IQ = capability

IQ represents how much the player can understand.

It should primarily:

- increase through studying at the Study Desk
- determine which Concepts the player can comprehend
- gate later areas
- gate or recommend advanced technologies
- persist as the player's primary long-term capability stat

IQ should not normally be spent like currency.

The fantasy is:

> The player becomes smarter over time rather than buying things with intelligence.

### Money = infrastructure / purchasing power

Money represents the resources available to improve the player's plot and progression infrastructure.

It should primarily buy:

- Study Desk upgrades
- Research Center construction and upgrades
- future authored plot structures
- possible movement/support technology
- other progression infrastructure where appropriate

Money creates frequent purchasing decisions while IQ determines what the player is capable of understanding.

---

## Core economic loop

Current preferred structure:

    explore an area
    → visualize a Concept
    → Concept enters inventory
    → decide how to use it

A Concept can currently have four broad uses:

    EQUIP
    → provides modifiers

    PLACE ON PLOT
    → generates passive money

    SELL
    → immediate one-time money

    KEEP
    → remains in inventory / collection

Meanwhile:

    Study Desk
    → player studies / AFKs
    → generates IQ/s

This keeps IQ and Money from becoming two versions of the same reward.

---

## Study Desk and IQ generation

The Study Desk is the player's primary IQ generator.

The character physically studies at the desk.

Early visual progression may look like:

    reading a book
    → doing math problems
    → more advanced study
    → computer work
    → advanced research workstation
    → increasingly absurd intelligence machinery

Upgrading the Study Desk should increase the player's base IQ generation.

Example conceptually:

    Basic Desk
    10 IQ/s

    Better Desk
    25 IQ/s

    Advanced Study Setup
    100 IQ/s

These values are illustrative only.

Exact rates and curves are not locked.

---

## Equipped Concepts

Concepts can be equipped to modify the player's progression.

Equipped Concepts should visually orbit around the player's head.

Possible modifiers include:

- +% IQ/s while studying
- +movement speed
- +luck
- +mutation chance
- +money generation
- future fusion-related modifiers
- offline-income modifiers
- other utility effects if they create meaningful choices

Example:

    Golden Apple
    Legendary

    +18% IQ/s
    +3% Luck

Concepts should not all simply provide larger versions of the same stat.

Different Concepts can support different builds or priorities.

Exact modifier pools are not locked.

---

## Plotted Concepts

Concepts assigned to the player's plot generate passive Money.

Working structure:

    Concept placed on plot
    → Concept has an income value
    → produces $/s

The exact physical representation is intentionally open.

Possible future implementations might involve:

- displays
- mental projections
- Concept pedestals
- visualization chambers
- research equipment
- another more thematic system

Do not lock one of these until a good physical prototype exists.

The important rule is:

> Concepts placed on the plot are the player's primary passive money-generating assets.

---

## Concept income value

A Concept's passive income should be derived from properties that make the Concept desirable.

Possible contributors:

- base Concept value
- rarity
- area tier
- difficulty to comprehend
- mutation
- visualization quality / Vividness, if adopted
- other special properties

Conceptually:

    Concept Base Value
    × rarity
    × mutation
    × quality
    = plot income

The actual formula should remain simple enough that players can understand why one Concept earns more than another.

Do not implement every multiplier in the first prototype.

Start with:

    base Concept income
    + rarity / tier

and expand only when the systems exist.

---

## Selling Concepts

A Concept may also be sold from the player's inventory for an immediate Money payout.

Selling is different from placing a Concept on the plot.

    SELL
    → immediate lump-sum Money
    → that copy of the Concept is removed

versus:

    PLACE ON PLOT
    → Concept remains owned
    → generates Money over time

This creates a useful economic decision:

    sell now for immediate cash
    vs
    keep for long-term passive income

Selling should be accessible through the Concept Inventory or another convenient UI.

The player should not need to repeatedly walk to a distant generic shop just to sell routine Concepts.

---

## Concept ownership states

Working model:

    Concept obtained
          ↓
       Inventory
          │
          ├── Equipped
          │    → modifier bonuses
          │    → orbits player
          │
          ├── Plotted
          │    → passive $/s
          │
          ├── Sold
          │    → immediate Money
          │    → copy removed
          │
          └── Stored
               → no active effect

A Concept recorded in the Concept Index should remain discovered even if the owned copy is later sold.

Discovery and ownership are separate states.

---

## Equipped vs plotted

Require the player to choose:

    EQUIP
    → modifiers

    or

    PLOT
    → income

This creates meaningful allocation decisions.


---

## Mutations

Mutations can increase the economic and modifier value of Concepts.

A mutation may affect:

- plot $/s
- sell value
- equipped modifiers
- rarity
- visual appearance
- VFX
- future fusion value

Mutated Concepts should usually be noticeably more desirable than their normal version.

Exact mutation types and multipliers are open.

---

## Vividness / visualization quality

The original game fantasy includes becoming better at mentally visualizing objects.

A possible `Vividness` or visualization-quality stat could make two copies of the same Concept meaningfully different.

Example:

    Apple
    62% Vividness

    vs

    Apple
    94% Vividness

Higher Vividness could potentially improve:

- plot income
- sell value
- equipped modifier strength
- fusion value
- another Concept-quality property

This is promising, but it should only exist if the visualization mechanic produces a meaningful quality result.

Do not add Vividness purely because the word fits the theme.

---

## Offline Money

Plotted Concepts are a strong candidate for offline earnings.

Possible model:

    player leaves game
    → plotted Concepts continue generating income
    → return later
    → claim Offline Earnings

This matches the passive-income fantasy cleanly.

Important variables still need design:

- offline earning duration cap
- whether offline income runs at full or reduced efficiency
- whether upgrades increase the offline cap
- how the claim UI works

The exact values are open.

---

## Offline IQ

Whether the Study Desk generates IQ while the player is completely offline is still open.

There is an important distinction:

    AFK studying
    = avatar is actually at the desk
    = IQ/s is clearly generated

    OFFLINE
    = player is no longer in the server

Offline Money from plotted Concepts currently fits the fantasy better than automatically gaining unlimited offline IQ.

This should be tested rather than assumed.

For now, no offline IQ

---

## Spending priorities

Money should present understandable progression choices.

Early examples:

    upgrade Study Desk
    → faster IQ growth

    save for Research Center
    → unlock deeper progression

    improve plot infrastructure
    → improve economy

    later purchase movement/support technology
    → reduce friction

There should not be so many purchase categories that the player loses track of what Money is for.

---

## Pricing principles

- the first purchase should arrive quickly
- early upgrades should create frequent visible progress
- major structures may require saving
- increased cost should correspond to noticeable visual/gameplay improvement
- later numbers can become very large if progression readability remains good
- costs and rates should live in configuration/data modules
- economy constants should not be scattered through scripts

---

## Economy relationship

The intended relationship is:

    Concepts
       ↓
    plot income
       ↓
    Money
       ↓
    better Study Desk / infrastructure
       ↓
    more IQ/s
       ↓
    higher IQ
       ↓
    better areas
       ↓
    better Concepts
       ↓
    more Money + stronger modifiers
       ↓
    repeat

This is one of the game's primary progression feedback loops.

---

## Server authority

The server owns:

- IQ
- Money
- Concept ownership
- equipped Concept state
- plotted Concept state
- modifier calculation
- passive income
- sell rewards
- purchases
- Study Desk progression
- offline earnings state

The client may handle:

- UI
- animations
- orbiting Concept presentation
- VFX
- previews
- responsive feedback

The client cannot award itself IQ, Money, Concepts, modifiers, or purchases.

---

## Avoid

- giving Money automatically just because a Concept was visualized
- making visualization, studying, and plot income all reward the same thing
- adding gems only because other simulators have gems
- adding Research currency before Research Center gameplay needs it
- adding rebirth currency before a real reset loop exists
- requiring a long trip to a generic shop to sell Concepts
- random price inflation without meaningful progression
- monetization assumptions baked into the base economy
- excessive modifier types before the core loop is understandable

---

## Open questions

- Can the same Concept copy be both equipped and plotted simultaneously?
- How exactly are plotted Concepts physically represented on the plot?
- How many Concepts can be equipped?
- How many Concepts can be assigned to the plot?
- Does plot capacity increase through upgrades?
- How is Concept sell value related to passive income?
- Is Vividness a real stat?
- What modifier types exist at launch?
- How much offline Money can accumulate?
- Does offline IQ exist at all?
- How strongly do mutations affect income and modifiers?
- Are duplicate Concepts expected and how important are they to the economy?