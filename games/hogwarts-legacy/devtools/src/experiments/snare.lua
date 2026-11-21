-- Devil's Snare and the player's Lumos, for games/hogwarts-legacy/lumos-keeper:
-- a kept light holds snares back after the Lumos cast, but after another
-- spell (Confringo) the light stays on and snares hurt the player again.
--
-- Snares (ADevilsSnare, ADevilsSnareDynamic) keep `bPlayerIsUsingLumos`, set
-- by `PlayerLumosStart`/`PlayerLumosEnd`, probably bound to the player's
-- `OnLumosStart`/`OnLumosEnd`. Question: does the other spell end the snares'
-- Lumos while the keeper keeps the light, and does PlayerLumosStart fix it?
--
-- Logs the snare classes' calls and, for snares within NEAR, their class,
-- state, Lumos flag and the light actors they see; also the light of the last
-- Lumos cast. Keys (run without experiments.lumos, which binds F1-F5 too):
--   F1  restore: DeactivateLumos, ActivateLumos on the last Lumos cast's tool
--   F2  flag:    bPlayerIsUsingLumos = true on near snares, no call
--   F3  start:   PlayerLumosStart on near snares
--   F4  end:     PlayerLumosEnd on near snares
--
-- Run with the keeper on, next to a Devil's Snare patch, out of combat: start
-- tracking; mark before each step.
-- 1. Cast Lumos; wait 2 s; walk into the snare (it pulls back); wait 3 s.
-- 2. Step out; cast Confringo; wait 2 s; walk into the snare (it hurts).
-- 3. F1; wait 3 s.
-- 4. Step out; cast Confringo; wait 2 s; walk into the snare; F2; wait 3 s.
-- 5. Step out; cast Confringo; wait 2 s; walk into the snare; F3; wait 3 s.
-- 6. Step out; cast Lumos (light goes); wait 3 s; F4. Stop tracking.
--
-- Findings (run 2, 9 BP_DevilsSnareDyn_* snares, keeper on):
-- - Lumos cast: PlayerLumosStart on every snare ~20 ms after Start; flag true.
-- - The next spell (Confringo): PlayerLumosEnd ~0.4 s before its Start; flag
--   false while the kept light stays on. Later spells call neither.
-- - F1 restore calls neither: the flag stays false.
-- - F2 (flag) and F3 (PlayerLumosStart) make the snares recoil again; the flag
--   stays true through Confringo and Expelliarmus.
-- - Lumos cast at the kept light: PlayerLumosStart then PlayerLumosEnd ~0.2 s
--   later, with the light going out.
-- - FindClosestLightSourcePos runs ~1000 times a second over 9 snares: skip it.

local Spells = require("hogwarts.spells")

local LUMOS_CLASS = "/Script/Phoenix.LumosSpellTool"
-- EStandardManagedPriority.AblAbility, the light priority the keeper uses.
local LIGHT_PRIORITY = 1

local SNARE_CLASSES = { "DevilsSnare", "DevilsSnareDynamic" }
local SNARE_PATHS = { "/Script/Phoenix.DevilsSnare", "/Script/Phoenix.DevilsSnareDynamic" }
-- Called every frame or so; their calls would bury the rest.
local SKIP = { "Tick", "UpdateMeshMaterial", "FindClosestLightSourcePos" }

-- Snares closer than this (cm) are tracked and acted on.
local NEAR = 2000
-- Distances are tracked in these steps (cm), so walking logs little.
local DISTANCE_STEP = 200

local POLL_MS = 250
local ACTION_SHOT_MS = 300

-- EDevilsSnareState names by value.
local STATES = { [0] = "Hidden", "Idle", "Recoiling", "Regrowing", "Grabbing" }

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

