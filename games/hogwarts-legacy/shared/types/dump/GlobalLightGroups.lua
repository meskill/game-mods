---@meta

---@class AGlobalLightGroupsMaster : AActor
---@field RegionGroupMap UGlobalLightGroupsRegionGroupMap
---@field RegionEvent FGlobalLightGroupsMasterRegionEvent
---@field RegionMap TMap<FName, FGlobalLightGroupsRegion>
---@field LightComponentSchedules FLightComponentSchedules
---@field LastRegion FName
---@field ActiveRegion FName
local AGlobalLightGroupsMaster = {}



---@class ALightGroupActorBase : AActor
---@field Settings FLightGroupSettings
local ALightGroupActorBase = {}

---@param Region FName
---@param Group FName
function ALightGroupActorBase:GetLightRegionGroup(Region, Group) end
---@param Region FName
function ALightGroupActorBase:GetLightGroupRegion(Region) end
---@param GroupNumber int32
function ALightGroupActorBase:GetLightGroupIndex(GroupNumber) end
---@param Group FName
function ALightGroupActorBase:GetLightGroup(Group) end


---@class ALightGroupDeclareRegion : AVolume
---@field RegionName FGlobalLightGroupsRegionName
---@field FXList ULightOnOffFXList
---@field Priority float
---@field bUnbounded boolean
local ALightGroupDeclareRegion = {}



---@class ALightGroupDefineNewRegion : AVolume
---@field RegionGroups FGlobalLightGroupsRegionGroups
---@field FXList ULightOnOffFXList
---@field Priority float
---@field bUnbounded boolean
local ALightGroupDefineNewRegion = {}



---@class ALightGroupWindowMaterialsVolume : AActor
---@field LightGroup ULightGroupComponent
---@field WindowGroupMaterialParameter FName
---@field Resources FLightGroupWindowMaterialsResources
local ALightGroupWindowMaterialsVolume = {}

function ALightGroupWindowMaterialsVolume:RefreshBuildResults() end


---@class FGlobalLightGroupsBoundComponent
---@field ComponentPtr TWeakObjectPtr<USceneComponent>
---@field Settings FLightGroupBoundComponentSettings
local FGlobalLightGroupsBoundComponent = {}



---@class FGlobalLightGroupsBoundComponentList
---@field Components TArray<FGlobalLightGroupsBoundComponent>
local FGlobalLightGroupsBoundComponentList = {}



---@class FGlobalLightGroupsBoundComponents
---@field ComponentGroups TArray<FGlobalLightGroupsBoundComponentList>
---@field LastLightMask FGlobalLightGroupsMask
---@field ForceUpdateMask FGlobalLightGroupsMask
local FGlobalLightGroupsBoundComponents = {}



---@class FGlobalLightGroupsComponentSchedule
---@field Schedule TArray<FGlobalLightGroupsScheduleEntry>
---@field bToggleChildren boolean
---@field bPropagateToParent boolean
---@field bDisabled boolean
local FGlobalLightGroupsComponentSchedule = {}



---@class FGlobalLightGroupsComponentSchedules
---@field Schedules TMap<TWeakObjectPtr<ULightComponent>, FGlobalLightGroupsComponentSchedule>
local FGlobalLightGroupsComponentSchedules = {}



---@class FGlobalLightGroupsDebugTimeOfDay
---@field DateTime FDateTime
---@field DateTimeString FString
local FGlobalLightGroupsDebugTimeOfDay = {}



---@class FGlobalLightGroupsFindBestRegion
---@field Name FName
---@field Priority float
local FGlobalLightGroupsFindBestRegion = {}



---@class FGlobalLightGroupsGroupName
---@field Name FName
local FGlobalLightGroupsGroupName = {}



---@class FGlobalLightGroupsGroupSchedule
---@field Group int32
---@field Schedule TArray<FGlobalLightGroupsScheduleEntry>
---@field HermesEvent FName
---@field bDisabled boolean
local FGlobalLightGroupsGroupSchedule = {}



