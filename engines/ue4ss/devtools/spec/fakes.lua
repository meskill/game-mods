-- Stand-ins for UE4SS values in specs: tables with a metatable and a type()
-- method, which is how ue4ss.devtools.format tells UE4SS wrappers from Lua tables.
local Fakes = {}

---A UE4SS wrapper of the given kind with the given methods.
function Fakes.wrapper(kind, methods)
	methods.type = function()
		return kind
	end
	return setmetatable(methods, {})
end

function Fakes.name(text)
	return Fakes.wrapper("FName", {
		ToString = function()
			return text
		end,
	})
end

function Fakes.param(value)
	return Fakes.wrapper("RemoteUnrealParam", {
		get = function()
			return value
		end,
	})
end

---A TArray of `values`, read by 1-based index as UE4SS allows; reading an
---index in `broken` fails. ForEach fails, as it does in game.
---@param values any[]
---@param broken? table<integer, true>
function Fakes.array(values, broken)
	local array = Fakes.wrapper("TArray", {
		ForEach = function()
			error("ForEach is not to be called")
		end,
		GetArrayNum = function()
			return #values
		end,
	})
	getmetatable(array).__index = function(_, i)
		if broken and broken[i] then
			error("unreadable element " .. i)
		end
		return values[i]
	end
	return array
end

---An object whose GetFullName() is "<class> <path>".
function Fakes.object(class, path, fields)
	fields = fields or {}
	local object = {
		IsValid = function()
			return fields.valid ~= false
		end,
		GetFullName = function()
			return class .. " " .. path
		end,
		GetAddress = function()
			return fields.address or 0x1000
		end,
	}
	for key, value in pairs(fields) do
		object[key] = value
	end
	return Fakes.wrapper("UObject", object)
end

---A reflected property named `name` of class `class` ("IntProperty").
function Fakes.property(name, class)
	return {
		GetFName = function()
			return Fakes.name(name)
		end,
		GetClass = function()
			return {
				GetFName = function()
					return Fakes.name(class)
				end,
			}
		end,
	}
end

---A struct definition (a ScriptStruct object, UE4SS type "UScriptStruct")
---named `name` with properties given as { name, propertyClass } pairs. Like
---UE4SS definitions it has no GetProperty() and is not mapped to an object.
function Fakes.structDefinition(name, fields)
	return Fakes.wrapper("UScriptStruct", {
		IsValid = function()
			return true
		end,
		GetFullName = function()
			return "ScriptStruct /Script/CoreUObject." .. name
		end,
		GetFName = function()
			return Fakes.name(name)
		end,
		ForEachProperty = function(_, callback)
			for _, field in ipairs(fields) do
				callback(Fakes.property(field[1], field[2]))
			end
		end,
	})
end

---A struct value of `definition` mapped to an object, with field values in
---`values`. As in UE4SS it has no GetStruct(): its definition is reached through
---GetProperty(), the StructProperty holding it.
function Fakes.struct(definition, values)
	local methods = {
		IsValid = function()
			return true
		end,
		IsMappedToObject = function()
			return true
		end,
		GetProperty = function()
			return {
				GetStruct = function()
					return definition
				end,
			}
		end,
	}
	local struct = Fakes.wrapper("UScriptStruct", methods)
	getmetatable(struct).__index = values
	return struct
end

---A UFunction with parameters given as { name, propertyClass } pairs.
function Fakes.ufunction(name, parameters)
	return {
		IsValid = function()
			return true
		end,
		GetFName = function()
			return Fakes.name(name)
		end,
		ForEachProperty = function(_, callback)
			for _, parameter in ipairs(parameters) do
				callback(Fakes.property(parameter[1], parameter[2]))
			end
		end,
	}
end

---Captures journal lines as "scope text"; now() returns `clock.now`.
function Fakes.journal()
	local journal = { lines = {}, clock = { now = 0 } }
	function journal:write(scope, text)
		self.lines[#self.lines + 1] = scope .. " " .. text
	end
	function journal:now()
		return self.clock.now
	end
	function journal:flush() end
	return journal
end

---Replaces RegisterHook, UnregisterHook and StaticFindObject. `functions`
---maps paths to UFunction fakes. Returns the registry: hooks by path, each
---{ pre, post, ids }, and the unregistered paths.
function Fakes.hooking(functions)
	local registry = { hooks = {}, unregistered = {}, next = 1 }
	_G.StaticFindObject = function(path)
		return functions[path] or {
			IsValid = function()
				return false
			end,
		}
	end
	_G.RegisterHook = function(path, pre, post)
		local ids = { registry.next, registry.next + 1 }
		registry.next = registry.next + 2
		registry.hooks[path] = { pre = pre, post = post, ids = ids }
		return ids[1], ids[2]
	end
	_G.UnregisterHook = function(path, pre, post)
		registry.unregistered[#registry.unregistered + 1] = { path, pre, post }
	end
	return registry
end

function Fakes.restore()
	_G.StaticFindObject = nil
	_G.RegisterHook = nil
	_G.UnregisterHook = nil
end

return Fakes
