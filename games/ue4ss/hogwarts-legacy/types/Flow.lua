---@meta

---@class ARiverSectionAudio : AActor
---@field bRelativeLocations boolean
---@field AudioPoints TArray<FRiverAudioPoint>
---@field AkComponent UAkComponent
---@field ClosestAudioLocation FVector
---@field ClosestIndex int32
---@field CurrSpeedOfFlow float
local ARiverSectionAudio = {}



---@class FFlowDataQueryResult
---@field Type EWaterType
---@field Height float
---@field normal FVector
---@field WaterBodyActor TWeakObjectPtr<AActor>
local FFlowDataQueryResult = {}



---@class FFlowDynamicRippleRequest
---@field Radius float
---@field IntensityMultiplier float
---@field AttachmentComponent TWeakObjectPtr<USceneComponent>
---@field MovementComponent TWeakObjectPtr<UAmbulatory_MovementComponent>
---@field WaterHeight float
---@field bUseWaterHeight boolean
---@field BonesToTrack TMap<FName, FName>
local FFlowDynamicRippleRequest = {}



---@class FFlowWaveSystemSettingsData
---@field MapNames TArray<FString>
---@field FirstWaveCascadeSize float
---@field WaveFoamCascadeIndex int32
---@field WaveHeightBias float
---@field WaterBleed float
---@field WaterlineFadeRate float
---@field WetnessSoftening float
---@field FoamFadeRate float
---@field FoamCoverage float
---@field FoamMultiplier float
---@field FoamDeterminantBias float
local FFlowWaveSystemSettingsData = {}



---@class FGerstnerWave
---@field Amplitude float
---@field Wavelength float
---@field Direction FVector2D
---@field Phase float
---@field GravityMultiplier float
local FGerstnerWave = {}



---@class FLakeAudioSamplePoint
---@field Location FVector
---@field GeometricDepth float
---@field WaterDepth float
---@field DistanceToCoast float
---@field CoastDirection FVector2D
---@field MaxWaveHeight float
local FLakeAudioSamplePoint = {}



---@class FLakeParameters
---@field WaterMaterials TArray<UMaterialInterface>
---@field WindWeight float
---@field bUseFixedWindVelocity boolean
---@field FixedWindVelocity FVector2D
---@field WindCoastFalloffDistance float
---@field Choppiness float
---@field WaveGravity float
---@field ShallowWaterAttenuation float
---@field GerstnerWaves TArray<FGerstnerWave>
local FLakeParameters = {}



---@class FRiverAudioPoint
---@field Location FVector
---@field SpeedOfFlow float
local FRiverAudioPoint = {}



---@class FWaterMeshAccelerationStructure
---@field Data TArray<uint8>
---@field LakeLocation FVector2D
---@field Extents float
---@field CellsInRow int32
local FWaterMeshAccelerationStructure = {}



---@class UFlowQueryAPI : UWorldSubsystem
local UFlowQueryAPI = {}

---@param Requester UObject
---@param QueryPositions TArray<FVector>
---@param OutResults TArray<FFlowDataQueryResult>
---@param bComputeNormals boolean
---@param bTraceRay boolean
---@return boolean
function UFlowQueryAPI:QueryWaterData(Requester, QueryPositions, OutResults, bComputeNormals, bTraceRay) end


---@class UFlowRippleSubsystem : UWorldSubsystem
---@field RenderTargetResource UTextureRenderTarget2DArray
---@field PlayerRenderTarget UPlayerRenderTarget
---@field Settings UFlowRippleSystemSettings
local UFlowRippleSubsystem = {}

---@param Attachment USceneComponent
function UFlowRippleSubsystem:UnregisterDynamicRippleSource(Attachment) end
---@param Requester USceneComponent
function UFlowRippleSubsystem:RemovePersistentRippleSource(Requester) end
---@param Request FFlowDynamicRippleRequest
function UFlowRippleSubsystem:RegisterDynamicRippleSource(Request) end
---@param PositionWorld FVector
---@param Intensity float
---@param Radius float
---@param LifeTime float
---@param ForceOverLifetime float
function UFlowRippleSubsystem:AddRipple(PositionWorld, Intensity, Radius, LifeTime, ForceOverLifetime) end
---@param Requester USceneComponent
---@param Intensity float
---@param Radius float
---@param OscillationFrequency float
function UFlowRippleSubsystem:AddPersistentRippleSource(Requester, Intensity, Radius, OscillationFrequency) end


---@class UFlowRippleSystemSettings : UDataAsset
---@field WaveSpeed float
---@field Damping float
---@field VelocityToIntensity FRuntimeFloatCurve
local UFlowRippleSystemSettings = {}



---@class UFlowWaveSubsystem : UWorldSubsystem
---@field RegisteredLakes TArray<ULakeComponent>
---@field RenderTargetResourcesWaveDisps UTextureRenderTarget2DArray
---@field RenderTargetResourceWaveFoam UTextureRenderTarget2DArray
---@field Settings UFlowWaveSystemSettings
local UFlowWaveSubsystem = {}



---@class UFlowWaveSystemSettings : UDataAsset
---@field GlobalSettings FFlowWaveSystemSettingsData
---@field PerLevelSettings TArray<FFlowWaveSystemSettingsData>
local UFlowWaveSystemSettings = {}



---@class ULakeAudioComponent : UAkComponent
---@field MaxNumAudioPoints int32
---@field PointSpacing float
---@field SamplePoints TArray<FLakeAudioSamplePoint>
local ULakeAudioComponent = {}



