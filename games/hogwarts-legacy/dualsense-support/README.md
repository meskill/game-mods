# Hogwarts Legacy DualSense support

A UE4SS Lua mod that sets DualSense adaptive-trigger effects through DSX's UDP
server. Before loading the mod, enable UDP in DSX and connect the controller.
The mod does not use Sony's `PlayStationAccessories.exe` companion, so don't run
that companion alongside DSX.

## Flow

On load, `main.lua` asks DSX which controller to use. After that it samples the
game every 100 ms on the game thread:

1. **Not in gameplay** (`hogwarts.player`: paused, cinematic, dead, no
   player): both triggers off.
2. **Mounted** (`hogwarts.mounts`): spells pause and the triggers follow the
   mount (`mounts.lua`). A broom drives R2 and L2; a creature mount drives R2
   only. Broom hooks report mounting and dismounting; the boost meter is read
   only while riding.
3. **Otherwise R2 follows the wand.** It uses the baseline effect and switches to
   a light vibration while R2 holds the wand raised for a cast
   (`hogwarts.wand`, also while Lumos holds the wand up), applied the moment it
   changes; spell hooks report casts.

Spell casts come from hooks on `SpellTool` (`hogwarts.spells`), not from
sampling: R2 switches to the spell's fire effect (`spells.lua`) inside the
`Start` hook, and back when the cast ends. A cast without a projectile, such as
Lumos, never ends until the next spell replaces it, so its effect has a
`duration` (Lumos: a 0.3 s pulse) after which the next poll restores the wand's
effect. Casts are reported only while the last sample found the player on foot.

## Build and debug

- `dist.nu` (run from the `dev.cmd` shell) builds the mod directory under
  `dist/hogwarts-legacy-dualsense-support`.
- Restart the game after deploying; **Restart All Mods** can leave stale
  callbacks behind.
- The mod logs only failures, as `[HogwartsDualSense]` lines in the UE4SS GUI
  and `ue4ss/UE4SS.log`; `Hook ... unavailable` means a hook failed to
  register. To see what the game does, run the devtools experiments
  (`../devtools/src/experiments`). A spell with no profile in `spells.lua`
  gets the default effect; the spells experiment logs its database name.
- DSX keeps the last effect it was sent. Pause the game before you disable or
  reload the mod.
