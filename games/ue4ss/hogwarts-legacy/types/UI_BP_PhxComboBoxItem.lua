---@meta

---@class UUI_BP_PhxComboBoxItem_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ItemButton UButton
---@field TextBlock UPhoenixTextBlock
---@field ItemText FString
---@field Style FTableRowStyle
---@field IsActive boolean
---@field font FSlateFontInfo
---@field OnItemClicked FUI_BP_PhxComboBoxItem_COnItemClicked
---@field OnItemHovered FUI_BP_PhxComboBoxItem_COnItemHovered
---@field OnItemUnhovered FUI_BP_PhxComboBoxItem_COnItemUnhovered
---@field IsTranslatable boolean
local UUI_BP_PhxComboBoxItem_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_PhxComboBoxItem_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_PhxComboBoxItem_C:UpdateDynamicStyle() end
---@param ACTIVE boolean
function UUI_BP_PhxComboBoxItem_C:SetIsActive(ACTIVE) end
function UUI_BP_PhxComboBoxItem_C:Construct() end
---@param IsDesignTime boolean
function UUI_BP_PhxComboBoxItem_C:PreConstruct(IsDesignTime) end
function UUI_BP_PhxComboBoxItem_C:BndEvt__itemButton_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_PhxComboBoxItem_C:BndEvt__ItemButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_PhxComboBoxItem_C:BndEvt__ItemButton_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_PhxComboBoxItem_C:ExecuteUbergraph_UI_BP_PhxComboBoxItem(EntryPoint) end
---@param Item UUI_BP_PhxComboBoxItem_C
function UUI_BP_PhxComboBoxItem_C:OnItemUnhovered__DelegateSignature(Item) end
---@param Item UUI_BP_PhxComboBoxItem_C
function UUI_BP_PhxComboBoxItem_C:OnItemHovered__DelegateSignature(Item) end
---@param Item UUI_BP_PhxComboBoxItem_C
function UUI_BP_PhxComboBoxItem_C:OnItemClicked__DelegateSignature(Item) end


