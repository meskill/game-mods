---@meta

---@class UABL_HoverBroomBarrelRoll_Rht_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HoverBroomBarrelRoll_Rht_C = {}

---@param Context UAblAbilityContext
function UABL_HoverBroomBarrelRoll_Rht_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HoverBroomBarrelRoll_Rht_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HoverBroomBarrelRoll_Rht_C:ExecuteUbergraph_ABL_HoverBroomBarrelRoll_Rht(EntryPoint) end


