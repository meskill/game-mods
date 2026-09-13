---@meta

---@class UABL_TeeterOnEdge_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_TeeterOnEdge_C = {}

---@param Context UAblAbilityContext
function UABL_TeeterOnEdge_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_TeeterOnEdge_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_TeeterOnEdge_C:ExecuteUbergraph_ABL_TeeterOnEdge(EntryPoint) end


