---@meta

---@class UUI_BP_BroomBoostMeter_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CloseToGroundOn UWidgetAnimation
---@field BoostOn UWidgetAnimation
---@field ComboFlamesFade UWidgetAnimation
---@field BroomRaceIcon UImage
---@field section1 UUI_BP_BroomBoostSection_C
---@field selectedFlameRight UImage
---@field selectedFlameTop UImage
---@field TurboMeter UImage
---@field MeterSegments TArray<UUI_BP_BroomBoostSection_C>
---@field MeterIcon UTexture2D
---@field MeterIconSize FVector2D
---@field CloseToGroundState boolean
---@field BoostHeld boolean
---@field TurboState boolean
---@field TurboColor FLinearColor
---@field BoostColor FLinearColor
local UUI_BP_BroomBoostMeter_C = {}

---@param BoostHeld boolean
function UUI_BP_BroomBoostMeter_C:BoostInputChanged(BoostHeld) end
---@param ShouldShow boolean
function UUI_BP_BroomBoostMeter_C:ToggleBoostingEffect(ShouldShow) end
---@param ShouldShow boolean
function UUI_BP_BroomBoostMeter_C:ToggleCloseToGroundEffect(ShouldShow) end
---@param BoostPercent float
---@param IsInTurbo boolean
function UUI_BP_BroomBoostMeter_C:UpdateMeter(BoostPercent, IsInTurbo) end
---@param Upgrades int32
function UUI_BP_BroomBoostMeter_C:SetVisibleSegments(Upgrades) end
---@param Upgrades int32
function UUI_BP_BroomBoostMeter_C:GetNumUpgrades(Upgrades) end
---@param IsDesignTime boolean
function UUI_BP_BroomBoostMeter_C:PreConstruct(IsDesignTime) end
function UUI_BP_BroomBoostMeter_C:SyncUpgradeSegments() end
---@param EntryPoint int32
function UUI_BP_BroomBoostMeter_C:ExecuteUbergraph_UI_BP_BroomBoostMeter(EntryPoint) end


