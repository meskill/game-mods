-- Finds the loaded Devil's Snare actors. Both classes follow the player's Lumos
-- with `bPlayerIsUsingLumos`, set by their PlayerLumosStart/PlayerLumosEnd.

local CLASSES = { "DevilsSnare", "DevilsSnareDynamic" }

-- Seconds between scans: each scans every object, and snares load with their
-- level, so a new one waits at most this long.
local SCAN_INTERVAL = 1

---False also when UE4SS rejects the wrapper itself, as it does after the
---object behind it is gone.
---@param object UObject
---@return boolean
local function isValid(object)
	local ok, valid = pcall(function()
		return object:IsValid()
	end)
	return ok and valid == true
end

---@alias LumosSnare ADevilsSnare|ADevilsSnareDynamic

local Snares = {}

---Returns a function listing the valid loaded snares. It scans at most once per
---SCAN_INTERVAL and otherwise returns the last scan, without the snares gone
---since. Call on the game thread.
---@param now fun(): number Seconds from a clock that never goes backwards.
---@return fun(): LumosSnare[]
function Snares.finder(now)
	---@type LumosSnare[]
	local found = {}
	local nextScanAt = -math.huge
	return function()
		local time = now()
		if time >= nextScanAt then
			nextScanAt = time + SCAN_INTERVAL
			found = {}
			for _, class in ipairs(CLASSES) do
				for _, snare in ipairs(FindAllOf(class) or {}) do
					found[#found + 1] = snare --[[@as LumosSnare]]
				end
			end
		end
		local valid = {}
		for _, snare in ipairs(found) do
			if isValid(snare) then
				valid[#valid + 1] = snare
			end
		end
		return valid
	end
end

return Snares
