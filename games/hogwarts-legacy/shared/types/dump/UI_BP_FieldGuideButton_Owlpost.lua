---@meta

---@class UUI_BP_FieldGuideButton_Owlpost_C : UFieldGuideButton_OwlMail
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideHighlight UWidgetAnimation
---@field TutorialBounce UWidgetAnimation
---@field ShowHighlight UWidgetAnimation
---@field ButtonBackground UImage
---@field buttonImage UImage
---@field CategoryLabel UPhoenixTextBlock
---@field iconBorder UBorder
---@field LabelPanel UCanvasPanel
---@field Letter UImage
---@field lockedText UPhoenixTextBlock
---@field newIndicator UUI_BP_NewIndicator_C
---@field Root UHorizontalBox
---@field TutorialHighlight UBorder
---@field CategoryLabelText FString
---@field LabelPosition UI_E_FieldGuideLabelPositions::Type
---@field buttonIcon FString
---@field GearAnimationFrame float
local UUI_BP_FieldGuideButton_Owlpost_C = {}

function UUI_BP_FieldGuideButton_Owlpost_C:SequenceEvent__ENTRYPOINTUI_BP_FieldGuideButton_Owlpost_1() end
function UUI_BP_FieldGuideButton_Owlpost_C:SequenceEvent__ENTRYPOINTUI_BP_FieldGuideButton_Owlpost_0() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FieldGuideButton_Owlpost_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_FieldGuideButton_Owlpost_C:PauseButtonLoopAnimation() end
UUI_BP_FieldGuideButton_Owlpost_C['Play Button Loop Animation'] = function(self, ) end
function UUI_BP_FieldGuideButton_Owlpost_C:Construct() end
function UUI_BP_FieldGuideButton_Owlpost_C:BndEvt__iconButton_K2Node_ComponentBoundEvent_1_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_FieldGuideButton_Owlpost_C:BndEvt__iconButton_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_FieldGuideButton_Owlpost_C:BndEvt__iconButton_K2Node_ComponentBoundEvent_3_OnButtonHoverEvent__DelegateSignature() end
---@param InVisibility ESlateVisibility
function UUI_BP_FieldGuideButton_Owlpost_C:OnSetItemIndicatorVisibility(InVisibility) end
---@param IsLocked boolean
function UUI_BP_FieldGuideButton_Owlpost_C:SetLockedState(IsLocked) end
---@param IsDesignTime boolean
function UUI_BP_FieldGuideButton_Owlpost_C:PreConstruct(IsDesignTime) end
---@param bIsTutorialHighlighted boolean
function UUI_BP_FieldGuideButton_Owlpost_C:SetIsTutorialHighlighted(bIsTutorialHighlighted) end
---@param EntryPoint int32
function UUI_BP_FieldGuideButton_Owlpost_C:ExecuteUbergraph_UI_BP_FieldGuideButton_Owlpost(EntryPoint) end


