---@meta

---@class UABL_HoverBroomFly_Passive_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HoverBroomFly_Passive_C = {}

---@param Context UAblAbilityContext
function UABL_HoverBroomFly_Passive_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HoverBroomFly_Passive_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HoverBroomFly_Passive_C:ExecuteUbergraph_ABL_HoverBroomFly_Passive(EntryPoint) end


