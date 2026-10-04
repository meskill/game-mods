---@meta

---@class UABL_HoverBroomStrafe_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HoverBroomStrafe_C = {}

---@param Context UAblAbilityContext
function UABL_HoverBroomStrafe_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HoverBroomStrafe_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HoverBroomStrafe_C:ExecuteUbergraph_ABL_HoverBroomStrafe(EntryPoint) end


