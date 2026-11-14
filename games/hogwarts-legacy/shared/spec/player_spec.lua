local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"
local CREATURE_CLASS = "/Script/Phoenix.Creature_Character"

local function actor(class)
	return {
		IsValid = function()
			return true
		end,
		IsA = function(_, name)
			return name == class
		end,
	}
end

local function character()
	local pawn = actor(PLAYER_CLASS)
	pawn.InCinematic, pawn.dead, pawn.onMount = false, false, false
	function pawn:IsDead()
		return self.dead
	end
	function pawn:GetIsOnAMountOrInTransition()
		return self.onMount
	end
	return pawn
end

---A creature the controller possesses, ridden by `rider`.
local function creature(rider)
	local object = actor(CREATURE_CLASS)
	local handler = actor("/Script/Phoenix.CreatureMountHandler")
	handler.RiderCharacter = rider
	local component = actor("/Script/Phoenix.Creature_MountComponent")
	function component:GetMountHandler()
		return handler
	end
	function object:GetMountComponent()
		return component
	end
	return object
end

describe("hogwarts.player", function()
	local Player, controller, paused

	before_each(function()
		paused = false
		controller = actor("/Script/Engine.PlayerController")
		controller.IsLocalPlayerController = function()
			return true
		end
		_G.FindAllOf = function(class)
			return class == "PlayerController" and { controller } or nil
		end
		_G.StaticFindObject = function()
			local statics = actor("/Script/Engine.GameplayStatics")
			statics.IsGamePaused = function()
				return paused
			end
			return statics
		end
		for _, name in ipairs({ "hogwarts.player", "ue4ss.objects" }) do
			package.loaded[name] = nil
		end
		Player = require("hogwarts.player")
	end)

	after_each(function()
		_G.FindAllOf, _G.StaticFindObject = nil, nil
	end)

	it("finds nothing without a player character, e.g. on the map", function()
		controller.Pawn = actor("/Script/Phoenix.MapPawn")
		assert.is_nil(Player.find(0))
	end)

	it("is active only while not paused, in a cinematic or dead", function()
		local pawn = character()
		controller.Pawn = pawn
		assert.is_true(Player.find(0).active)

		paused = true
		local player = Player.find(0)
		assert.is_true(player.paused)
		assert.is_false(player.active)

		paused, pawn.InCinematic = false, true
		assert.is_false(Player.find(0).active)

		pawn.InCinematic, pawn.dead = false, true
		assert.is_false(Player.find(0).active)
	end)

	it("returns the rider when the controller possesses a ridden creature", function()
		local pawn = character()
		pawn.onMount = true
		controller.Pawn = creature(pawn)

		local player = Player.find(0)

		assert.equals(pawn, player.pawn)
		assert.equals(controller, player.controller)
		assert.is_true(player.mounted)
		assert.is_true(player.active)
	end)
end)
