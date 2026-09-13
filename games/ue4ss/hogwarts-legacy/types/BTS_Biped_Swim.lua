---@meta

---@class UBTS_Biped_Swim_C : UBTService_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TargetTransform FTransform
---@field RiseDelay float
---@field MovementModeChangedHandle FHermesBPDelegateHandle
local UBTS_Biped_Swim_C = {}

function UBTS_Biped_Swim_C:PlaySwimAbility() end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_Swim_C:CustActionEvt_SpellButton_K2Node_BTCustomActionEvent_5(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_Swim_C:CustActionEvt_SwimDive_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_Swim_C:CustActionEvt_Teleport_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_Swim_C:CustActionEvt_Protego_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_Swim_C:CustActionEvt_ProtegoParry_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_Swim_C:CustActionEvt_SurfaceTypeChanged_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param Caller UObject
function UBTS_Biped_Swim_C:MovementModeChanged(Caller) end
---@param OwnerActor AActor
function UBTS_Biped_Swim_C:ServiceEnd(OwnerActor) end
function UBTS_Biped_Swim_C:LeafNodeSwitched() end
---@param OwnerActor AActor
function UBTS_Biped_Swim_C:ServiceBegin(OwnerActor) end
---@param EntryPoint int32
function UBTS_Biped_Swim_C:ExecuteUbergraph_BTS_Biped_Swim(EntryPoint) end


