---Tracks values and calls from a start event on: logs each value's initial
---state and its changes, and each call with its arguments, under the scopes
---"track.start", "track.init", "track.change", "track.call", "track.stop" and
---"track.report"; start and stop lines name the session. stop()
---writes a report and keeps it by name, so sessions of the same action and of a
---quiet moment can be compared. The host pushes everything: values from its
---own loop, calls from its hooks; outside a session both are ignored.
---@class DevtoolsTracker
---@field private journal DevtoolsJournal
---@field private format DevtoolsFormat
---@field private callsInterval number Seconds.
---@field private count integer
---@field private active? DevtoolsTrackingSession
---@field private reports table<string, DevtoolsTrackingSession?>
local Tracking = {}
Tracking.__index = Tracking

---@class DevtoolsTrackingOptions
---@field journal DevtoolsJournal Writes the log lines; its now() is the clock.
---@field format DevtoolsFormat Turns values and arguments into text; values are compared by that text.
---@field callsInterval? integer Milliseconds; at most one call per label is logged per interval, the rest are counted. Default 0: log every call.

---@class DevtoolsTrackedValue
---@field initial string
---@field last string
---@field changes integer
---@field first? number Time of the first change, in seconds since the start.
---@field chain string[] Texts in order: the initial one, then each change.

---@class DevtoolsTrackedCall
---@field count integer
---@field logged integer
---@field skipped integer Calls counted since the last logged one.
---@field first number Seconds since the start.
---@field lastLogged number Seconds since the start.

---@class DevtoolsTrackingSession
---@field name string
---@field started number
---@field duration number Seconds; set when it stops.
---@field values table<string, DevtoolsTrackedValue?>
---@field valueOrder string[]
---@field calls table<string, DevtoolsTrackedCall?>

---@alias DevtoolsCallChange
---| "NEW" # Not called in the baseline.
---| "MORE" # At least twice the baseline's rate.
---| "LESS" # At most half the baseline's rate.
---| "GONE" # Called in the baseline, not here.
---| "SAME" # Neither.

---@alias DevtoolsValueChange
---| "NEW" # Tracked here only.
---| "GONE" # Tracked in the baseline only.
---| "CHANGED" # Changed here, constant in the baseline.
---| "STOPPED" # Changed in the baseline, constant here.
---| "SAME" # Neither.

-- Value texts listed in a report before the middle ones are left out.
local CHAIN = 5

-- Shortest duration rates and comparisons divide by, in seconds, so a session
-- stopped as soon as it started still has a rate.
local MIN_DURATION = 0.001

---@param options DevtoolsTrackingOptions
---@return DevtoolsTracker
function Tracking.new(options)
	return setmetatable({
		journal = options.journal,
		format = options.format,
		callsInterval = (options.callsInterval or 0) / 1000,
		count = 0,
		reports = {},
	}, Tracking)
end

---Starts a session. A running one is stopped first, with its report logged,
---so a hotkey or an event can simply call start().
---@param name? string Name to report and compare it by; default "track<N>".
---@return string
function Tracking:start(name)
	if self.active then
		self:stop()
	end
	self.count = self.count + 1
	self.active = {
		name = name or ("track" .. self.count),
		started = self.journal:now(),
		duration = 0,
		values = {},
		valueOrder = {},
		calls = {},
	}
	self.journal:write("track.start", self.active.name)
	return ("tracking %q"):format(self.active.name)
end

---Name of the running session, or nil.
---@return string?
function Tracking:running()
	return self.active and self.active.name
end

