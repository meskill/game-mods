---@meta

---@class UUI_BP_SelectedBox_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Desolve UWidgetAnimation
local UUI_BP_SelectedBox_C = {}

function UUI_BP_SelectedBox_C:DesolveSelect() end
function UUI_BP_SelectedBox_C:AppearSelect() end
---@param EntryPoint int32
function UUI_BP_SelectedBox_C:ExecuteUbergraph_UI_BP_SelectedBox(EntryPoint) end


