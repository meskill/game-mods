local AdaptiveTrigger = require("adaptive_triggers")

---@class HogwartsTriggerEffect
---@field mode DSXTriggerMode
---@field args integer[]
---@field untilImpact? boolean End when the projectile stops moving, not when it disappears.

local Mode = AdaptiveTrigger.Mode

-- Spell fire effects. main.lua owns the wand effects (baseline and trigger
-- hold); a fire effect below replaces them from the moment hogwarts.spells
-- reports a cast fired until it reports it ended (or, for untilImpact effects,
-- its impact).

-- Experimental R2 fire profiles, not Sony's EXE profiles. Positions use DSX
-- travel regions; parameter ranges are in backends/dsx/API.md.

-- Pulling spells resist from the top of travel (FEEDBACK start 1 is the
-- topmost documented region).
---@type HogwartsTriggerEffect
local PULL = { mode = Mode.FEEDBACK, args = { 1, 6 } }
-- Pushing spells switch the effect off so the trigger presses freely.
---@type HogwartsTriggerEffect
local PUSH = { mode = Mode.OFF, args = {} }
-- Slow, strong vibration while the projectile flies. Impact visuals keep some
-- munitions (e.g. Diffindo's) alive after the hit, so it ends on impact.
---@type HogwartsTriggerEffect
local PROJECTILE = { mode = Mode.VIBRATION, args = { 2, 5, 8 }, untilImpact = true }
-- Light vibration from region 0 across the whole travel, one amplitude step
-- above the R2 hold vibration (VIBRATION's start cannot go below 1).
---@type HogwartsTriggerEffect
local UTILITY = { mode = Mode.MULTIPLE_POSITION_VIBRATION, args = { 20, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 } }
-- Heavy vibration for spells that hit many targets at once: maximum amplitude
-- from the top of travel, at a low rumbling frequency.
---@type HogwartsTriggerEffect
local AREA = { mode = Mode.VIBRATION, args = { 1, 6, 9 } }

-- Keys are lowercased DatabaseName values, following the dumped Phoenix
-- *SpellTool class names; aliases cover the spoken spell names.
---@type table<string, HogwartsTriggerEffect?>
local EFFECTS = {
	-- Motion control.
	accio = PULL,
	levioso = PULL,
	depulso = PUSH,
	descendo = PUSH,

	-- Projectile spells.
	diffindo = PROJECTILE,
	expelliarmus = PROJECTILE,
	flipendo = PROJECTILE,
	avadakedavra = PROJECTILE,
	imperius = PROJECTILE,
	arrestomomentum = PROJECTILE,
	bombarda = PROJECTILE,
	confringo = PROJECTILE,
	oppugno = PROJECTILE,
	crucio = PROJECTILE,
	confundo = PROJECTILE,
	glacius = PROJECTILE,

	-- Utility spells.
	lumos = UTILITY,
	petrificus = UTILITY,
	wingardium = UTILITY,
	disillusionment = UTILITY,
	obliviate = UTILITY,
	episkey = UTILITY,
	finite = UTILITY,
	reparo = UTILITY,

	-- Area spells.
	incendio = AREA,
}
-- Sony identifies Bombarda objects by both names.
EFFECTS.expulso = EFFECTS.bombarda
EFFECTS.imperio = EFFECTS.imperius
EFFECTS.petrificustotalus = EFFECTS.petrificus
EFFECTS.wingardiumleviosa = EFFECTS.wingardium
EFFECTS.depulsomaxima = EFFECTS.depulso
EFFECTS.glaciusmaxima = EFFECTS.glacius
EFFECTS.reparomaxima = EFFECTS.reparo

-- Any other fired spell still gets feedback; its logged database name identifies it.
---@type HogwartsTriggerEffect
local DEFAULT_EFFECT = { mode = Mode.FEEDBACK, args = { 2, 3 } }

local Spells = {}

-- Spells with no fire effect of their own: R2 goes back to the wand's effect
-- (baseline, or the hold vibration while the wand is raised).
---@type table<string, true?>
local WAND_EFFECT = { revelio = true, protego = true }

---Fire effect for a cast's lowercased `DatabaseName`, or nil when R2 should
---keep the wand's effect.
---@param name string
---@return HogwartsTriggerEffect? effect
---@return "matched"|"default"|"wand" source
function Spells.effect(name)
	if WAND_EFFECT[name] then
		return nil, "wand"
	end
	local effect = EFFECTS[name]
	if effect then
		return effect, "matched"
	end
	return DEFAULT_EFFECT, "default"
end

return Spells
