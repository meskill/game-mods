---Readable one-line text for Lua values, extended by a rule for other values
---such as engine objects. Never throws: a value whose rule or metamethods fail
---shows as "<error: ...>", and the values around it are still shown.
---@class DevtoolsFormat
---@field private rule? DevtoolsFormatRule
---@field private itemsLimit integer
---@field private depthLimit integer
---@field private stringLimit integer
local Format = {}
Format.__index = Format

---Limits, set by Format.new for every value() call and overridable per call.
---@class DevtoolsFormatOptions
---@field itemsLimit? integer Elements shown per table or container before "...N more"; default 16.
---@field depthLimit? integer Nested tables and containers shown before "{...}"; default 3.
---@field stringLimit? integer Characters of a string shown before "..."; default 300.

---Text for a value, or nil to format it as a plain Lua value.
---@alias DevtoolsFormatRule fun(value: table|userdata, context: DevtoolsFormatContext): string?

---@class DevtoolsFormatState
---@field itemsLimit integer
---@field depthLimit integer
---@field stringLimit integer
---@field seen table<table, true?>
---@field rule? DevtoolsFormatRule

---Where a rule formats a value: its nesting level and the options.
---@class DevtoolsFormatContext
---@field itemsLimit integer Elements to show per container.
---@field private state DevtoolsFormatState
---@field private level integer
local Context = {}
Context.__index = Context

local ITEMS_LIMIT = 16
local DEPTH_LIMIT = 3
local STRING_LIMIT = 300

---@type fun(value: any, state: DevtoolsFormatState, level: integer): string
local render

---@param rule? DevtoolsFormatRule
---@param options? DevtoolsFormatOptions Limits used by every value() call.
---@return DevtoolsFormat
function Format.new(rule, options)
	options = options or {}
	return setmetatable({
		rule = rule,
		itemsLimit = options.itemsLimit or ITEMS_LIMIT,
		depthLimit = options.depthLimit or DEPTH_LIMIT,
		stringLimit = options.stringLimit or STRING_LIMIT,
	}, Format)
end

---One line of text for any value.
---@param value any
---@param options? DevtoolsFormatOptions Overrides the limits for this value.
---@return string
function Format:value(value, options)
	options = options or {}
	return render(value, {
		itemsLimit = options.itemsLimit or self.itemsLimit,
		depthLimit = options.depthLimit or self.depthLimit,
		stringLimit = options.stringLimit or self.stringLimit,
		seen = {},
		rule = self.rule,
	}, 0)
end

---A string quoted and escaped on one line, cut after limit characters.
---@param text string
---@param limit integer
---@return string
local function quote(text, limit)
	if #text > limit then
		text = text:sub(1, limit) .. "..."
	end
	return (("%q"):format(text):gsub("\\\n", "\\n"))
end

---Parts joined by ", ", with "...N more" when total is larger.
---@param parts string[]
---@param total integer
---@return string
function Format.list(parts, total)
	if total > #parts then
		parts[#parts + 1] = ("...%d more"):format(total - #parts)
	end
	return table.concat(parts, ", ")
end

---Text of a value nested one level below the one being formatted.
---@param value any
---@return string
function Context:nested(value)
	return render(value, self.state, self.level + 1)
end

---Text of a value standing for the one being formatted, e.g. its wrapped value.
---@param value any
---@return string
function Context:same(value)
	return render(value, self.state, self.level)
end

---Whether containers at this level are shown as "{...}".
---@return boolean
function Context:deep()
	return self.level >= self.state.depthLimit
end

---A string quoted on one line and cut at the string limit.
---@param text string
---@return string
function Context:quote(text)
	return quote(text, self.state.stringLimit)
end

---"<error: ...>" on one line for an error object, even one that cannot be
---turned into text.
---@param err any
---@return string
local function failure(err)
	local ok, text = pcall(tostring, err)
	text = ok and text:gsub("\r", "\\r"):gsub("\n", "\\n") or "unprintable error"
	return ("<error: %s>"):format(text)
end

local function number(value)
	if math.type(value) == "float" then
		return ("%.7g"):format(value)
	end
	return tostring(value)
end

local function keyOrder(a, b)
	local ta, tb = type(a), type(b)
	if ta ~= tb then
		return ta < tb
	end
	if ta == "number" or ta == "string" then
		return a < b
	end
	return tostring(a) < tostring(b)
end

local function index(value, key)
	return value[key]
end

---Text of value[key], or "<error: ...>" when its __index fails.
---@param value table
---@param key any
---@param state DevtoolsFormatState
---@param level integer
---@return string
local function field(value, key, state, level)
	local ok, item = pcall(index, value, key)
	if not ok then
		return failure(item)
	end
	return render(item, state, level)
end

---@param value table
---@param state DevtoolsFormatState
---@param level integer
---@return string
local function tableItems(value, state, level)
	local parts, length = {}, #value
	for i = 1, math.min(length, state.itemsLimit) do
		parts[i] = field(value, i, state, level + 1)
	end
	local keys = {}
	for key in pairs(value) do
		if math.type(key) ~= "integer" or key < 1 or key > length then
			keys[#keys + 1] = key
		end
	end
	table.sort(keys, keyOrder)
	for _, key in ipairs(keys) do
		if #parts >= state.itemsLimit then
			break
		end
		local label = type(key) == "string" and #key <= state.stringLimit and key:match("^[%a_][%w_]*$") and key
			or ("[" .. render(key, state, level + 1) .. "]")
		parts[#parts + 1] = label .. "=" .. field(value, key, state, level + 1)
	end
	return "{" .. Format.list(parts, length + #keys) .. "}"
end

---@param value table
---@param state DevtoolsFormatState
---@param level integer
---@return string
local function luaTable(value, state, level)
	if state.seen[value] then
		return "<cycle>"
	end
	if level >= state.depthLimit then
		return "{...}"
	end
	state.seen[value] = true
	local ok, text = pcall(tableItems, value, state, level)
	state.seen[value] = nil
	if not ok then
		return failure(text)
	end
	return text
end

---@param value any
---@param state DevtoolsFormatState
---@param level integer
---@return string
local function unprotected(value, state, level)
	local luaType = type(value)
	if luaType == "string" then
		return quote(value, state.stringLimit)
	end
	if luaType == "number" then
		return number(value)
	end
	if luaType ~= "table" and luaType ~= "userdata" then
		return tostring(value)
	end
	if state.rule then
		-- A rule may format the value again through what it wraps (same()),
		-- so it is guarded against cycles like a table.
		if state.seen[value] then
			return "<cycle>"
		end
		---@type DevtoolsFormatContext
		local context = setmetatable({ state = state, level = level, itemsLimit = state.itemsLimit }, Context)
		state.seen[value] = true
		local ok, text = pcall(state.rule, value, context)
		state.seen[value] = nil
		if not ok then
			return failure(text)
		end
		if text then
			return text
		end
	end
	if luaType == "table" then
		return luaTable(value, state, level)
	end
	return tostring(value)
end

function render(value, state, level)
	local ok, text = pcall(unprotected, value, state, level)
	if not ok then
		return failure(text)
	end
	return text
end

return Format
