---@meta

---@class UUI_BP_TargetBlip_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeFinisherOut UWidgetAnimation
---@field FadeFinisherIn UWidgetAnimation
---@field ShowFinisher UWidgetAnimation
---@field ShowAlertMeter UWidgetAnimation
---@field ShowDiscoveredIcon UWidgetAnimation
---@field AlertBG UImage
---@field Burst UImage
---@field DiscoveredIcon UImage
---@field FadeDiamond UImage
---@field FinisherOverlay UCanvasPanel
---@field Left_FinisherBumper UOverlay
---@field LeftSideSwitcher UWidgetSwitcher
---@field NPC_Alert UImage
---@field NPC_Alert_Fill UImage
---@field NPC_AlertMeterGroup UCanvasPanel
---@field NPC_DiscoveredIconGroup UCanvasPanel
---@field Overlay_KBM UOverlay
---@field ResizeCanvas UCanvasPanel
---@field Right_FinisherBumper UOverlay
---@field RightSideSwitcher UWidgetSwitcher
---@field TargetBlip UImage
---@field UsingKBM_Overlay UOverlay
---@field ParentActor AActor
---@field EnemyAIComponent UBP_EnemyAI_C
---@field AwareState ENPC_TargetAwareState
---@field ObjectStateInfo UObjectStateInfo
---@field CallOutComponent UCallOutComponent
---@field WidgetSetupComplete boolean
---@field IsOffscreenWidget boolean
---@field FinisherState boolean
---@field Biped_Player ABiped_Player
---@field HasOffscreenProxy boolean
---@field IsLastTarget boolean
---@field IsAnimating boolean
local UUI_BP_TargetBlip_C = {}

---@return UWidget
function UUI_BP_TargetBlip_C:GetOffscreenIndicator() end
---@param OutroType int32
---@return float
function UUI_BP_TargetBlip_C:GetOutroDuration(OutroType) end
function UUI_BP_TargetBlip_C:SequenceEvent__ENTRYPOINTUI_BP_TargetBlip_0() end
---@param VisibilityCheck boolean
function UUI_BP_TargetBlip_C:UpdateFinisherCallout(VisibilityCheck) end
function UUI_BP_TargetBlip_C:UpdateFinisherText() end
function UUI_BP_TargetBlip_C:SetupBipedPlayer() end
function UUI_BP_TargetBlip_C:SetupCharacterBlip() end
function UUI_BP_TargetBlip_C:SetupCreatureBlip() end
function UUI_BP_TargetBlip_C:AlertAnimationFinished() end
---@param Object UObject
function UUI_BP_TargetBlip_C:Callout_TargetSighted(Object) end
---@param Object UObject
function UUI_BP_TargetBlip_C:Callout_TargetLost(Object) end
---@param Visible boolean
---@param FromUpdate boolean
function UUI_BP_TargetBlip_C:SetMeterVisibility(Visible, FromUpdate) end
---@param AwareType ENPC_TargetAwareState
function UUI_BP_TargetBlip_C:AwareStateChangeHandler(AwareType) end
---@param Unblockable boolean
---@param Revealio boolean
---@param AttackThreatState EEnemy_AttackThreatState
function UUI_BP_TargetBlip_C:AttackStateUpdate(Unblockable, Revealio, AttackThreatState) end
function UUI_BP_TargetBlip_C:InitiateAlert() end
---@param Tint_Color_Specified_Color FLinearColor
---@param Visibility ESlateVisibility
function UUI_BP_TargetBlip_C:AlertUpdate(Tint_Color_Specified_Color, Visibility) end
---@param Sense float
function UUI_BP_TargetBlip_C:SenseFloatUpdate(Sense) end
---@param AlertType ENPC_TargetAwareState
---@param FromUpdate boolean
function UUI_BP_TargetBlip_C:AwareStateChange(AlertType, FromUpdate) end
---@param CachedResult boolean
function UUI_BP_TargetBlip_C:GameLogicElementEvt_CriticalHealthFinisherTargeting_K2Node_GameLogicBoolResultEvent_0(CachedResult) end
---@param Revealio boolean
function UUI_BP_TargetBlip_C:AttackThreatDataChange(Revealio) end
function UUI_BP_TargetBlip_C:Construct() end
---@param IsOffscreen boolean
function UUI_BP_TargetBlip_C:SetIsOffscreenCallout(IsOffscreen) end
---@param bFromUpdate boolean
function UUI_BP_TargetBlip_C:AwareStateInfoChanged(bFromUpdate) end
---@param Caller UObject
function UUI_BP_TargetBlip_C:RefreshButtonCallouts(Caller) end
---@param NewState boolean
function UUI_BP_TargetBlip_C:UpdateFinisherState(NewState) end
---@param Revealio boolean
function UUI_BP_TargetBlip_C:ShowWidget(Revealio) end
---@param HasOffscreenProxy boolean
function UUI_BP_TargetBlip_C:SetHasOffscreenProxyActive(HasOffscreenProxy) end
---@param Caller UObject
---@param int int32
function UUI_BP_TargetBlip_C:ShowButtonGraphicsFlagChanged(Caller, int) end
---@param Parent AActor
---@param CallOutComponent UCallOutComponent
function UUI_BP_TargetBlip_C:SetupWidget(Parent, CallOutComponent) end
function UUI_BP_TargetBlip_C:RetargetSameEnemy() end
---@param CharacterID FName
---@param BarPercent float
function UUI_BP_TargetBlip_C:UpdateCallOutUI(CharacterID, BarPercent) end
---@param EntryPoint int32
function UUI_BP_TargetBlip_C:ExecuteUbergraph_UI_BP_TargetBlip(EntryPoint) end


