---@meta

---@class UBP_ConversationMenuAction_C : USceneAction_Blueprint
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OptionPanel UUI_BP_OptionPanel_C
---@field OwningActor AActor
---@field DialogueSequence FDialogueSequenceReference
---@field BranchIDs TArray<FName>
---@field IsCancellable boolean
---@field OwningSRPlayer UTimeRigPlayer
---@field TranslatedLastLine FString
---@field OptionCount int32
local UBP_ConversationMenuAction_C = {}

function UBP_ConversationMenuAction_C:RemoveAllSubtitles() end
---@param Caller UObject
---@param OutReference FDialogueSequenceReference
function UBP_ConversationMenuAction_C:GetDialogueSequenceReference(Caller, OutReference) end
---@param Caller UObject
---@param outConversationOptions TArray<FConversationOption>
---@param OutBranchIDs TArray<FName>
---@param LastLineID FName
function UBP_ConversationMenuAction_C:CreateConversationOptions(Caller, outConversationOptions, OutBranchIDs, LastLineID) end
---@return FLinearColor
function UBP_ConversationMenuAction_C:GetActionColor() end
---@return boolean
function UBP_ConversationMenuAction_C:IsProxyRequiredBP() end
---@param VariantMapHandle FVariantMapHandle
function UBP_ConversationMenuAction_C:InpActEvt_UMGSkipCinematicOrConversation_K2Node_CustomInputActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBP_ConversationMenuAction_C:InpActEvt_UMGSkipCinematicOrConversation_K2Node_CustomInputActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBP_ConversationMenuAction_C:InpActEvt_UMGSkipCinematicOrConversation_K2Node_CustomInputActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBP_ConversationMenuAction_C:InpActEvt_UMGSkipCinematicOrConversation_K2Node_CustomInputActionEvent_0(VariantMapHandle) end
---@param ActionState UObject
function UBP_ConversationMenuAction_C:OnCreate(ActionState) end
---@param OptionIndex int32
function UBP_ConversationMenuAction_C:OnOptionSelected(OptionIndex) end
function UBP_ConversationMenuAction_C:OnMenuCancelled() end
---@param Time float
---@param cancelled boolean
---@param IsScrubbing boolean
function UBP_ConversationMenuAction_C:OnExitInterval(Time, cancelled, IsScrubbing) end
---@param Time float
---@param IsScrubbing boolean
function UBP_ConversationMenuAction_C:OnEnterInterval(Time, IsScrubbing) end
---@param EntryPoint int32
function UBP_ConversationMenuAction_C:ExecuteUbergraph_BP_ConversationMenuAction(EntryPoint) end


