local Format = require("ue4ss.devtools.format")
local Reflect = require("ue4ss.devtools.reflect")
local Fakes = dofile(debug.getinfo(1, "S").source:match("^@(.*[/\\])") .. "fakes.lua")

describe("ue4ss.devtools.format", function()
	local vector = Fakes.structDefinition("Vector", {
		{ "X", "DoubleProperty" },
		{ "Y", "DoubleProperty" },
	})

	it("shows a struct value with its fields", function()
		assert.are.equal("Vector{X=1, Y=2}", Format.value(Fakes.struct(vector, { X = 1, Y = 2 })))
	end)

	it("shows a struct definition by its path", function()
		assert.are.equal("ScriptStruct /Script/CoreUObject.Vector", Format.value(vector))
	end)

	it("lists the fields of a struct definition", function()
		assert.are.same({
			{ name = "X", type = "Double", owner = "Vector" },
			{ name = "Y", type = "Double", owner = "Vector" },
		}, Reflect.properties(vector))
	end)

	it("shows array elements up to the item limit, none with 0", function()
		local array = Fakes.array({ 1, 2, 3 })
		assert.equals("[3]{1, 2, 3}", Format.value(array))
		assert.equals("[3]{1, 2, ...1 more}", Format.value(array, { itemsLimit = 2 }))
		assert.equals("[3]{...3 more}", Format.value(array, { itemsLimit = 0 }))
	end)

	it("logs strings as they are and lists of strings one per line", function()
		assert.equals("text", Format.text("text"))
		assert.equals("a\nb", Format.text({ "a", "b" }))
		assert.equals("5", Format.text(5))
	end)
end)
