---@meta

---@class UUI_BP_SettingsDetails_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Appear UWidgetAnimation
---@field Description UPhoenixTextBlock
---@field detailsBack UUI_BP_FG_DetailsPanelBack_C
---@field SettingsDetailCollapseDispatch FUI_BP_SettingsDetails_CSettingsDetailCollapseDispatch
---@field appearTime float
local UUI_BP_SettingsDetails_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_SettingsDetails_C:GatherMenuReaderStrings(DepthLevel) end
---@param NewDescription FString
function UUI_BP_SettingsDetails_C:SetupTooltipDescription(NewDescription) end
function UUI_BP_SettingsDetails_C:PlaySettingsDetailsCollapseAnim() end
function UUI_BP_SettingsDetails_C:PlaySettingsDetailsAppearAnim() end
---@param EntryPoint int32
function UUI_BP_SettingsDetails_C:ExecuteUbergraph_UI_BP_SettingsDetails(EntryPoint) end
function UUI_BP_SettingsDetails_C:SettingsDetailCollapseDispatch__DelegateSignature() end


