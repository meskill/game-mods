local AdaptiveTrigger = require("adaptive_triggers")

local Mode = AdaptiveTrigger.Mode

-- Broom trigger effects. Machine arguments: start, end, strength A, strength B,
-- frequency, period. backends/dsx/API.md documents period as 0-2; 6 is the
-- requested value, and DSX does not validate it.
-- R2 (speed up): machine rumble while riding.
---@type HogwartsTriggerEffect
local BOOST = { mode = Mode.Machine, args = { 1, 9, 1, 0, 1, 6 } }
-- L2 (nitro): stronger, faster machine rumble while nitro is available.
---@type HogwartsTriggerEffect
local NITRO = { mode = Mode.Machine, args = { 1, 9, 1, 1, 10, 6 } }
-- L2 once nitro ran out: maximum resistance from the top until nitro is usable again.
---@type HogwartsTriggerEffect
local NITRO_EMPTY = { mode = Mode.FEEDBACK, args = { 1, 8 } }

-- Fraction of the boost meter at or below which nitro counts as used up.
local EMPTY_FRACTION = 0.01
-- Fraction of the boost meter at which used-up nitro is usable again. The meter
-- refills its first part quickly, so waiting for a full meter locks L2 too long.
local READY_FRACTION = 0.1

-- Creature mount R2 effects. Experimental DSX presets, not Sony's profiles.
-- Galloping arguments: start 0-8, end 0-9, first foot 0-6, second foot 0-7,
-- frequency (backends/dsx/API.md). The game's mount component holds its own
-- jog and charge trigger effects, so those are the moments that get feedback.
-- On the ground: a two-beat gallop across the whole travel.
---@type HogwartsTriggerEffect
local GALLOP = { mode = Mode.Galloping, args = { 0, 9, 2, 5, 3 } }
-- Combat charge (Graphorn): heavier, faster hooves.
---@type HogwartsTriggerEffect
local CHARGE = { mode = Mode.Galloping, args = { 0, 9, 4, 6, 6 } }
-- In flight (Hippogriff): slow wingbeats.
---@type HogwartsTriggerEffect
local WINGBEATS = { mode = Mode.Galloping, args = { 0, 9, 1, 3, 1 } }

---@type table<string, HogwartsTriggerEffect>
local CREATURE_EFFECTS = { gallop = GALLOP, charge = CHARGE, flight = WINGBEATS }

---What a creature mount is doing, as far as its trigger effect is concerned.
---@param creature ACreature_Character
---@return "gallop"|"charge"|"flight"
local function creatureState(creature)
	local component = creature:GetMountComponent()
	if not component or not component:IsValid() then
		return "gallop"
	end
	if component.CombatChargeActive then
		return "charge"
	end
	if component:IsFlying() then
		return "flight"
	end
	return "gallop"
end

---Trigger effects of the mount the player rides.
---@class HogwartsMountEffects
---@field private empty boolean Broom nitro ran out and has not recharged enough.
local Effects = {}
Effects.__index = Effects

local Mounts = {}

---@return HogwartsMountEffects
function Mounts.effects()
	return setmetatable({ empty = false }, Effects)
end

---Forget per-mount state after the player dismounts.
function Effects:reset()
	self.empty = false
end

---Effects while the player rides `mount`.
---@param mount HogwartsMount
---@return HogwartsTriggerEffect right R2 effect.
---@return HogwartsTriggerEffect? left L2 effect, or nil to leave L2 off.
function Effects:update(mount)
	if mount.kind == "broom" then
		return self:broom(mount.actor --[[@as AFlyingBroom]])
	end
	return CREATURE_EFFECTS[
		creatureState(mount.actor --[[@as ACreature_Character]])
	], nil
end

---@private
---@param broom AFlyingBroom
---@return HogwartsTriggerEffect right
---@return HogwartsTriggerEffect left
function Effects:broom(broom)
	local amount, max = broom:GetBoostMeterAmount(), broom:GetMaxBoostMeter()
	if not self.empty and amount <= max * EMPTY_FRACTION then
		self.empty = true
	elseif self.empty and max > 0 and amount >= max * READY_FRACTION then
		self.empty = false
	end
	return BOOST, self.empty and NITRO_EMPTY or NITRO
end

return Mounts
