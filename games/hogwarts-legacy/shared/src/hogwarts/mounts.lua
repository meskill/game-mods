-- The mount the local player rides: a broom or a creature.
--
-- Brooms report themselves through hooks: `AFlyingBroom:SetupPlayerOnBroom`
-- runs on the ridden broom when the player mounts it, and
-- `DetachPlayerFromBroomOnDismount` the moment they leave it. A broom ridden
-- when the hooks register is not seen until the next mount.
--
-- Creature mounts have no known hooks. While the player reports being on a
-- mount, the tracker looks for the `ACreature_Character` whose
-- `ACreatureMountHandler` has the player as `RiderCharacter`: the possessed
-- pawn, or one found by a scan.
--
-- The tracker polls on one game-thread loop for its lifetime, every POLL_MS
-- while the player is in gameplay: for a broom it only checks that the broom
-- still exists, otherwise whether the player is on a creature.

local Loop = require("ue4ss.loop")
local Lookup = require("ue4ss.lookup")

local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"
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

local POLL_MS = 100
-- Seconds between creature scans while the player is mounted but no mount is known.
local LOOKUP_INTERVAL = 1

---@class HogwartsMount
---@field kind HogwartsMountKind
---@field actor AFlyingBroom|ACreature_Character

---Called in event order on the game thread, inside the broom hooks or the
---tracker's poll.
---@class HogwartsMountListener
---@field mounted? fun(mount: HogwartsMount) The player got on this mount.
---@field riding? fun(mount: HogwartsMount) Every poll while the player is in gameplay on this mount, from the first poll after `mounted`.
---@field dismounted? fun(mount: HogwartsMount) The player is no longer on it; no further events follow for it.

---The player and their controller while gameplay is active, or nil to skip
---a poll (paused, loading).
---@alias HogwartsMountPlayer fun(): ABiped_Player?, APlayerController?

---Tracks the mount the local player rides.
---@class HogwartsMountTracker
---@field private listener HogwartsMountListener
---@field private creatures UE4SSLookup
---@field private mount? HogwartsMount
---@field private address integer Address of the mount's actor.
---@field private polls integer Polls so far, the clock of creature scans.
local Tracker = {}
Tracker.__index = Tracker

local Mounts = {}

---The player riding the creature the controller possesses, or nil when the
---possessed pawn is not a ridden creature.
---@param possessed APawn?
---@return ACharacter?
function Mounts.rider(possessed)
	if not possessed or not possessed:IsValid() or not possessed:IsA(CREATURE_CLASS) then
		return nil
	end
	local handler = Mounts.handlerOf(possessed --[[@as ACreature_Character]])
	local rider = handler and handler.RiderCharacter
	if rider and rider:IsValid() then
		return rider
	end
	return nil
end

---Registers the broom hooks, starts the poll and returns the tracker. Call
---once, when the mod loads; the hooks and the poll last while it runs.
---@param warn fun(message: string) Receives hooks that could not be registered and poll errors.
---@param player HogwartsMountPlayer
---@return HogwartsMountTracker
function Mounts.tracker(warn, player)
	---@type HogwartsMountTracker
	local tracker = setmetatable({
		listener = {},
		address = 0,
		polls = 0,
		creatures = Lookup.new(LOOKUP_INTERVAL, Mounts.findCreature, Mounts.ridesCreature),
	}, Tracker)
	Loop.gameThread(POLL_MS, function()
		Tracker.poll(tracker, player)
	end, function(message)
		warn("Mount poll failed: " .. message)
	end)

	---@param name string
	---@param handler fun(tracker: HogwartsMountTracker, broom: AFlyingBroom, player: UObject)
	local function register(name, handler)
		local path = "/Script/Phoenix.FlyingBroom:" .. name
		local function hook(context, character)
			-- UE4SS passes the hooked object and parameters wrapped.
			local broom = (context --[[@as any]]):get()
			local rider = (character --[[@as any]]):get()
			if broom:IsValid() and rider:IsValid() and rider:IsA(PLAYER_CLASS) then
				handler(tracker, broom, rider)
			end
		end
		local ok, err = pcall(RegisterHook, path, hook)
		if not ok then
			warn(("Hook %s unavailable: %s"):format(path, tostring(err)))
		end
	end
	register("SetupPlayerOnBroom", Tracker.broomMounted)
	register("DetachPlayerFromBroomOnDismount", Tracker.broomDismounted)
	return tracker
