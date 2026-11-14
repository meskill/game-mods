local Combos = require("combos")

local MODIFIER = "Gamepad_RightShoulder"
local UP, DOWN = "Gamepad_DPad_Up", "Gamepad_DPad_Down"

---A tracker's last update: `down` keys held, `pressed` keys that went down at it.
local function poll(down, pressed)
	local function set(list)
		local result = {}
		for _, key in ipairs(list) do
			result[key] = true
		end
		return result
	end
	local held, fresh = set(down), set(pressed or {})
	return {
		isDown = function(_, key)
			return held[key] == true
		end,
		pressed = function(_, key)
			return fresh[key] == true
		end,
	}
end

describe("combos", function()
	local combos

	before_each(function()
		combos = Combos.new(MODIFIER, { UP, DOWN })
	end)

	it("reads the modifier first, then the buttons", function()
		assert.same({ MODIFIER, UP, DOWN }, combos:keys())
	end)

	it("reports a button pressed while the modifier is held, once", function()
		assert.same({ true, { UP } }, { combos:update(poll({ MODIFIER, UP }, { UP })) })
		assert.same({ true }, { combos:update(poll({ MODIFIER, UP })) })
	end)

	it("reports nothing without the modifier", function()
		assert.same({ false }, { combos:update(poll({ UP }, { UP })) })
	end)

	it("reports nothing for buttons pressed in the same poll as the modifier", function()
		assert.same({ true }, { combos:update(poll({ MODIFIER, UP }, { MODIFIER, UP })) })
	end)

	it("reports every button pressed in one poll, in the given order", function()
		assert.same({ true, { UP, DOWN } }, { combos:update(poll({ MODIFIER, DOWN, UP }, { DOWN, UP })) })
	end)
end)
