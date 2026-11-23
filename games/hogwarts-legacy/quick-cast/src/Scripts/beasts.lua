-- The beast in focus, for the `beast` context: the creature tools in
-- main.lua (the Nab-Sack, the brush, the food) act on it, as the game's own
-- tool slots do (devtools experiments/beasts.lua, run 4).
--
-- The beast in focus is the controller's auto target when it is a creature
-- (`Creature_Character`); enemies and objects are other classes. The game
-- tends and catches beasts only out of combat (`InCombatMode()`).
--
-- The auto target picks beasts far beyond the tools' reach, e.g. 13 m away,
-- where a tool starts (`BeginItemUsage`) but does nothing: brushing and
-- feeding at 10.1-13 m did nothing (devtools experiments/beasts.lua, runs 12
-- and 14). Each tool has its own reach, read from the game:
-- - the brush's and the food's `InteractRange`, on their classes' defaults
--   (1000 cm both, the same on the spawned tools);
-- - the Nab-Sack's, per beast: its creature definition's
--   `GetCapturingDistanceMax()` (`CreatureManager:
--   BP_GetCreatureDefinitionForActor`). The spawned Nab-Sack's
--   `GetMaxCapturingDistance()` read 1250 cm for a Hippogriff; that the
--   definition gives the same, and whether the player's
--   `CaptureToolRangeModifier` adds to it, is not verified in game.
-- In the room and its vivariums a beast counts within the smallest of these,
-- so every tool works on it and farther beasts leave the buttons to the
-- room's spells. Elsewhere it counts within the Nab-Sack's reach, so beasts
-- can be caught from as far as the Nab-Sack reaches; the brush and the food
-- do nothing beyond theirs. A reach that cannot be read is left out; with
-- none, no beast counts.
--
-- `UseInventoryItemByName(<item>, "Toolbox_Storage")` starts the tool through
-- the player's behaviour tree. The Nab-Sack ("CaptureDevice") is equipped,
-- aims at the auto target, passes its gates and ends in ~9 s; a catch can
-- still fail, e.g. when the beast runs off.
--
-- A tool used this way is pressed but never released: the player stays slow
-- and the camera close for the whole use, ~16 s for the food. The game's
-- button release runs the active tool's `EndItemUsage()` (0.26 s after the
-- press), and the use then ends in ~2 s. Calling it right after the use
-- works the same (devtools experiments/beasts.lua, runs 10-11).
--
-- A use started while another runs interrupts it (`ItemUsageEnded` at once,
-- no task exit), and after feeding twice in a row the player could only walk,
-- also after another `EndItemUsage()`; the walk speed and the task's
-- contexts read normal (run 13). So a new use waits until the use task exits
-- (`BTT_BipedUpper_UseInventoryItem_C:ExitTask`: ~2.5 s for the food, ~1 s
-- for the brush, ~9 s for the Nab-Sack), whoever started it. The hook is set
-- at the first use, once the task's Blueprint is loaded; a use not seen to
-- exit stops blocking after USE_TIMEOUT.

local Clock = require("ue4ss.clock")
local Lookup = require("ue4ss.lookup")

local CREATURE_CLASS = "/Script/Phoenix.Creature_Character"
-- The defaults of the tools with an `InteractRange`: the brush and the food.
local TOOL_DEFAULTS = {
	"/Script/Phoenix.Default__CreaturePettingTool",
	"/Script/Phoenix.Default__CreatureFeedingTool",
}
-- Seconds between CreatureManager searches while there is none.
local SEARCH_INTERVAL = 1
-- The behaviour tree task every inventory tool use runs in, and its end.
local TASK_EXIT = "/Game/Pawn/Shared/StateTree/BTT_BipedUpper_UseInventoryItem.BTT_BipedUpper_UseInventoryItem_C:ExitTask"
-- Seconds after a use when it stops blocking the next one even without a
-- task exit: longer than the Nab-Sack's ~9 s catch.
local USE_TIMEOUT = 15

