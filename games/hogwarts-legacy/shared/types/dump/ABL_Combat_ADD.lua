---@meta

---@class UABL_Combat_ADD_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Combat_ADD_C = {}

---@param Context UAblAbilityContext
function UABL_Combat_ADD_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Combat_ADD_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Combat_ADD_C:ExecuteUbergraph_ABL_Combat_ADD(EntryPoint) end


