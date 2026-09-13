---@meta

---@class UBP_SetPitchRotation_C : UCameraStackBehaviorBlend
---@field PitchValue float
local UBP_SetPitchRotation_C = {}

---@return boolean
function UBP_SetPitchRotation_C:OnActivateEvent() end
---@return FString
function UBP_SetPitchRotation_C:OnGetDebugStatsEvent() end
---@param DeltaSeconds float
---@return boolean
function UBP_SetPitchRotation_C:OnUpdateEvent(DeltaSeconds) end
---@param CameraData FCameraData
---@return boolean
function UBP_SetPitchRotation_C:OnWriteCameraDataEvent(CameraData) end


