---@meta

---@class UABL_ReactSpiderWebs_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_ReactSpiderWebs_C = {}

---@param Context UAblAbilityContext
function UABL_ReactSpiderWebs_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_ReactSpiderWebs_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_ReactSpiderWebs_C:ExecuteUbergraph_ABL_ReactSpiderWebs(EntryPoint) end


