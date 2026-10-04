---@meta

---@class UABL_TransitionWait_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_TransitionWait_C = {}

---@param Context UAblAbilityContext
function UABL_TransitionWait_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_TransitionWait_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_TransitionWait_C:ExecuteUbergraph_ABL_TransitionWait(EntryPoint) end


