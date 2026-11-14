-- Which signals mark the player leaving gameplay: the Field Guide (pause
-- menu, map), loading screens, the Room of Requirement conjuration menu,
-- dialogue and vendors.
--
-- Hooks the UIManager, the conjuration spell tool, the conversation
-- component, the HUD, its widget and the screen fade (getters, callbacks and
-- input left out), and the player's disable stacks. Every new Screen widget
-- (dialogue options are UI_BP_OptionPanel_C) and loading screen is logged, and
-- its Blueprint class hooked the first time one is created. Candidates for
-- the player being back in the world, without params that could crash:
-- Biped_Player:OnCurtainRaised, Biped_PlayerController:OnCurtainLowered,
-- PlayerController:ClientRestart. Logs hogwarts.gameplay's exited/entered
-- events. Polls every 100 ms the pause states, fades, level and loading
-- screen location, the current conversation, conjuration context, mouse
-- cursor, pawn, its InCinematic flag and spell tool; logs a jump of the
-- player's position as a teleport. Screenshots when the fade, the
-- conversation or gameplay changes.
--
-- In the game: start tracking; fast travel anywhere (mark when you can move);
-- talk to someone and pick a dialogue option (mark at the options, after
-- picking, when back in control); open a vendor (mark), buy or leave (mark).
-- Stop tracking.
--
-- Findings: games/hogwarts-legacy/README.md (Gameplay), the signal comments
-- in shared/src/hogwarts/gameplay.lua, and shared/types/gameplay.lua.
-- Never called: Biped_Player:PauseMenuStart, PutPlayerIntoCinematicState,
-- StopPlayerInput, RestorePlayerInput, InGameMenuScreen:ExitPauseMenu,
-- MapSubSystem:SetInPauseMenu, GameplayStatics:SetGamePaused,
-- UIManager:RequestGameAndSystemPause,
-- PhoenixGameSettings:OnFullScreenMenuActive|Inactive,
-- TutorialSystem:ClosePauseMenu, Screen:CloseScreenWithOutro,
-- Screen:OnScreenOutroComplete, PlayerController:SetCinematicMode,
-- SceneActionState_FastTravel:OnArrived,
-- PhoenixGameInstance:SetCurrentLoadingScreenLocation*, and every
-- StoryGraphActor and Loadingcreen function (the loading screen's Blueprint
-- overrides run instead). FastTravelManager only logs
-- (DebugLogFastTravelInformation); IsFastTravelling stays false.
-- Unchanged through menus, fast travel, conjuration and dialogue: time
-- dilation, IsLookInputIgnored, IsMoveInputIgnored, the active ability.
--
-- Run 3 (fast travel, a dialogue with three choices, two vendor visits):
-- - Fast travel: Gameplay "menu" -> "loading" with no "entered" between;
--   "entered" from OnFadeInComplete 9 s after the curtain, 3 s before the
--   mark "can move". Biped_Player:OnCurtainRaised never ran.
--   Biped_PlayerController:OnCurtainLowered runs with ScreenFadeWidget's.
--   PlayerController:ClientRestart runs on every pawn switch: the map's
--   MapPawn, a DefaultPawn while the level is "Empty", then the player; no
--   "back in the world" signal on its own.
-- - Dialogue with choices: one UI_BP_OptionPanel_C per choice
--   (OptionSelected(SelectedIndex), then Destruct); the movement lock lasts
--   the whole conversation, so "dialogue" spans all choices.
-- - Vendor: a conversation (SG_VendorConversationGear) opens
--   UI_BP_Vendor_C; it pushes the movement lock, so it counts as "dialogue",
--   and ends with the vendor screen's Destruct. The game keeps running.
-- - pawn.InCinematic turns true and false with "dialogue", within 0.4 s, for
--   dialogue and vendors.
-- - The game crashed while selling: heap corruption (0xc0000374), no dump.
--   TArray:ForEach had failed inside UE4SS on every array parameter (211
--   times), each error unwinding through UE4SS's C++ code. devtools now reads
--   elements by index and stops reading them for the session after the
--   first failure.

local Gameplay = require("hogwarts.gameplay")

-- Besides the classes below.
local HOOKS = {
	"/Script/Phoenix.Biped_Player:PushDisableStack",
	"/Script/Phoenix.Biped_Player:PopDisableStack",
	"/Script/Phoenix.Biped_Player:OnCurtainRaised",
	"/Script/Phoenix.Biped_PlayerController:OnCurtainLowered",
	"/Script/Engine.PlayerController:ClientRestart",
	"/Script/Phoenix.TransfigurationManager:SetConjurationContextBlueprint",
}

-- Callbacks the game runs through delegates bound without arguments, so
-- their object parameter holds stack garbage: reading
-- UIManager:MoviePlaybackFinished's Caller crashed the game twice, after the
-- loading screen into the Room of Requirement. Asset load callbacks
-- (WidgetClassLoaded, *ScreenLoaded, IconTextureLoadedCallback) follow the
-- same pattern and are left out too.
local CALLBACKS = { "^MoviePlaybackFinished$", "Loaded" }

