# DualSense games

This project aims to provide DualSense controller support for games that do not have official integration.

## Hogwarts Legacy

The UE4SS Lua mod uses DSX's UDP server for right-trigger effects. Enable UDP in
DSX and connect an adaptive-trigger controller before loading the mod. It does
not use Sony's `bridge_state.txt` or `PlayStationAccessories.exe`; do not run that
companion alongside DSX while comparing effects.

During active gameplay R2 follows the wand:

1. **Idle, or R2 clicked** (the basic wand attack): DSX `GameCube` (legacy mode
   1, no arguments).
2. **R2 held** for at least 0.3 s (casting spells): light vibration,
   `VIBRATION` start 3, amplitude 1, 20 Hz.
3. **Spell fires:** the spell's fire effect below replaces both, from the
   sample it fires until the first later sample without its projectile.
4. **After the fire effect:** `VerySoft` for 100 ms, then the hold vibration if
   R2 is still held.

The hold is read from the player controller:
`APlayerController:GetInputKeyTimeDown` for the `Gamepad_RightTrigger` key.
Whether the game reports DualSense R2 under that key is not yet verified in
game; debug mode logs `R2 down|held|up (down <s>)` on every change.

### Mounts

While the player rides any mount, spell tracking pauses and the triggers
follow the mount (`mounts.lua`). On a broom both triggers follow the broom:

| Trigger | Effect |
| --- | --- |
| R2 (speed up) | `Machine` start 1, end 9, strength A 1, strength B 0, frequency 1, period 6 |
| L2 (nitro) | `Machine` start 1, end 9, strength A 1, strength B 1, frequency 10, period 6 |
| L2, nitro used up | Maximum resistance (`FEEDBACK` start 1, strength 8) until the meter refills to 10% |

`backends/dsx/API.md` documents `Machine` period as 0-2; period 6 is sent as
configured (DSX does not validate it).

On a creature mount (Graphorn, Hippogriff, and the other `EMountTypes`) R2
follows what the creature does and L2 is off. These are experimental
`Galloping` presets (start, end, first foot, second foot, frequency); the game's
mount component holds its own jog and charge trigger effects, which is why
those moments get feedback:

| Creature state | R2 effect |
| --- | --- |
| On the ground | Two-beat gallop (`Galloping` 0, 9, feet 2 and 5, 3 Hz) |
| Combat charge (`CombatChargeActive`, Graphorn) | Heavier, faster hooves (`Galloping` 0, 9, feet 4 and 6, 6 Hz) |
| Flying (`IsFlying()`, Hippogriff) | Slow wingbeats (`Galloping` 0, 9, feet 1 and 3, 1 Hz) |

Debug mode logs `mount <kind> state gallop|charge|flight` on every change.
The creature reads come from the dumped types and are not verified in game.

Mount tracking lives in the shared `hogwarts.mounts` module
(`games/hogwarts-legacy/shared`), which reports `mounted` and `dismounted`
events with the mount's kind: `broom`, or for creature mounts `graphorn`,
`hippogriff`, `niffler`, or `avatar` (from the handler's `EMountTypes`
`CreatureMountType`). A broom is the `AFlyingBroom` whose `MountedCharacter`
is the player; a creature mount is the `ACreature_Character` whose
`ACreatureMountHandler.RiderCharacter` is the player. The mount is either the
controller's possessed pawn, or found by scanning `FlyingBroom` and
`CreatureMountHandler` actors at most once per second while
`ABiped_Player:GetIsOnAMountOrInTransition()` is true, then cached. Every
sample also requires the player to still be on a mount (or the controller to
possess it): a broom keeps its `MountedCharacter` after the rider drops off
it. Nitro counts as used up when `GetBoostMeterAmount()` falls to 1% of
`GetMaxBoostMeter()` and as reloaded once it refills to 10%
(`READY_FRACTION` in `mounts.lua`). Debug mode logs
`mount mounted <kind> <name>`, `mount dismounted <kind>`,
`broom boost=<b> recharging=<b> meter=<amount>/<max>` on every boost or
recharge change, and `nitro empty|recharged`. The broom reads are not verified
in game yet; the creature-mount reads follow the dumped types only.

Motion-control fire effects follow this model:

| Spell | Fire effect |
| --- | --- |
| Accio | Resistance from the top (`FEEDBACK` start 1, strength 6) |
| Levioso | Resistance from the top (`FEEDBACK` start 1, strength 6) |
| Depulso (and Maxima) | Effect off, trigger presses freely |
| Descendo | Effect off, trigger presses freely |
| Diffindo, Expelliarmus, Flipendo, Avada Kedavra, Imperio, Arresto Momentum, Bombarda (`expulso` also recognized), Confringo, Oppugno, Crucio, Confundo, Glacius (and Maxima) (projectile) | Slow, strong vibration (`VIBRATION` start 3, amplitude 5, 3 Hz) |
| Lumos, Petrificus Totalus, Protego, Wingardium Leviosa, Disillusionment, Obliviate, Episkey, Finite, Revelio, Reparo (and Maxima) (utility) | Light vibration from region 0 over the whole travel, one step above the hold (`MULTIPLE_POSITION_VIBRATION` 20 Hz, amplitude 2 in all ten regions) |
| Incendio (area, many targets) | Heavy vibration from the top (`VIBRATION` start 1, amplitude 8, 10 Hz) |

The basic wand attack runs as the `Stupefy` spell tool. It is not treated as a
spell: while it is the active spell, R2 keeps `VerySoft` with no hold vibration
or fire effect.

