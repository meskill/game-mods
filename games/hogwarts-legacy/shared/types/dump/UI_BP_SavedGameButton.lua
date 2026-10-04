---@meta

---@class UUI_BP_SavedGameButton_C : USavedGameButton
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnHover UWidgetAnimation
---@field ShowHighlight UWidgetAnimation
---@field ContentsBox UHorizontalBox
---@field dateText UPhoenixTextBlock
---@field EmptySlotText UPhoenixTextBlock
---@field goldleafBorder UImage
---@field highlight UImage
---@field MissionNameText UPhoenixTextBlock
---@field placeText UPhoenixTextBlock
---@field PlayTimeText UPhoenixTextBlock
---@field SaveTypeText UPhoenixTextBlock
---@field SaveVersionText UPhoenixTextBlock
---@field TheButton UButton
---@field OnSavedButtonClicked FUI_BP_SavedGameButton_COnSavedButtonClicked
---@field OnSavedButtonHover FUI_BP_SavedGameButton_COnSavedButtonHover
---@field OnSavedButtonUnhover FUI_BP_SavedGameButton_COnSavedButtonUnhover
---@field buttonImage FString
---@field SaveFileName FString
---@field SaveType FString
---@field SaveInfo FSaveGameInfo
---@field OnSavedButtonPressed FUI_BP_SavedGameButton_COnSavedButtonPressed
---@field OnSavedButtonReleased FUI_BP_SavedGameButton_COnSavedButtonReleased
local UUI_BP_SavedGameButton_C = {}

---@param bIsIntroSave boolean
function UUI_BP_SavedGameButton_C:IsIntroSave(bIsIntroSave) end
---@param MissionName FString
---@param LocationName FString
---@param FallbackKey FString
---@param TitleText FString
function UUI_BP_SavedGameButton_C:SelectTitleText(MissionName, LocationName, FallbackKey, TitleText) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_SavedGameButton_C:GatherMenuReaderStrings(DepthLevel) end
---@param Filename FString
function UUI_BP_SavedGameButton_C:GetFileName(Filename) end
---@param SaveGameInfo FSaveGameInfo
function UUI_BP_SavedGameButton_C:setButtonData(SaveGameInfo) end
function UUI_BP_SavedGameButton_C:BndEvt__theButton_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_SavedGameButton_C:BndEvt__theButton_K2Node_ComponentBoundEvent_42_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_SavedGameButton_C:BndEvt__theButton_K2Node_ComponentBoundEvent_53_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_SavedGameButton_C:BndEvt__UI_BP_SavedGameButton_theButton_K2Node_ComponentBoundEvent_1_OnButtonPressedEvent__DelegateSignature() end
function UUI_BP_SavedGameButton_C:BndEvt__UI_BP_SavedGameButton_theButton_K2Node_ComponentBoundEvent_2_OnButtonReleasedEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_SavedGameButton_C:ExecuteUbergraph_UI_BP_SavedGameButton(EntryPoint) end
---@param Button UUI_BP_SavedGameButton_C
function UUI_BP_SavedGameButton_C:OnSavedButtonReleased__DelegateSignature(Button) end
---@param Button UUI_BP_SavedGameButton_C
function UUI_BP_SavedGameButton_C:OnSavedButtonPressed__DelegateSignature(Button) end
---@param Button UUI_BP_SavedGameButton_C
function UUI_BP_SavedGameButton_C:OnSavedButtonUnhover__DelegateSignature(Button) end
---@param Button UUI_BP_SavedGameButton_C
function UUI_BP_SavedGameButton_C:OnSavedButtonHover__DelegateSignature(Button) end
---@param SelectedButton UUI_BP_SavedGameButton_C
function UUI_BP_SavedGameButton_C:OnSavedButtonClicked__DelegateSignature(SelectedButton) end


