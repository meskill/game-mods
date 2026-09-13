---@meta

---@class UBP_AddRotation_C : UCameraStackBehaviorBlend
---@field RotationDelta FRotator
local UBP_AddRotation_C = {}

---@return boolean
function UBP_AddRotation_C:OnActivateEvent() end
---@return FString
function UBP_AddRotation_C:OnGetDebugStatsEvent() end
---@param DeltaSeconds float
---@return boolean
function UBP_AddRotation_C:OnUpdateEvent(DeltaSeconds) end
---@param CameraData FCameraData
---@return boolean
function UBP_AddRotation_C:OnWriteCameraDataEvent(CameraData) end


