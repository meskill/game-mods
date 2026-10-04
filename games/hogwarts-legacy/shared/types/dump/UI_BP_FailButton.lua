---@meta

---@class UUI_BP_FailButton_C : UTextButtonWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnTextButtonHovered UWidgetAnimation
---@field ButtonSizeBox USizeBox
---@field OnClickEventDispatcher FUI_BP_FailButton_COnClickEventDispatcher
---@field OnButtonHoverDispatcher FUI_BP_FailButton_COnButtonHoverDispatcher
---@field OnButtonUnhoverDispatcher FUI_BP_FailButton_COnButtonUnhoverDispatcher
local UUI_BP_FailButton_C = {}

---@param newText FString
function UUI_BP_FailButton_C:SetButtonText(newText) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FailButton_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_FailButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_96_OnButtonReleasedEvent__DelegateSignature() end
function UUI_BP_FailButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_92_OnButtonPressedEvent__DelegateSignature() end
function UUI_BP_FailButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_29_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_FailButton_C:BndEvt__Button_0_K2Node_ComponentBoundEvent_31_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_FailButton_C:BndEvt__Button_0_K2Node_ComponentBoundEvent_18_OnButtonHoverEvent__DelegateSignature() end
---@param IsDesignTime boolean
function UUI_BP_FailButton_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_FailButton_C:ExecuteUbergraph_UI_BP_FailButton(EntryPoint) end
---@param TextButton UUI_BP_FailButton_C
function UUI_BP_FailButton_C:OnButtonUnhoverDispatcher__DelegateSignature(TextButton) end
---@param TextButton UUI_BP_FailButton_C
function UUI_BP_FailButton_C:OnButtonHoverDispatcher__DelegateSignature(TextButton) end
---@param TextButton UUI_BP_FailButton_C
function UUI_BP_FailButton_C:OnClickEventDispatcher__DelegateSignature(TextButton) end


