---@meta

---@class UUI_BP_Wanted_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideWanted UWidgetAnimation
---@field ShowWanted UWidgetAnimation
---@field RipplePulse UWidgetAnimation
---@field ripple UImage
---@field ripplePanel UCanvasPanel
---@field UI_BP_GoldLeafDivider UUI_BP_GoldLeafDivider_C
---@field wantedBorder UBorder
local UUI_BP_Wanted_C = {}

function UUI_BP_Wanted_C:StopWanted() end
function UUI_BP_Wanted_C:StartRipple() end
---@param isWanted boolean
function UUI_BP_Wanted_C:ToggleWantedState(isWanted) end
function UUI_BP_Wanted_C:Construct() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_Wanted_C:Tick(MyGeometry, InDeltaTime) end
---@param RotationAngle float
function UUI_BP_Wanted_C:RippleRotation(RotationAngle) end
---@param EntryPoint int32
function UUI_BP_Wanted_C:ExecuteUbergraph_UI_BP_Wanted(EntryPoint) end


