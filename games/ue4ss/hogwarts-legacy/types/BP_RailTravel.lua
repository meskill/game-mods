---@meta

---@class ABP_RailTravel_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CognitionStimuliSource UCognitionStimuliSourceComponent
---@field CylinderOverlap UStaticMeshComponent
---@field Spline USplineComponent
---@field DefaultSceneRoot USceneComponent
---@field WingedBoarSoftClass TSoftClassPtr<AActor>
---@field Loaded boolean
local ABP_RailTravel_C = {}

function ABP_RailTravel_C:UserConstructionScript() end
---@param Loaded UClass
function ABP_RailTravel_C:OnLoaded_3760AC4F441A6F01D5ACA992D45BFB6A(Loaded) end
---@param OtherActor AActor
function ABP_RailTravel_C:ReceiveActorEndOverlap(OtherActor) end
---@param OtherActor AActor
function ABP_RailTravel_C:ReceiveActorBeginOverlap(OtherActor) end
function ABP_RailTravel_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_RailTravel_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_RailTravel_C:ExecuteUbergraph_BP_RailTravel(EntryPoint) end


