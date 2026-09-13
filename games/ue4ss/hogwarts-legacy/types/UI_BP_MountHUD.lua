---@meta

---@class UUI_BP_MountHUD_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideMountHUD UWidgetAnimation
---@field ShowMountHUD UWidgetAnimation
---@field ShowMountControls UWidgetAnimation
---@field AscendDescendCallout UUI_BP_LegendItem_C
---@field calloutBorder UBorder
---@field CalloutsBox UVerticalBox
---@field ChargeBar UProgressBar
---@field ChargeCallout UUI_BP_LegendItem_C
---@field chargePanel UCanvasPanel
---@field collapsedCallout UBorder
---@field DebugText UMultiLineEditableText
---@field DismountCallout UUI_BP_LegendItem_C
---@field EnabledBar UProgressBar
---@field expandableCallouts UExpandableArea
---@field healthProgressBar UProgressBar
---@field HoldGallopCallout UUI_BP_LegendItem_C
---@field KeyboardGallopCallout UUI_BP_LegendItem_C
---@field KeyboardWalkCallout UUI_BP_LegendItem_C
---@field MountCallouts UVerticalBox
---@field ToggleGallopCallout UUI_BP_LegendItem_C
---@field MountComponent UCreature_MountComponent
---@field RequestStr FString
---@field RefillDelayStr FString
---@field AmountStr FString
---@field bShowCharge boolean
---@field ShowControlsHandle FHermesBPDelegateHandle
---@field InputDeviceChangedHandle FHermesBPDelegateHandle
---@field IsWalking boolean
---@field IsUsingKeyboard boolean
local UUI_BP_MountHUD_C = {}

function UUI_BP_MountHUD_C:SequenceEvent__ENTRYPOINTUI_BP_MountHUD_1() end
function UUI_BP_MountHUD_C:SequenceEvent__ENTRYPOINTUI_BP_MountHUD_0() end
function UUI_BP_MountHUD_C:MakeHidden() end
---@param FromSettingsChange boolean
function UUI_BP_MountHUD_C:MakeVisible(FromSettingsChange) end
---@param Show boolean
function UUI_BP_MountHUD_C:UpdateVisibilitySetting(Show) end
---@param Expand boolean
function UUI_BP_MountHUD_C:ToggleExpandableCallouts(Expand) end
function UUI_BP_MountHUD_C:ConditionallyShowKeyboardCallouts() end
function UUI_BP_MountHUD_C:ShowControls() end
---@param ShowCharge boolean
---@param MovementState EMountMovementState
function UUI_BP_MountHUD_C:SetMountCallouts(ShowCharge, MovementState) end
---@param MountObject UObjectStateInfo
function UUI_BP_MountHUD_C:SetPlayerHealth(MountObject) end
---@param ChargeAmountNormalized float
---@param bChargeAvailable boolean
function UUI_BP_MountHUD_C:ChargeAmountUpdate(ChargeAmountNormalized, bChargeAvailable) end
function UUI_BP_MountHUD_C:Hide() end
---@param InMountComponent UCreature_MountComponent
---@param bShowCharge boolean
function UUI_BP_MountHUD_C:Show(InMountComponent, bShowCharge) end
function UUI_BP_MountHUD_C:UpdateDebugString() end
---@param ChargeRefillDelayNormalized float
function UUI_BP_MountHUD_C:ChargeRefillDelayUpdate(ChargeRefillDelayNormalized) end
---@param ChargeRequestNormalized float
function UUI_BP_MountHUD_C:ChangeRequestUpdate(ChargeRequestNormalized) end
---@param Target AActor
---@param InHealthChange float
---@param bIndicateHUD boolean
function UUI_BP_MountHUD_C:HealthAmountUpdate(Target, InHealthChange, bIndicateHUD) end
---@param bChargeEnabled boolean
function UUI_BP_MountHUD_C:ChargeEnabledUpdate(bChargeEnabled) end
---@param MountComponent UCreature_MountComponent
---@param PrevMovementState EMountMovementState
function UUI_BP_MountHUD_C:MovementStateChanged(MountComponent, PrevMovementState) end
---@param Caller UObject
function UUI_BP_MountHUD_C:BroomSaysShowControls(Caller) end
---@param Caller UObject
function UUI_BP_MountHUD_C:RefreshButtonCallouts(Caller) end
function UUI_BP_MountHUD_C:ExpandCallouts() end
function UUI_BP_MountHUD_C:CollapseCallouts() end
---@param EntryPoint int32
function UUI_BP_MountHUD_C:ExecuteUbergraph_UI_BP_MountHUD(EntryPoint) end


