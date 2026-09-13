---@meta

---@class UBTT_PerformAction_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Action EEnemyAIAction
---@field Timeout float
---@field ActionParams FNPC_ActionParams
---@field Actor AActor
---@field Loc FVector
---@field ForceReturn boolean
---@field ForcesReturnSuccess boolean
---@field TagContainer FGameplayTagContainer
local UBTT_PerformAction_C = {}

---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_PerformAction_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_PerformAction_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_PerformAction_C:ExecuteUbergraph_BTT_PerformAction(EntryPoint) end


