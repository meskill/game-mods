---@meta

---@class UUI_BP_ScrollingTextBlock_C : UScrollingTextWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ScrollingTextAnimation UWidgetAnimation
local UUI_BP_ScrollingTextBlock_C = {}

function UUI_BP_ScrollingTextBlock_C:Construct() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_ScrollingTextBlock_C:Tick(MyGeometry, InDeltaTime) end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UUI_BP_ScrollingTextBlock_C:OnMouseEnter(MyGeometry, MouseEvent) end
---@param MouseEvent FPointerEvent
function UUI_BP_ScrollingTextBlock_C:OnMouseLeave(MouseEvent) end
---@param EntryPoint int32
function UUI_BP_ScrollingTextBlock_C:ExecuteUbergraph_UI_BP_ScrollingTextBlock(EntryPoint) end


