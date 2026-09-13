---@meta

---@class UUI_BP_Benchmark_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BenchmarkTitle UPhoenixTextBlock
---@field DescText UPhoenixRichTextBlock
---@field LegendBar UUI_BP_Legend_Horizontal_Screen_C
---@field Overlay_0 UOverlay
---@field settingsMenu UUI_BP_SystemMenu_C
---@field BenchmarkAccepted FUI_BP_Benchmark_CBenchmarkAccepted
---@field DefaultLegendData TArray<FLegendItemData>
---@field OnHDRScreenToggled FUI_BP_Benchmark_COnHDRScreenToggled
---@field DesiredCursorStateChanged FUI_BP_Benchmark_CDesiredCursorStateChanged
local UUI_BP_Benchmark_C = {}

function UUI_BP_Benchmark_C:AdjustForViewportWidth() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_Benchmark_C:GatherMenuReaderStrings(DepthLevel) end
---@param LegendData TArray<FLegendItemData>
function UUI_BP_Benchmark_C:SetMenuLegend(LegendData) end
---@param Text FString
function UUI_BP_Benchmark_C:SetDescText(Text) end
---@param Visible boolean
function UUI_BP_Benchmark_C:ToggleSettingsVisibility(Visible) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_Benchmark_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param IsDesignTime boolean
function UUI_BP_Benchmark_C:PreConstruct(IsDesignTime) end
function UUI_BP_Benchmark_C:Construct() end
function UUI_BP_Benchmark_C:BlueprintFocusAcquired() end
---@param LegendItem ULegendItem
---@param HoldCompleted boolean
function UUI_BP_Benchmark_C:OnLegendItemHoldComplete(LegendItem, HoldCompleted) end
function UUI_BP_Benchmark_C:BndEvt__UI_BP_Benchmark_settingsMenu_K2Node_ComponentBoundEvent_0_BackOutPromptConfirmed__DelegateSignature() end
---@param NewLegend TArray<FLegendItemData>
function UUI_BP_Benchmark_C:BndEvt__UI_BP_Benchmark_settingsMenu_K2Node_ComponentBoundEvent_1_NewButtonLegendRequested__DelegateSignature(NewLegend) end
---@param IsShown boolean
function UUI_BP_Benchmark_C:BndEvt__UI_BP_Benchmark_settingsMenu_K2Node_ComponentBoundEvent_2_HDRScreenToggled__DelegateSignature(IsShown) end
---@param Caller UObject
function UUI_BP_Benchmark_C:ResolutionSettingsApplied(Caller) end
---@param EntryPoint int32
function UUI_BP_Benchmark_C:ExecuteUbergraph_UI_BP_Benchmark(EntryPoint) end
---@param WantsCursor boolean
function UUI_BP_Benchmark_C:DesiredCursorStateChanged__DelegateSignature(WantsCursor) end
---@param IsShown boolean
function UUI_BP_Benchmark_C:OnHDRScreenToggled__DelegateSignature(IsShown) end
function UUI_BP_Benchmark_C:BenchmarkAccepted__DelegateSignature() end


