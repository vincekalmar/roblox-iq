# Project Lessons

Durable lessons discovered while building Roblox IQ. Keep this short and specific; move broad reusable lessons back into the shared Roblox template/plugin when they apply to future games too.

## Visual / environment

- A long prose prompt is not enough to guarantee good environment art. Codex should build in stages and visually inspect screenshots between stages.
- Vague instructions such as "use studs selectively" are too weak. Important style choices need object/category-level rules in `VISUAL-STYLE.md`.
- Do not ask Codex to independently invent several tree styles. Establish one approved canonical tree first, then derive variants.
- The starting area became stronger once the general shop was removed and routine progression moved back to the player plot.
- A compact first area is preferable while traversal upgrades are unresolved. Current target is roughly 320–350 studs rather than a large simulator map.

## Agent workflow

- Studio/world art and filesystem code need clear ownership to avoid conflicting edits.
- For visual tasks, completion requires inspecting the actual viewport result, not only confirming the Explorer hierarchy.
- Save successful screenshots in `references/approved/` with notes explaining what is good about them.
- Save especially informative failures in `references/rejected/` with specific reasons, not just "bad."

## Game design

- IQ should unlock capabilities that make thematic sense; raw movement speed purely because IQ increased feels arbitrary.
- The plot should be authored/predetermined rather than free-build so progression remains readable and visually controlled.
- Open design questions should remain explicit rather than letting an implementation agent silently decide them.
