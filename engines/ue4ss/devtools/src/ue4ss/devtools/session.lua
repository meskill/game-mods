local Tracking = require("devtools.tracking")
local Format = require("ue4ss.devtools.format")
local Reflect = require("ue4ss.devtools.reflect")
local Player = require("ue4ss.devtools.player")
local Hooks = require("ue4ss.devtools.hooks")
local Timers = require("ue4ss.devtools.timers")
local Screenshot = require("ue4ss.devtools.screenshot")
local Api = require("ue4ss.devtools.api")

---The devtools state of one mod load and what it can do: the tracker with
---its hooked calls, timers, markers, the mark and track keys, screenshots.
---The experiment reaches it through the API built by ue4ss.devtools.api.
---Everything lasts until the mods restart.
---@class DebugSession
---@field api DebugApi What start() returns to the experiment.
---@field journal DevtoolsJournal
---@field player DebugPlayer
---@field tracker DevtoolsTracker
---@field hooks DebugHooks
---@field timers DebugTimers
---@field screenshots DebugScreenshots
---@field private marks integer
---@field private onMark? DebugOnMark
local Session = {}
Session.__index = Session

---@class DebugSessionOptions
---@field dir string Output directory: debug.log and shots/.
---@field callsInterval? integer Milliseconds between logged calls of one label (devtools.tracking).
---@field onMark? DebugOnMark Called after each mark.

---Called after each mark, from the mark key or dev.mark(); errors are logged.
---@alias DebugOnMark fun(dev: DebugApi, mark: integer, text?: string)

-- Scope of lines logged by the experiment: log(), timer values, errors.
local SCOPE = "debug"

---@param journal DevtoolsJournal
---@param options DebugSessionOptions
---@return DebugSession
function Session.new(journal, options)
	local player = Player.new()
	local tracker = Tracking.new({
		journal = journal,
		format = Format.instance(),
		callsInterval = options.callsInterval,
	})
	local timers = Timers.new(journal, SCOPE, Format.text, function()
		return tracker:running() ~= nil
	end)
	local session = setmetatable({
		journal = journal,
		player = player,
		tracker = tracker,
		hooks = Hooks.new(tracker, player, journal),
		timers = timers,
		-- Own timers: a requested screenshot finishes even if tracking stops.
		screenshots = Screenshot.new(journal, Timers.new(journal, SCOPE, Format.text), player, options.dir),
		marks = 0,
		onMark = options.onMark,
	}, Session)
	session.api = Api.new(session)
	return session
end

---Whether a tracking session runs: outside one, devtools does nothing.
---@return boolean
function Session:tracking()
	return self.tracker:running() ~= nil
end

---Starts a tracking session, stopping a running one first. Reads the player
---before, so the player option of hooks applies from the first call.
---@param name? string
function Session:startTracking(name)
	self.player:refresh(self.journal:now())
	return self.tracker:start(name)
end

---Periodic work on the game thread while tracking: player lookup.
function Session:tick()
	if self:tracking() then
		self.player:refresh(self.journal:now())
	end
end

---Logs values under "debug"; strings as they are.
function Session:log(...)
	local parts = table.pack(...)
	for i = 1, parts.n do
		parts[i] = type(parts[i]) == "string" and parts[i] or Format.value(parts[i])
	end
	self.journal:write(SCOPE, table.concat(parts, " ", 1, parts.n))
end

---Writes a numbered marker line under "mark", to cut the log around an
---action, and calls onMark: "mark #3 hold RMB". Ignored outside tracking.
---@param text? string
---@return string?
function Session:mark(text)
	if not self:tracking() then
		return nil
	end
	self.marks = self.marks + 1
	local line = ("#%d%s"):format(self.marks, text and text ~= "" and (" " .. text) or "")
	self.journal:write("mark", line)
	if self.onMark then
		local ok, err = pcall(self.onMark, self.api, self.marks, text)
		if not ok then
			self.journal:write(SCOPE, "! onMark: " .. tostring(err))
		end
	end
	self.journal:flush()
	return "mark " .. line
end

---A key to bind, as RegisterKeyBind takes it.
---@class DebugKey
---@field key Key A value of UE4SS's Key table, e.g. Key.F8.
---@field modifiers? ModifierKey[] Held with it, e.g. { ModifierKey.CONTROL }.

---Binds a key to mark() or to starting and stopping tracking.
---@param binding DebugKey
---@param action "mark"|"track"
function Session:bindKey(binding, action)
	local key, modifiers = binding.key, binding.modifiers or {}
	if math.type(key) ~= "integer" then
		error(("not a key: %s; use { key = Key.F8 }"):format(tostring(key)), 0)
	end
	local function pressed()
		-- Key callbacks run outside the game thread, where the log is written.
		ExecuteInGameThread(function()
			if action == "mark" then
				-- One line, so the key does not look broken while tracking is off.
				if not self:mark() then
					self.journal:write("mark", "ignored: not tracking")
				end
			elseif self.tracker:running() then
				self.tracker:stop()
			else
				self:startTracking()
			end
			self.journal:flush()
		end)
	end
	if #modifiers > 0 then
		RegisterKeyBind(key, modifiers, pressed)
	else
		RegisterKeyBind(key, pressed)
	end
end

---Hooks every function of a class; returns how many.
---@param class string|UObject
---@param options? DebugClassHookOptions
---@return integer
function Session:hookClass(class, options)
	local paths = Reflect.functionPaths({ class }, options or {})
	for _, path in ipairs(paths) do
		self.hooks:add(path, options)
	end
	return #paths
end

---Tracks new objects of a class (full path, subclasses included) as calls
---"new <class>" with { object = ... } while a session runs.
---@param class string
function Session:spawned(class)
	local label = "new " .. class
	local notify = NotifyOnNewObject --[[@as fun(class: string, callback: fun(object: UObject))]]
	notify(class, function(object)
		self.tracker:trackCall(label, { object = object })
	end)
end

---Tracks each property of an object as "<label>.<Property>" once; does not
---read them outside tracking.
---@param label string
---@param object UObject?
---@param match? string Only properties whose name contains this text, ignoring case.
function Session:trackObject(label, object, match)
	if not self:tracking() then
		return
	end
	if not Reflect.valid(object) then
		self.tracker:trackValue(label, "<invalid>")
		return
	end
	---@cast object UObject
	match = match and match:lower()
	for _, property in ipairs(Reflect.properties(object:GetClass())) do
		local name = property.name
		if not match or name:lower():find(match, 1, true) then
			local ok, value = pcall(function()
				return object:GetPropertyValue(name)
			end)
			if not ok then
				value = ("<error: %s>"):format(tostring(value))
			end
			self.tracker:trackValue(label .. "." .. name, value)
		end
	end
end

return Session
