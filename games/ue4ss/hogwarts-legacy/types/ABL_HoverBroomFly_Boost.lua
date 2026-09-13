---@meta

---@class UABL_HoverBroomFly_Boost_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HoverBroomFly_Boost_C = {}

---@param Context UAblAbilityContext
function UABL_HoverBroomFly_Boost_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HoverBroomFly_Boost_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HoverBroomFly_Boost_C:ExecuteUbergraph_ABL_HoverBroomFly_Boost(EntryPoint) end


