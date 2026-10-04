---@meta

---@class UUI_BP_BroomBoostSection_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowBoosting UWidgetAnimation
---@field meterPulse UWidgetAnimation
---@field HideBoostAnim UWidgetAnimation
---@field CloseToGroundAnim UWidgetAnimation
---@field BoostingAnim UWidgetAnimation
---@field BarFillGlint UImage
---@field Meter UProgressBar
---@field pulseFresnel UImage
---@field sparkles UImage
---@field IsMeterFull boolean
---@field MeterIsFull FUI_BP_BroomBoostSection_CMeterIsFull
---@field MeterIsNotFull FUI_BP_BroomBoostSection_CMeterIsNotFull
---@field meterPositionIndex int32
---@field maxPositionIndex int32
---@field BoostEffectActive boolean
---@field CloseToGroundEffectActive boolean
local UUI_BP_BroomBoostSection_C = {}

---@param ShouldShow boolean
function UUI_BP_BroomBoostSection_C:ToggleBoostingEffect(ShouldShow) end
---@param ShouldShow boolean
function UUI_BP_BroomBoostSection_C:ToggleCloseToGroundEffect(ShouldShow) end
---@param NewColor FLinearColor
function UUI_BP_BroomBoostSection_C:SetMeterFillColor(NewColor) end
---@param Index int32
---@param MaxIndex int32
function UUI_BP_BroomBoostSection_C:SetMeterPosition(Index, MaxIndex) end
---@param NewPercent float
function UUI_BP_BroomBoostSection_C:SetMeterPercent(NewPercent) end
---@param IsDesignTime boolean
function UUI_BP_BroomBoostSection_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_BroomBoostSection_C:ExecuteUbergraph_UI_BP_BroomBoostSection(EntryPoint) end
function UUI_BP_BroomBoostSection_C:MeterIsNotFull__DelegateSignature() end
function UUI_BP_BroomBoostSection_C:MeterIsFull__DelegateSignature() end


