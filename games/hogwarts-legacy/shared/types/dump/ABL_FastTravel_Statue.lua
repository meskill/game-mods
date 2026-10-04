---@meta

---@class UABL_FastTravel_Statue_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_FastTravel_Statue_C = {}

---@param Context UAblAbilityContext
function UABL_FastTravel_Statue_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_FastTravel_Statue_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_FastTravel_Statue_C:ExecuteUbergraph_ABL_FastTravel_Statue(EntryPoint) end


