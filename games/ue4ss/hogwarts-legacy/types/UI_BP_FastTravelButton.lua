---@meta

---@class UUI_BP_FastTravelButton_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnTextButtonDeselected UWidgetAnimation
---@field OnTextButtonSelected UWidgetAnimation
---@field OnTextButtonHovered UWidgetAnimation
---@field fastTravelIcon UPhoenixImage
---@field textBorder UBorder
---@field TheButton UButton
---@field TheText UPhoenixTextBlock
---@field FastTravelButtonClicked FUI_BP_FastTravelButton_CFastTravelButtonClicked
---@field FastTravelButtonHovered FUI_BP_FastTravelButton_CFastTravelButtonHovered
---@field FastTravelButtonUnhovered FUI_BP_FastTravelButton_CFastTravelButtonUnhovered
---@field ButtonText FString
---@field IsButtonSelected boolean
---@field ExpandComplete FUI_BP_FastTravelButton_CExpandComplete
---@field CollapseComplete FUI_BP_FastTravelButton_CCollapseComplete
---@field IsLocked boolean
local UUI_BP_FastTravelButton_C = {}

UUI_BP_FastTravelButton_C['Set Unlocked'] = function(self, ) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FastTravelButton_C:GatherMenuReaderStrings(DepthLevel) end
---@param Button UUI_BP_FastTravelButton_C
---@param JustChangeHighjlight boolean
function UUI_BP_FastTravelButton_C:HandleUnhovered(Button, JustChangeHighjlight) end
---@param Button UUI_BP_FastTravelButton_C
---@param JustChangeHighlight boolean
function UUI_BP_FastTravelButton_C:HandleHovered(Button, JustChangeHighlight) end
---@param IsSelected boolean
function UUI_BP_FastTravelButton_C:SetButtonState(IsSelected) end
---@param CurrentlyHovered boolean
function UUI_BP_FastTravelButton_C:Hovered(CurrentlyHovered) end
---@param ButtonText FString
function UUI_BP_FastTravelButton_C:SetButtonText(ButtonText) end
function UUI_BP_FastTravelButton_C:Construct() end
function UUI_BP_FastTravelButton_C:BndEvt__Button_0_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_FastTravelButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_FastTravelButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
---@param IsDesignTime boolean
function UUI_BP_FastTravelButton_C:PreConstruct(IsDesignTime) end
function UUI_BP_FastTravelButton_C:ExpandAnimationComplete() end
function UUI_BP_FastTravelButton_C:CollapseAnimationComplete() end
---@param EntryPoint int32
function UUI_BP_FastTravelButton_C:ExecuteUbergraph_UI_BP_FastTravelButton(EntryPoint) end
---@param Button UUI_BP_FastTravelButton_C
function UUI_BP_FastTravelButton_C:CollapseComplete__DelegateSignature(Button) end
---@param Button UUI_BP_FastTravelButton_C
function UUI_BP_FastTravelButton_C:ExpandComplete__DelegateSignature(Button) end
---@param Button UUI_BP_FastTravelButton_C
function UUI_BP_FastTravelButton_C:FastTravelButtonUnhovered__DelegateSignature(Button) end
---@param Button UUI_BP_FastTravelButton_C
function UUI_BP_FastTravelButton_C:FastTravelButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_FastTravelButton_C
function UUI_BP_FastTravelButton_C:FastTravelButtonClicked__DelegateSignature(Button) end


