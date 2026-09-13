---@meta

---@class AHoudiniAssetActor : AActor
---@field HoudiniAssetComponent UHoudiniAssetComponent
local AHoudiniAssetActor = {}



---@class FHoudiniToolDirectory
---@field Name FString
---@field Path FDirectoryPath
---@field ContentDirID FString
local FHoudiniToolDirectory = {}



---@class UHoudiniAsset : UObject
---@field AssetFileName FString
---@field ThumbnailInfo UThumbnailInfo
local UHoudiniAsset = {}



---@class UHoudiniAssetComponent : UPrimitiveComponent
---@field bGeneratedDoubleSidedGeometry boolean
---@field GeneratedPhysMaterial UPhysicalMaterial
---@field DefaultBodyInstance FBodyInstance
---@field GeneratedCollisionTraceFlag ECollisionTraceFlag
---@field GeneratedLightMapResolution int32
---@field GeneratedLpvBiasMultiplier float
---@field GeneratedDistanceFieldResolutionScale float
---@field GeneratedWalkableSlopeOverride FWalkableSlopeOverride
---@field GeneratedLightMapCoordinateIndex int32
---@field bGeneratedUseMaximumStreamingTexelRatio boolean
---@field GeneratedStreamingDistanceMultiplier float
---@field GeneratedFoliageDefaultSettings UFoliageType_InstancedStaticMesh
---@field GeneratedAssetUserData TArray<UAssetUserData>
---@field BakeFolder FText
---@field TempCookFolder FText
local UHoudiniAssetComponent = {}

---@return int32
function UHoudiniAssetComponent:GetAssetId() end


---@class UHoudiniAssetComponentMaterials : UObject
local UHoudiniAssetComponentMaterials = {}


---@class UHoudiniAssetInput : UHoudiniAssetParameter
local UHoudiniAssetInput = {}


---@class UHoudiniAssetInstanceInput : UHoudiniAssetParameter
local UHoudiniAssetInstanceInput = {}


---@class UHoudiniAssetInstanceInputField : UObject
local UHoudiniAssetInstanceInputField = {}


---@class UHoudiniAssetParameter : UObject
local UHoudiniAssetParameter = {}


---@class UHoudiniAssetParameterButton : UHoudiniAssetParameter
local UHoudiniAssetParameterButton = {}


---@class UHoudiniAssetParameterChoice : UHoudiniAssetParameter
local UHoudiniAssetParameterChoice = {}


---@class UHoudiniAssetParameterColor : UHoudiniAssetParameter
local UHoudiniAssetParameterColor = {}


---@class UHoudiniAssetParameterFile : UHoudiniAssetParameter
local UHoudiniAssetParameterFile = {}


---@class UHoudiniAssetParameterFloat : UHoudiniAssetParameter
local UHoudiniAssetParameterFloat = {}


---@class UHoudiniAssetParameterFolder : UHoudiniAssetParameter
local UHoudiniAssetParameterFolder = {}


---@class UHoudiniAssetParameterFolderList : UHoudiniAssetParameter
local UHoudiniAssetParameterFolderList = {}


---@class UHoudiniAssetParameterInt : UHoudiniAssetParameter
local UHoudiniAssetParameterInt = {}


---@class UHoudiniAssetParameterLabel : UHoudiniAssetParameter
local UHoudiniAssetParameterLabel = {}


---@class UHoudiniAssetParameterMultiparm : UHoudiniAssetParameter
local UHoudiniAssetParameterMultiparm = {}


---@class UHoudiniAssetParameterRamp : UHoudiniAssetParameterMultiparm
local UHoudiniAssetParameterRamp = {}


---@class UHoudiniAssetParameterRampCurveColor : UCurveLinearColor
local UHoudiniAssetParameterRampCurveColor = {}


---@class UHoudiniAssetParameterRampCurveFloat : UCurveFloat
local UHoudiniAssetParameterRampCurveFloat = {}


---@class UHoudiniAssetParameterSeparator : UHoudiniAssetParameter
local UHoudiniAssetParameterSeparator = {}


---@class UHoudiniAssetParameterString : UHoudiniAssetParameter
local UHoudiniAssetParameterString = {}


---@class UHoudiniAssetParameterToggle : UHoudiniAssetParameter
local UHoudiniAssetParameterToggle = {}


---@class UHoudiniAttributeDataComponent : UActorComponent
local UHoudiniAttributeDataComponent = {}


---@class UHoudiniEngineConvertBgeoCommandlet : UCommandlet
local UHoudiniEngineConvertBgeoCommandlet = {}


---@class UHoudiniEngineConvertBgeoDirCommandlet : UCommandlet
local UHoudiniEngineConvertBgeoDirCommandlet = {}


