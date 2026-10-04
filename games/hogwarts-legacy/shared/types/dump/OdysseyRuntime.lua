---@meta

---@class ALinkActor : AActor
---@field LinkType ELinkType
---@field NavLayers int32
---@field ForwardLinkUsageFlags FOdcFlags
---@field BackwardLinkUsageFlags FOdcFlags
---@field Bidirectional boolean
---@field Cost float
---@field MustUseDist float
---@field MaxSimultaneous int32
---@field DelayBeforeNextUser float
---@field LinkStartPos FVector
---@field LinkEndPos FVector
local ALinkActor = {}



---@class ALinkStripActor : ALinkActor
---@field LinkStartPos2 FVector
---@field LinkEndPos2 FVector
local ALinkStripActor = {}



---@class AOdcDebugDrawActor : AActor
---@field CanvasTextComponent UOdcCanvasTextComponent
---@field LineBatchComponent ULineBatchComponent
---@field DebugPanel UDebugPanelComponent
local AOdcDebugDrawActor = {}



---@class AOdcNavData : ANavigationData
---@field Layer uint32
local AOdcNavData = {}



---@class AOdcNavmeshActor : AActor
---@field NavGraphImages TArray<FOdcNavGraphImage>
---@field NavmeshExtent FVector
---@field NavGraphImagesVersion int8
local AOdcNavmeshActor = {}



---@class FDoNavigationAsyncWork : FTickFunction
local FDoNavigationAsyncWork = {}


---@class FOdcCollisionAreaUsageFlag
local FOdcCollisionAreaUsageFlag = {}


---@class FOdcCollisionChannelSet
---@field ChannelBitmask uint32
local FOdcCollisionChannelSet = {}



---@class FOdcFlags
---@field Bits int32
local FOdcFlags = {}



---@class FOdcFlagsDefinition
---@field flags TArray<FName>
local FOdcFlagsDefinition = {}



---@class FOdcGeometryMetrics
---@field TraceLedgeRadius float
---@field TraceLedgeIntoWallAdjust float
---@field TraceLedgeUpAdjust float
---@field TraceLedgeDownCast float
---@field LinkOffsetFromLadderEnds float
local FOdcGeometryMetrics = {}



---@class FOdcLayerConfig
---@field Radius float
---@field Height float
---@field ExtrusionRadius float
local FOdcLayerConfig = {}



---@class FOdcLinkAutogenParams
local FOdcLinkAutogenParams = {}


---@class FOdcNavGraphImage
---@field Data TArray<uint8>
local FOdcNavGraphImage = {}



---@class FOdcObstacleData
---@field Layers int32
---@field Behavior OdcObstacleBehavior
---@field Cost float
---@field BlockageFlags FOdcFlags
---@field MarkupFlags uint32
---@field Name FString
local FOdcObstacleData = {}



---@class FOdcPathSpec
---@field ObstacleMode EOdcBlockageMode
---@field ObstacleBlockageFlags FOdcFlags
---@field AreaUsageFlags FOdcFlags
---@field AreaPenaltyFlags FOdcFlags
---@field LinkUsageFlags FOdcFlags
---@field bUsePathSharingPenalty boolean
---@field PathSharingPenalty float
---@field MaxPathSharingPenalty float
---@field MaxSearchDist float
---@field PenaltyTable FOdcPenaltyTable
---@field SnapMode EOdcSnapMode
local FOdcPathSpec = {}



---@class FOdcPenaltyTable
---@field Mode EOdcPenaltyTableMode
---@field PerFlagPenalties TArray<uint8>
---@field FixedPointDenominator uint8
local FOdcPenaltyTable = {}



---@class FOdcSlopeAreaUsageFlag
local FOdcSlopeAreaUsageFlag = {}


---@class IPathSpecInterface : IInterface
local IPathSpecInterface = {}

---@return FOdcPathSpec
function IPathSpecInterface:GetPathSpec() end
---@return int32
function IPathSpecInterface:GetLinkUsageFlags() end
---@return int32
function IPathSpecInterface:GetBlockageFlags() end


---@class UExtendedOdcRepulsorComponent : USceneComponent
---@field bEnabled boolean
---@field RepulsorTickFrameInterval uint32
---@field RepulsorDistanceThreshold float
---@field RepulsorRadius float
---@field RepulsorOuterCushion float
---@field RepulsorInnerCushion float
local UExtendedOdcRepulsorComponent = {}



