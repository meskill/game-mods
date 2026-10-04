---@meta

---@class UUI_BP_FinisherMeter_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ComboX10 UWidgetAnimation
---@field CooldownPickupFlourish UWidgetAnimation
---@field ComboCountFadeOut UWidgetAnimation
---@field ComboFlamesFade UWidgetAnimation
---@field ComboCountIncreased UWidgetAnimation
---@field ComboCount UPhoenixTextBlock
---@field ComboText UPhoenixTextBlock
---@field meterBox UHorizontalBox
---@field section1 UUI_BP_FinisherMeterSection_C
---@field section2 UUI_BP_FinisherMeterSection_C
---@field section3 UUI_BP_FinisherMeterSection_C
---@field section4 UUI_BP_FinisherMeterSection_C
---@field section5 UUI_BP_FinisherMeterSection_C
---@field selectedFlameRight UImage
---@field selectedFlameRight_1 UImage
---@field selectedFlameRight_2 UImage
---@field selectedFlameTop UImage
---@field selectedFlameTop_1 UImage
---@field selectedFlameTop_2 UImage
---@field CurComboCount int32
---@field ComboColorMap TMap<int32, FLinearColor>
---@field ComboFlamesCountRange FIntPoint
---@field ComboFlamesColorLow FLinearColor
---@field ComboFlamesColorHigh FLinearColor
local UUI_BP_FinisherMeter_C = {}

---@param InComboCount int32
function UUI_BP_FinisherMeter_C:SetComboCountVisibleWithAnim(InComboCount) end
function UUI_BP_FinisherMeter_C:ComboOver() end
function UUI_BP_FinisherMeter_C:UpdateCombo() end
---@param Target AActor
---@param InFocusChange float
function UUI_BP_FinisherMeter_C:PlayerFocusChanged(Target, InFocusChange) end
---@param NumMeters int32
function UUI_BP_FinisherMeter_C:SetNumMeters(NumMeters) end
---@param MeterPercent float
function UUI_BP_FinisherMeter_C:SetMeterData(MeterPercent) end
function UUI_BP_FinisherMeter_C:Construct() end
---@param Caller UObject
---@param int int32
function UUI_BP_FinisherMeter_C:UpdateAncientMagicBarCount(Caller, int) end
---@param Caller UObject
---@param int int32
function UUI_BP_FinisherMeter_C:UpdateComboCount(Caller, int) end
---@param Caller UObject
---@param String FString
function UUI_BP_FinisherMeter_C:SpellUnlocked(Caller, String) end
---@param Caller UObject
function UUI_BP_FinisherMeter_C:CooldownPickupCollected(Caller) end
---@param EntryPoint int32
function UUI_BP_FinisherMeter_C:ExecuteUbergraph_UI_BP_FinisherMeter(EntryPoint) end


