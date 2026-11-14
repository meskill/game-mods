-- Shows the mod's actions in the chosen spell set while the modifier is held,
-- then puts the set's own entries back. The mod still runs its actions
-- directly (hogwarts.cast, UseInventoryItemByName); the set shows what each
-- button does.
--
-- In the Room of Requirement this is also what makes Altering and Evanesco
-- work: the game outlines objects, and lets spells focus them, only while the
-- chosen set holds a room spell. A cast without a slot does not count.
--
-- How (devtools `experiments/room.lua`, runs 10-12; `experiments/beasts.lua`,
-- runs 5-9):
-- - The sets belong to one transient `QuickActionManager`, found with
--   FindFirstOf and cached. `GetActiveGroupIndex()` is the chosen set, 0-3.
--   Each set has 4 slots (macros 0-3: the diamond's top, right, bottom,
--   left), each with one entry: `GetItemType(set, slot, 0)` is 0 for a spell,
--   1 for an inventory item (the creature tools), 2 for none;
--   `GetItemName(set, slot, 0, out)` fills `out.ItemName`.
-- - `SlotSpellFromCode(name, slot, set)` puts the spell named like its record
--   (`DA_<name>SpellRecord`) into a slot, in under 1 ms; the bar and the
--   outlines follow within 10 ms. No save follows.
-- - `SlotInventoryItemFromCode(item, -1, slot)` puts an item (the Nab-Sack
--   "CaptureDevice", the brush, the food) into a slot of the chosen set, as
--   the spell menu does (count -1); the bar shows it and its button uses it.
--   It takes no set. `SlotSpellFromCode` with an item's name empties the slot
--   (an error icon); `UpdateSelectedActionItem` changes the data but not the
--   bar; `SlotToolFromCode` wrote into two sets.
--
-- The set is remembered by its index, so its entries go back into it even if
-- another set is chosen meanwhile. An item goes back into a set that is no
-- longer chosen with `UpdateSelectedActionItem` (data only, from
-- "Toolbox_Storage", where the creature tools are kept; not verified in game).
-- What is written is tracked write by write: a failed write leaves the rest
-- to the next restore.
--
-- Only slots that hold an entry are written: the mod cannot clear a slot when
-- it puts the set back. An entry is never written where it would show twice in
-- the set (what the game does with a set holding one twice is unknown): an
-- entry the set holds elsewhere moves only when that slot is written too, and
-- that slot is written first. Two entries trading slots show one of them twice
-- between the two writes.

local Lookup = require("ue4ss.lookup")

-- Seconds between manager searches while there is none (title screen, loading).
local SEARCH_INTERVAL = 1
-- The set's slots.
local SLOTS = 4
-- `EUIQActionBarType` of an entry.
local SPELL, ITEM = 0, 1
-- The count the spell menu gives an item entry.
local ITEM_COUNT = -1
-- Where items written into a set that is not chosen are taken from.
local ITEM_HOLDER = "Toolbox_Storage"
-- Prefix of an item entry, to tell it from a spell of the same name.
local ITEM_PREFIX = "item:"

---A set entry: a spell's record name, e.g. "Lumos", or "item:" and an
---inventory item's name, e.g. "item:CaptureDevice".
---@alias QuickCastSetEntry string

---A set's entries by slot (1-based), false for none.
---@alias QuickCastSetEntries (QuickCastSetEntry|false)[]

---@class QuickCastWrite
---@field slot integer 1-based.
---@field entry QuickCastSetEntry

---@class QuickCastLoadout
---@field private set? integer The set written to, 0-3, while the mod's entries are in it.
---@field private originals? QuickCastSetEntries The set's own entries.
---@field private written? QuickCastSetEntries The set's entries as written so far.
local Loadout = {}
Loadout.__index = Loadout

local M = {}

local managers = Lookup.new(SEARCH_INTERVAL, function()
	local manager = FindFirstOf("QuickActionManager")
	if manager and manager:IsValid() then
		return manager
	end
	return nil
end)

---The set entry of an action: a spell's name, or an item's.
---@param action QuickCastAction
---@return QuickCastSetEntry
function M.entry(action)
	if type(action) == "table" then
		return ITEM_PREFIX .. action.item
	end
	return action
end

---The slot other than `except` that holds `entry`, or nil.
---@param entries QuickCastSetEntries
---@param entry QuickCastSetEntry
---@param except integer
---@return integer?
local function find(entries, entry, except)
	for slot = 1, SLOTS do
		if slot ~= except and entries[slot] == entry then
			return slot
		end
	end
	return nil