---Names of the valid actors in an array property, or an error.
---@param actors TArray<AActor>
---@return string
local function names(actors)
	local list = {}
	actors:ForEach(function(_, element)
		local actor = element:get()
		if actor:IsValid() then
			list[#list + 1] = (actor:GetFName() --[[@as any]]):ToString()
		end
	end)
	table.sort(list)
	return #list == 0 and "-" or table.concat(list, ", ")
end

---Snares within NEAR of the pawn.
---@param pawn AActor
---@return (ADevilsSnare|ADevilsSnareDynamic)[]
local function nearSnares(pawn)
	local near = {}
	for _, class in ipairs(SNARE_CLASSES) do
		for _, snare in ipairs(FindAllOf(class) or {}) do
			---@cast snare AActor
			if snare:IsValid() and pawn:GetDistanceTo(snare) <= NEAR then
				near[#near + 1] = snare
			end
		end
	end
	return near
end

---@class SnareExperimentState
---@field lumos? ALumosSpellTool The Lumos spell tool of the last Lumos cast.

---Remembers the Lumos tool of each Lumos cast and logs every cast.
---@param dev DebugApi
---@param state SnareExperimentState
local function followCasts(dev, state)
	local tracker = Spells.tracker(function(message)
		dev.log("! " .. message)
	end)
	tracker:listen({
		fired = function(cast)
			local spell = cast.spell
			if cast.name == "lumos" and spell:IsValid() and spell:IsA(LUMOS_CLASS) then
				state.lumos = spell --[[@as ALumosSpellTool]]
			end
			dev.track.call("spells fired", { spell = cast.name })
		end,
	})
	tracker:resume()
end

---Polls the light of the last Lumos cast and the snares near the player.
---@param dev DebugApi
---@param state SnareExperimentState
local function follow(dev, state)
	dev.every(POLL_MS, function()
		local pawn = dev.pawn()
		if not pawn then
			return
		end
		local lumos = state.lumos
		if lumos and lumos:IsValid() then
			dev.track.value("lumos.IsLumosActive", try(function()
				return lumos:IsLumosActive()
			end))
			dev.track.value("lumos.actor", try(function()
				return describe(lumos:GetLumosActor())
			end))
		end
		local snares = nearSnares(pawn)
		dev.track.value("snares near", #snares)
		for _, snare in ipairs(snares) do
			local label = "snare " .. describe(snare)
			local any = snare --[[@as any]]
			dev.track.value(label .. " class", try(function()
				return (snare:GetClass():GetFName() --[[@as any]]):ToString()
			end))
			dev.track.value(label .. " distance", try(function()
				return math.floor(pawn:GetDistanceTo(snare) / DISTANCE_STEP) * DISTANCE_STEP
			end))
			dev.track.value(label .. " bPlayerIsUsingLumos", try(function()
				return any.bPlayerIsUsingLumos
			end))
			if snare:IsA("/Script/Phoenix.DevilsSnare") then
				dev.track.value(label .. " state", try(function()
					return STATES[any.CurrentState] or any.CurrentState
				end))
				dev.track.value(label .. " lights", try(function()
					return names(any.ActorsInAreaForLightAndFire)
				end))
				dev.track.value(label .. " inArea", try(function()
					return names(any.ActorsInArea)
				end))
			else
				dev.track.value(label .. " lights", try(function()
					return names(any.LightActorsInArea)
				end))
			end
		end
	end)
end

---Runs one action on every snare near the player.
---@param each fun(snare: ADevilsSnare|ADevilsSnareDynamic)
---@return fun(dev: DebugApi, pawn: AActor, state: SnareExperimentState)
local function onSnares(each)
	return function(dev, pawn)
		local snares = nearSnares(pawn)
		for _, snare in ipairs(snares) do
			local ok, err = pcall(each, snare)
			dev.track.call("snare", { snare = describe(snare), ok = ok, err = err })
		end
		if #snares == 0 then
			dev.log(("! no snare within %d cm"):format(NEAR))
		end
	end
end

---@class SnareExperimentAction
---@field key Key
---@field name string
---@field run fun(dev: DebugApi, pawn: AActor, state: SnareExperimentState)

---@type SnareExperimentAction[]
local ACTIONS = {
	{
		key = Key.F1,
		name = "restore",
		run = function(dev, _, state)
			local lumos = state.lumos
			if not lumos or not lumos:IsValid() then
				dev.log("! restore: no Lumos cast yet")
				return
			end
			local ok, err = pcall(function()
				lumos:DeactivateLumos(LIGHT_PRIORITY, lumos)
				lumos:ActivateLumos(LIGHT_PRIORITY, lumos)
			end)
			dev.track.call("lumos", { lumos = describe(lumos), ok = ok, err = err })
		end,
	},
	{
		key = Key.F2,
		name = "flag",
		run = onSnares(function(snare)
			(snare --[[@as any]]).bPlayerIsUsingLumos = true
		end),
	},
	{
		key = Key.F3,
		name = "start",
		run = onSnares(function(snare)
			snare:PlayerLumosStart()
		end),
	},
	{
		key = Key.F4,
		name = "end",
		run = onSnares(function(snare)
			snare:PlayerLumosEnd()
		end),
	},
}

---Binds the ACTIONS keys; each runs on the game thread and takes a screenshot.
---@param dev DebugApi
---@param state SnareExperimentState
local function bindActions(dev, state)
	for _, action in ipairs(ACTIONS) do
		RegisterKeyBind(action.key, function()
			-- Key callbacks run outside the game thread.
			ExecuteInGameThread(function()
				local pawn = dev.pawn()
				if not pawn then
					dev.log(("! %s: no player"):format(action.name))
					return
				end
				dev.track.call("action " .. action.name)
				action.run(dev, pawn, state)
				dev.after(ACTION_SHOT_MS, function()
					dev.shot({ name = "snare-" .. action.name, ui = true })
				end)
			end)
		end)
	end
end

---@param dev DebugApi
return function(dev)
	for _, path in ipairs(SNARE_PATHS) do
		local ok, hooked = pcall(dev.hookClass, path, { skip = SKIP })
		dev.log(ok and ("hooked %d functions of %s"):format(hooked, path) or ("! " .. tostring(hooked)))
		local spawnOk, err = pcall(dev.spawned, path)
		if not spawnOk then
			dev.log("! " .. tostring(err))
		end
	end
	---@type SnareExperimentState
	local state = {}
	followCasts(dev, state)
	follow(dev, state)
	bindActions(dev, state)
	dev.log("snare: track; keeper on: Lumos, snare; Confringo, snare; F1; Confringo, F2; Confringo, F3; Lumos, F4; stop")
end
