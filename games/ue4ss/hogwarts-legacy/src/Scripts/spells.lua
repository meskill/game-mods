local AdaptiveTrigger = require("adaptive_triggers")

---@class HogwartsTriggerEffect
---@field mode DSXTriggerMode
---@field args integer[]
---@field untilImpact? boolean End when the projectile stops moving, not when it disappears.

local Mode = AdaptiveTrigger.Mode

-- Spell fire effects. main.lua owns the wand effects (baseline and trigger
-- hold); a fire effect below replaces them from the sample the spell fires
-- until the first later sample without its projectile (or, for untilImpact
-- effects, once the projectile has moved and then stopped).

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
---@type table<string, HogwartsTriggerEffect>
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

-- The basic wand attack runs as this spell tool. It is not a spell: while it is
-- active, R2 keeps the wand baseline.
---@type table<string, true?>
local BASIC_CASTS = { stupefy = true }

-- Cap on a fire effect: pooled munitions may never report destruction, and a
-- stuck effect must not outlive the fight.
local MAX_HOLD = 3

-- Squared speed (cm/s) below which a projectile counts as stopped.
local STOPPED_SPEED_SQUARED = 1

-- DatabaseName is a UE4SS FName wrapper, not a Lua string.
local function nameText(value)
    return value:ToString()
end

---Tracks the local player's active wand spell and the R2 effect of its cast.
---@class HogwartsSpellTracker
---@field private pawn integer
---@field private wand integer
---@field private spell integer
---@field private casting boolean
---@field private armed boolean A cast is held but has not fired yet.
---@field private armedMunition integer Projectile address when the cast began.
---@field private effect? HogwartsTriggerEffect
---@field private firedAt number
---@field private munition integer Address of the live projectile, or 0.
---@field private moved boolean The current projectile has been seen moving.
---@field private log? fun(message: string)
---@field private lifecycle? string Last logged spell identity and lifecycle flags.
local Tracker = {}
Tracker.__index = Tracker

local Spells = {}

---@param log? fun(message: string) Receives spell-state transitions and cast decisions.
---@return HogwartsSpellTracker
function Spells.tracker(log)
    return setmetatable({
        pawn = 0, wand = 0, spell = 0, casting = false,
        armed = false, armedMunition = 0, firedAt = 0, munition = 0, moved = false, log = log,
    }, Tracker)
end

---Identity and lifecycle flags of the sampled spell, for change logging only.
---@param wandAddress integer
---@param spell ASpellTool?
---@return string
local function describe(wandAddress, spell)
    if not spell then return ("wand=%X spell=none"):format(wandAddress) end
    local ok, text = pcall(function()
        return ("wand=%X spell=%X database=%s type=%s started=%s stopped=%s channeling=%s")
            :format(wandAddress, spell:GetAddress(), nameText(spell.DatabaseName),
                nameText(spell:GetSpellType()), tostring(spell:IsStarted_K2()),
                tostring(spell:IsStopped()), tostring(spell:IsChanneling()))
    end)
    return ok and text or ("wand=%X spell read error: %s"):format(wandAddress, tostring(text))
end

---The spell's projectile while it is still in flight.
---@param spell ASpellTool
---@return AMunitionType_Base?
local function liveMunition(spell)
    local munition = spell:GetActiveMunition()
    if munition and munition:IsValid() and not munition:IsActorBeingDestroyed() then
        return munition
    end
    return nil
end

---Drop the current fire effect. The last observed edge is kept, so resuming
---from a pause does not replay a spell that was already active before it.
function Tracker:clear()
    if self.log and self.effect then self.log("spell effect cleared: gameplay inactive") end
    self.effect = nil
end

