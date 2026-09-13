---@meta

---@class UABL_Walk2Sprint_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Walk2Sprint_C = {}

---@param Context UAblAbilityContext
function UABL_Walk2Sprint_C:OnAbilityEnd(Context) end
---@param Context UAblAbilityContext
function UABL_Walk2Sprint_C:OnAbilityInterrupt(Context) end
---@param EntryPoint int32
function UABL_Walk2Sprint_C:ExecuteUbergraph_ABL_Walk2Sprint(EntryPoint) end


