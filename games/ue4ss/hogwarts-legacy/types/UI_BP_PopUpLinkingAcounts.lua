---@meta

---@class UUI_BP_PopUpLinkingAcounts_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TransitionToMessage UWidgetAnimation
---@field ShowCopiedText UWidgetAnimation
---@field connectingPopup UOverlay
---@field Description UPhoenixTextBlock
---@field linkInfoPanel UVerticalBox
---@field Linkmesage UPhoenixTextBlock
---@field PopupContents UVerticalBox
---@field popupMessage UPhoenixTextBlock
---@field QR_Code UPhoenixImage
---@field ShortcodeButton UButton
---@field ShortcodeDesc UPhoenixTextBlock
---@field ShortcodeText UPhoenixTextBlock
---@field ShortcodeTitle UPhoenixTextBlock
---@field TextCopied UPhoenixTextBlock
---@field Title UPhoenixTextBlock
---@field UI_BP_LoadDoor UUI_BP_LoadDoor_C
---@field UrlButton UButton
---@field UrlText UPhoenixTextBlock
---@field SigninUrl FString
---@field SigninShortcode FString
local UUI_BP_PopUpLinkingAcounts_C = {}

function UUI_BP_PopUpLinkingAcounts_C:ShowLinkPopup() end
function UUI_BP_PopUpLinkingAcounts_C:UpdateUnlinkData() end
function UUI_BP_PopUpLinkingAcounts_C:ResetToDefaultState() end
function UUI_BP_PopUpLinkingAcounts_C:ShowPopup() end
function UUI_BP_PopUpLinkingAcounts_C:HidePopup() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_PopUpLinkingAcounts_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_PopUpLinkingAcounts_C:UpdatePopupData() end
function UUI_BP_PopUpLinkingAcounts_C:BndEvt__UI_BP_PopUpLinkingAcounts_UrlButton_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_PopUpLinkingAcounts_C:BndEvt__UI_BP_PopUpLinkingAcounts_UrlButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_PopUpLinkingAcounts_C:BndEvt__UI_BP_PopUpLinkingAcounts_UrlButton_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_PopUpLinkingAcounts_C:BndEvt__UI_BP_PopUpLinkingAcounts_ShortcodeButton_K2Node_ComponentBoundEvent_3_OnButtonClickedEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_PopUpLinkingAcounts_C:ExecuteUbergraph_UI_BP_PopUpLinkingAcounts(EntryPoint) end


