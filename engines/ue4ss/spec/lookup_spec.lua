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
	it("reuses a valid object without searching again", function()
		local found = object()
		local searches = 0
		local lookup = Lookup.new(1, function()
			searches = searches + 1
			return found
		end)

		assert.equals(found, lookup:get(0))
		assert.equals(found, lookup:get(5))
		assert.equals(1, searches)
	end)

	it("searches for a missing object at most once per interval", function()
		local found
		local searches = 0
		local lookup = Lookup.new(1, function()
			searches = searches + 1
			return found
		end)

		assert.is_nil(lookup:get(0))
		found = object()
		assert.is_nil(lookup:get(0.5))
		assert.equals(1, searches)

		assert.equals(found, lookup:get(1))
		assert.equals(2, searches)
	end)

	it("drops a cached object once keep rejects it", function()
		local stale, fresh = object(), object()
		local found = stale
		local lookup = Lookup.new(1, function()
			return found
		end)
		assert.equals(stale, lookup:get(0))

		stale.valid, found = false, fresh
		assert.is_nil(lookup:get(0.5))
		assert.equals(fresh, lookup:get(1))
	end)

	it("passes extra arguments to keep and search", function()
		local seen = {}
		local lookup = Lookup.new(1, function(owner)
			seen.search = owner
			return { owner = owner }
		end, function(candidate, owner)
			seen.keep = owner
			return candidate.owner == owner
		end)

		local first = lookup:get(0, "a")
		assert.equals("a", seen.search)
		assert.equals(first, lookup:get(0, "a"))
		assert.equals("a", seen.keep)
		assert.is_nil(lookup:get(0.5, "b"))
	end)

	it("caches an object set directly", function()
		local direct = object()
		local lookup = Lookup.new(1, function()
			error("must not search")
		end)
		assert.equals(direct, lookup:set(direct))
		assert.equals(direct, lookup:get(0))
	end)
end)
