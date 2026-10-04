---@meta

---@class UUI_BP_HYDRATextButton_C : UAvaUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnHover UWidgetAnimation
---@field BackGorund UPhoenixImage
---@field FlareBack UImage
---@field TheButton UButton
---@field TheText UPhoenixRichTextBlock
---@field HYDRATextButtonClicked FUI_BP_HYDRATextButton_CHYDRATextButtonClicked
---@field HYDRATextButtonHovered FUI_BP_HYDRATextButton_CHYDRATextButtonHovered
---@field HYDRATextButtonUnhovered FUI_BP_HYDRATextButton_CHYDRATextButtonUnhovered
---@field ButtonText FString
local UUI_BP_HYDRATextButton_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_HYDRATextButton_C:GatherMenuReaderStrings(DepthLevel) end
---@param CurrentlyHovered boolean
function UUI_BP_HYDRATextButton_C:Hovered(CurrentlyHovered) end
---@param ButtonText FString
function UUI_BP_HYDRATextButton_C:SetButtonText(ButtonText) end
---@param IsDesignTime boolean
function UUI_BP_HYDRATextButton_C:PreConstruct(IsDesignTime) end
function UUI_BP_HYDRATextButton_C:Construct() end
function UUI_BP_HYDRATextButton_C:BndEvt__Button_0_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_HYDRATextButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_HYDRATextButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_HYDRATextButton_C:ExecuteUbergraph_UI_BP_HYDRATextButton(EntryPoint) end
---@param Button UUI_BP_HYDRATextButton_C
function UUI_BP_HYDRATextButton_C:HYDRATextButtonUnhovered__DelegateSignature(Button) end
---@param Button UUI_BP_HYDRATextButton_C
function UUI_BP_HYDRATextButton_C:HYDRATextButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_HYDRATextButton_C
function UUI_BP_HYDRATextButton_C:HYDRATextButtonClicked__DelegateSignature(Button) end


