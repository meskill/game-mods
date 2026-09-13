---@meta

---@class ASpawnLocation : ATargetPoint
---@field OnActorSpawned FSpawnLocationOnActorSpawned
---@field OnFinishedSpawning FSpawnLocationOnFinishedSpawning
---@field SpawnCategoryType FDbSingleColumnInfo
---@field AdditionalSpawnCategoryTypes TArray<FDbSingleColumnInfo>
---@field Description FText
---@field SpawnVolumeType ESpawnVolumeType
---@field SpawnVolume UPrimitiveComponent
---@field bEnableScatterSampling boolean
---@field bEnableRandomRotation boolean
---@field bSpawnOnNavMesh boolean
---@field bForceSpawnOnFloor boolean
---@field GridCols int32
---@field GridRows int32
---@field ScatterVariance FVector2D
---@field StoredVolumeLocation FVector
---@field StoredVolumeBounds FVector
---@field UpdateStoredPositionButton FCustomButtonWidget
---@field DebugTextVisualizer UTextRenderComponent
local ASpawnLocation = {}

---@param GroupIn FName
function ASpawnLocation:StopSpawning(GroupIn) end
---@param SpawnProperiesIn FSpawnProperties
---@param GroupIn FName
---@param SpawnProbability float
---@param NumActorsPerClassIn int32
---@param InFirstActorGroupIndex int32
function ASpawnLocation:StartSpawningUsingProbability(SpawnProperiesIn, GroupIn, SpawnProbability, NumActorsPerClassIn, InFirstActorGroupIndex) end
---@param SpawnProperiesIn FSpawnProperties
---@param GroupIn FName
function ASpawnLocation:StartSpawning(SpawnProperiesIn, GroupIn) end
---@param InSpawnCatType FString
function ASpawnLocation:SetSpawnCategorySelection(InSpawnCatType) end
---@param GroupIn FName
---@return boolean
function ASpawnLocation:IsSpawning(GroupIn) end
function ASpawnLocation:InitScatterGrid() end
function ASpawnLocation:CacheVolumeBounds() end


---@class FObjectVisualizationInfo
---@field bDrawObject boolean
---@field ObjectActiveColor FColor
---@field ObjectInactiveColor FColor
local FObjectVisualizationInfo = {}



---@class FSpawnLocationGroup
---@field SpawnLocations TArray<ASpawnLocation>
---@field ActorSelectionMode ESpawnerActorSelectionMode
---@field ActorClassesToSpawn TArray<UClass>
---@field MinActorCount int32
---@field MaxActorCount int32
---@field MinDelayBetweenSpawns float
---@field MaxDelayBetweenSpawns float
---@field bForceSpawnOnFloor boolean
---@field SpawnOnFloorTest ESpawnOnFloorTestType
---@field FloorSweepDistanceZ float
---@field bIsValid boolean
---@field bUsesDeterministicSpawning boolean
---@field RandomizerSeed int32
---@field Randomizer FRandomStream
local FSpawnLocationGroup = {}



---@class FSpawnProperties
---@field ActorSelectionMode ESpawnerActorSelectionMode
---@field SpawnableActorData TArray<FSpawnableActorData>
---@field MinActorCount int32
---@field MaxActorCount int32
---@field MinDelayBetweenSpawns float
---@field MaxDelayBetweenSpawns float
---@field bApplyAdditionalDelay boolean
---@field AdditionalDelay float
---@field bAllowUseStoredValues boolean
local FSpawnProperties = {}



---@class FSpawnableActorData
---@field ActorClass UClass
---@field ActorBounds FBoxSphereBounds
---@field bSpawnOnNavMesh boolean
---@field bForceSpawnOnFloor boolean
---@field SpawnOnFloorTest ESpawnOnFloorTestType
---@field FloorSweepDistanceZ float
---@field NavSearchRadius float
---@field InitialRotation FRotator
local FSpawnableActorData = {}



---@class USpawnerComponent : UActorComponent
---@field SpawnLocationGroups TMap<FName, FSpawnLocationGroup>
---@field OnActorSpawned FSpawnerComponentOnActorSpawned
---@field OnFinishedSpawning FSpawnerComponentOnFinishedSpawning
local USpawnerComponent = {}

---@param GroupName FName
function USpawnerComponent:StopSpawning(GroupName) end
---@param GroupName FName
function USpawnerComponent:StartSpawning(GroupName) end
---@param GroupName FName
---@return boolean
function USpawnerComponent:IsSpawning(GroupName) end
---@param GroupName FName
function USpawnerComponent:EventOnFinishedSpawningAtSpawnLocation(GroupName) end
---@param SpawnedActor AActor
---@param GroupName FName
function USpawnerComponent:EventOnActorSpawnedAtSpawnLocation(SpawnedActor, GroupName) end


