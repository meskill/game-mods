---@meta

---@class UABL_HoverBroom_Stop_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HoverBroom_Stop_C = {}

---@param Context UAblAbilityContext
function UABL_HoverBroom_Stop_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HoverBroom_Stop_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HoverBroom_Stop_C:ExecuteUbergraph_ABL_HoverBroom_Stop(EntryPoint) end