---@class ULakeComponent : UActorComponent
---@field ParametersGenerator ULakeParameterGeneratorBase
---@field Parameters FLakeParameters
---@field LakeSize float
---@field TextureDirAndDistToCoast UTexture
---@field TextureFlowAndWaterDepth UTexture
---@field LakeToolVersion ELakeToolVersion
---@field ParentWaterBox TWeakObjectPtr<UBoxComponent>
---@field OverallWeight float
---@field ComponentsPerOctave int32
---@field WaveDirectionVariance float
---@field bEnable000025 boolean
---@field Power000025 float
---@field bEnable000050 boolean
---@field Power000050 float
---@field bEnable000100 boolean
---@field Power000100 float
---@field bEnable000200 boolean
---@field Power000200 float
---@field bEnable000400 boolean
---@field Power000400 float
---@field bEnable000800 boolean
---@field Power000800 float
---@field bEnable001600 boolean
---@field Power001600 float
---@field bEnable003200 boolean
---@field Power003200 float
---@field bEnable006400 boolean
---@field Power006400 float
---@field bEnable012800 boolean
---@field Power012800 float
---@field bEnable025600 boolean
---@field Power025600 float
---@field bEnable051200 boolean
---@field Power051200 float
local ULakeComponent = {}

function ULakeComponent:CreatePresetFromParameters() end


---@class ULakeParameterGenerator : ULakeParameterGeneratorBase
---@field WaterMaterials TArray<UMaterialInterface>
---@field WindWeight float
---@field bUseFixedWindVelocity boolean
---@field FixedWindVelocity FVector2D
---@field WindCoastFalloffDistance float
---@field Choppiness float
---@field WaveGravity float
---@field RandomSeed int32
---@field ShallowWaterAttenuation float
---@field WaveGravityVariance float
local ULakeParameterGenerator = {}



---@class ULakeParameterGeneratorBase : UObject
local ULakeParameterGeneratorBase = {}


---@class ULakeParameterManualGenerator : ULakeParameterGenerator
---@field OverallWeight float
---@field ComponentsPerOctave int32
---@field WaveDirectionVariance float
---@field bEnable000025 boolean
---@field Power000025 float
---@field bEnable000050 boolean
---@field Power000050 float
---@field bEnable000100 boolean
---@field Power000100 float
---@field bEnable000200 boolean
---@field Power000200 float
---@field bEnable000400 boolean
---@field Power000400 float
---@field bEnable000800 boolean
---@field Power000800 float
---@field bEnable001600 boolean
---@field Power001600 float
---@field bEnable003200 boolean
---@field Power003200 float
---@field bEnable006400 boolean
---@field Power006400 float
---@field bEnable012800 boolean
---@field Power012800 float
---@field bEnable025600 boolean
---@field Power025600 float
---@field bEnable051200 boolean
---@field Power051200 float
local ULakeParameterManualGenerator = {}



---@class ULakeParameterPresetGenerator : ULakeParameterGeneratorBase
---@field Preset ULakeParametersPreset
local ULakeParameterPresetGenerator = {}



---@class ULakeParameterSimpleGenerator : ULakeParameterGenerator
---@field NumWaves int32
---@field Randomness float
---@field MinWavelength float
---@field MaxWavelength float
---@field WavelengthFalloff float
---@field MinAmplitude float
---@field MaxAmplitude float
---@field AmplitudeFalloff float
---@field DirectionAngularSpreadDeg float
local ULakeParameterSimpleGenerator = {}



---@class ULakeParametersPreset : UDataAsset
---@field ParametersGenerator ULakeParameterGenerator
local ULakeParametersPreset = {}



---@class UPlayerRenderTarget : UObject
---@field Cascades TArray<UPlayerRenderTargetCascade>
---@field RenderTarget UTextureRenderTarget2DArray
---@field RenderTargetAux UTextureRenderTarget2DArray
local UPlayerRenderTarget = {}



---@class UPlayerRenderTargetCascade : UObject
local UPlayerRenderTargetCascade = {}


---@class UPlayerRenderTargetSubsystem : UWorldSubsystem
---@field RenderTargets TArray<UPlayerRenderTarget>
---@field RenderTargetMaterialParams UMaterialParameterCollection
---@field NiagaraParameterCollection UNiagaraParameterCollection
local UPlayerRenderTargetSubsystem = {}



---@class URiverSectionAudioVisualizerComponent : UActorComponent
local URiverSectionAudioVisualizerComponent = {}


---@class URuntimeHierarchicalInstancedStaticMeshComponent : UHierarchicalInstancedStaticMeshComponent
local URuntimeHierarchicalInstancedStaticMeshComponent = {}


---@class UWaterCollisionComponent : UStaticMeshComponent
local UWaterCollisionComponent = {}


---@class UWaterInteractionComponent : UActorComponent
---@field bCanRipple boolean
---@field BonesToTrack TMap<FName, FName>
---@field Radius float
---@field IntensityMultiplier float
local UWaterInteractionComponent = {}

---@param bEnableForWater boolean
function UWaterInteractionComponent:WakeUp(bEnableForWater) end
function UWaterInteractionComponent:Sleep() end


---@class UWaterTileMeshComponent : USceneComponent
---@field SubtileMesh UStaticMesh
---@field LakeRelativeOffsetAndExtents FVector4
---@field LakeSize float
---@field TextureDirAndDistToCoast UTexture
---@field TextureFlowAndWaterDepth UTexture
---@field AccelerationStructure FWaterMeshAccelerationStructure
---@field HierarchicalInstancedTilesComponents TArray<URuntimeHierarchicalInstancedStaticMeshComponent>
---@field InstancedTilesComponents TArray<UInstancedStaticMeshComponent>
---@field WaterMaterialInstances TArray<UMaterialInstanceDynamic>
local UWaterTileMeshComponent = {}

function UWaterTileMeshComponent:RebuildAccelerationStructure() end


