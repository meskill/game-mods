---@meta

---@class UABL_HoverBroom_Mount_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HoverBroom_Mount_C = {}

---@param Context UAblAbilityContext
function UABL_HoverBroom_Mount_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HoverBroom_Mount_C:OnAbilityBranch(Context, NextAbility) end
function UABL_HoverBroom_Mount_C:Test() end
---@param EntryPoint int32
function UABL_HoverBroom_Mount_C:ExecuteUbergraph_ABL_HoverBroom_Mount(EntryPoint) end


