-- The local player's wand arm, from hooks:
-- - the arm state, from the wand's arm-state changes: the state of the
--   highest-priority arm request, e.g. `RAISED`, `CASTING`, or 14
--   (`StartLumos`) while Lumos holds the wand up. It is unknown (nil) until the
--   first change after the hook is installed.
-- - whether the wand is raised for a cast (the player holds the cast button):
--   the game requests it at `UpperBodyAnticipation` priority and clears it on
--   release. A higher request, e.g. Lumos's, hides it from the arm state, so it
--   is read from the request itself (`Biped_Character:SetRightArmState`).

local CHANGED = "/Script/Phoenix.WandTool:OnRightArmStateChanged"
local REQUESTED = "/Script/Phoenix.Biped_Character:SetRightArmState"
local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"

-- ERightArmPriority.UpperBodyAnticipation: the raise while the cast button is held.
local RAISE_PRIORITY = 4
-- ERightArmState.None: no request.
local NONE = 0

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
---@field raised? fun(raised: boolean) The player raised the wand for a cast, or stopped.

local Wand = {}

Wand.State = State

---@type HogwartsArmState?
local current
local raised = false
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

---Calls each listener's `field` with the arguments.
---@param field "changed"|"raised"
local function notify(field, ...)
	-- A copy, so listeners may unsubscribe while being notified.
	for _, listener in ipairs({ table.unpack(listeners) }) do
		local callback = listener[field]
		if callback then
			callback(...)
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
		notify("changed", value, last)
	end)
	RegisterHook(REQUESTED, function(context, state, priority)
		if priority:get() ~= RAISE_PRIORITY then
			return
		end
		local character = (context --[[@as any]]):get()
		if not character:IsValid() or not character:IsA(PLAYER_CLASS) then
			return
		end
		local value = state:get() ~= NONE
		if value == raised then
			return
		end
		raised = value
		notify("raised", value)
	end)
	hooked = true
end

---The player's arm state as of the last hooked change, or nil before one.
---@return HogwartsArmState?
function Wand.state()
	return current
end

---Whether the player has the wand raised for a cast (holds the cast button),
---as of the last hooked request; true even while a higher request, such as
---Lumos, decides the arm state.
---@return boolean
function Wand.isRaised()
	return raised
end

---Calls the listener whenever the player's arm state changes or the wand is
---raised or lowered. Installs the hooks on first use: call it on the game
---thread or at load.
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
