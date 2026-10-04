---@meta

---@class UBTT_Biped_Reaction_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BoneName FName
---@field ImpactPoint FVector
---@field isAnimComplete boolean
---@field TraceDirection FVector
---@field ReactionAbility TSubclassOf<UAblAbility>
---@field ImpactInstigator AActor
---@field LeftBreakoutEnabled boolean
---@field RightBreakoutEnabled boolean
---@field TopBreakoutEnabled boolean
---@field BottomBreakoutEnabled boolean
---@field ReactionStartTime float
---@field MaxTimeReactingInWater float
---@field ['World Direction'] FVector
---@field StickMoved boolean
---@field InCCMiniGame boolean
---@field AllowLeftStick boolean
---@field BreakoutSet boolean
---@field ReactionStartHeight float
---@field OnButtslideSurface boolean
local UBTT_Biped_Reaction_C = {}

---@param BipedPlayer ABiped_Player
function UBTT_Biped_Reaction_C:SetAutoTargetDirection(BipedPlayer) end
---@param Flag boolean
function UBTT_Biped_Reaction_C:SetContexts(Flag) end
---@param Owner AActor
function UBTT_Biped_Reaction_C:RetrieveValuesFromBlackboard(Owner) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_6(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:CustActionEvt_Landed_K2Node_BTCustomActionEvent_5(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:CustActionEvt_SurfaceTypeChanged_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:CustActionEvt_AllowBreakout_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Bottom_K2Node_CustomInputActionEvent_15(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Bottom_K2Node_CustomInputActionEvent_14(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Left_K2Node_CustomInputActionEvent_13(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Left_K2Node_CustomInputActionEvent_12(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Right_K2Node_CustomInputActionEvent_11(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Right_K2Node_CustomInputActionEvent_10(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Top_K2Node_CustomInputActionEvent_9(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Top_K2Node_CustomInputActionEvent_8(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Bottom_K2Node_CustomInputActionEvent_7(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Bottom_K2Node_CustomInputActionEvent_6(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Left_K2Node_CustomInputActionEvent_5(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Left_K2Node_CustomInputActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Right_K2Node_CustomInputActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Right_K2Node_CustomInputActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Top_K2Node_CustomInputActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:InpActEvt_Breakout_Top_K2Node_CustomInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:CustActionEvt_TurnOffBreakout_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:CustActionEvt_KnockedDown_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Reaction_C:CustActionEvt_RagdollExit_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_Reaction_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_Reaction_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_Reaction_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_Biped_Reaction_C:ExecuteUbergraph_BTT_Biped_Reaction(EntryPoint) end


