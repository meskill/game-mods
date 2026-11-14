---@meta
-- Notes on dumped Phoenix conjuration types (dump/Phoenix.lua,
-- dump/Phoenix_enums.lua), merged into those declarations by LuaLS.
-- Editor-only, never require.
--
-- Used by quick-cast's conjuration.lua; from the dump and the UE4SS object
-- dump, not verified in game.

---The game's conjuration bookkeeping: one transient object
---(`/Engine/Transient.TransfigurationManager_<n>`), found with
---`FindFirstOf("TransfigurationManager")`.
---@class UTransfigurationManager
local UTransfigurationManager = {}

---Where the player can conjure: `Sanctuary` (1) in the Room of Requirement,
---`Biome_*` (2-6) in its vivariums, `None` (0) elsewhere (assumed: the values
---have not been read in game).
---@return EConjurationContext
function UTransfigurationManager:GetConjurationContext() end

---The Room of Requirement's spell tools, one per record: `AConjurationSpellTool`
---(`Conjuration`, create), `ATransformationSpellTool` (`Transformation`, alter)
---and `AVanishmentSpellTool` (`Vanishment`, Evanesco). Channelled spells
---(`AChannelingSpellTool`) with their own menus; whether
---`ActivateSpellTool` + `CastActiveSpell` runs them like the spell button is
---unknown.
---@class ATransfigurationSpellToolBase
local ATransfigurationSpellToolBase = {}
