---@meta

---@class UUI_BP_IngredientRequirement_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurrentCount UPhoenixTextBlock
---@field ingredientIcon UImage
---@field ItemName UPhoenixTextBlock
---@field MaxCount UPhoenixTextBlock
---@field Outline UImage
---@field Slash UPhoenixTextBlock
---@field PreviewIngredients FRecipeIngredient
local UUI_BP_IngredientRequirement_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_IngredientRequirement_C:GatherMenuReaderStrings(DepthLevel) end
---@param Count int32
---@param NewCount int32
function UUI_BP_IngredientRequirement_C:SetInventoryCount(Count, NewCount) end
---@param Ingredient FRecipeIngredient
function UUI_BP_IngredientRequirement_C:SetRecipeIngredient(Ingredient) end
---@param IsDesignTime boolean
function UUI_BP_IngredientRequirement_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_IngredientRequirement_C:ExecuteUbergraph_UI_BP_IngredientRequirement(EntryPoint) end


