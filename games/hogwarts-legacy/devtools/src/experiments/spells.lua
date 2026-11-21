-- How long a spell's effect lasts in the world, after the cast itself: mainly
-- the upgraded Incendio's fire spreading over grass. Hooks the wand's and the
-- player's spell tools' functions (getters and combo noise left out) and every
-- state effect function (EndEffect, SetDuration, ...); logs each player cast's
-- upgrades at Start; follows projectiles, Incendio's area actor and every
-- IncendioComponent (the burning state an Incendio leaves on what it hits)
-- until they end; screenshots when a projectile is destroyed, when an
-- IncendioComponent completes or ends, and at fixed times after an Incendio.
--
-- In the game, out of combat: start tracking; cast the upgraded Incendio on
-- grass and mark the moment the last flame disappears; cast it again at a bare
-- wall; cast one projectile spell (Confringo); stop.
--
-- Findings (18 casts of 12 spells); what works is in games/hogwarts-legacy/README.md.
-- Never called: SpellTool:OnMunitionFired, OnStop, OnCastSpell; all 33
-- MunitionType_Base functions; WandTool:CastSpell, CastActiveSpell,
-- OnSpellCasted, EndSpellCast. IsChanneling() stayed false, Levioso held
-- included; IsStarted_K2() was caught true once (Accio).
-- OnMunitionImpact: only 2 of 18 casts (Confringo, Expelliarmus at a wall).
-- WandTool.AvailableSpellLoadoutIndex stays 0 across spell set switches.
-- A spell set switch previews each spell: OnActiveSpellToolChanged in pairs
-- within ~0.1 s, no OnSpell_Pressed. Releasing the spell set button calls
-- OnSpell_Released for slots 3 to 6 at once.
-- Lumos fired Start twice when turned on and off; which call is which is unknown.
-- The BTS_Biped_TopLevel_C:InpActEvt_* input events cannot tell buttons apart:
-- every hooked event of the tree runs on each input (all K2Node numbers of an
-- action together, the Stupefy events with every spell button).
-- Projectiles stay IsValid() and not IsActorBeingDestroyed() after
-- OnMunitionDestroyed, probably reused from a pool.
-- Incendio spawns BP_AOE_Incendio2_C with 0.41 to 0.46 s of life; at
-- OnMunitionDestroyed the fireball is still exploding and nothing burns yet.
-- The grass fire is that area actor: it stops ticking and its lifetime runs
-- out ~0.75 s after Start, where the "last flame" marks landed; nothing marks
-- it as an event: none of the 15 MunitionType_AOE_MultiFX functions
-- (TriggerEnd, TriggerImpactEnd, OnExplode, ...) ran over 3 casts.
-- Screenshots show embers at 1 s and nothing at 2 s. No IncendioComponent is created and
-- no StateEffectComponent function runs. CurrentAOE keeps the old actor until
-- the next Incendio. Projectile actors are pooled: hidden until launched, they
-- stop ticking at OnMunitionDestroyed and are collected seconds later.
-- Upgrades: Incendio HasUpgradedMechanics=true (UpgradedMechanic); Confringo
-- false (Projectiles). The base Incendio is assumed to spread no fire (not
-- tested).

local Clock = require("ue4ss.clock")
local Reflect = require("ue4ss.devtools.reflect")
local Player = require("hogwarts.player")

local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"
local MUNITION_CLASS = "/Script/Munitions.MunitionType_Base"
local INCENDIO_TOOL_CLASS = "/Script/Phoenix.IncendioSpellTool"
local INCENDIO_COMPONENT_CLASS = "/Script/Phoenix.IncendioComponent"

-- Getters and queries (polled below, or noise) and the wand's combo bookkeeping.
local SKIP = {
	"Tick",
	"^Get",
	"^Is",
	"^Has",
	"^Can",
	"^Should",
	"^K2_Get",
	"^Compute",
	"^Calculate",
	"^SetNext",
	"^ResetCombo",
}

-- The spell and wand belong to the player (Owner chain); state effects are
-- hooked for everything: test out of combat.
local CLASSES = {
	{ path = "/Script/Phoenix.WandTool", player = true },
	{ path = "/Script/Phoenix.SpellTool", player = true },
	{ path = "/Script/Phoenix.StateEffectComponent", player = false },
	-- Incendio's area actor: TriggerEnd, TriggerImpactEnd, OnExplode, ...
	{ path = "/Script/Phoenix.MunitionType_AOE_MultiFX", player = false },
}

