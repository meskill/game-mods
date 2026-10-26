local Player = require("ue4ss.devtools.player")
local Fakes = dofile(debug.getinfo(1, "S").source:match("^@(.*[/\\])") .. "fakes.lua")

describe("ue4ss.devtools.player", function()
	local player, pawn

	-- An object at `address` with an Owner property and an outer. GetOwner()
	-- fails: a hook on it would run again if the filter called it.
	local function object(address, owner, outer)
		return Fakes.object("Actor", "/Game/L.L:PersistentLevel.Actor_" .. address, {
			address = address,
			Owner = owner,
			GetOuter = function()
				return outer
			end,
			GetOwner = function()
				error("GetOwner called", 0)
			end,
		})
	end

	before_each(function()
		pawn = object(0x20)
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
		player = Player.new()
		player:refresh(0)
	end)

	after_each(function()
		_G.FindAllOf = nil
	end)

	it("owns objects owned by the pawn or inside them, through the Owner property", function()
		local wand = object(0x30, pawn)
		local component = object(0x40, nil, wand)
		assert.is_true(player:owns(pawn))
		assert.is_true(player:owns(wand))
		assert.is_true(player:owns(component))
	end)

	it("does not own objects of others or invalid ones", function()
		local other = object(0x50, object(0x60))
		assert.is_false(player:owns(other))
		assert.is_false(player:owns(Fakes.object("Actor", "/Game/L.L:Gone", { valid = false })))
		assert.is_false(player:owns(nil))
	end)
end)
