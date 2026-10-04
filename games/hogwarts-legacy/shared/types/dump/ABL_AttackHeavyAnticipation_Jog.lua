---@meta

---@class UABL_AttackHeavyAnticipation_Jog_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_AttackHeavyAnticipation_Jog_C = {}

---@param Context UAblAbilityContext
function UABL_AttackHeavyAnticipation_Jog_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_AttackHeavyAnticipation_Jog_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_AttackHeavyAnticipation_Jog_C:ExecuteUbergraph_ABL_AttackHeavyAnticipation_Jog(EntryPoint) end


