---@meta

---@class UABL_WandCastFail_Move_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_WandCastFail_Move_C = {}

---@param Context UAblAbilityContext
function UABL_WandCastFail_Move_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_WandCastFail_Move_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_WandCastFail_Move_C:ExecuteUbergraph_ABL_WandCastFail_Move(EntryPoint) end


