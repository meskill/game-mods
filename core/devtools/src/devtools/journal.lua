---The debug mod's log file. Every line starts with the seconds since the file
---was opened, to the millisecond, and the scope it comes from ("#<id>" for a
---request, "track.<kind>", "mark", "debug"); the first
---line gives the wall-clock time it was opened. Continuation lines of
---multi-line text are indented under the first. Lines are buffered until
---flush(). A failing write, flush or close raises an error naming the file.
---@class DevtoolsJournal
---@field private file file
---@field private path string
---@field private started number os.clock() when opened.
local Journal = {}
Journal.__index = Journal

---Truncates the file at path.
---@param path string
---@return DevtoolsJournal
function Journal.open(path)
	local file, err = io.open(path, "w")
	if not file then
		error(("cannot open %s: %s"):format(path, err), 0)
	end
	file:setvbuf("full")
	local journal = setmetatable({ file = file, path = path, started = os.clock() }, Journal)
	journal:write("debug", "log opened " .. os.date("%Y-%m-%d %H:%M:%S"))
	return journal
end

---Seconds since the file was opened. os.clock() counts wall time on Windows.
---@return number
function Journal:now()
	return os.clock() - self.started
end

---@param scope string
---@param text string
---@return string line The line written.
function Journal:write(scope, text)
	local head = ("+%.3f %s "):format(self:now(), scope)
	local line = head .. text:gsub("\n", "\n" .. (" "):rep(#head))
	local ok, err = self.file:write(line, "\n")
	if not ok then
		error(("cannot write %s: %s"):format(self.path, err), 0)
	end
	return line
end

function Journal:flush()
	local ok, err = self.file:flush()
	if not ok then
		error(("cannot flush %s: %s"):format(self.path, err), 0)
	end
end

function Journal:close()
	local ok, err = self.file:close()
	if not ok then
		error(("cannot close %s: %s"):format(self.path, err), 0)
	end
end

return Journal
