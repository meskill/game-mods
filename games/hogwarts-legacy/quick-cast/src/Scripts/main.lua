-- Casts utility spells without a spell set slot: on the gamepad hold RB (R1)
-- and press a face button; with mouse and keyboard hold the mouse's back thumb
-- button and press 1-4. What each button does depends on the context; see the
-- configuration below. While a modifier is held the chosen spell set shows the
-- buttons' spells (loadout.lua); in the Room of Requirement that also makes
-- the game outline the objects the room's spells act on. There RB's own
-- action, the beasts panel, opens on a plain click only (passthrough.lua).

local Loop = require("ue4ss.loop")
local Clock = require("ue4ss.clock")
local Log = require("ue4ss.log")
local Player = require("hogwarts.player")
local Cast = require("hogwarts.cast")
local Input = require("hogwarts.input")
local Actions = require("actions")
local Beasts = require("beasts")
local Conjuration = require("conjuration")
local Combos = require("combos")
local Loadout = require("loadout")
local Passthrough = require("passthrough")

-- Configuration ---------------------------------------------------------------
--
-- Change actions in BUTTONS, keys in DEVICES. A new context also needs a
-- check in contexts() below. Key names are those in the game's Input.ini
-- (%LOCALAPPDATA%/Hogwarts Legacy/Saved/Config/WindowsNoEditor).

-- An action is a spell's record name (see hogwarts.cast), e.g. "Lumos", or an
-- inventory item to use as the game's own buttons do, on the beast in focus:
-- { item = "CaptureDevice" } is the Nab-Sack, "CreaturePettingBrush" the
-- brush, "CreatureFeed" the beast food. `holder` defaults to
-- "Toolbox_Storage", where these creature tools are kept. Spell names are
-- record names (`DA_<Name>SpellRecord`): Evanesco is "Vanishment".

-- Contexts, highest priority first:
-- - beast:   a beast in focus, out of combat; first, so beasts in a vivarium
--            can be tended too;
-- - room:    in the Room of Requirement or a vivarium;
-- - default: anywhere.
-- A button takes the action of the first context it lists that applies now;
-- with none, it does nothing.
local CONTEXTS = { "beast", "room", "default" }

---The actions of the button at each position, by context, for every device.
---@type table<string, QuickCastContextActions>
local BUTTONS = {
	top = { default = "Lumos" },
	-- room: Evanesco, remove an object; beast: catch it with the Nab-Sack
	right = { default = "Wingardium", room = "Vanishment", beast = { item = "CaptureDevice" } },
	-- room: Altering, modify an object; beast: feed it
	bottom = {
		default = "Disillusionment",
		room = "Transformation",
		beast = { item = "CreatureFeed" },
	},
	-- room: Conjuring, create an object; beast: pet it with the brush
	left = { default = "Reparo", room = "Conjuration", beast = { item = "CreaturePettingBrush" } },
}

-- The spell set's slots are the spell diamond's top, right, bottom and left
-- (slots 0-3, fixed by the game). While a modifier is held each slot shows
-- the action its button would run now.
local SET_SLOTS = { "top", "right", "bottom", "left" }

---The keys of one device, as Unreal FKey names.
---@class QuickCastDeviceKeys
---@field modifier string The key to hold.
---@field buttons string[] The key of each set slot, in slot order.
---@field slots? string[] The position of BUTTONS each set slot shows, in slot order; SET_SLOTS by default.
---@field modifierAction? string The game's action on `modifier` that acts at the press, kept off it in the room and passed through on a click (passthrough.lua).

