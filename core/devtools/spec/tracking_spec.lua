local Tracking = require("devtools.tracking")
local Format = require("devtools.format")

describe("devtools.tracking", function()
	local clock, lines, tracker

	local function newTracker(callsInterval)
		return Tracking.new({
			journal = {
				now = function()
					return clock
				end,
				write = function(_, scope, text)
					lines[#lines + 1] = scope .. " " .. text
				end,
			},
			format = Format.new(),
			callsInterval = callsInterval,
		})
	end

	before_each(function()
		clock, lines = 0, {}
		tracker = newTracker()
	end)

	it("ignores values and calls outside a session", function()
		tracker:trackValue("arm", 3)
		tracker:trackCall("Tool:Raise", { state = 12 })
		assert.same({}, lines)
		assert.is_nil(tracker:running())
	end)

	it("logs a value's initial state, then only changes of its text", function()
		tracker:start("hold")
		tracker:trackValue("arm", 3)
		tracker:trackValue("arm", 3)
		clock = 0.5
		tracker:trackValue("arm", 12)
		assert.same({ "track.start hold", "track.init arm = 3", "track.change arm 3 -> 12" }, lines)
	end)

	it("detects tables changed in place, by their text", function()
		local state = { arm = 3 }
		tracker:start()
		tracker:trackValue("state", state)
		state.arm = 12
		tracker:trackValue("state", state)
		assert.equals("track.change state {arm=3} -> {arm=12}", lines[#lines])
	end)

	it("logs calls with named arguments sorted by name", function()
		tracker:start()
		tracker:trackCall("Tool:Raise", { state = 12, last = 3 })
		tracker:trackCall("Tool:Lower")
		assert.same({ "track.call Tool:Raise last=3 state=12", "track.call Tool:Lower" }, { lines[2], lines[3] })
	end)

	it("logs at most one call per label per interval and counts the rest", function()
		tracker = newTracker(100)
		tracker:start("busy")
		for i = 0, 4 do
			clock = i * 0.03
			tracker:trackCall("Pawn:Tick", { i = i })
		end
		clock = 0.2
		tracker:trackCall("Tool:Raise")
		assert.same({
			"track.start busy",
			"track.call Pawn:Tick i=0",
			"track.call Pawn:Tick i=4 (+3 skipped)",
			"track.call Tool:Raise",
		}, lines)
		clock = 1
		assert.matches("Pawn:Tick  5 calls %(2 logged%)  first %+0%.000  5%.0/s", tracker:stop())
	end)

	it("reports values with their changes and calls by first call", function()
		tracker:start("hold")
		tracker:trackValue("arm", 3)
		tracker:trackValue("paused", false)
		clock = 0.2
		tracker:trackCall("Tool:Raise")
		clock = 0.5
		tracker:trackValue("arm", 12)
		clock = 0.6
		tracker:trackCall("Pawn:Tick")
		clock = 2
		tracker:trackValue("arm", 3)
		local report = tracker:stop()
		assert.equals(
			table.concat({
				'session "hold": 2.000 s',
				"values:",
				"  arm  3 -> 12 -> 3  2 changes, first +0.500",
				"  paused  false  unchanged",
				"calls:",
				"  Tool:Raise  1 calls (1 logged)  first +0.200  0.5/s",
				"  Pawn:Tick  1 calls (1 logged)  first +0.600  0.5/s",
			}, "\n"),
			report
		)
		assert.equals("track.report " .. report, lines[#lines])
		assert.equals("track.stop hold 2.000 s", lines[#lines - 1])
		assert.equals(report, tracker:report("hold"))
	end)

	it("shortens the chain of a value that changes often", function()
		tracker:start("many")
		for i = 1, 8 do
			tracker:trackValue("n", i)
		end
		assert.matches("n  1 %-> 2 %-> %.%.%. %-> 7 %-> 8  7 changes", tracker:stop())
	end)

	it("clears one report or all of them, leaving a running session alone", function()
		tracker:start("a")
		tracker:stop()
		tracker:start("b")
		tracker:stop()
		tracker:start("c")
		assert.equals(1, tracker:clear("a"))
		assert.same({ "b: 0.000 s" }, tracker:list())
		assert.equals(1, tracker:clear("*"))
		assert.same({}, tracker:list())
		assert.equals("c", tracker:running())
		assert.has_error(function()
			tracker:report("b")
		end, "no finished tracking session named b")
	end)

	it("stops a running session when another starts", function()
		tracker:start("first")
		clock = 1
		tracker:start("second")
		assert.equals("second", tracker:running())
		assert.same({ "first: 1.000 s" }, tracker:list())
	end)

	it("refuses to stop without a session or report an unknown one", function()
		assert.has_error(function()
			tracker:stop()
		end, "no tracking session is running")
		assert.has_error(function()
			tracker:report("missing")
		end, "no finished tracking session named missing")
	end)

	it("compares calls by rate scaled to duration and values by whether they changed", function()
		tracker:start("idle")
		tracker:trackValue("arm", 3)
		tracker:trackValue("timer", 1)
		tracker:trackValue("menu", "none")
		for _ = 1, 20 do
			tracker:trackCall("Pawn:Tick")
		end
		for _ = 1, 10 do
			tracker:trackCall("Idle:Sway")
		end
		tracker:trackCall("Wand:Update")
		clock = 2
		tracker:trackValue("timer", 2)
		tracker:stop()

		tracker:start("hold")
		tracker:trackValue("arm", 3)
		tracker:trackValue("timer", 3)
		tracker:trackValue("charge", 0)
		for _ = 1, 10 do
			tracker:trackCall("Pawn:Tick")
		end
		clock = 2.5
		for _ = 1, 4 do
			tracker:trackCall("Wand:Update")
		end
		tracker:trackCall("Tool:Raise")
		tracker:trackValue("arm", 12)
		clock = 3
		tracker:stop()

		local result = tracker:compare("idle", "hold")
		assert.matches('^compare "hold" with "idle"', result)
		assert.matches("NEW    Tool:Raise  1 calls, expected 0%.0, first %+0%.500", result)
		assert.matches("MORE   Wand:Update  4 calls, expected 0%.5, first %+0%.500", result)
		assert.matches("GONE   Idle:Sway  0 calls, expected 5%.0", result)
		assert.matches("CHANGED arm  here: 3 %-> 12; baseline: 3", result)
		assert.matches("STOPPED timer  here: 3; baseline: 1 %-> 2", result)
		assert.matches("NEW     charge  here: 0; baseline: not tracked", result)
		assert.matches('GONE    menu  here: not tracked; baseline: "none"', result)
		assert.matches("1 unchanged not listed$", result)
	end)

	it("compares sessions that stopped as soon as they started by the same shortest duration", function()
		tracker:start("tap")
		tracker:trackCall("Tool:Raise")
		tracker:trackCall("Tool:Raise")
		tracker:trackCall("Idle:Sway")
		tracker:trackCall("Idle:Sway")
		tracker:stop()
		tracker:start("quiet")
		tracker:stop()

		assert.equals('compare "tap" with "tap"\n2 unchanged not listed', tracker:compare("tap", "tap"))
		local result = tracker:compare("tap", "quiet")
		assert.matches("GONE   Idle:Sway  0 calls, expected 2%.0", result)
		assert.matches("GONE   Tool:Raise  0 calls, expected 2%.0", result)
	end)
end)
