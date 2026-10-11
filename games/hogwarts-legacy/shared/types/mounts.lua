---@meta
-- Notes on dumped Phoenix mount types (dump/Phoenix.lua, dump/Phoenix_enums.lua),
-- merged into those declarations by LuaLS. Editor-only, never require.
--
-- Structure facts come from the dump. Unless a note says it was seen in game,
-- the behaviour of these members has not been observed.

---A broom in flight: a pawn (`AFlyingBroom : APawn`). While the player rides it,
---the player controller may possess the broom instead of the player.
---@class AFlyingBroom
---@field MountedCharacter APawn The character riding the broom. Seen in game: it still points at the rider after they drop off the broom.
local AFlyingBroom = {}

---Current fill of the broom's boost (nitro) meter, between 0 and `GetMaxBoostMeter()`.
---Seen in game: after running out, the first part of the meter refills quickly.
---@return float
function AFlyingBroom:GetBoostMeterAmount() end

---Capacity of the broom's boost meter.
---@return float
function AFlyingBroom:GetMaxBoostMeter() end

---Whether the broom is boosting.
---@return boolean
function AFlyingBroom:IsInBoost() end

---Whether the broom's boost meter is refilling.
---@return boolean
function AFlyingBroom:IsBoostRecharging() end

---A creature (`ACreature_Character : ANPC_Character`). Rideable creatures
---(Graphorn, Hippogriff, ...) are driven by an `ACreatureMountHandler` while ridden.
---@class ACreature_Character
local ACreature_Character = {}

---The creature's mount component, which links it to its `ACreatureMountHandler`.
---@return UCreature_MountComponent
function ACreature_Character:GetMountComponent() end

---Movement and combat state of a ridden creature.
---@class UCreature_MountComponent
---@field CombatChargeActive boolean Whether the creature's combat charge is running.
local UCreature_MountComponent = {}

---The handler that mounted the rider on this creature.
---@return ACreatureMountHandler
function UCreature_MountComponent:GetMountHandler() end

---Whether the ridden creature is flying.
---@return boolean
function UCreature_MountComponent:IsFlying() end

---An actor (`ACreatureMountHandler : AActor`) that spawns or takes over a creature
---and mounts a rider on it; `PlayerPossessCreature()` and `PlayerPossessRider()`
---switch which of the two the player controls.
---@class ACreatureMountHandler
---@field RiderCharacter ACharacter The character riding the creature.
---@field CreatureCharacter ACreature_Character The creature being ridden.
---@field CreatureMountType EMountTypes Which kind of mount the creature is: `Graphorn_Ground` 2, `Hippogriff_Flying` 3, `Hippogriff_Ground` 4, `Niffler_Ground` 5, `Avatar_Ground` 6 (0 and 1 are brooms).
local ACreatureMountHandler = {}
