---@meta
-- Notes on dumped Phoenix spell types (dump/Phoenix.lua, dump/Munitions.lua),
-- merged into those declarations by LuaLS. Editor-only, never require.
--
-- Structure facts come from the dump; behaviour facts from hooking these
-- functions while casting 12 spells out of combat. "Never called" means no
-- hooked call was seen: the game may call it natively. Anything not listed is
-- unknown.

---The wand the player holds: an actor in the world (`AWandTool : AItemTool : ATool : AActor`).
---It keeps one spell tool per spell record in `SpellToolMap`.
---@class AWandTool
---@field SpellToolMap TMap<USpellToolRecord, ASpellTool> The wand's spell tools, keyed by spell record.
---@field AvailableSpellLoadoutIndex int32 Stays 0 while the player switches spell sets; not the current set.
local AWandTool = {}

---Returns the spell tool the wand currently uses. The basic wand attack is also
---a spell tool: while it is in use, this returns the tool named `Stupefy`.
---@return ASpellTool
function AWandTool:GetActiveSpellTool() end

---Called on each change of the right arm, the moment it happens, on every
---character's wand. State 12 (`PlayHeavyAniticipationMotion`): right hand up
---with the wand; 7 (`StopMotionOnly`): casting; 3 (`HoldItem`): held low; 2
---(`UnEquipItem`): putting it away; 9 (`HideItem`): away. Some calls repeat the
---same state.
---@param RightArmState ERightArmState::Type
---@param LastRightArmState ERightArmState::Type
function AWandTool:OnRightArmStateChanged(RightArmState, LastRightArmState) end

---Called when a spell button is pressed, before the cast begins. `SpellSlot`:
---3–6 for the spell set's face buttons, 99 for Revelio.
---@param SpellSlot int32
function AWandTool:OnSpell_Pressed(SpellSlot) end

---Called when a spell button is released, before or after the spell fires;
---holding the button does not hold the cast. Releasing the spell set button
---calls it for every slot, 3–6, at once.
---@param SpellSlot int32
function AWandTool:OnSpell_Released(SpellSlot) end

---Called when the wand switches spell tools: on each spell button press, also
---when the same spell repeats (`ActivatedSpell` equals `DeactivatedSpell`), and
---in quick pairs for each spell of a set the player switches to (the wand
---previews each and switches back).
---@param ActivatedSpell ATool
---@param DeactivatedSpell ATool
function AWandTool:OnActiveSpellToolChanged(ActivatedSpell, DeactivatedSpell) end

---Never called while the player cast spells.
---@param InSpellTool ASpellTool
---@param bImmediate boolean
---@return boolean
function AWandTool:CastSpell(InSpellTool, bImmediate) end

---Casts the wand's active spell tool without a spell button: no
---`OnSpell_Pressed`. The game's own casts never call it. Quick casts
---(QuickUtils, `hogwarts.cast`) call it right after `ActivateSpellTool`;
---QuickUtils logs "Cast failed" when it returns false. Casting Lumos this way
---at a lit Lumos puts it out, as the spell button does.
---@return boolean
function AWandTool:CastActiveSpell() end

---Makes the spell tool of `SpellToolRecord` the active one, so
---`CastActiveSpell()` casts it; the spell needs no spell set slot. Runs
---`OnActiveSpellToolChanged`. Returns the activated tool. Quick casts pass
---`bImmediate` false; what true changes is unknown.
---@param SpellToolRecord USpellToolRecord
---@param bImmediate boolean
---@return ASpellTool
function AWandTool:ActivateSpellTool(SpellToolRecord, bImmediate) end

---Whether the player can cast the record's spell now, e.g. false for a spell
---not learned. Not a getter: each call switches the wand to the record's
---spell tool (`OnActiveSpellToolChanged`), also mid-cast, which breaks the
---cast in progress; never poll it. With `bImmediate` false it is false while
---another spell is being cast (`IsStopped()` false); true stayed true.
---Quick casts check it right before `ActivateSpellTool`, which switches anyway.
---@param SpellToolRecord USpellToolRecord
---@param bImmediate boolean
---@return boolean
function AWandTool:IsSpellToolAvailable(SpellToolRecord, bImmediate) end

