---@meta

---@class ABP_ConvoLighting_Adapt_Light_Default_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LightAdaptationComponentChildOfLight_Fill ULightAdaptationComponentChildOfLight
---@field DayNightTemperatureCurveLightController_Key UDayNightTemperatureCurveLightControllerComponent
---@field DayNightTemperatureCurveLightController_Rim UDayNightTemperatureCurveLightControllerComponent
---@field DayNightTemperatureCurveLightController_fill UDayNightTemperatureCurveLightControllerComponent
---@field Fill_Direction UArrowComponent
---@field Fill USpotLightComponent
---@field Fill_Parent USceneComponent
---@field Rim_Direction UArrowComponent
---@field Key_Direction UArrowComponent
---@field Arrow_Camera_Facing UArrowComponent
---@field PostProcess UPostProcessComponent
---@field LightAdaptationComponentChildOfLight_Rim ULightAdaptationComponentChildOfLight
---@field LightAdaptationComponentChildOfLight_Key ULightAdaptationComponentChildOfLight
---@field Rim_Parent USceneComponent
---@field Rim USpotLightComponent
---@field Key USpotLightComponent
---@field Key_Parent USceneComponent
---@field DefaultSceneRoot USceneComponent
---@field ['Light Temperature Key'] float
---@field ['Light Temperature Rim'] float
---@field ['Light Temperature Fill'] float
---@field ['Uses sky Colors'] boolean
---@field ['Rim temperature curve'] UCurveFloat
---@field ['Key temperature curve'] UCurveFloat
---@field ['Fill temperature curve'] UCurveFloat
---@field LightAdaptationSettings FDynamicLightAdaptationSettings
local ABP_ConvoLighting_Adapt_Light_Default_C = {}

function ABP_ConvoLighting_Adapt_Light_Default_C:SetLightTemperatureValues() end
function ABP_ConvoLighting_Adapt_Light_Default_C:UserConstructionScript() end
function ABP_ConvoLighting_Adapt_Light_Default_C:ReceiveBeginPlay() end
---@param EndPlayReason EEndPlayReason::Type
function ABP_ConvoLighting_Adapt_Light_Default_C:ReceiveEndPlay(EndPlayReason) end
---@param EntryPoint int32
function ABP_ConvoLighting_Adapt_Light_Default_C:ExecuteUbergraph_BP_ConvoLighting_Adapt_Light_Default(EntryPoint) end


