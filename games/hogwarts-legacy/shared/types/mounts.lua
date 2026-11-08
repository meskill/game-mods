---@meta
-- Notes on dumped Phoenix mount types (dump/Phoenix.lua, dump/Phoenix_enums.lua),
-- merged into those declarations by LuaLS. Editor-only, never require.
--
-- Structure facts come from the dump. Unless a note says it was seen in game,
-- the behaviour of these members has not been observed.

---A broom in flight: a pawn (`AFlyingBroom : APawn`). While the player rides it,
---the player controller may possess the broom instead of the player.
---Seen in game: summoning spawns two brooms, a `BP_FlyingBroomProp_<Broom>_C`
---prop that scales in and out, and the `BP_FlyingBroomCapsule_<Broom>_C` pawn
---the player rides, whose getters report the flight.
---@class AFlyingBroom
---@field MountedCharacter APawn The character riding the broom. Seen in game: it still points at the rider after they drop off the broom.
---@field pBoostTriggerEffect UTriggerEffect Seen in game: null.
---@field pSpeedUpTriggerEffect UTriggerEffect Seen in game: null.
---@field pInactiveTriggerEffect UTriggerEffect Seen in game: null.
local AFlyingBroom = {}

---Puts the player on the broom. Seen in game: runs on the ridden broom when
---the player mounts, together with `AttachPlayerToBroomOnMount`, about 0.6 s
---after the player reports being on a mount.
---@param BipedPlayer ABiped_Player
function AFlyingBroom:SetupPlayerOnBroom(BipedPlayer) end

---Takes the player off the broom. Seen in game: runs on the ridden broom the
---moment the rider leaves it; the broom's getters stop reporting the flight
---right after, while the player still reports being on a mount for about 2 s.
---@param BipedPlayer ABiped_Player
---@param BroomProp AFlyingBroom
---@param VelocityDamping float
function AFlyingBroom:DetachPlayerFromBroomOnDismount(BipedPlayer, BroomProp, VelocityDamping) end

---Current fill of the broom's boost (nitro) meter, between 0 and `GetMaxBoostMeter()`.
---Seen in game: after running out it refills in about 12 s, the first tenth
---after about 3 s.
---@return float
function AFlyingBroom:GetBoostMeterAmount() end

---Capacity of the broom's boost meter. Seen in game: 0 once the rider has left.
---@return float
function AFlyingBroom:GetMaxBoostMeter() end

---Whether the broom is boosting. Seen in game: true while the broom tail
---flames; it turns false 0.6 s after the meter runs out.
---@return boolean
function AFlyingBroom:IsInBoost() end

---Whether the broom flies slowly. Seen in game: false from the moment the
---player speeds up or boosts until they let go.
---@return boolean
function AFlyingBroom:IsInHoverMode() end

---Seen in game: turns true when the player lets go of boost and false when
---they boost again; while true the meter refills, even though `IsInBoost()`
---stays true for the boost's last seconds. It stays false while the meter
---refills after running out.
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
