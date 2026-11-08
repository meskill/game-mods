local CHANGED = "/Script/Phoenix.WandTool:OnRightArmStateChanged"
local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"

local function valid()
	return true
end

---An actor of `class` owned by `owner`.
local function actor(class, owner)
	return {
		Owner = owner,
		IsValid = valid,
		IsA = function(_, path)
			return path == class
		end,
	}
end

---A UE4SS param wrapping `value`.
local function param(value)
	return {
		get = function()
			return value
		end,
	}
end

describe("hogwarts.wand", function()
	local Wand, hooks

	before_each(function()
		hooks = {}
		_G.RegisterHook = function(path, callback)
			assert.is_nil(hooks[path], "hooked twice: " .. path)
			hooks[path] = callback
		end
		package.loaded["hogwarts.wand"] = nil
		Wand = require("hogwarts.wand")
	end)

	after_each(function()
		_G.RegisterHook = nil
	end)

	-- The player's wand is owned through an intermediate actor, as tools may be.
	local player = actor(PLAYER_CLASS)
	local playerWand = actor("/Script/Phoenix.WandTool", actor("/Script/Phoenix.ToolSet", player))
	local npcWand = actor("/Script/Phoenix.WandTool", actor("/Script/Phoenix.Biped_Character"))

	---Runs the hook as the game would for an arm change of `wand`.
	local function change(wand, state, last)
		hooks[CHANGED](param(wand), param(state), param(last))
	end

	---Subscribes a listener recording its changes as "last->state".
	local function recorded()
		local events = {}
		local unsubscribe = Wand.subscribe({
			changed = function(state, last)
				events[#events + 1] = tostring(last) .. "->" .. state
			end,
		})
		return events, unsubscribe
	end

	it("reports the player's arm changes once each, and whether the wand is raised", function()
		local events = recorded()
		assert.is_nil(Wand.state())
		assert.is_false(Wand.isRaised())

		change(playerWand, Wand.State.RAISED, Wand.State.HIDDEN)
		assert.is_true(Wand.isRaised())
		change(playerWand, Wand.State.UNEQUIP, Wand.State.RAISED)
		change(playerWand, Wand.State.UNEQUIP, Wand.State.UNEQUIP)

		assert.is_false(Wand.isRaised())
		assert.equals(Wand.State.UNEQUIP, Wand.state())
		assert.same({ "nil->12", "12->2" }, events)
	end)

	it("ignores other characters' wands", function()
		local events = recorded()
		change(npcWand, Wand.State.RAISED, Wand.State.HIDDEN)

		assert.is_nil(Wand.state())
		assert.same({}, events)
	end)

	it("notifies every subscriber, sharing one hook, until it unsubscribes", function()
		local first, unsubscribe = recorded()
		local second = recorded()

		change(playerWand, Wand.State.RAISED, Wand.State.HIDDEN)
		unsubscribe()
		change(playerWand, Wand.State.CASTING, Wand.State.RAISED)

		assert.same({ "nil->12" }, first)
		assert.same({ "nil->12", "12->7" }, second)
	end)
end)