---Sample the pawn's active spell. A held cast is `IsStopped()` false: in game
---logs it stays false for the whole cast (~300-500 ms, longer while held). The
---cast fires when `IsStarted_K2()` is sampled true (it is true for less than a
---sample, so rarely seen), when a new `GetActiveMunition()` projectile appears,
---or, failing both, when the cast ends.
---@param pawn ABiped_Player
---@param now number Seconds, used for the effect cap and logs.
---@return HogwartsTriggerEffect? effect Fire effect of the latest cast, if active.
---@return string? cast Spell name when the spell fired since the previous sample.
function Tracker:update(pawn, now)
    local wand = pawn:GetWand()
    local wandAddress = 0
    ---@type ASpellTool?
    local spell
    if wand and wand:IsValid() then
        wandAddress = wand:GetAddress()
        spell = wand:GetActiveSpellTool()
    end
    local spellAddress = 0
    local casting = false
    local started = false
    local munitionAddress = 0
    ---@type AMunitionType_Base?
    local munition
    ---@type string?
    local name
    if spell and spell:IsValid() then
        name = nameText(spell.DatabaseName):lower()
    else
        spell = nil
    end
    local tracked = spell
    if name and BASIC_CASTS[name] then tracked = nil end
    if tracked then
        spellAddress = tracked:GetAddress()
        casting = not tracked:IsStopped()
        started = tracked:IsStarted_K2()
        munition = liveMunition(tracked)
        munitionAddress = munition and munition:GetAddress() or 0
    end
    local pawnAddress = pawn:GetAddress()
    local changed = pawnAddress ~= self.pawn or wandAddress ~= self.wand
        or spellAddress ~= self.spell
    local castBegan = casting and (changed or not self.casting)
    local castEnded = not casting and self.casting and not changed
    self.pawn, self.wand, self.spell, self.casting = pawnAddress, wandAddress, spellAddress, casting
    if self.log then
        local lifecycle = describe(wandAddress, spell)
        if lifecycle ~= self.lifecycle then
            self.lifecycle = lifecycle
            self.log(("spell state pawn=%X %s"):format(pawnAddress, lifecycle))
        end
    end

    if changed and (self.effect or self.armed) then
        if self.log then self.log("spell effect cancelled: pawn, wand, or spell changed") end
        self.effect, self.armed = nil, false
    end
    if castBegan then
        self.armed, self.armedMunition = true, munitionAddress
        if self.log then self.log("cast held") end
    end

    ---@type string?
    local cast
    local newProjectile = munitionAddress ~= 0 and munitionAddress ~= self.armedMunition
    if self.armed and tracked and name and (started or newProjectile or castEnded) then
        self.armed = false
        local effect = EFFECTS[name]
        if self.log then
            self.log(("spell fired database=%s %s via %s"):format(name,
                effect and "matched" or "default",
                started and "started" or newProjectile and "projectile" or "cast end"))
        end
        effect = effect or DEFAULT_EFFECT
        self.effect, cast = effect, name
        self.firedAt, self.munition = now, 0
    end
    if self.effect then
        if munitionAddress ~= self.munition then
            self.munition, self.moved = munitionAddress, false
            if self.log then
                self.log(munition
                    and ("projectile %X %s life=%s"):format(munitionAddress, munition:GetFullName(),
                        tostring(munition:GetRemainingLifeTime()))
                    or ("projectile gone after %.2f s"):format(now - self.firedAt))
            end
        end
        local flying = munitionAddress ~= 0
        local impact = false
        if munition and self.effect.untilImpact then
            -- Only a projectile seen moving can stop: it may spawn before launch.
            local velocity = munition:GetVelocity()
            local moving = velocity.X * velocity.X + velocity.Y * velocity.Y
                + velocity.Z * velocity.Z >= STOPPED_SPEED_SQUARED
            impact = self.moved and not moving
            self.moved = self.moved or moving
        end
        local capped = now >= self.firedAt + MAX_HOLD
        -- The fire sample always sends the effect; later samples need the projectile.
        if cast == nil and (not flying or impact or capped) then
            if self.log then
                self.log(("spell effect ended after %.2f s%s"):format(now - self.firedAt,
                    impact and " (projectile stopped)" or flying and " (capped)" or ""))
            end
            self.effect = nil
        end
    end

    return self.effect, cast
end

return Spells