---@class FGlobalLightGroupsGroupSchedules
---@field Schedules TMap<FName, FGlobalLightGroupsGroupSchedule>
local FGlobalLightGroupsGroupSchedules = {}



---@class FGlobalLightGroupsImportScheduleEntry : FTableRowBase
---@field GroupName FName
---@field OnHour int32
---@field OnMinute int32
---@field OnRandMinutesMin float
---@field OnRandMinutesMax float
---@field OffHour int32
---@field OffMinute int32
---@field OffRandMinutesMin float
---@field OffRandMinutesMax float
---@field bNormalizeForSeasons boolean
local FGlobalLightGroupsImportScheduleEntry = {}



---@class FGlobalLightGroupsImportScheduleOptions
---@field Type EGlobalLightGroupsImportScheduleType
---@field Advanced FGlobalLightGroupsImportScheduleOptionsAdvanced
local FGlobalLightGroupsImportScheduleOptions = {}



---@class FGlobalLightGroupsImportScheduleOptionsAdvanced
---@field KeyNameFilter FName
---@field OverrideKeyNames FName
local FGlobalLightGroupsImportScheduleOptionsAdvanced = {}



---@class FGlobalLightGroupsImportScheduleTable
---@field ScheduleTable UDataTable
---@field ImportOptions FGlobalLightGroupsImportScheduleOptions
local FGlobalLightGroupsImportScheduleTable = {}



---@class FGlobalLightGroupsImportSunScheduleEntry : FTableRowBase
---@field GroupName FName
---@field OnAngle EGlobalLightGroupsSunAngle
---@field OnDirection EGlobalLightGroupsSunDirection
---@field OnAngleOffset float
---@field OnRandMinutesMin float
---@field OnRandMinutesMax float
---@field OffAngle EGlobalLightGroupsSunAngle
---@field OffDirection EGlobalLightGroupsSunDirection
---@field OffAngleOffset float
---@field OffRandMinutesMin float
---@field OffRandMinutesMax float
local FGlobalLightGroupsImportSunScheduleEntry = {}



---@class FGlobalLightGroupsMask
---@field Mask int64
local FGlobalLightGroupsMask = {}



---@class FGlobalLightGroupsMaskLock
---@field LockedOnMask FGlobalLightGroupsMask
---@field LockedOffMask FGlobalLightGroupsMask
local FGlobalLightGroupsMaskLock = {}



---@class FGlobalLightGroupsRegion
---@field Name FName
---@field GroupSchedules FGlobalLightGroupsGroupSchedules
---@field GroupNameMap UGlobalLightGroupsGroupNameMap
---@field BoundComponents FGlobalLightGroupsBoundComponents
---@field LightMaskTarget FGlobalLightGroupsMask
---@field LockState FGlobalLightGroupsMaskLock
---@field LightMask FGlobalLightGroupsMask
---@field LastMask FGlobalLightGroupsMask
---@field bInitialEventsSent boolean
local FGlobalLightGroupsRegion = {}



---@class FGlobalLightGroupsRegionGroupName
---@field Region FName
---@field Name FName
local FGlobalLightGroupsRegionGroupName = {}



---@class FGlobalLightGroupsRegionGroups
---@field Region FName
---@field Groups TArray<FName>
---@field GroupSchedules UGlobalLightGroupsNamedGroupSchedules
---@field LightComponentSchedules UGlobalLightGroupsNamedLightComponentSchedules
---@field bForceGroup0OffGroup1On boolean
local FGlobalLightGroupsRegionGroups = {}



---@class FGlobalLightGroupsRegionName
---@field Name FName
local FGlobalLightGroupsRegionName = {}



---@class FGlobalLightGroupsSchedule
---@field ScheduleEntries TArray<FGlobalLightGroupsTimeOnOff>
local FGlobalLightGroupsSchedule = {}



