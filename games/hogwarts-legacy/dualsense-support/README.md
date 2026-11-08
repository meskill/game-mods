# Hogwarts Legacy DualSense support

A UE4SS Lua mod that sets DualSense adaptive-trigger effects through DSX's UDP
server. Before loading the mod, enable UDP in DSX and connect the controller.
The mod does not use Sony's `PlayStationAccessories.exe` companion, so don't run
that companion alongside DSX.

## Flow

On load, `main.lua` asks DSX which controller to use. After that it samples the
game every 100 ms on the game thread:

1. **Not in gameplay** (paused, cinematic, dead, no player): both triggers off.
2. **Mounted** (`hogwarts.mounts`): spells pause and the triggers follow the
   mount (`mounts.lua`). A broom drives R2 and L2; a creature mount drives R2 only.
3. **Otherwise R2 follows the wand.** It uses the baseline effect and switches to
   a light vibration while the wand is raised (`hogwarts.wand`: right hand up
   with the wand), applied the moment the arm changes; spell hooks report casts.

Spell casts come from hooks on `SpellTool` (`hogwarts.spells`), not from
sampling: R2 switches to the spell's fire effect (`spells.lua`) inside the
`Start` hook, and back when the cast ends (projectile destroyed, or the spell
stopped without one) or, for projectile effects, on impact. Casts are reported
only while the last sample found the player on foot. None of the hooks is
confirmed in the current game build; with `DEBUG`, `spell fired`, `spell
projectile fired`, `spell projectile hit`, and `spell ended` lines show which run.
Without an ending hook, the fire effect lasts until the next cast or a pause.
`Hook ... unavailable` in the regular log shows one failed to register.

## Build and debug

- `dist.nu` (run from the `dev.cmd` shell) builds the mod directory under
  `dist/hogwarts-legacy-dualsense-support`.
- Reload with **Restart All Mods** in the UE4SS GUI. Ctrl+R hot reload is
  disabled on the tested install.
- `DEBUG = true` in `main.lua` logs `[HogwartsDualSense][debug]` lines to the
  UE4SS GUI and `ue4ss/UE4SS.log`. A spell with no profile shows up as
  `spell effect database=<name> default`; add `<name>` to `spells.lua`.
- DSX keeps the last effect it was sent. Pause the game before you disable or
  reload the mod.
