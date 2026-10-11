local Spells = require("hogwarts.spells")

local function valid()
	return true
end

---A pawn whose wand holds one spell tool; tests mutate `spell` between samples.
local function scene(name)
	local spell = { name = name, address = 0x30, stopped = true, started = false }
	spell.DatabaseName = {
		ToString = function()
			return spell.name
		end,
	}
	spell.IsValid = valid
	function spell:GetAddress()
		return self.address
	end
	function spell:IsStopped()
		return self.stopped
	end
	function spell:IsStarted_K2()
		return self.started
	end
	function spell:GetActiveMunition()
		return self.munition
	end

	local wand = { IsValid = valid }
	function wand:GetAddress()
		return 0x20
	end
	function wand:GetActiveSpellTool()
		return spell
	end

	local pawn = {}
	function pawn:GetAddress()
		return 0x10
	end
	function pawn:GetWand()
		return wand
	end
	return pawn, spell
end

local function munition(address, speed)
	local projectile = { speed = speed, IsValid = valid }
	function projectile:IsActorBeingDestroyed()
		return false
	end
	function projectile:GetAddress()
		return address
	end
	function projectile:GetVelocity()
		return { X = self.speed, Y = 0, Z = 0 }
	end
	return projectile
end

---Tracker whose events are recorded as "fired name", "impact name", "ended name reason".
local function recorded()
	local events = {}
	local tracker = Spells.tracker({
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
	return tracker, events
end

describe("hogwarts.spells", function()
	it("fires a held cast when it ends, then ends it without a projectile", function()
		local pawn, spell = scene("Incendio")
		local tracker, events = recorded()
		tracker:update(pawn, 0)
		spell.stopped = false
		tracker:update(pawn, 0.1)
		assert.same({}, events)

		spell.stopped = true
		tracker:update(pawn, 0.2)
		assert.same({ "fired incendio" }, events)

		tracker:update(pawn, 0.3)
		assert.same({ "fired incendio", "ended incendio gone" }, events)
	end)

	it("lasts while its new projectile flies and reports one impact", function()
		local pawn, spell = scene("diffindo")
		local tracker, events = recorded()
		tracker:update(pawn, 0)
		spell.stopped = false
		tracker:update(pawn, 0.1)

		local projectile = munition(0x40, 0)
		spell.munition = projectile
		tracker:update(pawn, 0.2)
		assert.same({ "fired diffindo" }, events)

		-- Stationary before launch is not an impact.
		spell.stopped = true
		tracker:update(pawn, 0.3)
		projectile.speed = 500
		tracker:update(pawn, 0.4)
		assert.same({ "fired diffindo" }, events)

		projectile.speed = 0
		tracker:update(pawn, 0.5)
		tracker:update(pawn, 0.6)
		assert.same({ "fired diffindo", "impact diffindo" }, events)

		spell.munition = nil
		tracker:update(pawn, 0.7)
		assert.same({ "fired diffindo", "impact diffindo", "ended diffindo gone" }, events)
	end)

	it("does not fire on a projectile that was live before the hold", function()
		local pawn, spell = scene("confringo")
		local tracker, events = recorded()
		spell.munition = munition(0x40, 500)
		tracker:update(pawn, 0)
		spell.stopped = false
		tracker:update(pawn, 0.1)
		tracker:update(pawn, 0.2)
		assert.same({}, events)

		spell.started = true
		tracker:update(pawn, 0.3)
		assert.same({ "fired confringo" }, events)
	end)

	it("caps a cast whose projectile never disappears", function()
		local pawn, spell = scene("confringo")
		local tracker, events = recorded()
		tracker:update(pawn, 0)
		spell.stopped = false
		tracker:update(pawn, 0)
		spell.munition = munition(0x40, 500)
		tracker:update(pawn, 1)

		tracker:update(pawn, 3.9)
		assert.same({ "fired confringo" }, events)
		tracker:update(pawn, 4)
		assert.same({ "fired confringo", "ended confringo capped" }, events)
	end)

	it("ends the previous cast when the same spell fires again", function()
		local pawn, spell = scene("confringo")
		local tracker, events = recorded()
		tracker:update(pawn, 0)
		spell.stopped = false
		tracker:update(pawn, 0.1)
		spell.munition = munition(0x40, 500)
		tracker:update(pawn, 0.2)
		spell.stopped = true
		tracker:update(pawn, 0.3)

		spell.stopped = false
		tracker:update(pawn, 0.4)
		spell.munition = munition(0x41, 500)
		tracker:update(pawn, 0.5)
		assert.same({ "fired confringo", "ended confringo replaced", "fired confringo" }, events)
	end)

	it("cancels a cast when the active spell changes", function()
		local pawn, spell = scene("confringo")
		local tracker, events = recorded()
		tracker:update(pawn, 0)
		spell.stopped = false
		tracker:update(pawn, 0.1)
		spell.munition = munition(0x40, 500)
		tracker:update(pawn, 0.2)

		spell.address, spell.name = 0x31, "glacius"
		tracker:update(pawn, 0.3)
		assert.same({ "fired confringo", "ended confringo cancelled" }, events)
	end)

	it("does not replay an interrupted cast when sampling resumes", function()
		local pawn, spell = scene("confringo")
		local tracker, events = recorded()
		tracker:update(pawn, 0)
		spell.stopped = false
		tracker:update(pawn, 0.1)
		spell.munition = munition(0x40, 500)
		tracker:update(pawn, 0.2)

		tracker:interrupt()
		tracker:update(pawn, 0.3)
		assert.same({ "fired confringo", "ended confringo interrupted" }, events)
	end)

	it("ignores the basic wand attack", function()
		local pawn, spell = scene("Stupefy")
		local tracker, events = recorded()
		tracker:update(pawn, 0)
		spell.stopped = false
		spell.munition = munition(0x40, 500)
		tracker:update(pawn, 0.1)
		spell.stopped = true
		tracker:update(pawn, 0.2)
		assert.same({}, events)
	end)
end)
