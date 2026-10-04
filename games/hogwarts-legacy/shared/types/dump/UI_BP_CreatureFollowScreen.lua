---@meta

---@class UUI_BP_CreatureFollowScreen_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Legend_OUT UWidgetAnimation
---@field ShowErrorMessage UWidgetAnimation
---@field CreatureNameText UPhoenixTextBlock
---@field creatureStatusWidget UUI_BP_CreatureStatusWidget_C
---@field DPad_Left UPhoenixRichTextBlock
---@field Dpad_Right UPhoenixRichTextBlock
---@field dpadSwitcher UHorizontalBox
---@field ErrorMessageText UPhoenixTextBlock
---@field ScreenLegend UUI_BP_Legend_Horizontal_Screen_C
---@field Creature AActor
---@field CreatureState UCreatureState
---@field OnCreatureChanged FUI_BP_CreatureFollowScreen_COnCreatureChanged
---@field SpecialHoldRequiredDuration float
---@field RenamePopupIsOpen boolean
---@field IsScreenExitingToRenamePopup boolean
---@field AbandonWidget UUI_BP_CreatureAbandonWidget_C
---@field LegendItemHarvestReturn ULegendItem
---@field LegendItemRename ULegendItem
---@field LegendItemRelease ULegendItem
---@field LegendItemShowHide ULegendItem
---@field LegendItemBack ULegendItem
---@field LegendSummonCreature ULegendItem
---@field UIVisible boolean
---@field IsScreenExitingFromCreatureReleased boolean
---@field HidNurturingHUDSocket boolean
---@field RenamePopupLoading boolean
---@field LegendData TArray<FLegendItemData>
---@field LegendIdx int32
---@field OnCreatureSummoned FUI_BP_CreatureFollowScreen_COnCreatureSummoned
---@field CreatureIsSummoned boolean
---@field ParentCreatureManagementScreen UUI_BP_CreatureManagementScreen_C
local UUI_BP_CreatureFollowScreen_C = {}

---@param RenderSize FVector2D
function UUI_BP_CreatureFollowScreen_C:GetAsyncWrapperRenderSize(RenderSize) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_CreatureFollowScreen_C:GatherMenuReaderStrings(DepthLevel) end
---@return boolean
function UUI_BP_CreatureFollowScreen_C:IsInAbandonConfirmation() end
function UUI_BP_CreatureFollowScreen_C:UpdateDPadVisibility() end
function UUI_BP_CreatureFollowScreen_C:SwitchToPreviousCreature() end
function UUI_BP_CreatureFollowScreen_C:SwitchToNextCreature() end
---@param LoadedScreen UScreen
function UUI_BP_CreatureFollowScreen_C:RenamePopupLoaded(LoadedScreen) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_CreatureFollowScreen_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_CreatureFollowScreen_C:ToggleUIVisible() end
UUI_BP_CreatureFollowScreen_C['Start or Harvest Byproduct'] = function(self, ) end
function UUI_BP_CreatureFollowScreen_C:RenameCreature() end
function UUI_BP_CreatureFollowScreen_C:ShowAbandonPopup() end
---@param ToRenameScreen boolean
function UUI_BP_CreatureFollowScreen_C:TriggerExitScreen(ToRenameScreen) end
function UUI_BP_CreatureFollowScreen_C:GiveFocusToStatusWidget() end
function UUI_BP_CreatureFollowScreen_C:UpdateLegend() end
---@param Message FString
function UUI_BP_CreatureFollowScreen_C:DisplayErrorMessage(Message) end
function UUI_BP_CreatureFollowScreen_C:Initialize() end
function UUI_BP_CreatureFollowScreen_C:InEditorPostConstruct() end
---@param Parent UUserWidget
function UUI_BP_CreatureFollowScreen_C:SetParent(Parent) end
function UUI_BP_CreatureFollowScreen_C:Construct() end
function UUI_BP_CreatureFollowScreen_C:Destruct() end
---@param InputText FText
function UUI_BP_CreatureFollowScreen_C:OnRenameConfirmed(InputText) end
function UUI_BP_CreatureFollowScreen_C:OnRenameCancelled() end
---@param DestroyedActor AActor
function UUI_BP_CreatureFollowScreen_C:OnCreatureDestroyed(DestroyedActor) end
---@param RotateToFaceCreature boolean
function UUI_BP_CreatureFollowScreen_C:SetCamera(RotateToFaceCreature) end
function UUI_BP_CreatureFollowScreen_C:OnNeedsChanged() end
---@param Caller UObject
function UUI_BP_CreatureFollowScreen_C:CreatureAbandon_OnClosed(Caller) end
---@param Caller UObject
function UUI_BP_CreatureFollowScreen_C:CreatureAbandon_OnConfirm(Caller) end
function UUI_BP_CreatureFollowScreen_C:OnByproductCooldownEnded() end
function UUI_BP_CreatureFollowScreen_C:OnCreatureActorSpawned() end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_CreatureFollowScreen_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_CreatureFollowScreen_C:OnOutroStarted(OutroType, OutroDuration) end
---@param OutroType int32
function UUI_BP_CreatureFollowScreen_C:OnOutroEnded(OutroType) end
---@param IntroType int32
function UUI_BP_CreatureFollowScreen_C:OnIntroEnded(IntroType) end
---@param EntryPoint int32
function UUI_BP_CreatureFollowScreen_C:ExecuteUbergraph_UI_BP_CreatureFollowScreen(EntryPoint) end
function UUI_BP_CreatureFollowScreen_C:OnCreatureSummoned__DelegateSignature() end
function UUI_BP_CreatureFollowScreen_C:OnCreatureChanged__DelegateSignature() end


