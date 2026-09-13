---@meta

---@class UBTT_Biped_AncientMagic_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RestoreIKState boolean
---@field AncientMagicActor AAncientMagicHotSpot
local UBTT_Biped_AncientMagic_C = {}

---@param Flag boolean
function UBTT_Biped_AncientMagic_C:SetContexts(Flag) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_AncientMagic_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_AncientMagic_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_AncientMagic_C:CustActionEvt_FireWand_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_AncientMagic_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_AncientMagic_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_AncientMagic_C:ExecuteUbergraph_BTT_Biped_AncientMagic(EntryPoint) end


