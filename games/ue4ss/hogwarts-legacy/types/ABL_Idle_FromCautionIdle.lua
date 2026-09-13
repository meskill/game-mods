---@meta

---@class UABL_Idle_FromCautionIdle_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Idle_FromCautionIdle_C = {}

---@param Context UAblAbilityContext
function UABL_Idle_FromCautionIdle_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Idle_FromCautionIdle_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Idle_FromCautionIdle_C:ExecuteUbergraph_ABL_Idle_FromCautionIdle(EntryPoint) end


