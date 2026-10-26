local Loop = require("ue4ss.loop")
local Journal = require("devtools.journal")
local Format = require("ue4ss.devtools.format")
local Session = require("ue4ss.devtools.session")

---Development mod: an API to hook, time and track calls and values in the
---running game, logging everything with timestamps to debug.log in the mod
---directory. A game mod's experiment calls start() and uses the API it
---returns. See README.md. Never ship it: experiments run arbitrary Lua.
local Debug = {}

---@class DebugStartOptions
---@field dir string Existing output directory, e.g. the devtools mod's experiment-data/ that `dist` puts in place of ${EXPERIMENT_DATA_DIR} in experiment-local.lua.
---@field tracking? boolean Start tracking (session "start") right away; default false: nothing happens until the track key.
---@field markKey? DebugKey|false Key writing a mark; default { key = Key.F7 }, false for none.
---@field trackKey? DebugKey|false Key starting and stopping tracking; default { key = Key.F8 }, false for none.
---@field callsInterval? integer Milliseconds between logged calls of one function while tracking; default 0.
---@field format? DevtoolsFormatOptions Limits of logged values: itemsLimit, depthLimit, stringLimit.
---@field onMark? DebugOnMark Called after each mark with the API, the mark number and its text; none by default.

local LOG = "debug.log"
-- Milliseconds between updates: player lookup and log flush.
local INTERVAL = 100

---Starts logging to <dir>/debug.log (truncated), binds the mark and track
---keys, starts tracking only with `tracking = true`, and returns the devtools
---API. Outside tracking devtools does nothing: hooks, timers, marks, value
---tracking and screenshots are skipped. Screenshots go to <dir>/shots/.
---Restart All Mods starts it again.
---@param options DebugStartOptions
---@return DebugApi dev
function Debug.start(options)
	local dir = options.dir
	if type(dir) ~= "string" then
		error("options.dir: the output directory is required", 2)
	end
	Format.configure(options.format)
	dir = dir:gsub("\\", "/"):gsub("/$", "")
	local journal = Journal.open(dir .. "/" .. LOG)
	journal:write("debug", ("started, writing to %s; %s"):format(dir, Debug.versions()))
	local session = Session.new(journal, { dir = dir, callsInterval = options.callsInterval, onMark = options.onMark })
	for action, default in pairs({ mark = { key = Key.F7 }, track = { key = Key.F8 } }) do
		local key = options[action .. "Key"]
		if key == nil then
			key = default
		end
		if key then
			local ok, err = pcall(session.bindKey, session, key, action)
			if not ok then
				journal:write("debug", ("! %s key unavailable: %s"):format(action, tostring(err)))
			end
		end
	end
	if options.tracking then
		session:startTracking("start")
	end
	journal:flush()

	Loop.gameThread(INTERVAL, function()
		session:tick()
		journal:flush()
	end, function(message)
		journal:write("debug", "! " .. message)
		journal:flush()
		print("[ue4ss-devtools] " .. message .. "\n")
	end)
	return session.api
end

---@private
---@return string
function Debug.versions()
	local ok, major, minor, hotfix = pcall(UE4SS.GetVersion)
	local ue4ss = ok and ("%s.%s.%s"):format(major, minor, hotfix) or "?"
	local unreal = "?"
	pcall(function()
		unreal = ("%d.%d"):format(UnrealVersion:GetMajor(), UnrealVersion:GetMinor())
	end)
	return ("UE4SS %s, Unreal %s"):format(ue4ss, unreal)
end

return Debug
