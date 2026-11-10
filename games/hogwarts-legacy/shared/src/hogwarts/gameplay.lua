-- Whether the player is in gameplay, from hooks on what takes them out of it.
-- Findings behind the signals: devtools/src/experiments/menu.lua.
--
-- Only the Field Guide pauses the game; the conjuration menu and dialogue
-- keep it running, so `GameplayStatics:IsGamePaused` misses them. It also
-- turns false too early: already during a fast travel's loading screen. It
-- does cover the action wheel, which these hooks don't.
-- `FastTravelManager:IsFastTravelling` stays false through a fast travel.
-- Never hook `UIManager:MoviePlaybackFinished`: the game passes it an
-- uninitialized `Caller`, and reading it crashes the game.

-- "menu": the Field Guide (pause menu, map, other pages) opens and closes.
local FIELD_GUIDE_OPENED = "/Script/Phoenix.UIManager:FieldGuideMenuStart"
local FIELD_GUIDE_CLOSED = "/Script/Phoenix.UIManager:ExitFieldGuideWithReason"
-- "loading": the loading screen covers the game, 0.36 s after a fast travel
-- closes the map; the first fade-in after it is the screen lifting (4.4 s
-- later for the Room of Requirement). Other fade-ins, e.g. the menu's, are
-- ignored while no loading screen shows.
local CURTAIN_LOWERED = "/Script/Phoenix.ScreenFadeWidget:OnCurtainLowered"
local FADE_IN_COMPLETE = "/Script/Phoenix.UIManager:OnFadeInComplete"
-- "conjuration": called with true on opening the menu, false on closing.
local CONJURATION_SHOWN = "/Script/Phoenix.PhoenixHUDWidget:ShowConjurationUI"
-- "dialogue": right after `ConversationComponent:BeginInteraction`, the game
-- pushes eleven player locks at once (moving, spells, menus, …) and pops them
-- together when the dialogue ends.
local DISABLE_PUSHED = "/Script/Phoenix.Biped_Player:PushDisableStack"
local DISABLE_POPPED = "/Script/Phoenix.Biped_Player:PopDisableStack"

-- EFieldGuideExitReasons that start a fast travel and its loading screen; 1
-- is back to the game. Starting "loading" on them closes the 0.36 s gap
-- before the loading screen. Only 8 is seen in game.
---@type table<integer, true?>
local FAST_TRAVEL_EXITS = {
	[8] = true, -- FIELD_GUIDE_EXIT_REASON_FAST_TRAVEL_FROM_MAP
	[10] = true, -- FIELD_GUIDE_EXIT_REASON_FAST_TRAVEL_FROM_IMGUI
}

-- The lock that marks a dialogue; other scenes that block moving the same
-- way count as "dialogue" too.
local MOVING_DISABLED = "MovingDisabledStack"

---What took the player out of gameplay. The values are readable in logs.
---@enum HogwartsInterruption
local Reason = {
	MENU = "menu", -- the pause menu, map or another menu page
	LOADING = "loading", -- a loading screen, e.g. after fast travel
	CONJURATION = "conjuration", -- the Room of Requirement conjuration menu
	DIALOGUE = "dialogue", -- a dialogue: the player can't move
}

---Called on the game thread, inside the hooked call, when the player leaves
---gameplay (`active` false, `reason` what took them out) or is back in it
---(`active` true, no reason). Overlapping reasons, e.g. a fast travel's menu
---then loading screen, call it once each way.
---@alias HogwartsGameplayListener fun(active: boolean, reason: HogwartsInterruption?)

local Gameplay = {}

Gameplay.Reason = Reason

---@type table<HogwartsInterruption, true?>
local running = {}
-- Pushes of the player's MovingDisabledStack not yet popped.
local movingDisabled = 0
local hooked = false
---@type HogwartsGameplayListener[]
local listeners = {}

---@param active boolean
---@param reason? HogwartsInterruption
local function notify(active, reason)
	-- A copy, so listeners may unsubscribe while being notified.
	for _, listener in ipairs({ table.unpack(listeners) }) do
		listener(active, reason)
	end
end

---@param reason HogwartsInterruption
local function start(reason)
	if running[reason] then
		return
	end
	local wasActive = next(running) == nil
	running[reason] = true
	if wasActive then
		notify(false, reason)
	end
end

---@param reason HogwartsInterruption
local function stop(reason)
	if not running[reason] then
		return
	end
	running[reason] = nil
	if next(running) == nil then
		notify(true)
	end
end

---The disable stack named by a `PushDisableStack`/`PopDisableStack` param.
---@param stackName any UE4SS param wrapping an `FName_GameLogicVarInt32`.
---@return string
local function stackOf(stackName)
	return stackName:get().ElementName:ToString()
end

local function hook()
	if hooked then
		return
	end
	-- UE4SS passes the hooked object and parameters wrapped.
	RegisterHook(FIELD_GUIDE_OPENED, function()
		start(Reason.MENU)
	end)
	RegisterHook(FIELD_GUIDE_CLOSED, function(_, exitReason)
		if not running[Reason.MENU] then
			return
		end
		-- Loading first, so gameplay never looks active between the two.
		if FAST_TRAVEL_EXITS[exitReason:get()] then
			start(Reason.LOADING)
		end
		stop(Reason.MENU)
	end)
	RegisterHook(CURTAIN_LOWERED, function()
		start(Reason.LOADING)
	end)
	RegisterHook(FADE_IN_COMPLETE, function()
		stop(Reason.LOADING)
	end)
	RegisterHook(CONJURATION_SHOWN, function(_, show)
		if show:get() then
			start(Reason.CONJURATION)
		else
			stop(Reason.CONJURATION)
		end
	end)
	RegisterHook(DISABLE_PUSHED, function(_, stackName)
		if stackOf(stackName) == MOVING_DISABLED then
			movingDisabled = movingDisabled + 1
			start(Reason.DIALOGUE)
		end
	end)
	RegisterHook(DISABLE_POPPED, function(_, stackName)
		-- A pop without a push came from before the hooks.
		if stackOf(stackName) == MOVING_DISABLED and movingDisabled > 0 then
			movingDisabled = movingDisabled - 1
			if movingDisabled == 0 then
				stop(Reason.DIALOGUE)
			end
		end
	end)
	hooked = true
end

---Whether the player is in gameplay, as of the last hooked call.
---@return boolean
function Gameplay.isActive()
	return next(running) == nil
end

---Installs the hooks: call it when the mod loads, so `isActive` follows the
---game from then on. `subscribe` calls it too.
function Gameplay.start()
	hook()
end

---Calls the listener whenever the player leaves gameplay or is back in it.
---Installs the hooks on first use.
---@param listener HogwartsGameplayListener
---@return fun() unsubscribe
function Gameplay.subscribe(listener)
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

return Gameplay
