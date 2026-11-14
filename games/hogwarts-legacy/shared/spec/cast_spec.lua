local LUMOS = "/Game/Gameplay/ToolSet/Spells/Lumos/DA_LumosSpellRecord.DA_LumosSpellRecord"

local function object(fields)
	fields = fields or {}
	function fields:IsValid()
		return self.valid ~= false
	end
	return fields
end

describe("hogwarts.cast", function()
	local Cast, record, loaded, calls, wand, pawn

	before_each(function()
		record, calls = object(), {}
		loaded = { [LUMOS] = record }
		_G.StaticFindObject = function(path)
			return loaded[path]
		end
		_G.LoadAsset = function(path)
			calls[#calls + 1] = "load " .. path
			return object({ valid = false })
		end

		wand = object({ available = true, tool = object(), casts = true })
		function wand:IsSpellToolAvailable(given)
			assert.equals(record, given)
			return self.available
		end
		function wand:ActivateSpellTool(given, immediate)
			calls[#calls + 1] = ("activate %s %s"):format(given == record and "record" or "other", tostring(immediate))
			return self.tool
		end
		function wand:CastActiveSpell()
			calls[#calls + 1] = "cast"
			return self.casts
		end
		pawn = {
			GetWand = function()
				return wand
			end,
		}

		package.loaded["hogwarts.cast"] = nil
		Cast = require("hogwarts.cast")
	end)

	after_each(function()
		_G.StaticFindObject, _G.LoadAsset = nil, nil
	end)

	it("activates the spell's record on the wand, then casts it", function()
		assert.equals("cast", Cast.spell(pawn, "Lumos"))
		assert.same({ "activate record false", "cast" }, calls)
	end)

	it("loads a record the game has not loaded", function()
		loaded[LUMOS] = nil
		_G.LoadAsset = function(path)
			calls[#calls + 1] = "load " .. path
			return record
		end
		assert.equals("cast", Cast.spell(pawn, "Lumos"))
		assert.same({ "load " .. LUMOS, "activate record false", "cast" }, calls)
	end)

	it("casts nothing for a spell without a record", function()
		assert.equals("unknown", Cast.spell(pawn, "Nox"))
		assert.same({ "load /Game/Gameplay/ToolSet/Spells/Nox/DA_NoxSpellRecord.DA_NoxSpellRecord" }, calls)
	end)

	it("casts nothing the player cannot cast yet", function()
		wand.available = false
		assert.equals("unavailable", Cast.spell(pawn, "Lumos"))
		assert.same({}, calls)
	end)

	it("does not cast the previous spell when the record's tool cannot be activated", function()
		wand.tool = object({ valid = false })
		assert.equals("failed", Cast.spell(pawn, "Lumos"))
		assert.same({ "activate record false" }, calls)
	end)

	it("reports a cast the wand refused", function()
		wand.casts = false
		assert.equals("failed", Cast.spell(pawn, "Lumos"))
	end)
end)
