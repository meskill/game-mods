local Mounts = require("hogwarts.mounts")

local BROOM_CLASS = "/Script/Phoenix.FlyingBroom"
local CREATURE_CLASS = "/Script/Phoenix.Creature_Character"
local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"

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
	return object
end

local function player()
	local pawn = actor(0x10, PLAYER_CLASS)
	pawn.onMount = false
	function pawn:GetIsOnAMountOrInTransition()
		return self.onMount
	end
	return pawn
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

---A UE4SS hook parameter holding `value`.
local function param(value)
	return {
		get = function()
			return value
		end,
	}
end

describe("hogwarts.mounts", function()
	---@type table<string, function>
	local hooked
	local handlers
	---The tracker's game-thread loop; one tick is one poll.
	local tick
	---What the tracker's player function returns: the game state polls see.
	local pawn, controller

	before_each(function()
		hooked, handlers, tick = {}, {}, nil
		pawn = player()
		controller = { Pawn = pawn }
		_G.RegisterHook = function(path, callback)
			hooked[path] = callback
			return 1, 2
		end
		_G.LoopInGameThreadWithDelay = function(_, callback)
			tick = callback
			return 1
		end
		_G.FindAllOf = function(class)
			return class == "CreatureMountHandler" and handlers or nil
		end
	end)

	after_each(function()
		_G.RegisterHook, _G.LoopInGameThreadWithDelay, _G.FindAllOf = nil, nil, nil
	end)

	local function inGameplay()
		return pawn, controller
	end

	---Runs the hook on FlyingBroom:`name` as the game would.
	local function call(name, broom, rider)
		hooked["/Script/Phoenix.FlyingBroom:" .. name](param(broom), param(rider))
	end

	---Tracker whose events are recorded as "<event> <kind>".
	---@param player? function Defaults to the player always in gameplay.
	local function recorded(player)
		local events = {}
		local tracker = Mounts.tracker(error, player or inGameplay)
		local function record(event)
			return function(mount)
				events[#events + 1] = event .. " " .. mount.kind
			end
		end
		tracker:listen({ mounted = record("mounted"), riding = record("riding"), dismounted = record("dismounted") })
		return tracker, events
	end

	it("reports the player's broom from mounting until dismounting, riding on each poll", function()
		local tracker, events = recorded()
		local broom = actor(0x20, BROOM_CLASS)

		call("SetupPlayerOnBroom", broom, pawn)
		assert.equals(broom, tracker:current().actor)
		tick()
		tick()
		call("DetachPlayerFromBroomOnDismount", broom, pawn)
		tick()

		assert.is_nil(tracker:current())
		assert.same({ "mounted broom", "riding broom", "riding broom", "dismounted broom" }, events)
	end)

	it("ignores brooms set up for other characters and other brooms' dismounts", function()
		local tracker, events = recorded()
		local broom = actor(0x20, BROOM_CLASS)

		call("SetupPlayerOnBroom", actor(0x21, BROOM_CLASS), actor(0x11, "/Script/Phoenix.Biped_Character"))
		call("SetupPlayerOnBroom", broom, pawn)
		call("SetupPlayerOnBroom", broom, pawn)
		call("DetachPlayerFromBroomOnDismount", actor(0x21, BROOM_CLASS), pawn)

		assert.equals(broom, tracker:current().actor)
		assert.same({ "mounted broom" }, events)
	end)

	it("reports a dismount when the broom disappears without one", function()
		local tracker, events = recorded()
		local broom = actor(0x20, BROOM_CLASS)
		call("SetupPlayerOnBroom", broom, pawn)

		broom.valid = false
		tick()
		assert.is_nil(tracker:current())
		assert.same({ "mounted broom", "dismounted broom" }, events)
	end)

	it("skips polls outside gameplay", function()
		local active = false
		local tracker, events = recorded(function()
			if active then
				return pawn, controller
			end
		end)
		local broom = actor(0x20, BROOM_CLASS)
		call("SetupPlayerOnBroom", broom, pawn)
		broom.valid = false

		tick()
		assert.equals(broom, tracker:current().actor)
		active = true
		tick()
		assert.same({ "mounted broom", "dismounted broom" }, events)
	end)

	it("warns about a hook it cannot register and keeps the other", function()
		_G.RegisterHook = function(path, callback)
			if path:find("Detach", 1, true) then
				error("no UFunction " .. path)
			end
			hooked[path] = callback
		end
		local warnings = {}
		local tracker = Mounts.tracker(function(message)
			warnings[#warnings + 1] = message
		end, inGameplay)

		call("SetupPlayerOnBroom", actor(0x20, BROOM_CLASS), pawn)
		assert.equals(1, #warnings)
		assert.equals("broom", tracker:current().kind)
	end)

	it("identifies a possessed creature by its handler's mount type", function()
		local tracker, events = recorded()
		local graphorn = creature(0x30, pawn, 2)
		controller.Pawn = graphorn

		tick()
		assert.equals(graphorn, tracker:current().actor)
		assert.same({ "mounted graphorn", "riding graphorn" }, events)
	end)

	it("finds an unpossessed creature only while the player reports a mount", function()
		local _, events = recorded()
		local _, handler = creature(0x30, pawn, 3)
		handlers[1] = handler

		tick()
		pawn.onMount = true
		tick()
		pawn.onMount = false
		tick()
		assert.same({ "mounted hippogriff", "riding hippogriff", "dismounted hippogriff" }, events)
	end)

	it("ignores a creature ridden by someone else", function()
		local tracker, events = recorded()
		pawn.onMount = true
		local _, handler = creature(0x30, actor(0x11, "/Script/Phoenix.Biped_Character"), 2)
		handlers[1] = handler

		tick()
		assert.is_nil(tracker:current())
		assert.same({}, events)
	end)

	it("resolves the rider of a possessed creature", function()
		assert.equals(pawn, Mounts.rider((creature(0x30, pawn, 4))))
		assert.is_nil(Mounts.rider(pawn))
		assert.is_nil(Mounts.rider(actor(0x20, BROOM_CLASS)))
	end)
end)
