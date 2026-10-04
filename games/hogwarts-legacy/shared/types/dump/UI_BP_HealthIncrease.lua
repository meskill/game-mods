---@meta

---@class UUI_BP_HealthIncrease_C : UUserWidget
---@field ShowText UWidgetAnimation
---@field PlusUp UWidgetAnimation
---@field gainTextBorder UBorder
---@field HealthGain UPhoenixTextBlock
---@field HealthGainBox UHorizontalBox
local UUI_BP_HealthIncrease_C = {}

---@param Health int32
function UUI_BP_HealthIncrease_C:HealthUpNoAnim(Health) end
---@param Health int32
function UUI_BP_HealthIncrease_C:HealthUp(Health) end