-- ESpellUpgrades names by value, checked with HasUpgrade at each Start.
local UPGRADES = {
	[0] = "UpgradedMechanic",
	"Maxima",
	"IncrementLimitedCount",
	"AffectCharacters",
	"Unblockable",
	"BreakBlockUnaware",
	"BreakBlockPygmyPerk",
	"Curse",
	"WeakenNonLiftable",
	"Popup",
	"Projectiles",
	"IncreasedCharacterDuration",
	"AOE",
	"PerfectProtegoUnblockable",
	"ProtegoAOE",
	"ProtegoDamage",
	"ProtegoFocusGain",
	"CrucioHeals",
	"ImperiusAllyDamage",
	"BombardaCooldown",
}

-- Milliseconds after an Incendio's Start to screenshot, to see the fire go out.
local INCENDIO_SHOTS = { 500, 1000, 2000, 3000, 5000, 8000 }

-- Followed objects are dropped after this many seconds, or beyond the count
-- (spawns outside tracking are not polled).
local FOLLOW_SECONDS = 30
local MAX_FOLLOWED = 64

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

---Screenshot name part: letters and digits only.
---@param text string
---@return string
local function shotName(text)
	return (text:gsub("^BP_", ""):gsub("_C$", ""):gsub("[^%w]", ""))
end

---@param object UObject
---@return string
local function className(object)
	return (object:GetClass():GetFName() --[[@as any]]):ToString()
end

---@class SpellsExperimentFollowed
---@field object UObject
---@field address integer
---@field label string
---@field born number Clock.now() when it spawned.

---Remembers objects of a class from their creation, for polling.
---@param class string
---@return SpellsExperimentFollowed[]
local function followSpawns(class)
	---@type SpellsExperimentFollowed[]
	local followed = {}
	-- Types.lua declares the callback without its object parameter.
	local notify = NotifyOnNewObject --[[@as fun(class: string, callback: fun(object: UObject))]]
	notify(class, function(object)
		followed[#followed + 1] = {
			object = object,
			address = object:GetAddress(),
			label = ("%s %X"):format(className(object), object:GetAddress()),
			born = Clock.now(),
		}
		if #followed > MAX_FOLLOWED then
			table.remove(followed, 1)
		end
	end)
	return followed
end

---Polls each followed object with poll(entry, age); drops it when poll returns
---true, when it is no longer the same live object, or after FOLLOW_SECONDS.
---@param followed SpellsExperimentFollowed[]
---@param poll fun(entry: SpellsExperimentFollowed, age: number): boolean?
---@param gone fun(entry: SpellsExperimentFollowed, age: number)
local function pollFollowed(followed, poll, gone)
	for i = #followed, 1, -1 do
		local entry = followed[i]
		local age = Clock.now() - entry.born
		local live = entry.object:IsValid() and entry.object:GetAddress() == entry.address
		if not live then
			table.remove(followed, i)
			gone(entry, age)
		elseif age > FOLLOW_SECONDS or poll(entry, age) then
			table.remove(followed, i)
		end
	end
end

