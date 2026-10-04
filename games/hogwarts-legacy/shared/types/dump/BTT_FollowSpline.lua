---@meta

---@class UBTT_FollowSpline_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MaxTime float
---@field ElapsedTime float
---@field PathNodeLocKeyName FName
---@field PathNodeRadiusKeyName FName
---@field Started boolean
local UBTT_FollowSpline_C = {}

---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_FollowSpline_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_FollowSpline_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_FollowSpline_C:ExecuteUbergraph_BTT_FollowSpline(EntryPoint) end