---@class FGlobalLightGroupsScheduleDebugMap
---@field Schedules TArray<FGlobalLightGroupsScheduleDebugMapEntry>
local FGlobalLightGroupsScheduleDebugMap = {}



---@class FGlobalLightGroupsScheduleDebugMapEntry
---@field Key FName
---@field ScheduleEntries TArray<FString>
local FGlobalLightGroupsScheduleDebugMapEntry = {}



---@class FGlobalLightGroupsScheduleEntry
---@field OnOff FGlobalLightGroupsTimeOnOff
---@field State FGlobalLightGroupsTimeSpanOnOff
local FGlobalLightGroupsScheduleEntry = {}



---@class FGlobalLightGroupsScheduleMap
---@field Schedules TMap<FName, FGlobalLightGroupsSchedule>
local FGlobalLightGroupsScheduleMap = {}



---@class FGlobalLightGroupsTimeHMS
---@field Hour int32
---@field Minute int32
---@field Second int32
---@field VarianceMinutesMin float
---@field VarianceMinutesMax float
local FGlobalLightGroupsTimeHMS = {}



---@class FGlobalLightGroupsTimeHMSOnOff
---@field On FGlobalLightGroupsTimeHMS
---@field Off FGlobalLightGroupsTimeHMS
---@field bNormalizeForSeasons boolean
local FGlobalLightGroupsTimeHMSOnOff = {}



---@class FGlobalLightGroupsTimeOnOff
---@field TimeOnOff FGlobalLightGroupsTimeHMSOnOff
---@field SunOnOff FGlobalLightGroupsTimeSunOnOff
---@field bUseTime boolean
local FGlobalLightGroupsTimeOnOff = {}



---@class FGlobalLightGroupsTimeSpanOnOff
---@field NextOn FTimespan
---@field NextOff FTimespan
---@field State FGlobalLightGroupsTimeSpanOnOffState
local FGlobalLightGroupsTimeSpanOnOff = {}



---@class FGlobalLightGroupsTimeSpanOnOffState
---@field State uint8
local FGlobalLightGroupsTimeSpanOnOffState = {}



---@class FGlobalLightGroupsTimeSun
---@field Angle EGlobalLightGroupsSunAngle
---@field Direction EGlobalLightGroupsSunDirection
---@field AngleOffset float
---@field VarianceMinutesMin float
---@field VarianceMinutesMax float
local FGlobalLightGroupsTimeSun = {}



---@class FGlobalLightGroupsTimeSunOnOff
---@field On FGlobalLightGroupsTimeSun
---@field Off FGlobalLightGroupsTimeSun
local FGlobalLightGroupsTimeSunOnOff = {}



---@class FGlobalLightGroupsUpdateTime
---@field Time FTimespan
---@field SolarTime FTimespan
local FGlobalLightGroupsUpdateTime = {}



---@class FLightComponentMessage
---@field Component USceneComponent
---@field Name FName
---@field bIsOn boolean
local FLightComponentMessage = {}



---@class FLightComponentSchedule
---@field Schedule TArray<FGlobalLightGroupsScheduleEntry>
---@field Name FName
---@field HermesEvent FName
---@field bToggleChildren boolean
---@field bDisabled boolean
local FLightComponentSchedule = {}



---@class FLightComponentScheduleName
---@field Name FName
local FLightComponentScheduleName = {}



---@class FLightComponentSchedules
---@field Schedules TMap<TWeakObjectPtr<USceneComponent>, FLightComponentSchedule>
local FLightComponentSchedules = {}



---@class FLightGroupBoundComponentSettings
---@field FXName FName
---@field FXType ELightOnOffFXTargetType
---@field FXMode ELightOnOffFXTargetMode
---@field bInvertOnOff boolean
---@field bPropagateToChildren boolean
local FLightGroupBoundComponentSettings = {}



