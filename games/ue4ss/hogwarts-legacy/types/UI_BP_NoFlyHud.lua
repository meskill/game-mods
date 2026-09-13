---@meta

---@class UUI_BP_NoFlyHud_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ErrorMessage UPhoenixTextBlock
---@field timeText URichTextBlock
---@field NewVar_0 boolean
local UUI_BP_NoFlyHud_C = {}

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_NoFlyHud_C:Tick(MyGeometry, InDeltaTime) end
---@param Error_Key FName
function UUI_BP_NoFlyHud_C:Show(Error_Key) end
function UUI_BP_NoFlyHud_C:Hide() end
---@param EntryPoint int32
function UUI_BP_NoFlyHud_C:ExecuteUbergraph_UI_BP_NoFlyHud(EntryPoint) end


