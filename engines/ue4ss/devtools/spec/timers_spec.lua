local Timers = require("ue4ss.devtools.timers")
local Fakes = dofile(debug.getinfo(1, "S").source:match("^@(.*[/\\])") .. "fakes.lua")

describe("ue4ss.devtools.timers", function()
	local journal, timers, delayed, loops

	before_each(function()
		delayed, loops = {}, {}
		_G.ExecuteInGameThreadWithDelay = function(ms, fn)
			delayed[#delayed + 1] = { ms = ms, fn = fn }
			return #delayed
		end
		_G.LoopInGameThreadWithDelay = function(ms, fn)
			loops[#loops + 1] = { ms = ms, fn = fn }
			return #loops
		end
		journal = Fakes.journal()
		timers = Timers.new(journal, "debug", tostring)
	end)

	after_each(function()
		_G.ExecuteInGameThreadWithDelay, _G.LoopInGameThreadWithDelay = nil, nil
	end)

	it("runs after() once and logs its values", function()
		local ran = 0
		timers:after(300, function()
			ran = ran + 1
			return 12
		end)
		assert.equals(300, delayed[1].ms)
		delayed[1].fn()
		delayed[1].fn()
		assert.equals(1, ran)
		assert.same({ "debug = 12" }, journal.lines)
	end)

	it("runs every() until its function returns true", function()
		local runs = 0
		timers:every(100, function()
			runs = runs + 1
			return runs == 2
		end)
		for _ = 1, 4 do
			loops[1].fn()
		end
		assert.equals(2, runs)
	end)

	it("logs errors and keeps every() running", function()
		local runs = 0
		timers:every(100, function()
			runs = runs + 1
			error("boom", 0)
		end)
		loops[1].fn()
		loops[1].fn()
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
		loops[1].fn()
		assert.is_false(ran)
		assert.equals(0, timers:stop(id))
	end)

	it("skips runs while disabled and resumes every() afterwards", function()
		local enabled, runs = false, 0
		timers = Timers.new(journal, "debug", tostring, function()
			return enabled
		end)
		local function run()
			runs = runs + 1
		end
		timers:after(100, run)
		timers:every(100, run)
		delayed[1].fn()
		loops[1].fn()
		assert.equals(0, runs)

		enabled = true
		loops[1].fn()
		assert.equals(1, runs)
	end)
end)
