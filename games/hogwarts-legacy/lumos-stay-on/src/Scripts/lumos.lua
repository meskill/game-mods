-- Keeps Lumos lit once it is cast, and the wand raised while it is lit.
--
-- Casts come from the shared spell tracker (hogwarts.spells): Lumos runs
-- `SpellTool:Start` when it turns on, about 0.18 s after the press; the light
-- is on 0.05 s later. A cast is kept if the Lumos spell tool shines (see
-- shining()) DETACH_DELAY later: the keeper moves the light off the cast with
-- DeactivateLumos, CancelCurrentSpell, ActivateLumos, so other spells no longer
-- end it.
--
-- While the light is kept, every update forces its state, whatever changed it:
-- - the light: if it no longer shines, DeactivateLumos then ActivateLumos;
--   after MAX_RESTORES updates in a row without light the keeper gives up;
-- - the arm: the game holds the wand up for Lumos with `StartLumos` at the
--   `Lumos` arm priority; if that request is missing it is set again. Other
--   casts take the arm at higher priorities and hand it back when they end.
--
-- Casting Lumos at a kept light (the spell slot or a quick-cast mod such as
-- QuickUtils) runs no `Start` and no spell button press: the wand switches to
-- the Lumos tool (`WandTool:OnActiveSpellToolChanged` with it as
-- `ActivatedSpell`) and 10-20 ms later the game takes the light away. Spell
-- set previews switch to it too, but leave the light alone. So a light gone
-- within SWITCH_WINDOW of a switch to the kept Lumos tool is that cast: the
-- keeper deactivates it and clears its arm request, so the wand comes down.
-- A light gone any other way is restored.
--
-- A failing game call (objects going away while loading) and a new player
-- (after loading) make the keeper forget the light without calling the game.
--
-- Hooks only record casts and switches; every game call runs from update().

---@alias LumosState
---| "off" # Nothing kept; waiting for a Lumos cast.
---| "casting" # Lumos was cast; waiting to see whether it lit.
---| "kept" # The keeper forces the light on and the wand up.

local LUMOS_CLASS = "/Script/Phoenix.LumosSpellTool"

-- EStandardManagedPriority.AblAbility, the priority LumosAlwaysStayOn used.
local LIGHT_PRIORITY = 1

-- ERightArmPriority.Lumos: the slot of the arm request the game sets for Lumos.
local ARM_PRIORITY = 8
-- ERightArmState.StartLumos, the wand held up as the game does for Lumos, and
-- ERightArmState.None, no request.
local ARM_LUMOS = 14
local ARM_NONE = 0

-- Seconds a lit cast stays on the wand before the light is moved: the cast
-- animation finishes first (LumosAlwaysStayOn waited 0.55 s after the press).
local DETACH_DELAY = 0.5

-- Seconds a cast may take to light before it counts as failed.
local CAST_TIMEOUT = 2

-- Updates in a row the light may stay out despite being restored before the
-- keeper gives up on it.
local MAX_RESTORES = 5

-- Seconds after a switch to the kept Lumos tool in which the light going out
-- counts as Lumos cast again (the game takes it 10-20 ms after the switch;
-- updates run every 200 ms).
local SWITCH_WINDOW = 0.5

---Whether the Lumos spell tool's light is on: active, with its light actor.
---Casting Lumos at a kept light removes the actor but leaves it active.
---@param lumos ALumosSpellTool
---@return boolean
local function shining(lumos)
	if not lumos:IsLumosActive() then
		return false
	end
	local actor = lumos:GetLumosActor()
	return actor ~= nil and actor:IsValid()
end

---Keeps the local player's Lumos lit after a cast, with the wand raised.
---@class LumosKeeper
---@field private log fun(message: string) Receives state changes and restores.
---@field private state LumosState
---@field private since number The `now` the state was entered.
---@field private lumos? ALumosSpellTool The Lumos spell tool of the cast being kept.
---@field private cast? ALumosSpellTool A Lumos cast reported since the last update.
---@field private switchedAt number `now` of the last switch to the kept Lumos tool.
---@field private restores integer Updates in a row that restored the light.
---@field private raised boolean The keeper set its arm request.
local Keeper = {}
Keeper.__index = Keeper

local Lumos = {}

---@param log fun(message: string) Receives state changes and restores.
---@return LumosKeeper
function Lumos.keeper(log)
	return setmetatable({
		log = log,
		state = "off",
		since = 0,
		switchedAt = -math.huge,
		restores = 0,
		raised = false,
	}, Keeper)
end

