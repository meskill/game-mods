---@meta

---@class UUI_BP_LegendItem_C : ULegendItem
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ButtonBG UImage
---@field ButtonText UPhoenixRichTextBlock
---@field ProgressBG UImage
---@field ProgressFill UImage
---@field TextString UPhoenixRichTextBlock
---@field ProgressCurve FRuntimeFloatCurve
---@field ButtonFontSize int32
---@field baseButtonPadding float
---@field ImageSizeMin float
---@field ImageSizeMax float
local UUI_BP_LegendItem_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_LegendItem_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_LegendItem_C:SetDynamicPadding() end
---@param Selection EInputDeviceUsed
function UUI_BP_LegendItem_C:SwapFillMaterials(Selection) end
---@param ButtonString FString
---@param TextString FString
---@param TextStringIsLocalized boolean
function UUI_BP_LegendItem_C:LegendItemDataChanged(ButtonString, TextString, TextStringIsLocalized) end
---@param ProgressUsed boolean
function UUI_BP_LegendItem_C:ProgressUsedChanged(ProgressUsed) end
---@param progress float
function UUI_BP_LegendItem_C:ProgressChanged(progress) end
---@param Disabled boolean
function UUI_BP_LegendItem_C:DisabledStateChanged(Disabled) end
---@param InColor FSlateColor
function UUI_BP_LegendItem_C:SetTextColor(InColor) end
---@param UsedInputDevice EInputDeviceUsed
function UUI_BP_LegendItem_C:UpdateFillMeterStyle(UsedInputDevice) end
---@param IsDesignTime boolean
function UUI_BP_LegendItem_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_LegendItem_C:ExecuteUbergraph_UI_BP_LegendItem(EntryPoint) end