---@alias QuickCastBeastUse "used"|"busy"|"failed"

local Beasts = {}

-- When the running use stops blocking new ones, while one runs.
---@type number?
local busyUntil
local exitHooked = false

---Clears the running use when the use task exits. Retried at each use until
---the task's Blueprint is loaded.
local function hookTaskExit()
	if exitHooked then
		return
	end
	exitHooked = pcall(RegisterHook, TASK_EXIT, function()
		busyUntil = nil
	end)
end

local creatureManagers = Lookup.new(SEARCH_INTERVAL, function()
	local manager = FindFirstOf("CreatureManager")
	if manager and manager:IsValid() then
		return manager
	end
	return nil
end)

-- The brush's and the food's smaller reach, once read from the game.
---@type number?
local interactReach

---The smaller reach of the brush and the food, in cm, or nil while their
---defaults cannot be read.
---@return number?
local function toolReach()
	if interactReach then
		return interactReach
	end
	---@type number
	local smallest = math.huge
	for _, path in ipairs(TOOL_DEFAULTS) do
		local ok, range = pcall(function()
			return (StaticFindObject(path) --[[@as any]]).InteractRange
		end)
		if not ok or type(range) ~= "number" then
			return nil
		end
		smallest = math.min(smallest, range)
	end
	interactReach = smallest
	return interactReach
end

---The Nab-Sack's reach for this beast, in cm, or nil when it cannot be read.
---@param target AActor
---@return number?
local function captureReach(target)
	local manager = creatureManagers:get() --[[@as any]]
	if not manager then
		return nil
	end
	local ok, range = pcall(function()
		return manager:BP_GetCreatureDefinitionForActor(target):GetCapturingDistanceMax()
	end)
	if not ok or type(range) ~= "number" or range <= 0 then
		return nil
	end
	return range
end

---How far the beast may be: the smallest tool reach in the room, the
---Nab-Sack's elsewhere; any reach readable when the preferred one is not.
---@param target AActor
---@param inRoom boolean
---@return number?
local function reach(target, inRoom)
	local tools, capture = toolReach(), captureReach(target)
	if tools and capture then
		return inRoom and math.min(tools, capture) or capture
	end
	return tools or capture
end

---The beast the creature tools would act on now, or nil: none in focus, out
---of reach (see above), or in combat. Call on the game thread.
---@param player HogwartsPlayer
---@param inRoom boolean In the Room of Requirement or a vivarium.
---@return AActor?
function Beasts.focused(player, inRoom)
	if player.pawn:InCombatMode() then
		return nil
	end
	local target = (player.controller --[[@as ABiped_PlayerController]]):GetBestAutoTargetActor()
	if not target or not target:IsValid() or not target:IsA(CREATURE_CLASS) then
		return nil
	end
	local range = reach(target, inRoom)
	if not range or player.pawn:GetDistanceTo(target) > range then
		return nil
	end
	return target
end

---Uses an inventory tool on the beast in focus as the game's slot press and
---release do: "used", "busy" while another use runs (nothing done), or
---"failed" when the game did not use it. Call on the game thread.
---@param pawn ABiped_Player
---@param item string The tool's item name, e.g. "CreatureFeed".
---@param holder string Its holder, e.g. "Toolbox_Storage".
---@return QuickCastBeastUse
function Beasts.use(pawn, item, holder)
	if busyUntil and Clock.now() < busyUntil then
		return "busy"
	end
	if not pawn:UseInventoryItemByName(FName(item), FName(holder)) then
		return "failed"
	end
	busyUntil = Clock.now() + USE_TIMEOUT
	hookTaskExit()
	local tool = (pawn --[[@as any]]).InventoryToolSetComponent:GetActiveTool()
	if tool and tool:IsValid() then
		tool:EndItemUsage()
	end
	return "used"
end

return Beasts
