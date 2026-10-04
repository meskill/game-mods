---@meta

---@class UABL_ShadowSprint_Stop_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_ShadowSprint_Stop_C = {}

---@param Context UAblAbilityContext
function UABL_ShadowSprint_Stop_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
function UABL_ShadowSprint_Stop_C:OnAbilityEnd(Context) end
---@param Context UAblAbilityContext
function UABL_ShadowSprint_Stop_C:OnAbilityInterrupt(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_ShadowSprint_Stop_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_ShadowSprint_Stop_C:ExecuteUbergraph_ABL_ShadowSprint_Stop(EntryPoint) end


