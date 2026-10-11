---@meta
-- Notes on dumped Phoenix spell types (dump/Phoenix.lua), merged into those
-- declarations by LuaLS. Editor-only, never require.
--
-- Structure facts come from the dump; behaviour facts come from in-game logs
-- sampled every 100 ms. Anything not listed is unknown.

---The wand the player holds: an actor in the world (`AWandTool : AItemTool : ATool : AActor`).
---It keeps one spell tool per spell record in `SpellToolMap`.
---@class AWandTool
---@field SpellToolMap TMap<USpellToolRecord, ASpellTool> The wand's spell tools, keyed by spell record.
local AWandTool = {}

---Returns the spell tool the wand currently uses. The basic wand attack is also
---a spell tool: while it is in use, this returns the tool named `Stupefy`.
---@return ASpellTool
function AWandTool:GetActiveSpellTool() end

---Its name suggests it casts the given spell tool; that is unconfirmed: a
---RegisterHook on it recorded no calls while the player cast spells.
---@param InSpellTool ASpellTool
---@param bImmediate boolean
---@return boolean
function AWandTool:CastSpell(InSpellTool, bImmediate) end

---One spell of the wand: an actor in the world (`ASpellTool : ATool : AActor`).
---`GetWand()` returns its wand.
---@class ASpellTool
---@field DatabaseName FName The spell's name. Seen in game: `Accio`, `ArrestoMomentum`, `Confringo`, `Depulso`, `Descendo`, `Diffindo`, `Disillusionment`, `Glacius`, `Incendio`, `Levioso`, and `Stupefy` for the basic attack.
local ASpellTool = {}

---False while the player holds a cast (about 300-500 ms, longer when held
---longer), true once the cast is over.
---@return boolean
function ASpellTool:IsStopped() end

---True for a moment when the cast fires, shorter than 100 ms: sampling every
---100 ms caught it in one of eleven casts.
---@return boolean
function ASpellTool:IsStarted_K2() end

---Returns the projectile (munition actor, `AMunitionType_Base : AActor`) the spell
---fired. A projectile can stay alive after it hits: Diffindo's does while its
---impact effects play.
---@return AMunitionType_Base
function ASpellTool:GetActiveMunition() end

---Its name suggests it runs when the spell is cast; that is unconfirmed: a
---RegisterHook on it recorded no calls while the player cast spells.
---@param Target AActor
---@param Location FVector
---@param MuzzleLocation FVector
function ASpellTool:OnCastSpell(Target, Location, MuzzleLocation) end

---A spell's projectile: an actor in the world (`AMunitionType_Base : AActor`).
---@class AMunitionType_Base
local AMunitionType_Base = {}

---Seconds the projectile has left to live.
---@return float
function AMunitionType_Base:GetRemainingLifeTime() end
