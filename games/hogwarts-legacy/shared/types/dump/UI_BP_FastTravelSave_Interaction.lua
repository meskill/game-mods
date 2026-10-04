---@meta

---@class UUI_BP_FastTravelSave_Interaction_C : UScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field showFastTravelMenu UWidgetAnimation
---@field backItem UUI_BP_FastTravelInteraction_Item_C
---@field ClickableBackButton UButton
---@field companionItem UUI_BP_FastTravelInteraction_Item_C
---@field Legend UUI_BP_LegendItem_C
---@field waitItem UUI_BP_FastTravelInteraction_Item_C
---@field StationComponent UStationComponent
---@field Actions TArray<FStationQueryData>
---@field EnteredStation boolean
---@field Popout UUI_BP_BasicToolTipPopout_C
---@field ActionMap TMap<FName, int32>
---@field OnlyLeave boolean
---@field AITree UBTTask_AvaAITree
---@field OptionArray TArray<UUI_BP_FastTravelInteraction_Item_C>
---@field currentOptionIndex int32
---@field currentOptionButton UUI_BP_FastTravelInteraction_Item_C
---@field maxOptions int32
---@field ButtonPressedHere boolean
---@field WaitingTutorialActive boolean
---@field WaitSceneRigActor ASceneRigActor
local UUI_BP_FastTravelSave_Interaction_C = {}

function UUI_BP_FastTravelSave_Interaction_C:RefreshShouldShowCursor() end
function UUI_BP_FastTravelSave_Interaction_C:UpdateEnabledOptions() end
---@param WaitEnabled boolean
function UUI_BP_FastTravelSave_Interaction_C:SetWaitEnable(WaitEnabled) end
---@param OptionsAvailable boolean
function UUI_BP_FastTravelSave_Interaction_C:AnyOptionsEnabled(OptionsAvailable) end
---@param NumberAvailable int32
UUI_BP_FastTravelSave_Interaction_C['Get First Enabled Option'] = function(self, NumberAvailable) end
---@param NumberAvailable int32
function UUI_BP_FastTravelSave_Interaction_C:GetNumberOfEnabledButtons(NumberAvailable) end
function UUI_BP_FastTravelSave_Interaction_C:MoveToPreviousAvailableOption() end
function UUI_BP_FastTravelSave_Interaction_C:MoveToNextAvailableOption() end
---@param FastTravelButton UUI_BP_FastTravelInteraction_Item_C
function UUI_BP_FastTravelSave_Interaction_C:SelectedOption(FastTravelButton) end
function UUI_BP_FastTravelSave_Interaction_C:SetButtonBindings() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_FastTravelSave_Interaction_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_FastTravelSave_Interaction_C:PreviousOption() end
function UUI_BP_FastTravelSave_Interaction_C:NextOption() end
---@param Button UUI_BP_FastTravelInteraction_Item_C
function UUI_BP_FastTravelSave_Interaction_C:OnButtonHovered(Button) end
---@param Enabled boolean
function UUI_BP_FastTravelSave_Interaction_C:Camera(Enabled) end
function UUI_BP_FastTravelSave_Interaction_C:CleanupandLeaveStation() end
function UUI_BP_FastTravelSave_Interaction_C:Construct() end
function UUI_BP_FastTravelSave_Interaction_C:Destruct() end
function UUI_BP_FastTravelSave_Interaction_C:ClassLoaded() end
---@param Caller UObject
function UUI_BP_FastTravelSave_Interaction_C:StationStoryEnded(Caller) end
---@param Caller UObject
function UUI_BP_FastTravelSave_Interaction_C:CloseStationInteraction(Caller) end
---@param HintKey FString
function UUI_BP_FastTravelSave_Interaction_C:TriggerHint(HintKey) end
function UUI_BP_FastTravelSave_Interaction_C:ClearHint() end
---@param Caller UObject
function UUI_BP_FastTravelSave_Interaction_C:RefreshButtonCallouts(Caller) end
---@param Button UUI_BP_FastTravelInteraction_Item_C
UUI_BP_FastTravelSave_Interaction_C['On Button Hovered'] = function(self, Button) end
---@param Button UUI_BP_FastTravelInteraction_Item_C
UUI_BP_FastTravelSave_Interaction_C['On Button Clicked'] = function(self, Button) end
function UUI_BP_FastTravelSave_Interaction_C:BndEvt__UI_BP_FastTravelSave_Interaction_ClickableBackButton_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_FastTravelSave_Interaction_C:ExecuteUbergraph_UI_BP_FastTravelSave_Interaction(EntryPoint) end


