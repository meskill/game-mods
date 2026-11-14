local Format = require("ue4ss.devtools.format")
local Reflect = require("ue4ss.devtools.reflect")

---Builds the API the experiment receives as `dev` (see README.md). Every
---function delegates to the session; this module only decides names and
---arguments, so the API can change without touching the session.
local Api = {}

---@class DebugObjectOptions
---@field match? string Only properties whose name contains this text, ignoring case.

---@param session DebugSession
---@return DebugApi
function Api.new(session)
	local tracker, player = session.tracker, session.player

	---The functions passed to the experiment as `dev`.
	---@class DebugApi
	local api = {}

	-- Finding things

	---The local player controller, or nil.
	function api.pc()
		return player:controller()
	end

	---The local player's pawn, or nil.
	function api.pawn()
		local controller = player:controller()
		return controller and Reflect.valid(controller.Pawn) or nil
	end

	---The first live instance of a class by short name ("WandTool"), or nil.
	---@param name string
	function api.find(name)
		return Reflect.valid(FindFirstOf(name))
	end

	---One line of text for any value.
	---@param value any
	---@param options? DevtoolsFormatOptions
	function api.fmt(value, options)
		return Format.value(value, options)
	end

	---Logs the values under "debug"; strings as they are.
	function api.log(...)
		session:log(...)
	end

	-- Hooks

	---Hooks a function by full path; while a session runs, its calls are
	---tracked. Errors when the function is not loaded.
	---@param path string
	---@param options? DebugHookOptions
	function api.hook(path, options)
		session.hooks:add(path, options)
	end

	---Hooks every function of a class (see DebugSelectOptions); returns how many.
	---@param class string|UObject
	---@param options? DebugClassHookOptions
	function api.hookClass(class, options)
		return session:hookClass(class, options)
	end

	---Tracks new objects of a class as calls "new <class>" while a session runs.
	---@param class string
	function api.spawned(class)
		session:spawned(class)
	end

	-- Tracking

	api.track = {
		---Starts a tracking session; a running one is stopped first.
		---@param name? string
		start = function(name)
			return session:startTracking(name)
		end,
		---Stops the session; logs and returns its report.
		stop = function()
			return tracker:stop()
		end,
		---Report of a finished session.
		---@param name string
		report = function(name)
			return tracker:report(name)
		end,
		---What differs between two finished sessions.
		---@param baseline string
		---@param name string
		compare = function(baseline, name)
			return tracker:compare(baseline, name)
		end,
		---Tracks a value: its first value in the session, then each change.
		---@param label string
		---@param value any
		value = function(label, value)
			tracker:trackValue(label, value)
		end,
		---Tracks a call with named arguments.
		---@param label string
		---@param args? table<string, any>
		call = function(label, args)
			tracker:trackCall(label, args)
		end,
		---Tracks each property of an object as "<label>.<Property>".
		---@param label string
		---@param object UObject?
		---@param options? DebugObjectOptions
		object = function(label, object, options)
			session:trackObject(label, object, options and options.match)
		end,
	}

	-- Timers

	---Runs fn on the game thread once after ms milliseconds; its values are
	---logged under "debug". Returns the timer id.
	---@param ms integer
	---@param fn fun(): ...
	function api.after(ms, fn)
		return session.timers:after(ms, fn)
	end

	---Runs fn on the game thread every ms milliseconds until it returns true or
	---stop(id) is called. Returns the timer id.
	---@param ms integer
	---@param fn fun(): boolean?
	function api.every(ms, fn)
		return session.timers:every(ms, fn)
	end

	---Stops a timer by id.
	---@param id integer
	function api.stop(id)
		session.timers:stop(id)
	end

	-- Marks and screenshots

	---Writes a numbered "mark" line, e.g. before and after an action.
	---@param text? string
	function api.mark(text)
		return session:mark(text)
	end

	---Has the game take a screenshot; logs the file's path once written.
	---Does nothing outside tracking.
	---@param options? DebugShotOptions
	function api.shot(options)
		if session:tracking() then
			return session.screenshots:take(options)
		end
	end

	return api
end

return Api
