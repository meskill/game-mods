local Hooks = require("ue4ss.devtools.hooks")
local Fakes = dofile(debug.getinfo(1, "S").source:match("^@(.*[/\\])") .. "fakes.lua")

local PATH = "/Script/Phoenix.WandTool:OnRightArmStateChanged"

describe("ue4ss.devtools.hooks", function()
	local registry, journal, tracked, running, hooks, wand

	local function call(state, last, object)
		registry.hooks[PATH].pre(Fakes.param(object or wand), Fakes.param(state), Fakes.param(last))
	end

	before_each(function()
		registry = Fakes.hooking({
			[PATH] = Fakes.ufunction("OnRightArmStateChanged", {
				{ "RightArmState", "ByteProperty" },
				{ "LastRightArmState", "ByteProperty" },
				{ "ReturnValue", "BoolProperty" },
			}),
		})
		journal = Fakes.journal()
		tracked, running = {}, true
		local tracker = {
			running = function()
				return running and "s" or nil
			end,
			trackCall = function(_, label, args)
				tracked[#tracked + 1] = { label = label, args = args }
			end,
		}
		local player = {
			owns = function(_, object)
				return object == wand
			end,
		}
		hooks = Hooks.new(tracker, player, journal)
		wand = Fakes.object("BP_Wand_C", "/Game/L.L:PersistentLevel.BP_Wand_C_1")
	end)

	after_each(Fakes.restore)

	it("tracks each call with the object and the parameters by name", function()
		hooks:add(PATH)
		call(12, 3)
		assert.same({
			{
				label = "WandTool:OnRightArmStateChanged",
				args = { self = wand, RightArmState = 12, LastRightArmState = 3 },
			},
		}, tracked)
	end)

	it("tracks nothing while no session runs", function()
		hooks:add(PATH)
		running = false
		call(12, 3)
		assert.same({}, tracked)
	end)

	it("skips calls on objects of other characters with the player option", function()
		hooks:add(PATH, { player = true })
		call(12, 0, Fakes.object("BP_Wand_C", "/Game/L.L:PersistentLevel.BP_Wand_C_2"))
		call(12, 3)
		assert.equals(1, #tracked)
		assert.equals(wand, tracked[1].args.self)
	end)

	it("errors for a function that is not loaded", function()
		assert.has_error(function()
			hooks:add("/Script/Phoenix.Missing:Fn")
		end, "not loaded: /Script/Phoenix.Missing:Fn")
	end)
end)
