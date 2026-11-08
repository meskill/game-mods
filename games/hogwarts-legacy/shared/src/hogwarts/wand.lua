-- The local player's wand arm, from a hook on the wand's arm-state changes. The
-- right hand is up with the wand (raised) in state `RAISED`; casting a spell
-- moves it to `CASTING`. The state is unknown (nil) until the first change after
-- the hook is installed.

local CHANGED = "/Script/Phoenix.WandTool:OnRightArmStateChanged"
local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"

-- Owners followed from the wand before giving up on finding the player.
local MAX_OWNERS = 4

---`ERightArmState` values seen in game.
---@enum HogwartsArmState
local State = {
	UNEQUIP = 2, -- putting the wand away
	HOLD = 3, -- wand held low at the side
	CASTING = 7, -- casting a spell
	HIDDEN = 9, -- wand away
	RAISED = 12, -- right hand up with the wand
}

---Called on the game thread, inside the hooked call.
---@class HogwartsWandListener
---@field changed? fun(state: HogwartsArmState, last: HogwartsArmState?) The player's arm state changed; repeats are left out.

local Wand = {}

Wand.State = State

---@type HogwartsArmState?
local current
local hooked = false
---@type HogwartsWandListener[]
local listeners = {}

---Whether the wand belongs to the player: one of its owners is the player character.
---@param wand AActor
---@return boolean
local function playerWand(wand)
	---@type AActor
	local actor = wand
	for _ = 1, MAX_OWNERS do
		-- The reflected property, not GetOwner(): a UFunction call here could run hooks.
		local ok, owner = pcall(function()
			return actor.Owner
		end)
		if not ok or not owner or not owner:IsValid() then
			return false
		end
		if owner:IsA(PLAYER_CLASS) then
			return true
		end
		actor = owner
	end
	return false
end

---@param state HogwartsArmState
---@param last HogwartsArmState?
local function notify(state, last)
	-- A copy, so listeners may unsubscribe while being notified.
	for _, listener in ipairs({ table.unpack(listeners) }) do
		if listener.changed then
			listener.changed(state, last)
		end
	end
end

local function hook()
	if hooked then
		return
	end
	RegisterHook(CHANGED, function(context, state)
		-- UE4SS passes the hooked object and parameters wrapped, unlike Types.lua's `self: UObject`.
		---@type AWandTool
		local wand = (context --[[@as any]]):get()
		if not wand:IsValid() or not playerWand(wand) then
			return
		end
		local value = state:get()
		if value == current then
			return
		end
		local last = current
		current = value
		notify(value, last)
	end)
	hooked = true
end

---The player's arm state as of the last hooked change, or nil before one.
---@return HogwartsArmState?
function Wand.state()
	return current
end

---Whether the player's right hand is up with the wand.
---@return boolean
function Wand.isRaised()
	return current == State.RAISED
end

---Calls the listener whenever the player's arm state changes. Installs the hook
---on first use: call it on the game thread or at load.
---@param listener HogwartsWandListener
---@return fun() unsubscribe
function Wand.subscribe(listener)
	hook()
	listeners[#listeners + 1] = listener
	return function()
		for i, candidate in ipairs(listeners) do
			if candidate == listener then
				table.remove(listeners, i)
				return
			end
		end
	end
end

return Wand