-- A combo is a device's modifier and one of its buttons. One modifier holds at
-- a time (combos.lua); the device listed first wins a tie. To add a device,
-- copy an entry: give all four buttons (devices may share them) and a
-- modifier the game does not use, e.g. ThumbMouseButton2 or LeftAlt, or set
-- its `modifierAction`. `slots` reorders the actions for that device only.
---@type QuickCastDeviceKeys[]
local DEVICES = {
	{
		modifier = "Gamepad_RightShoulder",
		-- The beasts panel, opened by RB in the room's vivariums.
		modifierAction = "UMGCreatureManagementScreen",
		-- Triangle (Y), Circle (B), Cross (A), Square (X).
		buttons = {
			"Gamepad_FaceButton_Top",
			"Gamepad_FaceButton_Right",
			"Gamepad_FaceButton_Bottom",
			"Gamepad_FaceButton_Left",
		},
	},
	{
		-- The mouse's back thumb button (Mouse 4).
		modifier = "ThumbMouseButton",
		-- The spell keys 1-4 (AM_SpellButton1-4).
		buttons = { "One", "Two", "Three", "Four" },
		-- 2: Reparo, Conjuring, brush; 4: Wingardium, Evanesco, Nab-Sack.
		slots = { "top", "left", "bottom", "right" },
	},
}

-- A modifier with a `modifierAction` opens it in the room only when clicked:
-- released within this many seconds with no combo.
local CLICK_MAX_SECONDS = 0.35

-- How often the buttons are read: a button tap lasts about 100 ms, and the
-- game's actions on the buttons are taken off within one poll of a modifier.
local POLL_INTERVAL_MS = 20

--------------------------------------------------------------------------------

local log = Log.new("[QuickCast]")

---@type table<HogwartsCastResult, string>
local FAILURES = {
	unknown = "%s: no such spell record",
	unavailable = "%s: not available yet",
	failed = "%s: the cast failed",
}

-- Where an item action's item is kept unless it says otherwise.
local DEFAULT_HOLDER = "Toolbox_Storage"

---@param player HogwartsPlayer
---@param action QuickCastAction
local function run(player, action)
	if type(action) == "table" then
		local holder = action.holder or DEFAULT_HOLDER
		-- "busy": another tool use runs; starting one now would interrupt it.
		if Beasts.use(player.pawn, action.item, holder) == "failed" then
			log(("%s: the game did not use the item"):format(action.item))
		end
		return
	end
	local result = Cast.spell(player.pawn, action)
	if result ~= "cast" then
		log(FAILURES[result]:format(action))
	end
end

---The context checks for one press.
---@param player HogwartsPlayer
---@return fun(context: string): boolean
local function contexts(player)
	return Actions.checker({
		room = Conjuration.inRoom,
		beast = function()
			return Beasts.focused(player, Conjuration.inRoom()) ~= nil
		end,
		default = function()
			return true
		end,
	})
end

---The entry each set slot shows now, false for none.
---@param slots string[] The position each slot shows.
---@param applies fun(context: string): boolean
---@return QuickCastSetEntries
local function setEntries(slots, applies)
	---@type QuickCastSetEntries
	local entries = {}
	for slot, position in ipairs(slots) do
		local action = BUTTONS[position] and Actions.pick(BUTTONS[position], CONTEXTS, applies)
		entries[slot] = action and Loadout.entry(action) or false
	end
	return entries
end

---A device's game-side state: its buttons' actions and its modifier's clicks.
---@class QuickCastDevice
---@field modifier string
---@field slots string[]
---@field blocker HogwartsInputBlocker
---@field passthrough? QuickCastPassthrough
---@field combined boolean A combo fired in this hold of the modifier.
---@field heldFor number Seconds this hold lasted, as of the last poll.

---@type QuickCastDevice[]
local devices = {}
---@type QuickCastComboDevice[]
local comboDevices = {}
for _, config in ipairs(DEVICES) do
	comboDevices[#comboDevices + 1] = { modifier = config.modifier, buttons = config.buttons }
	devices[#devices + 1] = {
		modifier = config.modifier,
		slots = config.slots or SET_SLOTS,
		-- While the modifier holds the game's actions on these buttons (jump,
		-- dodge, interact, the spell keys, mount actions) are off, so a combo
		-- does only its action.
		blocker = Input.blocker(config.buttons),
		passthrough = config.modifierAction and Passthrough.new({
			key = config.modifier,
			-- Only on the modifier: the action's other keys (the panel's keyboard
			-- key) keep working.
			blocker = Input.actionBlocker({ config.modifierAction }, { config.modifier }),
			simulate = Input.simulate,
			now = Clock.now,
		}),
		combined = false,
		heldFor = 0,
	}
