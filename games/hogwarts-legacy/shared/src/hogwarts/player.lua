-- The local player character, found through the local player controller, and
-- its state. On a creature mount the controller may possess the creature; the
-- player is then its rider.

local Objects = require("ue4ss.objects")
local Lookup = require("ue4ss.lookup")
local Mounts = require("hogwarts.mounts")

local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"

-- Seconds between controller searches while there is none (menus, travel):
-- each one scans every PlayerController.
local SEARCH_INTERVAL = 1

---@class HogwartsPlayer
---@field pawn ABiped_Player The player character, also while riding.
---@field controller APlayerController
---@field paused boolean The game is paused: a menu is open.
---@field cinematic boolean The player is in a cinematic, a dialogue or a vendor.
---@field dead boolean
---@field mounted boolean On a mount, or getting on or off one.
---@field active boolean In gameplay: not paused, in a cinematic or dead.

local Player = {}

local controllers = Lookup.new(SEARCH_INTERVAL, Objects.playerController)

---The player and its state, or nil while there is no player character (title
---screen, loading, the map's pawn). Call on the game thread.
---@param now number Seconds from a clock that never goes backwards; paces the controller search.
---@return HogwartsPlayer?
function Player.find(now)
	local controller = controllers:get(now) --[[@as APlayerController?]]
	if not controller then
		return nil
	end
	local pawn = controller.Pawn
	if pawn and pawn:IsValid() then
		pawn = Mounts.rider(pawn) or pawn
	end
	if not pawn or not pawn:IsValid() or not pawn:IsA(PLAYER_CLASS) then
		return nil
	end
	---@cast pawn ABiped_Player
	local statics = Objects.gameplayStatics()
	local paused = not statics or statics:IsGamePaused(controller)
	local cinematic = pawn.InCinematic
	local dead = pawn:IsDead()
	return {
		pawn = pawn,
		controller = controller,
		paused = paused,
		cinematic = cinematic,
		dead = dead,
		mounted = pawn:GetIsOnAMountOrInTransition(),
		active = not paused and not cinematic and not dead,
	}
end

return Player
