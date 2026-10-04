---@meta

---@class UBTT_AttackDone_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ElapsedTime float
---@field Timeout float
local UBTT_AttackDone_C = {}

---@param OwnerActor AActor
function UBTT_AttackDone_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_AttackDone_C:ExecuteUbergraph_BTT_AttackDone(EntryPoint) end