end

local combos = Combos.new(comboDevices)
local keys = Input.tracker(combos:keys())
local set = Loadout.new()
-- The contexts read when the current hold started: its combos run what the
-- set shows, also after turning away from a beast.
---@type (fun(context: string): boolean)?
local holdContexts
-- The device whose slot order the written set shows.
---@type QuickCastDevice?
local shownBy

Loop.gameThread(POLL_INTERVAL_MS, function()
	local player = Player.find()
	if not player then
		-- Loading or the title screen: the sets written to may be gone.
		set:forget()
		shownBy = nil
	end
	-- Out of gameplay (menus, where controls can be rebound): the game keeps
	-- its buttons. On foot and on a mount alike, every combo acts. The written
	-- set stays until gameplay resumes with no modifier holding, so a menu
	-- opened by a spell (Altering's) keeps it.
	if not player or not player.active then
		keys:reset()
		combos:reset()
		for _, device in ipairs(devices) do
			device.blocker:reset()
			-- The panel a click opened is out of gameplay too: its release goes now.
			if device.passthrough then
				device.passthrough:reset(player and player.controller)
			end
			device.combined, device.heldFor = false, 0
		end
		-- A menu keeps the hold's contexts, as it keeps the set; a load drops them.
		if not player then
			holdContexts = nil
		end
		return
	end
	local inRoom = Conjuration.inRoom()
	for _, device in ipairs(devices) do
		if device.passthrough then
			device.passthrough:update(player.controller, inRoom)
		end
	end
	keys:update(player.controller)
	local owner, started, pressed = combos:update(keys)
	for index, device in ipairs(devices) do
		if index == owner then
			device.combined = device.combined or pressed ~= nil
		else
			device.blocker:restore()
		end
		if keys:isDown(device.modifier) then
			device.heldFor = keys:heldFor(device.modifier)
		end
		-- In the room a plain click of the modifier goes to the game after all,
		-- also one made while the other device's modifier holds.
		if keys:released(device.modifier) then
			if device.passthrough and inRoom and not device.combined and device.heldFor <= CLICK_MAX_SECONDS then
				device.passthrough:click(player.controller)
			end
			device.combined, device.heldFor = false, 0
		end
	end
	-- Only the holding modifier's device has its buttons off for the game. Blocked
	-- after the others are restored: devices may share buttons, and a block
	-- reads the mappings it takes from the settings.
	local holding = owner and devices[owner]
	if holding then
		holding.blocker:block()
	else
		set:restore()
		holdContexts, shownBy = nil, nil
	end
	-- The set is written when a hold starts, at least one poll before a combo
	-- can fire (combos.lua), so the room's outlines are up by the cast.
	-- Contexts are read for it then and kept for the whole hold: the combos
	-- run what the set shows, also after turning away from a beast. A hold
	-- passing straight to another device keeps the contexts; the set is
	-- rewritten in that device's slot order.
	if holding and started then
		if shownBy and shownBy ~= holding then
			set:restore()
		end
		holdContexts = holdContexts or contexts(player)
		set:swap(setEntries(holding.slots, holdContexts))
		shownBy = holding
	end
	if not holding or not pressed then
		return
	end
	-- A hold that began out of gameplay has none yet: read them at its first
	-- combo, and keep them too.
	holdContexts = holdContexts or contexts(player)
	for _, slot in ipairs(pressed) do
		local action = Actions.pick(BUTTONS[holding.slots[slot]], CONTEXTS, holdContexts)
		if action then
			run(player, action)
		end
	end
end, function(message)
	log("Update failed: " .. message)
end)

log("Quick cast started")
