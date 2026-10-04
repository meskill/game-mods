---@meta

---@class ABP_SkinFX_MaximaPotion_C : ABP_SkinFX_Graph_Parent_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_0_NewTrack_1_63F33BB74A32786DC2EA72B7E6537515 float
---@field Timeline_0__Direction_63F33BB74A32786DC2EA72B7E6537515 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Handle FHermesBPDelegateHandle
local ABP_SkinFX_MaximaPotion_C = {}

function ABP_SkinFX_MaximaPotion_C:Timeline_0__FinishedFunc() end
function ABP_SkinFX_MaximaPotion_C:Timeline_0__UpdateFunc() end
---@param Caller UObject
---@param MunitionType AMunitionType_Base
function ABP_SkinFX_MaximaPotion_C:MunitionCreatedWithData(Caller, MunitionType) end
function ABP_SkinFX_MaximaPotion_C:SkinFXNotifyStart() end
---@param EndStyle ESkinFXEffectEndStyle
---@param CurrentTime float
function ABP_SkinFX_MaximaPotion_C:SkinFXNotifyEnd(EndStyle, CurrentTime) end
---@param CurrentTime float
function ABP_SkinFX_MaximaPotion_C:SkinFXNotifyRetrigger(CurrentTime) end
---@param EntryPoint int32
function ABP_SkinFX_MaximaPotion_C:ExecuteUbergraph_BP_SkinFX_MaximaPotion(EntryPoint) end


