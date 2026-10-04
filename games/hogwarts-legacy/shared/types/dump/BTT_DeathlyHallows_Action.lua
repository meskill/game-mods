---@meta

---@class UBTT_DeathlyHallows_Action_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EmitterComponent UParticleSystemComponent
---@field VariantMapHandle FVariantMapHandle
---@field InteractActor ABP_DH_Item_C
---@field ItemType FName
---@field PropActor ABP_Cloak_Prop_C
local UBTT_DeathlyHallows_Action_C = {}

function UBTT_DeathlyHallows_Action_C:UseCloak() end
function UBTT_DeathlyHallows_Action_C:EquipCloak() end
function UBTT_DeathlyHallows_Action_C:EquipWand() end
function UBTT_DeathlyHallows_Action_C:EquipStone() end
function UBTT_DeathlyHallows_Action_C:SetInteractActor() end
function UBTT_DeathlyHallows_Action_C:DeathlyHallowsSetup() end
---@param Flag boolean
function UBTT_DeathlyHallows_Action_C:SetContexts(Flag) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_DeathlyHallows_Action_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_DeathlyHallows_Action_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_DeathlyHallows_Action_C:CustActionEvt_BeginInteract_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_DeathlyHallows_Action_C:CustActionEvt_FireWand_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_DeathlyHallows_Action_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_DeathlyHallows_Action_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_DeathlyHallows_Action_C:ExecuteUbergraph_BTT_DeathlyHallows_Action(EntryPoint) end


