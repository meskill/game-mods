---@meta

---@class UBTT_WaitForAbility_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeout float
---@field Ability EEnemy_Ability
local UBTT_WaitForAbility_C = {}

---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_WaitForAbility_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_WaitForAbility_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_WaitForAbility_C:ExecuteUbergraph_BTT_WaitForAbility(EntryPoint) end


