---@meta

---@class UABL_HoverBroom_MountLand_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HoverBroom_MountLand_C = {}

---@param Context UAblAbilityContext
function UABL_HoverBroom_MountLand_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HoverBroom_MountLand_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HoverBroom_MountLand_C:ExecuteUbergraph_ABL_HoverBroom_MountLand(EntryPoint) end


