local Reflect = require("ue4ss.devtools.reflect")
local Format = require("ue4ss.devtools.format")

---Subscribes to UFunctions with RegisterHook and passes each call to the
---tracker as trackCall("Class:Function", { self = object, <Parameter> = value }),
---while a session runs. Hooks last until the mods restart.
---@class DebugHooks
---@field private tracker DevtoolsTracker
---@field private player DebugPlayer
---@field private journal DevtoolsJournal
local Hooks = {}
Hooks.__index = Hooks

---@class DebugHookOptions
---@field player? boolean Only calls on objects of the local player.

---@class DebugClassHookOptions : DebugHookOptions, DebugSelectOptions

---@param tracker DevtoolsTracker
---@param player DebugPlayer
---@param journal DevtoolsJournal Receives errors raised while handling a call.
---@return DebugHooks
function Hooks.new(tracker, player, journal)
	return setmetatable({ tracker = tracker, player = player, journal = journal }, Hooks)
end

---Hooks a function by full path; errors when it is not loaded.
---@param path string
---@param options? DebugHookOptions
function Hooks:add(path, options)
	local fn = Reflect.valid(StaticFindObject(path))
	if not fn then
		error("not loaded: " .. path, 0)
	end
	local names = {}
	for _, parameter in
		ipairs(Reflect.parameters(fn --[[@as UFunction]]))
	do
		if parameter.name ~= "ReturnValue" then
			names[#names + 1] = parameter.name
		end
	end
	local label = Hooks.label(path)
	local player = options and options.player
	RegisterHook(path, function(context, ...)
		if not self.tracker:running() then
			return
		end
		local ok, err = pcall(self.track, self, label, names, player, context, ...)
		if not ok then
			self.journal:write("debug", ("! hook %s: %s"):format(label, tostring(err)))
		end
	end)
end

---"/Script/Phoenix.WandTool:OnRightArmStateChanged" -> "WandTool:OnRightArmStateChanged".
---@param path string
---@return string
function Hooks.label(path)
	return path:match("([^%./]+:[^%./:]+)$") or path
end

---@private
---@param label string
---@param names string[]
---@param player? boolean
---@param context any
function Hooks:track(label, names, player, context, ...)
	local object = Hooks.unwrap(context)
	if player and not self.player:owns(object) then
		return
	end
	local values = table.pack(...)
	local args = { self = object }
	for i = 1, values.n do
		args[names[i] or ("arg" .. i)] = Hooks.unwrap(values[i])
	end
	self.tracker:trackCall(label, args)
end

---The value a UE4SS param holds, or the value itself.
---@private
---@param param any
---@return any
function Hooks.unwrap(param)
	if Format.kind(param) == nil then
		return param
	end
	local ok, value = pcall(function()
		return param:get()
	end)
	return ok and value or param
end

return Hooks
