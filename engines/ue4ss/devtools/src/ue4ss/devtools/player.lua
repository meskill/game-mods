local Objects = require("ue4ss.objects")
local Lookup = require("ue4ss.lookup")
local Reflect = require("ue4ss.devtools.reflect")

---Tells whether an object belongs to the local player: it is the player
---controller or its pawn, or one of them owns it (an actor's Owner) or
---contains it (GetOuter), like a held tool, a component or an anim instance.
---@class DebugPlayer
---@field private controllers UE4SSLookup
---@field private addresses table<integer, true?>
local Player = {}
Player.__index = Player

-- Owners and outers followed before giving up.
local MAX_CHAIN = 8

---@return DebugPlayer
function Player.new()
	return setmetatable({ controllers = Lookup.new(1, Objects.playerController), addresses = {} }, Player)
end

---Re-reads the controller and its pawn. Call once per update.
---@param now number Seconds from a clock that never goes backwards.
function Player:refresh(now)
	local addresses = {}
	local controller = self.controllers:get(now) --[[@as APlayerController?]]
	if controller then
		addresses[controller:GetAddress()] = true
		local pawn = Reflect.valid(controller.Pawn)
		if pawn then
			addresses[pawn:GetAddress()] = true
		end
	end
	self.addresses = addresses
end

---The player controller, or nil while there is none.
---@param now number
---@return APlayerController?
function Player:controller(now)
	return self.controllers:get(now) --[[@as APlayerController?]]
end

---@param object UObject?
---@return boolean
function Player:owns(object)
	local current = object
	for _ = 1, MAX_CHAIN do
		if not Reflect.valid(current) then
			return false
		end
		---@cast current UObject
		if self.addresses[current:GetAddress()] then
			return true
		end
		-- The reflected property, not GetOwner(): calling a UFunction from a
		-- hook filter would run the hooks on it again, GetOwner's included.
		local ok, owner = pcall(function()
			return Reflect.valid((current --[[@as any]]).Owner)
		end)
		current = (ok and owner or current:GetOuter()) --[[@as UObject?]]
	end
	return false
end

return Player
