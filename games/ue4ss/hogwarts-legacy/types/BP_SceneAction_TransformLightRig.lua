---@meta

---@class UBP_SceneAction_TransformLightRig_C : USceneAction_Blueprint
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RigVisible UBoolProvider
local UBP_SceneAction_TransformLightRig_C = {}

---@param Result boolean
function UBP_SceneAction_TransformLightRig_C:IsRigVisible(Result) end
---@param Actor AActor
---@param ActorList TArray<AActor>
---@param Result TArray<AActor>
function UBP_SceneAction_TransformLightRig_C:GetActorListRecursive(Actor, ActorList, Result) end
---@param HideActor boolean
function UBP_SceneAction_TransformLightRig_C:HideLightRig(HideActor) end
---@return boolean
function UBP_SceneAction_TransformLightRig_C:HasPostActorTick() end
---@return boolean
function UBP_SceneAction_TransformLightRig_C:HasNormalTick() end
---@return float
function UBP_SceneAction_TransformLightRig_C:GetSortOrderPostActorTick() end
---@return float
function UBP_SceneAction_TransformLightRig_C:GetSortOrder() end
---@param Time float
---@param IsScrubbing boolean
function UBP_SceneAction_TransformLightRig_C:OnEnterInterval(Time, IsScrubbing) end
---@param Time float
---@param cancelled boolean
---@param IsScrubbing boolean
function UBP_SceneAction_TransformLightRig_C:OnExitInterval(Time, cancelled, IsScrubbing) end
---@param Time float
---@param LocalTime float
---@param IsScrubbing boolean
function UBP_SceneAction_TransformLightRig_C:OnSetTimeInsideInterval(Time, LocalTime, IsScrubbing) end
---@param ActionState UObject
function UBP_SceneAction_TransformLightRig_C:OnCreate(ActionState) end
---@param EntryPoint int32
function UBP_SceneAction_TransformLightRig_C:ExecuteUbergraph_BP_SceneAction_TransformLightRig(EntryPoint) end


