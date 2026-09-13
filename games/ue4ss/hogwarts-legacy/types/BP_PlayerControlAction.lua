---@meta

---@class UBP_PlayerControlAction_C : USceneAction_Blueprint
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnableCasualMode boolean
---@field DisableMoveInput boolean
---@field DisableJumping boolean
---@field DisableDodging boolean
---@field DisableSpells boolean
---@field DisableAimMode boolean
---@field DisableIdleBreaks boolean
---@field DisableUIMenus boolean
---@field DisableContextualInput boolean
---@field DisablePhotoMode boolean
local UBP_PlayerControlAction_C = {}

---@return FLinearColor
function UBP_PlayerControlAction_C:GetActionColor() end
---@return FText
function UBP_PlayerControlAction_C:GetDisplayName() end
---@return boolean
function UBP_PlayerControlAction_C:IsProxyRequiredBP() end
---@param Time float
---@param IsScrubbing boolean
function UBP_PlayerControlAction_C:OnEnterInterval(Time, IsScrubbing) end
---@param Time float
---@param cancelled boolean
---@param IsScrubbing boolean
function UBP_PlayerControlAction_C:OnExitInterval(Time, cancelled, IsScrubbing) end
---@param EntryPoint int32
function UBP_PlayerControlAction_C:ExecuteUbergraph_BP_PlayerControlAction(EntryPoint) end


