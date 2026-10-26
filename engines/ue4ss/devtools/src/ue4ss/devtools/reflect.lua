---Unreal reflection data read through UE4SS: classes, their functions and
---properties, function parameters and enums. Only reflected members exist
---here; plain C++ methods do not.
local Reflect = {}

---@class DebugProperty
---@field name string
---@field type string Property class without "Property", e.g. "Float", "Object".
---@field owner string Name of the class or struct declaring it.

---@class DebugFunction
---@field name string
---@field path string Full path accepted by RegisterHook, e.g. "/Script/Engine.Actor:ReceiveBeginPlay".
---@field owner string Name of the class declaring it.

---@param object UObject|Property
---@return string
function Reflect.name(object)
	return Reflect.text(object:GetFName())
end

---Lua string of an FName, FString or FText.
---@param value any
---@return string
function Reflect.text(value)
	return value:ToString()
end

---The path part of GetFullName(), without the class: "/Script/Engine.Actor".
---@param object UObject
---@return string
function Reflect.path(object)
	local full = object:GetFullName()
	return full:match("^%S+ (.+)$") or full
end

---Valid object or nil: UE4SS returns invalid placeholders instead of nil.
---@param object any
---@return any
function Reflect.valid(object)
	if object ~= nil and object:IsValid() then
		return object
	end
	return nil
end

---A class from its full path ("/Script/Phoenix.WandTool"), a short name with a
---live instance ("WandTool"), an instance, or a class. Errors when not found.
---@param target string|UObject
---@return UClass
function Reflect.class(target)
	if type(target) == "string" then
		if target:find("/", 1, true) then
			local object = Reflect.valid(StaticFindObject(target))
			if not object then
				error(("not loaded: %s"):format(target), 0)
			end
			return object --[[@as UClass]]
		end
		local instance = Reflect.valid(FindFirstOf(target))
		if not instance then
			error(("no instance of %s: pass the class path"):format(target), 0)
		end
		return instance:GetClass()
	end
	if not Reflect.valid(target) then
		error(("invalid object: %s"):format(tostring(target)), 0)
	end
	if target:IsClass() then
		return target --[[@as UClass]]
	end
	return target:GetClass()
end

---Properties of a class or struct and its parents, nearest class first.
---@param struct UStruct
---@return DebugProperty[]
function Reflect.properties(struct)
	local list = {}
	---@type UStruct?
	local current = struct
	while current do
		local owner = Reflect.name(current)
		current:ForEachProperty(function(property)
			list[#list + 1] = {
				name = Reflect.name(property),
				type = Reflect.propertyType(property),
				owner = owner,
			}
		end)
		current = Reflect.super(current)
	end
	return list
end

---A function's parameters in declaration order, including "ReturnValue".
---Blueprint functions list their local variables after the parameters.
---@param fn UFunction
---@return DebugProperty[]
function Reflect.parameters(fn)
	local list = {}
	local owner = Reflect.name(fn)
	fn:ForEachProperty(function(property)
		list[#list + 1] = { name = Reflect.name(property), type = Reflect.propertyType(property), owner = owner }
	end)
	return list
end

---Functions of a class in declaration order, then its parents' when inherited.
---@param class UClass
---@param inherited? boolean
---@return DebugFunction[]
function Reflect.functions(class, inherited)
	local list = {}
	---@type UStruct?
	local current = class
	while current do
		local owner = Reflect.name(current)
		current:ForEachFunction(function(fn)
			list[#list + 1] = {
				name = Reflect.name(fn),
				path = Reflect.path(fn),
				owner = owner,
			}
		end)
		current = inherited and Reflect.super(current) or nil
	end
	return list
end

---@class DebugSelectOptions
---@field inherited? boolean Include functions declared by parent classes.
---@field match? string Lua pattern function names must match.
---@field skip? string[] Lua patterns of function names to leave out; default { "Tick" }.

---Paths of the functions of each class, filtered and without duplicates.
---Delegate signatures are left out: they describe delegates and never run.
---@param classes (string|UObject)[]
---@param options DebugSelectOptions
---@return string[]
function Reflect.functionPaths(classes, options)
	local skip = options.skip or { "Tick" }
	local paths, seen = {}, {}
	for _, target in ipairs(classes) do
		for _, fn in ipairs(Reflect.functions(Reflect.class(target), options.inherited)) do
			local name = fn.name
			local wanted = not seen[fn.path]
				and not name:find("__DelegateSignature", 1, true)
				and (not options.match or name:find(options.match) ~= nil)
			for _, pattern in ipairs(skip) do
				wanted = wanted and not name:find(pattern)
			end
			if wanted then
				seen[fn.path] = true
				paths[#paths + 1] = fn.path
			end
		end
	end
	return paths
end

---@private
---@param struct UStruct
---@return UStruct?
function Reflect.super(struct)
	local ok, super = pcall(struct.GetSuperStruct, struct)
	return ok and Reflect.valid(super) or nil
end

---@private
---@param property Property
---@return string
function Reflect.propertyType(property)
	local name = Reflect.text((property:GetClass() --[[@as any]]):GetFName())
	return (name:gsub("Property$", ""))
end

return Reflect