-- UIManager functions the UI polls or calls in bursts.
local UI_MANAGER_SKIP = {
	"Tick",
	"^Get",
	"^Is",
	"^In[A-Z]",
	"^Should",
	"^Can",
	"^Has",
	"^Any",
	"^PhoenixKeyExists",
	"^CreateHUDLog$",
	"^OnStatChanged$",
	table.unpack(CALLBACKS),
}

-- Getters and functions polled below, and functions that likely run every
-- frame.
local SKIP = {
	"Tick",
	"^Get",
	"^Is",
	"^Has",
	"^Can",
	"^Should",
	"^Any",
	"^Update",
	"^UI_Is",
	"^UI_Get",
	table.unpack(CALLBACKS),
}

---@type { class: string, skip: string[] }[]
local CLASSES = {
	{ class = "/Script/Phoenix.UIManager", skip = UI_MANAGER_SKIP },
	{ class = "/Script/Phoenix.ConjurationSpellTool", skip = SKIP },
	{ class = "/Script/Phoenix.ConversationComponent", skip = SKIP },
	{ class = "/Script/Phoenix.PhoenixHUD", skip = SKIP },
	{ class = "/Script/Phoenix.PhoenixHUDWidget", skip = SKIP },
	{ class = "/Script/Phoenix.ScreenFadeWidget", skip = SKIP },
}

-- Native classes whose new objects are logged; the Blueprint class of each is
-- hooked when its first object is created.
local WATCHED = {
	"/Script/Phoenix.Screen",
	"/Script/Phoenix.Loadingcreen",
	"/Script/Phoenix.ConversationActor",
}

-- Blueprint functions left out: getters, the event graph (it runs for every
-- event, already logged by name), input (one call per key and event), menu
-- reader, hover, and the loading screen's per-frame lienholder updates.
local BLUEPRINT_SKIP = {
	"Tick",
	"^Get",
	"^Is",
	"^Can",
	"^Has",
	"^Should",
	"^ExecuteUbergraph",
	"^BndEvt",
	"^InpActEvt",
	"^BlueprintOnUMGInputAction$",
	"^Gather",
	"^Translate",
	"Hover",
	"^Update",
	"^Calculate",
	"^PreConstruct",
	"^OnCurtainLienholdersChanged$",
	-- Animation steps (2900 calls on one vendor visit) and one call per item.
	"^SequenceEvent",
	"^Create%a*ItemButton$",
}

-- A player moving more than this many centimetres between two polls (100 ms)
-- teleported: a broom boost covers about 200.
local TELEPORT_DISTANCE = 3000

local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"

---The value of read(), or its error as text.
---@param read fun(): any
local function try(read)
	local ok, value = pcall(read)
	if ok then
		return value
	end
	return ("<error: %s>"):format(tostring(value))
end

---@param object UObject?
---@return string
local function describe(object)
	if not object or not object:IsValid() then
		return "none"
	end
	return ("%s %X"):format((object:GetFName() --[[@as any]]):ToString(), object:GetAddress())
end

---@param object UObject?
---@return string
local function className(object)
	if not object or not object:IsValid() then
		return "none"
	end
	return (object:GetClass():GetFName() --[[@as any]]):ToString()
end

---@param value number
---@return number
local function tenth(value)
	return math.floor(value * 10 + 0.5) / 10
end

-- hogwarts.gameplay's state: "active", or the reason that stopped gameplay.
local gameplayState = "active"

---Hooks the Blueprint class of each new object of the watched classes, once
---per class, and logs the object while tracking.
---@param dev DebugApi
local function hookBlueprintsOnCreation(dev)
	---@type table<string, true?>
	local hooked = {}
	local notify = NotifyOnNewObject --[[@as fun(class: string, callback: fun(object: UObject))]]
	for _, watched in ipairs(WATCHED) do
		local ok, err = pcall(dev.spawned, watched)
		if not ok then
			dev.log("! " .. tostring(err))
		end
		ok, err = pcall(notify, watched, function(object)
			local class = object:GetClass()
			local path = class:GetFullName():match("^%S+ (.+)$")
			if not path or not path:find("^/Game/") or hooked[path] then
				return
			end
			hooked[path] = true
			local hookedOk, count = pcall(dev.hookClass, class, { skip = BLUEPRINT_SKIP })
			dev.log(hookedOk and ("hooked %d functions of %s"):format(count, path) or ("! " .. tostring(count)))
		end)
		if not ok then
			dev.log("! " .. tostring(err))
		end
	end
end

