-- Keeps Lumos lit after it is cast, and the wand raised while it is; see lumos.lua.
-- Replaces the LumosAlwaysStayOn mod: disable that one, both move the same light.

local Objects = require("ue4ss.objects")
local Lookup = require("ue4ss.lookup")
local Loop = require("ue4ss.loop")
local Log = require("ue4ss.log")
local Spells = require("hogwarts.spells")
local Wand = require("hogwarts.wand")
local Lumos = require("lumos")

local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"
local SWITCHED = "/Script/Phoenix.WandTool:OnActiveSpellToolChanged"
-- How often a kept light is forced on and the wand up.
local POLL_INTERVAL_MS = 200
-- Logs every change of the player's arm state.
---@type boolean
local DEBUG = true

local log = Log.new("[LumosStayOn]")
local keeper = Lumos.keeper(log)

-- The hooks register at load and only record what happened; the poll below
-- acts on it. The tracker reports casts while the player is on foot in gameplay.
local spells = Spells.tracker(log)
spells:listen({
	fired = function(cast)
		keeper:fired(cast)
	end,
})

-- Casting Lumos at a kept light runs no Start and, from a quick-cast mod, no
-- button press: the wand switching to the Lumos tool marks it.
local ok, err = pcall(RegisterHook, SWITCHED, function(_, activated)
	-- UE4SS passes the parameters wrapped; ActivatedSpell can be invalid.
	local tool = (activated --[[@as any]]):get()
	if tool:IsValid() then
		keeper:switched(tool:GetAddress(), os.clock())
	end
end)
if not ok then
	log(("Hook %s unavailable: %s"):format(SWITCHED, tostring(err)))
end

-- A new player, e.g. after loading a save, starts without a kept light. The
-- object is still being constructed: only Lua state changes here.
NotifyOnNewObject(PLAYER_CLASS, function()
	keeper:forget("player created")
end)

if DEBUG then
	local debugLog = Log.new("[LumosStayOn][debug]")
	Wand.subscribe({
		changed = function(state, last)
			debugLog(("arm %s -> %s"):format(tostring(last), tostring(state)))
		end,
	})
end

-- Finding the controller scans every PlayerController. Reuse a live one; while
-- menus or travel have none, search at most once per second.
local controllers = Lookup.new(1, Objects.playerController)

---The player while on foot in gameplay: not paused, no cinematic, alive, not
---on a mount.
---@param now number
---@return ABiped_Player?
local function onFootPlayer(now)
	local controller = controllers:get(now) --[[@as APlayerController?]]
	if not controller then
		return nil
	end
	local pawn = controller.Pawn
	if not pawn or not pawn:IsValid() or not pawn:IsA(PLAYER_CLASS) then
		return nil
	end
	---@cast pawn ABiped_Player
	local gameplay = Objects.gameplayStatics()
	if
		not gameplay
		or gameplay:IsGamePaused(controller)
		or pawn.InCinematic
		or pawn:IsDead()
		or pawn:GetIsOnAMountOrInTransition()
	then
		return nil
	end
	return pawn
end

Loop.gameThread(POLL_INTERVAL_MS, function()
	-- os.clock() is wall-clock time since process start on Windows (MSVC CRT).
	local now = os.clock()
	local pawn = onFootPlayer(now)
	if not pawn then
		spells:pause()
		return
	end
	spells:resume()
	keeper:update(pawn, now)
end, function(message)
	log("Update failed: " .. message)
end)

log("Lumos keeper started")
