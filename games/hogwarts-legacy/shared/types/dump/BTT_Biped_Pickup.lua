---@meta

---@class UBTT_Biped_Pickup_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PickupTarget AActor
---@field PickupTargetLocation FVector
---@field WandDownHandle FHermesBPDelegateHandle
local UBTT_Biped_Pickup_C = {}

function UBTT_Biped_Pickup_C:NotifyCollected() end
---@return boolean
function UBTT_Biped_Pickup_C:IsCrouching() end
function UBTT_Biped_Pickup_C:SwitchBehavior() end
---@return boolean
function UBTT_Biped_Pickup_C:IsRidingCreature() end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Pickup_C:CustActionEvt_AnimCompletePartial_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param Caller UObject
function UBTT_Biped_Pickup_C:WandDown(Caller) end
---@param OwnerActor AActor
function UBTT_Biped_Pickup_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_Pickup_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_Pickup_C:ExecuteUbergraph_BTT_Biped_Pickup(EntryPoint) end


