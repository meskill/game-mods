-- Keeps Lumos lit once it is cast, with the wand raised.
--
-- About DETACH_DELAY after a cast, if the light is on, the keeper re-creates it
-- outside the cast (DeactivateLumos, CancelCurrentSpell, ActivateLumos), so
-- cancelling the current spell no longer puts it out.
--
-- Every update then restores the light and the wand's arm request if missing,
-- giving up after MAX_RESTORES failed restores in a row.
--
-- Devil's Snares follow the player's Lumos with `bPlayerIsUsingLumos`, which
-- the game's PlayerLumosStart/PlayerLumosEnd set: Start at the Lumos cast, End
-- when the next spell's cast begins, even though the keeper keeps the light.
-- So every update starts the snares' Lumos where it is off, and releasing the
-- light ends it.
--
-- Casting Lumos at a kept light switches the wand to the Lumos tool and the
-- game removes the light 10-20 ms later. A light lost within SWITCH_WINDOW of
-- such a switch turns the keeper off; any other loss is restored.
--
-- On a mount the light is released and casts are ignored. A failing game call
-- or a new player makes the keeper forget the light.
--
-- Hooks only record events; every game call runs from update().

---@alias LumosState
---| "off" # Nothing kept; waiting for a Lumos cast.
---| "casting" # Lumos was cast; waiting to see whether it lit.
---| "kept" # The keeper forces the light on and the wand up.

local LUMOS_CLASS = "/Script/Phoenix.LumosSpellTool"

-- EStandardManagedPriority.AblAbility.
local LIGHT_PRIORITY = 1

-- ERightArmPriority.Lumos.
local ARM_PRIORITY = 8
-- ERightArmState.StartLumos (wand up for Lumos) and None.
local ARM_LUMOS = 14
local ARM_NONE = 0

-- Seconds to wait after a cast before detaching: lets the light come on and
-- the cast animation finish.
local DETACH_DELAY = 0.5

-- Seconds a cast may take to light before it counts as failed.
local CAST_TIMEOUT = 2

-- Failed restores in a row before the keeper gives up.
local MAX_RESTORES = 5

-- Seconds after a switch to the kept Lumos tool in which losing the light
-- counts as Lumos cast again.
local SWITCH_WINDOW = 0.5

---Whether the light is on: active and with its light actor (casting Lumos at
---a kept light removes the actor but leaves it active).
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
---@field private warn fun(message: string) Receives game calls that failed.
---@field private now fun(): number Seconds from a clock that never goes backwards.
---@field private snares fun(): LumosSnare[] The loaded Devil's Snares.
---@field private state LumosState
---@field private since number The time the state was entered.
---@field private lumos? ALumosSpellTool The Lumos spell tool of the cast being kept.
---@field private cast? ALumosSpellTool A Lumos cast reported since the last update.
---@field private switchedAt number Time of the last switch to the kept Lumos tool.
---@field private restores integer Updates in a row that restored the light.
---@field private raised boolean The keeper set its arm request.
local Keeper = {}
Keeper.__index = Keeper

local Lumos = {}

---@param warn fun(message: string) Receives game calls that failed.
---@param now fun(): number Seconds from a clock that never goes backwards.
---@param snares fun(): LumosSnare[] The loaded Devil's Snares (see snares.lua).
---@return LumosKeeper
function Lumos.keeper(warn, now, snares)
	return setmetatable({
		warn = warn,
		now = now,
		snares = snares,
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

---Records a wand switching to a spell tool; only the kept Lumos tool counts.
---@param tool integer The activated spell tool's address.
function Keeper:switched(tool)
	local lumos = self.lumos
	if lumos and lumos:IsValid() and lumos:GetAddress() == tool then
		self.switchedAt = self.now()
	end
end

---@private
---@param state LumosState
---@param now number
function Keeper:enter(state, now)
	self.state, self.since = state, now
end

---Forgets the light without calling the game (objects gone or failing).
function Keeper:forget()
	self.state, self.lumos, self.cast, self.switchedAt, self.raised = "off", nil, nil, -math.huge, false
end

---Starts (true) or ends (false) the player's Lumos for the snares not in that
---state, as the game does at a Lumos cast and at the next spell.
---@private
---@param using boolean
function Keeper:tellSnares(using)
	for _, snare in ipairs(self.snares()) do
		if snare.bPlayerIsUsingLumos ~= using then
			if using then
				snare:PlayerLumosStart()
			else
				snare:PlayerLumosEnd()
			end
		end
	end
end

---Puts the kept light out, clears the arm request and ends the snares' Lumos.
---@private
---@param pawn ABiped_Player
---@param now number
function Keeper:release(pawn, now)
	local lumos = self.lumos --[[@as ALumosSpellTool]]
	lumos:DeactivateLumos(LIGHT_PRIORITY, lumos)
	if self.raised then
		pawn:SetRightArmState(ARM_NONE, ARM_PRIORITY, true)
	end
	self:tellSnares(false)
	self.lumos, self.raised = nil, false
	self:enter("off", now)
end

---Forces the kept light on, the wand up and the snares' Lumos started, unless
---Lumos was cast at the light.
---@private
---@param pawn ABiped_Player
---@param now number
function Keeper:force(pawn, now)
	local lumos = self.lumos --[[@as ALumosSpellTool]]
	local shines = shining(lumos)
	-- Lumos cast again: put the light out.
	if not shines and now - self.switchedAt <= SWITCH_WINDOW then
		self:release(pawn, now)
		return
	end

	if shines then
		self.restores = 0
	elseif self.restores >= MAX_RESTORES then
		self:release(pawn, now)
		return
	else
		lumos:DeactivateLumos(LIGHT_PRIORITY, lumos)
		lumos:ActivateLumos(LIGHT_PRIORITY, lumos)
		self.restores = self.restores + 1
	end

	if pawn:GetRightArmState(ARM_PRIORITY) ~= ARM_LUMOS then
		pawn:SetRightArmState(ARM_LUMOS, ARM_PRIORITY, true)
		self.raised = true
	end
	self:tellSnares(true)
end

---@private
---@param pawn ABiped_Player
---@param now number
function Keeper:step(pawn, now)
	local cast = self.cast
	self.cast = nil

	if self.state == "off" then
		if cast and cast:IsValid() and not pawn:GetIsOnAMountOrInTransition() then
			self.lumos = cast
			self:enter("casting", now)
		end
		return
	end

	-- The game has no Lumos on a mount: let go of the light.
	if pawn:GetIsOnAMountOrInTransition() then
		if self.state == "kept" then
			self:release(pawn, now)
		else
			self.lumos = nil
			self:enter("off", now)
		end
		return
	end

	local lumos = self.lumos --[[@as ALumosSpellTool]]
	local wand = pawn:GetWand()
	if not lumos:IsValid() or not wand or not wand:IsValid() then
		self:forget()
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
		self:enter("kept", now)
		self:force(pawn, now)
	elseif now >= self.since + CAST_TIMEOUT then
		self.lumos = nil
		self:enter("off", now)
	end
end

---Acts on recorded events and keeps the light. Call on the game thread every
---200 ms during gameplay, mounts included. A failing game call is reported
---and the light forgotten.
---@param pawn ABiped_Player
function Keeper:update(pawn)
	-- One reading for the whole update.
	local ok, err = pcall(self.step, self, pawn, self.now())
	if not ok then
		self.warn("Game call failed, light forgotten: " .. tostring(err))
		self:forget()
	end
end

return Lumos
