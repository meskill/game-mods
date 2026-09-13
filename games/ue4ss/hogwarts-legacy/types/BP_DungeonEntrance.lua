---@meta

---@class ABP_DungeonEntrance_C : ADungeonEntrancePlacement
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BP_DungeonLOC_Marker UChildActorComponent
---@field DungeonLocation USceneComponent
---@field EntranceBlocker UBoxComponent
---@field Sphere USphereComponent
---@field InteractChildActor UChildActorComponent
---@field SwimmingTransform USceneComponent
---@field CairnATransform USceneComponent
---@field SanctumTransform USceneComponent
---@field Parent UChildActorComponent
---@field Target UTargetComponent
---@field DefaultSceneRoot USceneComponent
---@field NewVar_2 UChildActorComponent
---@field PlayerStartTag FString
---@field DungeonTypeToMesh TMap<E_AVA_DungeonType::Type, TSoftClassPtr<AActor>>
---@field LockType E_DungeonEntranceLockTypes::Type
---@field WorldToLoad TSoftObjectPtr<UWorld>
---@field InteractActor ABP_DungeonInteract_C
---@field SwitchActive boolean
---@field EnableAudio boolean
---@field BeaconText FString
---@field EntranceData FSTR_TransientDungeonListData
local ABP_DungeonEntrance_C = {}

---@param DungeonNameList FDataTableRowHandle
function ABP_DungeonEntrance_C:GetDungeonDatatableHandle(DungeonNameList) end
---@return FName
function ABP_DungeonEntrance_C:GetUniqueBeaconId() end
---@param DungeonTypeName FName
---@param DungeonType E_AVA_DungeonType::Type
function ABP_DungeonEntrance_C:GetDungeonTypeFromName(DungeonTypeName, DungeonType) end
---@param CheckPassed boolean
function ABP_DungeonEntrance_C:DayNightCheck(CheckPassed) end
function ABP_DungeonEntrance_C:SetLockState() end
---@param MissionCheckPassed boolean
function ABP_DungeonEntrance_C:MissionStateCheck(MissionCheckPassed) end
---@param LockPassed boolean
function ABP_DungeonEntrance_C:LockCheck(LockPassed) end
---@param Load boolean
function ABP_DungeonEntrance_C:StatCheck(Load) end
function ABP_DungeonEntrance_C:UserConstructionScript() end
---@param DeltaSeconds float
function ABP_DungeonEntrance_C:ReceiveTick(DeltaSeconds) end
function ABP_DungeonEntrance_C:ReceiveBeginPlay() end
function ABP_DungeonEntrance_C:BP_IFACE_Sanctum_Dungeon_1_Healed() end
function ABP_DungeonEntrance_C:UpdateInteractCheck() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABP_DungeonEntrance_C:BndEvt__Sphere_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
function ABP_DungeonEntrance_C:BP_IFACE_Sanctum_Dungeon_1_Destroyed() end
---@param SwitchActor AActor
function ABP_DungeonEntrance_C:SwitchOn(SwitchActor) end
function ABP_DungeonEntrance_C:AudioCheck() end
function ABP_DungeonEntrance_C:BP_IFACE_Santum_Dungeon_Entrance_START() end
---@param SwitchActor AActor
function ABP_DungeonEntrance_C:SwitchOff(SwitchActor) end
---@param Caller UObject
function ABP_DungeonEntrance_C:DungeonLocsInteractUpdate(Caller) end
function ABP_DungeonEntrance_C:BP_IFACE_Santum_Dungeon_Entrance_END() end
function ABP_DungeonEntrance_C:RegisterDungeon() end
function ABP_DungeonEntrance_C:ExecuteLevelLoad() end
---@param EntryPoint int32
function ABP_DungeonEntrance_C:ExecuteUbergraph_BP_DungeonEntrance(EntryPoint) end


