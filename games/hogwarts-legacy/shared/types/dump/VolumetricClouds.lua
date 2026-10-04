---@meta

---@class AVolumetricCloudsActor : AActor
---@field Component UVolumetricCloudsComponent
---@field Preset FDataTableRowHandle
---@field Lighting FVolumetricCloudsLightingParams
---@field WeatherWind FVolumetricCloudsWeatherWindParams
---@field GroundShadowsStrength float
---@field bUsePresetLighting boolean
---@field bUsePresetWeatherWind boolean
local AVolumetricCloudsActor = {}



---@class AVolumetricCloudsCoverageActor : AActor
---@field CoverageComponent UVolumetricCloudsCoverageComponent
local AVolumetricCloudsCoverageActor = {}



---@class AVolumetricCloudsPreviewActor : AActor
---@field PreviewComponent UVolumetricCloudsPreviewComponent
local AVolumetricCloudsPreviewActor = {}



---@class FVolumetricCloudsDetailParams
---@field Density float
---@field WeatherScale float
---@field ShapeScale float
---@field ErosionDetail float
---@field ErosionDetailScale float
---@field AnvilBias float
---@field LayerRadius float
---@field LayerVerticalHeight float
---@field LayerAltitudeOffset float
---@field CoverageCameraFade float
local FVolumetricCloudsDetailParams = {}



---@class FVolumetricCloudsGroundShadowsCutOut
---@field DistanceMeters float
---@field FadeDistanceMeters float
local FVolumetricCloudsGroundShadowsCutOut = {}



---@class FVolumetricCloudsGroundShadowsParams
---@field Material UMaterialInterface
---@field MPC UMaterialParameterCollection
---@field LightFunctionScaleFactor float
---@field Opacity float
---@field Sharpening float
---@field WindMultiplier float
---@field DensityVsPreMultiply UCurveFloat
---@field HardnessVsLightHeight UCurveFloat
---@field Roil FVolumetricCloudsGroundShadowsRoilParams
---@field bModulateByLightHeight boolean
local FVolumetricCloudsGroundShadowsParams = {}



---@class FVolumetricCloudsGroundShadowsRoilParams
---@field Texture UTexture
---@field OnOff float
---@field Strength float
---@field WhispStrength float
---@field WhispStartAlpha float
---@field SpeedFactor float
---@field SpeedPerpFactor float
---@field Tiling float
local FVolumetricCloudsGroundShadowsRoilParams = {}



---@class FVolumetricCloudsGroundShadowsState
---@field LightComponent TWeakObjectPtr<ULightComponent>
---@field LightFunctionMID UMaterialInstanceDynamic
---@field WeatherMap TWeakObjectPtr<UTexture2DAlias>
---@field RoilTexture TWeakObjectPtr<UTexture>
local FVolumetricCloudsGroundShadowsState = {}



---@class FVolumetricCloudsHighAltitudeParams
---@field Chance float
---@field Focus float
---@field Intensity float
---@field Scale FIntVector
---@field Offset FVector
---@field ChannelPackedTexture UTexture2D
---@field TextureScale float
---@field ChannelMask FVector
local FVolumetricCloudsHighAltitudeParams = {}



---@class FVolumetricCloudsLightingParams
---@field Ambient float
---@field light float
---@field Extinction float
---@field PowderExtinction float
---@field PowderStrength float
---@field FinalOutput float
---@field SkyLightCloudsOutput float
---@field SkyLightCloudsAlpha float
---@field SkyLightDesaturate float
---@field SkyLightGroundColor FLinearColor
---@field ShadowScale float
---@field ShadowMapCloudShadowDensity float
---@field RayMarchCloudShadowScale float
---@field RayMarchShadowDensity float
---@field SkyLightShadowDensity float
---@field FogDensityMultiplier float
---@field HeightFogDensityMultiplier float
---@field LightDirection FVector
---@field LightColor FVector
---@field LightIntensity float
---@field LightSaturation float
local FVolumetricCloudsLightingParams = {}



