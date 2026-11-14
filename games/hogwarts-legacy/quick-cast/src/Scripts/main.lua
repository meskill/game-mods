-- Casts utility spells from the gamepad without a spell set slot: hold RB (R1)
-- and press a face button. What each button does depends on the context; see the
-- configuration below. While RB is held the chosen spell set shows the
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

-- The button to hold.
local MODIFIER = "Gamepad_RightShoulder"

-- An action is a spell's record name (see hogwarts.cast), e.g. "Lumos", or an
-- inventory item to use as the game's own buttons do, on the beast in focus:
-- { item = "CaptureDevice" } is the Nab-Sack, "CreaturePettingBrush" the
-- brush, "CreatureFeed" the beast food. `holder` defaults to
-- "Toolbox_Storage", where these creature tools are kept.

-- Contexts, highest priority first:
-- - beast:   a beast in focus, out of combat; first, so beasts in a vivarium
--            can be tended too;
-- - room:    in the Room of Requirement or a vivarium;
-- - default: anywhere.
-- A button takes the action of the first context it lists that applies now;
-- with none, it does nothing.
local CONTEXTS = { "beast", "room", "default" }

-- Face buttons by position: Top is Triangle (Y), Right Circle (B), Bottom
-- Cross (A), Left Square (X).

---The actions of each button pressed with MODIFIER, by context.
---@type table<string, QuickCastContextActions>
local BUTTONS = {
	Gamepad_FaceButton_Top = { default = "Lumos" },
	-- room: Altering, modify an object; beast: catch it with the Nab-Sack
	Gamepad_FaceButton_Bottom = {
		default = "Disillusionment",
		room = "Transformation",
		beast = { item = "CaptureDevice" },
	},
	-- room: Conjuring, create an object; beast: pet it with the brush
	Gamepad_FaceButton_Left = { default = "Reparo", room = "Conjuration", beast = { item = "CreaturePettingBrush" } },
	-- room: Evanesco, remove an object; beast: feed it
	Gamepad_FaceButton_Right = { default = "Wingardium", room = "Vanishment", beast = { item = "CreatureFeed" } },
}

-- The button of each slot of a spell set, in slot order: the spell diamond's
-- top, right, bottom and left, the same places as the face buttons. While
-- MODIFIER is held each slot shows its button's action, spell or item, as the
-- button would run it now.
local SET_SLOTS = {
	"Gamepad_FaceButton_Top",
	"Gamepad_FaceButton_Right",
	"Gamepad_FaceButton_Bottom",
	"Gamepad_FaceButton_Left",
}

-- In the room the game's beasts panel is on MODIFIER and opens at the press;
-- there it opens only when MODIFIER is clicked: released within this many
-- seconds with no combo.
local CLICK_MAX_SECONDS = 0.35
-- The game's action for the beasts panel, taken off MODIFIER in the room.
local ROOM_MODIFIER_ACTION = "UMGCreatureManagementScreen"

-- How often the buttons are read: a button tap lasts about 100 ms, and the
-- game's actions on the buttons are taken off within one poll of MODIFIER.
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
			return Beasts.focused(player) ~= nil
		end,
		default = function()
			return true
		end,
	})
end

---@type string[]
local buttons = {}
for button in pairs(BUTTONS) do
	buttons[#buttons + 1] = button
end
table.sort(buttons)

---The entry each set slot shows now, false for none.
---@param applies fun(context: string): boolean
---@return QuickCastSetEntries
local function setEntries(applies)
	---@type QuickCastSetEntries
	local entries = {}
	for slot, button in ipairs(SET_SLOTS) do
		local action = BUTTONS[button] and Actions.pick(BUTTONS[button], CONTEXTS, applies)
		entries[slot] = action and Loadout.entry(action) or false
	end
	return entries
end

local combos = Combos.new(MODIFIER, buttons)
local keys = Input.tracker(combos:keys())
-- While MODIFIER is held the game's actions on these buttons (the compass,
-- heal, Revelio, menus, mount actions) are off, so a combo does only its action.
local blocker = Input.blocker(buttons)
local set = Loadout.new()
local passthrough = Passthrough.new({
	key = MODIFIER,
	blocker = Input.actionBlocker({ ROOM_MODIFIER_ACTION }),
	simulate = Input.simulate,
	now = Clock.now,
})
-- The current hold of MODIFIER: whether a combo fired, and how long it lasted.
local combined, heldFor = false, 0.0

Loop.gameThread(POLL_INTERVAL_MS, function()
	local player = Player.find()
	if not player then
		-- Loading or the title screen: the sets written to may be gone.
		set:forget()
	end
	-- Out of gameplay (menus, where controls can be rebound): the game keeps
	-- its buttons. On foot and on a mount alike, every combo acts. The written
	-- set stays until gameplay resumes with MODIFIER up, so a menu opened by a
	-- spell (Altering's) keeps it.
	if not player or not player.active then
		keys:reset()
		blocker:reset()
		-- The panel a click opened is out of gameplay too: its release goes now.
		passthrough:reset(player and player.controller)
		combined, heldFor = false, 0
		return
	end
	local inRoom = Conjuration.inRoom()
	passthrough:update(player.controller, inRoom)
	keys:update(player.controller)
	local held, pressed = combos:update(keys)
	if held then
		blocker:block()
		combined = combined or pressed ~= nil
		heldFor = keys:heldFor(MODIFIER)
	else
		blocker:restore()
		set:restore()
	end
	-- In the room a plain click of MODIFIER goes to the game after all.
	if keys:released(MODIFIER) then
		if inRoom and not combined and heldFor <= CLICK_MAX_SECONDS then
			passthrough:click(player.controller)
		end
		combined, heldFor = false, 0
	end
	-- The set is written when MODIFIER goes down, at least one poll before a
	-- combo can fire (combos.lua), so the room's outlines are up by the cast.
	-- Contexts are read for it then; a context changing while MODIFIER is
	-- held changes the cast, not the set shown.
	if held and keys:pressed(MODIFIER) then
		set:swap(setEntries(contexts(player)))
	end
	if not pressed then
		return
	end
	-- Contexts are read on a combo only, and only those a button lists.
	local applies = contexts(player)
	for _, button in ipairs(pressed) do
		local action = Actions.pick(BUTTONS[button], CONTEXTS, applies)
		if action then
			run(player, action)
		end
	end
end, function(message)
	log("Update failed: " .. message)
end)

log("Quick cast started")
