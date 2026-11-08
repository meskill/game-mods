-- Spell casts of the local player's wand, reported by game hooks as they happen.
--
-- Hooked `/Script/Phoenix.SpellTool` functions:
-- * `Start`: a spell tool starts a cast. Only the player character's casts
--   count (`GetCharacter()` is an `ABiped_Player`); the basic wand attack runs as
--   the `Stupefy` tool and cancels the current cast without starting one.
-- * `OnMunitionFired`: the cast's spell fired a projectile.
-- * `OnMunitionImpact`: a projectile of the cast's spell hit something.
-- * `OnMunitionDestroyed`: a projectile of the cast's spell is gone; ends the
--   cast, except an upgraded Incendio's (below).
-- * `OnStop`: the cast's spell stopped; ends a cast that fired no projectile.
--
-- Events on the cast's spell tool are matched by its address, not by projectile.
-- None of the hooks is confirmed in the current game build ("Fix Bugged Biscuit
-- Quest" hooked `Start` in 2023). An event whose hook never runs goes unreported;
-- without the ending hooks, a cast lasts until the next one or `pause()`.
--
-- The upgraded Incendio (`HasUpgradedMechanics()`) leaves a ring of fire: an
-- area actor (`IncendioSpellTool.CurrentAOE`) spawned just after `Start` that
-- burns about 0.75 s, until it stops ticking or its lifetime runs out. No hook
-- marks that, so for such a cast only the tracker polls the area actor every
-- FIRE_POLL_MS and ends the cast once it burns out, or after FIRE_MAX_POLLS.
-- The base Incendio leaves no fire and ends with its fireball.

local Loop = require("ue4ss.loop")

local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"
local INCENDIO_CLASS = "/Script/Phoenix.IncendioSpellTool"

local FIRE_POLL_MS = 100
-- Polls before giving up on a fire that never appears or never burns out.
local FIRE_MAX_POLLS = 30

-- The basic wand attack runs as this spell tool. It is not a spell cast.
---@type table<string, true?>
local BASIC_CASTS = { stupefy = true }

-- DatabaseName is a UE4SS FName wrapper, not a Lua string.
local function nameText(value)
	return value:ToString()
end

---Why a fired cast ended.
---@alias HogwartsSpellEnd
---| "gone" # Its projectile was destroyed (an Incendio's fire burned out), or its spell stopped without firing one.
---| "replaced" # Another spell fired; its `fired` follows.
---| "cancelled" # The player started the basic wand attack.
---| "interrupted" # The tracker's owner called pause().

---@class HogwartsSpellCast
---@field name string Lowercased `DatabaseName`, e.g. "incendio".

---Callbacks run inside the hooks, on the game thread, in event order.
---@class HogwartsSpellListener
---@field fired? fun(cast: HogwartsSpellCast) The cast left the wand.
---@field impact? fun(cast: HogwartsSpellCast) Its projectile hit something; at most once per cast.
---@field ended? fun(cast: HogwartsSpellCast, reason: HogwartsSpellEnd) No further events follow for this cast.

---Reports the local player's spell casts from game hooks.
---@class HogwartsSpellTracker
---@field private listener HogwartsSpellListener
---@field private log? fun(message: string)
---@field private active boolean Hooked events are reported; see resume().
---@field private cast? HogwartsSpellCast The fired cast that has not ended.
---@field private castSpell integer Address of the spell tool that fired the cast.
---@field private launched boolean The cast fired a projectile.
---@field private impacted boolean The cast's impact has been reported.
---@field private fire? table Token of the running fire poll; replaced or cleared to stop it.
local Tracker = {}
Tracker.__index = Tracker

---Report hooked events, e.g. while the player is on foot in gameplay.
function Tracker:resume()
	self.active = true
end

---Ignore hooked events and end the fired cast, e.g. while gameplay is paused.
function Tracker:pause()
	self.active = false
	self:finish("interrupted")
end

---Polls an upgraded Incendio's new area actor until it burns out, then ends
---the cast. Stops when the cast ends for any other reason.
---@private
---@param incendio AIncendioSpellTool
function Tracker:watchFire(incendio)
	local before = incendio.CurrentAOE
	local beforeAddress = before and before:IsValid() and before:GetAddress() or 0
	local token, polls = {}, 0
	self.fire = token
	Loop.gameThread(FIRE_POLL_MS, function()
		if self:fireStopped(token) then
			return true
		end
		polls = polls + 1
		local area = incendio:IsValid() and incendio.CurrentAOE or nil
		local spawned = area ~= nil and area:IsValid() and area:GetAddress() ~= beforeAddress
		---@cast area AMunitionType_AOE_MultiFX
		local burnedOut = spawned and (not area:IsActorTickEnabled() or area:GetRemainingLifeTime() <= 0)
		if burnedOut or polls >= FIRE_MAX_POLLS then
			self:finish("gone")
			return true
		end
		return false
	end, function(message)
		if self.log then
			self.log("spell fire poll failed: " .. message)
		end
	end)
end

---Whether the fire poll identified by `token` should stop: its cast ended or
---another poll replaced it.
---@private
---@param token table
---@return boolean
function Tracker:fireStopped(token)
	return self.fire ~= token
end

---@param listener HogwartsSpellListener
function Tracker:listen(listener)
	self.listener = listener
end

local Spells = {}

---Registers the spell hooks and returns their tracker. Call once, when the mod
---loads; the hooks stay registered while it runs. The tracker starts paused and
---without a listener.
---@param warn fun(message: string) Receives hooks that could not be registered.
---@param log? fun(message: string) Receives cast events.
---@return HogwartsSpellTracker
function Spells.tracker(warn, log)
	---@type HogwartsSpellTracker
	local tracker = setmetatable({
		listener = {},
		log = log,
		active = false,
		castSpell = 0,
		launched = false,
		impacted = false,
	}, Tracker)

	---@param name string
	---@param handler fun(tracker: HogwartsSpellTracker, spell: ASpellTool)
	local function register(name, handler)
		local path = "/Script/Phoenix.SpellTool:" .. name
		local function hook(context)
			-- UE4SS passes the hooked object wrapped, unlike Types.lua's `self: UObject`.
			---@cast context RemoteUnrealParam<ASpellTool>
			Tracker.handle(tracker, handler, context)
		end
		local ok, err = pcall(RegisterHook, path, hook)
		if not ok then
			warn(("Hook %s unavailable: %s"):format(path, tostring(err)))
		end
	end
	register("Start", Tracker.started)
	register("OnMunitionFired", Tracker.munitionFired)
	register("OnMunitionImpact", Tracker.munitionImpact)
	register("OnMunitionDestroyed", Tracker.munitionDestroyed)
	register("OnStop", Tracker.stopped)
	return tracker
end

---@private
---@param reason HogwartsSpellEnd
function Tracker:finish(reason)
	local cast = self.cast
	if not cast then
		return
	end
	self.cast, self.fire = nil, nil
	if self.log then
		self.log(("spell ended database=%s %s"):format(cast.name, reason))
	end
	if self.listener.ended then
		self.listener.ended(cast, reason)
	end
end

---@private
---@param spell ASpellTool
---@return boolean
function Tracker:owns(spell)
	return self.cast ~= nil and spell:GetAddress() == self.castSpell
end

---@private
---@param spell ASpellTool
function Tracker:started(spell)
	local character = spell:GetCharacter()
	if not character or not character:IsValid() or not character:IsA(PLAYER_CLASS) then
		return
	end
	local name = nameText(spell.DatabaseName):lower()
	if BASIC_CASTS[name] then
		self:finish("cancelled")
		return
	end
	self:finish("replaced")
	local cast = { name = name }
	self.cast, self.castSpell, self.launched, self.impacted = cast, spell:GetAddress(), false, false
	local watch = spell:IsA(INCENDIO_CLASS) and spell:HasUpgradedMechanics()
	if self.log then
		self.log(("spell fired database=%s spell=%X"):format(name, self.castSpell))
	end
	if self.listener.fired then
		self.listener.fired(cast)
	end
	if watch then
		---@cast spell AIncendioSpellTool
		self:watchFire(spell)
	end
end

---@private
---@param spell ASpellTool
function Tracker:munitionFired(spell)
	if self:owns(spell) and not self.launched then
		self.launched = true
		if self.log then
			self.log("spell projectile fired")
		end
	end
end

---@private
---@param spell ASpellTool
function Tracker:munitionImpact(spell)
	local cast = self.cast
	if cast and self:owns(spell) and not self.impacted then
		self.impacted = true
		if self.log then
			self.log("spell projectile hit")
		end
		if self.listener.impact then
			self.listener.impact(cast)
		end
	end
end

---@private
---@param spell ASpellTool
function Tracker:munitionDestroyed(spell)
	if self:owns(spell) then
		if self.fire then
			-- watchFire() ends it once the fire burns out.
			return
		end
		self:finish("gone")
	end
end

---@private
---@param spell ASpellTool
function Tracker:stopped(spell)
	if self:owns(spell) and not self.launched then
		self:finish("gone")
	end
end

---Runs `handler` for a hooked call while events are reported.
---@private
---@param handler fun(tracker: HogwartsSpellTracker, spell: ASpellTool)
---@param context RemoteUnrealParam<ASpellTool>
function Tracker:handle(handler, context)
	if not self.active then
		return
	end
	local spell = context:get()
	if spell:IsValid() then
		handler(self, spell)
	end
end

return Spells
