local Combos = require("combos")

local PAD, MOUSE = "Gamepad_RightShoulder", "ThumbMouseButton"
local UP, DOWN = "Gamepad_DPad_Up", "Gamepad_DPad_Down"
local ONE = "One"

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
		combos = Combos.new({
			{ modifier = PAD, buttons = { UP, DOWN } },
			{ modifier = MOUSE, buttons = { ONE } },
		})
	end)

	it("reads each modifier, then its buttons", function()
		assert.same({ PAD, UP, DOWN, MOUSE, ONE }, combos:keys())
	end)

	it("lists a key shared by devices once", function()
		combos = Combos.new({
			{ modifier = PAD, buttons = { ONE } },
			{ modifier = MOUSE, buttons = { ONE } },
		})
		assert.same({ PAD, ONE, MOUSE }, combos:keys())
	end)

	it("reports a button pressed during the hold, once, by slot", function()
		assert.same({ 1, true }, { combos:update(poll({ PAD }, { PAD })) })
		assert.same({ 1, false, { 2 } }, { combos:update(poll({ PAD, DOWN }, { DOWN })) })
		assert.same({ 1, false }, { combos:update(poll({ PAD, DOWN })) })
		assert.same({ nil, false }, { combos:update(poll({ DOWN })) })
	end)

	it("reports nothing for buttons pressed in the same poll as the modifier", function()
		assert.same({ 1, true }, { combos:update(poll({ PAD, UP }, { PAD, UP })) })
	end)

	it("reports every button pressed in one poll, in slot order", function()
		combos:update(poll({ PAD }, { PAD }))
		assert.same({ 1, false, { 1, 2 } }, { combos:update(poll({ PAD, DOWN, UP }, { DOWN, UP })) })
	end)

	it("ignores the other device's modifier and buttons during a hold", function()
		combos:update(poll({ PAD }, { PAD }))
		assert.same({ 1, false }, { combos:update(poll({ PAD, MOUSE, ONE }, { MOUSE, ONE })) })
	end)

	it("does not pass the hold to a modifier still held when the owner goes up", function()
		combos:update(poll({ PAD }, { PAD }))
		combos:update(poll({ PAD, MOUSE }, { MOUSE }))
		assert.same({ nil, false }, { combos:update(poll({ MOUSE })) })
		assert.same({ 2, true }, { combos:update(poll({ MOUSE }, { MOUSE })) })
	end)

	it("gives the hold to the first device when both modifiers go down in one poll", function()
		assert.same({ 1, true }, { combos:update(poll({ PAD, MOUSE }, { PAD, MOUSE })) })
	end)

	it("starts a new hold when the owner goes up as the other goes down", function()
		combos:update(poll({ PAD }, { PAD }))
		assert.same({ 2, true }, { combos:update(poll({ MOUSE }, { MOUSE })) })
	end)

	it("forgets the hold on reset", function()
		combos:update(poll({ PAD }, { PAD }))
		combos:reset()
		assert.same({ nil, false }, { combos:update(poll({ PAD, UP }, { UP })) })
	end)
end)
