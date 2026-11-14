local Lookup = require("ue4ss.lookup")

local function object()
	return {
		valid = true,
		IsValid = function(self)
			return self.valid
		end,
	}
end

describe("ue4ss.lookup", function()
	-- The clock every lookup below reads.
	local time

	before_each(function()
		time = 0
	end)

	local function clock()
		return time
	end

	it("reuses a valid object without searching again", function()
		local found = object()
		local searches = 0
		local lookup = Lookup.new(1, function()
			searches = searches + 1
			return found
		end, nil, clock)

		assert.equals(found, lookup:get())
		time = 5
		assert.equals(found, lookup:get())
		assert.equals(1, searches)
	end)

	it("searches for a missing object at most once per interval", function()
		local found
		local searches = 0
		local lookup = Lookup.new(1, function()
			searches = searches + 1
			return found
		end, nil, clock)

		assert.is_nil(lookup:get())
		found, time = object(), 0.5
		assert.is_nil(lookup:get())
		assert.equals(1, searches)

		time = 1
		assert.equals(found, lookup:get())
		assert.equals(2, searches)
	end)

	it("drops a cached object once keep rejects it", function()
		local stale, fresh = object(), object()
		local found = stale
		local lookup = Lookup.new(1, function()
			return found
		end, nil, clock)
		assert.equals(stale, lookup:get())

		stale.valid, found, time = false, fresh, 0.5
		assert.is_nil(lookup:get())
		time = 1
		assert.equals(fresh, lookup:get())
	end)

	it("passes extra arguments to keep and search", function()
		local seen = {}
		local lookup = Lookup.new(1, function(owner)
			seen.search = owner
			return { owner = owner }
		end, function(candidate, owner)
			seen.keep = owner
			return candidate.owner == owner
		end, clock)

		local first = lookup:get("a")
		assert.equals("a", seen.search)
		assert.equals(first, lookup:get("a"))
		assert.equals("a", seen.keep)
		time = 0.5
		assert.is_nil(lookup:get("b"))
	end)

	it("caches an object set directly", function()
		local direct = object()
		local lookup = Lookup.new(1, function()
			error("must not search")
		end, nil, clock)
		assert.equals(direct, lookup:set(direct))
		assert.equals(direct, lookup:get())
	end)
end)
