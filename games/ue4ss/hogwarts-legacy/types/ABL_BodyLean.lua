---@meta

---@class UABL_BodyLean_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_BodyLean_C = {}

---@param Context UAblAbilityContext
function UABL_BodyLean_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_BodyLean_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_BodyLean_C:ExecuteUbergraph_ABL_BodyLean(EntryPoint) end


