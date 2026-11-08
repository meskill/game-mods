local Loop = require("ue4ss.loop")

describe("ue4ss.loop", function()
	local tick, interval

	before_each(function()
		tick, interval = nil, nil
		_G.LoopInGameThreadWithDelay = function(ms, callback)
			interval, tick = ms, callback
			return 1
		end
	end)

	after_each(function()
		_G.LoopInGameThreadWithDelay = nil
	end)

	it("keeps polling after errors and reports each new error once", function()
		local failure = "first"
		local reported = {}
		Loop.gameThread(100, function()
			error(failure, 0)
		end, function(message)
			table.insert(reported, message)
		end)

		assert.equals(100, interval)
		tick()
		tick()
		failure = "second"
		tick()

		assert.same({ "first", "second" }, reported)
	end)

	it("stops calling update once it returns true", function()
		local runs = 0
		Loop.gameThread(100, function()
			runs = runs + 1
			return runs == 2
		end, error)

		for _ = 1, 4 do
			tick()
		end
		assert.equals(2, runs)
	end)
end)
