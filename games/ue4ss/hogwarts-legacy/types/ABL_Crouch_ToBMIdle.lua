---@meta

---@class UABL_Crouch_ToBMIdle_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Crouch_ToBMIdle_C = {}

---@param Context UAblAbilityContext
function UABL_Crouch_ToBMIdle_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Crouch_ToBMIdle_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Crouch_ToBMIdle_C:ExecuteUbergraph_ABL_Crouch_ToBMIdle(EntryPoint) end


