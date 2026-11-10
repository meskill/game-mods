# Hogwarts Legacy

Describe how different part of the game works and how to work with them inside the lua scripts.

## Functionality

### Gameplay

`hogwarts.gameplay` (`shared/src/hogwarts/gameplay.lua`) tells whether the
player is in gameplay. These take them out of it:

| `Gameplay.Reason` | When |
| --- | --- |
| `MENU` | the pause menu, the map or another menu page is open |
| `LOADING` | a loading screen shows, e.g. after fast travel |
| `CONJURATION` | the Room of Requirement conjuration menu is open |
| `DIALOGUE` | the player is talking to someone, vendors included |

```lua
local Gameplay = require("hogwarts.gameplay")

Gameplay.start() -- once, when the mod loads
Gameplay.isActive() -- true when nothing above is happening
local unsubscribe = Gameplay.subscribe(function(active, reason)
	-- active false: gameplay stopped, `reason` says why; stop gameplay work.
	-- active true: gameplay is back; start it again.
end)
```

The listener is called once when gameplay stops and once when it is back,
however many reasons overlap: a fast travel goes from `MENU` to `LOADING`
without coming back in between. It runs on the game thread, inside the
game's call. A reason that started before `start()` is not noticed.

### Spells

The wand (`WandTool`) holds one spell tool (`SpellTool`) per spell.
`GetActiveSpellTool()` returns the one in use; its `DatabaseName` is the
spell's name, such as `Confringo`. The basic attack is the `Stupefy` tool.

A cast runs in this order (times from the button press):

| Moment | Signal | Time |
| --- | --- | --- |
| Button pressed | `WandTool:OnSpell_Pressed(SpellSlot)`: 3 to 6 for the face buttons, 99 for Revelio | 0 |
| Cast begins | `WandTool:OnActiveSpellToolChanged`, `SpellTool:OwnerHasStartedCasting`; `IsStopped()` turns false | 0 |
| Projectile spawned | a new `BP_SubSonic_<Spell>_C` actor | 0.02 to 0.37 s |
| Spell fires | `SpellTool:Start` | 0.03 to 0.33 s after the spawn |
| Projectile gone | `SpellTool:OnMunitionDestroyed` | 0.1 to 0.7 s after `Start` |

Revelio has no projectile, so `Start` is its last signal. Holding the button
doesn't make a cast last longer.

The upgraded Incendio (`HasUpgradedMechanics()`) leaves a ring of burning
grass: its area actor, `IncendioSpellTool.CurrentAOE`, spawns about 0.1 s
after `Start` and burns until about 0.75 s, when it stops ticking and its
lifetime runs out; the last flames fade by about 1.5 s. `CurrentAOE` keeps
pointing at the old actor until the next Incendio.

`hogwarts.spells` (`shared/src/hogwarts/spells.lua`) reports the player's
casts. Create the tracker when the mod loads so its hooks register on the
game thread; it starts paused.

```lua
local Spells = require("hogwarts.spells")

-- warn receives hooks that could not be registered and fire poll errors.
local tracker = Spells.tracker(print)
tracker:listen({
	fired = function(cast) end, -- cast.name: lowercased DatabaseName, e.g. "confringo"; cast.spell: its spell tool
	impact = function(cast) end, -- its projectile hit something; at most once
	ended = function(cast, reason) end, -- no further events for this cast
})
tracker:resume() -- report casts, e.g. while the player is on foot in gameplay
tracker:pause() -- ignore them and end the current cast ("interrupted")
```

`fired` comes from `Start`, which runs on the cast's spell tool: `cast.spell` is
that tool and `cast.name` its `DatabaseName`, lowercased (`"confringo"`).
Upgraded spells keep the base name. The basic attack fires nothing and ends the
current cast as `"cancelled"`. `ended` reasons: `"gone"` when the projectile
is destroyed, `"replaced"` when another spell fires, `"cancelled"`, and
`"interrupted"` on `pause()`. An upgraded Incendio ends as `"gone"` when its
fire burns out: the tracker polls its area actor every 100 ms from `Start`
until then. A cast without a projectile never ends as `"gone"`. Callbacks run
inside the hooks, on the game thread.

#### Lumos

| Moment | Signal | Time |
| --- | --- | --- |
| Lumos cast | `SetRightArmState(StartLumos, Lumos)`: the wand goes up | 0 |
| Fires | `Start` on the `ALumosSpellTool`; `IsLumosActive()` still false | ~0.18 s |
| Lit | `IsLumosActive()` true, `IsStopped()` false | ~0.05 s after `Start` |
| Turned off (Lumos cast again) | `SetRightArmState(None, Lumos)`; `IsLumosActive()` false; no `Start` | 0 |

So a `fired` with `"lumos"` is always a turn-on; turning it off fires nothing
and the tracker keeps the Lumos cast until the next spell replaces it. Casting
another spell puts the game's own light out at once.

`DeactivateLumos`, `CancelCurrentSpell`, `ActivateLumos` (priority 1, the tool
as instigator) keeps the light on through other casts (`IsStopped()` true,
`IsLumosActive()` true) and runs no `Start`, but the cancel clears the Lumos
arm request: after the next cast the wand is put away with the light on.
`SetRightArmState(StartLumos, Lumos, true)` holds it up again, through casts,
until `SetRightArmState(None, Lumos, true)`.

