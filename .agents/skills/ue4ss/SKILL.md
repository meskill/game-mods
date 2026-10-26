---
name: ue4ss
description: Use when writing, reviewing, debugging, or deploying UE4SS mods in Lua or C++, including game integrations under games/, the shared helpers in engines/ue4ss/helpers, Unreal object hooks, API discovery, and type generation.
---

# UE4SS mod development

UE4SS exposes Unreal Engine objects to Lua and native C++ mods; these are not ordinary Unreal Editor plugins. Start with the target game's UE4SS version and existing integration under `games/` (repository-relative); shared helpers live in `engines/ue4ss/helpers/` and UE4SS types in `engines/ue4ss/types/`. Match documentation, types, and native SDK to that version; current online examples can differ from released builds.

For project tooling, consult `CONTRIBUTING.md`; also use the `lua` skill for Lua work and Lux commands. For UE4SS setup and compatibility, start at the [official documentation](https://docs.ue4ss.com/), rather than duplicating installation instructions here.

## Lua mods

- Follow the [Lua mod guide](https://docs.ue4ss.com/guides/creating-a-lua-mod.html). The deployed entry point is `Mods/<ModName>/Scripts/main.lua`; load additional modules with `require`. Preserve the repository's source layout separately from the deployment layout.
- Enable the mod with `<ModName> : 1` in `Mods/mods.txt`. An empty `enabled.txt` in the mod folder is an alternative, but does not provide load ordering.
- Use UE4SS object lookup and lifecycle callbacks to find game objects. [RegisterHook](https://docs.ue4ss.com/lua-api/global-functions/registerhook.html) requires the target UFunction to be loaded already; verify its full path and callback contract before hooking. Check object validity before use and dispatch game-thread work with `ExecuteInGameThread` when needed.
- UE4SS supplies these APIs inside the game, not in standalone Lua. Reload Lua changes through the GUI console's **Restart All Mods**, then exercise the actual game action and inspect mod-prefixed logs. Static checks alone do not prove hooks work.

## C++ mods

- Follow the [C++ mod guide](https://docs.ue4ss.com/guides/creating-a-c%2B%2B-mod.html): build a shared library linked to the `UE4SS` CMake target, derive from `RC::CppUserModBase`, and export C-linkage `start_mod` and `uninstall_mod` entry points to create/delete the mod instance.
- Set mod metadata in the constructor; defer Unreal API access until `on_unreal_init` or later. Use the matching SDK's lifecycle callbacks and clean up resources on unload.
- Build against the matching UE4SS source/SDK and C runtime configuration; do not assume Debug/Release binaries or different SDK versions are interchangeable. Consult that checkout's build instructions rather than copying old build flags.
- [Deploy](https://docs.ue4ss.com/guides/installing-a-c%2B%2B-mod.html) the DLL as `Mods/<ModName>/dlls/main.dll` and enable it as above. Rebuild and restart the game to verify native changes; do not assume Lua reload replaces a DLL.

## API and type sources

- **Lua API:** search the [API reference](https://docs.ue4ss.com/lua-api.html), then read the individual function/class page. The aggregate overview explicitly warns that it is incomplete and can lag behind those pages.
- **Lua API types:** use `Mods/shared/Types.lua` from the matching development release; upstream source is [assets/Mods/shared/Types.lua](https://raw.githubusercontent.com/UE4SS-RE/RE-UE4SS/main/assets/Mods/shared/Types.lua). Select the corresponding tag/commit instead of assuming `main` matches the game installation.
- **Game-specific Lua types:** in the UE4SS GUI, choose **Dumpers → Dump Lua Bindings**. Output goes to `Mods/shared/types`; see the [bindings guide](https://docs.ue4ss.com/guides/using-custom-lua-bindings.html). Include these and API definitions in the editor's type-library search paths (`workspace.library` in `.luarc.json`), preserving existing Lux libraries. Never `require` or execute type stubs: they can overwrite UE4SS globals.
- **C++ API/types:** inspect headers in the matching UE4SS checkout, starting with [CppUserModBase.hpp](https://raw.githubusercontent.com/UE4SS-RE/RE-UE4SS/main/UE4SS/include/Mod/CppUserModBase.hpp) and the `Unreal/UObject*` headers used by the C++ guide. Use those declarations for exact signatures.
- **Game classes and function paths:** inspect Live View and the [object/header dumpers](https://docs.ue4ss.com/feature-overview/dumpers.html) in the target game. Generated C++ headers describe reflected game types, not a guaranteed ABI-safe SDK; UHT headers are for mirror Unreal projects. Do not invent paths, offsets, or memory layouts from another game's examples.
