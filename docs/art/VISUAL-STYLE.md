# Visual Style

## Status

The broad art direction is **LOCKED CURRENT DIRECTION**: bright, chunky, readable, intentionally Roblox-like, with visible stud language and simple stylized geometry. Exact palettes, lighting values, and individual asset designs should come from approved Studio tests.

## Target

The game should look like a polished Roblox experience that embraces Roblox's physical/toy-like language rather than trying to imitate generic low-poly concept art.

Key qualities:
- bright and welcoming
- chunky readable silhouettes
- simple geometry with deliberate proportions
- visible classic Roblox studs where specified
- built-in Roblox materials used intentionally
- sparse, purposeful decoration
- clean gameplay readability
- strong separation between important interactables and background dressing

The first island should feel like a charming floating Roblox diorama, not a realistic fantasy landscape.

## Avoid

- hyper-realistic terrain
- smooth generic low-poly fantasy islands
- AI-looking rock noise everywhere
- hundreds of tiny decorative Parts
- dense foliage that hides gameplay
- giant empty lawns
- giant ornamental spawn/portal structures
- perfect mirrored symmetry
- excessive gradients/glow/effects used to fake polish
- every object using a different visual language
- surfaces being smooth simply because smooth is easier
- studs applied indiscriminately to every face/object

## Geometry language

Prefer:
- Roblox Parts for blockout and many final environment forms
- chunky layered cliff shapes
- simple cylinders/wedges where useful
- clean silhouettes that read at normal camera distance
- intentionally simplified trees/props
- a few larger shapes instead of many tiny fragments
- gentle asymmetry
- canonical asset families with controlled variation

Avoid:
- micro-detail made from dozens of tiny Parts
- realistic branch networks
- random rock scattering as a substitute for composition
- over-sculpted Terrain as the main visual identity
- independently generated prop styles that do not match each other

## Stud rules

Studs are a major visual identifier. "Selective studs" means **clearly visible studs on specified categories**, not one token studded object in the whole map.

### Default to studded top surfaces

Use visible studs on:
- major grass platform / island top Parts where compatible with the design
- plot ground/build-pad surfaces
- selected authored foundations/platforms
- some chunky structural/stone elements when the studs strengthen the toy-like construction language

### Usually smooth

Use smooth surfaces on:
- main walkable paths when studs visually fight navigation
- small decorative details
- UI/interaction surfaces
- objects whose approved canonical asset is intentionally smooth
- faces where studs create accidental noise or z-fighting

### Implementation rule

When Codex creates a Part in a category that is supposed to be studded, explicitly set the relevant `SurfaceType` rather than assuming the material will communicate the look.

A visual QA pass should confirm studs are actually visible in the viewport.

## Materials

Preferred starting palette of Roblox built-ins:
- Grass for readable playable ground where appropriate
- Rock / Slate for chunky island structure
- Wood / WoodPlanks for simple authored props
- Brick / Cobblestone / concrete-like materials only when they support a specific structure

Material choice should support shape readability. Do not layer many realistic textures onto simple geometry just because they exist.

## MeshParts

Use MeshParts when they substantially improve a hero asset or when Parts cannot produce the intended silhouette efficiently.

Good candidates:
- approved hero trees
- important machines/Study Station tiers
- unusual late-game objects

Do not convert the whole environment into unrelated generated meshes.

## Terrain

Terrain is optional.

For the starting island, Parts/chunky geometry should establish the visual language first. Terrain can be added only if it improves a specific element without making the island look like generic realistic terrain.

## Color and contrast

Starting-area goals:
- bright grass
- clearly different path color/value
- darker/more grounded cliff underside
- warm readable wood/desk/tree trunks
- red apples that stand out immediately
- interaction cues stronger than decoration

Avoid muddy color grading.

Use environmental lighting for atmosphere, but maintain clear object silhouettes and readable world-space UI.

