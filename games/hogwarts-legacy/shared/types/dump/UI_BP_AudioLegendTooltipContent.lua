---@meta

---@class UUI_BP_AudioLegendTooltipContent_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Icon_1 UImage
---@field ItemtypeText UPhoenixTextBlock
---@field IconName FString
local UUI_BP_AudioLegendTooltipContent_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_AudioLegendTooltipContent_C:GatherMenuReaderStrings(DepthLevel) end
---@param IconName FString
function UUI_BP_AudioLegendTooltipContent_C:SetIconInfo(IconName) end
---@param IsDesignTime boolean
function UUI_BP_AudioLegendTooltipContent_C:PreConstruct(IsDesignTime) end
function UUI_BP_AudioLegendTooltipContent_C:Construct() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_AudioLegendTooltipContent_C:Tick(MyGeometry, InDeltaTime) end
---@param EntryPoint int32
function UUI_BP_AudioLegendTooltipContent_C:ExecuteUbergraph_UI_BP_AudioLegendTooltipContent(EntryPoint) end


