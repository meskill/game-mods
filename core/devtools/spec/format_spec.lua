local Format = require("devtools.format")

describe("devtools.format", function()
	local format = Format.new()

	it("lists array items first, then the other keys in a stable order", function()
		assert.equals(
			'{3, "a", [true]=2, ["two words"]=0, x=1}',
			format:value({ 3, "a", x = 1, [true] = 2, ["two words"] = 0 })
		)
	end)

	it("shows the first items and counts the rest", function()
		assert.equals("{1, 2, ...2 more}", format:value({ 1, 2, 3, 4 }, { itemsLimit = 2 }))
		assert.equals("{a=1, ...1 more}", format:value({ a = 1, b = 2 }, { itemsLimit = 1 }))
	end)

	it("stops at the nesting limit", function()
		assert.equals("{{{...}}}", format:value({ { { { 1 } } } }, { depthLimit = 2 }))
	end)

	it("marks cycles but repeats shared tables", function()
		local shared = { 1 }
		local cyclic = {}
		cyclic.self = cyclic
		assert.equals("{{1}, {1}}", format:value({ shared, shared }))
		assert.equals("{self=<cycle>}", format:value(cyclic))
	end)

	it("keeps strings on one line and shortens long ones", function()
		assert.equals('"a\\nb"', format:value("a\nb"))
		local long = format:value(("x"):rep(400))
		assert.equals(300 + #'"..."', #long)
	end)

	it("uses the limits it was created with unless a call overrides them", function()
		local small = Format.new(nil, { itemsLimit = 1, depthLimit = 1, stringLimit = 3 })
		assert.equals('{"abc...", ...1 more}', small:value({ "abcdef", "x" }))
		assert.equals("{{...}}", small:value({ { { 1 } } }))
		assert.equals("{1, 2}", small:value({ 1, 2 }, { itemsLimit = 5 }))
		assert.equals('"abcdef"', small:value("abcdef", { stringLimit = 10 }))
	end)

	it("cuts identifier-shaped keys at the string limit", function()
		local small = Format.new(nil, { stringLimit = 3 })
		assert.equals('{abc=2, ["abc..."]=1}', small:value({ abcdef = 1, abc = 2 }))
	end)

	it("cuts strings found by a rule at the same string limit", function()
		local wrapped = setmetatable({ text = "abcdef" }, {})
		local rule = Format.new(function(value, context)
			return context:quote(value.text)
		end, { stringLimit = 2 })
		assert.equals('"ab..."', rule:value(wrapped))
	end)

	it("applies the rule to values at any depth", function()
		local name = setmetatable({ text = "Lumos" }, {})
		local rule = Format.new(function(value, context)
			if getmetatable(value) then
				return "Name(" .. context:nested(value.text) .. ")"
			end
		end)
		assert.equals('{spell={Name("Lumos")}}', rule:value({ spell = { name } }))
	end)

	it("lets the rule format what a value wraps at the same depth", function()
		local wrapper = setmetatable({ inner = { 1, 2 } }, {})
		local rule = Format.new(function(value, context)
			if getmetatable(value) then
				return context:same(value.inner)
			end
		end)
		assert.equals("{{...}}", rule:value({ wrapper }, { depthLimit = 1 }))
	end)

	it("marks a cycle through values the rule formats at the same depth", function()
		local a = setmetatable({}, {})
		local b = setmetatable({ inner = a }, {})
		a.inner = b
		local rule = Format.new(function(value, context)
			if getmetatable(value) then
				return "W(" .. context:same(value.inner) .. ")"
			end
		end)
		assert.equals("W(W(<cycle>))", rule:value(a))
		assert.equals("{W(W(<cycle>)), W(W(<cycle>))}", rule:value({ a, a }))
	end)

	it("shows a failing rule as an error for that value and continues", function()
		local broken = Format.new(function(value)
			if value.broken then
				error("dangling", 0)
			end
		end)
		assert.equals("{<error: dangling>, {1}}", broken:value({ { broken = true }, { 1 } }))
	end)

	it("keeps an error message with line breaks on one line", function()
		local broken = Format.new(function()
			error("first\r\nsecond", 0)
		end)
		assert.equals("<error: first\\r\\nsecond>", broken:value({}))
	end)

	it("shows a value whose rule fails with an unprintable error as an error", function()
		local unprintable = setmetatable({}, {
			__tostring = function()
				error("no text", 0)
			end,
		})
		local broken = Format.new(function()
			error(unprintable)
		end)
		assert.equals("<error: unprintable error>", broken:value({}))
	end)

	it("shows a table whose metamethods fail as an error for that table and continues", function()
		local badLength = setmetatable({}, {
			__len = function()
				error("no length", 0)
			end,
		})
		local badIndex = setmetatable({}, {
			__len = function()
				return 1
			end,
			__index = function()
				error("broken", 0)
			end,
		})
		assert.equals("{<error: no length>, {<error: broken>}, 3}", format:value({ badLength, badIndex, 3 }))
		assert.equals("{<error: broken>}", format:value(badIndex))
	end)

	it("shows a table whose keys cannot be sorted as an error and continues", function()
		local badKey = setmetatable({}, {
			__tostring = function()
				error("no key text", 0)
			end,
		})
		assert.equals("{<error: no key text>, 3}", format:value({ { [badKey] = 1, [{}] = 2 }, 3 }))
	end)

	it("does not take a table that failed to format for a cycle when it comes again", function()
		local failed = false
		local flaky = setmetatable({}, {
			__len = function()
				if not failed then
					failed = true
					error("first time", 0)
				end
				return 0
			end,
		})
		assert.equals("{<error: first time>, {}}", format:value({ flaky, flaky }))
	end)
end)
