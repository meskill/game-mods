describe("loadout", function()
	local Loadout, manager

	local OWN = { "Expelliarmus", "Confringo", "Incendio", "Accio" }
	local MOD = { "Lumos", "Wingardium", "Disillusionment", "Reparo" }

	---A set entry as the manager holds it: { type, name }.
	local function spell(name)
		return { type = 0, name = name }
	end
	local function item(name)
		return { type = 1, name = name }
	end
	local NONE = { type = 2, name = "None" }

	---A set as entries (strings for spells, "item:<name>" for items, false for none).
	local function entries(set)
		local list = {}
		for slot = 1, 4 do
			local entry = set[slot]
			if entry.type == 0 then
				list[slot] = entry.name
			elseif entry.type == 1 then
				list[slot] = "item:" .. entry.name
			else
				list[slot] = false
			end
		end
		return list
	end

	---The entries of `writes` applied to `list`, checking that no write shows an entry twice.
	local function apply(list, writes)
		local state = { table.unpack(list) }
		for _, write in ipairs(writes) do
			state[write.slot] = write.entry
			local seen = {}
			for _, entry in ipairs(state) do
				if entry then
					assert.is_nil(seen[entry], "shown twice: " .. entry)
					seen[entry] = true
				end
			end
		end
		return state
	end

	before_each(function()
		-- The game's sets by index (0-3), each by slot (1-4).
		manager = {
			group = 0,
			sets = {
				[0] = { spell("Expelliarmus"), spell("Confringo"), spell("Incendio"), spell("Accio") },
				[1] = { spell("Levioso"), item("CaptureDevice"), NONE, spell("Accio") },
			},
		}
		function manager:IsValid()
			return true
		end
		function manager:GetActiveGroupIndex()
			return self.group
		end
		function manager:GetItemType(group, macro, index)
			assert.equals(0, index)
			return self.sets[group][macro + 1].type
		end
		function manager:GetItemName(group, macro, index, out)
			assert.equals(0, index)
			local name = self.sets[group][macro + 1].name
			out.ItemName = {
				ToString = function()
					return name
				end,
			}
		end
		function manager:SlotSpellFromCode(name, slot, group)
			if self.fail then
				self.fail = nil
				error("write failed")
			end
			self.sets[group][slot + 1] = spell(name)
		end
		function manager:SlotInventoryItemFromCode(name, count, slot)
			assert.equals(-1, count)
			self.sets[self.group][slot + 1] = item(name)
		end
		function manager:UpdateSelectedActionItem(name, variation, kind, holder, group, count, macro, index)
			assert.same({ "", 1, "Toolbox_Storage", -1, 0 }, { variation, kind, holder, count, index })
			self.sets[group][macro + 1] = item(name)
		end
		_G.FindFirstOf = function(class)
			assert.equals("QuickActionManager", class)
			return manager
		end
		package.loaded["loadout"] = nil
		Loadout = require("loadout")
	end)

	after_each(function()
		_G.FindFirstOf = nil
	end)

	it("names spell and item actions as set entries", function()
		assert.equals("Lumos", Loadout.entry("Lumos"))
		assert.equals("item:CaptureDevice", Loadout.entry({ item = "CaptureDevice", holder = "Toolbox_Storage" }))
	end)

	it("writes each entry into its slot, leaving empty slots and slots already right", function()
		local current = { "Lumos", false, "Incendio", "Accio" }
		local writes = Loadout.plan(current, MOD)
		assert.same({ "Lumos", false, "Disillusionment", "Reparo" }, apply(current, writes))
		assert.equals(2, #writes)
	end)

	it("moves an entry the set holds elsewhere without showing it twice", function()
		local current = { "Expelliarmus", "Confringo", "Lumos", "Wingardium" }
		assert.same(MOD, apply(current, Loadout.plan(current, MOD)))
	end)

	it("leaves a slot whose entry would stay in a slot it does not write", function()
		local current = { "Expelliarmus", "Lumos", "Incendio", "Accio" }
		local target = { "Lumos", false, "Disillusionment", "Reparo" }
		assert.same({ "Expelliarmus", "Lumos", "Disillusionment", "Reparo" }, apply(current, Loadout.plan(current, target)))
	end)

	it("shows items in the chosen set and puts the spells back", function()
		local set = Loadout.new()
		set:swap({ "Lumos", "item:CreatureFeed", "item:CaptureDevice", "item:CreaturePettingBrush" })
		assert.same(
			{ "Lumos", "item:CreatureFeed", "item:CaptureDevice", "item:CreaturePettingBrush" },
			entries(manager.sets[0])
		)
		set:restore()
		assert.same(OWN, entries(manager.sets[0]))
	end)

	it("puts the set's own entries back into the remembered set after another set is chosen", function()
		manager.group = 1
		local set = Loadout.new()
		set:swap(MOD)
		assert.same({ "Lumos", "Wingardium", false, "Reparo" }, entries(manager.sets[1]))
		manager.group = 0
		set:restore()
		assert.same({ "Levioso", "item:CaptureDevice", false, "Accio" }, entries(manager.sets[1]))
		assert.same(OWN, entries(manager.sets[0]))
	end)

	it("finishes putting the set back after a failed write", function()
		local set = Loadout.new()
		set:swap(MOD)
		manager.fail = true
		assert.has_error(function()
			set:restore()
		end)
		set:restore()
		assert.same(OWN, entries(manager.sets[0]))
	end)

	it("writes once per hold and nothing after forget", function()
		local set = Loadout.new()
		set:swap(MOD)
		set:swap({ "Reparo", "Lumos", "Wingardium", "Disillusionment" })
		assert.same(MOD, entries(manager.sets[0]))
		set:forget()
		set:restore()
		assert.same(MOD, entries(manager.sets[0]))
	end)
end)