---Records a value: its first value in the session as the initial one, later
---values when their text differs from the previous one.
---@param label string
---@param value any
function Tracking:trackValue(label, value)
	local session = self.active
	if not session then
		return
	end
	local text = self.format:value(value)
	local tracked = session.values[label]
	if not tracked then
		session.values[label] = { initial = text, last = text, changes = 0, chain = { text } }
		session.valueOrder[#session.valueOrder + 1] = label
		self.journal:write("track.init", ("%s = %s"):format(label, text))
		return
	end
	if text == tracked.last then
		return
	end
	self.journal:write("track.change", ("%s %s -> %s"):format(label, tracked.last, text))
	tracked.last = text
	tracked.changes = tracked.changes + 1
	tracked.first = tracked.first or self.journal:now() - session.started
	tracked.chain[#tracked.chain + 1] = text
end

---Records a call with its named arguments. Logged when callsInterval has
---passed since the last logged call of the label, otherwise only counted; the
---next logged call shows how many were skipped.
---@param label string
---@param args? table<string, any>
function Tracking:trackCall(label, args)
	local session = self.active
	if not session then
		return
	end
	local time = self.journal:now() - session.started
	local tracked = session.calls[label]
	if not tracked then
		tracked = { count = 0, logged = 0, skipped = 0, first = time, lastLogged = -math.huge }
		session.calls[label] = tracked
	end
	tracked.count = tracked.count + 1
	if time - tracked.lastLogged < self.callsInterval then
		tracked.skipped = tracked.skipped + 1
		return
	end
	local line = label .. self:arguments(args)
	if tracked.skipped > 0 then
		line = line .. (" (+%d skipped)"):format(tracked.skipped)
	end
	self.journal:write("track.call", line)
	tracked.logged = tracked.logged + 1
	tracked.skipped = 0
	tracked.lastLogged = time
end

---Ends the session, logs its report and keeps it by name.
---@return string report
function Tracking:stop()
	local session = self.active
	if not session then
		error("no tracking session is running", 0)
	end
	self.active = nil
	session.duration = self.journal:now() - session.started
	self.reports[session.name] = session
	self.journal:write("track.stop", ("%s %.3f s"):format(session.name, session.duration))
	local report = self:report(session.name)
	self.journal:write("track.report", report)
	return report
end

---Report of a finished session: each value from its initial text through its
---changes, then each call label by first call with its count and rate.
---@param name string
---@return string
function Tracking:report(name)
	local session = self:find(name)
	local lines = { ("session %q: %.3f s"):format(session.name, session.duration) }
	if #session.valueOrder > 0 then
		lines[#lines + 1] = "values:"
		for _, label in ipairs(session.valueOrder) do
			local tracked = session.values[label] --[[@as DevtoolsTrackedValue]]
			lines[#lines + 1] = ("  %s  %s  %s"):format(label, Tracking.chain(tracked), Tracking.changes(tracked))
		end
	end
	local labels = Tracking.callsByFirst(session)
	if #labels > 0 then
		lines[#lines + 1] = "calls:"
		for _, label in ipairs(labels) do
			local tracked = session.calls[label] --[[@as DevtoolsTrackedCall]]
			lines[#lines + 1] = ("  %s  %d calls (%d logged)  first +%.3f  %.1f/s"):format(
				label,
				tracked.count,
				tracked.logged,
				tracked.first,
				Tracking.rate(tracked.count, session.duration)
			)
		end
	end
	return table.concat(lines, "\n")
end

---Compares a finished session with a baseline session: calls by rate scaled to
---duration, values by whether they changed. Only differences are listed.
---@param baselineName string
---@param name string
---@return string
function Tracking:compare(baselineName, name)
	local baseline, session = self:find(baselineName), self:find(name)
	local lines = { ("compare %q with %q"):format(session.name, baseline.name) }
	local same = 0
	-- Baseline counts scaled to this session's duration.
	local scale = math.max(session.duration, MIN_DURATION) / math.max(baseline.duration, MIN_DURATION)

	local callRows = {}
	for label, tracked in pairs(session.calls) do
		local base = baseline.calls[label]
		local expected = (base and base.count or 0) * scale
		callRows[#callRows + 1] = {
			label = label,
			calls = tracked.count,
			expected = expected,
			first = tracked.first,
			status = Tracking.callChange(tracked.count, base and base.count or 0, expected),
		}
	end
	for label, base in pairs(baseline.calls) do
		if not session.calls[label] then
			local expected = base.count * scale
			callRows[#callRows + 1] = {
				label = label,
				calls = 0,
				expected = expected,
				status = expected >= 1 and "GONE" or "SAME",
			}
		end
	end
	table.sort(callRows, function(a, b)
		local ta, tb = a.first or math.huge, b.first or math.huge
		if ta ~= tb then
			return ta < tb
		end
		return a.label < b.label
	end)
	local calls = {}
	for _, row in ipairs(callRows) do
		if row.status == "SAME" then
			same = same + 1
		else
			calls[#calls + 1] = ("  %-6s %s  %d calls, expected %.1f%s"):format(
				row.status,
				row.label,
				row.calls,
				row.expected,
				row.first and (", first +%.3f"):format(row.first) or ""
			)
		end
	end
	if #calls > 0 then
		lines[#lines + 1] = "calls:"
		table.move(calls, 1, #calls, #lines + 1, lines)
	end

	local values = {}
	local function addValue(label)
		local here, base = session.values[label], baseline.values[label]
		local status = Tracking.valueChange(here, base)
		if status == "SAME" then
			same = same + 1
			return
		end
		values[#values + 1] = ("  %-7s %s  here: %s; baseline: %s"):format(
			status,
			label,
			here and Tracking.chain(here) or "not tracked",
			base and Tracking.chain(base) or "not tracked"
		)
	end
	for _, label in ipairs(session.valueOrder) do
		addValue(label)
	end
	for _, label in ipairs(baseline.valueOrder) do
		if not session.values[label] then
			addValue(label)
		end
	end
	if #values > 0 then
		lines[#lines + 1] = "values:"
		table.move(values, 1, #values, #lines + 1, lines)
	end

	lines[#lines + 1] = ("%d unchanged not listed"):format(same)
	return table.concat(lines, "\n")
end

---Names and durations of the finished sessions.
---@return string[]
function Tracking:list()
	local lines = {}
	for name, session in pairs(self.reports) do
		lines[#lines + 1] = ("%s: %.3f s"):format(name, session.duration)
	end
	table.sort(lines)
	return lines
end

---Forgets a finished session's report, or every report with "*". A running
---session is not affected.
---@param name string
---@return integer cleared
function Tracking:clear(name)
	local cleared = 0
	for reportName in pairs(self.reports) do
		if name == "*" or name == reportName then
			self.reports[reportName] = nil
			cleared = cleared + 1
		end
	end
	return cleared
end

---How a call's count compares with the baseline's, scaled to duration.
---@param calls integer
---@param baseCalls integer
---@param expected number
---@return DevtoolsCallChange
function Tracking.callChange(calls, baseCalls, expected)
	if calls > 0 and baseCalls == 0 then
		return "NEW"
	end
	if calls >= 2 * expected and calls - expected >= 2 then
		return "MORE"
	end
	if calls <= expected / 2 and expected - calls >= 2 then
		return "LESS"
	end
	return "SAME"
end

---How a value behaved compared with the baseline.
---@param here? DevtoolsTrackedValue
---@param base? DevtoolsTrackedValue
---@return DevtoolsValueChange
function Tracking.valueChange(here, base)
	if not base then
		return "NEW"
	end
	if not here then
		return "GONE"
	end
	if here.changes > 0 and base.changes == 0 then
		return "CHANGED"
	end
	if here.changes == 0 and base.changes > 0 then
		return "STOPPED"
	end
	return "SAME"
end

---@private
---@param name string
---@return DevtoolsTrackingSession
function Tracking:find(name)
	local session = self.reports[name]
	if not session then
		error(("no finished tracking session named %s"):format(name), 0)
	end
	return session
end

---" name=value ..." for named arguments, sorted by name.
---@private
---@param args? table<string, any>
---@return string
function Tracking:arguments(args)
	if not args then
		return ""
	end
	local names = {}
	for name in pairs(args) do
		names[#names + 1] = tostring(name)
	end
	table.sort(names)
	local parts = {}
	for i, name in ipairs(names) do
		parts[i] = name .. "=" .. self.format:value(args[name])
	end
	return #parts > 0 and (" " .. table.concat(parts, " ")) or ""
end

---"3 -> 12 -> 3", leaving out the middle when there are many changes.
---@private
---@param tracked DevtoolsTrackedValue
---@return string
function Tracking.chain(tracked)
	local chain = tracked.chain
	if #chain <= CHAIN then
		return table.concat(chain, " -> ")
	end
	return ("%s -> %s -> ... -> %s -> %s"):format(chain[1], chain[2], chain[#chain - 1], chain[#chain])
end

---@private
---@param tracked DevtoolsTrackedValue
---@return string
function Tracking.changes(tracked)
	if tracked.changes == 0 then
		return "unchanged"
	end
	return ("%d changes, first +%.3f"):format(tracked.changes, tracked.first)
end

---Call labels of a session ordered by first call, then by name.
---@private
---@param session DevtoolsTrackingSession
---@return string[]
function Tracking.callsByFirst(session)
	local labels, first = {}, {}
	for label, tracked in pairs(session.calls) do
		labels[#labels + 1] = label
		first[label] = tracked.first
	end
	table.sort(labels, function(a, b)
		if first[a] ~= first[b] then
			return first[a] < first[b]
		end
		return a < b
	end)
	return labels
end

---@private
---@param count integer
---@param duration number
---@return number
function Tracking.rate(count, duration)
	return count / math.max(duration, MIN_DURATION)
end

return Tracking
