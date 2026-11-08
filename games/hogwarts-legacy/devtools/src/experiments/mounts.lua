-- Which signals mark what the player does on a mount, the broom first:
-- mounting and dismounting, speeding up, boost (nitro) start and end, the
-- meter running out and refilling, boost rings, hovering and landing; for
-- creatures, gait, charge, take-off and landing. Hooks every function of the
-- broom, the broom and creature mount tools, the creature mount handler and
-- component (getters and per-frame updates left out), and the game's own
-- adaptive trigger effects (UTriggerEffect, the effects the game would send
-- to a DualSense); polls the ridden mount's state and the player's active
-- ability every 100 ms; screenshots when boost starts or ends and when the
-- meter starts refilling.
--
-- Mount hooks are not filtered by player (a broom is not owned by its rider):
-- test away from other riders, e.g. not during a race.
--
-- In the game, outdoors: start tracking; summon the broom (mark); fly level;
-- hold speed up (R2) (mark); boost (L2) until the meter runs out (mark),
-- keep flying until it refills (mark); fly through a boost ring if one is
-- near; slow down to a hover; land and dismount (mark); fly up high and
-- dive-dismount (mark). If a creature mount is unlocked: mount it, gallop,
-- charge (Graphorn) or take off and land (Hippogriff), dismount, marking
-- each. Stop tracking.
--
-- Findings (broom only: one flight, 6 boosts, one ground dismount; no
-- creature, no boost ring, no dive dismount):
-- Two FlyingBroom actors per flight: BP_FlyingBroomProp_<Broom>_C, the prop
-- that scales in when summoned (SetScaleInfo bInScaleIn=true) and out after
-- dismounting, and BP_FlyingBroomCapsule_<Broom>_C, the ridden pawn whose
-- state the getters report. Both spawned on summoning.
-- Mounting: on the capsule, SetupBroomComponents, SetupPlayerOnBroom(player)
-- and AttachPlayerToBroomOnMount(player, prop, InMountType 0 = from idle)
-- run together ~0.6 s after GetIsOnAMountOrInTransition turns true.
-- Dismounting: DetachPlayerFromBroomOnDismount(player, prop) on the capsule
-- at the moment the rider leaves; the getters stop working right after
-- (meter max 0) and GetIsOnAMountOrInTransition stays true for ~2 s more.
-- Never called: OnPlayerMountBroom, OnPlayerDismountBroom, OnBoostStart,
-- OnTurboStart, OnBarrelRollStart, BroomEvent, DismountBroom, MountBroom,
-- SpawnAndMountBroom, Biped_Player:SpawnItemMountCallback.
-- AcceleratePressed ran 4 times: for 3 of the 6 moments the broom left
-- hover mode, and once mid-boost, so it is no input signal.
-- IsInHoverMode: true when slow (hovering, ~0-8 m/s), false while speeding
-- up or boosting; flips the moment the speed-up starts and ends.
-- IsInBoost: true while boosting (flames on the broom tail), 18-20 m/s
-- against 14 m/s when speeding up; ends 0.6 s after the meter hits 0.
-- The meter drains only while the boost button is held (IsInBoost true,
-- IsBoostRecharging false). Letting go turns IsBoostRecharging true and the
-- meter refills, while IsInBoost stays true for the boost's last seconds;
-- boosting again turns it false. Confirmed with hold, release, hold again.
-- After running out the meter refills with IsBoostRecharging false: 0 to 10 %
-- in ~3 s, then ~1 s per 10 %, full ~12 s after running out.
-- GetLastHitObject stayed Unknown and nothing ran when bumping into terrain;
-- GetDismountType read DiveDismount (0) all flight, before a ground dismount.
-- IsInTurbo and IsForceLanding stayed false.
-- The game's own trigger effects are unused here: the broom's
-- pBoostTriggerEffect, pSpeedUpTriggerEffect and pInactiveTriggerEffect are
-- null, and no TriggerEffectManager or TriggerEffect function ran.
-- The player's AblAbilityComponent reported no active ability all flight.

local BROOM_CLASS = "/Script/Phoenix.FlyingBroom"
local CREATURE_CLASS = "/Script/Phoenix.Creature_Character"
local ABILITY_COMPONENT_CLASS = "/Script/AbleCore.AblAbilityComponent"

-- Getters (polled below) and functions that likely run every frame.
local SKIP = {
	"Tick",
	"^Get",
	"^Is",
	"^Has",
	"^Can",
	"^Should",
	"^Allow",
	"^K2_Get",
	"^Update",
}

