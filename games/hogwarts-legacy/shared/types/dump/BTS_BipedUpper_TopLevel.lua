---@meta

---@class UBTS_BipedUpper_TopLevel_C : UBTService_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurrentFiringSpell ALumosSpellTool
---@field LumosTimerHandle FTimerHandle
local UBTS_BipedUpper_TopLevel_C = {}

UBTS_BipedUpper_TopLevel_C['Flush Queued Actions'] = function(self, ) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_TopLevel_C:CustActionEvt_EquipBucket_K2Node_BTCustomActionEvent_12(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_TopLevel_C:CustActionEvt_SpellButtonPartial_K2Node_BTCustomActionEvent_11(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_TopLevel_C:CustActionEvt_SpellButtonPartial_K2Node_BTCustomActionEvent_10(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_TopLevel_C:CustActionEvt_SpellButtonPartial_K2Node_BTCustomActionEvent_9(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_TopLevel_C:CustActionEvt_TriggerWaving_K2Node_BTCustomActionEvent_8(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_TopLevel_C:CustActionEvt_UseInventoryItemUpper_K2Node_BTCustomActionEvent_7(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_TopLevel_C:CustActionEvt_PerformCallOut_K2Node_BTCustomActionEvent_6(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_TopLevel_C:CustActionEvt_Lumos_K2Node_BTCustomActionEvent_5(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_TopLevel_C:CustActionEvt_Lumos_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_TopLevel_C:CustActionEvt_Lumos_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_TopLevel_C:CustActionEvt_OpenDoorLeftUpper_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_TopLevel_C:CustActionEvt_OpenDoorRightUpper_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_TopLevel_C:CustActionEvt_Looting_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTS_BipedUpper_TopLevel_C:ServiceBegin(OwnerActor) end
---@param OwnerActor AActor
function UBTS_BipedUpper_TopLevel_C:ServiceEnd(OwnerActor) end
---@param Caller UObject
function UBTS_BipedUpper_TopLevel_C:InTwoHandCarry(Caller) end
---@param Caller UObject
function UBTS_BipedUpper_TopLevel_C:DoneWaving(Caller) end
function UBTS_BipedUpper_TopLevel_C:FireLumos() end
---@param EntryPoint int32
function UBTS_BipedUpper_TopLevel_C:ExecuteUbergraph_BTS_BipedUpper_TopLevel(EntryPoint) end


