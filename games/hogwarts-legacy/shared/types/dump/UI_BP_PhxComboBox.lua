---@meta

---@class UUI_BP_PhxComboBox_C : UPhxComboBox
---@field UberGraphFrame FPointerToUberGraphFrame
---@field rotateArrow UWidgetAnimation
---@field Hover UWidgetAnimation
---@field ActiveItemHeaderText UPhoenixTextBlock
---@field ArrowImage UImage
---@field ContentsBox UVerticalBox
---@field goldleafBorder UImage
---@field goldleafLeft UImage
---@field goldleafRigth UImage
---@field HeaderButton UButton
---@field ScrollBorder UBorder
---@field ScrollBox UUI_BP_SimpleScrollBox_C
---@field ScrollSizeBox USizeBox
---@field TitleText UPhoenixTextBlock
---@field IsExpanded boolean
---@field MaxListHeight float
---@field Style_0 FComboBoxStyle
---@field DropdownItems TArray<FString>
---@field ItemStyle FTableRowStyle
---@field font_0 FSlateFontInfo
---@field SelectedIndex int32
---@field ItemArray TArray<UUI_BP_PhxComboBoxItem_C>
---@field OnItemClicked FUI_BP_PhxComboBox_COnItemClicked
---@field OnItemHovered FUI_BP_PhxComboBox_COnItemHovered
---@field OnItemUnhovered FUI_BP_PhxComboBox_COnItemUnhovered
---@field OnOpen FUI_BP_PhxComboBox_COnOpen
---@field OnClose FUI_BP_PhxComboBox_COnClose
---@field OnHeaderButtonHovered FUI_BP_PhxComboBox_COnHeaderButtonHovered
---@field OnHeaderButtonUnhovered FUI_BP_PhxComboBox_COnHeaderButtonUnhovered
---@field OnSelectionChanged FUI_BP_PhxComboBox_COnSelectionChanged
---@field ItemsTranslatable boolean
---@field ScaleTextFont boolean
---@field WantsPaintGeo boolean
---@field LastHoveredItem UUI_BP_PhxComboBoxItem_C
local UUI_BP_PhxComboBox_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_PhxComboBox_C:GatherMenuReaderStrings(DepthLevel) end
---@param NewTitleText FString
---@param IsTranslatable boolean
function UUI_BP_PhxComboBox_C:SetTitle(NewTitleText, IsTranslatable) end
---@param NewOptions TArray<FString>
function UUI_BP_PhxComboBox_C:SetDropdownOptions(NewOptions) end
---@param InOption FString
---@param Index int32
---@param bSuccessful boolean
function UUI_BP_PhxComboBox_C:FindOptionIndex(InOption, Index, bSuccessful) end
---@param NewHeight float
function UUI_BP_PhxComboBox_C:SetDesiredScrollSize(NewHeight) end
---@param SelectedOption FString
function UUI_BP_PhxComboBox_C:GetSelectedOption(SelectedOption) end
---@param ItemsTranslatable boolean
function UUI_BP_PhxComboBox_C:SetItemsTranslatable(ItemsTranslatable) end
---@param SelectedIndex int32
function UUI_BP_PhxComboBox_C:GetSelectedIndex(SelectedIndex) end
---@param NewIndex int32
---@param TriggerValueChangedEvent boolean
function UUI_BP_PhxComboBox_C:SetSelectedIndex(NewIndex, TriggerValueChangedEvent) end
function UUI_BP_PhxComboBox_C:PopulateItems() end
---@param Item UUI_BP_PhxComboBoxItem_C
function UUI_BP_PhxComboBox_C:ItemClicked(Item) end
---@param UnhoveredItem UUI_BP_PhxComboBoxItem_C
function UUI_BP_PhxComboBox_C:ItemUnhovered(UnhoveredItem) end
---@param HoveredItem UUI_BP_PhxComboBoxItem_C
function UUI_BP_PhxComboBox_C:ItemHovered(HoveredItem) end
---@param ShouldExpand boolean
function UUI_BP_PhxComboBox_C:TogglePopout(ShouldExpand) end
---@param IsDesignTime boolean
function UUI_BP_PhxComboBox_C:PreConstruct(IsDesignTime) end
function UUI_BP_PhxComboBox_C:Construct() end
function UUI_BP_PhxComboBox_C:BndEvt__HeaderButton_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_PhxComboBox_C:BndEvt__HeaderButton_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_PhxComboBox_C:BndEvt__HeaderButton_K2Node_ComponentBoundEvent_3_OnButtonHoverEvent__DelegateSignature() end
---@param InFocusEvent FFocusEvent
function UUI_BP_PhxComboBox_C:OnRemovedFromFocusPath(InFocusEvent) end
---@param MouseEvent FPointerEvent
function UUI_BP_PhxComboBox_C:OnMouseLeave(MouseEvent) end
---@param EntryPoint int32
function UUI_BP_PhxComboBox_C:ExecuteUbergraph_UI_BP_PhxComboBox(EntryPoint) end
---@param NewSelection FString
function UUI_BP_PhxComboBox_C:OnSelectionChanged__DelegateSignature(NewSelection) end
function UUI_BP_PhxComboBox_C:OnClose__DelegateSignature() end
function UUI_BP_PhxComboBox_C:OnHeaderButtonUnhovered__DelegateSignature() end
function UUI_BP_PhxComboBox_C:OnHeaderButtonHovered__DelegateSignature() end
function UUI_BP_PhxComboBox_C:OnOpen__DelegateSignature() end
---@param ItemUnhovered FString
function UUI_BP_PhxComboBox_C:OnItemUnhovered__DelegateSignature(ItemUnhovered) end
---@param ItemHovered FString
function UUI_BP_PhxComboBox_C:OnItemHovered__DelegateSignature(ItemHovered) end
---@param ItemClicked FString
function UUI_BP_PhxComboBox_C:OnItemClicked__DelegateSignature(ItemClicked) end


