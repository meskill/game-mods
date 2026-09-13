---@meta

---@class UABL_WandReady_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_WandReady_C = {}

---@param Context UAblAbilityContext
function UABL_WandReady_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_WandReady_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_WandReady_C:ExecuteUbergraph_ABL_WandReady(EntryPoint) end


