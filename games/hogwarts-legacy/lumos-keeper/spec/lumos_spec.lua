local Lumos = require("lumos")

-- ERightArmState.StartLumos at ERightArmPriority.Lumos, as the game requests it.
local ARM = "arm 14@8 true"
local MOVE = { "deactivate", "cancel", "activate" }
local RESTORE = { "deactivate", "activate" }
local WAND = 0x20

local function valid()
	return true
end

---A player whose wand holds a Lumos spell tool. Game calls the keeper makes are
---recorded in `calls` and change the scene the way the game did in the
---experiment: `request` is the arm state requested at the Lumos priority,
---`mounted` whether the player is on a mount, `time` the keeper's clock.
local function scene()
	local calls = {}
	local s = { calls = calls, request = 0, failing = false, mounted = false, time = 0 }

	-- `lit` is IsLumosActive(); `shining` is whether its light actor exists.
	local lumos = { lit = false, shining = false, IsValid = valid }
	local actor = { IsValid = valid }
	function lumos:GetAddress()
		return 0x30
	end
	function lumos:IsA(class)
		return class == "/Script/Phoenix.LumosSpellTool"
	end
	function lumos:IsLumosActive()
		if s.failing then
			error("object gone")
		end
		return self.lit
	end
	function lumos:GetLumosActor()
		return self.shining and actor or nil
	end
	function lumos:ActivateLumos()
		calls[#calls + 1] = "activate"
		self.lit, self.shining = true, true
	end
	function lumos:DeactivateLumos()
		calls[#calls + 1] = "deactivate"
		self.lit, self.shining = false, false
	end

	local other = { IsValid = valid }
	function other:GetAddress()
		return 0x31
	end
	function other:IsA()
		return false
	end

	local wand = { IsValid = valid, active = lumos }
	function wand:GetAddress()
		return WAND
	end
	function wand:GetActiveSpellTool()
		return self.active
	end
	function wand:CancelCurrentSpell()
		calls[#calls + 1] = "cancel"
		-- Cancelling the Lumos cast clears its arm request.
		s.request = 0
	end

	local pawn = {}
	function pawn:GetWand()
		return wand
	end
	function pawn:GetRightArmState(priority)
		return priority == 8 and s.request or 0
	end
	function pawn:GetIsOnAMountOrInTransition()
		return s.mounted
	end
	function pawn:SetRightArmState(state, priority, broadcast)
		calls[#calls + 1] = ("arm %d@%d %s"):format(state, priority, tostring(broadcast))
		if priority == 8 then
			s.request = state
		end
	end

	-- Devil's Snares: PlayerLumosStart/End set their flag as the game's do.
	local snares = 0
	---@param name string
	function s.snare(name)
		snares = snares + 1
		local address = 0x40 + snares
		local snare = { bPlayerIsUsingLumos = true, IsValid = valid }
		function snare:GetAddress()
			return address
		end
		function snare:PlayerLumosStart()
			calls[#calls + 1] = "start " .. name
			self.bPlayerIsUsingLumos = true
		end
		function snare:PlayerLumosEnd()
			calls[#calls + 1] = "end " .. name
			self.bPlayerIsUsingLumos = false
		end
		return snare
	end

	s.lumos, s.other, s.wand, s.pawn = lumos, other, wand, pawn
	return s
end

local function quiet() end

---A keeper on the scene's clock, `s.time`.
local function newKeeper(s)
	return Lumos.keeper(quiet, function()
		return s.time
	end)
end

---The game ends a snare's Lumos and the hook reports it.
local function gameEnds(keeper, snare)
	snare.bPlayerIsUsingLumos = false
	keeper:snareEnded(snare)
end

---Updates the keeper at `time` seconds.
local function update(s, keeper, time)
	s.time = time
	keeper:update(s.pawn)
end

---The wand switches to `tool` at `time` seconds.
local function switched(s, keeper, tool, time)
	s.time = time
	keeper:switched(tool)
end

---The player casts Lumos: the tracker reports it, the wand lights it and holds
---the arm up.
local function cast(s, keeper)
	keeper:fired({ name = "lumos", spell = s.lumos })
	s.lumos.lit, s.lumos.shining, s.request, s.wand.active = true, true, 14, s.lumos
end

local function clear(s)
	for i = #s.calls, 1, -1 do
		s.calls[i] = nil
	end
end

---@param ... table|string Lists of calls and single calls, in order.
local function calls(...)
	local all = {}
	for _, part in ipairs({ ... }) do
		if type(part) == "table" then
			table.move(part, 1, #part, #all + 1, all)
		else
			all[#all + 1] = part
		end
	end
	return all
end

---A keeper that kept a Lumos cast at 0.2 s from 0.8 s, with the wand raised.
local function kept(s)
	local keeper = newKeeper(s)
	cast(s, keeper)
	update(s, keeper, 0.2)
	update(s, keeper, 0.8)
	assert.same(calls(MOVE, ARM), s.calls)
	clear(s)
	return keeper
end

describe("lumos", function()
	it("moves a lit cast off the wand and raises it once the cast animation is done", function()
		local s = scene()
		local keeper = newKeeper(s)
		cast(s, keeper)
		update(s, keeper, 0.2)
		update(s, keeper, 0.6)
		assert.same({}, s.calls)

		update(s, keeper, 0.8)
		assert.same(calls(MOVE, ARM), s.calls)
	end)

	it("leaves a cast that does not light to the game", function()
		local s = scene()
		local keeper = newKeeper(s)
		keeper:fired({ name = "lumos", spell = s.lumos })
		update(s, keeper, 0.2)
		update(s, keeper, 2.4)
		update(s, keeper, 2.6)
		assert.same({}, s.calls)

		cast(s, keeper)
		update(s, keeper, 3)
		update(s, keeper, 3.6)
		assert.same(calls(MOVE, ARM), s.calls)
	end)

	it("ignores other spells' casts", function()
		local s = scene()
		local keeper = newKeeper(s)
		keeper:fired({ name = "confringo", spell = s.other })
		s.lumos.lit, s.lumos.shining = true, true
		update(s, keeper, 0.2)
		update(s, keeper, 1)
		assert.same({}, s.calls)
	end)

	it("forces the light on and the wand up on every update while kept", function()
		local s = scene()
		local keeper = kept(s)
		update(s, keeper, 1)
		assert.same({}, s.calls)

		-- Something put the light out and dropped the arm request.
		s.lumos.shining, s.request = false, 0
		update(s, keeper, 1.2)
		assert.same(calls(RESTORE, ARM), s.calls)
	end)

	it("gives up on a light that does not come back", function()
		local s = scene()
		local keeper = kept(s)
		s.lumos.ActivateLumos = function(self)
			s.calls[#s.calls + 1] = "activate"
			self.lit = true
		end
		s.lumos.shining = false
		for i = 1, 5 do
			update(s, keeper, 1 + i * 0.2)
		end
		clear(s)
		update(s, keeper, 2.2)
		assert.same({ "deactivate", "arm 0@8 true" }, s.calls)

		clear(s)
		update(s, keeper, 2.4)
		assert.same({}, s.calls)
	end)

	it("puts the light out and lowers the wand when Lumos is cast at it", function()
		local s = scene()
		local keeper = kept(s)
		-- The wand switches to the Lumos tool and the game takes the light away.
		switched(s, keeper, s.lumos:GetAddress(), 0.95)
		s.lumos.shining = false
		update(s, keeper, 1)
		assert.same({ "deactivate", "arm 0@8 true" }, s.calls)

		-- Off: the arm and light are left to the game; a new cast is kept again.
		clear(s)
		s.request = 0
		update(s, keeper, 1.2)
		assert.same({}, s.calls)
		cast(s, keeper)
		update(s, keeper, 1.4)
		update(s, keeper, 2)
		assert.same(calls(MOVE, ARM), s.calls)
	end)

	it("keeps the light through a switch to Lumos that leaves it on", function()
		local s = scene()
		local keeper = kept(s)
		-- A spell set preview switches to the Lumos tool and back.
		switched(s, keeper, s.lumos:GetAddress(), 0.95)
		update(s, keeper, 1)
		assert.same({}, s.calls)
	end)

	it("restores a light lost long after a switch, or after another tool's switch", function()
		local s = scene()
		local keeper = kept(s)
		switched(s, keeper, s.lumos:GetAddress(), 0.9)
		switched(s, keeper, s.other:GetAddress(), 1.5)
		s.lumos.shining = false
		update(s, keeper, 1.6)
		assert.same(RESTORE, s.calls)
	end)

	it("forgets the light without calling the game when a game call fails", function()
		local s = scene()
		local keeper = kept(s)
		s.failing = true
		update(s, keeper, 1)
		s.failing = false
		s.lumos.shining, s.request = false, 0
		update(s, keeper, 1.2)
		assert.same({}, s.calls)
	end)

	it("forgets the light without calling the game when a new player is created", function()
		local s = scene()
		local keeper = kept(s)
		keeper:forget()
		s.lumos.shining, s.request = false, 0
		update(s, keeper, 1)
		assert.same({}, s.calls)
	end)

	it("puts a kept light out and lowers the wand on a mount, and keeps the next cast on foot", function()
		local s = scene()
		local keeper = kept(s)
		s.mounted = true
		update(s, keeper, 1)
		assert.same({ "deactivate", "arm 0@8 true" }, s.calls)

		-- Riding: Lumos cast on the mount is not kept.
		clear(s)
		cast(s, keeper)
		update(s, keeper, 1.2)
		update(s, keeper, 2)
		assert.same({}, s.calls)

		-- Back on foot, a new cast is kept again.
		s.mounted = false
		cast(s, keeper)
		update(s, keeper, 2.2)
		update(s, keeper, 2.8)
		assert.same(calls(MOVE, ARM), s.calls)
	end)

	it("drops a cast being watched on a mount without calling the game", function()
		local s = scene()
		local keeper = newKeeper(s)
		cast(s, keeper)
		update(s, keeper, 0.2)
		s.mounted = true
		update(s, keeper, 0.4)
		s.mounted = false
		update(s, keeper, 0.8)
		assert.same({}, s.calls)
	end)

	it("starts again the snares' Lumos the game ends while the light is kept", function()
		local s = scene()
		local keeper = kept(s)
		local a, b = s.snare("a"), s.snare("b")
		gameEnds(keeper, a)
		gameEnds(keeper, b)
		gameEnds(keeper, a)
		update(s, keeper, 1)
		assert.same({ "start a", "start b" }, s.calls)

		clear(s)
		update(s, keeper, 1.2)
		assert.same({}, s.calls)
	end)

	it("ignores snares the game ends while nothing is kept", function()
		local s = scene()
		local keeper = newKeeper(s)
		gameEnds(keeper, s.snare("a"))
		cast(s, keeper)
		update(s, keeper, 0.2)
		update(s, keeper, 0.8)
		assert.same(calls(MOVE, ARM), s.calls)
	end)

	it("ends the snares' Lumos it started when it lets go of the light", function()
		local s = scene()
		local keeper = kept(s)
		gameEnds(keeper, s.snare("a"))
		update(s, keeper, 1)
		clear(s)
		s.mounted = true
		update(s, keeper, 1.2)
		assert.same({ "deactivate", "arm 0@8 true", "end a" }, s.calls)
	end)

	it("leaves the snares alone when Lumos cast at the light ends their Lumos", function()
		local s = scene()
		local keeper = kept(s)
		local a = s.snare("a")
		gameEnds(keeper, a)
		update(s, keeper, 1)
		clear(s)
		switched(s, keeper, s.lumos:GetAddress(), 1.1)
		s.lumos.shining = false
		gameEnds(keeper, a)
		update(s, keeper, 1.2)
		assert.same({ "deactivate", "arm 0@8 true" }, s.calls)
	end)

	it("skips a snare that is gone and keeps the light", function()
		local s = scene()
		local keeper = kept(s)
		local a = s.snare("a")
		gameEnds(keeper, a)
		a.IsValid = function()
			error("object gone")
		end
		update(s, keeper, 1)
		assert.same({}, s.calls)

		s.lumos.shining = false
		update(s, keeper, 1.2)
		assert.same(RESTORE, s.calls)
	end)
end)
