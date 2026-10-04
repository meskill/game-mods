---@meta

---@class UUI_BP_GenericPopupScreen_C : UPopupScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Modal_Intro UWidgetAnimation
---@field Modal_Outro UWidgetAnimation
---@field PleaseWaitSection UHorizontalBox
---@field Popup UCanvasPanel
---@field popupBody UPhoenixRichTextBlock
---@field PopupLegend UUI_BP_Legend_Horizontal_Tooltip_C
---@field PopupTitle UPhoenixTextBlock
---@field TooltipContentContainer UVerticalBox
---@field CompletionActions TArray<FInputActionHoldInfo>
---@field CachedLegendItems TArray<ULegendItem>
---@field PopupHoldButtonPressStart FUI_BP_GenericPopupScreen_CPopupHoldButtonPressStart
local UUI_BP_GenericPopupScreen_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_GenericPopupScreen_C:GatherMenuReaderStrings(DepthLevel) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_GenericPopupScreen_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param IsDesignTime boolean
function UUI_BP_GenericPopupScreen_C:PreConstruct(IsDesignTime) end
---@param TitleString FString
function UUI_BP_GenericPopupScreen_C:SetPopupTitle(TitleString) end
---@param DescriptionString FString
---@param isTranslated boolean
function UUI_BP_GenericPopupScreen_C:SetPopupDescription(DescriptionString, isTranslated) end
---@param LegendItems TArray<FLegendItemData>
function UUI_BP_GenericPopupScreen_C:SetPopupLegendItems(LegendItems) end
---@param CompletionActions TArray<FInputActionHoldInfo>
function UUI_BP_GenericPopupScreen_C:SetPopupCompletionActions(CompletionActions) end
---@param bUsesWaitIndicator boolean
function UUI_BP_GenericPopupScreen_C:SetPopupUsesWaitIndicator(bUsesWaitIndicator) end
---@param ContentWidget UUserWidget
function UUI_BP_GenericPopupScreen_C:SetPopupContentWidget(ContentWidget) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_GenericPopupScreen_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_GenericPopupScreen_C:OnOutroStarted(OutroType, OutroDuration) end
---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_GenericPopupScreen_C:CompletionButtonReleased(LegendItem, HoldWasCompleted) end
---@param IntroType int32
function UUI_BP_GenericPopupScreen_C:OnIntroEnded(IntroType) end
---@param LegendItem ULegendItem
function UUI_BP_GenericPopupScreen_C:OnHoldButtonPressStart(LegendItem) end
---@param EntryPoint int32
function UUI_BP_GenericPopupScreen_C:ExecuteUbergraph_UI_BP_GenericPopupScreen(EntryPoint) end
---@param ButtonIndex int32
function UUI_BP_GenericPopupScreen_C:PopupHoldButtonPressStart__DelegateSignature(ButtonIndex) end


