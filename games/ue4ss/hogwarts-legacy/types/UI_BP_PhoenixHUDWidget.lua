---@meta

---@class UUI_BP_PhoenixHUDWidget_C : UPhoenixHUDWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeHUD UWidgetAnimation
---@field BreakoutRingSuccess UWidgetAnimation
---@field BreakoutRingFail UWidgetAnimation
---@field SwapBreakoutButton UWidgetAnimation
---@field ActionRing UUI_BP_ActionDiamondRing_C
---@field AncientMagicHud UUI_BP_AncientMagicCollectionHUD_C
---@field AsyncCompanionLevelNotification UUI_BP_AsyncLoadWrapper_C
---@field AsyncFastTravelUnlockedNotification UUI_BP_AsyncLoadWrapper_C
---@field AsyncNotificationPanel UUI_BP_AsyncLoadWrapper_C
---@field AsyncReticule UUI_BP_AsyncLoadWrapper_C
---@field AsyncSpecialItemNotification UUI_BP_AsyncLoadWrapper_C
---@field BeaconHUDPanel UUI_BP_BeaconHUDPanel_C
---@field BossHealthMeter UUI_BP_HUD_BossMeter_C
---@field ChallengeCompleteNotification UUI_BP_ChallengeComplete_C
---@field ChallengeHud UUI_BP_ChallengeHud_C
---@field CombatBreakout UUI_BP_CombatBreakout_C
---@field CombatParry UUI_BP_CombatParry_C
---@field ComboHud UUI_BP_ComboHUD_C
---@field CreatureNurturingHUDSocket UUI_BP_CreatureNurturingHUD_Socket_C
---@field DamageIndicators UUI_BP_DamageIndicators_C
---@field DuelTechniquesHUD UUI_BP_DuelTechniques_C
---@field FinisherMeter UUI_BP_FinisherMeter_C
---@field HealthBarSwitcher UWidgetSwitcher
---@field HintHud UUI_BP_HUDHint_C
---@field LookAtWidget UUI_BP_LookAtWidget_C
---@field MapSettingsElements UCanvasPanel
---@field MeterSettingsElements UCanvasPanel
---@field MeterSettingsInvalidationBox UInvalidationBox
---@field Minimap UUI_BP_MiniMap_C
---@field MountHud UUI_BP_MountHUD_C
---@field NoDismountAllowedIcon UUI_BP_NoDismount_C
---@field NoTickWhenHidden UCanvasPanel
---@field NPCHealthMeter UUI_BP_NPCHealthMeter_C
---@field OutOfArea UUI_BP_OutOfAreaNotification_C
---@field OwlMailNotification UUI_BP_OwlMailNotification_C
---@field PCActionRing UUI_BP_ActionHUD_PC_C
---@field QuickActionsSwitcher UWidgetSwitcher
---@field QuickHealthActions UUI_BP_QuickHealthActions_C
---@field Root UCanvasPanel
---@field SpecialChallengeNotification UUI_BP_SpecialChallengeNotification_C
---@field SpellSettingsElements UCanvasPanel
---@field SpellSettingsInvalidationBox UInvalidationBox
---@field TextNotificationPanel UUI_BP_TextNotificationPanel_C
---@field TickWhenHidden UCanvasPanel
---@field UI_BP_BroomHUD UUI_BP_BroomHUD_C
---@field UI_BP_BroomRaceHUD UUI_BP_BroomRaceHUD_C
---@field UI_BP_ErrorMessage UUI_BP_ErrorMessage_C
---@field UI_BP_MissionBanner_New UUI_BP_MissionBanner_New_C
---@field UI_BP_NoFlyHud UUI_BP_NoFlyHud_C
---@field UI_BP_QuickItemHUD UUI_BP_QuickItemHUD_C
---@field UI_BP_SavingIcon UUI_BP_SavingIcon_C
---@field UI_BP_UnreadMailIcon UUI_BP_UnreadMailIcon_C
---@field UI_BP_VaseCounter UUI_BP_VaseCounter_C
---@field wanted UUI_BP_Wanted_C
---@field XpMeter UUI_BP_XPMeter_C
---@field TargetActor AActor
---@field HasTarget boolean
---@field Count int32
---@field Breakout_ButtonString FString
---@field Breakout_String_randomINT int32
---@field BreakoutComplete boolean
---@field RandomBreakout boolean
---@field HermesBindings TArray<FHermesBPDelegateHandle>
---@field ConjurationCategory FString
---@field HealthBarType EUIHealthBarType
---@field ['UI BP Broom Race HUD'] UUI_BP_BroomRaceHUD_C
---@field PreviousHealthBarType EUIHealthBarType
local UUI_BP_PhoenixHUDWidget_C = {}

