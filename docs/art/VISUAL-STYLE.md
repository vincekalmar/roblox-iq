# Visual Style

## Target

A bright, chunky, intentionally Roblox-like world with readable forms and visible classic Roblox surface language.

The desired result should look like a polished Roblox game environment, not generic AI low-poly fantasy art.

The starting island should feel charming and toy-like: clear grass platforms, chunky cliff/rock structure, simple stylized trees, readable paths, sparse decoration, and strong gameplay landmarks.

## Avoid

- hyper-realistic terrain
- generic smooth low-poly fantasy islands
- hundreds of tiny decorative Parts
- overly dense foliage
- giant empty lawns
- massive ornamental structures that overpower gameplay
- perfectly symmetrical layouts that feel like a diagram rather than a place
- making every surface smooth when studs are part of the intended identity
- making every surface studded indiscriminately

## Geometry

Prefer:
- simple Roblox Parts where they produce a stronger Roblox identity
- chunky rock/cliff masses
- clean silhouettes
- readable proportions relative to the avatar
- a small number of strong shapes rather than many noisy fragments
- gentle path curves/offsets instead of a rigid grid when practical
- asset variation derived from canonical assets

Avoid:
- micro-detail made from dozens of small Parts
- realistic tree simulation
- overly smooth procedural terrain as the default look
- independently reinventing the art style for every prop

## Materials and surfaces

### Studs
Studs are intentional and should be visually obvious in selected object categories.

Current rule:
- grass-top platform Parts: studded top surface unless a specific approved design says otherwise
- plot floors/build pads: studs are generally desirable when they reinforce the Roblox toy/build language
- selected chunky cliff/stone blocks: use studded visible faces where it looks intentional and readable
- selected wooden/structural Parts: studs can be used when consistent with the canonical asset

Do not interpret "selective" as "almost none." If a category is listed above, the first visual pass should clearly demonstrate the stud treatment.

### Smooth surfaces
Use smooth surfaces for:
- paths when studs hurt navigation/readability
- small decorative details where studs create noise
- elements whose approved canonical asset is smooth

### Built-in materials
Use Roblox built-in materials when they improve readability without turning the environment realistic. Grass, Rock/Slate, Wood/WoodPlanks, and simple masonry are acceptable starting points.

### MeshParts
Use MeshParts when they materially improve a hero/canonical asset. Do not default every environmental prop to a generated mesh.

### Terrain
Terrain is optional and should not erase the chunky Roblox construction language. Prefer Parts for major starting-island forms unless an approved test demonstrates a better hybrid.

## Color

- bright and welcoming early-game palette
- strong separation between grass, path, cliff, wood, and interaction surfaces
- gameplay objects should stand out from background decoration
- avoid muddy realistic color grading
- use lighting to support readability before adding decorative complexity

Exact palette values should come from approved Studio tests rather than being invented in this document.

## Environment density

The environment should feel finished but not crowded.

Rules:
- keep clear walking/interaction space around important objects
- use small clusters of rocks, flowers, bushes, fences, or lights as accents
- do not line every island edge with trees
- allow visible cliff/floating-island silhouette
- decoration should explain boundaries, guide the eye, or support atmosphere

## Visual hierarchy

At a normal gameplay camera on the starting island, the player should understand:

1. the orchard/current gameplay target
2. nearby player plots and where their own progression home is
3. the future comprehension gate/next-area aspiration

The spawn itself should not become a competing giant landmark.

## Trees

The orchard should initially use roughly five trees, not a dense forest.

Known direction:
- use the existing Studio tree/apple work as the canonical style anchor when available
- create subtle variants from that anchor rather than independently generating unrelated tree styles
- variation can come from rotation, modest scale changes, canopy proportions, branch orientation, and apple placement/count
- trees need clear walkable/interactable spacing

If `ReferenceBirchStudTree` exists in the Studio scene, inspect and preserve it as a canonical reference rather than recreating it from scratch.

## Floating-island language

The starting area should read clearly as a floating island:
- grassy playable top
- chunky layered rock/cliff underside
- visible edge silhouette
- sparse edge protection that does not feel like an obvious wall
- invisible barriers may provide the actual safety while rocks/vegetation provide the visual explanation

## Canonical assets

Canonical assets must be discovered from the live Studio project and approved references before replacement.

Current expected canonical references:
- the existing apple/tree work in Studio
- future approved starting-plot composition
- future approved cliff/path material test

When a result is explicitly approved, add a screenshot/note to `references/approved/` and update this section if it establishes a reusable rule.
