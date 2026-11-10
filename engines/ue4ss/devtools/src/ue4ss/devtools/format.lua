local CoreFormat = require("devtools.format")
local Reflect = require("ue4ss.devtools.reflect")

---Text for Lua values and UE4SS values: objects, names, strings, containers,
---structs and hook parameters, through devtools.format with UE4SS rules.
local Format = {}

---@type table<string, true?>
local STRINGS = { FName = true, FString = true, FText = true, FUtf8String = true, FAnsiString = true }
---@type table<string, true?>
local PARAMS = { RemoteUnrealParam = true, LocalUnrealParam = true }
---@type table<string, true?>
local CONTAINERS = { TArray = true, TMap = true, TSet = true, UScriptStruct = true }
-- Classes of reflection data, shown by full path rather than "Class'Name'".
---@type table<string, true?>
local METADATA = {
	Class = true,
	BlueprintGeneratedClass = true,
	WidgetBlueprintGeneratedClass = true,
	AnimBlueprintGeneratedClass = true,
	Function = true,
	DelegateFunction = true,
	SparseDelegateFunction = true,
	Enum = true,
	UserDefinedEnum = true,
	ScriptStruct = true,
	UserDefinedStruct = true,
	Package = true,
}

---@type DevtoolsFormat
local instance

---One line of text for any value.
---@param value any
---@param options? DevtoolsFormatOptions
---@return string
function Format.value(value, options)
	return instance:value(value, options)
end

---Text for a value to log on its own: strings as they are, lists of strings
---one per line, anything else as Format.value.
---@param value any
---@return string
function Format.text(value)
	if type(value) == "string" then
		return value
	end
	if type(value) == "table" and getmetatable(value) == nil and #value > 0 then
		local strings, keys = true, 0
		for key, item in pairs(value) do
			keys = keys + 1
			strings = strings and math.type(key) == "integer" and type(item) == "string"
		end
		if strings and keys == #value then
			return table.concat(value, "\n")
		end
	end
	return Format.value(value)
end

---Sets the limits of every later Format.value call; call once on load.
---@param options? DevtoolsFormatOptions
function Format.configure(options)
	instance = CoreFormat.new(Format.rule, options)
end

---The configured format, for modules that take one.
---@return DevtoolsFormat
function Format.instance()
	return instance
end

---The UE4SS type of a wrapper value ("UObject", "FName", "TArray",
---"RemoteUnrealParam", ...), or nil for plain Lua values.
---@param value any
---@return string?
function Format.kind(value)
	local luaType = type(value)
	if luaType ~= "userdata" and (luaType ~= "table" or getmetatable(value) == nil) then
		return nil
	end
	local ok, kind = pcall(function()
		return value:type()
	end)
	if ok and type(kind) == "string" then
		return kind
	end
	return nil
end

---An object as "Class'Name'", or its full path for classes, functions,
---enums, structs and packages.
---@param object UObject
---@return string
function Format.reference(object)
	if not object:IsValid() then
		return "<invalid>"
	end
	local full = object:GetFullName()
	local class, path = full:match("^(%S+) (.+)$")
	if not class or not path or METADATA[class] then
		return full
	end
	return ("%s'%s'"):format(class, path:match("([^%.:]+)$") or path)
end

-- Why array elements are no longer read, after the first failure: each one
-- raises an error through UE4SS's C++ code, and many of them corrupted the
-- game's heap. TArray:ForEach failed on every non-empty array of a hook's
-- parameters in UE4SS 3.0.1 ("attempt to call a nil value" inside ForEach),
-- so elements are read by index instead.
---@type string?
local elementsUnreadable

local function elementAt(value, i)
	return value[i]
end

---@param value TArray<any>
---@param context DevtoolsFormatContext
---@return string
local function array(value, context)
	local total = value:GetArrayNum()
	local parts = {}
	if elementsUnreadable then
		return ("[%d]{%s}"):format(total, CoreFormat.list(parts, total))
	end
	for i = 1, math.min(total, context.itemsLimit) do
		local ok, item = pcall(elementAt, value, i)
		if not ok then
			elementsUnreadable = tostring(item)
			parts = { ("<elements unreadable from now on: %s>"):format(elementsUnreadable) }
			break
		end
		parts[i] = context:nested(item)
	end
	return ("[%d]{%s}"):format(total, CoreFormat.list(parts, total))
end

---@param value TMap<any, any>
---@param context DevtoolsFormatContext
local function map(value, context)
	local parts, total = {}, 0
	value:ForEach(function(key, element)
		total = total + 1
		if total <= context.itemsLimit then
			parts[total] = context:nested(key) .. ": " .. context:nested(element)
		end
	end)
	return ("[%d]{%s}"):format(total, CoreFormat.list(parts, total))
end

---@param value TSet<any>
---@param context DevtoolsFormatContext
local function set(value, context)
	local parts, total = {}, 0
	value:ForEach(function(element)
		total = total + 1
		if total <= context.itemsLimit then
			parts[total] = context:nested(element)
		end
	end)
	return ("[%d]{%s}"):format(total, CoreFormat.list(parts, total))
end

---A struct value: "FVector{X=1, Y=2, Z=3}". UE4SS also reports the type
---"UScriptStruct" for struct definitions, which are not mapped to an object's
---memory (IsMappedToObject() false or missing); those are shown by reference.
---An instance's definition is the struct of the StructProperty holding it.
---@param context DevtoolsFormatContext
local function struct(value, context)
	local ok, definition = pcall(function()
		if not value:IsMappedToObject() then
			return nil
		end
		return value:GetProperty():GetStruct()
	end)
	if not ok or not Reflect.valid(definition) then
		return Format.reference(value)
	end
	---@cast definition UStruct
	local fields = Reflect.properties(definition)
	local parts = {}
	for i, field in ipairs(fields) do
		if i > context.itemsLimit then
			break
		end
		local name = field.name
		local read, fieldValue = pcall(function()
			return value[name]
		end)
		parts[i] = name .. "=" .. (read and context:nested(fieldValue) or "<error>")
	end
	return Reflect.name(definition) .. "{" .. CoreFormat.list(parts, #fields) .. "}"
end

---Text for UE4SS values; nil for plain Lua values.
---@param value table|userdata
---@param context DevtoolsFormatContext
---@return string?
function Format.rule(value, context)
	local kind = Format.kind(value)
	if not kind then
		return nil
	end
	---@cast value any
	if PARAMS[kind] then
		return context:same(value:get())
	end
	if STRINGS[kind] then
		return context:quote(value:ToString())
	end
	if CONTAINERS[kind] and context:deep() then
		return kind .. "{...}"
	end
	if kind == "TArray" then
		return array(value, context)
	end
	if kind == "TMap" then
		return map(value, context)
	end
	if kind == "TSet" then
		return set(value, context)
	end
	if kind == "UScriptStruct" then
		return struct(value, context)
	end
	if kind == "FWeakObjectPtr" then
		return context:same(value:Get())
	end
	return Format.reference(value)
end

Format.configure()

return Format
