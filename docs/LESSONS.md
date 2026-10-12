# Project Lessons

This file records durable lessons discovered while designing/building Roblox IQ. Keep lessons specific enough to change future decisions.

If a lesson applies to every future Roblox project, eventually move/copy the reusable version into the shared Roblox template/plugin.

## Game design lessons

### IQ must represent capability

A higher IQ number is not enough. The player should gain access to:
- harder objects
- later areas
- advanced technology
- smarter traversal

If an upgrade cannot be explained through increased understanding or better tools, question whether it belongs.

### Money and IQ need different jobs

Current strongest separation:
- IQ = persistent capability
- money = spendable infrastructure/support

This is clearer than rewarding both resources identically from every action.

### The plot should be authored

Predetermined upgrade positions fit the desired game better than free building because they:
- keep progression readable
- allow stronger visual before/after states
- simplify mobile interaction
- create social comparison

### The Study Station should be the visual anchor

The plot needs one immediately recognizable progression object.

The desk/book → chess → computer → advanced technology arc communicates progress better than many unrelated small upgrades.

### A general shop is not currently needed

Routine upgrades are stronger when purchased where they physically exist on the plot.

Removing the starting-area shop simplifies layout and keeps the player's attention on orchard ↔ plot progression.

### Movement is a progression problem, not only a level-design problem

The world must not become annoying as repeated travel increases.

The best thematic direction is smarter movement/shortcuts/technology, not simply multiplying WalkSpeed because IQ increased.

### Escalation is the hook

The content ladder should become increasingly surprising. The game risks becoming generic if the player only sees reskinned fruit with larger numbers.

## Starting-area lessons

### Smaller is currently better

With roughly five orchard trees, six plots, no general shop, and default early movement, a ~320–350 stud island is more appropriate than a huge simulator map.

### Orchard + plots should be one hub

Combining the orchard and nearby plots creates a stronger repeated loop than separating spawn, shop, plot district, and resource area into distant zones.

### The gate needs aspiration without domination

A slightly elevated comprehension gate can be visible from spawn without becoming a giant fantasy portal.

### Layout should be clear but not perfectly symmetrical

Three plots per side is useful structurally, but trees/paths/edge dressing should break diagram-like symmetry.

## Visual-development lessons

### Long prose prompts do not guarantee visual quality

Codex can satisfy a specification mechanically while producing weak composition.

Visual work must include screenshot/correction loops.

### Important style rules must be mechanical

"Use studs selectively" was too vague.

Better rule:

> grass platform tops and plot floors should visibly use Studs unless an approved exception exists.

Codex needs to know exactly which categories receive the treatment.

### Establish canonical assets before asking for variants

Do not ask an agent to independently invent four good tree designs.

Approve one strong tree first, then derive controlled variations.

### Concepts are not scale specifications

AI concept art can inspire composition but cannot be copied literally into Roblox studs/proportions. Always inspect against a Roblox avatar and gameplay camera.

### Decoration cannot rescue bad layout

Blockout, sightlines, walking distances, and hierarchy must work before foliage/rocks/effects are added.

## Agent-workflow lessons

### Studio and filesystem need clear ownership

- Studio owns hand-authored world/visual content.
- Rojo/filesystem owns `src/` scripts.

This prevents Codex from editing two competing copies of the same code.

### Open questions must stay visible

Implementation agents naturally fill gaps. Keep unresolved design decisions in `OPEN-QUESTIONS.md` so a placeholder does not accidentally become product direction.

### Completion criteria must include actual inspection

For visual tasks, checking Explorer hierarchy is not enough. Viewport screenshots/playtests are part of completion.

### Approved and rejected references are useful project memory

When something works, record **why** it works.

When something fails, record the concrete failure:
- too smooth
- wrong scale
- no visible studs
- too cluttered
- poor sightline

This is more reusable than simply saying "I don't like it."

## Things we should test rather than debate indefinitely

- visualization minigame
- whether spinning is plot-only
- exact money payout step
- recommended IQ vs hard IQ requirement
- first movement upgrade
- first 15-minute economy curve

The docs should make these tests easier, not postpone playtesting.