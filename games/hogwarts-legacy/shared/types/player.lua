---@meta

---The character the player controls (`ABiped_Player : ABiped_Character : ACharacter`).
---While riding, the player controller's `Pawn` may be the mount instead.
---@class ABiped_Player
---@field InCinematic boolean Whether the player is in a cinematic.
local ABiped_Player = {}

---Whether the player is on a mount, or getting on or off one.
---@return boolean
function ABiped_Player:GetIsOnAMountOrInTransition() end

---@class ABiped_Character
local ABiped_Character = {}

---The wand the character holds.
---@return AWandTool
function ABiped_Character:GetWand() end

---Whether the character is dead.
---@return boolean
function ABiped_Character:IsDead() end
