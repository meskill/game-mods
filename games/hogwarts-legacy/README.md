# Hogwarts Legacy

Describe how different part of the game works and how to work with them inside the lua scripts.

## Functionality

### Menus

The pause menu and its pages (Gear, Inventory, Talents, Map, Settings, …) are
all the Field Guide. Every opening and closing takes the same path:

| Moment | Signal |
| --- | --- |
| Opening | `UIManager:FieldGuideMenuStart`; a page opened directly is preceded by `UIManager:SetActiveMenu` with its `MenuToLoad` (`"Inventory"`, `"Settings"`, …) |
| Paused | `GameplayStatics:IsGamePaused` turns true immediately |
| Closing | `UIManager:ExitFieldGuideWithReason` with `ExitReason=1` (back to game) |
| Resumed | `IsGamePaused`, `UIManager:InPauseMode` and `MapSubSystem:GetInPauseMenu` turn false together, with a delay after closing |

`InPauseMode` and `GetInPauseMenu` turn true with a delay after opening, so
`IsGamePaused` is the better opening signal.

Spell tracking stops while `IsGamePaused` is true, which matches the Field
Guide's opening and closing. The map opened by its own key, dialogue, vendors
and loading screens are not verified yet.

The shared `hogwarts.menus` module (`shared/src/hogwarts/menus.lua`) hooks
the opening and closing calls:

```lua
local Menus = require("hogwarts.menus")

local unsubscribe = Menus.subscribe({
	opened = function() end, -- the game pauses immediately
	closed = function() end, -- the game resumes with a delay
})
Menus.isOpen()
```

A menu already open when the mod loads is not seen until it is reopened.

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
	fired = function(cast) end, -- cast.name: lowercased DatabaseName, e.g. "confringo"
	impact = function(cast) end, -- its projectile hit something; at most once
	ended = function(cast, reason) end, -- no further events for this cast
})
tracker:resume() -- report casts, e.g. while the player is on foot in gameplay
tracker:pause() -- ignore them and end the current cast ("interrupted")
```

`fired` comes from `Start`, which runs on the cast's spell tool: `cast.name` is
that tool's `DatabaseName`, lowercased (`"confringo"`). Upgraded spells keep
the base name. The basic attack fires nothing and ends the
current cast as `"cancelled"`. `ended` reasons: `"gone"` when the projectile
is destroyed, `"replaced"` when another spell fires, `"cancelled"`, and
`"interrupted"` on `pause()`. An upgraded Incendio ends as `"gone"` when its
fire burns out: the tracker polls its area actor every 100 ms from `Start`
until then. A cast without a projectile never ends as `"gone"`. Callbacks run
inside the hooks, on the game thread.

### Wand

`WandTool:OnRightArmStateChanged(RightArmState, LastRightArmState)` runs the
moment the right arm changes, for every character's wand.

| State | Value | What you see |
| --- | --- | --- |
| `PlayHeavyAniticipationMotion` | 12 | right hand up, wand raised |
| `StopMotionOnly` | 7 | casting a spell |
| `HoldItem` | 3 | wand held low at the side |
| `UnEquipItem` | 2 | putting the wand away, about 0.25 s |
| `HideItem` | 9 | wand put away |

Raising the wand goes to 12; lowering it goes 12 → 2 → 9, or 12 → 3 when it
stays in hand. A cast goes to 7, then back to 12 or 3.

`hogwarts.wand` (`shared/src/hogwarts/wand.lua`) reports only the player's
wand and skips repeated states:

```lua
local Wand = require("hogwarts.wand")

local unsubscribe = Wand.subscribe({
	changed = function(state, last) end, -- Wand.State.RAISED, CASTING, HOLD, UNEQUIP, HIDDEN
})
Wand.isRaised()
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
