---@meta

---@class UUI_BP_AimLock_Reticule_C : UUserWidget_LockOnReticle
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AimModeCircle UImage
---@field CursorPanel UCanvasPanel
---@field MouseCursorRings_1 UImage
---@field RedDot UImage
---@field sparkles UImage
---@field TargetCircle UImage
---@field TargetDot UImage
local UUI_BP_AimLock_Reticule_C = {}

---@param InVisibility ESlateVisibility
function UUI_BP_AimLock_Reticule_C:SetAimModeVisibility(InVisibility) end
---@param InVisibility ESlateVisibility
function UUI_BP_AimLock_Reticule_C:SetLockOnVisibility(InVisibility) end
---@param InScale float
function UUI_BP_AimLock_Reticule_C:SetAimModeCircleScale(InScale) end
---@param EntryPoint int32
function UUI_BP_AimLock_Reticule_C:ExecuteUbergraph_UI_BP_AimLock_Reticule(EntryPoint) end


