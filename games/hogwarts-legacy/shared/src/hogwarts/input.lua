-- Gamepad, keyboard and mouse keys read from the player controller, tracked
-- between polls, the game's action mappings taken off keys or actions while a
-- mod uses them, and key events sent to the game as if the player made them.
--
-- Key names are Unreal's FKey names, e.g. "Gamepad_RightShoulder", "One" or
-- "ThumbMouseButton". A Lua mod cannot consume input: the game sees every
-- press. The game binds its actions (Revelio, heal, the compass, spell
-- sets, menus) as action mappings in the engine's input settings, so a blocker
-- removes the mappings on its keys and puts them back; key states, read with
-- isDown() or a tracker, do not depend on them.

local Clock = require("ue4ss.clock")
local Objects = require("ue4ss.objects")

local MASTERMIND = "/Script/Mastermind.Default__MastermindBPLibrary"

local SETTINGS = "/Script/Engine.Default__InputSettings"

---An action mapping as plain Lua values, to put it back after removing it.
---@class HogwartsInputMapping
---@field action string
---@field key string
---@field shift boolean
---@field ctrl boolean
---@field alt boolean
---@field cmd boolean
---@field group string
---@field sort integer

local Input = {}

---@type table<string, FKey>
local keys = {}

---The FKey for a key name, as UE4SS takes a struct: a table of its fields.
---Made on first use, on the game thread.
---@param name string
---@return FKey
local function key(name)
	local found = keys[name]
	if not found then
		found = { KeyName = FName(name) }
		keys[name] = found
	end
	return found
end

---Whether the key is held, as the controller's input sees it; also while a
---blocker has taken its action mappings. Call on the game thread.
---@param controller APlayerController
---@param name string
---@return boolean
function Input.isDown(controller, name)
	return controller:IsInputKeyDown(key(name))
end

---One key of a tracker, as of its last update.
---@class HogwartsKeyState
---@field down boolean
---@field pressed boolean Went down at the last update.
---@field released boolean Went up at the last update.
---@field since number The update time it went down.

---Follows a set of keys from poll to poll: presses, releases and how long
---each key is held. Times have the resolution of the polls: a key goes down
---at the update that first sees it down, and a press and release between two
---updates is missed.
---@class HogwartsKeyTracker
---@field private names string[]
---@field private states table<string, HogwartsKeyState>
---@field private now fun(): number
---@field private time number The last update's time.
---@field private primed boolean An update ran since creation or reset().
local Tracker = {}
Tracker.__index = Tracker

---@param names string[] The keys to follow.
---@param now? fun(): number Seconds that never go backwards; defaults to ue4ss.clock.
---@return HogwartsKeyTracker
function Input.tracker(names, now)
	local states = {}
	for _, name in ipairs(names) do
		states[name] = { down = false, pressed = false, released = false, since = 0 }
	end
	return setmetatable({ names = names, states = states, now = now or Clock.now, time = 0, primed = false }, Tracker)
end

---Reads every key once. Call on the game thread, once per poll.
---@param controller APlayerController
function Tracker:update(controller)
	local now = self.now()
	-- The first update after creation or a reset sees no edges: a key already
	-- held then was pressed before the tracker could tell.
	local primed = self.primed
	for _, name in ipairs(self.names) do
		local state = self.states[name]
		local down = Input.isDown(controller, name)
		local was = state.down
		if not primed then
			was = down
		end
		state.pressed = down and not was
		state.released = was and not down
		-- Keys start up, and reset() puts them up: a held key counts from here.
		if down and not state.down then
			state.since = now
		end
		state.down = down
	end
	self.time, self.primed = now, true
end

---Forgets the keys, e.g. when the player leaves gameplay: until the next
---update every key is up, and that update reports no press or release.
function Tracker:reset()
	for _, state in pairs(self.states) do
		state.down, state.pressed, state.released = false, false, false
	end
	self.primed = false
end

---@private
---@param name string
---@return HogwartsKeyState
function Tracker:state(name)
	return self.states[name] or error("key not tracked: " .. name)
end

---Whether the key was down at the last update.
---@param name string
---@return boolean
function Tracker:isDown(name)
	return self:state(name).down
end

---Whether the key went down at the last update.
---@param name string
---@return boolean
function Tracker:pressed(name)
	return self:state(name).pressed
end

---Whether the key went up at the last update.
---@param name string
---@return boolean
function Tracker:released(name)
	return self:state(name).released
end

---Seconds the key has been held as of the last update, 0 while it is up. Also
---counts from the first update after a reset for a key held through it.
---@param name string
---@return number
function Tracker:heldFor(name)
	local state = self:state(name)
	return state.down and self.time - state.since or 0
end

-- A struct's FName is a UE4SS FName wrapper, not a Lua string.
local function text(name)
	return name:ToString()
end

---@param mapping FInputActionKeyMapping
---@return HogwartsInputMapping
local function copy(mapping)
	return {
		action = text(mapping.ActionName),
		key = text(mapping.Key.KeyName),
		shift = mapping.bShift,
		ctrl = mapping.bCtrl,
		alt = mapping.bAlt,
		cmd = mapping.bCmd,
		group = text(mapping.GroupName),
		sort = mapping.SortIndex,
	}
