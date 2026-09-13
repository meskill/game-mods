---@meta

---@class UUI_BP_LoadDoor_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LoadComplete UWidgetAnimation
---@field fade UWidgetAnimation
---@field LoadBackground UImage
---@field IsDoorLoaded boolean
local UUI_BP_LoadDoor_C = {}

---@return float
function UUI_BP_LoadDoor_C:LoadingComplete() end
function UUI_BP_LoadDoor_C:SequenceEvent_0() end
function UUI_BP_LoadDoor_C:Construct() end
function UUI_BP_LoadDoor_C:OnDoorLoaded() end
---@param Caller UObject
function UUI_BP_LoadDoor_C:HideHUD(Caller) end
---@param Caller UObject
function UUI_BP_LoadDoor_C:ShowHUD(Caller) end
---@param EntryPoint int32
function UUI_BP_LoadDoor_C:ExecuteUbergraph_UI_BP_LoadDoor(EntryPoint) end


