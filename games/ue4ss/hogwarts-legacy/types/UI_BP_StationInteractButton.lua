---@meta

---@class UUI_BP_StationInteractButton_C : UTextButtonWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnUnhovered UWidgetAnimation
---@field OnHovered UWidgetAnimation
---@field ButtonCalloutText UPhoenixRichTextBlock
---@field DisplayText UPhoenixRichTextBlock
---@field textBorder UBorder
---@field typeIcon UImage
---@field Key_0 FText
---@field Namespace_0 FString
---@field FontSize int32
---@field TextButtonHoveredTextColor FSlateColor
---@field TextButtonUnhoveredTextColor FSlateColor
---@field TextWidth float
---@field interactTypeMap TMap<UI_BP_InteractTypeEnum::Type, FString>
---@field ConversationTypeMap TMap<EAvaAudioDialogueMenuItemType, FString>
---@field isOptionAvailable boolean
---@field OptionColor FLinearColor
---@field OnStationButtonSelected FUI_BP_StationInteractButton_COnStationButtonSelected
local UUI_BP_StationInteractButton_C = {}

---@param IsActive boolean
function UUI_BP_StationInteractButton_C:ToggleActive(IsActive) end
---@param Type FString
function UUI_BP_StationInteractButton_C:SetTypeIcon(Type) end
---@param IsHoveredOver boolean
function UUI_BP_StationInteractButton_C:ScaleButton(IsHoveredOver) end
function UUI_BP_StationInteractButton_C:Construct() end
function UUI_BP_StationInteractButton_C:BndEvt__theButton_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_StationInteractButton_C:ExecuteUbergraph_UI_BP_StationInteractButton(EntryPoint) end
---@param SelectedOption UUI_BP_StationInteractButton_C
function UUI_BP_StationInteractButton_C:OnStationButtonSelected__DelegateSignature(SelectedOption) end


