local FIELD_GUIDE_OPENED = "/Script/Phoenix.UIManager:FieldGuideMenuStart"
local FIELD_GUIDE_CLOSED = "/Script/Phoenix.UIManager:ExitFieldGuideWithReason"
local CURTAIN_LOWERED = "/Script/Phoenix.ScreenFadeWidget:OnCurtainLowered"
local FADE_IN_COMPLETE = "/Script/Phoenix.UIManager:OnFadeInComplete"
local CONJURATION_SHOWN = "/Script/Phoenix.PhoenixHUDWidget:ShowConjurationUI"
local DISABLE_PUSHED = "/Script/Phoenix.Biped_Player:PushDisableStack"
local DISABLE_POPPED = "/Script/Phoenix.Biped_Player:PopDisableStack"

-- EFieldGuideExitReasons values.
local BACK_TO_GAME, FAST_TRAVEL_FROM_MAP = 1, 8

---A UE4SS param wrapping `value`.
local function param(value)
	return {
		get = function()
			return value
		end,
	}
end

---A `PushDisableStack`/`PopDisableStack` param naming the stack.
local function stack(name)
	return param({
		ElementName = {
			ToString = function()
				return name
			end,
		},
	})
end

describe("hogwarts.gameplay", function()
	local Gameplay, hooks

	before_each(function()
		hooks = {}
		_G.RegisterHook = function(path, callback)
			assert.is_nil(hooks[path], "hooked twice: " .. path)
			hooks[path] = callback
		end
		package.loaded["hogwarts.gameplay"] = nil
		Gameplay = require("hogwarts.gameplay")
	end)

	after_each(function()
		_G.RegisterHook = nil
	end)

	---Subscribes a listener recording its calls as "stopped:<reason>" and
	---"resumed".
	local function recorded()
		local events = {}
		local unsubscribe = Gameplay.subscribe(function(active, reason)
			events[#events + 1] = active and "resumed" or ("stopped:" .. reason)
		end)
		return events, unsubscribe
	end

	local function openMenu()
		hooks[FIELD_GUIDE_OPENED](param(nil), param(0))
	end

	local function closeMenu(reason)
		hooks[FIELD_GUIDE_CLOSED](param(nil), param(reason), param(false), param(-1), param(""), param(""))
	end

	local function push(name)
		hooks[DISABLE_PUSHED](param(nil), stack(name))
	end

	local function pop(name)
		hooks[DISABLE_POPPED](param(nil), stack(name))
	end

	it("reports the Field Guide once per opening and closing", function()
		local events = recorded()
		assert.is_true(Gameplay.isActive())

		openMenu()
		openMenu()
		assert.is_false(Gameplay.isActive())
		closeMenu(BACK_TO_GAME)
		closeMenu(BACK_TO_GAME)


		assert.is_true(Gameplay.isActive())
		assert.same({ "stopped:menu", "resumed" }, events)
	end)

	it("goes from the map's fast travel into loading without resuming between", function()
		local events = recorded()

		openMenu()
		closeMenu(FAST_TRAVEL_FROM_MAP)
		hooks[CURTAIN_LOWERED](param(nil))
		assert.is_false(Gameplay.isActive())
		hooks[FADE_IN_COMPLETE](param(nil))

		assert.is_true(Gameplay.isActive())
		assert.same({ "stopped:menu", "resumed" }, events)
	end)

	it("ignores a fade-in outside a loading screen and a close without an open", function()
		local events = recorded()
		hooks[FADE_IN_COMPLETE](param(nil))
		closeMenu(FAST_TRAVEL_FROM_MAP)
		assert.same({}, events)
	end)

	it("follows the conjuration menu by its shown flag", function()
		local events = recorded()
		hooks[CONJURATION_SHOWN](param(nil), param(true), param(0))
		assert.is_false(Gameplay.isActive())
		hooks[CONJURATION_SHOWN](param(nil), param(false), param(0))

		assert.is_true(Gameplay.isActive())
		assert.same({ "stopped:conjuration", "resumed" }, events)
	end)

	it("keeps dialogue until every movement lock is popped, ignoring other stacks", function()
		local events = recorded()
		pop("MovingDisabledStack") -- pushed before the hooks
		push("PhotoModeDisabledStack")
		push("MovingDisabledStack")
		push("MovingDisabledStack")
		pop("MovingDisabledStack")
		assert.is_false(Gameplay.isActive())
		pop("PhotoModeDisabledStack")
		pop("MovingDisabledStack")

		assert.is_true(Gameplay.isActive())
		assert.same({ "stopped:dialogue", "resumed" }, events)
	end)

	it("stops and resumes once across overlapping reasons", function()
		local events = recorded()
		hooks[CONJURATION_SHOWN](param(nil), param(true), param(0))
		openMenu()
		closeMenu(BACK_TO_GAME)
		assert.is_false(Gameplay.isActive())
		hooks[CONJURATION_SHOWN](param(nil), param(false), param(0))

		assert.same({ "stopped:conjuration", "resumed" }, events)
	end)

	it("notifies every subscriber, sharing one set of hooks, until it unsubscribes", function()
		local first, unsubscribe = recorded()
		local second = recorded()

		openMenu()
		unsubscribe()
		closeMenu(BACK_TO_GAME)

		assert.same({ "stopped:menu" }, first)
		assert.same({ "stopped:menu", "resumed" }, second)
	end)

	it("lets a listener unsubscribe while being notified", function()
		local events, unsubscribe = {}, nil
		unsubscribe = Gameplay.subscribe(function()
			events[#events + 1] = "first"
			unsubscribe()
		end)
		local later = recorded()

		openMenu()
		closeMenu(BACK_TO_GAME)

		assert.same({ "first" }, events)
		assert.same({ "stopped:menu", "resumed" }, later)
	end)
end)
