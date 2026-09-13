---@meta

---@class UBTT_Biped_Talk_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StartConversation FBTT_Biped_Talk_CStartConversation
---@field ['Interaction Target'] AActor
---@field ['Panel Reference'] UUI_BP_OptionPanel_C
---@field ButtonClicked FBTT_Biped_Talk_CButtonClicked
---@field Button_Array TArray<UUI_BP_InteractButton_C>
---@field ['Player_Actor Reference'] AActor
---@field Interaction_Event FBTT_Biped_Talk_CInteraction_Event
---@field Continue boolean
---@field Start_Mission_Conversation FBTT_Biped_Talk_CStart_Mission_Conversation
---@field Mission_ConversationID FString
---@field MissionMenuNodeID int32
---@field UI_Manager UUIManager
---@field TargetActorDBId FName
---@field MissionTextCount int32
---@field Conversation_Flags uint8
---@field Blackboard UBlackboardComponent
---@field RadiantHandle FHermesBPDelegateHandle
---@field RadiantMission boolean
---@field VendorWidget UUI_BP_Vendor_C
---@field PassiveSceneRig boolean
---@field Conversation_SceneRig USceneRigPlayer
---@field OnScreenWidget UUserWidget
---@field Conversation_Started boolean
---@field ConversationOptions TArray<FConversationOption>
---@field SceneRigUpdateMsgHandle FHermesBPDelegateHandle
---@field AudioConversationNames TArray<FString>
---@field CurrentlyExtorting boolean
---@field TopItemForSpeakingIntroLine FString
---@field Missions boolean
---@field PreviousConvSceneRig USceneRigPlayer
---@field AdditionalSpecifiedActors TArray<AActor>
---@field SocialReactor USocialReactor
---@field PlayerProxy AActor
---@field AudioConversations boolean
---@field AutomatedMode boolean
---@field SkipLineSocial boolean
---@field SkipConversationOptionsArray TArray<FString>
local UBTT_Biped_Talk_C = {}

function UBTT_Biped_Talk_C:AreConversationOptionsNeeded() end
---@param OptionText FString
---@return FString
UBTT_Biped_Talk_C['Player Gender Fixup'] = function(self, OptionText) end
function UBTT_Biped_Talk_C:TurnOnAbilities() end
function UBTT_Biped_Talk_C:TurnOffAbilties() end
---@param Player UObject
---@param ShowWand boolean
function UBTT_Biped_Talk_C:ShowWand(Player, ShowWand) end
---@param SRPlayerObjectRef UObject
function UBTT_Biped_Talk_C:HandleSceneRigStart(SRPlayerObjectRef) end
---@param PlayerPerception boolean
function UBTT_Biped_Talk_C:ActivatePlayerPerception(PlayerPerception) end
---@param SceneRigPlayer USceneRigPlayer
function UBTT_Biped_Talk_C:StopSceneRigIfPlaying(SceneRigPlayer) end
function UBTT_Biped_Talk_C:GetAudioConversationOptions() end
function UBTT_Biped_Talk_C:CleanupBlackboard() end
function UBTT_Biped_Talk_C:PrepareandStartConversation() end
---@param ScreenToAdd UUserWidget
function UBTT_Biped_Talk_C:AddWidgetToScreen(ScreenToAdd) end
---@param ConversationIcon EAvaAudioDialogueMenuItemType
---@param ChatPanelIcon UI_BP_InteractTypeEnum::Type
---@param ChatIcon boolean
---@param Icon FString
function UBTT_Biped_Talk_C:IconLookup(ConversationIcon, ChatPanelIcon, ChatIcon, Icon) end
---@param Conversation_SceneRig UObject
function UBTT_Biped_Talk_C:Y_CancelConversation_Setup(Conversation_SceneRig) end
---@param Caller UObject
---@param Message FString
---@param CurrentMission FString
function UBTT_Biped_Talk_C:HandleRadiantMissionInfo(Caller, Message, CurrentMission) end
function UBTT_Biped_Talk_C:HasMission() end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Talk_C:InpActEvt_UMGSkipCinematicOrConversation_K2Node_CustomInputActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Talk_C:InpActEvt_UMGSkipCinematicOrConversation_K2Node_CustomInputActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Talk_C:InpActEvt_UMGSkipCinematicOrConversation_K2Node_CustomInputActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Talk_C:InpActEvt_UMGSkipCinematicOrConversation_K2Node_CustomInputActionEvent_0(VariantMapHandle) end
function UBTT_Biped_Talk_C:CleanupUIState() end
---@param Selection UUI_BP_InteractButton_C
function UBTT_Biped_Talk_C:CompanionSelection(Selection) end
function UBTT_Biped_Talk_C:ShowVendorUI() end
---@param PreviewedGearID FString
function UBTT_Biped_Talk_C:StartGearPreview(PreviewedGearID) end
---@param PreviewedGearID FString
function UBTT_Biped_Talk_C:EndGearPreview(PreviewedGearID) end
function UBTT_Biped_Talk_C:VendorUIClosed() end
---@param OwnerActor AActor
function UBTT_Biped_Talk_C:ExitTask(OwnerActor) end
UBTT_Biped_Talk_C['Conversation Dialogue Line Complete'] = function(self, ) end
---@param SelectionIndex int32
function UBTT_Biped_Talk_C:SelectionMade(SelectionIndex) end
---@param OwnerActor AActor
function UBTT_Biped_Talk_C:ReceiveExecute(OwnerActor) end
---@param Caller UObject
---@param String FString
UBTT_Biped_Talk_C['Conversation_Node_Property:MSG_UI'] = function(self, Caller, String) end
function UBTT_Biped_Talk_C:AbortTask() end
---@param Caller UObject
function UBTT_Biped_Talk_C:AbortInteraction(Caller) end
---@param SelectedIndex int32
function UBTT_Biped_Talk_C:Interaction_ChoiceMade_Event(SelectedIndex) end
---@param Actor_Reference AActor
function UBTT_Biped_Talk_C:StartInteraction_Event(Actor_Reference) end
---@param IsCritical boolean
function UBTT_Biped_Talk_C:DeferStoppingPreviousSceneRig(IsCritical) end
---@param Caller UObject
function UBTT_Biped_Talk_C:FreePlayerFromSceneRig(Caller) end
function UBTT_Biped_Talk_C:OnStationInteractionExitComplete_Event_0() end
---@param Caller UObject
function UBTT_Biped_Talk_C:CONV_UpdateActiveSceneRig(Caller) end
---@param EntryPoint int32
function UBTT_Biped_Talk_C:ExecuteUbergraph_BTT_Biped_Talk(EntryPoint) end
function UBTT_Biped_Talk_C:Start_Mission_Conversation__DelegateSignature() end
---@param ClickedButton UUI_BP_InteractButton_C
function UBTT_Biped_Talk_C:Interaction_Event__DelegateSignature(ClickedButton) end
function UBTT_Biped_Talk_C:ButtonClicked__DelegateSignature() end
---@param Actor_Reference AActor
function UBTT_Biped_Talk_C:StartConversation__DelegateSignature(Actor_Reference) end


