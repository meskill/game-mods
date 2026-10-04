---@meta

---@class UUI_BP_SimpleLegend_Screen_C : UScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Intro UWidgetAnimation
---@field Legend UUI_BP_Legend_Horizontal_Screen_C
local UUI_BP_SimpleLegend_Screen_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_SimpleLegend_Screen_C:GatherMenuReaderStrings(DepthLevel) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_SimpleLegend_Screen_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_SimpleLegend_Screen_C:OnOutroStarted(OutroType, OutroDuration) end
---@param OutroType int32
function UUI_BP_SimpleLegend_Screen_C:OnOutroEnded(OutroType) end
---@param EntryPoint int32
function UUI_BP_SimpleLegend_Screen_C:ExecuteUbergraph_UI_BP_SimpleLegend_Screen(EntryPoint) end


