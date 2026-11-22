-- Button combos: hold a device's modifier, press one of its buttons.
--
-- One modifier holds at a time. The one that goes down while none holds owns
-- the hold until it goes up; only its device's buttons count meanwhile.
-- Another modifier pressed during the hold is a plain key, for the game, and
-- stays one until it is pressed again. Two pressed in the same poll: the first
-- device given owns the hold.
--
-- A button counts when it goes down during the hold, once per press. A button
-- already down when the hold starts, or going down in the same poll, does
-- not: the game took that press before the mod could block it.

---The keys of one device, as Unreal FKey names.
---@class QuickCastComboDevice
---@field modifier string The key to hold.
---@field buttons string[] The keys pressed with it, by slot.

---@class QuickCastCombos
---@field private devices QuickCastComboDevice[]
---@field private owner? integer The device whose modifier holds.
local Combos = {}
Combos.__index = Combos

local M = {}

---@param devices QuickCastComboDevice[] By priority.
---@return QuickCastCombos
function M.new(devices)
	return setmetatable({ devices = devices }, Combos)
end

---The keys update() reads, for the tracker: each device's modifier, then its
---buttons, each key once (devices may share buttons; the tracker reads a key
---listed twice as never pressed).
---@return string[]
function Combos:keys()
	local names, seen = {}, {}
	for _, device in ipairs(self.devices) do
		for _, name in ipairs({ device.modifier, table.unpack(device.buttons) }) do
			if not seen[name] then
				seen[name] = true
				names[#names + 1] = name
			end
		end
	end
	return names
end

---Reads the combos from the tracker's last update.
---@param keys HogwartsKeyTracker Tracks keys().
---@return integer? owner The device whose modifier holds, nil for none.
---@return boolean started Whether its hold began at this update.
---@return integer[]? pressed The slots of the owner's buttons pressed, in order.
function Combos:update(keys)
	local owner = self.owner
	local holding = owner and self.devices[owner]
	if holding and not keys:isDown(holding.modifier) then
		owner, holding = nil, nil
	end
	local started = false
	if not owner then
		for index, device in ipairs(self.devices) do
			if keys:pressed(device.modifier) then
				owner, holding, started = index, device, true
				break
			end
		end
	end
	self.owner = owner
	if not holding or started then
		return owner, started, nil
	end
	---@type integer[]?
	local pressed
	for slot, button in ipairs(holding.buttons) do
		if keys:pressed(button) then
			pressed = pressed or {}
			pressed[#pressed + 1] = slot
		end
	end
	return owner, started, pressed
end

---Ends the hold, e.g. when the player leaves gameplay.
function Combos:reset()
	self.owner = nil
end

return M
