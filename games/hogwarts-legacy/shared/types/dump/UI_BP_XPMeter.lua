---@meta

---@class UUI_BP_XPMeter_C : UXPMeterBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field hideTextBackgroundAnim UWidgetAnimation
---@field HideLevelUpText UWidgetAnimation
---@field showTextBackgroundAnim UWidgetAnimation
---@field highlight UWidgetAnimation
---@field showXPCrest UWidgetAnimation
---@field FadeOut UWidgetAnimation
---@field HideXPText UWidgetAnimation
---@field ShowXPText UWidgetAnimation
---@field showLevelUpText UWidgetAnimation
---@field showLevelUpBanner UWidgetAnimation
---@field HealthIncreaseTag UUI_BP_HealthIncrease_C
---@field HouseCrest UImage
---@field InvalidationBox_XPMeter UInvalidationBox
---@field levelUpRoot UCanvasPanel
---@field LevelUpText UPhoenixTextBlock
---@field PlayerLevel UPhoenixTextBlock
---@field textBorder UBorder
---@field XPFill_Image UImage
---@field XPHorizontalBox UHorizontalBox
---@field XPtext UPhoenixTextBlock
---@field TutorialCloseXPMeterEventHandle FHermesBPDelegateHandle
---@field TutorialHighlightXPMeterEventHandle FHermesBPDelegateHandle
---@field NotificationTimerHandle FTimerHandle
---@field NotifcationDelay float
---@field ['Active Notification Stackable'] boolean
---@field FillDuration float
---@field LevelUpAnimComplete boolean
---@field PostFillDelayCompleted boolean
local UUI_BP_XPMeter_C = {}

function UUI_BP_XPMeter_C:SequenceEvent__ENTRYPOINTUI_BP_XPMeter_0() end
---@param Level int32
function UUI_BP_XPMeter_C:SetPlayerLevelText(Level) end
function UUI_BP_XPMeter_C:HideTextBackground() end
function UUI_BP_XPMeter_C:ShowTextBackground() end
function UUI_BP_XPMeter_C:ContinueCleanUp() end
---@param XPChangeData FExperienceChange
---@param Success boolean
function UUI_BP_XPMeter_C:TryIncrementActiveNotification(XPChangeData, Success) end
function UUI_BP_XPMeter_C:CleanUpLevelUpNotification() end
---@param CrestID FString
---@param EffectColor FLinearColor
function UUI_BP_XPMeter_C:GetHouseAssets(CrestID, EffectColor) end
---@param Data FExperienceChange
function UUI_BP_XPMeter_C:QueueXPGainedNotification(Data) end
---@param AwardTalentPoint boolean
UUI_BP_XPMeter_C['Show Level Up Text'] = function(self, AwardTalentPoint) end
function UUI_BP_XPMeter_C:ShowXPGain() end
function UUI_BP_XPMeter_C:Construct() end
---@param Caller UObject
function UUI_BP_XPMeter_C:OnExpNotificationApproved(Caller) end
function UUI_BP_XPMeter_C:WidgetAnimationEvt_FadeOut_K2Node_WidgetAnimationEvent_4() end
---@param Caller UObject
function UUI_BP_XPMeter_C:TutorialSaysCloseXPMeter(Caller) end
---@param Caller UObject
function UUI_BP_XPMeter_C:TutorialSaysHighlightXPMeter(Caller) end
---@param FillPct float
function UUI_BP_XPMeter_C:OnXPAdded(FillPct) end
function UUI_BP_XPMeter_C:OnXPFillWrap() end
function UUI_BP_XPMeter_C:OnFinishAddingXP() end
function UUI_BP_XPMeter_C:WidgetAnimationEvt_showXPCrest_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_XPMeter_C:PostFillDelayComplete() end
function UUI_BP_XPMeter_C:WidgetAnimationEvt_showLevelUpText_K2Node_WidgetAnimationEvent_1() end
---@param EntryPoint int32
function UUI_BP_XPMeter_C:ExecuteUbergraph_UI_BP_XPMeter(EntryPoint) end


