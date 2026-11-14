local Actions = require("actions")

local ORDER = { "room", "beast", "default" }

describe("actions", function()
	local now, checked

	---Whether a context applies now, counting checks.
	local function applies(context)
		checked[#checked + 1] = context
		return now[context] == true
	end

	before_each(function()
		now, checked = { default = true }, {}
	end)

	it("takes the first listed context that applies, by priority", function()
		local right = { default = "Wingardium", room = "Vanishment", beast = "NabSack" }
		assert.equals("Wingardium", Actions.pick(right, ORDER, applies))
		now.beast = true
		assert.equals("NabSack", Actions.pick(right, ORDER, applies))
		now.room = true
		assert.equals("Vanishment", Actions.pick(right, ORDER, applies))
	end)

	it("checks only the contexts a button lists, up to the one that applies", function()
		now.room = true
		Actions.pick({ default = "Lumos" }, ORDER, applies)
		assert.same({ "default" }, checked)
		checked = {}
		Actions.pick({ default = "Wingardium", room = "Vanishment", beast = "NabSack" }, ORDER, applies)
		assert.same({ "room" }, checked)
	end)

	it("does nothing when no listed context applies", function()
		now.default = false
		assert.is_nil(Actions.pick({ room = "Conjuration" }, ORDER, applies))
	end)

	it("checks each context once per press", function()
		local calls = 0
		local check = Actions.checker({
			room = function()
				calls = calls + 1
				return true
			end,
		})
		assert.is_true(check("room"))
		assert.is_true(check("room"))
		assert.equals(1, calls)
		assert.has_error(function()
			check("dungeon")
		end)
	end)
end)
