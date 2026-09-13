---@meta

---@class UFL_PhoenixCameraBPLibrary_C : UBlueprintFunctionLibrary
local UFL_PhoenixCameraBPLibrary_C = {}

---@param TargetActor AActor
---@param Duration float
---@param __WorldContext UObject
function UFL_PhoenixCameraBPLibrary_C:CameraSmoothOutDetachPop(TargetActor, Duration, __WorldContext) end
---@param TargetActor AActor
---@param Duration float
---@param __WorldContext UObject
function UFL_PhoenixCameraBPLibrary_C:CameraSmoothOutTeleport(TargetActor, Duration, __WorldContext) end
---@param TargetActor AActor
---@param Behavior UCameraStackBehavior
---@param BlendOutDuration float
---@param __WorldContext UObject
function UFL_PhoenixCameraBPLibrary_C:CameraRemoveBehavior(TargetActor, Behavior, BlendOutDuration, __WorldContext) end
---@param TargetActor AActor
---@param TargetWorldLocation FVector
---@param TimeUntilTeleport float
---@param __WorldContext UObject
---@param Behavior UCameraStackBehavior
function UFL_PhoenixCameraBPLibrary_C:CameraMoveToFutureTeleportLocation(TargetActor, TargetWorldLocation, TimeUntilTeleport, __WorldContext, Behavior) end