local CLASSES = {
	BROOM_CLASS,
	"/Script/Phoenix.BroomItemTool",
	"/Script/Phoenix.CreatureMountItemTool",
	"/Script/Phoenix.CreatureMountHandler",
	"/Script/Phoenix.Creature_MountComponent",
}

-- Besides the classes above; the trigger effect manager's activate and
-- deactivate calls are hooked below, with the effect's settings.
local HOOKS = {
	"/Script/Phoenix.Biped_Player:SpawnItemMountCallback",
	"/Script/Toolset.TriggerEffectManager:PauseTriggerEffects",
	"/Script/Toolset.TriggerEffectManager:ResumeTriggerEffects",
}

-- Seconds between scans for the ridden mount while the player is on a mount
-- the controller does not possess.
local SCAN_SECONDS = 1

-- Speed is tracked in steps of this many metres per second, so it changes
-- less often than every poll.
local SPEED_STEP = 2

-- TriggerModeEnum
local TRIGGER_MODES = { [0] = "Off", "Weapon", "Vibration", "Feedback" }
-- EMountFlyingGait
local GAITS = { [0] = "Stop", "Hover", "Slow", "Fast" }
-- EMountCombatChargeState
local CHARGE_STATES = { [0] = "Inactive", "IntoTransition", "ChargeLoop", "OutOfTransition" }
-- EMountMovementState
local MOVEMENT_STATES = { [0] = "Ground", "Flying", "Takeoff", "Landing" }
-- EFlyingBroomHitObjectType
local HIT_OBJECTS = { [0] = "Unknown", "Creature", "Character", "CharacterOnBroom", "NoMount" }
-- EBroomDismountType
local DISMOUNT_TYPES = { [0] = "DiveDismount", "GroundDismount", "InstantDismount" }

---The value of read(), or its error as text.
---@param read fun(): any
local function try(read)
	local ok, value = pcall(read)
	if ok then
		return value
	end
	return ("<error: %s>"):format(tostring(value))
end

---@param object UObject?
---@return string
local function describe(object)
	if not object or not object:IsValid() then
		return "none"
	end
	return ("%s %X"):format((object:GetFName() --[[@as any]]):ToString(), object:GetAddress())
end

---The name of an enum value, or the number when the table lacks it.
---@param names table<number, string>
---@param value any
---@return string
local function enumName(names, value)
	return names[value] or tostring(value)
end

---One line describing a game trigger effect's settings.
---@param effect UTriggerEffect?
---@return string
local function effectText(effect)
	if not effect or not effect:IsValid() then
		return "none"
	end
	local mode = enumName(TRIGGER_MODES, effect.TriggerMode)
	local sides = (effect.RightTrigger and "R2" or "") .. (effect.LeftTrigger and "L2" or "")
	local settings = ""
	if mode == "Weapon" then
		settings = ("start=%d end=%d strength=%d"):format(
			effect.WeaponStartPosition,
			effect.WeaponEndPosition,
			effect.WeaponStrength
		)
	elseif mode == "Vibration" then
		settings = ("position=%d frequency=%d amplitude=%d"):format(
			effect.VibrationPosition,
			effect.VibrationFrequency,
			effect.VibrationAmplitude
		)
	elseif mode == "Feedback" then
		settings = ("position=%d strength=%d"):format(effect.FeedbackPosition, effect.FeedbackStrength)
	end
	return ("%s %s %s"):format(sides ~= "" and sides or "none", mode, settings)
end

---Speed of an actor in SPEED_STEP metres per second steps.
---@param actor AActor
---@return string
local function speedText(actor)
	local velocity = actor:GetVelocity() --[[@as any]]
	local metres = math.sqrt(velocity.X ^ 2 + velocity.Y ^ 2 + velocity.Z ^ 2) / 100
	return ("%d m/s"):format(math.floor(metres / SPEED_STEP + 0.5) * SPEED_STEP)
end

---Logs the game's trigger effects as they are activated, deactivated or
---changed.
---@param dev DebugApi
local function followTriggerEffects(dev)
	for _, name in ipairs({ "ActivateTriggerEffect", "DeactivateTriggerEffect" }) do
		local ok, err = pcall(
			RegisterHook,
			"/Script/Toolset.TriggerEffectManager:" .. name,
			function(_, effect, controller)
				local object = (effect --[[@as any]]):get()
				dev.track.call("trigger " .. name, {
					effect = describe(object),
					settings = try(function()
						return effectText(object)
					end),
					controller = try(function()
						return (controller --[[@as any]]):get()
					end),
				})
			end
		)
		if not ok then
			dev.log("! " .. tostring(err))
		end
	end
	-- Settings changes; tracked as values, so repeated calls with the same
	-- settings log nothing.
	local ok, err = pcall(RegisterHook, "/Script/Toolset.TriggerEffect:MarkForUpdate", function(context)
		local effect = (context --[[@as any]]):get()
		dev.track.value(
			"trigger " .. describe(effect),
			try(function()
				return effectText(effect)
			end)
		)
	end)
	if not ok then
		dev.log("! " .. tostring(err))
	end
