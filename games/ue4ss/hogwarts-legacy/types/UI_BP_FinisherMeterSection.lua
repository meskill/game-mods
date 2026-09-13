---@meta

---@class UUI_BP_FinisherMeterSection_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CooldownGlint UWidgetAnimation
---@field CooldownFlourish UWidgetAnimation
---@field FocusGainedAnim UWidgetAnimation
---@field MeterFullAnim UWidgetAnimation
---@field BarFillGlint UImage
---@field flameBorder UBorder
---@field flameBorder_1 UBorder
---@field Meter UProgressBar
---@field meterFresnel UPhoenixImage
---@field meterOutlineLeft UImage
---@field meterOutlineMiddle UImage
---@field meterOutlineRight UImage
---@field sparkles UImage
---@field canShowGlow boolean
---@field MeterIsFull FUI_BP_FinisherMeterSection_CMeterIsFull
---@field MeterIsNotFull FUI_BP_FinisherMeterSection_CMeterIsNotFull
---@field meterPositionIndex int32
local UUI_BP_FinisherMeterSection_C = {}

UUI_BP_FinisherMeterSection_C['Set Meter Glint'] = function(self, ) end
---@param Index int32
function UUI_BP_FinisherMeterSection_C:SetMeterPosition(Index) end
---@param NewPercent float
function UUI_BP_FinisherMeterSection_C:SetMeterPercent(NewPercent) end
---@param IsDesignTime boolean
function UUI_BP_FinisherMeterSection_C:PreConstruct(IsDesignTime) end
function UUI_BP_FinisherMeterSection_C:Construct() end
---@param EntryPoint int32
function UUI_BP_FinisherMeterSection_C:ExecuteUbergraph_UI_BP_FinisherMeterSection(EntryPoint) end
function UUI_BP_FinisherMeterSection_C:MeterIsNotFull__DelegateSignature() end
function UUI_BP_FinisherMeterSection_C:MeterIsFull__DelegateSignature() end


