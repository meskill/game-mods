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

-- Seconds between broom scans while the player is mounted but no broom is known.
local LOOKUP_INTERVAL = 1
-- Fraction of the boost meter at or below which nitro counts as used up.
local EMPTY_FRACTION = 0.01
-- Fraction of the boost meter at which used-up nitro is usable again. The meter
-- refills its first part quickly, so waiting for a full meter locks L2 too long.
local READY_FRACTION = 0.1

---Tracks the broom the local player rides and its nitro meter.
---@class HogwartsBroomTracker
---@field private broom? AFlyingBroom
---@field private nextLookupAt number
---@field private empty boolean Nitro ran out and has not fully recharged.
---@field private boosting boolean
---@field private recharging boolean
---@field private log? fun(message: string)
local Tracker = {}
Tracker.__index = Tracker

local Broom = {}

---@param log? fun(message: string) Receives mount, nitro, and lookup transitions.
---@return HogwartsBroomTracker
function Broom.tracker(log)
    return setmetatable({
        nextLookupAt = 0, empty = false, boosting = false, recharging = false, log = log,
    }, Tracker)
end

---@param broom AFlyingBroom?
---@param riderAddress integer
---@return boolean
local function riddenBy(broom, riderAddress)
    if not broom or not broom:IsValid() then return false end
    local rider = broom.MountedCharacter
    return rider ~= nil and rider:IsValid() and rider:GetAddress() == riderAddress
end

---The broom the player rides. The controller may possess the broom itself;
---otherwise brooms are scanned, at most once per LOOKUP_INTERVAL. Either way
---the player must still report being on a mount: a broom keeps its
---MountedCharacter after the rider drops off it.
---@param pawn ABiped_Player
---@param controller APlayerController
---@param now number
---@return AFlyingBroom?
function Tracker:find(pawn, controller, now)
    local address = pawn:GetAddress()
    local possessed = controller.Pawn
    local onBroomPawn = possessed ~= nil and possessed:IsValid()
        and possessed:IsA("/Script/Phoenix.FlyingBroom")

    ---@type AFlyingBroom?
    local broom
    if onBroomPawn or pawn:GetIsOnAMountOrInTransition() then
        if riddenBy(self.broom, address) then return self.broom end
        if onBroomPawn then
            ---@cast possessed AFlyingBroom
            if riddenBy(possessed, address) then broom = possessed end
        end
        if not broom and now >= self.nextLookupAt then
            self.nextLookupAt = now + LOOKUP_INTERVAL
            for _, candidate in ipairs(FindAllOf("FlyingBroom") or {}) do
                ---@cast candidate AFlyingBroom
                if riddenBy(candidate, address) then
                    broom = candidate
                    break
                end
            end
        end
    end

    if self.log and (broom ~= nil) ~= (self.broom ~= nil) then
        self.log(broom and ("broom mounted " .. broom:GetFullName()) or "broom dismounted")
    end
    if not broom then self.empty = false end
    self.broom = broom
    return broom
end

---Effects for both triggers while the player rides a broom.
---@param pawn ABiped_Player
---@param controller APlayerController
---@param now number
---@return HogwartsTriggerEffect? right R2 effect, or nil when not on a broom.
---@return HogwartsTriggerEffect? left L2 effect, or nil when not on a broom.
function Tracker:update(pawn, controller, now)
    local broom = self:find(pawn, controller, now)
    if not broom then return nil, nil end

    local amount, max = broom:GetBoostMeterAmount(), broom:GetMaxBoostMeter()
    local boosting, recharging = broom:IsInBoost(), broom:IsBoostRecharging()
    if self.log and (boosting ~= self.boosting or recharging ~= self.recharging) then
        self.log(("broom boost=%s recharging=%s meter=%.2f/%.2f"):format(tostring(boosting),
            tostring(recharging), amount, max))
    end
    self.boosting, self.recharging = boosting, recharging

    if not self.empty and amount <= max * EMPTY_FRACTION then
        self.empty = true
        if self.log then self.log(("nitro empty meter=%.2f/%.2f"):format(amount, max)) end
    elseif self.empty and max > 0 and amount >= max * READY_FRACTION then
        self.empty = false
        if self.log then self.log(("nitro recharged meter=%.2f/%.2f"):format(amount, max)) end
    end
    return BOOST, self.empty and NITRO_EMPTY or NITRO
end

return Broom
