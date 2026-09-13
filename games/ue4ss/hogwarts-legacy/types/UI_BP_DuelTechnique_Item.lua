---@meta

---@class UUI_BP_DuelTechnique_Item_C : UUserWidget
---@field MarkFailure UWidgetAnimation
---@field MarkSuccess UWidgetAnimation
---@field countBorder UBorder
---@field CurrentCount UPhoenixTextBlock
---@field maxCountText UPhoenixTextBlock
---@field techniqueTask UPhoenixTextBlock
---@field Time UPhoenixTextBlock
---@field TechniqueID FName
---@field MaxCount int32
---@field TaskCompleted boolean
---@field StrikeThroughBrush FSlateBrush
local UUI_BP_DuelTechnique_Item_C = {}

---@param ID FName
function UUI_BP_DuelTechnique_Item_C:GetTechniqueID(ID) end
---@param IsNew boolean
function UUI_BP_DuelTechnique_Item_C:MarkTaskFailure(IsNew) end
---@param IsNew boolean
function UUI_BP_DuelTechnique_Item_C:MarkTaskSuccess(IsNew) end
---@param CurrentCount int32
function UUI_BP_DuelTechnique_Item_C:UpdateCount(CurrentCount) end
---@param NewTime FText
function UUI_BP_DuelTechnique_Item_C:UpdateTime(NewTime) end
---@param ShowCount boolean
---@param ShowTime boolean
---@param TaskDesc FString
---@param ID FName
---@param MaxValue int32
function UUI_BP_DuelTechnique_Item_C:SetTechniqueData(ShowCount, ShowTime, TaskDesc, ID, MaxValue) end


