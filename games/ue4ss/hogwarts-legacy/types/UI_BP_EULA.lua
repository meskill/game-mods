---@meta

---@class UUI_BP_EULA_C : UEULAPageWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeOut UWidgetAnimation
---@field accept UUI_BP_HYDRATextButton_C
---@field AcceptText UPhoenixRichTextBlock
---@field BuildVersion UPhoenixTextBlock
---@field doNotSell UUI_BP_HYDRATextButton_C
---@field EULAscrollBox UUI_BP_SimpleScrollBox_C
---@field Hydra_ID UPhoenixTextBlock
---@field LegendBar UUI_BP_Legend_Horizontal_Screen_C
---@field mainBodyText UPhoenixRichTextBlock
---@field PrivacyPolicy UUI_BP_HYDRATextButton_C
---@field ProfileName UPhoenixTextBlock
---@field ReadEULA UUI_BP_HYDRATextButton_C
---@field termsOfService UUI_BP_HYDRATextButton_C
---@field ScrollBuffer float
---@field ppLink FString
---@field tosLink FString
---@field AcceptedEULA boolean
---@field StandAloneMode boolean
---@field EulaAccepted FUI_BP_EULA_CEulaAccepted
---@field IsOnScreen boolean
---@field tosPlatform FString
---@field doNotSellLink FString
---@field CurrentEulaAccepted FUI_BP_EULA_CCurrentEulaAccepted
local UUI_BP_EULA_C = {}

function UUI_BP_EULA_C:DoNotSellClicked() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_EULA_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_EULA_C:PrivacyClicked() end
function UUI_BP_EULA_C:TOSClicked() end
function UUI_BP_EULA_C:AcceptClicked() end
function UUI_BP_EULA_C:ReadEULAClicked() end
function UUI_BP_EULA_C:UpdateButtonTexts() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_EULA_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_EULA_C:SetIsOnScreen() end
function UUI_BP_EULA_C:Construct() end
---@param Button UUI_BP_HYDRATextButton_C
function UUI_BP_EULA_C:BndEvt__accept_K2Node_ComponentBoundEvent_0_HYDRATextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_HYDRATextButton_C
function UUI_BP_EULA_C:BndEvt__termsOfService_K2Node_ComponentBoundEvent_1_HYDRATextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_HYDRATextButton_C
function UUI_BP_EULA_C:BndEvt__privacyPolicy_K2Node_ComponentBoundEvent_2_HYDRATextButtonClicked__DelegateSignature(Button) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_EULA_C:OnOutroStarted(OutroType, OutroDuration) end
---@param OutroType int32
function UUI_BP_EULA_C:OnOutroEnded(OutroType) end
---@param Caller UObject
function UUI_BP_EULA_C:EULALoaded(Caller) end
---@param Caller UObject
function UUI_BP_EULA_C:RefreshButtonCallouts(Caller) end
---@param Button UUI_BP_HYDRATextButton_C
function UUI_BP_EULA_C:BndEvt__UI_BP_EULA_accept_K2Node_ComponentBoundEvent_3_HYDRATextButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_HYDRATextButton_C
function UUI_BP_EULA_C:BndEvt__UI_BP_EULA_termsOfService_K2Node_ComponentBoundEvent_4_HYDRATextButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_HYDRATextButton_C
function UUI_BP_EULA_C:BndEvt__UI_BP_EULA_privacyPolicy_K2Node_ComponentBoundEvent_5_HYDRATextButtonHovered__DelegateSignature(Button) end
function UUI_BP_EULA_C:BlueprintFocusAcquired() end
---@param Button UUI_BP_HYDRATextButton_C
function UUI_BP_EULA_C:BndEvt__UI_BP_EULA_ReadEULA_K2Node_ComponentBoundEvent_6_HYDRATextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_HYDRATextButton_C
function UUI_BP_EULA_C:BndEvt__UI_BP_EULA_ReadEULA_K2Node_ComponentBoundEvent_7_HYDRATextButtonHovered__DelegateSignature(Button) end
---@param Caller UObject
function UUI_BP_EULA_C:ExternalConfigUpdated(Caller) end
function UUI_BP_EULA_C:RefreshReadEulaButton() end
---@param Caller UObject
---@param String FString
function UUI_BP_EULA_C:UserProfileChange(Caller, String) end
---@param Button UUI_BP_HYDRATextButton_C
function UUI_BP_EULA_C:BndEvt__UI_BP_EULA_doNotSell_K2Node_ComponentBoundEvent_8_HYDRATextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_HYDRATextButton_C
function UUI_BP_EULA_C:BndEvt__UI_BP_EULA_doNotSell_K2Node_ComponentBoundEvent_10_HYDRATextButtonHovered__DelegateSignature(Button) end
function UUI_BP_EULA_C:RefreshDoNotSellButton() end
---@param EntryPoint int32
function UUI_BP_EULA_C:ExecuteUbergraph_UI_BP_EULA(EntryPoint) end
function UUI_BP_EULA_C:CurrentEulaAccepted__DelegateSignature() end
function UUI_BP_EULA_C:EulaAccepted__DelegateSignature() end


