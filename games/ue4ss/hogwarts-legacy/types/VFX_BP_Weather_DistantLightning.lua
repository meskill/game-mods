---@meta

---@class AVFX_BP_Weather_DistantLightning_C : AWeatherSurfaceWorldFXBlueprint
---@field UberGraphFrame FPointerToUberGraphFrame
---@field N_Lightning UNiagaraComponent
---@field DefaultSceneRoot USceneComponent
---@field LightIntensity float
---@field LOC_Camera FVector
---@field LOC_Strike FVector
---@field ['Lightning Delay Max'] float
---@field ['Lightning Delay Min'] float
---@field NewVar_0 FTimerHandle
---@field ['Base Height'] float
---@field Debug boolean
---@field DistanceRange float
---@field ['Forward Bias Weight'] float
local AVFX_BP_Weather_DistantLightning_C = {}

function AVFX_BP_Weather_DistantLightning_C:LightningLoop() end
function AVFX_BP_Weather_DistantLightning_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function AVFX_BP_Weather_DistantLightning_C:ExecuteUbergraph_VFX_BP_Weather_DistantLightning(EntryPoint) end


