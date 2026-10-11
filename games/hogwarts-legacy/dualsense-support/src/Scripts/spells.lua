local AdaptiveTrigger = require("adaptive_triggers")

---@class HogwartsTriggerEffect
---@field mode DSXTriggerMode
---@field args integer[]
---@field untilImpact? boolean End when the projectile stops moving, not when it disappears.

local Mode = AdaptiveTrigger.Mode

-- Spell fire effects. main.lua owns the wand effects (baseline and trigger
-- hold); a fire effect below replaces them from the sample a cast fires until
-- hogwarts.spells reports it ended (or, for untilImpact effects, its impact).

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
local PROJECTILE = { mode = Mode.VIBRATION, args = { 3, 4, 5 }, untilImpact = true }
-- Light vibration from region 0 across the whole travel, one amplitude step
-- above the R2 hold vibration (VIBRATION's start cannot go below 1).
---@type HogwartsTriggerEffect
local UTILITY = { mode = Mode.MULTIPLE_POSITION_VIBRATION, args = { 20, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 } }
-- Heavy vibration for spells that hit many targets at once: maximum amplitude
-- from the top of travel, at a low rumbling frequency.
---@type HogwartsTriggerEffect
local AREA = { mode = Mode.VIBRATION, args = { 1, 8, 10 } }

-- Keys are lowercased DatabaseName values. Names verified in game logs: accio,
-- arrestomomentum, confringo, depulso, descendo, diffindo, disillusionment,
-- glacius, incendio, levioso. The rest follow the dumped Phoenix *SpellTool
-- class names, which matched every verified name; aliases cover the spoken
-- spell names.
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
	protego = UTILITY,
	wingardium = UTILITY,
	disillusionment = UTILITY,
	obliviate = UTILITY,
	episkey = UTILITY,
	finite = UTILITY,
	revelio = UTILITY,
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

---Fire effect for a cast's lowercased `DatabaseName`.
---@param name string
---@return HogwartsTriggerEffect effect
---@return boolean matched False when the default effect stands in.
function Spells.effect(name)
	local effect = EFFECTS[name]
	if effect then
		return effect, true
	end
	return DEFAULT_EFFECT, false
end

return Spells
