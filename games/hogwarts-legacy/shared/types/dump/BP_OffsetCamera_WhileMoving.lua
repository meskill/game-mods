---@meta

---@class UBP_OffsetCamera_WhileMoving_C : UCameraStackBehaviorAddCameraSpaceTranslation
---@field UberGraphFrame FPointerToUberGraphFrame
---@field IsMoving boolean
---@field CameraOffset FVector
---@field OffsetWhileMoving FVector
---@field OffsetWhileStill FVector
---@field InterpSpeedStopping float
---@field InterpSpeedMoving float
---@field DeltaSeconds float
local UBP_OffsetCamera_WhileMoving_C = {}

---@return boolean
function UBP_OffsetCamera_WhileMoving_C:OnActivateEvent() end
---@return FString
function UBP_OffsetCamera_WhileMoving_C:OnGetDebugStatsEvent() end
---@param DeltaSeconds float
---@return boolean
function UBP_OffsetCamera_WhileMoving_C:OnUpdateEvent(DeltaSeconds) end
---@param CameraData FCameraData
---@return boolean
function UBP_OffsetCamera_WhileMoving_C:OnWriteCameraDataEvent(CameraData) end
---@param EntryPoint int32
function UBP_OffsetCamera_WhileMoving_C:ExecuteUbergraph_BP_OffsetCamera_WhileMoving(EntryPoint) end


