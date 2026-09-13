---@meta

---@class UBTS_Biped_MoveAndIdle_C : UBTService_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StationInteractionInitiated boolean
---@field interactionActor AActor
---@field StationData FStationQueryData
---@field Stealing boolean
---@field SceneRigToUse USceneRig
---@field IsCrawling boolean
---@field PartialBodyReactionPlaying boolean
---@field StickPressed boolean
local UBTS_Biped_MoveAndIdle_C = {}

function UBTS_Biped_MoveAndIdle_C:AbortTask() end
---@param ScreenToAdd UUserWidget
function UBTS_Biped_MoveAndIdle_C:AddWidgetToScreen(ScreenToAdd) end
---@param Object UObject
---@param Selection FName
function UBTS_Biped_MoveAndIdle_C:PlayPartialBodyReaction(Object, Selection) end
function UBTS_Biped_MoveAndIdle_C:InteractInitiated_Station() end
function UBTS_Biped_MoveAndIdle_C:InteractCanceled_Station() end
function UBTS_Biped_MoveAndIdle_C:Interact_Station() end
function UBTS_Biped_MoveAndIdle_C:GainKnowledge() end
function UBTS_Biped_MoveAndIdle_C:CleanupStation() end
---@param Redirected boolean
function UBTS_Biped_MoveAndIdle_C:IsStrafing(Redirected) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_MoveAndIdle_C:CustActionEvt_AncientMagicDetect_K2Node_BTCustomActionEvent_6(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_MoveAndIdle_C:CustActionEvt_SpellMadeContact_K2Node_BTCustomActionEvent_5(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_MoveAndIdle_C:InpActEvt_InteractButton_K2Node_CustomInputActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_MoveAndIdle_C:CustActionEvt_PartialBodyReaction_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_MoveAndIdle_C:InpActEvt_InteractButton_K2Node_CustomInputActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_MoveAndIdle_C:CustActionEvt_AnimCompletePartial_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_MoveAndIdle_C:CustActionEvt_OpenDoorLeft_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_MoveAndIdle_C:CustActionEvt_OpenDoorRight_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_MoveAndIdle_C:InpActEvt_UMGPauseMenu_K2Node_CustomInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_MoveAndIdle_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_MoveAndIdle_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_MoveAndIdle_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_MoveAndIdle_C:CustActionEvt_CastFailAnimStarted_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTS_Biped_MoveAndIdle_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTS_Biped_MoveAndIdle_C:ServiceEnd(OwnerActor) end
---@param Caller UObject
function UBTS_Biped_MoveAndIdle_C:StationStoryEnded(Caller) end
---@param Caller UObject
---@param String FName
function UBTS_Biped_MoveAndIdle_C:PartialBodyReaction(Caller, String) end
---@param OwnerActor AActor
function UBTS_Biped_MoveAndIdle_C:ServiceBegin(OwnerActor) end
---@param Caller UObject
function UBTS_Biped_MoveAndIdle_C:MountCreature_DismountEnd(Caller) end
---@param EntryPoint int32
function UBTS_Biped_MoveAndIdle_C:ExecuteUbergraph_BTS_Biped_MoveAndIdle(EntryPoint) end


