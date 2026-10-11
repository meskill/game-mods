-- The mount the local player rides: a broom or a creature.
--
-- Brooms are `AFlyingBroom` pawns whose `MountedCharacter` is the rider. Creature
-- mounts are `ACreature_Character`s driven by an `ACreatureMountHandler`, whose
-- `RiderCharacter` is the rider and `CreatureMountType` the kind. The controller
-- may possess the mount itself; otherwise mounts are scanned. Either way the
-- player must still report being on a mount: a broom keeps its MountedCharacter
-- after the rider drops off it. The creature-mount path follows the dumped types
-- and is not yet verified in game.

local Lookup = require("ue4ss.lookup")

local BROOM_CLASS = "/Script/Phoenix.FlyingBroom"
local CREATURE_CLASS = "/Script/Phoenix.Creature_Character"

---@alias HogwartsMountKind "broom"|"graphorn"|"hippogriff"|"niffler"|"avatar"|"creature"

-- EMountTypes values of ACreatureMountHandler.CreatureMountType.
---@type table<integer, HogwartsMountKind>
local CREATURE_KINDS = {
    [2] = "graphorn", -- Graphorn_Ground
    [3] = "hippogriff", -- Hippogriff_Flying
    [4] = "hippogriff", -- Hippogriff_Ground
    [5] = "niffler", -- Niffler_Ground
    [6] = "avatar", -- Avatar_Ground
}

-- Seconds between mount scans while the player is mounted but no mount is known.
local LOOKUP_INTERVAL = 1

---@class HogwartsMount
---@field kind HogwartsMountKind
---@field actor AFlyingBroom|ACreature_Character

---Called inside `update()`, in event order.
---@class HogwartsMountListener
---@field mounted? fun(mount: HogwartsMount) The player got on this mount.
---@field dismounted? fun(mount: HogwartsMount) The player is no longer on it; no further events follow for it.

---@param creature ACreature_Character
---@return ACreatureMountHandler?
local function handlerOf(creature)
    local component = creature:GetMountComponent()
    if not component or not component:IsValid() then return nil end
    local handler = component:GetMountHandler()
    if not handler or not handler:IsValid() then return nil end
    return handler
end

---@param actor AActor
---@return APawn|ACharacter|nil
local function riderOf(actor)
    if actor:IsA(BROOM_CLASS) then
        return (actor --[[@as AFlyingBroom]]).MountedCharacter
    end
    if actor:IsA(CREATURE_CLASS) then
        local handler = handlerOf(actor --[[@as ACreature_Character]])
        return handler and handler.RiderCharacter
    end
    return nil
end

---@param actor AActor?
---@param riderAddress integer
---@return boolean
local function riddenBy(actor, riderAddress)
    if not actor or not actor:IsValid() then return false end
    local rider = riderOf(actor)
    return rider ~= nil and rider:IsValid() and rider:GetAddress() == riderAddress
end

---Scans brooms, then creature mount handlers, for the one the rider is on.
---@param riderAddress integer
---@return AActor?
local function findRidden(riderAddress)
    for _, broom in ipairs(FindAllOf("FlyingBroom") or {}) do
        if riddenBy(broom, riderAddress) then return broom end
    end
    for _, handler in ipairs(FindAllOf("CreatureMountHandler") or {}) do
        ---@cast handler ACreatureMountHandler
        local creature = handler.CreatureCharacter
        if riddenBy(creature, riderAddress) then return creature end
    end
    return nil
end

---@param actor AFlyingBroom|ACreature_Character
---@return HogwartsMountKind
local function kindOf(actor)
    if actor:IsA(BROOM_CLASS) then return "broom" end
    local handler = handlerOf(actor --[[@as ACreature_Character]])
    return handler and CREATURE_KINDS[handler.CreatureMountType] or "creature"
end

---@param actor AActor?
---@return boolean
local function isMount(actor)
    return actor ~= nil and actor:IsValid() and (actor:IsA(BROOM_CLASS) or actor:IsA(CREATURE_CLASS))
end

local Mounts = {}

---The player riding the mount the controller possesses, or nil when the
---possessed pawn is not a ridden mount.
---@param possessed APawn?
---@return APawn|ACharacter|nil
function Mounts.rider(possessed)
    if not isMount(possessed) then return nil end
    ---@cast possessed AActor
    local rider = riderOf(possessed)
    if rider and rider:IsValid() then return rider end
    return nil
end

---Tracks the mount the local player rides.
---@class HogwartsMountTracker
---@field private listener HogwartsMountListener
---@field private log? fun(message: string)
---@field private mounts UE4SSLookup
---@field private mount? HogwartsMount
local Tracker = {}
Tracker.__index = Tracker

---@param listener HogwartsMountListener
---@param log? fun(message: string) Receives mount transitions.
---@return HogwartsMountTracker
function Mounts.tracker(listener, log)
    return setmetatable({
        listener = listener, log = log,
        mounts = Lookup.new(LOOKUP_INTERVAL, findRidden, riddenBy),
    }, Tracker)
end

---@return HogwartsMount? mount The mount the player rides, as of the last update.
function Tracker:current()
    return self.mount
end

---Sample which mount the player rides and report changes.
---@param pawn ABiped_Player
---@param controller APlayerController
---@param now number Seconds, used to throttle mount scans.
---@return HogwartsMount? mount The mount the player rides.
function Tracker:update(pawn, controller, now)
    local address = pawn:GetAddress()
    local possessed = controller.Pawn
    local onMountPawn = isMount(possessed)

    ---@type AActor?
    local actor
    if onMountPawn and riddenBy(possessed, address) then
        actor = self.mounts:set(possessed)
    elseif onMountPawn or pawn:GetIsOnAMountOrInTransition() then
        actor = self.mounts:get(now, address)
    else
        self.mounts:clear()
    end

    local previous = self.mount
    if previous and (not actor or previous.actor:GetAddress() ~= actor:GetAddress()) then
        self.mount = nil
        if self.log then self.log("mount dismounted " .. previous.kind) end
        if self.listener.dismounted then self.listener.dismounted(previous) end
    end
    if actor and not self.mount then
        ---@cast actor AFlyingBroom|ACreature_Character
        local mount = { kind = kindOf(actor), actor = actor }
        self.mount = mount
        if self.log then self.log(("mount mounted %s %s"):format(mount.kind, actor:GetFullName())) end
        if self.listener.mounted then self.listener.mounted(mount) end
    end
    return self.mount
end

return Mounts
