local Tracking = require("devtools.tracking")
local Format = require("ue4ss.devtools.format")
local Session = require("ue4ss.devtools.session")
local Fakes = dofile(debug.getinfo(1, "S").source:match("^@(.*[/\\])") .. "fakes.lua")

describe("ue4ss.devtools.session", function()
	it("tracks false and nil properties as values and failed reads as errors", function()
		local journal = Fakes.journal()
		local tracker = Tracking.new({ journal = journal, format = Format.instance() })
		tracker:start("t")
		local class = {
			GetFName = function()
				return Fakes.name("BP_Wand_C")
			end,
			ForEachProperty = function(_, callback)
				callback(Fakes.property("Enabled", "BoolProperty"))
				callback(Fakes.property("Target", "ObjectProperty"))
				callback(Fakes.property("Broken", "IntProperty"))
			end,
		}
		local values = { Enabled = false, Target = nil }
		local object = Fakes.object("BP_Wand_C", "/Game/L.L:PersistentLevel.BP_Wand_C_1", {
			GetClass = function()
				return class
			end,
			GetPropertyValue = function(_, name)
				if name == "Broken" then
					error("boom", 0)
				end
				return values[name]
			end,
		})
		local session = setmetatable({ tracker = tracker }, Session)
		journal.lines = {}

		session:trackObject("wand", object)

		assert.are.same({
			"track.init wand.Enabled = false",
			"track.init wand.Target = nil",
			'track.init wand.Broken = "<error: boom>"',
		}, journal.lines)
	end)

	it("does nothing outside tracking: timers skip their runs and marks are ignored", function()
		local loops, delays = {}, {}
		_G.LoopAsync = function(_, fn)
			loops[#loops + 1] = fn
		end
		_G.ExecuteWithDelay = function(_, fn)
			delays[#delays + 1] = fn
		end
		_G.ExecuteInGameThread = function(fn)
			fn()
		end
		local session = Session.new(Fakes.journal(), { dir = "mod" })
		local runs = 0
		local function run()
			runs = runs + 1
		end
		session.api.every(10, run)
		session.api.after(10, run)

		loops[1]()
		delays[1]()
		local mark = session:mark("idle")

		_G.LoopAsync, _G.ExecuteWithDelay, _G.ExecuteInGameThread = nil, nil, nil
		assert.equals(0, runs)
		assert.is_nil(mark)

		session.tracker:start("t")
		_G.ExecuteInGameThread = function(fn)
			fn()
		end
		loops[1]()
		local tracked = session:mark("hold")
		_G.ExecuteInGameThread = nil
		assert.equals(1, runs)
		assert.equals("mark #1 hold", tracked)
	end)

	it("knows the player from the start of tracking, before any update", function()
		local path = "/Script/Engine.Pawn:Restart"
		local registry = Fakes.hooking({ [path] = Fakes.ufunction("Restart", {}) })
		local pawn = Fakes.object("BP_Player_C", "/Game/L.L:PersistentLevel.BP_Player_C_1", { address = 0x20 })
		local controller = Fakes.object("PlayerController", "/Game/L.L:PersistentLevel.PC_1", {
			address = 0x10,
			Pawn = pawn,
			IsLocalPlayerController = function()
				return true
			end,
		})
		_G.FindAllOf = function()
			return { controller }
		end
		local journal = Fakes.journal()
		local session = Session.new(journal, { dir = "mod" })
		session.api.hook(path, { player = true })

		session.api.track.start("t")
		registry.hooks[path].pre(Fakes.param(pawn))

		_G.FindAllOf = nil
		Fakes.restore()
		assert.are.same(
			{ "track.start t", "track.call Pawn:Restart self=BP_Player_C'BP_Player_C_1'" },
			journal.lines
		)
	end)
end)
