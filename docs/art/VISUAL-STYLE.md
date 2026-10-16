# Visual Style

## Status

The broad art direction is **LOCKED CURRENT DIRECTION**: bright, chunky, readable, intentionally Roblox-like, with visible stud language and simple stylized geometry. Exact palettes, lighting values, and individual asset designs should come from approved Studio tests.

## Target

The game should look like a polished Roblox experience that embraces Roblox's physical/toy-like language rather than trying to imitate generic low-poly concept art.

Key qualities:
- bright and welcoming
- chunky readable silhouettes
- simple geometry with deliberate proportions
- visible classic Roblox studs as a pervasive construction language
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
- treating studs as a rare accent instead of part of the core construction language

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

Studs are a **default visual language**, not a small accent layer.

For Roblox-built environment assets and map geometry, Codex should generally begin from the assumption that visible studs belong in the design unless there is a clear reason for a surface or object to be smooth.

Studs can appear across most of the physical world, including:
- grass and ground surfaces
- plot floors and build pads
- platforms and foundations
- cliffs, rocks, and chunky structural forms
- trees and foliage built from Parts
- fences, signs, props, and decorative objects
- buildings and other authored world structures
- some world-space lettering or constructed signage when it matches the asset design

The goal is for the environment to visibly and consistently feel Roblox-native. A finished scene should not contain only a few token studded surfaces surrounded by mostly smooth geometry.

### When smooth surfaces are appropriate

Smooth surfaces are still valid when there is a specific reason, for example:
- a path reads substantially better without studs
- an approved canonical asset intentionally uses a smooth surface
- UI or interaction-facing surfaces require a cleaner presentation
- the geometry or face does not support studs cleanly
- studs create visual artifacts, accidental noise, or technical problems

Smooth should be a deliberate exception, not the default fallback.

### Implementation rule

When Codex creates Parts intended to carry the studded language, explicitly set the relevant `SurfaceType` rather than assuming material alone will communicate the look.

A visual QA pass should confirm that studs are clearly visible across the scene at normal gameplay distance and that the result still reads cleanly.

Do not remove studs merely to make an asset easier to construct.

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

## Starting-island visual hierarchy

`docs/world/STARTING-ISLAND.md` is the source of truth for the starting island's spatial layout, player-view hierarchy, plot arrangement, central shared area, orchard relationship, and future gate placement.

This document should not duplicate or override that layout.

From a visual-style perspective, the starting island should:
- make its major spaces readable from normal player camera height
- use scale, paths, silhouettes, and environment treatment to distinguish those spaces
- avoid letting decorative objects overpower progression-relevant spaces
- preserve a clear sense of direction without requiring a minimap

## Orchard / tree language

The orchard should use a coherent family of trees rather than unrelated one-off styles.

Rules:
- establish one approved canonical tree before treating the orchard tree design as final
- derive variants from the approved tree rather than inventing several separate styles
- use modest rotation, scale, canopy, branch, and later apple-placement variation
- keep enough negative space for interaction and camera readability
- trees can be stylized/blocky but should still read immediately as orchard trees

Task-specific inspiration may be used while exploring the first tree design. Inspiration does not become a permanent visual rule until explicitly approved.

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
- reinforce the spatial flow defined by the relevant world document
- branch naturally toward important spaces
- use slight curves/offsets where practical
- remain broad enough for multiplayer movement
- avoid forming an overly perfect ring/grid unless the design intentionally calls for it

## Plot language

Plots should feel like authored personal spaces, not blank tycoon rectangles.

Use:
- clear boundary treatment
- entrances oriented toward shared circulation
- simple path/threshold into the plot
- enough open space for future upgrade silhouettes
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

Expected early canonical assets may eventually include:
- approved apple model
- approved apple tree
- approved cliff/grass/path treatment
- approved plot entrance/base
- approved Study Station tier 1

Do not assume these assets already exist in an empty or newly reset Studio place.

When the user explicitly approves a visual result:
1. save a screenshot/reference in `references/approved/`;
2. write a short note explaining what is approved;
3. update this document if the approval establishes a reusable rule.

When a result is rejected for an informative reason, record it in `references/rejected/` with specific failure reasons.