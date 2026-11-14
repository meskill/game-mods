-- Where the player can conjure: the Room of Requirement (`Sanctuary`) and
-- its vivariums (the `Biome_*` contexts), read from the game's
-- TransfigurationManager (`GetConjurationContext()`, `EConjurationContext`).
--
-- The manager is one transient object (`TransfigurationManager_<n>`), found
-- with FindFirstOf and cached.
--
-- The room's spells are casts like any other (hogwarts.cast), by record:
-- `Conjuration` (create an object), `Transformation` (alter one) and
-- `Vanishment` (Evanesco, remove one); their record assets are in the UE4SS
-- object dump. `TransformationOverland` is a separate record for altering
-- outside the room.
--
-- Not verified in game: the context values in and out of the room.

local Lookup = require("ue4ss.lookup")

-- Seconds between manager searches while there is none (title screen, loading).
local SEARCH_INTERVAL = 1

---`EConjurationContext` values.
---@enum HogwartsConjurationContext
local Context = {
	NONE = 0,
	SANCTUARY = 1,
	BIOME_COASTAL = 2,
	BIOME_FOREST = 3,
	BIOME_GRASSLAND = 4,
	BIOME_SWAMP = 5,
	BIOME_TUNDRA = 6,
	DEV_CUSTOM_ROOM = 7,
}

local Conjuration = {}

Conjuration.Context = Context

local managers = Lookup.new(SEARCH_INTERVAL, function()
	local manager = FindFirstOf("TransfigurationManager")
	if manager and manager:IsValid() then
		return manager
	end
	return nil
end)

---The current conjuration context, or nil while the manager is missing.
---Call on the game thread.
---@return HogwartsConjurationContext?
function Conjuration.context()
	local manager = managers:get() --[[@as UTransfigurationManager?]]
	if not manager then
		return nil
	end
	return manager:GetConjurationContext() --[[@as HogwartsConjurationContext]]
end

---Whether the player is where conjuring works: the Room of Requirement or a
---vivarium. Call on the game thread.
---@return boolean
function Conjuration.inRoom()
	local context = Conjuration.context()
	return context ~= nil and context ~= Context.NONE
end

return Conjuration
