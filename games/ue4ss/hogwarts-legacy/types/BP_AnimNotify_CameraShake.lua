---@meta

---@class UBP_AnimNotify_CameraShake_C : UAnimNotify
---@field CameraShake TSubclassOf<UMatineeCameraShake>
---@field Radius float
local UBP_AnimNotify_CameraShake_C = {}

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@return boolean
function UBP_AnimNotify_CameraShake_C:Received_Notify(MeshComp, Animation) end