---@class FLightGroupMessage
---@field Region FName
---@field Name FName
---@field bIsOn boolean
local FLightGroupMessage = {}



---@class FLightGroupSettings
---@field Region FName
---@field Group FGlobalLightGroupsGroupName
local FLightGroupSettings = {}



---@class FLightGroupSettingsOptional
---@field Region FName
---@field Group FGlobalLightGroupsGroupName
---@field bSetGroup boolean
local FLightGroupSettingsOptional = {}



---@class FLightGroupWindowMaterialsBuilder
---@field WindowGroupMaterialParameter FName
---@field LightGroup int32
---@field RelevantMaterialMeshes TArray<UMeshComponent>
local FLightGroupWindowMaterialsBuilder = {}



---@class FLightGroupWindowMaterialsResources
---@field SwappedMaterials TArray<UMaterialInstanceDynamic>
local FLightGroupWindowMaterialsResources = {}



---@class FLightOnOffFX
---@field Name FName
---@field TurnOnFX FLightSwitchFX
---@field TurnOffFX FLightSwitchFX
local FLightOnOffFX = {}



---@class FLightOnOffFXTarget
---@field SceneComponent USceneComponent
---@field bOnOff boolean
local FLightOnOffFXTarget = {}



---@class FLightOnOffFXTargetList
---@field Targets TArray<FLightOnOffFXTarget>
local FLightOnOffFXTargetList = {}



---@class FLightSwitchFX
---@field NiagaraFX UNiagaraSystem
---@field SoundFX UAkAudioEvent
---@field AttachComponent TSubclassOf<USceneComponent>
local FLightSwitchFX = {}



---@class FSolarTime
---@field Time FTimespan
local FSolarTime = {}



---@class IInterface_GlobalLightGroupsRegionVolume : IInterface
local IInterface_GlobalLightGroupsRegionVolume = {}


---@class IInterface_LightRegionGroup : IInterface
local IInterface_LightRegionGroup = {}


---@class UDEPRECATED_GlobalLightGroupsRegionDefinition : UDataAsset
local UDEPRECATED_GlobalLightGroupsRegionDefinition = {}


---@class UGlobalLightGroupsGroupNameMap : UObject
---@field NameGroupMap TMap<FName, int32>
---@field GroupNames TArray<FName>
---@field GroupSchedules UGlobalLightGroupsNamedGroupSchedules
---@field LightComponentSchedules UGlobalLightGroupsNamedLightComponentSchedules
---@field ReferenceCount int32
---@field bForceGroup0OffGroup1On boolean
local UGlobalLightGroupsGroupNameMap = {}



---@class UGlobalLightGroupsLibrary : UBlueprintFunctionLibrary
local UGlobalLightGroupsLibrary = {}