Exact color values should be promoted from approved Studio tests into this document later.

## Lighting

Desired early-game feel:
- daylight / pleasant outdoor clarity
- soft enough shadows to feel polished
- no heavy fog that hides objectives
- no extreme bloom washing out UI/studs
- enough contrast to make the floating-island edge readable

Lighting should make the environment easier to read before it makes it cinematic.

## Environment density

The environment should feel authored but breathable.

Decoration can include:
- small rock clusters
- sparse bushes/flowers
- occasional fences/posts
- small lamps/signage where useful
- limited edge vegetation

Decoration should do at least one job:
- guide the eye
- clarify a boundary
- frame a landmark
- add local atmosphere
- hide an ugly technical transition

Do not decorate empty space merely because it is empty.

## Scale

Always judge props relative to a normal Roblox avatar and gameplay camera.

For environment QA, specifically check:
- path width
- plot entrance width
- desk/station height
- tree canopy clearance
- interaction distance
- stairs/ramp comfort
- gate size

A concept image is not a scale specification. Playtest walking distances and camera views.

## Visual hierarchy — starting island

From spawn, the intended order is:

1. **Apple orchard / first gameplay target**
2. **Player plots / personal progression spaces**
3. **Comprehension gate / next-area aspiration**

The spawn structure itself should be minimal and should not become the strongest landmark.

From a plot entrance, the intended order is:

1. Study Station
2. current/next plot build location
3. central orchard/shared world

## Orchard / tree language

The first orchard should use roughly five trees, not a forest.

Rules:
- preserve the existing Studio tree/apple work as the canonical starting reference when available
- derive variants from one approved tree rather than inventing five separate styles
- use modest rotation, scale, canopy, branch, and apple-placement variation
- keep enough negative space for interaction and camera readability
- trees can be stylized/blocky but should still read immediately as apple trees

If `ReferenceBirchStudTree` or an equivalent existing canonical tree exists, inspect it before making variants.

## Apple language

The apple is the tutorial object and should be unusually readable.

It should:
- stand out strongly against leaves
- be large/readable enough for Roblox camera distance
- not look photorealistic
- match the tree's simplified style
- support an interaction highlight without getting visually lost

## Floating-island language

The starting area should clearly read as floating:
- readable grassy top silhouette
- thick chunky rocky underside
- layered downward rock forms rather than a flat slab
- visible cliff edges in selected viewpoints
- sparse vegetation/rocks framing edges
- optional small waterfall only if it improves the composition

Use invisible barriers for reliable fall prevention where needed. Visual rocks/vegetation explain the edge; they are not the only safety system.

## Paths

Paths should:
- make Spawn → Orchard → Gate legible
- branch naturally toward plots
- use slight curves/offsets where practical
- remain broad enough for multiplayer movement
- avoid forming an overly perfect ring/grid unless the design intentionally calls for it

## Plot language

Plots should feel like authored personal spaces, not six blank tycoon rectangles.

Use:
- clear boundary treatment
- entrance facing the central area
- simple path/threshold into the plot
- enough open space for upgrade silhouettes
- consistent base language across all plots

Player progression objects should provide the visual complexity, not excessive permanent decoration.

## Effects

Effects should emphasize gameplay moments:
- visualization success
- IQ gain
- money payout
- station upgrade/construction
- comprehension gate unlock

Avoid constant particle spam that makes the world hard to read.

## Canonical assets and approval process

Canonical assets must be discovered from the live Studio project and `references/approved/` before replacement.

Expected early canonical assets:
- existing apple model
- existing/stabilized apple tree
- approved cliff/grass/path test
- approved plot entrance/base
- approved Study Station tier 1

When the user explicitly approves a visual result:
1. save a screenshot/reference in `references/approved/`;
2. write a short note explaining what is approved;
3. update this document if the approval establishes a reusable rule.

When a result is rejected for an informative reason, record it in `references/rejected/` with specific failure reasons.