---@class FVolumetricCloudsParams
---@field CoverageChance float
---@field CoverageFocus float
---@field CoverageIntensity float
---@field PerlinCoverageFrequency FVector4
---@field WorleyCoverageFrequency FVector4
---@field CoverageOffset FVector
---@field WeatherScaleZRatio float
---@field TypeChance float
---@field TypeFocus float
---@field TypeIntensity float
---@field TypeFrequency FVector
---@field TypeOffset FVector
---@field DensityMultiplier float
---@field DetailStrength float
---@field DetailScale float
---@field AnvilBias float
---@field PrecipitationChance float
---@field PrecipitationFocus float
---@field PrecipitationIntensity float
---@field PrecipitationFrequency FVector
---@field PrecipitationOffset FVector
---@field HighAltitudeChance float
---@field HighAltitudeFocus float
---@field HighAltitudeIntensity float
---@field HighAltitudeFrequency FVector
---@field HighAltitudeClouds UTexture2D
---@field HighAltitudeScale float
---@field HighAltitudeChannelMask FVector
---@field HighAltitudeOffset FVector
---@field GroundShadowsStrength float
---@field GroundShadowsWeatherMapPreMultiply float
---@field GroundShadowsRoilStrength float
---@field ShapeScale float
---@field TopBottom FVector2D
---@field ShadowScale float
---@field ShadowMapCloudShadowDensity float
---@field RayMarchCloudShadowScale float
---@field LightDirection FVector
---@field LightColor FVector
---@field LightIntensity float
---@field LightSaturation float
---@field AmbientTop FLinearColor
---@field AmbientBottom FLinearColor
---@field AmbientBlend float
---@field LightBlend float
---@field OutputBlend float
---@field SkyLightCloudsAlpha float
---@field SkyLightCloudsOutput float
---@field SkyLightDesaturate float
---@field SkyLightGroundColor FLinearColor
---@field ForwardScattering float
---@field BackwardScattering float
---@field ExtinctionColor FLinearColor
---@field ScatteringColor FLinearColor
---@field Extinction float
---@field PowderExtinction float
---@field PowderStrength float
---@field WindSkew float
---@field WispyClumpy float
---@field HighAltitudeHeight float
---@field RayMarchShadowDensity float
---@field SkyLightShadowDensity float
---@field FogDensityMultiplier float
---@field HeightFogDensityMultiplier float
---@field WeatherScale float
---@field UseWindSystemDirection boolean
---@field WindSpeedScale float
---@field WeatherSpeedScale float
---@field HighAltitudeSpeedScale float
---@field WindSpeed FVector
---@field WeatherSpeed FVector
---@field HighAltitudeWind FVector4
---@field SkyLightWeatherSpeedScale float
---@field LayerRadius float
---@field LayerAltitudeOffset float
---@field LayerVerticalHeight float
---@field CoverageCameraFade float
---@field CloudTypeLUT UTexture2D
---@field OverrideWeather UTexture2D
---@field ShapeNoiseMainScale FVector
---@field ShapeNoiseSecondaryScale FVector
---@field ShapeNoiseTertiaryScale FVector
---@field DetailNoiseScale FVector
---@field bUseGroundShadowsWeatherMapPreMultiply boolean
---@field bEnabled boolean
---@field bOptimize boolean
---@field bUseSkyAtmosphere boolean
---@field bAllowOverrideLightDirection boolean
---@field bAllowOverrideLightColor boolean
---@field bAllowOverrideLightIntensity boolean
---@field bAllowOverrideLightSaturation boolean
local FVolumetricCloudsParams = {}



---@class FVolumetricCloudsPresetParams : FTableRowBase
---@field WeatherCoverage FVolumetricCloudsWeatherCoverageParams
---@field WeatherType FVolumetricCloudsWeatherTypeParams
---@field WeatherPrecipitation FVolumetricCloudsWeatherPrecipitationParams
---@field HighAltitude FVolumetricCloudsHighAltitudeParams
---@field Detail FVolumetricCloudsDetailParams
---@field OverrideWeather UTexture2D
---@field OverrideTypeLut UTexture2D
local FVolumetricCloudsPresetParams = {}



---@class FVolumetricCloudsWeatherCoverageParams
---@field Chance float
---@field Focus float
---@field Intensity float
---@field PerlinScale FIntVector
---@field PerlinIntensity float
---@field WorleyScale FIntVector
---@field WorleyIntensity float
---@field Offset FVector
local FVolumetricCloudsWeatherCoverageParams = {}



---@class FVolumetricCloudsWeatherPrecipitationParams
---@field Chance float
---@field Focus float
---@field Intensity float
---@field Scale FIntVector
---@field Offset FVector
local FVolumetricCloudsWeatherPrecipitationParams = {}



---@class FVolumetricCloudsWeatherState
---@field Temperature float
---@field TemperatureChange float
---@field TemperatureDifference float
---@field CloudChance float
---@field RainChance float
---@field Wind FVector
local FVolumetricCloudsWeatherState = {}



---@class FVolumetricCloudsWeatherTypeParams
---@field Chance float
---@field Focus float
---@field Intensity float
---@field Scale FIntVector
---@field Offset FVector
local FVolumetricCloudsWeatherTypeParams = {}



---@class FVolumetricCloudsWeatherWindParams
---@field UseWindSystemDirection boolean
---@field WindSpeedScale float
---@field WeatherSpeedScale float
---@field HighAltitudeSpeedScale float
---@field WindSpeed FVector
---@field WeatherSpeed FVector
---@field HighAltitudeSpeed FVector
---@field WindSkew float
---@field SkyLightWeatherSpeedScale float
local FVolumetricCloudsWeatherWindParams = {}



---@class UTexture2DAlias : UTexture
local UTexture2DAlias = {}


---@class UVolumetricCloudsComponent : USceneComponent
---@field Params FVolumetricCloudsParams
---@field Height float
---@field HeightOffset float
---@field PrimaryDirectionalLight TWeakObjectPtr<UDirectionalLightComponent>
---@field SecondaryDirectionalLight TWeakObjectPtr<UDirectionalLightComponent>
---@field GroundShadows FVolumetricCloudsGroundShadowsParams
---@field GroundShadowsCutOut FVolumetricCloudsGroundShadowsCutOut
---@field GroundShadowsStrength float
---@field GroundShadowsState UVolumetricCloudsGroundWorldState
---@field bIsIntro boolean
---@field VisibilityGroupMask EVisibilityGroupMask
local UVolumetricCloudsComponent = {}



---@class UVolumetricCloudsCoverageComponent : UPrimitiveComponent
---@field ShapeType ECoverageShapeType
---@field InnerRadius float
---@field InnerRadiusCoverage float
---@field OuterRadius float
---@field OuterRadiusCoverage float
local UVolumetricCloudsCoverageComponent = {}



---@class UVolumetricCloudsGroundWorldState : UObject
---@field ShadowedLights TArray<FVolumetricCloudsGroundShadowsState>
---@field ShadowAlias UTexture2DAlias
local UVolumetricCloudsGroundWorldState = {}



---@class UVolumetricCloudsPreviewComponent : USceneComponent
---@field PreviewMode EPreviewMode
local UVolumetricCloudsPreviewComponent = {}



