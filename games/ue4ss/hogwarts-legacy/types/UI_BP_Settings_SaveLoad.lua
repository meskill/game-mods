---@meta

---@class UUI_BP_Settings_SaveLoad_C : USaveLoadSettingsWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field hideDetails UWidgetAnimation
---@field showDetails UWidgetAnimation
---@field ToLoadList UWidgetAnimation
---@field button_exit UUI_BP_MenuTextButton_C
---@field button_exitToMain UUI_BP_MenuTextButton_C
---@field button_hoverDrone UUI_BP_MenuTextButton_C
---@field button_load UUI_BP_MenuTextButton_C
---@field button_restart UUI_BP_MenuTextButton_C
---@field button_save UUI_BP_MenuTextButton_C
---@field detailsPanel UUI_BP_SettingsDetails_C
---@field scrollingTextTestButton UUI_BP_ScrollingTextTestButton_C
---@field ButtonArray TArray<UUI_BP_MenuTextButton_C>
---@field isButtonHovered boolean
---@field CurrentHoverTime float
---@field RequiredHoverTime float
---@field isDetailsShowing boolean
---@field HoveredButtonText FString
---@field RestartFromLastSaveFail FUI_BP_Settings_SaveLoad_CRestartFromLastSaveFail
local UUI_BP_Settings_SaveLoad_C = {}

---@param RenderSize FVector2D
function UUI_BP_Settings_SaveLoad_C:GetAsyncWrapperRenderSize(RenderSize) end
function UUI_BP_Settings_SaveLoad_C:SequenceEvent__ENTRYPOINTUI_BP_Settings_SaveLoad_0() end
function UUI_BP_Settings_SaveLoad_C:ResetTooltipShowing() end
function UUI_BP_Settings_SaveLoad_C:Initialize() end
function UUI_BP_Settings_SaveLoad_C:InEditorPostConstruct() end
---@param Parent UUserWidget
function UUI_BP_Settings_SaveLoad_C:SetParent(Parent) end
function UUI_BP_Settings_SaveLoad_C:Construct() end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_Settings_SaveLoad_C:BndEvt__button_restart_K2Node_ComponentBoundEvent_0_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_Settings_SaveLoad_C:BndEvt__button_load_K2Node_ComponentBoundEvent_2_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_Settings_SaveLoad_C:BndEvt__button_exitToMain_K2Node_ComponentBoundEvent_3_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_Settings_SaveLoad_C:BndEvt__button_exit_K2Node_ComponentBoundEvent_4_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_Settings_SaveLoad_C:BndEvt__button_hoverDrone_K2Node_ComponentBoundEvent_5_MenuTextButtonClicked__DelegateSignature(Button) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_Settings_SaveLoad_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_Settings_SaveLoad_C:OnOutroStarted(OutroType, OutroDuration) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_Settings_SaveLoad_C:MenuButtonHovered(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_Settings_SaveLoad_C:MenuButtonUnhovered(Button) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_Settings_SaveLoad_C:Tick(MyGeometry, InDeltaTime) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_Settings_SaveLoad_C:BndEvt__UI_BP_Settings_SaveLoad_button_save_K2Node_ComponentBoundEvent_1_MenuTextButtonClicked__DelegateSignature(Button) end
---@param PopupScreen UPopupScreen
---@param CompletionActionIndex int32
function UUI_BP_Settings_SaveLoad_C:OnSavePopup(PopupScreen, CompletionActionIndex) end
---@param PopupScreen UPopupScreen
---@param CompletionActionIndex int32
function UUI_BP_Settings_SaveLoad_C:OnExitGamePopupClosed(PopupScreen, CompletionActionIndex) end
---@param PopupScreen UPopupScreen
---@param CompletionActionIndex int32
function UUI_BP_Settings_SaveLoad_C:OnRestartPopupClosed(PopupScreen, CompletionActionIndex) end
---@param Caller UObject
function UUI_BP_Settings_SaveLoad_C:LoadSaveGameFailed(Caller) end
---@param EntryPoint int32
function UUI_BP_Settings_SaveLoad_C:ExecuteUbergraph_UI_BP_Settings_SaveLoad(EntryPoint) end
function UUI_BP_Settings_SaveLoad_C:RestartFromLastSaveFail__DelegateSignature() end


