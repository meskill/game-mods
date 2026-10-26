local Timers = require("ue4ss.devtools.timers")
local Fakes = dofile(debug.getinfo(1, "S").source:match("^@(.*[/\\])") .. "fakes.lua")

describe("ue4ss.devtools.timers", function()
	local journal, timers, delayed, loops, gameThread

	-- Runs what UE4SS would: pending game-thread callbacks.
	local function runGameThread()
		local queued = gameThread
		gameThread = {}
		for _, fn in ipairs(queued) do
			fn()
		end
	end

	before_each(function()
		delayed, loops, gameThread = {}, {}, {}
		_G.ExecuteWithDelay = function(ms, fn)
			delayed[#delayed + 1] = { ms = ms, fn = fn }
		end
		_G.LoopAsync = function(ms, fn)
			loops[#loops + 1] = { ms = ms, fn = fn }
		end
		_G.ExecuteInGameThread = function(fn)
			gameThread[#gameThread + 1] = fn
		end
		journal = Fakes.journal()
		timers = Timers.new(journal, "debug", tostring)
	end)

	after_each(function()
		_G.ExecuteWithDelay, _G.LoopAsync, _G.ExecuteInGameThread = nil, nil, nil
	end)

	it("runs after() once on the game thread and logs its values", function()
		local ran = 0
		timers:after(300, function()
			ran = ran + 1
			return 12
		end)
		assert.equals(300, delayed[1].ms)
		delayed[1].fn()
		assert.equals(0, ran)
		runGameThread()
		assert.equals(1, ran)
		assert.same({ "debug = 12" }, journal.lines)
	end)

	it("runs every() until its function returns true", function()
		local runs = 0
		timers:every(100, function()
			runs = runs + 1
			return runs == 2
		end)
		local loop = loops[1].fn
		for _ = 1, 2 do
			assert.is_false(loop())
			runGameThread()
		end
		assert.equals(2, runs)
		assert.is_true(loop())
	end)

	it("does not queue another run while one waits for the game thread", function()
		timers:every(100, function() end)
		loops[1].fn()
		loops[1].fn()
		assert.equals(1, #gameThread)
	end)

	it("logs errors and keeps every() running", function()
		local runs = 0
		timers:every(100, function()
			runs = runs + 1
			error("boom", 0)
		end)
		for _ = 1, 2 do
			loops[1].fn()
			runGameThread()
		end
		assert.equals(2, runs)
		assert.same({ "debug ! every#1: boom", "debug ! every#1: boom" }, journal.lines)
	end)

	it("stops timers that are still waiting", function()
		local ran = false
		timers:after(100, function()
			ran = true
		end)
		local id = timers:every(100, function()
			ran = true
		end)
		assert.equals(2, timers:stop("*"))
		delayed[1].fn()
		runGameThread()
		assert.is_true(loops[1].fn())
		assert.is_false(ran)
		assert.equals(0, timers:stop(id))
	end)

	it("skips runs disabled while they waited for the game thread", function()
		local enabled, runs = true, 0
		timers = Timers.new(journal, "debug", tostring, function()
			return enabled
		end)
		local function run()
			runs = runs + 1
		end
		timers:after(100, run)
		timers:every(100, run)
		delayed[1].fn()
		assert.is_false(loops[1].fn())
		enabled = false
		runGameThread()
		assert.equals(0, runs)

		enabled = true
		assert.is_false(loops[1].fn())
		runGameThread()
		assert.equals(1, runs)
	end)
end)
