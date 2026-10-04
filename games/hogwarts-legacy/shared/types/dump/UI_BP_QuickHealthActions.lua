---@meta

---@class UUI_BP_QuickHealthActions_C : UQuickHealthActions
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LowHealthIntro UWidgetAnimation
---@field PotionAlert UWidgetAnimation
---@field LowHealthEnd UWidgetAnimation
---@field LowHealth UWidgetAnimation
---@field FullHealth UWidgetAnimation
---@field HighlightMeter UWidgetAnimation
---@field LevelUpArrows UWidgetAnimation
---@field HealthItemFullyRecharged UWidgetAnimation
---@field Glow UImage
---@field HealthAlertGlow UImage
---@field HealthAlertPulse UProgressBar
---@field HealthIncreaseTag UUI_BP_HealthIncrease_C
---@field healthMeterBack USizeBox
---@field Image_98 UImage
---@field LowHealthAlert UCanvasPanel
---@field newHealthBar UProgressBar
---@field PotionFresnal UImage
---@field PotionHighlight UCanvasPanel
---@field quickActionCount UPhoenixTextBlock
---@field Color_None FSlateColor
---@field Color_Positive FSlateColor
---@field HealthCooldownTimer FTimerHandle
---@field CriticalHealth UCurveFloat
---@field HealthMax float
---@field HealthPercent float
---@field IsLowHealth boolean
---@field PotionCount int32
---@field WasCritical boolean
---@field HealthBarColor FLinearColor
---@field HasPotion boolean
---@field LowHealthPlayAnimationThreshold float
local UUI_BP_QuickHealthActions_C = {}

function UUI_BP_QuickHealthActions_C:CheckCriticalHealth() end
---@param HealthMax float
---@param HealthPercent float
function UUI_BP_QuickHealthActions_C:SetLowHealthWarning(HealthMax, HealthPercent) end
---@param NewHealthDelta int32
function UUI_BP_QuickHealthActions_C:ShowLevelUpAnimation(NewHealthDelta) end
---@param NewHealthSize float
function UUI_BP_QuickHealthActions_C:OnSetMaxHealth(NewHealthSize) end
---@param NewPct float
function UUI_BP_QuickHealthActions_C:UpdateHealthBar(NewPct) end
---@param Caller UObject
function UUI_BP_QuickHealthActions_C:TutorialSaysStopHealthHighlight(Caller) end
---@param Caller UObject
function UUI_BP_QuickHealthActions_C:TutorialSaysStartHealthHighlight(Caller) end
function UUI_BP_QuickHealthActions_C:OnInitialized() end
function UUI_BP_QuickHealthActions_C:LowHealthLoop() end
function UUI_BP_QuickHealthActions_C:Construct() end
function UUI_BP_QuickHealthActions_C:OnLowHealth() end
---@param Count int32
function UUI_BP_QuickHealthActions_C:DisplayItemCount(Count) end
---@param EntryPoint int32
function UUI_BP_QuickHealthActions_C:ExecuteUbergraph_UI_BP_QuickHealthActions(EntryPoint) end


