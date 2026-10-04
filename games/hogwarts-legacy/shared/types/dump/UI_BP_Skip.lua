---@meta

---@class UUI_BP_Skip_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideAnimation UWidgetAnimation
---@field ShowAnimation UWidgetAnimation
---@field Legend UUI_BP_Legend_Horizontal_Screen_C
---@field TimerEventHandle FTimerHandle
local UUI_BP_Skip_C = {}

---@param Legend UUI_BP_Legend_Horizontal_Screen_C
function UUI_BP_Skip_C:SequenceEvent__ENTRYPOINTUI_BP_Skip_0(Legend) end
---@return ULegendItem
function UUI_BP_Skip_C:GetSkipLegendItem() end
UUI_BP_Skip_C['Refresh Timer'] = function(self, ) end
---@param InAnimation UWidgetAnimation
---@return boolean
UUI_BP_Skip_C['Should Animate Forward'] = function(self, InAnimation) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_Skip_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_Skip_C:Construct() end
function UUI_BP_Skip_C:Destruct() end
function UUI_BP_Skip_C:Show() end
function UUI_BP_Skip_C:Hide() end
---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_Skip_C:OnSkipHoldReleased(LegendItem, HoldWasCompleted) end
---@param Legend UUI_BP_Legend_Horizontal_Screen_C
function UUI_BP_Skip_C:OnLegendHidden(Legend) end
---@param EntryPoint int32
function UUI_BP_Skip_C:ExecuteUbergraph_UI_BP_Skip(EntryPoint) end