end

---The writes that turn `current` into `target`, in order: slots that hold an
---entry and differ. A slot is left as it is when its entry would show twice:
---the entry stays in another slot that is not written.
---@param current QuickCastSetEntries
---@param target QuickCastSetEntries false: leave the slot.
---@return QuickCastWrite[]
function M.plan(current, target)
	---@type QuickCastSetEntries
	local state = {}
	---@type table<integer, boolean>
	local pending = {}
	for slot = 1, SLOTS do
		state[slot] = current[slot] or false
		local entry = target[slot]
		pending[slot] = entry and state[slot] and state[slot] ~= entry or nil
	end
	-- Leaving one slot may keep an entry another slot wanted: repeat until none drops.
	local dropped = true
	while dropped do
		dropped = false
		for slot = 1, SLOTS do
			local other = pending[slot] and find(state, target[slot] --[[@as string]], slot)
			if other and not pending[other] then
				pending[slot], dropped = nil, true
			end
		end
	end
	---@type QuickCastWrite[]
	local writes = {}
	while next(pending) do
		-- First a slot whose entry is nowhere else in the set; in a cycle, any.
		---@type integer?
		local pick
		for slot = 1, SLOTS do
			if pending[slot] and not pick and not find(state, target[slot] --[[@as string]], slot) then
				pick = slot
			end
		end
		local slot = pick or next(pending) --[[@as integer]]
		local entry = target[slot] --[[@as string]]
		state[slot], pending[slot] = entry, nil
		writes[#writes + 1] = { slot = slot, entry = entry }
	end
	return writes
end

---A set's entries as the manager holds them.
---@param manager any
---@param set integer
---@return QuickCastSetEntries
local function read(manager, set)
	---@type QuickCastSetEntries
	local entries = {}
	for slot = 1, SLOTS do
		local kind = manager:GetItemType(set, slot - 1, 0)
		---@type QuickCastSetEntry|false
		local entry = false
		if kind == SPELL or kind == ITEM then
			local out = {}
			manager:GetItemName(set, slot - 1, 0, out)
			---@type string?
			local name = out.ItemName and out.ItemName:ToString()
			if name and name ~= "None" then
				entry = kind == ITEM and ITEM_PREFIX .. name or name
			end
		end
		entries[slot] = entry
	end
	return entries
end

---Writes one entry into a slot of `set`.
---@param manager any
---@param set integer
---@param slot integer 1-based.
---@param entry QuickCastSetEntry
local function write(manager, set, slot, entry)
	local item = entry:match("^" .. ITEM_PREFIX .. "(.+)$")
	if not item then
		manager:SlotSpellFromCode(entry, slot - 1, set)
	elseif manager:GetActiveGroupIndex() == set then
		manager:SlotInventoryItemFromCode(item, ITEM_COUNT, slot - 1)
	else
		manager:UpdateSelectedActionItem(item, "", ITEM, ITEM_HOLDER, set, ITEM_COUNT, slot - 1, 0)
	end
end

---@return QuickCastLoadout
function M.new()
	return setmetatable({}, Loadout)
end

---Writes `writes` into the remembered set, tracking each one.
---@param manager any
---@param writes QuickCastWrite[]
function Loadout:apply(manager, writes)
	local written = self.written --[[@as QuickCastSetEntries]]
	for _, change in ipairs(writes) do
		write(manager, self.set --[[@as integer]], change.slot, change.entry)
		written[change.slot] = change.entry
	end
end

---Writes `entries` into the chosen set and remembers the set and its own
---entries. Does nothing while a set is already written. Call on the game thread.
---@param entries QuickCastSetEntries The entry for each slot, false to leave one.
function Loadout:swap(entries)
	if self.set then
		return
	end
	local manager = managers:get() --[[@as any]]
	if not manager then
		return
	end
	local set = manager:GetActiveGroupIndex()
	local originals = read(manager, set)
	self.set, self.originals, self.written = set, originals, { table.unpack(originals) }
	self:apply(manager, M.plan(originals, entries))
end

---Puts the remembered set's own entries back, whichever set is chosen now.
---Call on the game thread.
function Loadout:restore()
	local written, originals = self.written, self.originals
	if not written or not originals then
		return
	end
	local manager = managers:get() --[[@as any]]
	if not manager then
		return
	end
	self:apply(manager, M.plan(written, originals))
	self:forget()
end

---Drops a swap without writing: the sets it changed are gone (a save loaded).
function Loadout:forget()
	self.set, self.originals, self.written = nil, nil, nil
end

return M
