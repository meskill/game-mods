local AdaptiveTrigger = require("adaptive_triggers")

describe("adaptive triggers", function()
	describe("findController", function()
		it("picks the first device that supports adaptive triggers", function()
			local index = AdaptiveTrigger.findController({
				Devices = {
					{ Index = 0, IsSupportAT = false },
					{ Index = 4, IsSupportAT = true },
					{ Index = 5, IsSupportAT = true },
				},
			})
			assert.equals(4, index)
		end)

		it("reports when no device supports adaptive triggers", function()
			local index, err = AdaptiveTrigger.findController({
				Devices = { { Index = 0, IsSupportAT = false } },
			})
			assert.is_nil(index)
			assert.equals("no connected controller supports adaptive triggers", err)
		end)

		it("treats a status without devices as having none", function()
			assert.is_nil(AdaptiveTrigger.findController({}))
		end)
	end)
end)