---@class ULinkTextRenderComponent : UTextRenderComponent
local ULinkTextRenderComponent = {}


---@class UOdcAuthoredObstacleSetupComponent : USceneComponent
---@field ShapeType EOdcAuthoredObstacleShape
---@field MinHeight float
---@field MaxHeight float
---@field HullPoints TArray<FVector>
---@field BoxCenter FVector
---@field BoxRotation FQuat
---@field BoxExtent FVector
local UOdcAuthoredObstacleSetupComponent = {}



---@class UOdcCanvasTextComponent : UPrimitiveComponent
local UOdcCanvasTextComponent = {}


---@class UOdcEnvQueryTest_SphereFit : UEnvQueryTest
---@field Radius float
---@field bCustomPathSpec boolean
---@field CustomPathSpec FOdcPathSpec
local UOdcEnvQueryTest_SphereFit = {}



---@class UOdcMoverPathFollowingComponent : UPathFollowingComponent
---@field ReplacedNavDataClass FSoftClassPath
local UOdcMoverPathFollowingComponent = {}



---@class UOdcNavLinkComponent : USceneComponent
---@field LinkType ELinkType
---@field NavLayers int32
---@field ForwardLinkUsageFlags FOdcFlags
---@field BackwardLinkUsageFlags FOdcFlags
---@field Bidirectional boolean
---@field Cost float
---@field MustUseDist float
---@field MaxSimultaneous int32
---@field DelayBeforeNextUser float
local UOdcNavLinkComponent = {}



---@class UOdcNavmeshConfig : UObject
---@field CollisionChannelsAffectingNavmesh FOdcCollisionChannelSet
---@field DefaultAreaUsageFlags FOdcFlags
---@field CrouchAreaUsageFlags FOdcFlags
---@field DeepWaterAreaUsageFlags FOdcFlags
---@field ShallowWaterAreaUsageFlags FOdcFlags
---@field DefaultPenaltyMultiplier float
---@field MarkupCollisionPreset FString
---@field CollisionAreaUsageFlags TArray<FOdcCollisionAreaUsageFlag>
---@field SlopeAreaUsageFlags TArray<FOdcSlopeAreaUsageFlag>
---@field LayerConfigs FOdcLayerConfig
---@field AreaUsage FOdcFlagsDefinition
---@field LinkUsage FOdcFlagsDefinition
---@field ObstacleBlockage FOdcFlagsDefinition
---@field GeometryMetrics FOdcGeometryMetrics
---@field DefaultDrawDisttance float
local UOdcNavmeshConfig = {}



---@class UOdcNavmeshFootprint : UObject
---@field Hull TArray<FVector>
---@field Height float
local UOdcNavmeshFootprint = {}



---@class UOdcObstacleComponent : USceneComponent
---@field ObstacleData FOdcObstacleData
---@field bExcludeIfParentHasAuthoredObstacle boolean
local UOdcObstacleComponent = {}

---@param FlagName FName
function UOdcObstacleComponent:SetFlag(FlagName) end
---@param FlagName FName
function UOdcObstacleComponent:ClearFlag(FlagName) end
---@param IncludeComponents TArray<UActorComponent>
---@param RemoveUnknownObstacles boolean
function UOdcObstacleComponent:AddComponentObstaclesBP(IncludeComponents, RemoveUnknownObstacles) end
---@param RemoveUnknownObstacles boolean
---@param ExcludeComponents TArray<UActorComponent>
function UOdcObstacleComponent:AddActorComponentObstaclesBP(RemoveUnknownObstacles, ExcludeComponents) end


---@class UOdcObstacleMeshComponent : UStaticMeshComponent
---@field NavStaticMesh UStaticMesh
local UOdcObstacleMeshComponent = {}



---@class UOdcRepulsorComponent : USceneComponent
---@field RepulsorRadius float
---@field RepulsorOuterCushion float
---@field RepulsorInnerCushion float
local UOdcRepulsorComponent = {}



---@class UOdc_BP : UObject
local UOdc_BP = {}

---@param Layer int32
---@param InLoc FVector
---@param InRadius float
---@param InUpDist float
---@param InDownDist float
---@param OutLoc FVector
---@return boolean
function UOdc_BP:GetNavmeshPoint(Layer, InLoc, InRadius, InUpDist, InDownDist, OutLoc) end


