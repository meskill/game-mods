---@meta

---@class UABL_SwimDive_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_SwimDive_C = {}

---@param Context UAblAbilityContext
function UABL_SwimDive_C:OnAbilityEnd(Context) end
---@param Context UAblAbilityContext
function UABL_SwimDive_C:OnAbilityInterrupt(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_SwimDive_C:OnAbilityBranch(Context, NextAbility) end
---@param Context UAblAbilityContext
function UABL_SwimDive_C:OnAbilityStart(Context) end
---@param EntryPoint int32
function UABL_SwimDive_C:ExecuteUbergraph_ABL_SwimDive(EntryPoint) end


