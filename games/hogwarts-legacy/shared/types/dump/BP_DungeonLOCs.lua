---@meta

---@class ABP_DungeonLOCs_C : AActor
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
---@field DungeonNameList FDataTableRowHandle
---@field NewVar_2 UChildActorComponent
---@field IsExit boolean
---@field ['Dungeon Type'] E_AVA_DungeonType::Type
---@field ['Turn OFF Geo'] boolean
---@field ['Turn OFF Marker'] boolean
---@field PlayerStartTag FString
---@field TurnOnBeaconDebug boolean
---@field ActivationRange int32
---@field EnterExitRange int32
---@field DungeonTypeToMesh TMap<E_AVA_DungeonType::Type, TSoftClassPtr<AActor>>
---@field LockType E_DungeonEntranceLockTypes::Type
---@field UseMissionCheck boolean
---@field MissionLock FDatabaseMissionList
---@field MissionStateRequired MissionStatus
---@field ToggleOpeningCollision boolean
---@field UseStatCheck boolean
---@field StatName FStatList
---@field NeededStatValue int32
---@field UseLockCheck boolean
---@field LockId FName
---@field NeededLockState ELockStates
---@field DungeonName FName
---@field WorldToLoad TSoftObjectPtr<UWorld>
---@field EntranceIndex int32
---@field InteractActor ABP_DungeonInteract_C
---@field AlwaysAllowEnter boolean
---@field RequireSwitch boolean
---@field SwitchActive boolean
---@field EnableAudio boolean
---@field BeaconText FString
---@field UseTimeOfDayCheck boolean
---@field TimeOfDayRange FVector2D
---@field BlockerCollisionOff boolean
---@field DayOrNight float
---@field DisableCompanionsOnEnter boolean
---@field BeaconOff boolean
local ABP_DungeonLOCs_C = {}

---@param DungeonNameList FDataTableRowHandle
function ABP_DungeonLOCs_C:GetDungeonDatatableHandle(DungeonNameList) end
---@return FName
function ABP_DungeonLOCs_C:GetUniqueBeaconId() end
---@param CheckPassed boolean
function ABP_DungeonLOCs_C:DayNightCheck(CheckPassed) end
function ABP_DungeonLOCs_C:SetLockState() end
---@param MissionCheckPassed boolean
function ABP_DungeonLOCs_C:MissionStateCheck(MissionCheckPassed) end
---@param LockPassed boolean
function ABP_DungeonLOCs_C:LockCheck(LockPassed) end
---@param Load boolean
function ABP_DungeonLOCs_C:StatCheck(Load) end
function ABP_DungeonLOCs_C:UserConstructionScript() end
---@param DeltaSeconds float
function ABP_DungeonLOCs_C:ReceiveTick(DeltaSeconds) end
function ABP_DungeonLOCs_C:ReceiveBeginPlay() end
function ABP_DungeonLOCs_C:UpdateInteractCheck() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABP_DungeonLOCs_C:BndEvt__Sphere_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
function ABP_DungeonLOCs_C:BP_IFACE_Sanctum_Dungeon_1_Healed() end
---@param SwitchActor AActor
function ABP_DungeonLOCs_C:SwitchOn(SwitchActor) end
function ABP_DungeonLOCs_C:AudioCheck() end
function ABP_DungeonLOCs_C:BP_IFACE_Sanctum_Dungeon_1_Destroyed() end
---@param Caller UObject
---@param String FName
function ABP_DungeonLOCs_C:NTR_02_Updated(Caller, String) end
function ABP_DungeonLOCs_C:BP_IFACE_Santum_Dungeon_Entrance_START() end
---@param SwitchActor AActor
function ABP_DungeonLOCs_C:SwitchOff(SwitchActor) end
---@param Caller UObject
function ABP_DungeonLOCs_C:DungeonLocsInteractUpdate(Caller) end
function ABP_DungeonLOCs_C:BP_IFACE_Santum_Dungeon_Entrance_END() end
function ABP_DungeonLOCs_C:RegisterDungeon() end
function ABP_DungeonLOCs_C:ExecuteLevelLoad() end
---@param EntryPoint int32
function ABP_DungeonLOCs_C:ExecuteUbergraph_BP_DungeonLOCs(EntryPoint) end