`FEEDBACK` start 1 is the topmost region `backends/dsx/API.md` documents for
that mode. Any other spell gets light resistance (`FEEDBACK` start 2,
strength 3).

The fire moment is sampled, not hooked. In-game logs show a cast as
`IsStopped()` false while held, `IsStarted_K2()` true briefly when it fires
(caught in one of eleven casts at 100 ms sampling), then `IsStopped()` true.
Cast detection lives in the shared `hogwarts.spells` module
(`games/hogwarts-legacy/shared`), which reports `fired`, `impact`, and `ended`
events. It treats a held cast as fired on the first of: `IsStarted_K2()`
sampled true, a new `ASpellTool:GetActiveMunition()` projectile (one that was
not already live when the hold began), or the cast ending. Debug mode logs
`cast held`, `spell fired database=<name> via started|projectile|cast end`,
and the mod's `spell effect database=<name> matched|default`. Without a
sampled start or new projectile, the fire effect is up to one sample late,
after `IsStopped()` returns to true.

Projectile spells end earlier: some munitions (Diffindo's) stay alive after
the hit to play impact visuals, so their effect ends at the cast's `impact`:
the first sample where the projectile, having been seen moving, reports
`AActor:GetVelocity()` below 1 cm/s. Debug mode logs
`projectile stopped after <s>`.
Whether every projectile munition reports zero velocity on impact is not yet
verified in game.

Other fire effects last until the cast ends: each 100 ms sample,
`GetActiveMunition()` must return a valid actor that is not being destroyed.
The first sample after firing without one ends the cast, so a spell with no
projectile gets a single-sample pulse. A cast is capped at 3 s after firing,
in case a pooled projectile never reports destruction. Debug mode logs
`projectile <address> <name> life=<seconds>`, `projectile gone after <s>`, and
`spell ended database=<name> gone|capped|replaced|cancelled|interrupted [after <s>]`; whether every
spell's projectile is exposed through `GetActiveMunition()` is not yet
verified in game.

Profiles are in `games/hogwarts-legacy/dualsense-support/src/Scripts/spells.lua`. They are
custom DSX presets, not recovered Sony profiles. The local player's wand is
sampled every 100 ms. Changing the spell or wand cancels a pending fire and
the current fire effect. Pausing, cinematics, or death turn R2 off and cancel
the fire effect. Resuming during an unchanged, ongoing cast does not replay
it. Off the broom, the left trigger is untouched until a broom first drives
it; after that it is switched off whenever the player is not riding.

This is sampled state detection, not a complete cast-event stream. Casts
shorter than a sample, or back-to-back casts whose stopped gap falls between
samples, can be missed. Whether selecting a spell without casting can clear
`IsStopped()` has not been observed.

`DEBUG = true` in `main.lua` logs `[HogwartsDualSense][debug]` lines for
gameplay-state changes, spell lifecycle flags, cast decisions, sent packets,
and DSX replies.

The player controller is cached while valid; pawn changes are still checked on
each gameplay poll. If the controller disappears during travel, rediscovery is
limited to once per second, because each lookup scans every PlayerController.
Lookups use the shared `ue4ss` package (`engines/ue4ss/helpers`), not the
installation's UEHelpers, whose behaviour differs between UE4SS versions.

### Spell identification

The old `SpellTool:OnCastSpell` hook and temporary `WandTool:CastSpell` probe
were removed: the observed captures recorded no callbacks, while
`GetActiveSpellTool()` correctly reported spell identities. Detection now reads
`player:GetWand():GetActiveSpellTool()` and uses its `IsStopped()` state.
Profiles match the exact lowercased `DatabaseName`. In-game logs showed
`Incendio`, `Glacius`, `Confringo`, `Disillusionment`, `Diffindo`, `Accio`,
`Depulso`, `Descendo`, `Levioso`, and `ArrestoMomentum`. The other names follow
the dumped Phoenix `*SpellTool` class names, with aliases for the spoken names
(`imperio`, `petrificustotalus`, `wingardiumleviosa`); they are not yet
verified in game. Unlisted casts use the default effect and log
`spell effect database=<name> default` in debug mode, which gives the exact name
to add.

`main.lua` owns DSX discovery, the gameplay gate, packet sending, and the
polling loop; `spells.lua` owns the spell profiles; the shared
`hogwarts.spells` owns cast detection and timing.

To verify, load a save and use **Restart All Mods** in the UE4SS GUI (on the
inspected installation, `EnableHotReloadSystem = 0`: Ctrl+R does not reload
mods). Look for `[HogwartsDualSense] Local wand spell polling ready`, then cast
a supported spell and look for `[HogwartsDualSense] Spell effect: <name>`.
To identify a spell without a profile, inspect the active spell instance's
`DatabaseName` in UE4SS **Live View**. Do not invoke `Start`, `StopActive`, or
other mutating functions merely to inspect state. The generated declarations
under `games/hogwarts-legacy/shared/types/dump/` describe available APIs, not their
runtime timing.

Output goes to the UE4SS GUI log and `ue4ss/UE4SS.log`. To follow the installed
log in PowerShell:

```powershell
Get-Content 'O:\SteamLibrary\steamapps\common\Hogwarts Legacy\Phoenix\Binaries\Win64\ue4ss\UE4SS.log' -Tail 80 -Wait
```

The polling behavior has not yet been verified in-game; hook-based smoke
results from earlier versions do not validate it.
