-- Keeps a game action off the modifier where the game acts at the press, and
-- passes a plain click of the modifier through to the game.
--
-- Why: in the Room of Requirement's vivariums RB opens the beasts panel at the
-- press (`UMGCreatureManagementScreen`), before the mod can tell a click from
-- a hold for a combo. So the action's mappings stay off while the player is
-- there, and a click is replayed once RB is up.
--
-- How (devtools `experiments/vivarium.lua`, runs 1-3):
-- - Removing the action's mappings (`hogwarts.input` action blocker) keeps
--   the panel shut; the other mappings on RB stay.
-- - Calling the state tree's input event (`CreatureManagementButton`) or the
--   UI's `UMGInputManager:OnInputAction` from Lua opens nothing: the game has
--   to see the key. The replay puts the mappings back and sends a press, the
--   release REPLAY_STEP later, and blocks again another REPLAY_STEP later.

-- Seconds between the replayed press and release, and between the release
-- and blocking again.
local REPLAY_STEP = 0.1

---@class QuickCastPassthroughOptions
---@field key string The key to replay, e.g. "Gamepad_RightShoulder".
---@field blocker HogwartsInputBlocker Takes the action's mappings.
---@field simulate fun(controller: APlayerController, key: string, event: integer) Sends a key event (hogwarts.input simulate).
---@field now fun(): number Seconds that never go backwards.

---@class QuickCastPassthrough
---@field private options QuickCastPassthroughOptions
---@field private stage? "pressed"|"released" The replay under way.
---@field private at number When the replay's press was sent.
local Passthrough = {}
Passthrough.__index = Passthrough

-- EInputEvent values.
local PRESSED, RELEASED = 0, 1

local M = {}

---@param options QuickCastPassthroughOptions
---@return QuickCastPassthrough
function M.new(options)
	return setmetatable({ options = options, at = 0 }, Passthrough)
end

---Call every poll in gameplay, on the game thread: blocks the action while
---`blocking`, puts it back otherwise, and moves a replay on.
---@param controller APlayerController
---@param blocking boolean
function Passthrough:update(controller, blocking)
	local options = self.options
	local elapsed = options.now() - self.at
	if self.stage == "pressed" and elapsed >= REPLAY_STEP then
		self.stage = "released"
		options.simulate(controller, options.key, RELEASED)
	end
	if self.stage == "released" and elapsed >= 2 * REPLAY_STEP then
		self.stage = nil
	end
	if self.stage then
		return
	end
	if blocking then
		options.blocker:block()
	else
		options.blocker:restore()
	end
end

---Passes a click to the game: the action's mappings back, then a press; the
---release follows in update(). Does nothing while a replay is under way.
---@param controller APlayerController
function Passthrough:click(controller)
	if self.stage then
		return
	end
	local options = self.options
	options.blocker:restore()
	self.stage, self.at = "pressed", options.now()
	options.simulate(controller, options.key, PRESSED)
end

---Leaving gameplay (the panel a replay opened, any menu): ends a replay,
---sending its release now, and puts the mappings back so the controls menu
---sees them.
---@param controller? APlayerController
function Passthrough:reset(controller)
	local pressed = self.stage == "pressed"
	self.stage = nil
	self.options.blocker:reset()
	if pressed and controller then
		self.options.simulate(controller, self.options.key, RELEASED)
	end
end

return M
