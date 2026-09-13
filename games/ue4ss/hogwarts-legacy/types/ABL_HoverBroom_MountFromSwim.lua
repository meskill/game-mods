---@meta

---@class UABL_HoverBroom_MountFromSwim_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HoverBroom_MountFromSwim_C = {}

---@param Context UAblAbilityContext
function UABL_HoverBroom_MountFromSwim_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HoverBroom_MountFromSwim_C:OnAbilityBranch(Context, NextAbility) end
function UABL_HoverBroom_MountFromSwim_C:Test() end
---@param EntryPoint int32
function UABL_HoverBroom_MountFromSwim_C:ExecuteUbergraph_ABL_HoverBroom_MountFromSwim(EntryPoint) end


