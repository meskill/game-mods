local OPEN = "/Script/Phoenix.UIManager:FieldGuideMenuStart"
local CLOSE = "/Script/Phoenix.UIManager:ExitFieldGuideWithReason"

describe("hogwarts.menus", function()
	local Menus, hooks

	before_each(function()
		hooks = {}
		_G.RegisterHook = function(path, callback)
			assert.is_nil(hooks[path], "hooked twice: " .. path)
			hooks[path] = callback
		end
		package.loaded["hogwarts.menus"] = nil
		Menus = require("hogwarts.menus")
	end)

	after_each(function()
		_G.RegisterHook = nil
	end)

	---Subscribes a listener recording its events.
	local function recorded()
		local events = {}
		local unsubscribe = Menus.subscribe({
			opened = function()
				events[#events + 1] = "opened"
			end,
			closed = function()
				events[#events + 1] = "closed"
			end,
		})
		return events, unsubscribe
	end

	it("reports opening and closing once each, and the state between", function()
		local events = recorded()
		assert.is_false(Menus.isOpen())

		hooks[OPEN]()
		hooks[OPEN]()
		assert.is_true(Menus.isOpen())
		hooks[CLOSE]()
		hooks[CLOSE]()

		assert.is_false(Menus.isOpen())
		assert.same({ "opened", "closed" }, events)
	end)

	it("ignores a close without an open, as for a menu open before the hooks", function()
		local events = recorded()
		hooks[CLOSE]()
		assert.same({}, events)
	end)

	it("notifies every subscriber, sharing one pair of hooks, until it unsubscribes", function()
		local first, unsubscribe = recorded()
		local second = recorded()

		hooks[OPEN]()
		unsubscribe()
		hooks[CLOSE]()

		assert.same({ "opened" }, first)
		assert.same({ "opened", "closed" }, second)
	end)

	it("lets a listener unsubscribe while being notified", function()
		local events, unsubscribe = {}, nil
		unsubscribe = Menus.subscribe({
			opened = function()
				events[#events + 1] = "first"
				unsubscribe()
			end,
		})
		local later = recorded()

		hooks[OPEN]()

		assert.same({ "first" }, events)
		assert.same({ "opened" }, later)
	end)
end)