---@param RenderSize FVector2D
function UUI_BP_PhoenixHUDWidget_C:GetAsyncWrapperRenderSize(RenderSize) end
---@param NewDifficulty EDifficulty
function UUI_BP_PhoenixHUDWidget_C:GameDifficultyChanged(NewDifficulty) end
function UUI_BP_PhoenixHUDWidget_C:TranslateBreakout() end
---@param Beacon UHUDCompassIcon
---@param BeaconSlot UCanvasPanelSlot
function UUI_BP_PhoenixHUDWidget_C:AddBeaconToHUD(Beacon, BeaconSlot) end
---@return UMissionBannerWidget
function UUI_BP_PhoenixHUDWidget_C:GetMissionBanner() end
function UUI_BP_PhoenixHUDWidget_C:UpdateQuickActionsHUD() end
---@param bUnreadMail boolean
function UUI_BP_PhoenixHUDWidget_C:HasUnreadMailNotification(bUnreadMail) end
---@param ShouldShow boolean
function UUI_BP_PhoenixHUDWidget_C:SetVisibilityPerWidget(ShouldShow) end
function UUI_BP_PhoenixHUDWidget_C:AdjustHUDDisplayForDemoBuilds() end
---@param ElementName FString
---@param Visibility ESlateVisibility
---@param Provider UObject
function UUI_BP_PhoenixHUDWidget_C:HandleSetElementVisibility(ElementName, Visibility, Provider) end
---@param IconName FString
---@return UHUDCompassIcon
function UUI_BP_PhoenixHUDWidget_C:MakeBeaconIcon(IconName) end
function UUI_BP_PhoenixHUDWidget_C:LayoutLoaded() end
function UUI_BP_PhoenixHUDWidget_C:DisplayAutoSave() end
---@param CachedResult boolean
function UUI_BP_PhoenixHUDWidget_C:GameLogicElementEvt_BreakoutBottom_K2Node_GameLogicBoolResultEvent_3(CachedResult) end
---@param CachedResult boolean
function UUI_BP_PhoenixHUDWidget_C:GameLogicElementEvt_BreakoutLeft_K2Node_GameLogicBoolResultEvent_2(CachedResult) end
---@param CachedResult boolean
function UUI_BP_PhoenixHUDWidget_C:GameLogicElementEvt_BreakoutRight_K2Node_GameLogicBoolResultEvent_1(CachedResult) end
---@param CachedResult boolean
function UUI_BP_PhoenixHUDWidget_C:GameLogicElementEvt_BreakoutTop_K2Node_GameLogicBoolResultEvent_0(CachedResult) end
---@param Loaded UClass
function UUI_BP_PhoenixHUDWidget_C:OnLoaded_34BC5BCD467F67EB9A5A9E95BA21BA69(Loaded) end
function UUI_BP_PhoenixHUDWidget_C:Construct() end
function UUI_BP_PhoenixHUDWidget_C:OnGameToBeSaved() end
---@param Show boolean
function UUI_BP_PhoenixHUDWidget_C:OnShowEnemyInfo(Show) end
---@param Name FName
---@param pct float
function UUI_BP_PhoenixHUDWidget_C:OnSetEnemyData(Name, pct) end
---@param ExperienceChangedData FExperienceChange
function UUI_BP_PhoenixHUDWidget_C:ExperienceChangedBP(ExperienceChangedData) end
function UUI_BP_PhoenixHUDWidget_C:OnSetHUDVisibility() end
---@param NotificationText FString
function UUI_BP_PhoenixHUDWidget_C:OnAddTextTickerNotification(NotificationText) end
---@param Show boolean
---@param IntroType int32
function UUI_BP_PhoenixHUDWidget_C:ShowConjurationUI(Show, IntroType) end
---@param Show boolean
---@param IntroType int32
function UUI_BP_PhoenixHUDWidget_C:ShowTransformationUI(Show, IntroType) end
function UUI_BP_PhoenixHUDWidget_C:Destruct() end
---@param Show boolean
function UUI_BP_PhoenixHUDWidget_C:ShowCreatureNurturingHUD(Show) end
---@param Name FString
---@param IconName FString
---@param Count int32
---@param UnlockMessage FString
function UUI_BP_PhoenixHUDWidget_C:OnAddSpecialItemNotification(Name, IconName, Count, UnlockMessage) end
---@param Caller UObject
---@param float float
function UUI_BP_PhoenixHUDWidget_C:AncMag_Pickup(Caller, float) end
function UUI_BP_PhoenixHUDWidget_C:NurturingHUDSlideOutComplete() end
---@param ElementName FString
---@param NewVisibility ESlateVisibility
---@param Provider UObject
function UUI_BP_PhoenixHUDWidget_C:SetHudElementVisibility(ElementName, NewVisibility, Provider) end
---@param Caller UObject
---@param int int32
function UUI_BP_PhoenixHUDWidget_C:CreatureFirstTimeCapture(Caller, int) end
---@param CompanionName FString
function UUI_BP_PhoenixHUDWidget_C:OnAddCompanionLevelUpNotification(CompanionName) end
function UUI_BP_PhoenixHUDWidget_C:HideMountHUD() end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_PhoenixHUDWidget_C:BndEvt__AsyncReticule_K2Node_ComponentBoundEvent_0_AsyncWrapperLoadComplete__DelegateSignature(SelfReference) end
---@param MountComponent UCreature_MountComponent
---@param bIncludeCharge boolean
function UUI_BP_PhoenixHUDWidget_C:ShowMountHUD(MountComponent, bIncludeCharge) end
---@param Target AActor
---@param ShowName boolean
---@param ShowHealth boolean
function UUI_BP_PhoenixHUDWidget_C:SetCurrentTargetActor(Target, ShowName, ShowHealth) end
---@param Caller UObject
function UUI_BP_PhoenixHUDWidget_C:HideChallengeHUD(Caller) end
---@param Caller UObject
function UUI_BP_PhoenixHUDWidget_C:AccessedTalentsPage(Caller) end
---@param HintKey FString
---@param HintPositionData FTutorialLayoutData
---@param bIgnoreShowTutorialElementsFlag boolean
---@param MaxDuration float
function UUI_BP_PhoenixHUDWidget_C:SetAndShowHintMessage(HintKey, HintPositionData, bIgnoreShowTutorialElementsFlag, MaxDuration) end
function UUI_BP_PhoenixHUDWidget_C:ClearHintMessage() end
---@param LoadedScreen UScreen
function UUI_BP_PhoenixHUDWidget_C:ConjurationScreenLoaded(LoadedScreen) end
---@param IsPersistent boolean
function UUI_BP_PhoenixHUDWidget_C:TogglePersistentStepBanner(IsPersistent) end
---@param BroomActor AFlyingBroom
function UUI_BP_PhoenixHUDWidget_C:ShowBroomHUD(BroomActor) end
function UUI_BP_PhoenixHUDWidget_C:HideBroomHUD() end
---@param Caller UObject
---@param String FString
function UUI_BP_PhoenixHUDWidget_C:SetConjurationCategory(Caller, String) end
---@param ErrorMessageKey FName
function UUI_BP_PhoenixHUDWidget_C:ShowNoFlyHUD(ErrorMessageKey) end
function UUI_BP_PhoenixHUDWidget_C:HideNoFlyHUD() end
---@param ShouldShow boolean
---@param AllowTicking boolean
---@param ShouldAnimate boolean
function UUI_BP_PhoenixHUDWidget_C:SetGlobalHudVisibility(ShouldShow, AllowTicking, ShouldAnimate) end
function UUI_BP_PhoenixHUDWidget_C:AnimateTrackingInfoWidget() end
function UUI_BP_PhoenixHUDWidget_C:SyncSettingsVisibilities() end
---@param Caller UObject
function UUI_BP_PhoenixHUDWidget_C:ShowChallengeHUD(Caller) end
---@param Entry FMailEntry
---@param DisplayPriority int32
function UUI_BP_PhoenixHUDWidget_C:OnMailRecieved(Entry, DisplayPriority) end
---@param Caller UObject
---@param int int32
function UUI_BP_PhoenixHUDWidget_C:ShowLookAtCallout(Caller, int) end
function UUI_BP_PhoenixHUDWidget_C:ReadActiveOwlMail() end
function UUI_BP_PhoenixHUDWidget_C:ShowBroomRaceHUD() end
function UUI_BP_PhoenixHUDWidget_C:HideBroomRaceHUD() end
---@param Message FName
---@param InitialTime float
function UUI_BP_PhoenixHUDWidget_C:ShowOutOfAreaAlert(Message, InitialTime) end
function UUI_BP_PhoenixHUDWidget_C:HideOutOfAreaAlert() end
---@param Time float
function UUI_BP_PhoenixHUDWidget_C:UpdateOutOfAreaAlertTimer(Time) end
---@param ChallengeID FName
---@param ChallengeCategory FName
---@param CompletedLevel int32
---@param TotalLevels int32
---@param TotalInstancesForLevel int32
function UUI_BP_PhoenixHUDWidget_C:OnAddChallengeCompleteNotification(ChallengeID, ChallengeCategory, CompletedLevel, TotalLevels, TotalInstancesForLevel) end
---@param CollectionItemID FName
---@param CollectionCategory FName
function UUI_BP_PhoenixHUDWidget_C:OnAddCollectionKnownNotification(CollectionItemID, CollectionCategory) end
---@param CollectionItemID FName
---@param CollectionCategory FName
function UUI_BP_PhoenixHUDWidget_C:OnAddCollectionObtainedNotification(CollectionItemID, CollectionCategory) end
---@param Name FString
---@param IconName FString
---@param Count int32
---@param bSpecial boolean
---@param Variation FName
function UUI_BP_PhoenixHUDWidget_C:OnAddPickupNotification(Name, IconName, Count, bSpecial, Variation) end
---@param ChallengeID FName
---@param ChallengeCategory FName
---@param CompletedAmt int32
---@param TotalRequired int32
function UUI_BP_PhoenixHUDWidget_C:OnAddChallengeUpdatedNotification(ChallengeID, ChallengeCategory, CompletedAmt, TotalRequired) end
function UUI_BP_PhoenixHUDWidget_C:Initialize() end
---@param Parent UUserWidget
function UUI_BP_PhoenixHUDWidget_C:SetParent(Parent) end
function UUI_BP_PhoenixHUDWidget_C:InEditorPostConstruct() end
---@param ChallengeID FName
---@param ChallengeCategory FName
---@param TotalRequired int32
function UUI_BP_PhoenixHUDWidget_C:OnAddChallengeUnlockedNotification(ChallengeID, ChallengeCategory, TotalRequired) end
function UUI_BP_PhoenixHUDWidget_C:FadeOutNoTick() end
function UUI_BP_PhoenixHUDWidget_C:FadeOutAllowTick() end
---@param Caller UObject
function UUI_BP_PhoenixHUDWidget_C:RefreshButtonCallouts(Caller) end
---@param IsHeld boolean
function UUI_BP_PhoenixHUDWidget_C:ToggleMissionDetailsHold(IsHeld) end
function UUI_BP_PhoenixHUDWidget_C:ShowNotificationsHUD() end
function UUI_BP_PhoenixHUDWidget_C:HideNotificationsHUD() end
---@param Name FString
---@param IconName FString
function UUI_BP_PhoenixHUDWidget_C:OnAddFastTravelUnlockedNotification(Name, IconName) end
---@param Beacon UHUDCompassIcon
function UUI_BP_PhoenixHUDWidget_C:RemoveBeaconFromHUD(Beacon) end
function UUI_BP_PhoenixHUDWidget_C:BndEvt__UI_BP_PhoenixHUDWidget_UI_BP_QuickItemHUD_K2Node_ComponentBoundEvent_1_OnFocusPotionApplied__DelegateSignature() end
function UUI_BP_PhoenixHUDWidget_C:BndEvt__UI_BP_PhoenixHUDWidget_UI_BP_QuickItemHUD_K2Node_ComponentBoundEvent_2_OnFocusPotionExpired__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_PhoenixHUDWidget_C:ExecuteUbergraph_UI_BP_PhoenixHUDWidget(EntryPoint) end


