local Reflect = require("ue4ss.devtools.reflect")
local Fakes = dofile(debug.getinfo(1, "S").source:match("^@(.*[/\\])") .. "fakes.lua")

describe("ue4ss.devtools.reflect", function()
	it("errors on an invalid object without asking whether it is a class", function()
		local asked = false
		local object = Fakes.object("BP_Wand_C", "/Game/L.L:PersistentLevel.BP_Wand_C_1", {
			valid = false,
			IsClass = function()
				asked = true
				return false
			end,
		})
		assert.has_error(function()
			Reflect.class(object)
		end)
		assert.is_false(asked)
	end)
end)
