describe("conjuration", function()
	local Conjuration, manager, searches

	before_each(function()
		searches = 0
		manager = { context = 0 }
		function manager:IsValid()
			return true
		end
		function manager:GetConjurationContext()
			return self.context
		end
		_G.FindFirstOf = function(class)
			assert.equals("TransfigurationManager", class)
			searches = searches + 1
			return manager
		end
		package.loaded["conjuration"] = nil
		Conjuration = require("conjuration")
	end)

	after_each(function()
		_G.FindFirstOf = nil
	end)

	it("is in the room in the Room of Requirement and the vivariums only", function()
		assert.is_false(Conjuration.inRoom())
		manager.context = Conjuration.Context.SANCTUARY
		assert.is_true(Conjuration.inRoom())
		manager.context = Conjuration.Context.BIOME_TUNDRA
		assert.is_true(Conjuration.inRoom())
		assert.equals(1, searches)
	end)

	it("is not in the room while the manager is missing", function()
		_G.FindFirstOf = function()
			return nil
		end
		assert.is_false(Conjuration.inRoom())
		assert.is_nil(Conjuration.context())
	end)
end)