Casting Lumos at such a kept light puts it out without `Start` or any arm
call. Its only hookable call is `WandTool:OnActiveSpellToolChanged` with the
Lumos tool as `ActivatedSpell`; 10–20 ms later `GetLumosActor()` returns
nothing, while `IsLumosActive()` stays true and the wand stays up until the
Lumos request is cleared. A light is on only while `IsLumosActive()` is true
and the light actor exists. Spell set previews also switch to the Lumos tool
(and straight back) but leave the light on, so a switch alone is no cast.

QuickUtils (a Blueprint quick-cast mod) casts Lumos with
`WandTool:ActivateSpellTool(DA_LumosSpellRecord, false)` and
`WandTool:CastActiveSpell`, and presses no spell button: `OnSpell_Pressed`
does not run for it.

### Wand

The right arm takes one request per priority (`ERightArmPriority`) with
`Biped_Character:SetRightArmState(InState, InPriority, bBroadcastChange)`; the
highest-priority request wins and `GetRightArmState(InPriority)` reads each
(`None`, 0, gives the winning one). The game keeps the wand's idle state
(`HoldItem`, `UnEquipItem`, `HideItem`) at `LowestPriority` (1), the raise
before a cast at `UpperBodyAnticipation` (4), Lumos at `Lumos` (8) and the
cast itself at `FullBodyUsage` (9); a request outlasts the higher ones and
takes the arm back when they end.

`WandTool:OnRightArmStateChanged(RightArmState, LastRightArmState)` runs the
moment the winning state changes, for every character's wand.

| State | Value | What you see |
| --- | --- | --- |
| `StartLumos` | 14 | wand held up in front, as for Lumos |
| `PlayHeavyAniticipationMotion` | 12 | right hand up, wand raised |
| `StopMotionOnly` | 7 | casting a spell |
| `HoldItem` | 3 | wand held low at the side |
| `UnEquipItem` | 2 | putting the wand away, about 0.25 s |
| `HideItem` | 9 | wand put away |

Raising the wand goes to 12; lowering it goes 12 → 2 → 9, or 12 → 3 when it
stays in hand. A cast goes to 7, then back to 12 or 3, or to the Lumos request.

Holding the cast button raises the wand with a request at
`UpperBodyAnticipation` (`SetRightArmState(PlayHeavyAniticipationMotion, 4)`),
cleared with `None` on release. While Lumos holds the wand up at its higher
priority the arm state stays 14, so the raise shows only in that request.

`hogwarts.wand` (`shared/src/hogwarts/wand.lua`) reports only the player's
wand and arm, and skips repeated states:

```lua
local Wand = require("hogwarts.wand")

local unsubscribe = Wand.subscribe({
	changed = function(state, last) end, -- Wand.State.RAISED, CASTING, HOLD, UNEQUIP, HIDDEN, or 14 (Lumos)
	raised = function(raised) end, -- the cast button raised or lowered the wand
})
Wand.isRaised() -- the wand is raised for a cast, also under Lumos
Wand.state() -- nil until the first change after the hook is installed
```

### Broom

Summoning the broom spawns two `FlyingBroom` actors: a prop that scales in
and out, and the `BP_FlyingBroomCapsule_<Broom>_C` pawn the player rides. The
controller keeps possessing the player.

| Moment | Signal |
| --- | --- |
| Mounted | `FlyingBroom:SetupPlayerOnBroom(BipedPlayer)` on the ridden broom |
| Dismounted | `FlyingBroom:DetachPlayerFromBroomOnDismount(BipedPlayer, BroomProp, …)`; `Biped_Player:GetIsOnAMountOrInTransition()` stays true about 2 s longer |

Speeding up, boosting and the boost meter run no hookable function; read them
from the ridden broom:

| Getter | Meaning |
| --- | --- |
| `IsInHoverMode()` | false while the player speeds up or boosts |
| `IsInBoost()` | boosting; stays true a few seconds after letting go |
| `GetBoostMeterAmount()` / `GetMaxBoostMeter()` | drains while boost is held; refills about 12 s after running out |
| `IsBoostRecharging()` | true after letting go of boost, until the next boost; false while refilling after running out |

`hogwarts.mounts` (`shared/src/hogwarts/mounts.lua`) reports the mount the
player rides. Create the tracker when the mod loads so its hooks register;
a broom ridden at that moment is seen from the next mount. The tracker polls
by itself every 100 ms while the player function returns a player: on a broom
it only checks the broom still exists; otherwise it looks for a ridden
creature, which has no hooks yet.

```lua
local Mounts = require("hogwarts.mounts")

-- warn receives hooks that could not be registered and poll errors; the
-- function returns the player and controller in gameplay, or nil to skip a poll.
local tracker = Mounts.tracker(print, function() return pawn, controller end)
tracker:listen({
	mounted = function(mount) end, -- mount.kind: "broom", "graphorn", "hippogriff", …; mount.actor
	riding = function(mount) end, -- every poll on the mount, e.g. to read the boost meter
	dismounted = function(mount) end,
})
tracker:current()
```

Creature mounts are not verified in game.
