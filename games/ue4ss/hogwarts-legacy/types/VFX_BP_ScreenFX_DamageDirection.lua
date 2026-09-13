---@meta

---@class AVFX_BP_ScreenFX_DamageDirection_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DamageDirection UPostProcessComponent
---@field DefaultSceneRoot USceneComponent
---@field Damage_Dircetion_Spike_D93EC798415488C4E7D36D97047EF801 float
---@field Damage_Dircetion_cloud_D93EC798415488C4E7D36D97047EF801 float
---@field Damage_Dircetion_Direct_D93EC798415488C4E7D36D97047EF801 float
---@field Damage_Dircetion__Direction_D93EC798415488C4E7D36D97047EF801 ETimelineDirection::Type
---@field ['Damage Dircetion'] UTimelineComponent
---@field ['Parameter Value'] float
local AVFX_BP_ScreenFX_DamageDirection_C = {}

AVFX_BP_ScreenFX_DamageDirection_C['Damage Dircetion__FinishedFunc'] = function(self, ) end
AVFX_BP_ScreenFX_DamageDirection_C['Damage Dircetion__UpdateFunc'] = function(self, ) end
function AVFX_BP_ScreenFX_DamageDirection_C:ReceiveBeginPlay() end
---@param Caller UObject
---@param Int1 int32
---@param Int2 int32
function AVFX_BP_ScreenFX_DamageDirection_C:DamageEffect(Caller, Int1, Int2) end
---@param EntryPoint int32
function AVFX_BP_ScreenFX_DamageDirection_C:ExecuteUbergraph_VFX_BP_ScreenFX_DamageDirection(EntryPoint) end


