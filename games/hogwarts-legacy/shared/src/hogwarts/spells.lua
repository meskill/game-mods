-- Spell casts of the local player's wand, sampled from its active spell tool.
--
-- A held cast is `IsStopped()` false: in game logs it stays false for the whole
-- cast (~300-500 ms, longer while held). The cast fires when `IsStarted_K2()` is
-- sampled true (it is true for less than a sample, so rarely seen), when a new
-- `GetActiveMunition()` projectile appears, or, failing both, when the cast ends.
-- A fired cast lasts while its projectile is alive, capped at MAX_LIFETIME.

---Why a fired cast ended.
---@alias HogwartsSpellEnd
---| "gone" # Its projectile disappeared, or the spell had none.
---| "capped" # MAX_LIFETIME passed while the projectile still reported alive.
---| "replaced" # The same spell fired again.
---| "cancelled" # The pawn, wand, or active spell changed.
---| "interrupted" # The tracker's owner called interrupt().

---@class HogwartsSpellCast
---@field name string Lowercased `DatabaseName`, e.g. "incendio".
---@field firedAt number The `now` of the sample that saw it fire.

---Callbacks run inside `update()` and `interrupt()`, in event order.
---@class HogwartsSpellListener
---@field fired? fun(cast: HogwartsSpellCast) The cast left the wand.
---@field impact? fun(cast: HogwartsSpellCast) Its projectile moved, then stopped; at most once per cast.
---@field ended? fun(cast: HogwartsSpellCast, reason: HogwartsSpellEnd) No further events follow for this cast.

-- The basic wand attack runs as this spell tool. It is not a spell cast.
---@type table<string, true?>
local BASIC_CASTS = { stupefy = true }

-- Cap on a fired cast: pooled munitions may never report destruction.
local MAX_LIFETIME = 3

-- Squared speed (cm/s) below which a projectile counts as stopped.
local STOPPED_SPEED_SQUARED = 1

-- DatabaseName is a UE4SS FName wrapper, not a Lua string.
local function nameText(value)
    return value:ToString()
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

---Tracks the local player's active wand spell and reports its casts.
---@class HogwartsSpellTracker
---@field private listener HogwartsSpellListener
---@field private log? fun(message: string)
---@field private pawn integer
---@field private wand integer
---@field private spell integer
---@field private casting boolean
---@field private armed boolean A cast is held but has not fired yet.
---@field private armedMunition integer Projectile address when the cast began.
---@field private cast? HogwartsSpellCast The fired cast that has not ended.
---@field private munition integer Address of the cast's live projectile, or 0.
---@field private moved boolean The current projectile has been seen moving.
---@field private impacted boolean The cast's impact has been reported.
---@field private lifecycle? string Last logged spell identity and lifecycle flags.
local Tracker = {}
Tracker.__index = Tracker

local Spells = {}

---@param listener HogwartsSpellListener
---@param log? fun(message: string) Receives spell-state transitions and cast decisions.
---@return HogwartsSpellTracker
function Spells.tracker(listener, log)
    return setmetatable({
        listener = listener, log = log,
        pawn = 0, wand = 0, spell = 0, casting = false, armed = false, armedMunition = 0,
        munition = 0, moved = false, impacted = false,
    }, Tracker)
end

---@private
---@param reason HogwartsSpellEnd
---@param now? number
function Tracker:finish(reason, now)
    local cast = self.cast
    if not cast then return end
    self.cast = nil
    if self.log then
        self.log(("spell ended database=%s %s%s"):format(cast.name, reason,
            now and (" after %.2f s"):format(now - cast.firedAt) or ""))
    end
    if self.listener.ended then self.listener.ended(cast, reason) end
end

---End the fired cast, e.g. while gameplay is paused. The last observed spell
---state is kept, so resuming does not replay a cast that was already active.
function Tracker:interrupt()
    self:finish("interrupted")
end

---Sample the pawn's active spell and report what happened since the last sample.
---@param pawn ABiped_Player
---@param now number Seconds, used for the lifetime cap and logs.
function Tracker:update(pawn, now)
    local wand = pawn:GetWand()
    local wandAddress = 0
    ---@type ASpellTool?
    local spell
    if wand and wand:IsValid() then
        wandAddress = wand:GetAddress()
        spell = wand:GetActiveSpellTool()
    end
    ---@type string?
    local name
    if spell and spell:IsValid() then
        name = nameText(spell.DatabaseName):lower()
    else
        spell = nil
    end
    local tracked = spell
    if name and BASIC_CASTS[name] then tracked = nil end
    local spellAddress = 0
    local casting, started = false, false
    local munitionAddress = 0
    ---@type AMunitionType_Base?
    local munition
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

    if changed then
        if self.armed and self.log then self.log("cast cancelled: pawn, wand, or spell changed") end
        self.armed = false
        self:finish("cancelled", now)
    end
    if castBegan then
        self.armed, self.armedMunition = true, munitionAddress
        if self.log then self.log("cast held") end
    end

    local fired = false
    local newProjectile = munitionAddress ~= 0 and munitionAddress ~= self.armedMunition
    if self.armed and tracked and name and (started or newProjectile or castEnded) then
        self.armed, fired = false, true
        self:finish("replaced", now)
        if self.log then
            self.log(("spell fired database=%s via %s"):format(name,
                started and "started" or newProjectile and "projectile" or "cast end"))
        end
        self.cast = { name = name, firedAt = now }
        self.munition, self.moved, self.impacted = 0, false, false
        if self.listener.fired then self.listener.fired(self.cast) end
    end

    local cast = self.cast
    if not cast then return end
    if munitionAddress ~= self.munition then
        self.munition, self.moved = munitionAddress, false
        if self.log then
            self.log(munition
                and ("projectile %X %s life=%s"):format(munitionAddress, munition:GetFullName(),
                    tostring(munition:GetRemainingLifeTime()))
                or ("projectile gone after %.2f s"):format(now - cast.firedAt))
        end
    end
    if munition and not self.impacted then
        -- Only a projectile seen moving can stop: it may spawn before launch.
        local velocity = munition:GetVelocity()
        local moving = velocity.X * velocity.X + velocity.Y * velocity.Y
            + velocity.Z * velocity.Z >= STOPPED_SPEED_SQUARED
        if self.moved and not moving then
            self.impacted = true
            if self.log then self.log(("projectile stopped after %.2f s"):format(now - cast.firedAt)) end
            if self.listener.impact then self.listener.impact(cast) end
        end
        self.moved = self.moved or moving
    end
    -- The fire sample always reports the cast; later samples need the projectile.
    if fired then return end
    if munitionAddress == 0 then
        self:finish("gone", now)
    elseif now >= cast.firedAt + MAX_LIFETIME then
        self:finish("capped", now)
    end
end

return Spells
