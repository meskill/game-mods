---@meta

---@class UABL_Stealth_AimMode_Idle_TurnToFace_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Stealth_AimMode_Idle_TurnToFace_C = {}

---@param Context UAblAbilityContext
function UABL_Stealth_AimMode_Idle_TurnToFace_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Stealth_AimMode_Idle_TurnToFace_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Stealth_AimMode_Idle_TurnToFace_C:ExecuteUbergraph_ABL_Stealth_AimMode_Idle_TurnToFace(EntryPoint) end


