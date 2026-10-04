---@meta

---@class UABL_HoverBroom_MountInstant_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HoverBroom_MountInstant_C = {}

---@param Context UAblAbilityContext
function UABL_HoverBroom_MountInstant_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HoverBroom_MountInstant_C:OnAbilityBranch(Context, NextAbility) end
function UABL_HoverBroom_MountInstant_C:Test() end
---@param EntryPoint int32
function UABL_HoverBroom_MountInstant_C:ExecuteUbergraph_ABL_HoverBroom_MountInstant(EntryPoint) end


