---@meta

---@class UUI_BP_MenuTextButton_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowSparkles UWidgetAnimation
---@field OnTextButtonDeselected UWidgetAnimation
---@field OnTextButtonSelected UWidgetAnimation
---@field OnTextButtonHovered UWidgetAnimation
---@field BackGorund UPhoenixImage
---@field Border UImage
---@field goldleafL UImage
---@field goldleafR UImage
---@field Icon UPhoenixImage
---@field NS UNamedSlot
---@field TheButton UButton
---@field TheText UPhoenixTextBlock
---@field UI_BP_SelectedBox UUI_BP_SelectedBox_C
---@field MenuTextButtonClicked FUI_BP_MenuTextButton_CMenuTextButtonClicked
---@field MenuTextButtonHovered FUI_BP_MenuTextButton_CMenuTextButtonHovered
---@field MenuTextButtonUnhovered FUI_BP_MenuTextButton_CMenuTextButtonUnhovered
---@field ButtonText FString
---@field ButtonTextJustification ETextJustify::Type
---@field IsButtonSelected boolean
---@field TranslateButtonText boolean
local UUI_BP_MenuTextButton_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_MenuTextButton_C:GatherMenuReaderStrings(DepthLevel) end
---@param Button UUI_BP_MenuTextButton_C
---@param JustChangeHighjlight boolean
function UUI_BP_MenuTextButton_C:HandleUnhovered(Button, JustChangeHighjlight) end
---@param Button UUI_BP_MenuTextButton_C
---@param JustChangeHighlight boolean
function UUI_BP_MenuTextButton_C:HandleHovered(Button, JustChangeHighlight) end
---@param IsSelected boolean
function UUI_BP_MenuTextButton_C:SetButtonState(IsSelected) end
---@param CurrentlyHovered boolean
function UUI_BP_MenuTextButton_C:Hovered(CurrentlyHovered) end
---@param ButtonText FString
function UUI_BP_MenuTextButton_C:SetButtonText(ButtonText) end
---@param IsDesignTime boolean
function UUI_BP_MenuTextButton_C:PreConstruct(IsDesignTime) end
function UUI_BP_MenuTextButton_C:BndEvt__Button_0_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_MenuTextButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_MenuTextButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_MenuTextButton_C:ExecuteUbergraph_UI_BP_MenuTextButton(EntryPoint) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_MenuTextButton_C:MenuTextButtonUnhovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_MenuTextButton_C:MenuTextButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_MenuTextButton_C:MenuTextButtonClicked__DelegateSignature(Button) end


