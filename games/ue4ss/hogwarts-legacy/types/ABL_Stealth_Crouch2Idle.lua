---@meta

---@class UABL_Stealth_Crouch2Idle_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Stealth_Crouch2Idle_C = {}

---@param Context UAblAbilityContext
function UABL_Stealth_Crouch2Idle_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Stealth_Crouch2Idle_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Stealth_Crouch2Idle_C:ExecuteUbergraph_ABL_Stealth_Crouch2Idle(EntryPoint) end


