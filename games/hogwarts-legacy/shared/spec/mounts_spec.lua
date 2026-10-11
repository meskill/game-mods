local Mounts = require("hogwarts.mounts")

local BROOM_CLASS = "/Script/Phoenix.FlyingBroom"
local CREATURE_CLASS = "/Script/Phoenix.Creature_Character"

local function actor(address, class)
	local object = { address = address, class = class, valid = true }
	function object:IsValid()
		return self.valid
	end
	function object:GetAddress()
		return self.address
	end
	function object:IsA(name)
		return name == self.class
	end
	function object:GetFullName()
		return tostring(self.class)
	end
	return object
end

local function player()
	local pawn = actor(0x10, "/Script/Phoenix.Biped_Player")
	pawn.onMount = false
	function pawn:GetIsOnAMountOrInTransition()
		return self.onMount
	end
	return pawn
end

local function broom(address, rider)
	local object = actor(address, BROOM_CLASS)
	object.MountedCharacter = rider
	return object
end

local function creature(address, rider, mountType)
	local object = actor(address, CREATURE_CLASS)
	local handler = actor(address + 1, "/Script/Phoenix.CreatureMountHandler")
	handler.RiderCharacter, handler.CreatureMountType, handler.CreatureCharacter = rider, mountType, object
	local component = actor(address + 2, "/Script/Phoenix.Creature_MountComponent")
	function component:GetMountHandler()
		return handler
	end
	function object:GetMountComponent()
		return component
	end
	return object, handler
end

---Tracker whose events are recorded as "mounted kind" / "dismounted kind".
local function recorded()
	local events = {}
	local tracker = Mounts.tracker({
		mounted = function(mount)
			events[#events + 1] = "mounted " .. mount.kind
		end,
		dismounted = function(mount)
			events[#events + 1] = "dismounted " .. mount.kind
		end,
	})
	return tracker, events
end

describe("hogwarts.mounts", function()
	local brooms, handlers
	before_each(function()
		brooms, handlers = {}, {}
		_G.FindAllOf = function(class)
			if class == "FlyingBroom" then
				return brooms
			end
			if class == "CreatureMountHandler" then
				return handlers
			end
			return nil
		end
	end)
	after_each(function()
		_G.FindAllOf = nil
	end)

	it("reports a possessed broom until the controller leaves it", function()
		local pawn = player()
		local ridden = broom(0x20, pawn)
		local controller = { Pawn = ridden }
		local tracker, events = recorded()

		local mount = tracker:update(pawn, controller, 0)
		assert.equals(ridden, mount and mount.actor)
		assert.same({ "mounted broom" }, events)

		controller.Pawn = pawn
		assert.is_nil(tracker:update(pawn, controller, 0.1))
		assert.same({ "mounted broom", "dismounted broom" }, events)
	end)

	it("finds an unpossessed broom only while the player reports a mount", function()
		local pawn = player()
		brooms[1] = broom(0x20, pawn)
		local controller = { Pawn = pawn }
		local tracker, events = recorded()

		assert.is_nil(tracker:update(pawn, controller, 0))
		pawn.onMount = true
		assert.equals("broom", tracker:update(pawn, controller, 0.1).kind)

		-- The broom keeps its rider after the player drops off.
		pawn.onMount = false
		assert.is_nil(tracker:update(pawn, controller, 0.2))
		assert.same({ "mounted broom", "dismounted broom" }, events)
	end)

	it("identifies a creature mount by its handler's mount type", function()
		local pawn = player()
		local graphorn = creature(0x30, pawn, 2)
		local tracker, events = recorded()

		assert.equals(graphorn, tracker:update(pawn, { Pawn = graphorn }, 0).actor)
		assert.same({ "mounted graphorn" }, events)
	end)

	it("finds an unpossessed creature through the mount handlers", function()
		local pawn = player()
		pawn.onMount = true
		local hippogriff, handler = creature(0x30, pawn, 3)
		handlers[1] = handler
		local tracker = recorded()

		assert.equals(hippogriff, tracker:update(pawn, { Pawn = pawn }, 0).actor)
	end)

	it("ignores a mount ridden by someone else", function()
		local pawn = player()
		pawn.onMount = true
		brooms[1] = broom(0x20, actor(0x11, "/Script/Phoenix.Biped_Character"))
		local tracker, events = recorded()

		assert.is_nil(tracker:update(pawn, { Pawn = pawn }, 0))
		assert.same({}, events)
	end)

	it("reports a switch between mounts as a dismount, then a mount", function()
		local pawn = player()
		local first, second = broom(0x20, pawn), creature(0x30, pawn, 4)
		local controller = { Pawn = first }
		local tracker, events = recorded()

		tracker:update(pawn, controller, 0)
		controller.Pawn = second
		tracker:update(pawn, controller, 0.1)
		assert.same({ "mounted broom", "dismounted broom", "mounted hippogriff" }, events)
	end)

	it("resolves the rider of a possessed mount", function()
		local pawn = player()
		assert.equals(pawn, Mounts.rider(broom(0x20, pawn)))
		assert.equals(pawn, Mounts.rider((creature(0x30, pawn, 5))))
		assert.is_nil(Mounts.rider(pawn))
		assert.is_nil(Mounts.rider(broom(0x20, nil)))
	end)
end)
