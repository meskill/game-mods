# Hogwarts Legacy quick cast

Casts utility spells and uses the creature tools from the gamepad without a
spell set slot: hold RB (R1) and press a face button. While RB is held the
chosen spell set shows these actions, each at its button's place on the
diamond. Works on foot and on a mount.

| RB + | Spell | In the Room of Requirement | Beast in focus, out of combat (also in a vivarium) |
| --- | --- | --- | --- |
| Triangle (Y) | Lumos | Lumos | Lumos |
| Cross (A) | Disillusionment | Altering: modify an object | Nab-Sack: catch it |
| Square (X) | Reparo | Conjuring: create an object | Brush: pet it |
| Circle (B) | Wingardium Leviosa | Evanesco: remove an object | Beast food: feed it |

## How it works

- Every 20 ms in gameplay, RB and the face buttons are read
  (`hogwarts.input`). A face button press while RB is already held casts
  once.
- A spell is cast with the wand (`hogwarts.cast`): `ActivateSpellTool` with
  the spell's record, then `CastActiveSpell`. Unlearned spells are logged.
- In the Room of Requirement and its vivariums (`conjuration.lua`: the
  game's conjuration context is set) the face buttons cast the room's spells
  (records `Vanishment`, `Transformation`, `Conjuration`).
- Pressing RB writes the buttons' actions into the chosen set (`loadout.lua`),
  each into the slot of its button (`SET_SLOTS`: slots 0-3 are the
  diamond's top, right, bottom, left): spells with
  `QuickActionManager:SlotSpellFromCode`, the creature tools with
  `SlotInventoryItemFromCode(item, -1, slot)`, as the spell menu writes
  them. The set's own entries are read from the manager
  (`GetItemType`/`GetItemName`). Releasing RB writes them back into that
  set, also if another set was chosen meanwhile (an item into a set no
  longer chosen goes back with `UpdateSelectedActionItem`, not verified in
  game). Actions still run directly; the set only shows them. In the room
  this is also what makes Altering and Evanesco work: the game outlines
  room objects, and lets these spells act on one, only while the chosen set
  holds a room spell.
- The contexts for the set are read when RB goes down: each slot shows its
  button's action that applies then. Empty slots stay empty, since the mod
  cannot clear a slot again, and an entry the set holds in a slot that is
  not written stays there instead of showing twice. A menu opened meanwhile
  keeps the mod's entries until gameplay resumes with RB up; loading a save
  drops the swap without writing.
- With a beast in focus within its reach (`beasts.lua`: the controller's auto
  target is a creature no farther than its `NurtureInteractRange`, 8 m, and
  the player is not in combat) the face buttons tend it, before
  the room's spells: Cross catches it with the Nab-Sack, Square pets it with the
  brush, Circle feeds it. Each uses the tool as the game's own slot does,
  `UseInventoryItemByName(<item>, "Toolbox_Storage")` with `CaptureDevice`,
  `CreaturePettingBrush` and `CreatureFeed`, then releases it at once with
  the active tool's `EndItemUsage()`, as the button's release does: without
  it the player stays slow and the camera close for the whole use (~16 s
  instead of ~2 s). Verified in game. A tool press while another tool use
  runs is ignored, until the game's use task exits
  (`BTT_BipedUpper_UseInventoryItem_C:ExitTask`, ~2.5 s for the food), since
  a feed started during a feed left the player able only to walk.
- While RB is held, the game's face button actions (jump, dodge, interact,
  attacks, mount actions) are switched off, and back on when RB is released
  or a menu opens.
- In the room the game opens the beasts panel at RB's press
  (`UMGCreatureManagementScreen`). There the mod keeps that action off RB
  (`passthrough.lua`, a `hogwarts.input` action blocker), so holding RB for
  a combo opens nothing, and a plain click (released within 0.35 s with no
  combo) opens it: the mapping goes back, the game is sent an RB press
  (`MastermindBPLibrary:SimulateInput`) and 100 ms later the release, and
  the action is taken off again. Outside the room and in menus the action
  is on RB as usual. The replay was verified in the devtools experiment
  `experiments/vivarium.lua`.

The configuration is at the top of `main.lua`: `BUTTONS` maps each button to
its action per context (`default`, `room`, `beast`), `CONTEXTS` sets their
priority. An action is a spell record name (`"Lumos"`) or an inventory item
to use as the game's buttons do (`{ item = "CaptureDevice" }`, the Nab-Sack;
`holder` defaults to `"Toolbox_Storage"`). A button takes the action of the
first context it lists that applies; contexts are read only when RB goes
down and on a combo, and only those the button lists (`actions.lua`).
`SET_SLOTS` gives the button of each set slot. `combos.lua` reports
the pressed buttons; `conjuration.lua` tells whether the player is in the
room; `beasts.lua` finds the beast in focus; `passthrough.lua` passes RB's
clicks through in the room. `CLICK_MAX_SECONDS` and `ROOM_MODIFIER_ACTION`
set the click and the action.

## Build

`dist -g hogwarts-legacy -m quick-cast`, then add `quick-cast : 1` to
`Mods/mods.txt`. The log shows `[QuickCast] Quick cast started`, then only
failed casts and errors.

## Known issues

- Verified in game: catching a beast with the Nab-Sack. Not tested in game
  yet, including:
  - whether the game casts these spells on a mount;
  - the conjuration context in and out of the room;
  - writing the set on RB outside the room, the diamond positions, and
    whether releasing RB while Altering's options are open closes them.
  - quick-cast's own click passthrough; the panel opens at the click's
    release, not at the press as in the game.
- The game froze once while the devtools room experiment hooked every
  `QuickActionManager` function natively; without those hooks it did not.
- Restarting mods or quitting while RB is held leaves the mod's spells in the
  chosen set; fix it in the game's spell menu. A save made while RB is held
  keeps them too.
- Pressing RB writes the set, and a set change makes the wand switch through
  its spells: pressing RB mid-cast may break that cast (not tested).
- With `lumos-keeper`, Lumos cast on a mount goes out within 200 ms.
- Pressing RB and a face button at the same moment (within 20 ms) does not
  cast, and the game gets the button.
- Restarting mods while RB is held leaves the face button actions off until
  the game restarts.
