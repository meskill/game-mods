local CHANGED = "/Script/Phoenix.WandTool:OnRightArmStateChanged"
local REQUESTED = "/Script/Phoenix.Biped_Character:SetRightArmState"
local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"
-- ERightArmPriority values.
local ANTICIPATION, LUMOS = 4, 8

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

	---Runs the hook as the game would for an arm request of `character`.
	local function request(character, state, priority)
		hooks[REQUESTED](param(character), param(state), param(priority), param(true))
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

	it("reports the player's arm changes once each", function()
		local events = recorded()
		assert.is_nil(Wand.state())

		change(playerWand, Wand.State.RAISED, Wand.State.HIDDEN)
		change(playerWand, Wand.State.UNEQUIP, Wand.State.RAISED)
		change(playerWand, Wand.State.UNEQUIP, Wand.State.UNEQUIP)

		assert.equals(Wand.State.UNEQUIP, Wand.state())
		assert.same({ "nil->12", "12->2" }, events)
	end)

	it("reports the wand raised for a cast even while Lumos decides the arm", function()
		local events = {}
		Wand.subscribe({
			raised = function(raised)
				events[#events + 1] = raised
			end,
		})
		assert.is_false(Wand.isRaised())

		-- Lumos holds the wand up at a higher priority; the arm state stays 14.
		request(player, 14, LUMOS)
		change(playerWand, 14, Wand.State.HIDDEN)
		request(player, Wand.State.RAISED, ANTICIPATION)
		request(player, Wand.State.RAISED, ANTICIPATION)
		assert.is_true(Wand.isRaised())

		request(player, 0, ANTICIPATION)
		assert.is_false(Wand.isRaised())
		assert.same({ true, false }, events)
	end)

	it("ignores other characters' raise requests", function()
		recorded()
		request(actor("/Script/Phoenix.Biped_Character"), Wand.State.RAISED, ANTICIPATION)
		assert.is_false(Wand.isRaised())
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