---Logs a player cast's upgrades and, for Incendio, takes timed screenshots.
---@param dev DebugApi
local function onStart(dev)
	local ok, err = pcall(RegisterHook, "/Script/Phoenix.SpellTool:Start", function(context)
		local spell = (context --[[@as any]]):get()
		local character = spell:GetCharacter()
		if not character or not character:IsValid() or not character:IsA(PLAYER_CLASS) then
			return
		end
		local name = tostring(try(function()
			return spell.DatabaseName:ToString()
		end))
		local upgrades = {}
		for value = 0, #UPGRADES do
			if try(function()
				return spell:HasUpgrade(value)
			end) == true then
				upgrades[#upgrades + 1] = UPGRADES[value]
			end
		end
		dev.track.call("spell upgrades", {
			spell = name,
			HasUpgradedMechanics = try(function()
				return spell:HasUpgradedMechanics()
			end),
			upgrades = table.concat(upgrades, ","),
		})
		if spell:IsA(INCENDIO_TOOL_CLASS) then
			for _, ms in ipairs(INCENDIO_SHOTS) do
				dev.after(ms, function()
					dev.shot({ name = ("incendio%dms"):format(ms), ui = true })
				end)
			end
		end
	end)
	if not ok then
		dev.log("! " .. tostring(err))
	end
end

---Screenshots the end of a cast and of a state effect.
---@param dev DebugApi
local function endShots(dev)
	local ok, err = pcall(RegisterHook, "/Script/Phoenix.SpellTool:OnMunitionDestroyed", function(context)
		local spell = (context --[[@as any]]):get()
		local name = try(function()
			return spell.DatabaseName:ToString()
		end)
		dev.shot({ name = "destroyed" .. shotName(tostring(name)), ui = true })
	end)
	if not ok then
		dev.log("! " .. tostring(err))
	end
	ok, err = pcall(RegisterHook, "/Script/Phoenix.StateEffectComponent:EndEffect", function(context)
		local effect = (context --[[@as any]]):get()
		if effect:IsA(INCENDIO_COMPONENT_CLASS) then
			dev.shot({ name = "incendioEndEffect", ui = true })
		end
	end)
	if not ok then
		dev.log("! " .. tostring(err))
	end
	for _, name in ipairs({ "TriggerEnd", "TriggerImpactEnd" }) do
		ok, err = pcall(RegisterHook, "/Script/Phoenix.MunitionType_AOE_MultiFX:" .. name, function()
			dev.shot({ name = "area" .. name, ui = true })
		end)
		if not ok then
			dev.log("! " .. tostring(err))
		end
	end
end

---Follows projectiles: how they look once the spell is done with them, to find
---what marks their end (bHidden, remaining lifetime, ticking).
---@param dev DebugApi
local function followMunitions(dev)
	local munitions = followSpawns(MUNITION_CLASS)
	dev.every(100, function()
		pollFollowed(munitions, function(entry)
			local object = entry.object --[[@as any]]
			dev.track.value(
				"munition " .. entry.label,
				try(function()
					return ("hidden=%s expired=%s tick=%s"):format(
						tostring(object.bHidden),
						tostring(object:GetRemainingLifeTime() <= 0),
						tostring(object:IsActorTickEnabled())
					)
				end)
			)
		end, function(entry, age)
			dev.track.call("munition gone", { munition = entry.label, after = ("%.2f s"):format(age) })
		end)
	end)
end

---Follows IncendioComponents: their owner, remaining time and completion; a
---screenshot when one completes or disappears.
---@param dev DebugApi
local function followIncendio(dev)
	local components = followSpawns(INCENDIO_COMPONENT_CLASS)
	dev.every(100, function()
		pollFollowed(components, function(entry, age)
			local component = entry.object --[[@as any]]
			local complete = try(function()
				return component:IsComplete()
			end)
			dev.track.value(
				"incendio " .. entry.label,
				try(function()
					return ("owner=%s remaining=%.0f s complete=%s"):format(
						describe(component:GetOwner()),
						component:GetRemainingTime(),
						tostring(complete)
					)
				end)
			)
			if complete == true then
				dev.track.call("incendio complete", { component = entry.label, after = ("%.2f s"):format(age) })
				dev.shot({ name = "incendioComplete", ui = true })
				return true
			end
		end, function(entry, age)
			dev.track.call("incendio gone", { component = entry.label, after = ("%.2f s"):format(age) })
			dev.shot({ name = "incendioGone", ui = true })
		end)
	end)
end

---Follows the active spell: its projectile and, for Incendio, its area actor.
---@param dev DebugApi
local function followActiveSpell(dev)
	dev.every(100, function()
		local player = Player.find()
		local wand = player and Reflect.valid(player.pawn:GetWand())
		local spell = wand and Reflect.valid(wand:GetActiveSpellTool())
		if not spell then
			dev.track.value("spell", "none")
			return
		end
		dev.track.value(
			"spell",
			try(function()
				return ("%s (%s)"):format(spell.DatabaseName:ToString(), describe(spell))
			end)
		)
		dev.track.value(
			"spell.IsStopped",
			try(function()
				return spell:IsStopped()
			end)
		)
		dev.track.value(
			"spell.GetActiveMunition",
			try(function()
				return describe(spell:GetActiveMunition())
			end)
		)
		if spell:IsA(INCENDIO_TOOL_CLASS) then
			dev.track.value(
				"incendio.CurrentAOE",
				try(function()
					return describe(spell:GetPropertyValue("CurrentAOE"))
				end)
			)
		end
	end)
end

---@param dev DebugApi
return function(dev)
	for _, class in ipairs(CLASSES) do
		local ok, hooked = pcall(dev.hookClass, class.path, { player = class.player, skip = SKIP })
		dev.log(ok and ("hooked %d functions of %s"):format(hooked, class.path) or ("! " .. tostring(hooked)))
	end
	for _, class in ipairs({ MUNITION_CLASS, INCENDIO_COMPONENT_CLASS }) do
		local ok, err = pcall(dev.spawned, class)
		if not ok then
			dev.log("! " .. tostring(err))
		end
	end
	onStart(dev)
	endShots(dev)
	followMunitions(dev)
	followIncendio(dev)
	followActiveSpell(dev)
	dev.log(
		"spells: track; upgraded Incendio on grass (mark when the last flame goes out), "
			.. "Incendio at a bare wall, Confringo; stop"
	)
end
