-- Keeps Lumos lit after it is cast; see lumos.lua.

local Clock = require("ue4ss.clock")
local Loop = require("ue4ss.loop")
local Log = require("ue4ss.log")
local Spells = require("hogwarts.spells")
local Player = require("hogwarts.player")
local Lumos = require("lumos")
local Snares = require("snares")

local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"
local SWITCHED = "/Script/Phoenix.WandTool:OnActiveSpellToolChanged"
-- How often a kept light is forced on, the wand up and the snares' Lumos started.
local POLL_INTERVAL_MS = 200

local log = Log.new("[LumosKeeper]")
local keeper = Lumos.keeper(log, Clock.now, Snares.finder(Clock.now))

-- Hooks only record events; the poll below acts on them.
local spells = Spells.tracker(log)
spells:listen({
	fired = function(cast)
		keeper:fired(cast)
	end,
})

-- Casting Lumos at a kept light shows up only as a switch to the Lumos tool.
local ok, err = pcall(RegisterHook, SWITCHED, function(_, activated)
	-- UE4SS wraps parameters; ActivatedSpell can be invalid.
	local tool = (activated --[[@as any]]):get()
	if tool:IsValid() then
		keeper:switched(tool:GetAddress())
	end
end)
if not ok then
	log(("Hook %s unavailable: %s"):format(SWITCHED, tostring(err)))
end

-- A new player (after loading) has no kept light. It is still being
-- constructed, so only Lua state changes here.
NotifyOnNewObject(PLAYER_CLASS, function()
	keeper:forget()
end)

Loop.gameThread(POLL_INTERVAL_MS, function()
	local player = Player.find()
	-- Inactive: paused, cinematic or dead. Mounts count as active so the
	-- keeper can let go of the light there.
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
