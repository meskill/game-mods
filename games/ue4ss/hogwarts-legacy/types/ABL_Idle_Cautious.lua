---@meta

---@class UABL_Idle_Cautious_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Idle_Cautious_C = {}

---@param Context UAblAbilityContext
function UABL_Idle_Cautious_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Idle_Cautious_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Idle_Cautious_C:ExecuteUbergraph_ABL_Idle_Cautious(EntryPoint) end


