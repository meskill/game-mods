---@meta

---@class UABL_BackToLife_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_BackToLife_C = {}

---@param Context UAblAbilityContext
function UABL_BackToLife_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_BackToLife_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_BackToLife_C:ExecuteUbergraph_ABL_BackToLife(EntryPoint) end


