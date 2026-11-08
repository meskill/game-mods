---Runs functions later or repeatedly on the game thread with UE4SS's
---ExecuteInGameThreadWithDelay and LoopInGameThreadWithDelay, so no Lua runs on
---UE4SS's async thread (RE-UE4SS issue #168). Errors go to the log instead of
---UE4SS.log, and stop() ends timers that are still waiting. Stopped and
---finished every() timers stay registered and do nothing: cancelling from
---inside a callback edits the list UE4SS is iterating (issue #1180). While
---`enabled` returns false, runs are skipped.
---@class DebugTimers
---@field private journal DevtoolsJournal
---@field private scope string
---@field private format fun(value: any): string
---@field private enabled fun(): boolean
---@field private timers table<integer, DebugTimer?>
---@field private count integer
local Timers = {}
Timers.__index = Timers

---@class DebugTimer
---@field active boolean
---@field name string "after#<id>" or "every#<id>", shown with its errors.

---@param journal DevtoolsJournal
---@param scope string Scope of everything timers log.
---@param format fun(value: any): string Text of values returned by after().
---@param enabled? fun(): boolean Whether runs happen now; always by default.
---@return DebugTimers
function Timers.new(journal, scope, format, enabled)
	return setmetatable({
		journal = journal,
		scope = scope,
		format = format,
		enabled = enabled or function()
			return true
		end,
		timers = {},
		count = 0,
	}, Timers)
end

---Runs fn once on the game thread after ms milliseconds and logs its values;
---dropped if disabled by then.
---@param ms integer
---@param fn fun(): ...
---@return integer id
function Timers:after(ms, fn)
	local id, timer = self:create("after")
	ExecuteInGameThreadWithDelay(ms, function()
		if not timer.active then
			return
		end
		timer.active = false
		self.timers[id] = nil
		if not self.enabled() then
			return
		end
		local result = self:run(timer, fn)
		if result then
			for i = 1, result.n do
				self.journal:write(self.scope, "= " .. self.format(result[i]))
			end
		end
	end)
	return id
end

---Runs fn on the game thread every ms milliseconds until it returns true or
---the timer is stopped. Runs while disabled are skipped and the timer kept.
---Errors are logged with the timer's name and do not stop it.
---@param ms integer
---@param fn fun(): boolean?
---@return integer id
function Timers:every(ms, fn)
	local id, timer = self:create("every")
	LoopInGameThreadWithDelay(ms, function()
		if not timer.active or not self.enabled() then
			return
		end
		local result = self:run(timer, fn)
		if result and result[1] == true then
			timer.active = false
			self.timers[id] = nil
		end
	end)
	return id
end

---Stops a timer, or every timer with "*".
---@param id integer|"*"
---@return integer stopped
function Timers:stop(id)
	local stopped = 0
	for timerId, timer in pairs(self.timers) do
		if id == "*" or id == timerId then
			timer.active = false
			self.timers[timerId] = nil
			stopped = stopped + 1
		end
	end
	return stopped
end

---@private
---@param kind "after"|"every"
---@return integer id
---@return DebugTimer timer
function Timers:create(kind)
	self.count = self.count + 1
	local id = self.count
	---@type DebugTimer
	local timer = { active = true, name = ("%s#%d"):format(kind, id) }
	self.timers[id] = timer
	return id, timer
end

---Runs fn; logs an error with the timer's name and returns nil if it fails.
---@private
---@param timer DebugTimer
---@param fn fun(): ...
---@return table? result Packed values of fn.
function Timers:run(timer, fn)
	local ok, result = pcall(function()
		return table.pack(fn())
	end)
	if not ok then
		self.journal:write(self.scope, ("! %s: %s"):format(timer.name, tostring(result)))
		return nil
	end
	return result
end

return Timers
