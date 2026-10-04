---@meta

---@class UUI_BP_SettingsCheckboxButton_C : UAvaUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ToggleOn UWidgetAnimation
---@field OnHover UWidgetAnimation
---@field BackGorund UPhoenixImage
---@field goldleafBorder UImage
---@field goldleafLeft UImage
---@field goldleafRigth UImage
---@field onOffText UPhoenixTextBlock
---@field TheButton UButton
---@field TheText UPhoenixTextBlock
---@field ButtonText FString
---@field isCheckmarkChecked boolean
---@field SettingsCheckmarkPressed FUI_BP_SettingsCheckboxButton_CSettingsCheckmarkPressed
---@field ToggleHovered FUI_BP_SettingsCheckboxButton_CToggleHovered
---@field ToggleUnhovered FUI_BP_SettingsCheckboxButton_CToggleUnhovered
local UUI_BP_SettingsCheckboxButton_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_SettingsCheckboxButton_C:GatherMenuReaderStrings(DepthLevel) end
---@param IsChecked boolean
function UUI_BP_SettingsCheckboxButton_C:SetCheckmarkState(IsChecked) end
---@param IsChecked boolean
function UUI_BP_SettingsCheckboxButton_C:ToggleCheckmark(IsChecked) end
---@param ButtonText FString
function UUI_BP_SettingsCheckboxButton_C:SetButtonText(ButtonText) end
---@param IsDesignTime boolean
function UUI_BP_SettingsCheckboxButton_C:PreConstruct(IsDesignTime) end
function UUI_BP_SettingsCheckboxButton_C:BndEvt__Button_0_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_SettingsCheckboxButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_SettingsCheckboxButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_SettingsCheckboxButton_C:ExecuteUbergraph_UI_BP_SettingsCheckboxButton(EntryPoint) end
---@param Button UUI_BP_SettingsCheckboxButton_C
function UUI_BP_SettingsCheckboxButton_C:ToggleUnhovered__DelegateSignature(Button) end
---@param Button UUI_BP_SettingsCheckboxButton_C
function UUI_BP_SettingsCheckboxButton_C:ToggleHovered__DelegateSignature(Button) end
---@param IsChecked boolean
---@param Button UUI_BP_SettingsCheckboxButton_C
function UUI_BP_SettingsCheckboxButton_C:SettingsCheckmarkPressed__DelegateSignature(IsChecked, Button) end


