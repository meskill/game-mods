---@meta

---@class UUI_BP_LegendBox_C : ULegendBox
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NewLegendContainer UHorizontalBox
---@field LegendStrings TArray<FString>
local UUI_BP_LegendBox_C = {}

function UUI_BP_LegendBox_C:PopulateCallouts() end
---@param IsDesignTime boolean
function UUI_BP_LegendBox_C:PreConstruct(IsDesignTime) end
function UUI_BP_LegendBox_C:Construct() end
---@param EntryPoint int32
function UUI_BP_LegendBox_C:ExecuteUbergraph_UI_BP_LegendBox(EntryPoint) end


