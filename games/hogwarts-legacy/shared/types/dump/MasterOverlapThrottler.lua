---@meta

---@class AMasterOverlapThrottlerSingleton : AActor
---@field ThrottlePrimitiveComponents TMap<TWeakObjectPtr<UPrimitiveComponent>, FMasterOverlapThrottlerTracker>
local AMasterOverlapThrottlerSingleton = {}

---@param Component UPrimitiveComponent
function AMasterOverlapThrottlerSingleton:RemoveManagedPrimitiveComponent(Component) end
---@param Component UPrimitiveComponent
---@param bIsThrottled boolean
function AMasterOverlapThrottlerSingleton:IsPrimitiveComponentThrottled(Component, bIsThrottled) end
---@param Component UPrimitiveComponent
---@param bIsManaged boolean
function AMasterOverlapThrottlerSingleton:IsManagedPrimitiveComponent(Component, bIsManaged) end
---@param Component UPrimitiveComponent
---@param bEnable boolean
function AMasterOverlapThrottlerSingleton:EnablePrimitiveComponentThrottling(Component, bEnable) end
---@param Component UPrimitiveComponent
function AMasterOverlapThrottlerSingleton:DisablePrimitiveComponentThrottling(Component) end
---@param Component UPrimitiveComponent
---@param Settings FMasterOverlapThrottlerSettings
function AMasterOverlapThrottlerSingleton:AddManagedPrimitiveComponent(Component, Settings) end


---@class FMasterOverlapThrottlerSettings
---@field NoOverlapEventsRadiusMeters float
---@field ComparisonActor TWeakObjectPtr<AActor>
---@field bManageOverlapsEnabled boolean
---@field bManageCollisionEnabled boolean
---@field bPhysicsCollisionsEnabled boolean
local FMasterOverlapThrottlerSettings = {}



---@class FMasterOverlapThrottlerTracker
---@field Settings FMasterOverlapThrottlerSettings
---@field LastLocationComparisonActor FVector
---@field LastLocationPrimitveComponent FVector
---@field bDisableThrottling boolean
---@field OriginalCollisionType ECollisionEnabled::Type
local FMasterOverlapThrottlerTracker = {}