---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
---@param bValid boolean
function UGlobalLightGroupsLibrary:ValidLightGroup(WorldContextObject, Region, Group, bValid) end
---@param WorldContextObject UObject
---@param Region FName
---@param ValidRegion FName
function UGlobalLightGroupsLibrary:ValidateMyRegion(WorldContextObject, Region, ValidRegion) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
---@param SceneComponent USceneComponent
function UGlobalLightGroupsLibrary:UnbindComponentVisibility(WorldContextObject, Region, Group, SceneComponent) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
function UGlobalLightGroupsLibrary:UnbindComponentsVisibility(WorldContextObject, Region, Group) end
---@param WorldContextObject UObject
---@param Region FName
---@param GroupMask FGlobalLightGroupsMask
function UGlobalLightGroupsLibrary:TurnOnLightGroups(WorldContextObject, Region, GroupMask) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
function UGlobalLightGroupsLibrary:TurnOnLightGroup(WorldContextObject, Region, Group) end
---@param WorldContextObject UObject
---@param Region FName
---@param GroupMask FGlobalLightGroupsMask
function UGlobalLightGroupsLibrary:TurnOffLightGroups(WorldContextObject, Region, GroupMask) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
function UGlobalLightGroupsLibrary:TurnOffLightGroup(WorldContextObject, Region, Group) end
---@param RegionA FName
---@param GroupA FName
---@param RegionB FName
---@param GroupB FName
---@param bMatch boolean
function UGlobalLightGroupsLibrary:TestLightRegionAndGroup(RegionA, GroupA, RegionB, GroupB, bMatch) end
---@param WorldContextObject UObject
---@param Region FName
---@param GroupMask FGlobalLightGroupsMask
---@param State EGlobalLightGroupsMaskLockState
function UGlobalLightGroupsLibrary:SetLightGroupLocks(WorldContextObject, Region, GroupMask, State) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
---@param State EGlobalLightGroupsMaskLockState
function UGlobalLightGroupsLibrary:SetLightGroupLock(WorldContextObject, Region, Group, State) end
---@param WorldContextObject UObject
---@param light USceneComponent
function UGlobalLightGroupsLibrary:RemoveLightComponentSchedule(WorldContextObject, light) end
---@param WorldContextObject UObject
---@param Region FName
---@param Groups TArray<FName>
---@return FGlobalLightGroupsMask
function UGlobalLightGroupsLibrary:NamesLightGroupsMask(WorldContextObject, Region, Groups) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
---@return FGlobalLightGroupsMask
function UGlobalLightGroupsLibrary:NameLightGroupsMask(WorldContextObject, Region, Group) end
---@param SunOnOff FGlobalLightGroupsTimeSunOnOff
---@return FGlobalLightGroupsTimeOnOff
function UGlobalLightGroupsLibrary:MakeTimeOnOffSun(SunOnOff) end
---@param TimeOnOff FGlobalLightGroupsTimeHMSOnOff
---@return FGlobalLightGroupsTimeOnOff
function UGlobalLightGroupsLibrary:MakeTimeOnOffHMS(TimeOnOff) end
---@param WorldContextObject UObject
---@param Region FName
function UGlobalLightGroupsLibrary:LockAllLightGroups(WorldContextObject, Region) end
---@param Caller UObject
---@param Message FLightGroupMessage
function UGlobalLightGroupsLibrary:LightGroupMessageDelegate__DelegateSignature(Caller, Message) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
---@param HermesEvent FName
function UGlobalLightGroupsLibrary:LightGroupGetHermesEvent(WorldContextObject, Region, Group, HermesEvent) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
---@param HermesEvent FName
function UGlobalLightGroupsLibrary:LightGroupEnableHermesEvent(WorldContextObject, Region, Group, HermesEvent) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
function UGlobalLightGroupsLibrary:LightGroupDisableHermesEvent(WorldContextObject, Region, Group) end
---@param WorldContextObject UObject
---@param light USceneComponent
---@param ScheduleName FName
---@param bSuccess boolean
---@param bToggleChildren boolean
function UGlobalLightGroupsLibrary:LightComponentSetSchedule(WorldContextObject, light, ScheduleName, bSuccess, bToggleChildren) end
---@param WorldContextObject UObject
---@param light USceneComponent
---@param bToggleChildren boolean
function UGlobalLightGroupsLibrary:LightComponentScheduleToggleChildren(WorldContextObject, light, bToggleChildren) end
---@param Caller UObject
---@param Message FLightComponentMessage
function UGlobalLightGroupsLibrary:LightComponentMessageDelegate__DelegateSignature(Caller, Message) end
---@param WorldContextObject UObject
---@param light USceneComponent
---@param bIsScheduled boolean
function UGlobalLightGroupsLibrary:LightComponentIsScheduled(WorldContextObject, light, bIsScheduled) end
---@param WorldContextObject UObject
---@param light USceneComponent
---@param ScheduleName FName
function UGlobalLightGroupsLibrary:LightComponentGetScheduleName(WorldContextObject, light, ScheduleName) end
---@param WorldContextObject UObject
---@param light USceneComponent
---@param HermesEvent FName
function UGlobalLightGroupsLibrary:LightComponentGetHermesEvent(WorldContextObject, light, HermesEvent) end
---@param WorldContextObject UObject
---@param light USceneComponent
---@param HermesEvent FName
function UGlobalLightGroupsLibrary:LightComponentEnableHermesEvent(WorldContextObject, light, HermesEvent) end
---@param WorldContextObject UObject
---@param light USceneComponent
function UGlobalLightGroupsLibrary:LightComponentDisableHermesEvent(WorldContextObject, light) end
---@param WorldContextObject UObject
---@param light USceneComponent
---@param bEnabled boolean
function UGlobalLightGroupsLibrary:IsLightComponentScheduleEnabled(WorldContextObject, light, bEnabled) end
---@param Event FHermesGetLightGroupMessageDelegateNameEvent
---@param EventName FName
function UGlobalLightGroupsLibrary:HermesGetLightGroupMessageDelegateName(Event, EventName) end
---@param Event FHermesGetLightComponentMessageDelegateNameEvent
---@param EventName FName
function UGlobalLightGroupsLibrary:HermesGetLightComponentMessageDelegateName(Event, EventName) end
---@param Event FHermesBindLightGroupMessageEvent
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UGlobalLightGroupsLibrary:HermesBindLightGroupMessage(Event, Owner, Handle) end
---@param Event FHermesBindLightComponentMessageEvent
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UGlobalLightGroupsLibrary:HermesBindLightComponentMessage(Event, Owner, Handle) end
---@param WorldContextObject UObject
---@param Location FVector
---@param Region FName
function UGlobalLightGroupsLibrary:GetRegionFromLocation(WorldContextObject, Location, Region) end
---@param WorldContextObject UObject
---@param Actor AActor
---@param Region FName
function UGlobalLightGroupsLibrary:GetRegionFromActor(WorldContextObject, Actor, Region) end
---@param WorldContextObject UObject
---@param Region FName
function UGlobalLightGroupsLibrary:GetMyRegion(WorldContextObject, Region) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
---@param State EGlobalLightGroupsMaskLockState
function UGlobalLightGroupsLibrary:GetLightGroupLock(WorldContextObject, Region, Group, State) end
---@param WorldContextObject UObject
---@param GlobalLightGroupsMaster AGlobalLightGroupsMaster
function UGlobalLightGroupsLibrary:GetGlobalLightGroupsMaster(WorldContextObject, GlobalLightGroupsMaster) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
function UGlobalLightGroupsLibrary:EnableLightGroupSchedule(WorldContextObject, Region, Group) end
---@param WorldContextObject UObject
---@param light USceneComponent
function UGlobalLightGroupsLibrary:EnableLightComponentSchedule(WorldContextObject, light) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
function UGlobalLightGroupsLibrary:DisableLightGroupSchedule(WorldContextObject, Region, Group) end
---@param WorldContextObject UObject
---@param light USceneComponent
function UGlobalLightGroupsLibrary:DisableLightComponentSchedule(WorldContextObject, light) end
---@param RegionDropdown FGlobalLightGroupsRegionName
---@return FName
function UGlobalLightGroupsLibrary:Conv_RegionDropDownToRegionName(RegionDropdown) end
---@param LightComponentScheduleDropdown FLightComponentScheduleName
---@return FName
function UGlobalLightGroupsLibrary:Conv_GroupDropDownToLightComponentScheduleName(LightComponentScheduleDropdown) end
---@param GroupDropdown FGlobalLightGroupsGroupName
---@return FName
function UGlobalLightGroupsLibrary:Conv_GroupDropDownToGroupName(GroupDropdown) end
---@param WorldContextObject UObject
---@param Region FName
function UGlobalLightGroupsLibrary:ClearAllLightGroupLocks(WorldContextObject, Region) end
---@param WorldContextObject UObject
---@param Region FName
---@param GroupMask FGlobalLightGroupsMask
---@param bIsOn boolean
function UGlobalLightGroupsLibrary:CheckLightGroups(WorldContextObject, Region, GroupMask, bIsOn) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
---@param bIsOn boolean
function UGlobalLightGroupsLibrary:CheckLightGroup(WorldContextObject, Region, Group, bIsOn) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
---@param SceneComponent USceneComponent
---@param Settings FLightGroupBoundComponentSettings
function UGlobalLightGroupsLibrary:BindComponentVisibility(WorldContextObject, Region, Group, SceneComponent, Settings) end
---@param WorldContextObject UObject
---@param Region FName
---@param Group FName
---@param SceneComponents TArray<USceneComponent>
---@param Settings FLightGroupBoundComponentSettings
function UGlobalLightGroupsLibrary:BindComponentsVisibility(WorldContextObject, Region, Group, SceneComponents, Settings) end


