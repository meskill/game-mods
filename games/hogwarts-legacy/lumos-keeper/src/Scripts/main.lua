-- Keeps Lumos lit after it is cast; see lumos.lua.

local Clock = require("ue4ss.clock")
local Loop = require("ue4ss.loop")
local Log = require("ue4ss.log")
local Spells = require("hogwarts.spells")
local Player = require("hogwarts.player")
local Lumos = require("lumos")

local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"
local SWITCHED = "/Script/Phoenix.WandTool:OnActiveSpellToolChanged"
local SNARE_ENDED = {
	"/Script/Phoenix.DevilsSnare:PlayerLumosEnd",
	"/Script/Phoenix.DevilsSnareDynamic:PlayerLumosEnd",
}
-- How often the keeper checks the light, the wand and the snares: a light the
-- game turns off is back within this time.
local POLL_INTERVAL_MS = 50

local log = Log.new("[LumosKeeper]")
local keeper = Lumos.keeper(log, Clock.now)

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

for _, path in ipairs(SNARE_ENDED) do
	local hookOk, hookErr = pcall(RegisterHook, path, function(context)
		local snare = (context --[[@as any]]):get()
		if snare:IsValid() then
			keeper:snareEnded(snare)
		end
	end)
	if not hookOk then
		log(("Hook %s unavailable: %s"):format(path, tostring(hookErr)))
	end
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
