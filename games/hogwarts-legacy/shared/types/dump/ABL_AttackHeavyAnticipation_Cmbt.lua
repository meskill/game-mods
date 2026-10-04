---@meta

---@class UABL_AttackHeavyAnticipation_Cmbt_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_AttackHeavyAnticipation_Cmbt_C = {}

---@param Context UAblAbilityContext
function UABL_AttackHeavyAnticipation_Cmbt_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_AttackHeavyAnticipation_Cmbt_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_AttackHeavyAnticipation_Cmbt_C:ExecuteUbergraph_ABL_AttackHeavyAnticipation_Cmbt(EntryPoint) end


