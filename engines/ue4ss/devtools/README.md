# UE4SS devtools

Devtools for any UE4SS game: wraps [`core/devtools`](../../../core/devtools/README.md) with UE4SS specifics. Tracks hook calls and value changes, and takes game screenshots, to investigate how a game works.

Never ship it or make a shipped mod depend on it.

## Usage

### Create game-specific mod

`games/<game>/devtools/`, deployed by `dist`. Its `lux.toml` depends on `ue4ss-devtools`, `devtools` and `ue4ss` (Lux does not package transitive dependencies).

```text
games/<game>/devtools/
├── mod.toml         name = "<game>-devtools", build type "ue4ss"
├── lux.toml
└── src/
    ├── main.lua         requires experiment; logs to UE4SS.log if it fails or is missing
    ├── experiments/     tracked experiments, e.g. menu.lua
    └── experiment-local.lua   local, ignored: starts devtools with its options, runs experiments
```

`main.lua`:

```lua
local ok, err = xpcall(require, debug.traceback, "experiment-local")
if not ok then
	print(("[<game>-devtools] experiment-local.lua failed or is missing: %s\n"):format(err))
end
```

`start(options)` returns the API, `dev`. The log and screenshots go to `dir`: `debug.log` and `shots/`. In `experiment-local.lua`, `dir = "${EXPERIMENT_DATA_DIR}"` becomes the devtools mod's `experiment-data/` in this repository (ignored by the VCS) when `dist` copies it into the build; `dist` also deletes `shots/` there on every deploy (`debug.log` is emptied on each load).

Devtools works only while tracking. Outside it, hooks, timers, marks, value tracking and screenshots do nothing; only `dev.log` and errors are written. Tracking is off on load: the track key starts and stops it; `tracking = true` starts it on load (session `start`).

| Option | Default | Meaning |
| --- | --- | --- |
| `dir` | required | existing output directory |
| `tracking` | `false` | `true` tracks from the load instead of waiting for the track key |
| `markKey` | `{ key = Key.F7 }` | key writing a mark: `{ key = Key.OEM_TWO, modifiers = { ModifierKey.CONTROL } }`, as `RegisterKeyBind` takes them; `false` for none |
| `trackKey` | `{ key = Key.F8 }` | key starting and stopping tracking, same shape; `false` for none |
| `callsInterval` | `0` | ms between logged calls of one function while tracking |
| `format` | `{ itemsLimit = 16, depthLimit = 3, stringLimit = 300 }` | limits of logged values |
| `onMark` | none | `function(dev, mark, text)` called after each mark |

Enable it with `<game>-devtools : 1` in `Mods/mods.txt`.

### Run devtools

Each `experiments/<name>.lua` returns a function that gets `dev`:

```lua
---@param dev DebugApi
return function(dev)
	dev.hook("/Script/Phoenix.WandTool:OnRightArmStateChanged", { player = true })
	dev.every(100, function()
		local pawn = dev.pawn()
		dev.track.value("arm", pawn and pawn:GetRightArmState(4))
	end)
end
```

`experiment-local.lua` is yours to change freely: ignored by the VCS, copied into the build by `dist`. It starts devtools with this run's options and runs the experiments:

```lua
local dev = require("ue4ss.devtools").start({
	dir = "${EXPERIMENT_DATA_DIR}", -- replaced by dist
	onMark = function(dev, mark)
		dev.shot({ name = "mark" .. mark, ui = true })
	end,
})
require("experiments.menu")(dev)
require("experiments.wand")(dev)
```

It runs when the mods load: wrap anything that needs gameplay objects in `dev.after(...)`.

1. Edit `experiment-local.lua` or an experiment.
2. `dist -g <game> -m <game>-devtools`.
3. **Restart All Mods**; the previous run's hooks, timers and sessions are gone.
4. Act in the game: **F8** starts tracking, **F7** marks, **F8** stops.
5. Read `experiment-data/debug.log`.

### Explore logs

