---@meta

---@class UABL_Teeter2Fall_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Teeter2Fall_C = {}

---@param Context UAblAbilityContext
function UABL_Teeter2Fall_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Teeter2Fall_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Teeter2Fall_C:ExecuteUbergraph_ABL_Teeter2Fall(EntryPoint) end


