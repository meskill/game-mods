---@meta

---@class UUI_BP_OptionPanel_C : UScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BeginConversation UWidgetAnimation
---@field maximizeConversation UWidgetAnimation
---@field minimizeConversation UWidgetAnimation
---@field conversationBox UVerticalBox
---@field JustTheLegend UUI_BP_LegendItem_C
---@field lastLine UPhoenixRichTextBlock
---@field lastLineBorder UBorder
---@field optionsBorder UBorder
---@field optionsBox UHorizontalBox
---@field OptionsPanel UVerticalBox
---@field AbortInteraction FUI_BP_OptionPanel_CAbortInteraction
---@field Cleanup FUI_BP_OptionPanel_CCleanup
---@field AbortConversation FUI_BP_OptionPanel_CAbortConversation
---@field SelectionMade FUI_BP_OptionPanel_CSelectionMade
---@field UI_Placement UI_BP_UIPlacementEnum::Type
---@field BasicToolTip UUI_BP_BasicToolTipPopout_C
---@field CurrentIndex int32
---@field maxOptionIndex int32
---@field OptionsArray TArray<UUI_BP_InteractButton_C>
---@field Minimized boolean
---@field ButtonDown boolean
---@field SceneRigPlayer USceneRigPlayer
---@field BCancelAllowed boolean
---@field PreventMoreSelections boolean
---@field SkipDelay boolean
---@field ButtonSize FVector2D
---@field SubtitlePadding float
---@field SubtitlesEnabled boolean
---@field ShowDialogueLine boolean
---@field TargetActorName FName
---@field EmptyActions boolean
---@field CachedConversationOptions TArray<FConversationOption>
---@field RefreshButtonCalloutsHandle FHermesBPDelegateHandle
---@field LastSpeakerID FString
---@field AnimationPlaybackSpeed float
local UUI_BP_OptionPanel_C = {}

---@param OptionButton UUI_BP_InteractButton_C
function UUI_BP_OptionPanel_C:OnOptionButtonClicked(OptionButton) end
function UUI_BP_OptionPanel_C:AdjustConversationForViewportWidth() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_OptionPanel_C:GatherMenuReaderStrings(DepthLevel) end
---@param LastLineTextID FString
function UUI_BP_OptionPanel_C:SetLastLineTextWithSpeaker(LastLineTextID) end
function UUI_BP_OptionPanel_C:CalculateStartingCursorPos() end
---@param NewCurrentIndex int32
---@param OptionChanged boolean
function UUI_BP_OptionPanel_C:SetCurrentActiveOption(NewCurrentIndex, OptionChanged) end
---@param SelectedOption UUI_BP_InteractButton_C
function UUI_BP_OptionPanel_C:GetCurrentActiveOption(SelectedOption) end
---@param outExtraScreenStrings TArray<FString>
function UUI_BP_OptionPanel_C:GatherMastermindExtraScreenStrings(outExtraScreenStrings) end
---@param Character FName
function UUI_BP_OptionPanel_C:SetTargetName(Character) end
function UUI_BP_OptionPanel_C:ShowLine() end
---@param SubtitleData FAudioDialogueLineData
function UUI_BP_OptionPanel_C:TranslateSubtitleText(SubtitleData) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_OptionPanel_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param Button FString
---@param TranslatedButton FString
function UUI_BP_OptionPanel_C:Translate_Cleanup(Button, TranslatedButton) end
---@param Button FString
---@param Text FString
function UUI_BP_OptionPanel_C:InitializeButtonLegend(Button, Text) end
---@param DialogueMode boolean
function UUI_BP_OptionPanel_C:DialogueMode(DialogueMode) end
function UUI_BP_OptionPanel_C:Maximize() end
---@param NoAnim boolean
function UUI_BP_OptionPanel_C:Minimize(NoAnim) end
---@param Button UUI_BP_InteractButton_C
function UUI_BP_OptionPanel_C:OnOptionHovered(Button) end
---@param SelectedIndex int32
function UUI_BP_OptionPanel_C:OptionSelected(SelectedIndex) end
function UUI_BP_OptionPanel_C:PreviousOption() end
function UUI_BP_OptionPanel_C:NextOption() end
---@param OPTIONS TArray<FConversationOption>
---@param Button_Array TArray<UUI_BP_InteractButton_C>
function UUI_BP_OptionPanel_C:BuildOptions(OPTIONS, Button_Array) end
---@param Action FName
function UUI_BP_OptionPanel_C:OnActionHandler(Action) end
function UUI_BP_OptionPanel_C:Construct() end
function UUI_BP_OptionPanel_C:Destruct() end
function UUI_BP_OptionPanel_C:OptionsAnimationsFinished() end
function UUI_BP_OptionPanel_C:DelaySkipping() end
---@param Caller UObject
---@param AudioDialogueLineData FAudioDialogueLineData
function UUI_BP_OptionPanel_C:AudioDialogueLineStartedData(Caller, AudioDialogueLineData) end
function UUI_BP_OptionPanel_C:EmptyActionsEvent() end
function UUI_BP_OptionPanel_C:MinimizeAnimationFinished() end
function UUI_BP_OptionPanel_C:WidgetAnimationEvt_maximizeConversation_K2Node_WidgetAnimationEvent_0() end
---@param Caller UObject
function UUI_BP_OptionPanel_C:RefreshButtonCallouts(Caller) end
---@param EntryPoint int32
function UUI_BP_OptionPanel_C:ExecuteUbergraph_UI_BP_OptionPanel(EntryPoint) end
---@param OptionIndex int32
function UUI_BP_OptionPanel_C:SelectionMade__DelegateSignature(OptionIndex) end
function UUI_BP_OptionPanel_C:AbortConversation__DelegateSignature() end
---@param Selection int32
---@param Actor_Reference AActor
function UUI_BP_OptionPanel_C:Cleanup__DelegateSignature(Selection, Actor_Reference) end
function UUI_BP_OptionPanel_C:AbortInteraction__DelegateSignature() end


