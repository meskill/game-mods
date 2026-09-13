---@meta

---@class UUI_BP_InteractButton_C : UTextButtonWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field onHovered_Right UWidgetAnimation
---@field OnSelected UWidgetAnimation
---@field onUnselected UWidgetAnimation
---@field OnHovered UWidgetAnimation
---@field bottomBracket UScaleBox
---@field bottomBracketImage UPhoenixImage
---@field buttonShadow UImage
---@field disabledText UPhoenixTextBlock
---@field DisplayText UPhoenixRichTextBlock
---@field gradientBack UScaleBox
---@field textBorder UBorder
---@field TextHorizontalBox UHorizontalBox
---@field topBracket UScaleBox
---@field topBracketImage UPhoenixImage
---@field typeIcon UImage
---@field Key_0 FText
---@field Namespace_0 FString
---@field FontSize int32
---@field TextButtonHoveredTextColor FSlateColor
---@field TextButtonUnhoveredTextColor FSlateColor
---@field OnClickEventDispatcher FUI_BP_InteractButton_COnClickEventDispatcher
---@field TextWidth float
---@field OnButtonHoverDispatcher FUI_BP_InteractButton_COnButtonHoverDispatcher
---@field OnButtonUnhoverDispatcher FUI_BP_InteractButton_COnButtonUnhoverDispatcher
---@field interactTypeMap TMap<UI_BP_InteractTypeEnum::Type, FString>
---@field ConversationTypeMap TMap<EAvaAudioDialogueMenuItemType, FString>
---@field isOptionAvailable boolean
---@field OptionColor FLinearColor
---@field currentlyActive boolean
local UUI_BP_InteractButton_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_InteractButton_C:GatherMenuReaderStrings(DepthLevel) end
---@param Reason FString
function UUI_BP_InteractButton_C:SetDisabledText(Reason) end
---@param IsActive boolean
function UUI_BP_InteractButton_C:ToggleActive(IsActive) end
---@param NewState UI_BP_OptionStateEnum::Type
function UUI_BP_InteractButton_C:SetOptionState(NewState) end
---@param Type FString
function UUI_BP_InteractButton_C:SetTypeIcon(Type) end
---@param IsHoveredOver boolean
function UUI_BP_InteractButton_C:ScaleButton(IsHoveredOver) end
function UUI_BP_InteractButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_29_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_InteractButton_C:BndEvt__Button_0_K2Node_ComponentBoundEvent_31_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_InteractButton_C:BndEvt__Button_0_K2Node_ComponentBoundEvent_18_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_InteractButton_C:Construct() end
---@param EntryPoint int32
function UUI_BP_InteractButton_C:ExecuteUbergraph_UI_BP_InteractButton(EntryPoint) end
---@param TextButton UUI_BP_InteractButton_C
function UUI_BP_InteractButton_C:OnButtonUnhoverDispatcher__DelegateSignature(TextButton) end
---@param TextButton UUI_BP_InteractButton_C
function UUI_BP_InteractButton_C:OnButtonHoverDispatcher__DelegateSignature(TextButton) end
---@param TextButton UUI_BP_InteractButton_C
function UUI_BP_InteractButton_C:OnClickEventDispatcher__DelegateSignature(TextButton) end


