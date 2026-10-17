-- LuaSocket's native modules import lua54.dll, but Windows resolves a DLL's
-- imports with its own search order, not package.cpath. Hosts that embed Lua
-- statically (UE4SS) need lua54.dll shipped on package.cpath: loading it by full
-- path first lets Windows satisfy the import from the already-loaded module.
-- Without lua54 on package.cpath, the host must already provide lua54.dll
-- (lua.exe links it).
local runtime = package.searchpath("lua54", package.cpath)
if runtime then
	assert(package.loadlib(runtime, "*"))
end

return require("socket")
