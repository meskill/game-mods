local Spells = require("hogwarts.spells")

local function valid()
	return true
end

---A character of `class`, as `ASpellTool:GetCharacter()` returns it.
local function character(class)
	return {
		IsValid = valid,
		IsA = function(_, path)
			return path == class
		end,
	}
end

local PLAYER = character("/Script/Phoenix.Biped_Player")
local NPC = character("/Script/Phoenix.NPC_Character")

---A spell tool of `owner` named `name`, of `class` (a plain SpellTool by default),
---upgraded when `upgraded` is true.
local function spellTool(name, address, owner, class, upgraded)
	return {
		DatabaseName = {
			ToString = function()
				return name
			end,
		},
		IsValid = valid,
		IsA = function(_, path)
			return path == class
		end,
		HasUpgradedMechanics = function()
			return upgraded == true
		end,
		GetAddress = function()
			return address
		end,
		GetCharacter = function()
			return owner
		end,
	}
end

---An Incendio area actor that burns while `burning` is true.
local function area(address)
	local actor = { burning = true, IsValid = valid }
	function actor:GetAddress()
		return address
	end
	function actor:IsActorTickEnabled()
		return self.burning
	end
	function actor:GetRemainingLifeTime()
		return self.burning and 0.4 or 0
	end
	return actor
end

local INCENDIO = "/Script/Phoenix.IncendioSpellTool"

