---@meta

---@class ABP_SkinFX_InvisibilityPotion_C : ABP_SkinFX_Graph_Parent_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_0_NewTrack_2_7CA3028A4E086227129F9C99BDE5B8A9 float
---@field Timeline_0_NewTrack_1_7CA3028A4E086227129F9C99BDE5B8A9 float
---@field Timeline_0_NewTrack_0_7CA3028A4E086227129F9C99BDE5B8A9 float
---@field Timeline_0__Direction_7CA3028A4E086227129F9C99BDE5B8A9 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
local ABP_SkinFX_InvisibilityPotion_C = {}

function ABP_SkinFX_InvisibilityPotion_C:Timeline_0__FinishedFunc() end
function ABP_SkinFX_InvisibilityPotion_C:Timeline_0__UpdateFunc() end
function ABP_SkinFX_InvisibilityPotion_C:SkinFXNotifyStart() end
function ABP_SkinFX_InvisibilityPotion_C:SkinFXNotifyKill() end
---@param CurrentTime float
function ABP_SkinFX_InvisibilityPotion_C:SkinFXNotifyRetrigger(CurrentTime) end
---@param EndStyle ESkinFXEffectEndStyle
---@param CurrentTime float
function ABP_SkinFX_InvisibilityPotion_C:SkinFXNotifyEnd(EndStyle, CurrentTime) end
---@param EntryPoint int32
function ABP_SkinFX_InvisibilityPotion_C:ExecuteUbergraph_BP_SkinFX_InvisibilityPotion(EntryPoint) end