end

---@param listener HogwartsMountListener
function Tracker:listen(listener)
	self.listener = listener
end

---@return HogwartsMount? mount The mount the player rides, as of the last event or poll.
function Tracker:current()
	return self.mount
end

---Reports a broom that is gone without a dismount and creature mounts, then
---`riding` for the current mount.
---@private
---@param player HogwartsMountPlayer
function Tracker:poll(player)
	local pawn, controller = player()
	if not pawn or not controller then
		return
	end
	self.polls = self.polls + 1
	if not self:ridingBroom() then
		self:checkCreature(pawn, controller)
	end
	local mount = self.mount
	if mount and self.listener.riding then
		self.listener.riding(mount)
	end
end

---@private
---@param pawn ABiped_Player
---@param controller APlayerController
function Tracker:checkCreature(pawn, controller)
	local address = pawn:GetAddress()
	local possessed = controller.Pawn
	local onCreature = possessed ~= nil and possessed:IsValid() and possessed:IsA(CREATURE_CLASS)
	---@type ACreature_Character?
	local creature
	if onCreature and Mounts.ridesCreature(possessed, address) then
		creature = self.creatures:set(possessed) --[[@as ACreature_Character]]
	elseif onCreature or pawn:GetIsOnAMountOrInTransition() then
		local now = self.polls * POLL_MS / 1000
		creature = self.creatures:get(now, address) --[[@as ACreature_Character?]]
	else
		self.creatures:clear()
	end

	if self.mount and (not creature or creature:GetAddress() ~= self.address) then
		self:leave()
	end
	if creature and not self.mount then
		local handler = Mounts.handlerOf(creature)
		self:enter({
			kind = handler and CREATURE_KINDS[handler.CreatureMountType] or "creature",
			actor = creature,
		})
	end
end

---Whether the player rides a broom; reports a dismount when the broom is gone.
---@private
---@return boolean
function Tracker:ridingBroom()
	local mount = self.mount
	if not mount or mount.kind ~= "broom" then
		return false
	end
	if mount.actor:IsValid() then
		return true
	end
	self:leave()
	return false
end

---@private
---@param broom AFlyingBroom
function Tracker:broomMounted(broom)
	if self.mount and self.address == broom:GetAddress() then
		return
	end
	self:leave()
	self:enter({ kind = "broom", actor = broom })
end

---@private
---@param broom AFlyingBroom
function Tracker:broomDismounted(broom)
	if self.mount and self.address == broom:GetAddress() then
		self:leave()
	end
end

---@private
---@param mount HogwartsMount
function Tracker:enter(mount)
	self.mount, self.address = mount, mount.actor:GetAddress()
	if self.listener.mounted then
		self.listener.mounted(mount)
	end
end

---@private
function Tracker:leave()
	local mount = self.mount
	if not mount then
		return
	end
	self.mount, self.address = nil, 0
	if self.listener.dismounted then
		self.listener.dismounted(mount)
	end
end

---@private
---@param creature ACreature_Character
---@return ACreatureMountHandler?
function Mounts.handlerOf(creature)
	local component = creature:GetMountComponent()
	if not component or not component:IsValid() then
		return nil
	end
	local handler = component:GetMountHandler()
	if not handler or not handler:IsValid() then
		return nil
	end
	return handler
end

---Whether `actor` is a creature ridden by the character at `riderAddress`.
---@private
---@param actor AActor?
---@param riderAddress integer
---@return boolean
function Mounts.ridesCreature(actor, riderAddress)
	if not actor or not actor:IsValid() or not actor:IsA(CREATURE_CLASS) then
		return false
	end
	local handler = Mounts.handlerOf(actor --[[@as ACreature_Character]])
	local rider = handler and handler.RiderCharacter
	return rider ~= nil and rider:IsValid() and rider:GetAddress() == riderAddress
end

---Scans the creature mount handlers for the creature the rider is on.
---@private
---@param riderAddress integer
---@return ACreature_Character?
function Mounts.findCreature(riderAddress)
	for _, handler in ipairs(FindAllOf("CreatureMountHandler") or {}) do
		---@cast handler ACreatureMountHandler
		local creature = handler.CreatureCharacter
		if Mounts.ridesCreature(creature, riderAddress) then
			return creature
		end
	end
	return nil
end

return Mounts
