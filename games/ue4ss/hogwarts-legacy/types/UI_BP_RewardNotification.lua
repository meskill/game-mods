---@meta

---@class UUI_BP_RewardNotification_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HidePopup UWidgetAnimation
---@field ShowPopup UWidgetAnimation
---@field Claim UWidgetAnimation
---@field ShowCopyText UWidgetAnimation
---@field bonusImage UImage
---@field ClaimRewardButton UUI_BP_MenuTextButton_C
---@field ClaimRewardPanel UVerticalBox
---@field OnlineRewardName UPhoenixTextBlock
---@field OnlineRewardText UPhoenixTextBlock
---@field RewardEarnedText UPhoenixTextBlock
---@field SparklesParticles UPhoenixImage
---@field tutorialBackImage UPhoenixImage
---@field WBSignInContinue FUI_BP_RewardNotification_CWBSignInContinue
---@field SigninUrl FString
---@field SigninShortcode FString
---@field ExpirationPopup UPopupScreen
---@field bDeviceFlow boolean
---@field bInSettingsMenu boolean
---@field CloseRewardNotification FUI_BP_RewardNotification_CCloseRewardNotification
---@field RewardID FString
local UUI_BP_RewardNotification_C = {}

function UUI_BP_RewardNotification_C:SequenceEvent__ENTRYPOINTUI_BP_RewardNotification_0() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_RewardNotification_C:GatherMenuReaderStrings(DepthLevel) end
---@param RewardName FString
function UUI_BP_RewardNotification_C:SetRewardName(RewardName) end
function UUI_BP_RewardNotification_C:HidePopupComplete() end
function UUI_BP_RewardNotification_C:Construct() end
function UUI_BP_RewardNotification_C:Destruct() end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_RewardNotification_C:BndEvt__UI_BP_RewardNotification_ClaimRewardButton_K2Node_ComponentBoundEvent_1_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_RewardNotification_C:BndEvt__UI_BP_RewardNotification_ClaimRewardButton_K2Node_ComponentBoundEvent_0_MenuTextButtonHovered__DelegateSignature(Button) end
---@param EntryPoint int32
function UUI_BP_RewardNotification_C:ExecuteUbergraph_UI_BP_RewardNotification(EntryPoint) end
function UUI_BP_RewardNotification_C:CloseRewardNotification__DelegateSignature() end
function UUI_BP_RewardNotification_C:WBSignInContinue__DelegateSignature() end


