---@meta

---@class UABL_HoverBroomBarrelRoll_Lft_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HoverBroomBarrelRoll_Lft_C = {}

---@param Context UAblAbilityContext
function UABL_HoverBroomBarrelRoll_Lft_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HoverBroomBarrelRoll_Lft_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HoverBroomBarrelRoll_Lft_C:ExecuteUbergraph_ABL_HoverBroomBarrelRoll_Lft(EntryPoint) end


