# Devtools

Engine-independent parts of development tools for Lua-scripted games. An engine layer such as [`engines/ue4ss/devtools`](../../engines/ue4ss/devtools/README.md) builds the tool on top: it runs a script in the game with engine helpers (hooks, timers, object lookup) that report to the tracker, and supplies:

- the update loop, on the game thread;
- a formatting rule for engine values;
- the hooks and value reads that report to `devtools.tracking`.

Never ship these modules or make a shipped mod depend on them.

Wiring example:

```lua
local Journal = require("devtools.journal")
local Format = require("devtools.format")
local Tracking = require("devtools.tracking")

local journal = Journal.open(dir .. "/debug.log")
local format = Format.new(engineRule)
local tracker = Tracking.new({ journal = journal, format = format })

-- engine hooks and timers push into the tracker:
--   tracker:trackCall("Wand:OnArm", { state = 12 })
--   tracker:trackValue("arm", pawn:GetRightArmState(4))
-- on every update, on the game thread: journal:flush()
```

## `devtools.journal`

A log journal that writes timestamped record data to a file.

- `Journal.open(path)` open specified file, truncates it and writes the wall-clock time as the first line.
- `write(scope, text)` adds `+<sec,+3ms since opening> <scope> <text>` and returns the line.
- Multi-line text is indented under the first line, so every entry starts with a time.
- Writes are buffered until `flush()`, which the host calls once per update.
- A failing `write`, `flush` or `close` raises `cannot <action> <path>: <reason>`.

### journal usage examples

```lua
local Journal = require("devtools.journal")

local journal = Journal.open("debug.log")    -- empties the file, writes the "log opened" line
journal:write("#a1", "= 12")                  -- returns "+3.413 #a1 = 12"
journal:write("record", "line 1\nline 2")     -- continuation indented under the text
print(journal:now())                          -- 3.414: seconds since opening
journal:flush()                               -- once per update
journal:close()
```

### journal output examples

```text
+0.000 debug log opened 2026-10-27 22:41:00
+3.413 #a1 = 12
+3.414 record line 1
              line 2
```

## `devtools.format`

Formats Lua values into text for logging.

- list array part of tables first, then the other keys sorted
- limits printed numbers of elements for tables and the depth of nested tables
- detects cycles
- limits the length of printed strings, keys included
- never throws: a value whose metamethods fail shows as `<error: ...>`, the rest of the line is still shown
- configure limit settings on initialization
- could be extended with engine specific formatting rules

| Option | Default | Limits |
| --- | --- | --- |
| `itemsLimit` | 16 | elements shown per table or container, then `...N more` |
| `depthLimit` | 3 | nested tables and containers shown, then `{...}` |
| `stringLimit` | 300 | characters shown per string, then `...` |

All three are set in `Format.new(rule, options)`; a single `value(v, options)` call can override any of them.

### formatting usage examples

```lua
local Format = require("devtools.format")

local format = Format.new()
format:value({ 3, "a", x = 1, [true] = 2 })        --> {3, "a", [true]=2, x=1}
format:value({ 1, 2, 3, 4 }, { itemsLimit = 2 })   --> {1, 2, ...2 more}
format:value({ { { { 1 } } } }, { depthLimit = 2 }) --> {{{...}}}

local cyclic = {}
cyclic.self = cyclic
format:value(cyclic)                               --> {self=<cycle>}

local short = Format.new(nil, { itemsLimit = 1, stringLimit = 3 })
short:value({ "abcdef", "x" })                     --> {"abc...", ...1 more}
```

Engine values are formatted by a rule, asked first for every table and userdata at any depth. It returns text, or nil to format the value as plain Lua; an error in the rule shows as `<error: ...>` for that value only. The context reaches back into the same walk: `context:nested(v)` for a child, `context:same(v)` for what a wrapper holds, `context:quote(text)` for a string cut at `stringLimit`, `context:deep()` at the depth limit, `context.itemsLimit` for containers.

```lua
local format = Format.new(function(value, context)
	if getmetatable(value) == Vector then
		return ("Vector(%s, %s)"):format(context:nested(value.x), context:nested(value.y))
	end
end)
format:value({ 1, "x", position = Vector.new(1, 2) })  --> {1, "x", position=Vector(1, 2)}
```

## `devtools.tracking`

Used to track values changes and hook calls over time.

- `Tracking.new{ journal, format, callsInterval }` takes the journal (log and clock), the format (text of values, also used to compare them) and `callsInterval` in ms (default 0).
- `start(name)` begins a session and logs `track.start`; a running session is stopped first, so a hotkey can just call `start`.
- `trackValue(label, value)` logs the first value of a label as `track.init`, then `track.change old -> new` whenever its formatted text differs. Tables and engine objects changed in place are caught, as far as the format limits show them.
- `trackCall(label, args)` logs `track.call` with the named arguments, sorted by name. Within `callsInterval` of the label's last logged call it is only counted; the next logged call shows `(+N skipped)`.
- `stop()` logs `track.stop` and `track.report`, keeps the report by name and returns it.
- `report(name)` and `list()` give finished sessions; `compare(baseline, name)` lists what differs between two of them; `clear(name or "*")` forgets reports.
- Outside a session `trackValue` and `trackCall` do nothing, so hooks can stay installed and `start`/`stop` act as a gate.

The tracker reads nothing itself: the host pushes values from its own loop or hooks and reports calls from its hooks.

### tracking usage examples

```lua
local Tracking = require("devtools.tracking")

local tracker = Tracking.new({ journal = journal, format = format, callsInterval = 100 })

-- a hook, installed once; ignored until a session starts
RegisterHook("/Script/Phoenix.WandTool:OnRightArmStateChanged", function(wand, state, last)
	tracker:trackCall("WandTool:OnRightArmStateChanged", { self = wand:get(), state = state:get(), last = last:get() })
end)

tracker:start("hold")                                  -- e.g. from a hotkey
tracker:trackValue("arm", pawn:GetRightArmState(4))    -- from the host's loop, every update
print(tracker:stop())
print(tracker:compare("idle", "hold"))                 -- after a session "idle" of the quiet game
```

### tracking output examples

Every line has a scope `track.<kind>`, so the log can be filtered by kind: `grep "track\.change"`. Start and stop lines name the session.

```text
+12.000 track.start hold
+12.000 track.init arm = 3
+12.413 track.call WandTool:OnRightArmStateChanged last=3 self=BP_Wand_C'BP_Wand_C_1' state=12
+12.500 track.change arm 3 -> 12
+13.600 track.call Pawn:Tick dt=0.016 (+5 skipped)
+14.050 track.change arm 12 -> 3
+14.100 track.stop hold 2.100 s
+14.100 track.report session "hold": 2.100 s
                      ...
```

Report:

```text
session "hold": 2.100 s
values:
  arm  3 -> 12 -> 3  2 changes, first +0.500
calls:
  WandTool:OnRightArmStateChanged  1 calls (1 logged)  first +0.413  0.5/s
  Pawn:Tick  120 calls (12 logged)  first +0.002  57.1/s
```

Report comparison:

```text
compare "hold" with "idle"
calls:
  NEW    WandTool:OnRightArmStateChanged  1 calls, expected 0.0, first +0.413
values:
  CHANGED arm  here: 3 -> 12 -> 3; baseline: 3
1 unchanged not listed
```
