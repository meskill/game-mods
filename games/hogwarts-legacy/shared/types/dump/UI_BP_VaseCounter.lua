---@meta

---@class UUI_BP_VaseCounter_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Intro UWidgetAnimation
---@field Border_2 UBorder
---@field CounterBG UImage
---@field CounterText UPhoenixTextBlock
---@field EnemyIcon UImage
local UUI_BP_VaseCounter_C = {}

function UUI_BP_VaseCounter_C:Construct() end
---@param Caller UObject
---@param Int1 int32
---@param Int2 int32
function UUI_BP_VaseCounter_C:VaseBroken(Caller, Int1, Int2) end
---@param Caller UObject
function UUI_BP_VaseCounter_C:ShowVaseCounter(Caller) end
---@param Caller UObject
function UUI_BP_VaseCounter_C:HideVaseCounter(Caller) end
---@param Caller UObject
function UUI_BP_VaseCounter_C:ShowVaseCounterNoIcon(Caller) end
---@param EntryPoint int32
function UUI_BP_VaseCounter_C:ExecuteUbergraph_UI_BP_VaseCounter(EntryPoint) end