---@class UGlobalLightGroupsNamedGroupSchedules : UGlobalLightGroupsNamedSchedules
local UGlobalLightGroupsNamedGroupSchedules = {}


---@class UGlobalLightGroupsNamedLightComponentSchedules : UGlobalLightGroupsNamedSchedules
local UGlobalLightGroupsNamedLightComponentSchedules = {}


---@class UGlobalLightGroupsNamedSchedules : UDataAsset
---@field ScheduleMap FGlobalLightGroupsScheduleMap
local UGlobalLightGroupsNamedSchedules = {}

function UGlobalLightGroupsNamedSchedules:RebuildSchedules() end


---@class UGlobalLightGroupsRegionGroupDirectory : UObject
---@field Registry UGlobalLightGroupsRegionGroupRegistry
---@field WorldRegionGroupMap UGlobalLightGroupsWorldRegionGroupMap
local UGlobalLightGroupsRegionGroupDirectory = {}



---@class UGlobalLightGroupsRegionGroupMap : UObject
---@field RegionMap TMap<FName, UGlobalLightGroupsGroupNameMap>
local UGlobalLightGroupsRegionGroupMap = {}



---@class UGlobalLightGroupsRegionGroupRegistry : UDataAsset
---@field RegionGroups TArray<FGlobalLightGroupsRegionGroups>
---@field RegionFreeLightComponentSchedules UGlobalLightGroupsNamedLightComponentSchedules
local UGlobalLightGroupsRegionGroupRegistry = {}



