-- Keeps Lumos lit after it is cast, and the wand raised while it is; see lumos.lua.
-- Replaces the LumosAlwaysStayOn mod: disable that one, both move the same light.

local Clock = require("ue4ss.clock")
local Loop = require("ue4ss.loop")
local Log = require("ue4ss.log")
local Spells = require("hogwarts.spells")
local Player = require("hogwarts.player")
local Lumos = require("lumos")

local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"
local SWITCHED = "/Script/Phoenix.WandTool:OnActiveSpellToolChanged"
-- How often a kept light is forced on and the wand up.
local POLL_INTERVAL_MS = 200

local log = Log.new("[LumosKeeper]")
local keeper = Lumos.keeper(log, Clock.now)

-- The hooks register at load and only record what happened; the poll below
-- acts on it. The tracker reports casts while the player is in gameplay.
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
		keeper:switched(tool:GetAddress())
	end
end)
if not ok then
	log(("Hook %s unavailable: %s"):format(SWITCHED, tostring(err)))
end

-- A new player, e.g. after loading a save, starts without a kept light. The
-- object is still being constructed: only Lua state changes here.
NotifyOnNewObject(PLAYER_CLASS, function()
	keeper:forget()
end)

Loop.gameThread(POLL_INTERVAL_MS, function()
	local player = Player.find()
	-- In gameplay: not paused, in a cinematic or dead. On a mount too: the
	-- keeper lets go of the light there.
	if not player or not player.active then
		spells:pause()
		return
	end
	spells:resume()
	keeper:update(player.pawn)
end, function(message)
	log("Update failed: " .. message)
end)

log("Lumos keeper started")
