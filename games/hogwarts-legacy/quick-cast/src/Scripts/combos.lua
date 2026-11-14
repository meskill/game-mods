-- Button combos: hold a modifier, press a button.
--
-- A button counts when it goes down while the modifier is held, once per
-- press. A button already down when the modifier goes down, or going down in
-- the same poll, does not: the game took that press before the mod could
-- block it.

---@class QuickCastCombos
---@field private modifier string
---@field private buttons string[]
local Combos = {}
Combos.__index = Combos

local M = {}

---@param modifier string The FKey name of the button to hold.
---@param buttons string[] The FKey names of the buttons pressed with it, e.g. "Gamepad_FaceButton_Top".
---@return QuickCastCombos
function M.new(modifier, buttons)
	return setmetatable({ modifier = modifier, buttons = buttons }, Combos)
end

---The keys update() reads, for the tracker: the modifier, then the buttons.
---@return string[]
function Combos:keys()
	local names = { self.modifier }
	for _, button in ipairs(self.buttons) do
		names[#names + 1] = button
	end
	return names
end

---Reads the combos from the tracker's last update.
---@param keys HogwartsKeyTracker Tracks keys().
---@return boolean held Whether the modifier is held.
---@return string[]? pressed The buttons pressed with the modifier, in the order given to new().
function Combos:update(keys)
	if not keys:isDown(self.modifier) then
		return false, nil
	end
	if keys:pressed(self.modifier) then
		return true, nil
	end
	---@type string[]?
	local pressed
	for _, button in ipairs(self.buttons) do
		if keys:pressed(button) then
			pressed = pressed or {}
			pressed[#pressed + 1] = button
		end
	end
	return true, pressed
end

return M
