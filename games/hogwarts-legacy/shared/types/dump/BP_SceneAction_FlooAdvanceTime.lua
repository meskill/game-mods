---@meta

---@class UBP_SceneAction_FlooAdvanceTime_C : USceneAction_Blueprint
---@field UberGraphFrame FPointerToUberGraphFrame
local UBP_SceneAction_FlooAdvanceTime_C = {}

function UBP_SceneAction_FlooAdvanceTime_C:AdvanceTime() end
---@return boolean
function UBP_SceneAction_FlooAdvanceTime_C:IsInstant() end
---@param Time float
---@param IsScrubbing boolean
function UBP_SceneAction_FlooAdvanceTime_C:OnInstant(Time, IsScrubbing) end
---@param EntryPoint int32
function UBP_SceneAction_FlooAdvanceTime_C:ExecuteUbergraph_BP_SceneAction_FlooAdvanceTime(EntryPoint) end


