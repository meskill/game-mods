---@meta

---@class AMasterTickThrottlerSingleton : AActor
---@field ThrottleActors TMap<TWeakObjectPtr<AActor>, FMasterTickThrottlerTracker>
---@field ThrottleComponents TMap<TWeakObjectPtr<UActorComponent>, FMasterTickThrottlerTracker>
---@field LastEye FVector
---@field bLastEyeValid boolean
local AMasterTickThrottlerSingleton = {}

---@param Component UActorComponent
function AMasterTickThrottlerSingleton:RemoveManagedComponent(Component) end
---@param Actor AActor
function AMasterTickThrottlerSingleton:RemoveManagedActor(Actor) end
---@param Component UActorComponent
---@param bIsManaged boolean
function AMasterTickThrottlerSingleton:IsManagedComponent(Component, bIsManaged) end
---@param Actor AActor
---@param bIsManaged boolean
function AMasterTickThrottlerSingleton:IsManagedActor(Actor, bIsManaged) end
---@param Component UActorComponent
---@param bIsThrottled boolean
function AMasterTickThrottlerSingleton:IsComponentThrottled(Component, bIsThrottled) end
---@param Actor AActor
---@param bIsThrottled boolean
function AMasterTickThrottlerSingleton:IsActorThrottled(Actor, bIsThrottled) end
---@param Component UActorComponent
---@param bEnable boolean
function AMasterTickThrottlerSingleton:EnableComponentThrottling(Component, bEnable) end
---@param Actor AActor
---@param bEnable boolean
function AMasterTickThrottlerSingleton:EnableActorThrottling(Actor, bEnable) end
---@param Component UActorComponent
function AMasterTickThrottlerSingleton:DisableComponentThrottling(Component) end
---@param Actor AActor
function AMasterTickThrottlerSingleton:DisableActorThrottling(Actor) end
---@param Component UActorComponent
---@param Settings FMasterTickThrottlerSettings
function AMasterTickThrottlerSingleton:AddManagedComponent(Component, Settings) end
---@param Actor AActor
---@param Settings FMasterTickThrottlerSettings
function AMasterTickThrottlerSingleton:AddManagedActor(Actor, Settings) end


---@class FMasterTickThrottlerSettings
---@field FullTickRadiusMeters float
---@field FullTickInterval float
---@field NoTickRadiusMeters float
---@field NoTickInterval float
---@field KeepAliveInterval float
---@field ComparisonComponent USceneComponent
---@field Advanced FMasterTickThrottlerSettingsAdvanced
local FMasterTickThrottlerSettings = {}



---@class FMasterTickThrottlerSettingsAdvanced
---@field bUseXYDistance boolean
---@field bResponsiveIntervalChanges boolean
---@field bThrottleInEditor boolean
local FMasterTickThrottlerSettingsAdvanced = {}



---@class FMasterTickThrottlerTracker
---@field Settings FMasterTickThrottlerSettings
---@field LastKeepAlive FDateTime
---@field bDisableThrottling boolean
---@field bHasKeepAliveInterface boolean
local FMasterTickThrottlerTracker = {}



---@class IInterface_TickThrottlerKeepAlive : IInterface
local IInterface_TickThrottlerKeepAlive = {}

---@param DistanceSquaredToCamera float
function IInterface_TickThrottlerKeepAlive:TickThrottler_WakeUp(DistanceSquaredToCamera) end
---@param DeltaTime float
---@param DistanceSquaredToCamera float
function IInterface_TickThrottlerKeepAlive:TickThrottler_KeepAlive(DeltaTime, DistanceSquaredToCamera) end
---@param DistanceSquaredToCamera float
function IInterface_TickThrottlerKeepAlive:TickThrottler_GoToSleep(DistanceSquaredToCamera) end


---@class UMasterTickThrottlerSingletonEditorUpdate : UActorComponent
local UMasterTickThrottlerSingletonEditorUpdate = {}


