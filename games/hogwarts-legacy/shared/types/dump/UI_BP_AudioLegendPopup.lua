---@meta

---@class UUI_BP_AudioLegendPopup_C : UPopupScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Modal_Intro UWidgetAnimation
---@field Modal_Outro UWidgetAnimation
---@field LegendBackButton UButton
---@field PleaseWaitSection UHorizontalBox
---@field Popup UCanvasPanel
---@field popupBody UPhoenixRichTextBlock
---@field PopupLegend UUI_BP_Legend_Horizontal_Tooltip_C
---@field PopupTitle UPhoenixTextBlock
---@field TooltipContentContainer UVerticalBox
---@field TooltipContentContainer_1 UVerticalBox
---@field UI_BP_AudioLegendTooltipContent_1 UUI_BP_AudioLegendTooltipContent_C
---@field UI_BP_AudioLegendTooltipContent_2 UUI_BP_AudioLegendTooltipContent_C
---@field UI_BP_AudioLegendTooltipContent_3 UUI_BP_AudioLegendTooltipContent_C
---@field UI_BP_AudioLegendTooltipContent_4 UUI_BP_AudioLegendTooltipContent_C
---@field UI_BP_AudioLegendTooltipContent_5 UUI_BP_AudioLegendTooltipContent_C
---@field UI_BP_AudioLegendTooltipContent_6 UUI_BP_AudioLegendTooltipContent_C
---@field UI_BP_AudioLegendTooltipContent_7 UUI_BP_AudioLegendTooltipContent_C
---@field UI_BP_AudioLegendTooltipContent_8 UUI_BP_AudioLegendTooltipContent_C
---@field UI_BP_AudioLegendTooltipContent_9 UUI_BP_AudioLegendTooltipContent_C
---@field UI_BP_AudioLegendTooltipContent_10 UUI_BP_AudioLegendTooltipContent_C
---@field UI_BP_AudioLegendTooltipContent_11 UUI_BP_AudioLegendTooltipContent_C
---@field UI_BP_AudioLegendTooltipContent_12 UUI_BP_AudioLegendTooltipContent_C
---@field UI_BP_AudioLegendTooltipContent_13 UUI_BP_AudioLegendTooltipContent_C
---@field UI_BP_AudioLegendTooltipContent_14 UUI_BP_AudioLegendTooltipContent_C
---@field CompletionActions TArray<FInputActionHoldInfo>
---@field CachedLegendItems TArray<ULegendItem>
local UUI_BP_AudioLegendPopup_C = {}

function UUI_BP_AudioLegendPopup_C:SequenceEvent__ENTRYPOINTUI_BP_AudioLegendPopup_0() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_AudioLegendPopup_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_AudioLegendPopup_C:HidePopup() end
function UUI_BP_AudioLegendPopup_C:ShowPopup() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_AudioLegendPopup_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_AudioLegendPopup_C:OnOutroStarted(OutroType, OutroDuration) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_AudioLegendPopup_C:OnIntroStarted(IntroType, IntroDuration) end
---@param ContentWidget UUserWidget
function UUI_BP_AudioLegendPopup_C:SetPopupContentWidget(ContentWidget) end
---@param bUsesWaitIndicator boolean
function UUI_BP_AudioLegendPopup_C:SetPopupUsesWaitIndicator(bUsesWaitIndicator) end
---@param CompletionActions TArray<FInputActionHoldInfo>
function UUI_BP_AudioLegendPopup_C:SetPopupCompletionActions(CompletionActions) end
---@param LegendItems TArray<FLegendItemData>
function UUI_BP_AudioLegendPopup_C:SetPopupLegendItems(LegendItems) end
---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_AudioLegendPopup_C:CompletionButtonReleased(LegendItem, HoldWasCompleted) end
---@param DescriptionString FString
---@param isTranslated boolean
function UUI_BP_AudioLegendPopup_C:SetPopupDescription(DescriptionString, isTranslated) end
---@param TitleString FString
function UUI_BP_AudioLegendPopup_C:SetPopupTitle(TitleString) end
function UUI_BP_AudioLegendPopup_C:Construct() end
---@param IsDesignTime boolean
function UUI_BP_AudioLegendPopup_C:PreConstruct(IsDesignTime) end
function UUI_BP_AudioLegendPopup_C:CollapseAudioLegend() end
function UUI_BP_AudioLegendPopup_C:BndEvt__UI_BP_AudioLegendPopup_LegendBackButton_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_AudioLegendPopup_C:ExecuteUbergraph_UI_BP_AudioLegendPopup(EntryPoint) end