end

---The mapping as a struct parameter: all its fields, as the settings compare them.
---@param mapping HogwartsInputMapping
---@return FInputActionKeyMapping
local function struct(mapping)
	return {
		ActionName = FName(mapping.action),
		Key = key(mapping.key),
		bShift = mapping.shift,
		bCtrl = mapping.ctrl,
		bAlt = mapping.alt,
		bCmd = mapping.cmd,
		GroupName = FName(mapping.group),
		SortIndex = mapping.sort,
	} --[[@as FInputActionKeyMapping]]
end

---Takes the game's action mappings off a set of keys, or a set of actions,
---while blocked.
---@class HogwartsInputBlocker
---@field private names table<string, boolean?> Key or action names.
---@field private field "key"|"action" What the names are.
---@field private keys? table<string, boolean?> For actions: only their mappings on these keys.
---@field private found? HogwartsInputMapping[] The mappings blocked, read at the first block.
---@field private blocked boolean
local Blocker = {}
Blocker.__index = Blocker

---@param list string[]
---@return table<string, boolean?>
local function lookup(list)
	local set = {}
	for _, name in ipairs(list) do
		set[name] = true
	end
	return set
end

---@param names string[]
---@param field "key"|"action"
---@param onKeys? string[]
---@return HogwartsInputBlocker
local function newBlocker(names, field, onKeys)
	return setmetatable({ names = lookup(names), field = field, keys = onKeys and lookup(onKeys), blocked = false }, Blocker)
end

---@param names string[] Key names whose action mappings to take.
---@return HogwartsInputBlocker
function Input.blocker(names)
	return newBlocker(names, "key")
end

---@param actions string[] Action names whose mappings to take, e.g. "UMGCreatureManagementScreen".
---@param onKeys? string[] Take only their mappings on these keys; on every key without.
---@return HogwartsInputBlocker
function Input.actionBlocker(actions, onKeys)
	return newBlocker(actions, "action", onKeys)
end

---@private
---@param settings UInputSettings
---@return HogwartsInputMapping[]
function Blocker:scan(settings)
	local mappings = settings.ActionMappings
	local found = {}
	-- By index: TArray:ForEach failed in UE4SS 3.0.1 (see ue4ss devtools format.lua).
	for i = 1, mappings:GetArrayNum() do
		local mapping = mappings[i]
		local keyName = text(mapping.Key.KeyName)
		local name = self.field == "key" and keyName or text(mapping.ActionName)
		if self.names[name] and (not self.keys or self.keys[keyName]) then
			found[#found + 1] = copy(mapping)
		end
	end
	return found
end

---Removes every action mapping on the keys or of the actions until restore(), so the game does
---not act on them. Does nothing while blocked. The mappings are read at the
---first block after creation or reset(). Call on the game thread.
function Blocker:block()
	if self.blocked then
		return
	end
	local settings = Objects.find(SETTINGS) --[[@as UInputSettings?]]
	if not settings then
		return
	end
	local found = self.found or self:scan(settings)
	self.found = found
	-- Before the game calls: if one fails, restore() puts back all of them.
	self.blocked = true
	if #found == 0 then
		return
	end
	for _, mapping in ipairs(found) do
		settings:RemoveActionMapping(struct(mapping), false)
	end
	settings:ForceRebuildKeymaps()
end

---Puts the removed mappings back. Does nothing unless blocked. Call on the
---game thread.
function Blocker:restore()
	if not self.blocked then
		return
	end
	self.blocked = false
	local found = self.found --[[@as HogwartsInputMapping[] ]]
	local settings = Objects.find(SETTINGS) --[[@as UInputSettings?]]
	if #found == 0 or not settings then
		return
	end
	-- Adding is unique: a mapping that a failed block left in place stays single.
	for _, mapping in ipairs(found) do
		settings:AddActionMapping(struct(mapping), false)
	end
	settings:ForceRebuildKeymaps()
end

---Restores, and reads the mappings again at the next block: call when the
---player leaves gameplay, where they can rebind the controls.
function Blocker:reset()
	self:restore()
	self.found = nil
end

---`EInputEvent` values for simulate().
---@enum HogwartsInputEvent
Input.Event = {
	PRESSED = 0,
	RELEASED = 1,
}

---Sends a key event to the game as if the player made it, through the game's
---test automation (`MastermindBPLibrary:SimulateInput`): the game's action
---mappings act on it as on a real press. A press needs its release sent too.
---Verified in game for RB's beasts panel (`UMGCreatureManagementScreen`); the
---state tree's spell set keys ignored `SimulateTappedInput`. Call on the game
---thread.
---@param controller APlayerController
---@param name string
---@param event HogwartsInputEvent
function Input.simulate(controller, name, event)
	local mastermind = Objects.find(MASTERMIND) --[[@as any]]
	if not mastermind then
		error("no MastermindBPLibrary")
	end
	mastermind:SimulateInput(controller, key(name), event)
end

return Input
