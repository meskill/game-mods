---@meta

---@class UUI_BP_ComboHUD_C : UComboHUD_Base
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AddPoints UWidgetAnimation
---@field FocusText UPhoenixTextBlock
---@field NewPoints UPhoenixTextBlock
---@field ComboTimeLeft float
local UUI_BP_ComboHUD_C = {}

---@param Target AActor
---@param InFocusChange float
function UUI_BP_ComboHUD_C:OnFocusChanged(Target, InFocusChange) end
function UUI_BP_ComboHUD_C:UpdateFocusMultiplier() end
---@param NewVisibility ESlateVisibility
function UUI_BP_ComboHUD_C:VisibilityChanged(NewVisibility) end
---@param Caller UObject
---@param int int32
function UUI_BP_ComboHUD_C:UpdateComboCount(Caller, int) end
function UUI_BP_ComboHUD_C:Construct() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_ComboHUD_C:Tick(MyGeometry, InDeltaTime) end
---@param EntryPoint int32
function UUI_BP_ComboHUD_C:ExecuteUbergraph_UI_BP_ComboHUD(EntryPoint) end


