---@meta

---@class ABP_SkinFX_AncMagFillPotion_C : ABP_SkinFX_Graph_Parent_C
---@field UberGraphFrame FPointerToUberGraphFrame
local ABP_SkinFX_AncMagFillPotion_C = {}

function ABP_SkinFX_AncMagFillPotion_C:SkinFXNotifyStart() end
---@param EndStyle ESkinFXEffectEndStyle
---@param CurrentTime float
function ABP_SkinFX_AncMagFillPotion_C:SkinFXNotifyEnd(EndStyle, CurrentTime) end
---@param CurrentTime float
function ABP_SkinFX_AncMagFillPotion_C:SkinFXNotifyRetrigger(CurrentTime) end
---@param EntryPoint int32
function ABP_SkinFX_AncMagFillPotion_C:ExecuteUbergraph_BP_SkinFX_AncMagFillPotion(EntryPoint) end


