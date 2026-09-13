---@meta

---@class AVFX_BP_Spider_Luminous_Blind_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NS_Flashes UNiagaraComponent
---@field PointLight UPointLightComponent
---@field PostProcess UPostProcessComponent
---@field DefaultSceneRoot USceneComponent
---@field Timeline_0_Lightintisity_70DECC1E46B965328A5BFAA068EB7A70 float
---@field Timeline_0_Strength_70DECC1E46B965328A5BFAA068EB7A70 float
---@field Timeline_0__Direction_70DECC1E46B965328A5BFAA068EB7A70 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field LightIntesity float
---@field NewVar_0 USceneComponent
---@field NewVar_1 APlayerCameraManager
---@field NewVar_2 FVector
---@field NewVar_3 FVector
---@field NewVar_4 FRotator
local AVFX_BP_Spider_Luminous_Blind_C = {}

function AVFX_BP_Spider_Luminous_Blind_C:Timeline_0__FinishedFunc() end
function AVFX_BP_Spider_Luminous_Blind_C:Timeline_0__UpdateFunc() end
function AVFX_BP_Spider_Luminous_Blind_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function AVFX_BP_Spider_Luminous_Blind_C:ExecuteUbergraph_VFX_BP_Spider_Luminous_Blind(EntryPoint) end


