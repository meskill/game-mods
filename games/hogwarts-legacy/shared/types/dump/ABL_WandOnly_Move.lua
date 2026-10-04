---@meta

---@class UABL_WandOnly_Move_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_WandOnly_Move_C = {}

---@param Context UAblAbilityContext
function UABL_WandOnly_Move_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_WandOnly_Move_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_WandOnly_Move_C:ExecuteUbergraph_ABL_WandOnly_Move(EntryPoint) end


