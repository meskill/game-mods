---@meta

---@class UUI_BP_SettingsDropDownButton_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnHover UWidgetAnimation
---@field ComboBox UUI_BP_PhxComboBox_C
---@field DropdownOverlay UOverlay
---@field DropDownOptionChanged FUI_BP_SettingsDropDownButton_CDropDownOptionChanged
---@field DropDownTitle FString
---@field DropdownWidth float
---@field TranslateContents boolean
---@field DropdownHovered FUI_BP_SettingsDropDownButton_CDropdownHovered
---@field DropdownUnhovered FUI_BP_SettingsDropDownButton_CDropdownUnhovered
---@field Scalefonts boolean
---@field DropdownOpened FUI_BP_SettingsDropDownButton_CDropdownOpened
---@field TranslateTitle boolean
---@field DropDownOptionHovered FUI_BP_SettingsDropDownButton_CDropDownOptionHovered
local UUI_BP_SettingsDropDownButton_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_SettingsDropDownButton_C:GatherMenuReaderStrings(DepthLevel) end
---@param DesiredHeight float
function UUI_BP_SettingsDropDownButton_C:SetDropDownSize(DesiredHeight) end
---@param SelectedIndex int32
function UUI_BP_SettingsDropDownButton_C:GetSelectedIndex(SelectedIndex) end
---@param SelectedOption FString
function UUI_BP_SettingsDropDownButton_C:GetSelectedOption(SelectedOption) end
---@param NewIndex int32
function UUI_BP_SettingsDropDownButton_C:SetDropDownIndex(NewIndex) end
---@param OptionsArray TArray<FString>
---@param OptionIndex int32
function UUI_BP_SettingsDropDownButton_C:PopulateDropDownOptions(OptionsArray, OptionIndex) end
---@param NewSelection FString
function UUI_BP_SettingsDropDownButton_C:BndEvt__ComboBox_K2Node_ComponentBoundEvent_3_OnSelectionChanged__DelegateSignature(NewSelection) end
---@param ItemHovered FString
function UUI_BP_SettingsDropDownButton_C:BndEvt__ComboBox_K2Node_ComponentBoundEvent_2_OnItemHovered__DelegateSignature(ItemHovered) end
---@param ItemClicked FString
function UUI_BP_SettingsDropDownButton_C:BndEvt__ComboBox_K2Node_ComponentBoundEvent_4_OnItemClicked__DelegateSignature(ItemClicked) end
function UUI_BP_SettingsDropDownButton_C:Construct() end
function UUI_BP_SettingsDropDownButton_C:BndEvt__ComboBox_K2Node_ComponentBoundEvent_5_OnOpen__DelegateSignature() end
function UUI_BP_SettingsDropDownButton_C:BndEvt__ComboBox_K2Node_ComponentBoundEvent_6_OnHeaderButtonHovered__DelegateSignature() end
function UUI_BP_SettingsDropDownButton_C:BndEvt__ComboBox_K2Node_ComponentBoundEvent_7_OnHeaderButtonUnhovered__DelegateSignature() end
---@param IsDesignTime boolean
function UUI_BP_SettingsDropDownButton_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_SettingsDropDownButton_C:ExecuteUbergraph_UI_BP_SettingsDropDownButton(EntryPoint) end
---@param Button UUI_BP_SettingsDropDownButton_C
---@param HoveredItemString FString
function UUI_BP_SettingsDropDownButton_C:DropDownOptionHovered__DelegateSignature(Button, HoveredItemString) end
function UUI_BP_SettingsDropDownButton_C:DropdownOpened__DelegateSignature() end
function UUI_BP_SettingsDropDownButton_C:DropdownUnhovered__DelegateSignature() end
---@param Button UUI_BP_SettingsDropDownButton_C
function UUI_BP_SettingsDropDownButton_C:DropdownHovered__DelegateSignature(Button) end
---@param NewOptionIndex int32
---@param Button UUI_BP_SettingsDropDownButton_C
function UUI_BP_SettingsDropDownButton_C:DropDownOptionChanged__DelegateSignature(NewOptionIndex, Button) end


