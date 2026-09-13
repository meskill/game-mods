---@meta

---@class UABL_ShadowSprint_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_ShadowSprint_C = {}

---@param Context UAblAbilityContext
function UABL_ShadowSprint_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
function UABL_ShadowSprint_C:OnAbilityEnd(Context) end
---@param Context UAblAbilityContext
function UABL_ShadowSprint_C:OnAbilityInterrupt(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_ShadowSprint_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_ShadowSprint_C:ExecuteUbergraph_ABL_ShadowSprint(EntryPoint) end


