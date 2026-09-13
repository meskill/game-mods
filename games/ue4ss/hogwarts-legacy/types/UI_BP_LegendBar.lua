---@meta

---@class UUI_BP_LegendBar_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LegendBar UCanvasPanel
---@field LegendBox UUI_BP_LegendBox_C
local UUI_BP_LegendBar_C = {}

---@param RenderSize FVector2D
function UUI_BP_LegendBar_C:GetAsyncWrapperRenderSize(RenderSize) end
function UUI_BP_LegendBar_C:SetHouseColors() end
---@param LegendArray TArray<FString>
function UUI_BP_LegendBar_C:SetButtonLegend(LegendArray) end
function UUI_BP_LegendBar_C:Initialize() end
function UUI_BP_LegendBar_C:InEditorPostConstruct() end
---@param Parent UUserWidget
function UUI_BP_LegendBar_C:SetParent(Parent) end
---@param NewParam TArray<FString>
function UUI_BP_LegendBar_C:I_SetButtonLegend(NewParam) end
function UUI_BP_LegendBar_C:Construct() end
---@param EntryPoint int32
function UUI_BP_LegendBar_C:ExecuteUbergraph_UI_BP_LegendBar(EntryPoint) end


