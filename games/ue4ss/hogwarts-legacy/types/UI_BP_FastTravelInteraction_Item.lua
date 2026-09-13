---@meta

---@class UUI_BP_FastTravelInteraction_Item_C : UAvaUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field toInactive UWidgetAnimation
---@field toActive UWidgetAnimation
---@field buttonIcon UImage
---@field Fresnel UImage
---@field highlight UImage
---@field highlightBack UImage
---@field iconBack UImage
---@field iconBack_1 UImage
---@field ItemButton UButton
---@field leftCallout UHorizontalBox
---@field leftText UPhoenixTextBlock
---@field rightCallout UHorizontalBox
---@field rightText UPhoenixTextBlock
---@field CurrentTextField UPhoenixTextBlock
---@field CurrentAnimation UWidgetAnimation
---@field ItemName FString
---@field ItemIndex int32
---@field OnFastTravelButtonSelected FUI_BP_FastTravelInteraction_Item_COnFastTravelButtonSelected
---@field CurrentInactiveAnimation UWidgetAnimation
---@field Enabled boolean
---@field OnFastTravelButtonHovered FUI_BP_FastTravelInteraction_Item_COnFastTravelButtonHovered
local UUI_BP_FastTravelInteraction_Item_C = {}

---@param Enabled boolean
function UUI_BP_FastTravelInteraction_Item_C:IsEnabled(Enabled) end
---@param Enable boolean
function UUI_BP_FastTravelInteraction_Item_C:SetEnable(Enable) end
---@param IsActive boolean
function UUI_BP_FastTravelInteraction_Item_C:SetItemState(IsActive) end
---@param ItemIndex int32
---@param ItemId FString
function UUI_BP_FastTravelInteraction_Item_C:SetItemData(ItemIndex, ItemId) end
function UUI_BP_FastTravelInteraction_Item_C:Construct() end
function UUI_BP_FastTravelInteraction_Item_C:OnSynchronizeProperties() end
function UUI_BP_FastTravelInteraction_Item_C:BndEvt__itemButton_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_FastTravelInteraction_Item_C:BndEvt__UI_BP_FastTravelInteraction_Item_itemButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_FastTravelInteraction_Item_C:ExecuteUbergraph_UI_BP_FastTravelInteraction_Item(EntryPoint) end
---@param Button UUI_BP_FastTravelInteraction_Item_C
function UUI_BP_FastTravelInteraction_Item_C:OnFastTravelButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_FastTravelInteraction_Item_C
function UUI_BP_FastTravelInteraction_Item_C:OnFastTravelButtonSelected__DelegateSignature(Button) end


