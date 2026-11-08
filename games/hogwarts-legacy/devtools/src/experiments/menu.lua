-- Which signals mark game menus opening and closing. Hooks the candidate
-- functions (every UIManager function but getters, and screen close
-- functions) and follows the pause states every 100 ms. In the game: start
-- tracking, open and close menus (a mark after each), stop; the report lists
-- what fired and changed. Findings so far: games/hogwarts-legacy/README.md.
--
-- Never called: Biped_Player:PauseMenuStart, InGameMenuScreen:ExitPauseMenu,
-- MapSubSystem:SetInPauseMenu, GameplayStatics:SetGamePaused,
-- UIManager:RequestGameAndSystemPause,
-- PhoenixGameSettings:OnFullScreenMenuActive|Inactive,
-- TutorialSystem:ClosePauseMenu, and the Screen close functions.
-- UIManager:SetInMenuTransition moves the camera between pages; it does not
-- mark opening or closing.

-- Besides every UIManager function, hooked by class below.
local HOOKS = {
	"/Script/Phoenix.Biped_Player:PauseMenuStart",
	"/Script/Phoenix.InGameMenuScreen:ExitPauseMenu",
	"/Script/Phoenix.MapSubSystem:SetInPauseMenu",
	"/Script/Phoenix.PhoenixGameSettings:OnFullScreenMenuActive",
	"/Script/Phoenix.PhoenixGameSettings:OnFullScreenMenuInactive",
	"/Script/Phoenix.TutorialSystem:ClosePauseMenu",
	"/Script/Phoenix.Screen:CloseScreenWithOutro",
	"/Script/Phoenix.Screen:OnScreenOutroComplete",
	"/Script/Engine.GameplayStatics:SetGamePaused",
}

-- UIManager functions the UI polls or calls in bursts, left out of hookClass.
local SKIP = { "Tick", "^Get", "^Is", "^In[A-Z]", "^Should", "^Can", "^Has", "^IconTextureLoaded", "^PhoenixKeyExists" }

---The value of read(), or its error as text.
---@param read fun(): any
local function try(read)
	local ok, value = pcall(read)
	if ok then
		return value
	end
	return ("<error: %s>"):format(tostring(value))
end

---@param dev DebugApi
return function(dev)
	for _, path in ipairs(HOOKS) do
		local ok, err = pcall(dev.hook, path)
		if not ok then
			dev.log("! " .. tostring(err))
		end
	end
	local ok, hooked = pcall(dev.hookClass, "/Script/Phoenix.UIManager", { skip = SKIP })
	dev.log(ok and ("hooked %d UIManager functions"):format(hooked) or ("! " .. tostring(hooked)))
	local statics = StaticFindObject("/Script/Engine.Default__GameplayStatics") --[[@as any]]
	dev.every(100, function()
		local pc = dev.pc()
		dev.track.value(
			"IsGamePaused",
			try(function()
				return pc and statics:IsGamePaused(pc)
			end)
		)
		dev.track.value(
			"UIManager.InPauseMode",
			try(function()
				local ui = dev.find("UIManager") --[[@as any]]
				return ui and ui:InPauseMode()
			end)
		)
		dev.track.value(
			"MapSubSystem.GetInPauseMenu",
			try(function()
				local map = dev.find("MapSubSystem") --[[@as any]]
				return map and map:GetInPauseMenu()
			end)
		)
	end)
	dev.log("menu: track, open and close the pause menu and the map (mark between), stop")
end
