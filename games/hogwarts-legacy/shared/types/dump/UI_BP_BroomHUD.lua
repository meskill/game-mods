---@meta

---@class UUI_BP_BroomHUD_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideBroomControls UWidgetAnimation
---@field ShowBroomControls UWidgetAnimation
---@field ShowAndHideBroomControls UWidgetAnimation
---@field HideBroomHUD UWidgetAnimation
---@field ShowBroomHUD UWidgetAnimation
---@field AscendDescendCallout UUI_BP_LegendItem_C
---@field BoostCallout UUI_BP_LegendItem_C
---@field BroomBoostMeter UUI_BP_BroomBoostMeter_C
---@field broomCalloutBorder UBorder
---@field CalloutsBox UVerticalBox
---@field collapsedCallout UBorder
---@field DismountCallout UUI_BP_LegendItem_C
---@field expandableBroomCallouts UExpandableArea
---@field FlightCallouts UVerticalBox
---@field healthMeterProgress USizeBox
---@field healthPanel UCanvasPanel
---@field healthProgressBar UProgressBar
---@field HoldFlyCallout UUI_BP_LegendItem_C
---@field InvalidationBoxBroomHUD UInvalidationBox
---@field KeyboardFlyCallout UUI_BP_LegendItem_C
---@field ToggleFlyCallout UUI_BP_LegendItem_C
---@field FlyingBroom AFlyingBroom
---@field ShowControlsHandle FHermesBPDelegateHandle
---@field ShowControlsHoldHandle FHermesBPDelegateHandle
---@field HideControlsHandle FHermesBPDelegateHandle
---@field InputDeviceChangedHandle FHermesBPDelegateHandle
---@field IsShown boolean
---@field showHealthMeter boolean
---@field ControlsHeld boolean
local UUI_BP_BroomHUD_C = {}

function UUI_BP_BroomHUD_C:SequenceEvent__ENTRYPOINTUI_BP_BroomHUD_4() end
function UUI_BP_BroomHUD_C:SequenceEvent__ENTRYPOINTUI_BP_BroomHUD_3() end
function UUI_BP_BroomHUD_C:SequenceEvent__ENTRYPOINTUI_BP_BroomHUD_2() end
function UUI_BP_BroomHUD_C:SequenceEvent__ENTRYPOINTUI_BP_BroomHUD_1() end
function UUI_BP_BroomHUD_C:SequenceEvent__ENTRYPOINTUI_BP_BroomHUD_0() end
---@param ShowHealthBar boolean
function UUI_BP_BroomHUD_C:SetHealthBarVisibility(ShowHealthBar) end
function UUI_BP_BroomHUD_C:SetToggleText() end
function UUI_BP_BroomHUD_C:ConditionallyShowKeyboardControls() end
function UUI_BP_BroomHUD_C:HideControls() end
---@param Hold boolean
function UUI_BP_BroomHUD_C:ShowControls(Hold) end
---@param Target AActor
---@param InHealthChange float
---@param bIndicateHUD boolean
function UUI_BP_BroomHUD_C:OnHealthChanged(Target, InHealthChange, bIndicateHUD) end
function UUI_BP_BroomHUD_C:SetBroomCallouts() end
---@param FlyingBroom AFlyingBroom
function UUI_BP_BroomHUD_C:Show(FlyingBroom) end
function UUI_BP_BroomHUD_C:Hide() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_BroomHUD_C:Tick(MyGeometry, InDeltaTime) end
---@param IsDesignTime boolean
function UUI_BP_BroomHUD_C:PreConstruct(IsDesignTime) end
function UUI_BP_BroomHUD_C:WidgetAnimationEvt_HideBroomHUD_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_BroomHUD_C:OnInitialized() end
---@param Caller UObject
function UUI_BP_BroomHUD_C:OnBroomBoostAllowed(Caller) end
---@param Caller UObject
function UUI_BP_BroomHUD_C:OnBroomBoostDisallowed(Caller) end
---@param Caller UObject
function UUI_BP_BroomHUD_C:OnBroomForceHoverEnabled(Caller) end
---@param Caller UObject
function UUI_BP_BroomHUD_C:OnBroomForceHoverDisabled(Caller) end
---@param Caller UObject
function UUI_BP_BroomHUD_C:OnBroomDismountAllowed(Caller) end
---@param Caller UObject
function UUI_BP_BroomHUD_C:OnBroomDismountDisallowed(Caller) end
---@param Caller UObject
function UUI_BP_BroomHUD_C:OnBroomInputEnabled(Caller) end
---@param Caller UObject
function UUI_BP_BroomHUD_C:OnBroomInputDisabled(Caller) end
---@param Caller UObject
function UUI_BP_BroomHUD_C:BroomSaysShowControls(Caller) end
---@param Caller UObject
function UUI_BP_BroomHUD_C:HighBoostGainStart(Caller) end
---@param Caller UObject
function UUI_BP_BroomHUD_C:HighBoostGainEnd(Caller) end
function UUI_BP_BroomHUD_C:Destruct() end
function UUI_BP_BroomHUD_C:ExpandCallouts() end
function UUI_BP_BroomHUD_C:CollapseCallouts() end
---@param Caller UObject
function UUI_BP_BroomHUD_C:BroomSaysShowControlsHold(Caller) end
---@param Caller UObject
function UUI_BP_BroomHUD_C:BroomSaysHideControls(Caller) end
---@param Caller UObject
---@param Actor AActor
function UUI_BP_BroomHUD_C:BroomBoost(Caller, Actor) end
---@param Caller UObject
---@param Actor AActor
function UUI_BP_BroomHUD_C:BroomBoostEnd(Caller, Actor) end
---@param Caller UObject
function UUI_BP_BroomHUD_C:RefreshButtonCallouts(Caller) end
---@param EntryPoint int32
function UUI_BP_BroomHUD_C:ExecuteUbergraph_UI_BP_BroomHUD(EntryPoint) end


