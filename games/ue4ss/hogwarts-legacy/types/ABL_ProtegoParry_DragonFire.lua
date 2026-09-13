---@meta

---@class UABL_ProtegoParry_DragonFire_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_ProtegoParry_DragonFire_C = {}

---@param Context UAblAbilityContext
function UABL_ProtegoParry_DragonFire_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
function UABL_ProtegoParry_DragonFire_C:OnAbilityEnd(Context) end
---@param Context UAblAbilityContext
function UABL_ProtegoParry_DragonFire_C:OnAbilityInterrupt(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_ProtegoParry_DragonFire_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_ProtegoParry_DragonFire_C:ExecuteUbergraph_ABL_ProtegoParry_DragonFire(EntryPoint) end


