---
name: ue4ss
description: Use when writing, reviewing, debugging, or deploying UE4SS mods in Lua or C++, including game integrations under games/, the shared helpers in engines/ue4ss/helpers, Unreal object hooks, API discovery, and type generation.
---

# UE4SS mod development

UE4SS exposes Unreal Engine objects to Lua and native C++ mods; these are not ordinary Unreal Editor plugins. Start with the target game's UE4SS version and existing integration under `games/` (repository-relative); shared helpers live in `engines/ue4ss/helpers/` and UE4SS types in `engines/ue4ss/types/`. Match documentation, types, and native SDK to that version; current online examples can differ from released builds.

For project tooling, consult `CONTRIBUTING.md`; also use the `lua` skill for Lua work and Lux commands. For UE4SS setup and compatibility, start at the [official documentation](https://docs.ue4ss.com/), rather than duplicating installation instructions here.

## Lua mods

### Development workflow

When adding new functionality to the game.

1. Make sure the game-specific types are present in the repo under `games/<game>/shared/types/dump`. If not, ask for a dump from UE4SS GUI (**Dumpers → Dump Lua Bindings** menu)
2. Read `games/<game>/README.md` for existing solutions, code or approaches before starting from scratch.
3. If new mod is needed add new mod to the `games/<game>/<mod_name>` and follow the repo rules.
4. Plan the experiment: create or reuse `games/<game>/devtools` mod inside `experiment-local.lua` file that imports one or multiple tracked experiments from `./experiments` folder. The experiment based on raw types suggestions should figure out possible candidates for helpful handlers and add examine its state.
5. Prepare the experiment's code and give the plan to the user or agent to run sequence of action in game to reproduce the desired behavior.
6. After the experiment happened in game analyze debug.log and `shots` directory to came to conclusion and update the experiment
7. Document the findings with the docs comment overrides in `games/<game>/shared/types/<title>` for specific functions or objects and update the README.md for the game. The docs should describe what happens on which events and how to use it properly.
8. Write the code for the adding new functionality, considering putting the code for sharing in shared package.

## C++ mods

- Follow the [C++ mod guide](https://docs.ue4ss.com/guides/creating-a-c%2B%2B-mod.html): build a shared library linked to the `UE4SS` CMake target, derive from `RC::CppUserModBase`, and export C-linkage `start_mod` and `uninstall_mod` entry points to create/delete the mod instance.
- Set mod metadata in the constructor; defer Unreal API access until `on_unreal_init` or later. Use the matching SDK's lifecycle callbacks and clean up resources on unload.
- Build against the matching UE4SS source/SDK and C runtime configuration; do not assume Debug/Release binaries or different SDK versions are interchangeable. Consult that checkout's build instructions rather than copying old build flags.
- [Deploy](https://docs.ue4ss.com/guides/installing-a-c%2B%2B-mod.html) the DLL as `Mods/<ModName>/dlls/main.dll` and enable it as above. Rebuild and restart the game to verify native changes; do not assume Lua reload replaces a DLL.
- inspect headers in the matching UE4SS checkout, starting with [CppUserModBase.hpp](https://raw.githubusercontent.com/UE4SS-RE/RE-UE4SS/main/UE4SS/include/Mod/CppUserModBase.hpp) and the `Unreal/UObject*` headers used by the C++ guide. Use those declarations for exact signatures.
- inspect Live View and the [object/header dumpers](https://docs.ue4ss.com/feature-overview/dumpers.html) in the target game. Generated C++ headers describe reflected game types, not a guaranteed ABI-safe SDK; UHT headers are for mirror Unreal projects. Do not invent paths, offsets, or memory layouts from another game's examples.