---@param dev DebugApi
local function follow(dev)
	local statics = StaticFindObject("/Script/Engine.Default__GameplayStatics") --[[@as any]]
	local conversationDefault = StaticFindObject("/Script/Phoenix.Default__ConversationComponent") --[[@as any]]
	---@type { X: number, Y: number, Z: number }?
	local position
	---@type table<string, string>
	local shotOn = {}

	---Tracks the value and screenshots each change after the first.
	---@param label string
	---@param value any
	local function trackWithShot(label, value)
		dev.track.value(label, value)
		local text = tostring(value)
		if shotOn[label] ~= nil and shotOn[label] ~= text then
			dev.shot({ name = label:gsub("%W", "-") .. "-" .. text:gsub("%W", "-"):sub(1, 40), ui = true })
		end
		shotOn[label] = text
	end

	dev.every(100, function()
		local pc = dev.pc() --[[@as any]]
		local pawn = dev.pawn() --[[@as any]]
		local ui = dev.find("UIManager") --[[@as any]]
		local map = dev.find("MapSubSystem") --[[@as any]]

		trackWithShot("gameplay", gameplayState)
		dev.track.value(
			"IsGamePaused",
			try(function()
				return pc and statics:IsGamePaused(pc)
			end)
		)
		dev.track.value(
			"UIManager.InPauseMode",
			try(function()
				return ui and ui:InPauseMode()
			end)
		)
		dev.track.value(
			"MapSubSystem.GetInPauseMenu",
			try(function()
				return map and map:GetInPauseMenu()
			end)
		)
		trackWithShot(
			"UIManager.IsFaded",
			try(function()
				return ui and ui:IsFaded()
			end)
		)
		dev.track.value(
			"ScreenFade",
			try(function()
				local fade = ui and ui:GetScreenFadeWidget()
				if not fade or not fade:IsValid() then
					return "none"
				end
				return ("%.1f fading=%s"):format(tenth(fade:UI_GetCurrentFade()), tostring(fade:UI_IsFading()))
			end)
		)
		dev.track.value(
			"GameInstance.LoadingScreenLocation",
			try(function()
				return pc and statics:GetGameInstance(pc):GetCurrentLoadingScreenLocation()
			end)
		)
		dev.track.value(
			"level",
			try(function()
				return pc and statics:GetCurrentLevelName(pc, true):ToString()
			end)
		)
		trackWithShot(
			"conversation",
			try(function()
				local state = conversationDefault:Get():GetCurrentConversation()
				if not state or not state:IsValid() then
					return "none"
				end
				return ("%s actor=%s"):format(
					describe(state.CurrentConversation),
					describe(state.OwnedConversationActor)
				)
			end)
		)
		dev.track.value(
			"TransfigurationManager.ConjurationContext",
			try(function()
				local manager = dev.find("TransfigurationManager") --[[@as any]]
				return manager and manager:GetConjurationContext()
			end)
		)
		dev.track.value(
			"pc.bShowMouseCursor",
			try(function()
				return pc and pc.bShowMouseCursor
			end)
		)
		dev.track.value(
			"pawn",
			try(function()
				return className(pawn)
			end)
		)
		dev.track.value(
			"pawn.bHidden",
			try(function()
				return pawn and pawn.bHidden
			end)
		)
		dev.track.value(
			"pawn.InCinematic",
			try(function()
				return pawn and pawn:IsA(PLAYER_CLASS) and pawn.InCinematic
			end)
		)
		dev.track.value(
			"pawn.activeSpellTool",
			try(function()
				-- The map's pawn has no wand.
				if not pawn or not pawn:IsA(PLAYER_CLASS) then
					return "none"
				end
				local wand = pawn:GetWand()
				local tool = wand and wand:IsValid() and wand:GetActiveSpellTool()
				if not tool or not tool:IsValid() then
					return "none"
				end
				return ("%s stopped=%s"):format(tool.DatabaseName:ToString(), tostring(tool:IsStopped()))
			end)
		)

		local ok, location = pcall(function()
			return pawn and pawn:K2_GetActorLocation()
		end)
		if ok and location then
			local now = { X = location.X, Y = location.Y, Z = location.Z }
			if position then
				local distance =
					math.sqrt((now.X - position.X) ^ 2 + (now.Y - position.Y) ^ 2 + (now.Z - position.Z) ^ 2)
				if distance > TELEPORT_DISTANCE then
					dev.track.call("player.teleported", {
						from = ("%.0f %.0f %.0f"):format(position.X, position.Y, position.Z),
						to = ("%.0f %.0f %.0f"):format(now.X, now.Y, now.Z),
						metres = math.floor(distance / 100),
					})
				end
			end
			position = now
		end
	end)
end

---@param dev DebugApi
return function(dev)
	Gameplay.subscribe(function(active, reason)
		gameplayState = active and "active" or tostring(reason)
		dev.track.call("Gameplay", { active = active, reason = reason })
	end)
	for _, entry in ipairs(CLASSES) do
		local ok, hooked = pcall(dev.hookClass, entry.class, { skip = entry.skip })
		dev.log(ok and ("hooked %d functions of %s"):format(hooked, entry.class) or ("! " .. tostring(hooked)))
	end
	for _, path in ipairs(HOOKS) do
		local ok, err = pcall(dev.hook, path)
		if not ok then
			dev.log("! " .. tostring(err))
		end
	end
	hookBlueprintsOnCreation(dev)
	follow(dev)
	dev.log(
		"menu: track; fast travel (mark when you can move); talk to someone and pick an option (mark at the "
			.. "options, after picking, back in control); open a vendor (mark), leave (mark); stop"
	)
end
