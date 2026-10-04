---@meta

---@class UUI_BP_CompassIcon_C : UHUDCompassIcon
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeDistanceText UWidgetAnimation
---@field DistancePanel UHorizontalBox
---@field DistanceText UPhoenixTextBlock
---@field ElevationArrow UImage
---@field IconContainer UVerticalBox
---@field iconImage UImage
---@field IndicatorArrow UBorder
---@field LockBadge UImage
---@field Pulse UImage
---@field TrackBorder UImage
---@field DistanceNumbersShown boolean
local UUI_BP_CompassIcon_C = {}

---@param Texture UTexture2D
function UUI_BP_CompassIcon_C:SetIconTexture(Texture) end
---@param NewVisibility ESlateVisibility
function UUI_BP_CompassIcon_C:SetCompassIconVisibility(NewVisibility) end
---@param NewColor FLinearColor
function UUI_BP_CompassIcon_C:SetCompassIconColorAndOpacity(NewColor) end
---@param IconName FString
---@param ShowPulse boolean
function UUI_BP_CompassIcon_C:SetIconTextureByName(IconName, ShowPulse) end
---@param NewVisibility ESlateVisibility
function UUI_BP_CompassIcon_C:SetElevationVisibility(NewVisibility) end
---@param Scale float
function UUI_BP_CompassIcon_C:SetIconScale(Scale) end
---@param Distance int32
function UUI_BP_CompassIcon_C:SetDistanceValue(Distance) end
---@param Opacity float
function UUI_BP_CompassIcon_C:SetIconOpacity(Opacity) end
---@param ShouldShow boolean
function UUI_BP_CompassIcon_C:ShowDistance(ShouldShow) end
---@param ShouldShow boolean
function UUI_BP_CompassIcon_C:ShowIndicatorArrow(ShouldShow) end
---@param DegreeRot float
function UUI_BP_CompassIcon_C:SetIndicatorArrowRotation(DegreeRot) end
---@param NewSize FVector2D
function UUI_BP_CompassIcon_C:SetIconSize(NewSize) end
---@param Enable boolean
function UUI_BP_CompassIcon_C:SetPulse(Enable) end
---@param Angle float
function UUI_BP_CompassIcon_C:SetRotation(Angle) end
---@param ShowBorder boolean
---@param OutlineIconName FString
function UUI_BP_CompassIcon_C:TogglePathingBorder(ShowBorder, OutlineIconName) end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_CompassIcon_C:TrackBorderLoaded(LoadedTexture, CallbackParam) end
---@param Distance int32
function UUI_BP_CompassIcon_C:SetElevationDistance(Distance) end
---@param ShowLock boolean
function UUI_BP_CompassIcon_C:ToggleLockBadge(ShowLock) end
function UUI_BP_CompassIcon_C:WidgetAnimationEvt_FadeDistanceText_K2Node_WidgetAnimationEvent_0() end
---@param EntryPoint int32
function UUI_BP_CompassIcon_C:ExecuteUbergraph_UI_BP_CompassIcon(EntryPoint) end