---Records a cast reported by the spell tracker; update() acts on it.
---@param cast HogwartsSpellCast
function Keeper:fired(cast)
	local spell = cast.spell
	if cast.name == "lumos" and spell:IsValid() and spell:IsA(LUMOS_CLASS) then
		---@cast spell ALumosSpellTool
		self.cast = spell
	end
end

---Records a wand switching to a spell tool (`WandTool:OnActiveSpellToolChanged`),
---any character's; only a switch to the Lumos tool being kept counts.
---@param tool integer The activated spell tool's address.
---@param now number Seconds, from the clock passed to update().
function Keeper:switched(tool, now)
	local lumos = self.lumos
	if lumos and lumos:IsValid() and lumos:GetAddress() == tool then
		self.switchedAt = now
	end
end

---@private
---@param state LumosState
---@param now number
---@param reason string
function Keeper:enter(state, now, reason)
	self.state, self.since = state, now
	self.log(("%s: %s"):format(state, reason))
end

---Forgets the light and anything recorded without calling the game: its
---objects are gone or failing, e.g. a new player after loading.
---@param reason string
function Keeper:forget(reason)
	if self.state ~= "off" then
		self.log("off: " .. reason)
	end
	self.state, self.lumos, self.cast, self.switchedAt, self.raised = "off", nil, nil, -math.huge, false
end

---Puts the kept light out and clears the arm request.
---@private
---@param pawn ABiped_Player
---@param now number
---@param reason string
function Keeper:release(pawn, now, reason)
	local lumos = self.lumos --[[@as ALumosSpellTool]]
	lumos:DeactivateLumos(LIGHT_PRIORITY, lumos)
	if self.raised then
		pawn:SetRightArmState(ARM_NONE, ARM_PRIORITY, true)
	end
	self.lumos, self.raised = nil, false
	self:enter("off", now, reason)
end

---Forces the kept light on and the wand up, unless Lumos was cast at it.
---@private
---@param pawn ABiped_Player
---@param now number
function Keeper:force(pawn, now)
	local lumos = self.lumos --[[@as ALumosSpellTool]]
	local shines = shining(lumos)
	if not shines and now - self.switchedAt <= SWITCH_WINDOW then
		self:release(pawn, now, "Lumos cast again")
		return
	end

	if shines then
		self.restores = 0
	elseif self.restores >= MAX_RESTORES then
		self:release(pawn, now, "the light could not be restored")
		return
	else
		lumos:DeactivateLumos(LIGHT_PRIORITY, lumos)
		lumos:ActivateLumos(LIGHT_PRIORITY, lumos)
		self.restores = self.restores + 1
		self.log("kept: light restored")
	end

	if pawn:GetRightArmState(ARM_PRIORITY) ~= ARM_LUMOS then
		pawn:SetRightArmState(ARM_LUMOS, ARM_PRIORITY, true)
		self.raised = true
		self.log("kept: wand raised")
	end
end

---@private
---@param pawn ABiped_Player
---@param now number
function Keeper:step(pawn, now)
	local cast = self.cast
	self.cast = nil

	if self.state == "off" then
		if cast and cast:IsValid() then
			self.lumos = cast
			self:enter("casting", now, "Lumos cast")
		end
		return
	end

	local lumos = self.lumos --[[@as ALumosSpellTool]]
	local wand = pawn:GetWand()
	if not lumos:IsValid() or not wand or not wand:IsValid() then
		self:forget("Lumos spell tool or wand gone")
		return
	end

	if self.state == "kept" then
		self:force(pawn, now)
		return
	end

	if now < self.since + DETACH_DELAY then
		return
	end
	if shining(lumos) then
		lumos:DeactivateLumos(LIGHT_PRIORITY, lumos)
		wand:CancelCurrentSpell()
		lumos:ActivateLumos(LIGHT_PRIORITY, lumos)
		self.restores = 0
		self:enter("kept", now, "light moved off the wand")
		self:force(pawn, now)
	elseif now >= self.since + CAST_TIMEOUT then
		self.lumos = nil
		self:enter("off", now, "the cast did not light")
	end
end

---Acts on what was recorded and forces a kept light. Call on the game thread
---every 200 ms while the player is on foot in gameplay. A failing game call
---makes the keeper forget the light.
---@param pawn ABiped_Player
---@param now number Seconds from a clock that never goes backwards.
function Keeper:update(pawn, now)
	local ok, err = pcall(self.step, self, pawn, now)
	if not ok then
		self:forget("game call failed: " .. tostring(err))
	end
end

return Lumos
