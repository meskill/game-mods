---@meta

---@class UABL_LumosLoop_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_LumosLoop_C = {}

---@param Context UAblAbilityContext
function UABL_LumosLoop_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_LumosLoop_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_LumosLoop_C:ExecuteUbergraph_ABL_LumosLoop(EntryPoint) end


