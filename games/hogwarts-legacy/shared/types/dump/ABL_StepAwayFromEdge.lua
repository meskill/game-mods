---@meta

---@class UABL_StepAwayFromEdge_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_StepAwayFromEdge_C = {}

---@param Context UAblAbilityContext
function UABL_StepAwayFromEdge_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_StepAwayFromEdge_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_StepAwayFromEdge_C:ExecuteUbergraph_ABL_StepAwayFromEdge(EntryPoint) end


