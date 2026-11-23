local Beasts

local CREATURE_CLASS = "/Script/Phoenix.Creature_Character"

local function actor(class)
	return {
		IsValid = function()
			return true
		end,
		IsA = function(_, other)
			return other == class
		end,
	}
end

describe("beasts", function()
	local player, target, fighting, distance, defaults, capture

	before_each(function()
		fighting, target, distance, capture = false, actor(CREATURE_CLASS), 500.0, 1250
		defaults = {
			["/Script/Phoenix.Default__CreaturePettingTool"] = { InteractRange = 1000.0 },
			["/Script/Phoenix.Default__CreatureFeedingTool"] = { InteractRange = 900.0 },
		}
		_G.StaticFindObject = function(path)
			return defaults[path]
		end
		_G.FindFirstOf = function(class)
			assert.equals("CreatureManager", class)
			return {
				IsValid = function()
					return true
				end,
				BP_GetCreatureDefinitionForActor = function(_, creature)
					assert.equals(target, creature)
					return {
						GetCapturingDistanceMax = function()
							return capture
						end,
					}
				end,
			}
		end
		-- The tools' reach and the manager are cached per load.
		package.loaded["beasts"] = nil
		Beasts = require("beasts")
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

	after_each(function()
		_G.StaticFindObject, _G.FindFirstOf = nil, nil
	end)

	it("finds no beast beyond the smallest reach of all tools in the room", function()
		distance = 900.0
		assert.equals(target, Beasts.focused(player, true))
		distance = 901.0
		assert.is_nil(Beasts.focused(player, true))
		capture, distance = 800, 801.0
		assert.is_nil(Beasts.focused(player, true))
	end)

	it("finds no beast beyond the Nab-Sack's reach for it outside the room", function()
		distance = 1250.0
		assert.equals(target, Beasts.focused(player, false))
		distance = 1251.0
		assert.is_nil(Beasts.focused(player, false))
	end)

	it("leaves out a reach it cannot read", function()
		defaults["/Script/Phoenix.Default__CreatureFeedingTool"] = nil
		capture, distance = nil, 1.0
		assert.is_nil(Beasts.focused(player, true))
		capture, distance = 1250, 1250.0
		assert.equals(target, Beasts.focused(player, true))
		defaults["/Script/Phoenix.Default__CreatureFeedingTool"] = { InteractRange = 900.0 }
		capture = nil
		assert.is_nil(Beasts.focused(player, false))
		distance = 900.0
		assert.equals(target, Beasts.focused(player, false))
	end)

	it("finds no beast in combat", function()
		fighting = true
		assert.is_nil(Beasts.focused(player, false))
	end)

	it("finds no beast when the focus is no creature, or there is none", function()
		target = actor("/Script/Phoenix.Spider_Character")
		assert.is_nil(Beasts.focused(player, false))
		target = nil
		assert.is_nil(Beasts.focused(player, false))
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
