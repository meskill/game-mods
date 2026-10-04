---@meta

---@class UUI_BP_WbGamesSignin_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowPopup UWidgetAnimation
---@field FrameSparkles UWidgetAnimation
---@field ShowCopyText UWidgetAnimation
---@field AccountsPanel UVerticalBox
---@field bg_tonedown UPhoenixImage
---@field ContinueButton UUI_BP_MenuTextButton_C
---@field CurseForge_ID_Txt UPhoenixTextBlock
---@field DisplayAccount_Btn_1 UUI_BP_MenuTextButton_C
---@field DisplayAccount_Btn_2 UUI_BP_MenuTextButton_C
---@field divider UImage
---@field Divider2 UImage
---@field HouseNameText UPhoenixTextBlock
---@field Hydra_ID_Txt UPhoenixTextBlock
---@field LegendBar UUI_BP_Legend_Horizontal_Screen_C
---@field LinkAccountsButton UUI_BP_MenuTextButton_C
---@field LinkAcctPopup UUI_BP_PopUpLinkingAcounts_C
---@field LocalProfileText UPhoenixTextBlock
---@field mainContent UScaleBox
---@field MainContentsPanel UHorizontalBox
---@field ManageConnectionsButton_1 UUI_BP_MenuTextButton_C
---@field NetworkConnectionErrorPanel UVerticalBox
---@field NetworkConnectionErrorText UPhoenixTextBlock
---@field OnlineSignInHeader UPhoenixTextBlock
---@field QR_Code UPhoenixImage
---@field RetryConnectionButton UUI_BP_MenuTextButton_C
---@field RetryConnectionSpinner UUI_BP_LoadDoor_C
---@field RightHandSwitcher UWidgetSwitcher
---@field SignInBonusText UPhoenixTextBlock
---@field skipSignInButton UUI_BP_MenuTextButton_C
---@field SparklesParticles UPhoenixImage
---@field SparklesParticles_1 UPhoenixImage
---@field TextCopiedMsg UPhoenixTextBlock
---@field UnlinkButton_SignIn UUI_BP_MenuTextButton_C
---@field WandDescriptionText UPhoenixTextBlock
---@field WBandWWLogos UPhoenixImage
---@field WBGames_ID_Txt UPhoenixTextBlock
---@field WizardingWorld_ID_Txt UPhoenixTextBlock
---@field WBSignInContinue FUI_BP_WbGamesSignin_CWBSignInContinue
---@field SigninUrl FString
---@field SigninShortcode FString
---@field ExpirationPopup UPopupScreen
---@field bInSettingsMenu boolean
---@field ShowingRewards FUI_BP_WbGamesSignin_CShowingRewards
---@field WBUnlinkFlow FUI_BP_WbGamesSignin_CWBUnlinkFlow
---@field bUnlinking boolean
---@field PrimaryLegend FLegendItemData
---@field LinkingComplete boolean
---@field bDisconnectPopupShowing boolean
---@field NetworkDisconnectedPopup UPopupScreen
---@field bInLinkingFlow boolean
---@field ConnectionStatus_WW FString
---@field ConnectionStatus_CF FString
---@field AccountUrl FString
local UUI_BP_WbGamesSignin_C = {}

function UUI_BP_WbGamesSignin_C:PopulateAccountData() end
function UUI_BP_WbGamesSignin_C:AdjustForViewportWidth() end
function UUI_BP_WbGamesSignin_C:PopulateWWData() end
---@param ShowPopup boolean
function UUI_BP_WbGamesSignin_C:ToggleLinkingPopup(ShowPopup) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_WbGamesSignin_C:GatherMenuReaderStrings(DepthLevel) end
---@param FirstCall boolean
function UUI_BP_WbGamesSignin_C:DisplayNextRewardNotification(FirstCall) end
function UUI_BP_WbGamesSignin_C:UpdateForSettingsMenu() end
---@param ResponseVal int32
function UUI_BP_WbGamesSignin_C:DebugLogWBSigninResponse(ResponseVal) end
function UUI_BP_WbGamesSignin_C:RefreshSignInCodes() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_WbGamesSignin_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_WbGamesSignin_C:Destruct() end
---@param Caller UObject
function UUI_BP_WbGamesSignin_C:RetryConnectionFailed(Caller) end
function UUI_BP_WbGamesSignin_C:OnRewardNotificationClosed() end
---@param Caller UObject
---@param Response int32
function UUI_BP_WbGamesSignin_C:WBPNDeviceFlowResponse(Caller, Response) end
---@param PopupScreen UPopupScreen
---@param CompletionActionIndex int32
function UUI_BP_WbGamesSignin_C:PopupDismissed(PopupScreen, CompletionActionIndex) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_LinkAccountsButton_K2Node_ComponentBoundEvent_2_MenuTextButtonClicked__DelegateSignature(Button) end
function UUI_BP_WbGamesSignin_C:BlueprintFocusAcquired() end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_RetryConnectionButton_K2Node_ComponentBoundEvent_3_MenuTextButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_LinkAccountsButton_K2Node_ComponentBoundEvent_6_MenuTextButtonHovered__DelegateSignature(Button) end
---@param Caller UObject
---@param Response int32
function UUI_BP_WbGamesSignin_C:WBPNDeviceCodeExpired(Caller, Response) end
---@param Caller UObject
---@param Response int32
function UUI_BP_WbGamesSignin_C:WBPNLinkStatusChanged(Caller, Response) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_UI_BP_MenuTextButton_K2Node_ComponentBoundEvent_0_MenuTextButtonClicked__DelegateSignature(Button) end
---@param PopupScreen UPopupScreen
---@param CompletionActionIndex int32
function UUI_BP_WbGamesSignin_C:PopupClosed(PopupScreen, CompletionActionIndex) end
---@param Caller UObject
function UUI_BP_WbGamesSignin_C:ResolutionSettingsApplied(Caller) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_skipSignInButton_K2Node_ComponentBoundEvent_4_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_skipSignInButton_K2Node_ComponentBoundEvent_5_MenuTextButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_ContinueButton_K2Node_ComponentBoundEvent_7_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_ContinueButton_2_K2Node_ComponentBoundEvent_8_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_DisplayAccount_Btn_1_K2Node_ComponentBoundEvent_9_MenuTextButtonClicked__DelegateSignature(Button) end
function UUI_BP_WbGamesSignin_C:Construct() end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_UnlinkButton_SignIn_K2Node_ComponentBoundEvent_10_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_ManageConnectionsButton_1_K2Node_ComponentBoundEvent_11_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_DisplayAccount_Btn_1_K2Node_ComponentBoundEvent_13_MenuTextButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_DisplayAccount_Btn_2_K2Node_ComponentBoundEvent_14_MenuTextButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_WbGamesSignin_C:BndEvt__UI_BP_WbGamesSignin_ManageConnectionsButton_1_K2Node_ComponentBoundEvent_15_MenuTextButtonHovered__DelegateSignature(Button) end
---@param EntryPoint int32
function UUI_BP_WbGamesSignin_C:ExecuteUbergraph_UI_BP_WbGamesSignin(EntryPoint) end
function UUI_BP_WbGamesSignin_C:WBUnlinkFlow__DelegateSignature() end
function UUI_BP_WbGamesSignin_C:ShowingRewards__DelegateSignature() end
function UUI_BP_WbGamesSignin_C:WBSignInContinue__DelegateSignature() end


