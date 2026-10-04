---@meta

---@class UABL_HoverBroom_Idle_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HoverBroom_Idle_C = {}

---@param Context UAblAbilityContext
function UABL_HoverBroom_Idle_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HoverBroom_Idle_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HoverBroom_Idle_C:ExecuteUbergraph_ABL_HoverBroom_Idle(EntryPoint) end


