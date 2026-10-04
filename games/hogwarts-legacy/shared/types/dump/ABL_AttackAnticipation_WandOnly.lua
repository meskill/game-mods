---@meta

---@class UABL_AttackAnticipation_WandOnly_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_AttackAnticipation_WandOnly_C = {}

---@param Context UAblAbilityContext
function UABL_AttackAnticipation_WandOnly_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_AttackAnticipation_WandOnly_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_AttackAnticipation_WandOnly_C:ExecuteUbergraph_ABL_AttackAnticipation_WandOnly(EntryPoint) end


