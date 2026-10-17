# Net

Package to provide network capabilities for the lua scripts.

It's implemented as thin wrapper around `luasocket` library and currently focused on UDP functionality.

## DLL injection

This package requires system level calls to use network capabilities of the OS (Windows). In order to do this it uses `luasocket` package that provides a DLL that is loaded when the package is imported. This DLL is built against the lua54.dll and, by default, the `socket.dll` requires `lua54.dll` available in memory workspace. This package is intended to use by script frameworks like `ue4ss` that provides the Lua environment by itself, hiding all the details. That makes it harder to load the script dll into the process properly.

The current approach to solve this: built in the `lua54.dll` provided by `lux` along with the packages DLLs and use the `package.searchpath` and `package.loadlib` calls to specify path and load proper versions of DLLs. This is the Lua memory space loaded again that could be incompatible with the one that is actually used and this could actually break the Lua environment if not used right.

So, careful usage and testing is required to make sure it works as expected and this doesn't create any issues in running games.
