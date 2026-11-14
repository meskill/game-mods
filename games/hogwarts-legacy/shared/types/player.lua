---@meta

---The character the player controls (`ABiped_Player : ABiped_Character : ACharacter`).
---While riding, the player controller's `Pawn` may be the mount instead.
---@class ABiped_Player
---@field InCinematic boolean Whether the player is in a cinematic. Also true during a dialogue or a vendor visit: on 0.2 to 0.4 s after the conversation starts, off with its end. Stays false in menus, on the map and while loading; not checked in the conjuration menu.
local ABiped_Player = {}

---Whether the player is on a mount, or getting on or off one; stays true
---about 2 s after leaving a broom.
---@return boolean
function ABiped_Player:GetIsOnAMountOrInTransition() end

---@class APlayerController
---@field Pawn APawn The player character, except: a `MapPawn` while the map is open, a `DefaultPawn` while a fast travel loads, the creature while riding one.
local APlayerController = {}

---@class ABiped_Character
local ABiped_Character = {}

---The wand the character holds.
---@return AWandTool
function ABiped_Character:GetWand() end

---Sets the right arm request at a priority; the highest-priority request
---moves the arm, and a request outlasts higher ones and takes the arm back
---when they end. Seen: `StartLumos` (14) at `Lumos` (8) holds the wand up as
---for Lumos; `None` (0) clears a priority's request. The game calls it with
---`bBroadcastChange` true, which runs `WandTool:OnRightArmStateChanged`.
---@param InState ERightArmState::Type
---@param InPriority ERightArmPriority::Type
---@param bBroadcastChange boolean
function ABiped_Character:SetRightArmState(InState, InPriority, bBroadcastChange) end

---The right arm request at a priority, `None` (0) if there is none; at
---`None` the winning state.
---@param InPriority ERightArmPriority::Type
---@return ERightArmState::Type
function ABiped_Character:GetRightArmState(InPriority) end

---Whether the character is dead.
---@return boolean
function ABiped_Character:IsDead() end
