-- Casts a spell without a spell button: `WandTool:ActivateSpellTool(record,
-- false)`, then `CastActiveSpell()`. The spell needs no slot in a spell set.
-- Casting Lumos while it is lit puts it out, as the spell button does.
--
-- A spell is named by its record asset,
-- `/Game/Gameplay/ToolSet/Spells/<Name>/DA_<Name>SpellRecord`, e.g. `Lumos`,
-- `Disillusionment`, `Reparo`, `Wingardium`. The record is loaded if the game
-- has not loaded it yet.

local Objects = require("ue4ss.objects")

local RECORD_PATH = "/Game/Gameplay/ToolSet/Spells/%s/DA_%sSpellRecord.DA_%sSpellRecord"

---@alias HogwartsCastResult
---| "cast" # The wand cast the spell.
---| "unknown" # No spell record by that name.
---| "unavailable" # The player cannot cast it: not learned yet.
---| "failed" # The wand did not cast it, e.g. no wand.

local Cast = {}

---@type table<string, USpellToolRecord>
local records = {}

---The spell record asset of a spell, loaded if needed, or nil if there is
---none. Call on the game thread.
---@param name string The record's spell name, e.g. "Lumos".
---@return USpellToolRecord?
function Cast.record(name)
	---@type USpellToolRecord?
	local record = records[name]
	if record and record:IsValid() then
		return record
	end
	local path = RECORD_PATH:format(name, name, name)
	record = (Objects.find(path) or LoadAsset(path)) --[[@as USpellToolRecord?]]
	if not record or not record:IsValid() then
		records[name] = nil
		return nil
	end
	records[name] = record
	return record
end

---Casts the spell with the player's wand. Call on the game thread, while the
---player is in gameplay; whether the game casts a spell on a mount is unknown.
---@param pawn ABiped_Player
---@param name string The record's spell name, e.g. "Lumos".
---@return HogwartsCastResult
function Cast.spell(pawn, name)
	local record = Cast.record(name)
	if not record then
		return "unknown"
	end
	local wand = pawn:GetWand()
	if not wand or not wand:IsValid() then
		return "failed"
	end
	if not wand:IsSpellToolAvailable(record, false) then
		return "unavailable"
	end
	-- An invalid tool leaves the previous one active: casting it would cast that spell.
	local tool = wand:ActivateSpellTool(record, false)
	if not tool or not tool:IsValid() or not wand:CastActiveSpell() then
		return "failed"
	end
	return "cast"
end

return Cast
