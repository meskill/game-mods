---@meta

---@class UUI_BP_ParallaxWidget_C : UParallaxWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field content UNamedSlot
---@field Root UCanvasPanel
local UUI_BP_ParallaxWidget_C = {}

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_ParallaxWidget_C:Tick(MyGeometry, InDeltaTime) end
---@param EntryPoint int32
function UUI_BP_ParallaxWidget_C:ExecuteUbergraph_UI_BP_ParallaxWidget(EntryPoint) end