describe("hogwarts.spells", function()
	---@type table<string, function>
	local hooked
	---The tracker's game-thread loop; one tick runs it once.
	local tick

	before_each(function()
		hooked, tick = {}, nil
		_G.RegisterHook = function(path, callback)
			hooked[path] = callback
			return 1, 2
		end
		_G.LoopInGameThreadWithDelay = function(_, callback)
			tick = callback
			return 1
		end
	end)

	after_each(function()
		_G.RegisterHook, _G.LoopInGameThreadWithDelay = nil, nil
	end)

	---Runs the hook on SpellTool:`name` as the game would for a call on `spell`.
	local function call(name, spell)
		hooked["/Script/Phoenix.SpellTool:" .. name]({
			get = function()
				return spell
			end,
		})
	end

	---Resumed tracker whose events are recorded as "fired name", "impact name",
	---"ended name reason".
	local function recorded()
		local events = {}
		local tracker = Spells.tracker(error)
		tracker:listen({
			fired = function(cast)
				events[#events + 1] = "fired " .. cast.name
			end,
			impact = function(cast)
				events[#events + 1] = "impact " .. cast.name
			end,
			ended = function(cast, reason)
				events[#events + 1] = "ended " .. cast.name .. " " .. reason
			end,
		})
		tracker:resume()
		return tracker, events
	end

	it("fires a player cast on Start and ends it when its spell stops without a projectile", function()
		local _, events = recorded()
		local accio = spellTool("Accio", 0x30, PLAYER)
		call("Start", accio)
		assert.same({ "fired accio" }, events)

		call("OnStop", accio)
		assert.same({ "fired accio", "ended accio gone" }, events)
	end)

	it("keeps a projectile cast past its stop until the projectile is destroyed", function()
		local _, events = recorded()
		local diffindo = spellTool("Diffindo", 0x30, PLAYER)
		call("Start", diffindo)
		call("OnMunitionFired", diffindo)
		call("OnStop", diffindo)
		assert.same({ "fired diffindo" }, events)

		call("OnMunitionImpact", diffindo)
		call("OnMunitionImpact", diffindo)
		assert.same({ "fired diffindo", "impact diffindo" }, events)

		call("OnMunitionDestroyed", diffindo)
		assert.same({ "fired diffindo", "impact diffindo", "ended diffindo gone" }, events)
	end)

	it("ignores other characters' casts and other spell tools' events", function()
		local _, events = recorded()
		call("Start", spellTool("Confringo", 0x40, NPC))
		assert.same({}, events)

		local incendio = spellTool("Incendio", 0x30, PLAYER)
		call("Start", incendio)
		local other = spellTool("Incendio", 0x41, NPC)
		call("OnMunitionImpact", other)
		call("OnStop", other)
		call("OnMunitionDestroyed", other)
		assert.same({ "fired incendio" }, events)
	end)

	it("replaces the current cast when the player fires another spell", function()
		local _, events = recorded()
		call("Start", spellTool("Confringo", 0x30, PLAYER))
		call("Start", spellTool("Glacius", 0x31, PLAYER))
		assert.same({ "fired confringo", "ended confringo replaced", "fired glacius" }, events)
	end)

	it("cancels the current cast on the basic wand attack without firing it", function()
		local _, events = recorded()
		call("Start", spellTool("Confringo", 0x30, PLAYER))
		call("Start", spellTool("Stupefy", 0x31, PLAYER))
		assert.same({ "fired confringo", "ended confringo cancelled" }, events)
	end)

	it("ends the cast on pause and ignores hooks until resumed", function()
		local tracker, events = recorded()
		local confringo = spellTool("Confringo", 0x30, PLAYER)
		call("Start", confringo)
		tracker:pause()
		call("Start", confringo)
		assert.same({ "fired confringo", "ended confringo interrupted" }, events)

		tracker:resume()
		call("Start", confringo)
		assert.same({ "fired confringo", "ended confringo interrupted", "fired confringo" }, events)
	end)

	it("starts paused", function()
		local tracker = Spells.tracker(error)
		local fired = 0
		tracker:listen({
			fired = function()
				fired = fired + 1
			end,
		})
		call("Start", spellTool("Confringo", 0x30, PLAYER))
		assert.equals(0, fired)
	end)

	it("logs a hook it cannot register and keeps the others", function()
		_G.RegisterHook = function(path, callback)
			if path:find("OnStop", 1, true) then
				error("no UFunction " .. path)
			end
			hooked[path] = callback
		end
		local warnings = {}
		local tracker = Spells.tracker(function(message)
			warnings[#warnings + 1] = message
		end)
		local fired = 0
		tracker:listen({
			fired = function()
				fired = fired + 1
			end,
		})
		tracker:resume()
		call("Start", spellTool("Confringo", 0x30, PLAYER))

		assert.equals(1, #warnings)
		assert.truthy(warnings[1]:find("SpellTool:OnStop", 1, true))
		assert.equals(1, fired)
	end)

	it("ends an upgraded Incendio when its new fire burns out, not when the fireball goes", function()
		local _, events = recorded()
		local incendio = spellTool("Incendio", 0x30, PLAYER, INCENDIO, true)
		local old = area(0x50)
		old.burning = false
		incendio.CurrentAOE = old
		call("Start", incendio)
		tick()
		local fire = area(0x51)
		incendio.CurrentAOE = fire
		call("OnMunitionDestroyed", incendio)
		tick()
		assert.same({ "fired incendio" }, events)

		fire.burning = false
		tick()
		tick()
		assert.same({ "fired incendio", "ended incendio gone" }, events)
	end)

	it("ends a base Incendio with its fireball", function()
		local _, events = recorded()
		local incendio = spellTool("Incendio", 0x30, PLAYER, INCENDIO, false)
		call("Start", incendio)
		call("OnMunitionDestroyed", incendio)

		assert.same({ "fired incendio", "ended incendio gone" }, events)
	end)

	it("stops watching the fire when an upgraded Incendio is replaced", function()
		local _, events = recorded()
		local incendio = spellTool("Incendio", 0x30, PLAYER, INCENDIO, true)
		call("Start", incendio)
		call("Start", spellTool("Confringo", 0x31, PLAYER))
		incendio.CurrentAOE = area(0x51)
		incendio.CurrentAOE.burning = false
		tick()

		assert.same({ "fired incendio", "ended incendio replaced", "fired confringo" }, events)
	end)
end)