---@class UGlobalLightGroupsWindowMaterialsComponent : UActorComponent
---@field Settings FLightGroupSettingsOptional
---@field WindowGroupMaterialParameter FName
---@field Resources FLightGroupWindowMaterialsResources
local UGlobalLightGroupsWindowMaterialsComponent = {}

function UGlobalLightGroupsWindowMaterialsComponent:RefreshBuildResults() end


---@class UGlobalLightGroupsWorldRegionGroupMap : UObject
---@field WorldMap TMap<UWorld, UGlobalLightGroupsRegionGroupMap>
---@field PresetMap UGlobalLightGroupsRegionGroupMap
local UGlobalLightGroupsWorldRegionGroupMap = {}



---@class ULightGroupComponent : UActorComponent
---@field Settings FLightGroupSettings
local ULightGroupComponent = {}

---@param Region FName
---@param Group FName
function ULightGroupComponent:GetLightRegionGroup(Region, Group) end
---@param Region FName
function ULightGroupComponent:GetLightGroupRegion(Region) end
---@param GroupNumber int32
function ULightGroupComponent:GetLightGroupIndex(GroupNumber) end
---@param Group FName
function ULightGroupComponent:GetLightGroup(Group) end


---@class ULightOnOffFXList : UDataAsset
---@field FXList TArray<FLightOnOffFX>
local ULightOnOffFXList = {}