end

---@class MountsExperimentRide
---@field broom? AFlyingBroom
---@field creature? ACreature_Character
---@field player? UObject The rider.
---@field scanned number os.clock() of the last mount scan.

---Finds the player and the mount they ride: the possessed pawn when it is a
---mount, otherwise the mount found by a scan, at most every SCAN_SECONDS.
---@param dev DebugApi
---@param ride MountsExperimentRide
local function findRide(dev, ride)
	local pawn = dev.pawn() --[[@as any]]
	dev.track.value("possessed", describe(pawn))
	if not pawn then
		ride.broom, ride.creature, ride.player = nil, nil, nil
		return
	end
	if pawn:IsA(BROOM_CLASS) then
		ride.broom, ride.creature, ride.player = pawn, nil, pawn.MountedCharacter
		return
	end
	if pawn:IsA(CREATURE_CLASS) then
		ride.broom, ride.creature = nil, pawn
		local ok, rider = pcall(function()
			return pawn:GetMountComponent():GetMountHandler().RiderCharacter
		end)
		ride.player = ok and rider or nil
		return
	end
	ride.player = pawn
	local onMount = try(function()
		return pawn:GetIsOnAMountOrInTransition()
	end)
	dev.track.value("player.GetIsOnAMountOrInTransition", onMount)
	if onMount ~= true then
		ride.broom, ride.creature = nil, nil
		return
	end
	local address = pawn:GetAddress()
	local function ridden(rider)
		return rider ~= nil and rider:IsValid() and rider:GetAddress() == address
	end
	if ride.broom and ride.broom:IsValid() and ridden(ride.broom.MountedCharacter) then
		return
	end
	if ride.creature and ride.creature:IsValid() then
		return
	end
	if os.clock() - ride.scanned < SCAN_SECONDS then
		return
	end
	ride.scanned = os.clock()
	ride.broom, ride.creature = nil, nil
	for _, broom in ipairs(FindAllOf("FlyingBroom") or {}) do
		if
			broom:IsValid() and ridden((broom --[[@as any]]).MountedCharacter)
		then
			ride.broom = broom --[[@as AFlyingBroom]]
			return
		end
	end
	for _, handler in ipairs(FindAllOf("CreatureMountHandler") or {}) do
		local any = handler --[[@as any]]
		if handler:IsValid() and ridden(any.RiderCharacter) then
			ride.creature = any.CreatureCharacter
			return
		end
	end
end

---The class of the rider's active ability, e.g. ABL_HoverBroomFly_Boost_C.
---@param player UObject?
---@return string
local function activeAbility(player)
	if not player or not player:IsValid() then
		return "none"
	end
	local class = StaticFindObject(ABILITY_COMPONENT_CLASS)
	local component = (player --[[@as any]]):GetComponentByClass(class)
	if not component or not component:IsValid() then
		return "no ability component"
	end
	local ability = component:GetActiveAbility()
	if not ability or not ability:IsValid() then
		return "none"
	end
	return (ability:GetClass():GetFName() --[[@as any]]):ToString()
end

---@param dev DebugApi
---@param broom AFlyingBroom
---@param last table<string, any> Previous values, for screenshots on change.
local function pollBroom(dev, broom, last)
	local any = broom --[[@as any]]
	local function value(label, read)
		local current = try(read)
		dev.track.value("broom." .. label, current)
		local changed = last[label] ~= nil and last[label] ~= current
		last[label] = current
		return current, changed
	end
	local boosting, boostChanged = value("IsInBoost", function()
		return broom:IsInBoost()
	end)
	value("IsInTurbo", function()
		return any:IsInTurbo()
	end)
	value("IsInHoverMode", function()
		return any:IsInHoverMode()
	end)
	value("IsForceLanding", function()
		return any:IsForceLanding()
	end)
	local recharging, rechargeChanged = value("IsBoostRecharging", function()
		return broom:IsBoostRecharging()
	end)
	value("meter", function()
		local max = broom:GetMaxBoostMeter()
		return max > 0 and ("%d%%"):format(math.floor(broom:GetBoostMeterAmount() / max * 10) * 10) or "no meter"
	end)
	value("GetLastHitObject", function()
		return enumName(HIT_OBJECTS, any:GetLastHitObject())
	end)
	value("GetDismountType", function()
		return enumName(DISMOUNT_TYPES, any:GetDismountType())
	end)
	value("speed", function()
		return speedText(broom)
	end)
	if boostChanged then
		dev.shot({ name = boosting == true and "boostStart" or "boostEnd", ui = true })
	end
	if rechargeChanged and recharging == true then
		dev.shot({ name = "boostRecharging", ui = true })
	end
