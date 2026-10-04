---@meta

---@class UUI_BP_NewIndicator_C : UUserWidget
---@field NewPulse UWidgetAnimation
---@field ShowNewIndicator UWidgetAnimation
---@field NewItem UCanvasPanel
---@field IsShowing boolean
local UUI_BP_NewIndicator_C = {}

function UUI_BP_NewIndicator_C:StopPulse() end
function UUI_BP_NewIndicator_C:HideAnimationFinished() end
function UUI_BP_NewIndicator_C:HideNewItem() end
function UUI_BP_NewIndicator_C:PulseNewIcon() end
function UUI_BP_NewIndicator_C:ShowNewItem() end


