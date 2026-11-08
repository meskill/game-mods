-- The game's menus: the Field Guide (pause menu and its pages) opening and
-- closing, from hooks on the UIManager functions that open and close it. The
-- game pauses immediately on opening and resumes with a delay after closing.
-- A menu already open when the hooks are installed is not seen until it
-- closes and opens again.

local OPEN = "/Script/Phoenix.UIManager:FieldGuideMenuStart"
local CLOSE = "/Script/Phoenix.UIManager:ExitFieldGuideWithReason"

---Called on the game thread, inside the hooked call.
---@class HogwartsMenuListener
---@field opened? fun() A menu opened.
---@field closed? fun() The open menu closed; the game is still paused.

local Menus = {}

local open = false
local hooked = false
---@type HogwartsMenuListener[]
local listeners = {}

---@param event "opened"|"closed"
local function notify(event)
	-- A copy, so listeners may unsubscribe while being notified.
	for _, listener in ipairs({ table.unpack(listeners) }) do
		local callback = listener[event]
		if callback then
			callback()
		end
	end
end

local function hook()
	if hooked then
		return
	end
	RegisterHook(OPEN, function()
		if not open then
			open = true
			notify("opened")
		end
	end)
	RegisterHook(CLOSE, function()
		if open then
			open = false
			notify("closed")
		end
	end)
	hooked = true
end

---Whether a menu is open, as of the last hooked call.
---@return boolean
function Menus.isOpen()
	return open
end

---Calls the listener whenever a menu opens or closes. Installs the hooks on
---first use.
---@param listener HogwartsMenuListener
---@return fun() unsubscribe
function Menus.subscribe(listener)
	hook()
	listeners[#listeners + 1] = listener
	return function()
		for i, candidate in ipairs(listeners) do
			if candidate == listener then
				table.remove(listeners, i)
				return
			end
		end
	end
end

return Menus
