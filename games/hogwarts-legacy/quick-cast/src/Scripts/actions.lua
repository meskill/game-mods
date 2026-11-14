-- Picks a button's action by context: each button maps contexts to actions,
-- and the first context in priority order that the button has and that
-- applies now wins. Contexts are checked only when a button names them.

---An inventory item to use, as the game's own buttons do.
---@class QuickCastItemAction
---@field item string The item's InventoryObjectID, e.g. "CaptureDevice".
---@field holder? string Its HolderID; defaults to "Toolbox_Storage".

---A spell's record name (see hogwarts.cast), or an inventory item.
---@alias QuickCastAction string|QuickCastItemAction

---A button's actions by context name, e.g. { default = "Lumos", room = "Conjuration" }.
---@alias QuickCastContextActions table<string, QuickCastAction>

local Actions = {}

---The action for a button now, or nil when no listed context applies.
---@param byContext QuickCastContextActions
---@param order string[] Context names, highest priority first.
---@param applies fun(context: string): boolean Whether a context applies now.
---@return QuickCastAction?
function Actions.pick(byContext, order, applies)
	for _, context in ipairs(order) do
		local action = byContext[context]
		if action and applies(context) then
			return action
		end
	end
	return nil
end

---Caches each context's check for one press: several buttons in one poll
---check each context once.
---@param checks table<string, fun(): boolean>
---@return fun(context: string): boolean
function Actions.checker(checks)
	---@type table<string, boolean>
	local seen = {}
	return function(context)
		local result = seen[context]
		if result == nil then
			local check = checks[context] or error("unknown context: " .. context)
			result = check()
			seen[context] = result
		end
		return result
	end
end

return Actions
