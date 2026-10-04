---@meta

---@class UUI_BP_LegendPopout_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LegendBox UUI_BP_LegendBox_C
local UUI_BP_LegendPopout_C = {}

---@param CalloutArray TArray<FString>
function UUI_BP_LegendPopout_C:SetLegend(CalloutArray) end
---@param LegendArray TArray<FString>
function UUI_BP_LegendPopout_C:I_SetButtonLegend(LegendArray) end
---@param EntryPoint int32
function UUI_BP_LegendPopout_C:ExecuteUbergraph_UI_BP_LegendPopout(EntryPoint) end


