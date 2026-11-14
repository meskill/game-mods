local Beasts = require("beasts")

local CREATURE_CLASS = "/Script/Phoenix.Creature_Character"

local function actor(class)
	return {
		IsValid = function()
			return true
		end,
		IsA = function(_, other)
			return other == class
		end,
		CreatureAIComponent = { NurtureInteractRange = 800.0 },
	}
end

describe("beasts", function()
	local player, target, fighting, distance

	before_each(function()
		fighting, target, distance = false, actor(CREATURE_CLASS), 500.0
		player = {
			pawn = {
				InCombatMode = function()
					return fighting
				end,
				GetDistanceTo = function(_, other)
					assert.equals(target, other)
					return distance
				end,
			},
			controller = {
				GetBestAutoTargetActor = function()
					return target
				end,
			},
		}
	end)

	it("finds no beast beyond its nurture range", function()
		distance = 800.0
		assert.equals(target, Beasts.focused(player))
		distance = 801.0
		assert.is_nil(Beasts.focused(player))
	end)

	it("finds the creature in focus out of combat", function()
		assert.equals(target, Beasts.focused(player))
	end)

	it("finds no beast in combat", function()
		fighting = true
		assert.is_nil(Beasts.focused(player))
	end)

	it("finds no beast when the focus is no creature, or there is none", function()
		target = actor("/Script/Phoenix.Spider_Character")
		assert.is_nil(Beasts.focused(player))
		target = nil
		assert.is_nil(Beasts.focused(player))
	end)

	describe("use", function()
		local Fresh, pawn, uses, exit

		before_each(function()
			uses, exit = {}, nil
			_G.FName = function(text)
				return text
			end
			_G.RegisterHook = function(path, callback)
				assert.matches("BTT_BipedUpper_UseInventoryItem_C:ExitTask$", path)
				exit = callback
			end
			local tool = {
				IsValid = function()
					return true
				end,
				EndItemUsage = function()
					uses[#uses + 1] = "release"
				end,
			}
			pawn = {
				UseInventoryItemByName = function(_, item, holder)
					uses[#uses + 1] = item .. "@" .. holder
					return true
				end,
				InventoryToolSetComponent = {
					GetActiveTool = function()
						return tool
					end,
				},
			}
			package.loaded["beasts"] = nil
			Fresh = require("beasts")
		end)

		after_each(function()
			_G.FName, _G.RegisterHook = nil, nil
		end)

		it("starts no tool use while another runs, until the use task exits", function()
			assert.equals("used", Fresh.use(pawn, "CreatureFeed", "Toolbox_Storage"))
			assert.equals("busy", Fresh.use(pawn, "CreatureFeed", "Toolbox_Storage"))
			exit()
			assert.equals("used", Fresh.use(pawn, "CreaturePettingBrush", "Toolbox_Storage"))
			assert.same({
				"CreatureFeed@Toolbox_Storage",
				"release",
				"CreaturePettingBrush@Toolbox_Storage",
				"release",
			}, uses)
		end)
	end)
end)
