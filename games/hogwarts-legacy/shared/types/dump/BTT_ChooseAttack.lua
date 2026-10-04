---@meta

---@class UBTT_ChooseAttack_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_ChooseAttack_C = {}

---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_ChooseAttack_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_ChooseAttack_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_ChooseAttack_C:ExecuteUbergraph_BTT_ChooseAttack(EntryPoint) end