end

---@param dev DebugApi
---@param creature ACreature_Character
local function pollCreature(dev, creature)
	local component = creature:GetMountComponent() --[[@as any]]
	if not component or not component:IsValid() then
		dev.track.value("creature.component", "none")
		return
	end
	local values = {
		CurrentFlyingGait = function()
			return enumName(GAITS, component.CurrentFlyingGait)
		end,
		CurrentChargeState = function()
			return enumName(CHARGE_STATES, component.CurrentChargeState)
		end,
		CombatChargeActive = function()
			return component.CombatChargeActive
		end,
		GetMovementState = function()
			return enumName(MOVEMENT_STATES, component:GetMovementState())
		end,
		IsFlying = function()
			return component:IsFlying()
		end,
		speed = function()
			return speedText(creature)
		end,
	}
	for label, read in pairs(values) do
		dev.track.value("creature." .. label, try(read))
	end
end

---The game's trigger effects of the ridden mount, logged once per mount.
---@param dev DebugApi
---@param ride MountsExperimentRide
---@param seen table<integer, true?>
local function logMountEffects(dev, ride, seen)
	local mount = ride.broom or ride.creature
	if not mount or seen[mount:GetAddress()] then
		return
	end
	seen[mount:GetAddress()] = true
	local effects = {}
	if ride.broom then
		local broom = ride.broom --[[@as any]]
		effects = {
			pBoostTriggerEffect = broom.pBoostTriggerEffect,
			pSpeedUpTriggerEffect = broom.pSpeedUpTriggerEffect,
			pInactiveTriggerEffect = broom.pInactiveTriggerEffect,
		}
	else
		local component = (ride.creature --[[@as any]]):GetMountComponent()
		if component and component:IsValid() then
			effects = {
				pChargeTriggerEffect = component.pChargeTriggerEffect,
				pJogTriggerEffect = component.pJogTriggerEffect,
			}
		end
	end
	for name, effect in pairs(effects) do
		dev.track.call("mount trigger effect", {
			mount = describe(mount),
			field = name,
			effect = describe(effect),
			settings = try(function()
				return effectText(effect)
			end),
		})
	end
end

---Polls the ridden mount, the rider's active ability and the game's trigger
---effects of each mount ridden.
---@param dev DebugApi
local function followRide(dev)
	---@type MountsExperimentRide
	local ride = { scanned = -SCAN_SECONDS }
	local last, seen = {}, {}
	dev.every(100, function()
		findRide(dev, ride)
		dev.track.value("broom", describe(ride.broom))
		dev.track.value("creature", describe(ride.creature))
		dev.track.value(
			"player.activeAbility",
			try(function()
				return activeAbility(ride.player)
			end)
		)
		if ride.broom then
			pollBroom(dev, ride.broom, last)
		elseif ride.creature then
			pollCreature(dev, ride.creature)
		end
		if not ride.broom then
			last = {}
		end
		logMountEffects(dev, ride, seen)
	end)
end

---@param dev DebugApi
return function(dev)
	for _, class in ipairs(CLASSES) do
		local ok, hooked = pcall(dev.hookClass, class, { skip = SKIP })
		dev.log(ok and ("hooked %d functions of %s"):format(hooked, class) or ("! " .. tostring(hooked)))
	end
	for _, path in ipairs(HOOKS) do
		local ok, err = pcall(dev.hook, path)
		if not ok then
			dev.log("! " .. tostring(err))
		end
	end
	for _, class in ipairs({ BROOM_CLASS, "/Script/Phoenix.CreatureMountHandler" }) do
		local ok, err = pcall(dev.spawned, class)
		if not ok then
			dev.log("! " .. tostring(err))
		end
	end
	followTriggerEffects(dev)
	followRide(dev)
	dev.log(
		"mounts: track; summon the broom, speed up, boost until empty and refilled, barrel roll, "
			.. "bump into something, hover, land, dive-dismount (mark each); creature mounts; stop"
	)
end
