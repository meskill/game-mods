---@meta

---@class UBTT_GameChangerWait_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnemyAIComponent UEnemyAIComponent
local UBTT_GameChangerWait_C = {}

---@param OwnerActor AActor
function UBTT_GameChangerWait_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_GameChangerWait_C:ReceiveAbort(OwnerActor) end
---@param EntryPoint int32
function UBTT_GameChangerWait_C:ExecuteUbergraph_BTT_GameChangerWait(EntryPoint) end


