---@meta

---@class UBTT_FollowSplineInit_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MaxTime float
---@field ElapsedTime float
---@field PathNodeLocKeyName FName
---@field PathNodeRadiusKeyName FName
---@field StartTimer float
---@field Started boolean
local UBTT_FollowSplineInit_C = {}

---@param OwnerActor AActor
function UBTT_FollowSplineInit_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_FollowSplineInit_C:ExecuteUbergraph_BTT_FollowSplineInit(EntryPoint) end


