---@meta

---@class UBTT_PortToPort_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StartPortal AFastTravelPort
---@field EndPortal AFastTravelPort
---@field TeleportTimerHandle FTimerHandle
---@field TravelerTransformComponent USceneComponent
---@field Landed boolean
local UBTT_PortToPort_C = {}

---@param Flag boolean
function UBTT_PortToPort_C:SetContexts(Flag) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_PortToPort_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_PortToPort_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_PortToPort_C:CustActionEvt_FastTravelTeleport_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_PortToPort_C:CustActionEvt_AllowJumpLand_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_PortToPort_C:CustActionEvt_Landed_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_PortToPort_C:ExitTask(OwnerActor) end
function UBTT_PortToPort_C:DelayBeforeTeleportExpired() end
---@param OwnerActor AActor
function UBTT_PortToPort_C:ReceiveExecute(OwnerActor) end
---@param Caller UObject
function UBTT_PortToPort_C:MovementModeChanged(Caller) end
---@param EntryPoint int32
function UBTT_PortToPort_C:ExecuteUbergraph_BTT_PortToPort(EntryPoint) end


