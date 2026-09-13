---@meta

---@class UUI_BP_ScrollingTextTestButton_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnTextButtonDeselected UWidgetAnimation
---@field OnTextButtonSelected UWidgetAnimation
---@field OnTextButtonUnhovered UWidgetAnimation
---@field OnTextButtonHovered UWidgetAnimation
---@field goldleafBorder UImage
---@field scrollingText UUI_BP_ScrollingTextBlock_C
---@field selected UImage
---@field TheButton UButton
---@field ScrollingTextButtonClicked FUI_BP_ScrollingTextTestButton_CScrollingTextButtonClicked
---@field ScrollingTextButtonHovered FUI_BP_ScrollingTextTestButton_CScrollingTextButtonHovered
---@field ScrollingTextButtonUnhovered FUI_BP_ScrollingTextTestButton_CScrollingTextButtonUnhovered
---@field ButtonText FString
---@field ButtonTextJustification ETextJustify::Type
---@field IsButtonSelected boolean
local UUI_BP_ScrollingTextTestButton_C = {}

---@param Button UUI_BP_MenuTextButton_C
---@param JustChangeHighjlight boolean
function UUI_BP_ScrollingTextTestButton_C:HandleUnhovered(Button, JustChangeHighjlight) end
---@param Button UUI_BP_MenuTextButton_C
---@param JustChangeHighlight boolean
function UUI_BP_ScrollingTextTestButton_C:HandleHovered(Button, JustChangeHighlight) end
---@param IsSelected boolean
function UUI_BP_ScrollingTextTestButton_C:SetButtonState(IsSelected) end
---@param CurrentlyHovered boolean
function UUI_BP_ScrollingTextTestButton_C:Hovered(CurrentlyHovered) end
---@param ButtonText FString
function UUI_BP_ScrollingTextTestButton_C:SetButtonText(ButtonText) end
function UUI_BP_ScrollingTextTestButton_C:BndEvt__Button_0_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_ScrollingTextTestButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_ScrollingTextTestButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
---@param IsDesignTime boolean
function UUI_BP_ScrollingTextTestButton_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_ScrollingTextTestButton_C:ExecuteUbergraph_UI_BP_ScrollingTextTestButton(EntryPoint) end
---@param Button UUI_BP_ScrollingTextTestButton_C
function UUI_BP_ScrollingTextTestButton_C:ScrollingTextButtonUnhovered__DelegateSignature(Button) end
---@param Button UUI_BP_ScrollingTextTestButton_C
function UUI_BP_ScrollingTextTestButton_C:ScrollingTextButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_ScrollingTextTestButton_C
function UUI_BP_ScrollingTextTestButton_C:ScrollingTextButtonClicked__DelegateSignature(Button) end


