---@meta

---@class UBTT_Biped_UseInventoryItem_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PotionName FString
---@field StickPressed boolean
---@field InventoryItemTool AInventoryItemTool
---@field MinUsageTimerHandle FTimerHandle
---@field AllowUsageEnd boolean
---@field UsageEndDesired boolean
---@field MaxUsageTimerHandle FTimerHandle
---@field Completed boolean
local UBTT_Biped_UseInventoryItem_C = {}

function UBTT_Biped_UseInventoryItem_C:EndUsage() end
---@param Flag boolean
function UBTT_Biped_UseInventoryItem_C:SetContexts(Flag) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_UseInventoryItem_C:CustActionEvt_ConsumeInventoryItem_K2Node_BTCustomActionEvent_6(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_UseInventoryItem_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_5(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_UseInventoryItem_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_UseInventoryItem_C:CustActionEvt_UseInventoryItem_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_UseInventoryItem_C:CustActionEvt_UseInventoryItem_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_UseInventoryItem_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_UseInventoryItem_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_UseInventoryItem_C:CustActionEvt_InventoryItemEvent_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_UseInventoryItem_C:CustActionEvt_DeathlyHallowsAction_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_UseInventoryItem_C:CustActionEvt_InventoryItemCharged_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_UseInventoryItem_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_UseInventoryItem_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_Biped_UseInventoryItem_C:ReceiveExecute(OwnerActor) end
function UBTT_Biped_UseInventoryItem_C:MinTimerExpired() end
function UBTT_Biped_UseInventoryItem_C:MaxTimerExpired() end
---@param EntryPoint int32
function UBTT_Biped_UseInventoryItem_C:ExecuteUbergraph_BTT_Biped_UseInventoryItem(EntryPoint) end