---A spell's data asset, one per spell:
---`/Game/Gameplay/ToolSet/Spells/<Name>/DA_<Name>SpellRecord.DA_<Name>SpellRecord`.
---Seen in QuickUtils: `Lumos`, `Disillusionment`, `Reparo`, `Wingardium`. In
---the UE4SS object dump, the Room of Requirement's: `Conjuration` (create),
---`Transformation` (alter) and `Vanishment` (Evanesco); altering outside the
---room is `Transformation/DA_TransformationOverlandSpellRecord`. Loaded with
---`StaticFindObject`, or `LoadAsset` when not loaded yet.
---@class USpellToolRecord
local USpellToolRecord = {}

---Never called while the player cast spells.
function AWandTool:OnSpellCasted() end

---Never called while the player cast spells.
---@param InSpellTool ASpellTool
function AWandTool:EndSpellCast(InSpellTool) end

---The spell sets' owner: one transient `QuickActionManager` (`FindFirstOf`).
---`GetActiveGroupIndex()` is the chosen set (0-3: D-pad up, right, down,
---left), updated on each switch; there are 5 groups, the fifth all empty.
---Each set has 4 slots (macros 0-3: the diamond's top, right, bottom, left)
---of one item each. Spells are type 0 (count 0); the creature tools, which
---the player slots into sets like spells, are inventory items, type 1
---(the spell menu gives them count -1); an empty slot is type 2 "None".
---Items have no wand spell: the wand's slot reads none.
---@class UQuickActionManager
local UQuickActionManager = {}

---Puts `SpellID` (the record's name, e.g. `"Transformation"`) into spell
---`Slot` (0-3: the diamond's top, right, bottom, left) of set `Group` (0-3),
---in under 1 ms: slot n is the wand's slot 3 + n (`GetSpellRecordFromSlot`;
---wand slots 0 and 2 change with slot 0). For the chosen set the bar and the
---game's checks follow immediately: Altering written this way outlined room
---objects within 10 ms and worked. Called from Lua, no other hookable call
---followed and no save.
---`Biped_Character:SetSpell` and `SpellManagerBPInterface:SetSpell` (any
---index) change no set.
---@param SpellID FString
---@param Slot int32
---@param Group int32
function UQuickActionManager:SlotSpellFromCode(SpellID, Slot, Group) end

---Puts inventory item `ItemId` (e.g. `"CaptureDevice"`, the Nab-Sack) into
---slot `Slot` (0-3) of the chosen set, as the spell menu does with an
---`Amount` of -1: the bar shows it, and its button uses it
---(`Biped_Player:QuickActionInteract(Slot)`, then the item tool).
---@param ItemId FString
---@param Amount int32
---@param Slot int32
function UQuickActionManager:SlotInventoryItemFromCode(ItemId, Amount, Slot) end

---Put the Nab-Sack into the chosen set's slot with count 1; afterwards a
---second set (group 2) held it at the same slot too: may write more than one set.
---@param ItemId FString
---@param Slot int32
function UQuickActionManager:SlotToolFromCode(ItemId, Slot) end

---Changes a set entry's data only: the bar and the button keep the old entry,
---also after re-choosing the set.
---@param ItemName FString
---@param ItemVariation FString
---@param ItemType EUIQActionBarType
---@param ItemHolder FString
---@param RequestedGroupIndex int32
---@param Amount int32
---@param RequestedMacroIndex int32
---@param Index int32
function UQuickActionManager:UpdateSelectedActionItem(ItemName, ItemVariation, ItemType, ItemHolder, RequestedGroupIndex, Amount, RequestedMacroIndex, Index) end

---Fills `ItemName` of the table passed with the entry's name (an FName).
---@param GroupIndex int32
---@param MacroIndex int32
---@param ActionIndex int32
---@param ItemName FName
function UQuickActionManager:GetItemName(GroupIndex, MacroIndex, ActionIndex, ItemName) end

---One spell of the wand: an actor in the world (`ASpellTool : ATool : AActor`),
---e.g. `BP_ConfringoSpell_C`. `GetWand()` returns its wand.
---@class ASpellTool
---@field DatabaseName FName The spell's name. Seen in game: `Accio`, `ArrestoMomentum`, `Confringo`, `Depulso`, `Descendo`, `Diffindo`, `Disillusionment`, `Expelliarmus`, `Flipendo`, `Glacius`, `Incendio`, `Levioso`, `Lumos`, `Revelio`, and `Stupefy` for the basic attack.
local ASpellTool = {}

---Called when the cast begins, at the spell button press, after the wand
---switches to this tool. `WandCastName` was `"Default"` for every spell.
---@param WandCastName FName
function ASpellTool:OwnerHasStartedCasting(WandCastName) end

---Called once per cast when it fires: 0.3–0.7 s after the button press and
---0.03–0.33 s after the projectile spawns. `GetCharacter()` is the caster.
---@return boolean
function ASpellTool:Start() end

---False from the start of a cast until about 0.1 s after `Start`, then true.
---@return boolean
function ASpellTool:IsStopped() end

---True for a moment around `Start`, shorter than 100 ms; seen once in 18 casts.
---@return boolean
function ASpellTool:IsStarted_K2() end

---Stayed false for every spell, Levioso held included.
---@return boolean
function ASpellTool:IsChanneling() end

---The cast's projectile from about `Start` until it is destroyed, otherwise
---nil. A projectile can stay alive after it hits: Diffindo's does while its
---impact effects play.
---@return AMunitionType_Base
function ASpellTool:GetActiveMunition() end

---Called when a projectile of the spell hits something; called for 2 of 18
---casts (Confringo and Expelliarmus at a wall), not for every hit.
---@param MunitionInstance AMunitionType_Base
---@param MunitionImpactData FMunitionImpactData
function ASpellTool:OnMunitionImpact(MunitionInstance, MunitionImpactData) end

---Called when a projectile of the spell is destroyed, 0.1–0.7 s after `Start`;
---the end of a cast. Not called for a spell without a projectile (Revelio).
---@param InMunitionInstance AMunitionType_Base
function ASpellTool:OnMunitionDestroyed(InMunitionInstance) end

---Never called while the player cast spells, projectiles included.
---@param Target AActor
---@param TargetLocation FVector
---@param BaseMunition AMunitionType_Base
---@param InMunitionTagContainer FGameplayTagContainer
function ASpellTool:OnMunitionFired(Target, TargetLocation, BaseMunition, InMunitionTagContainer) end

---Never called while the player cast spells.
function ASpellTool:OnStop() end

---Never called while the player cast spells.
---@param Target AActor
---@param Location FVector
---@param MuzzleLocation FVector
function ASpellTool:OnCastSpell(Target, Location, MuzzleLocation) end

---The character casting the spell: the `ABiped_Player` for the player's casts.
---@return ACharacter
function ASpellTool:GetCharacter() end

---A spell's projectile: an actor in the world (`AMunitionType_Base : AActor`),
---spawned 0.02–0.37 s after the spell button press, before the spell's `Start`.
---Classes are `BP_SubSonic_<Spell>_C` (`BP_SubSonic_DiffindoUpgrade_C` for the
---upgraded Diffindo); Incendio also spawns `BP_AOE_Incendio2_C`. None of its own
---functions was called while the player cast spells.
---@class AMunitionType_Base
local AMunitionType_Base = {}

---Seconds the projectile has left to live.
---@return float
function AMunitionType_Base:GetRemainingLifeTime() end

---The Lumos spell tool (`BP_LumosSpell_C`). `Start` runs ~0.18 s after a
---turn-on press and not when Lumos is turned off.
---@class ALumosSpellTool
local ALumosSpellTool = {}

---True while the light is on; turns true ~0.05 s after `Start`.
---@return boolean
function ALumosSpellTool:IsLumosActive() end

---Lights it at `Priority` for `InInstigator` without a cast and runs no
---`Start`. Called with 1 and the tool itself after `DeactivateLumos` and
---`WandTool:CancelCurrentSpell`, the light stays on through other casts.
---@param Priority EStandardManagedPriority
---@param InInstigator UObject
function ALumosSpellTool:ActivateLumos(Priority, InInstigator) end

---The light's actor while the light is on, nil once it is out. Casting Lumos
---at a light kept with `ActivateLumos` removes it while `IsLumosActive()`
---stays true.
---@return ALumosEmberActor
function ALumosSpellTool:GetLumosActor() end
