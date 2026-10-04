---@meta

---@class UABL_LumosStart_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_LumosStart_C = {}

---@param Context UAblAbilityContext
function UABL_LumosStart_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_LumosStart_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_LumosStart_C:ExecuteUbergraph_ABL_LumosStart(EntryPoint) end


