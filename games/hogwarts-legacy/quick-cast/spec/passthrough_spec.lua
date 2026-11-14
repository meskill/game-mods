describe("passthrough", function()
	local Passthrough, calls, time, passthrough

	local CONTROLLER = {}

	before_each(function()
		calls, time = {}, 10
		local blocker = {}
		function blocker:block()
			calls[#calls + 1] = "block"
		end
		function blocker:restore()
			calls[#calls + 1] = "restore"
		end
		function blocker:reset()
			calls[#calls + 1] = "reset"
		end
		package.loaded["passthrough"] = nil
		Passthrough = require("passthrough")
		passthrough = Passthrough.new({
			key = "Gamepad_RightShoulder",
			blocker = blocker --[[@as any]],
			simulate = function(controller, key, event)
				assert.equals(CONTROLLER, controller)
				assert.equals("Gamepad_RightShoulder", key)
				calls[#calls + 1] = event == 0 and "press" or "release"
			end,
			now = function()
				return time
			end,
		})
	end)

	it("replays a click with the mappings back, then blocks again", function()
		passthrough:update(CONTROLLER, true)
		passthrough:click(CONTROLLER)
		time = 10.05
		passthrough:update(CONTROLLER, true)
		passthrough:click(CONTROLLER)
		time = 10.15
		passthrough:update(CONTROLLER, true)
		time = 10.3
		passthrough:update(CONTROLLER, true)
		assert.same({ "block", "restore", "press", "release", "block" }, calls)
	end)

	it("sends the release at once when gameplay ends mid-click", function()
		passthrough:click(CONTROLLER)
		passthrough:reset(CONTROLLER)
		time = 11
		passthrough:update(CONTROLLER, false)
		assert.same({ "restore", "press", "reset", "release", "restore" }, calls)
	end)
end)
