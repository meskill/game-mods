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

-- Owner is a property of actors only.
local ACTOR_CLASS = "/Script/Engine.Actor"

---@return DebugPlayer
function Player.new()
	return setmetatable({ controllers = Lookup.new(1, Objects.playerController), addresses = {} }, Player)
end

---Re-reads the controller and its pawn. Call once per update.
function Player:refresh()
	local addresses = {}
	local controller = self.controllers:get() --[[@as APlayerController?]]
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
---@return APlayerController?
function Player:controller()
	return self.controllers:get() --[[@as APlayerController?]]
end

---The object's reflected Owner property when it is an actor, or nil. Reads
---the property, not GetOwner(): calling a UFunction from a hook filter would
---run the hooks on it again, GetOwner's included.
---@param object UObject
---@return UObject?
local function owner(object)
	if not object:IsA(ACTOR_CLASS) then
		return nil
	end
	return Reflect.valid(object:GetPropertyValue("Owner"))
end

---@param object UObject?
---@return boolean
function Player:owns(object)
	local current = Reflect.valid(object)
	for _ = 1, MAX_CHAIN do
		if not current then
			return false
		end
		if self.addresses[current:GetAddress()] then
			return true
		end
		current = owner(current) or Reflect.valid(current:GetOuter())
	end
	return false
end

return Player
