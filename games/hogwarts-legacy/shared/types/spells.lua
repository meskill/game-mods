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

---Never called while the player cast spells.
---@return boolean
function AWandTool:CastActiveSpell() end

---Never called while the player cast spells.
function AWandTool:OnSpellCasted() end

---Never called while the player cast spells.
---@param InSpellTool ASpellTool
function AWandTool:EndSpellCast(InSpellTool) end

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
