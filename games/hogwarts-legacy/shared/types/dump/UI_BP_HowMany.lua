---@meta

---@class UUI_BP_HowMany_C : UScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Action UPhoenixTextBlock
---@field CurrentAmount UPhoenixTextBlock
---@field LegendBox UUI_BP_LegendBox_C
---@field MaximumAmount UPhoenixTextBlock
---@field MinimumAmount UPhoenixTextBlock
---@field Parent UUserWidget
---@field CurrentIntAmount int32
---@field MaxAmount int32
---@field SendEvent boolean
---@field Legend TArray<FString>
local UUI_BP_HowMany_C = {}

---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_HowMany_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param Color FLinearColor
function UUI_BP_HowMany_C:SetColors(Color) end
---@param CurrentIntAmount int32
function UUI_BP_HowMany_C:SetCurrentAmount(CurrentIntAmount) end
---@param ItemName FName
---@param Transfer_Drop boolean
function UUI_BP_HowMany_C:SetName(ItemName, Transfer_Drop) end
---@param Min int32
---@param Max int32
function UUI_BP_HowMany_C:InitAmounts(Min, Max) end
function UUI_BP_HowMany_C:Destruct() end
function UUI_BP_HowMany_C:Construct() end
---@param EntryPoint int32
function UUI_BP_HowMany_C:ExecuteUbergraph_UI_BP_HowMany(EntryPoint) end