`<dir>/debug.log`, emptied on each load. Times are seconds since it opened.

```text
+0.001 debug started, writing to .../games/hogwarts-legacy/devtools; UE4SS 3.0.1, Unreal 4.27
+0.002 debug menu: F8, open and close the pause menu and the map (F7 between), F8
+5.000 track.start track1
+5.002 track.init arm = 3
+9.102 mark #1
+9.877 track.call WandTool:OnRightArmStateChanged LastRightArmState=3 RightArmState=12 self=BP_Wand_C'BP_Wand_C_1'
+9.900 track.change arm 3 -> 12
+11.20 track.stop track1 6.200 s
```

| Scope | Lines |
| --- | --- |
| `debug` | start, `dev.log`, `=` values of `after`, `!` errors |
| `track.<kind>` | `start`, `init`, `change`, `call`, `stop`, `report`; `start` and `stop` name the session |
| `mark` | marks |
| `shot` | screenshots: request, `= <path> (<ms> ms)`, `!` errors |

## Api

### Hooks

| Function | Result |
| --- | --- |
| `dev.hook(path, options)` | Tracks each call with `self` and named parameters while a session runs. Errors if the function is not loaded. |
| `dev.hookClass(class, options)` | Hooks every function of a class; returns how many. |
| `dev.spawned(class)` | Tracks new objects of a class as calls `new <class>`. |

Options: `player` (only the local player's objects); for classes also `inherited`, `match`, `skip` (default `{ "Tick" }`). Hooks last until the mods restart.

### Tracking

| Function | Result |
| --- | --- |
| `dev.track.start(name)` / `dev.track.stop()` | Starts / stops a session; stop logs and returns the report. |
| `dev.track.value(label, value)` | Logs the first value, then each change. |
| `dev.track.call(label, args)` | Logs a call. |
| `dev.track.object(label, object, { match })` | Tracks each property as `<label>.<Property>`. |
| `dev.track.report(name)` | Report of a finished session. |
| `dev.track.compare(baseline, name)` | Differences between two sessions of this run. |

`value`, `call` and `object` are ignored outside a session.

### Timers

| Function | Result |
| --- | --- |
| `dev.after(ms, fn)` | Runs `fn` once on the game thread; logs its values. Returns the id. |
| `dev.every(ms, fn)` | Runs `fn` until it returns `true` or is stopped. Returns the id. |
| `dev.stop(id)` | Stops a timer. |

### Marks

`dev.mark(text)` logs `mark #<n> <text>`; the mark key logs `mark #<n>`.

### Finding things

| Function | Result |
| --- | --- |
| `dev.pc()`, `dev.pawn()` | Local player controller and pawn, or nil. |
| `dev.find(name)` | First live instance of a class by short name. |
| `dev.fmt(value, options)`, `dev.log(...)` | Text of a value; log under `debug`. |

Names come from the game's Lua bindings (UE4SS GUI: **Dumpers → Dump Lua Bindings**). The rest of UE4SS's API is available directly.

### Screenshots

`dev.shot{ name, ui }` saves `<dir>/shots/shot-<n>[-<name>].png` with the game's `shot` command (`ui = true` includes the HUD); `dir` must not contain spaces unless it is under the game's `Binaries/Win64`, as the console cuts arguments at spaces. One at a time; it never raises. Names repeat on each load: `dist` clears old shots on deploy, and a same-named shot replaces the old one. Each shot freezes the game for about 200 ms.

Screenshot every mark:

```lua
require("ue4ss.devtools").start({
	onMark = function(dev, mark)
		dev.shot({ name = "mark" .. mark, ui = true })
	end,
})
```

## Limits

- Hooks only see reflected calls (`ProcessEvent`, Blueprints), not native-to-native ones.
- Hook arguments are named by position; the return value is not available.
- Blueprint classes (`/Game/...`) can be hooked only after their asset loads.
- Values are compared by formatted text, within the format limits.
- Enum parameters arrive as numbers.
