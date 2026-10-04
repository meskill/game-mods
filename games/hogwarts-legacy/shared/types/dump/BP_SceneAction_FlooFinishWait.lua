---@meta

---@class UBP_SceneAction_FlooFinishWait_C : USceneAction_Blueprint
---@field UberGraphFrame FPointerToUberGraphFrame
local UBP_SceneAction_FlooFinishWait_C = {}

---@return boolean
function UBP_SceneAction_FlooFinishWait_C:IsInstant() end
---@param Time float
---@param IsScrubbing boolean
function UBP_SceneAction_FlooFinishWait_C:OnInstant(Time, IsScrubbing) end
---@param EntryPoint int32
function UBP_SceneAction_FlooFinishWait_C:ExecuteUbergraph_BP_SceneAction_FlooFinishWait(EntryPoint) end


