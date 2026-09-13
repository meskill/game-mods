---@meta

---@class UBP_AN_NamedEvent_C : UAnimNotify
---@field Name FName
local UBP_AN_NamedEvent_C = {}

---@return FString
function UBP_AN_NamedEvent_C:GetNotifyName() end
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@return boolean
function UBP_AN_NamedEvent_C:Received_Notify(MeshComp, Animation) end