---@class UHoudiniHandleComponent : USceneComponent
---@field HandleType EHoudiniHandleType
local UHoudiniHandleComponent = {}



---@class UHoudiniInstancedActorComponent : USceneComponent
---@field InstancedAsset UObject
---@field Instances TArray<AActor>
local UHoudiniInstancedActorComponent = {}



---@class UHoudiniMeshSplitInstancerComponent : USceneComponent
---@field Instances TArray<UStaticMeshComponent>
---@field OverrideMaterial UMaterialInterface
---@field InstancedMesh UStaticMesh
local UHoudiniMeshSplitInstancerComponent = {}



---@class UHoudiniRuntimeSettings : UObject
---@field sessionType EHoudiniRuntimeSettingsSessionType
---@field ServerHost FString
---@field ServerPort int32
---@field ServerPipeName FString
---@field bStartAutomaticServer boolean
---@field AutomaticServerTimeout float
---@field bShowMultiAssetDialog boolean
---@field bPauseCookingOnStart boolean
---@field bEnableCooking boolean
---@field bUploadTransformsToHoudiniEngine boolean
---@field bTransformChangeTriggersCooks boolean
---@field bDisplaySlateCookingNotifications boolean
---@field bCookCurvesOnMouseRelease boolean
---@field TemporaryCookFolder FText
---@field bTreatRampParametersAsMultiparms boolean
---@field CollisionGroupNamePrefix FString
---@field RenderedCollisionGroupNamePrefix FString
---@field UCXCollisionGroupNamePrefix FString
---@field UCXRenderedCollisionGroupNamePrefix FString
---@field SimpleCollisionGroupNamePrefix FString
---@field SimpleRenderedCollisionGroupNamePrefix FString
---@field MarshallingAttributeMaterial FString
---@field MarshallingAttributeMaterialHole FString
---@field MarshallingAttributeInstanceOverride FString
---@field MarshallingAttributeFaceSmoothingMask FString
---@field MarshallingAttributeLightmapResolution FString
---@field MarshallingAttributeGeneratedMeshName FString
---@field MarshallingAttributeInputMeshName FString
---@field MarshallingAttributeInputSourceFile FString
---@field MarshallingSplineResolution float
---@field MarshallingLandscapesUseDefaultUnrealScaling boolean
---@field MarshallingLandscapesUseFullResolution boolean
---@field MarshallingLandscapesForceMinMaxValues boolean
---@field MarshallingLandscapesForcedMinValue float
---@field MarshallingLandscapesForcedMaxValue float
---@field GeneratedGeometryScaleFactor float
---@field TransformScaleFactor float
---@field ImportAxis EHoudiniRuntimeSettingsAxisImport
---@field bDoubleSidedGeometry boolean
---@field PhysMaterial UPhysicalMaterial
---@field DefaultBodyInstance FBodyInstance
---@field CollisionTraceFlag ECollisionTraceFlag
---@field LightMapResolution int32
---@field LpvBiasMultiplier float
---@field GeneratedDistanceFieldResolutionScale float
---@field WalkableSlopeOverride FWalkableSlopeOverride
---@field LightMapCoordinateIndex int32
---@field bUseMaximumStreamingTexelRatio boolean
---@field StreamingDistanceMultiplier float
---@field FoliageDefaultSettings UFoliageType_InstancedStaticMesh
---@field AssetUserData TArray<UAssetUserData>
---@field bUseFullPrecisionUVs boolean
---@field SrcLightmapIndex int32
---@field DstLightmapIndex int32
---@field MinLightmapResolution int32
---@field bRemoveDegenerates boolean
---@field GenerateLightmapUVsFlag EHoudiniRuntimeSettingsRecomputeFlag
---@field RecomputeNormalsFlag EHoudiniRuntimeSettingsRecomputeFlag
---@field RecomputeTangentsFlag EHoudiniRuntimeSettingsRecomputeFlag
---@field bUseMikkTSpace boolean
---@field bBuildAdjacencyBuffer boolean
---@field bUseCustomHoudiniLocation boolean
---@field CustomHoudiniLocation FDirectoryPath
---@field bHidePlacementModeHoudiniTools boolean
---@field CustomHoudiniToolsLocation TArray<FHoudiniToolDirectory>
---@field CookingThreadStackSize int32
---@field HoudiniEnvironmentFiles FString
---@field OtlSearchPath FString
---@field DsoSearchPath FString
---@field ImageDsoSearchPath FString
---@field AudioDsoSearchPath FString
local UHoudiniRuntimeSettings = {}



---@class UHoudiniSplineComponent : USceneComponent
local UHoudiniSplineComponent = {}


---@class UTestHoudiniParameterBuilder : UObject
local UTestHoudiniParameterBuilder = {}


