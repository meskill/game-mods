---@meta

---@class ABP_DH_Item_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CognitionStimuliSource UCognitionStimuliSourceComponent
---@field StaticMesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field ItemType FName
---@field StartingLocation FVector
---@field HoverDegrees float
---@field HoverSpeedDegrees float
---@field HoverDistance float
---@field NotificationTitle FString
---@field NotificationIcon FString
local ABP_DH_Item_C = {}

function ABP_DH_Item_C:FOFF() end
function ABP_DH_Item_C:ShowItem() end
function ABP_DH_Item_C:HideItem() end
---@param Caller UObject
function ABP_DH_Item_C:InteractionInitiated(Caller) end
---@param EndPlayReason EEndPlayReason::Type
function ABP_DH_Item_C:ReceiveEndPlay(EndPlayReason) end
function ABP_DH_Item_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_DH_Item_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_DH_Item_C:ExecuteUbergraph_BP_DH_Item(EntryPoint) end


