---@meta

---@class UUI_BP_NavBarButton_C : UTextButtonWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowHighlight UWidgetAnimation
---@field highlight UImage
---@field highlightBack UImage
---@field newIndicator UUI_BP_NewIndicator_C
---@field OnHoveredEventDispatcher FUI_BP_NavBarButton_COnHoveredEventDispatcher
---@field OnClickedEventDispatcher FUI_BP_NavBarButton_COnClickedEventDispatcher
---@field OnUnhoveredEventDispatcher FUI_BP_NavBarButton_COnUnhoveredEventDispatcher
---@field IsSelected boolean
---@field Category FName
local UUI_BP_NavBarButton_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_NavBarButton_C:GatherMenuReaderStrings(DepthLevel) end
---@param NewCount int32
function UUI_BP_NavBarButton_C:SetItemCount(NewCount) end
---@param isSelectedButton boolean
function UUI_BP_NavBarButton_C:SetSelectedState(isSelectedButton) end
function UUI_BP_NavBarButton_C:OnSynchronizeProperties() end
function UUI_BP_NavBarButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_29_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_NavBarButton_C:BndEvt__Button_0_K2Node_ComponentBoundEvent_31_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_NavBarButton_C:BndEvt__Button_0_K2Node_ComponentBoundEvent_18_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_NavBarButton_C:Construct() end
---@param EntryPoint int32
function UUI_BP_NavBarButton_C:ExecuteUbergraph_UI_BP_NavBarButton(EntryPoint) end
function UUI_BP_NavBarButton_C:OnUnhoveredEventDispatcher__DelegateSignature() end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_NavBarButton_C:OnClickedEventDispatcher__DelegateSignature(Me) end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_NavBarButton_C:OnHoveredEventDispatcher__DelegateSignature(Me) end


