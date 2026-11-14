---The clock for timing inside a UE4SS mod: delays, durations and how often to
---search for objects.
---
---UE4SS runs inside a Windows game process, on Windows or under Wine (Proton,
---CrossOver). There its Lua's os.clock() is the MSVC CRT clock(): real time
---since the process started, in milliseconds, never going backwards. On a
---native Linux or macOS build os.clock() would be the process's CPU time
---summed over its threads instead, so change it here if one is ever needed.
local Clock = {}

---Seconds since the game started; never goes backwards.
---@return number
function Clock.now()
	return os.clock()
end

return Clock
