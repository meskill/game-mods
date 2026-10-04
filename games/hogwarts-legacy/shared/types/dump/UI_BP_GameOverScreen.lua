---@meta

---@class UUI_BP_GameOverScreen_C : UGameOverScreenBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimateScreenIn UWidgetAnimation
---@field ExitToMainMenu UUI_BP_FailButton_C
---@field LoadGameLegend UUI_BP_Legend_Horizontal_Screen_C
---@field LoadSave UUI_BP_FailButton_C
---@field LoadSaveResultPopup UBorder
---@field LoadSaveResultStr UPhoenixTextBlock
---@field menuPopup UUI_BP_ParallaxWidget_C
---@field MissionTitle UPhoenixTextBlock
---@field OptionsSwitcher UWidgetSwitcher
---@field RestartMission UUI_BP_FailButton_C
---@field SavedGames UCanvasPanel
---@field SavedGamesMenu UUI_BP_LoadMenu_C
---@field tryAgainTitle UPhoenixTextBlock
---@field deathToolTip UUI_BP_LegendPopout_C
---@field IsLoadingSaveGame boolean
---@field IsInLoadMenu boolean
local UUI_BP_GameOverScreen_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_GameOverScreen_C:GatherMenuReaderStrings(DepthLevel) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_GameOverScreen_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_GameOverScreen_C:Restart() end
---@param Filename FString
---@param CharacterID int32
function UUI_BP_GameOverScreen_C:BndEvt__SavedGamesMenu_K2Node_ComponentBoundEvent_4_OnLoadSave__DelegateSignature(Filename, CharacterID) end
---@param ResultMessage FString
---@param Duration float
function UUI_BP_GameOverScreen_C:ShowLoadSaveResultPopup(ResultMessage, Duration) end
---@param TextButton UUI_BP_FailButton_C
function UUI_BP_GameOverScreen_C:BndEvt__LastSave_K2Node_ComponentBoundEvent_2_OnClickEventDispatcher__DelegateSignature(TextButton) end
---@param TextButton UUI_BP_FailButton_C
function UUI_BP_GameOverScreen_C:BndEvt__LoadSave_K2Node_ComponentBoundEvent_1_OnClickEventDispatcher__DelegateSignature(TextButton) end
---@param TextButton UUI_BP_FailButton_C
function UUI_BP_GameOverScreen_C:BndEvt__RestartMission_K2Node_ComponentBoundEvent_0_OnClickEventDispatcher__DelegateSignature(TextButton) end
---@param TextButton UUI_BP_FailButton_C
function UUI_BP_GameOverScreen_C:BndEvt__RestartMission_K2Node_ComponentBoundEvent_3_OnButtonHoverDispatcher__DelegateSignature(TextButton) end
---@param TextButton UUI_BP_FailButton_C
function UUI_BP_GameOverScreen_C:BndEvt__LoadSave_K2Node_ComponentBoundEvent_5_OnButtonHoverDispatcher__DelegateSignature(TextButton) end
---@param TextButton UUI_BP_FailButton_C
function UUI_BP_GameOverScreen_C:BndEvt__ExitToMainMenu_K2Node_ComponentBoundEvent_6_OnButtonHoverDispatcher__DelegateSignature(TextButton) end
function UUI_BP_GameOverScreen_C:Destruct() end
function UUI_BP_GameOverScreen_C:Construct() end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_GameOverScreen_C:OnIntroStarted(IntroType, IntroDuration) end
---@param IntroType int32
function UUI_BP_GameOverScreen_C:OnIntroEnded(IntroType) end
function UUI_BP_GameOverScreen_C:CannotAbandonQuest() end
---@param ButtonText FString
function UUI_BP_GameOverScreen_C:SetRestartButtonText(ButtonText) end
---@param Caller UObject
function UUI_BP_GameOverScreen_C:LoadSaveGameFailed(Caller) end
---@param EntryPoint int32
function UUI_BP_GameOverScreen_C:ExecuteUbergraph_UI_BP_GameOverScreen(EntryPoint) end


