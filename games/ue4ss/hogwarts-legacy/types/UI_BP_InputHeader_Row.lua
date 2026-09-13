---@meta

---@class UUI_BP_InputHeader_Row_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HeaderText UPhoenixTextBlock
---@field Header FString
---@field Large boolean
local UUI_BP_InputHeader_Row_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_InputHeader_Row_C:GatherMenuReaderStrings(DepthLevel) end
---@param IsDesignTime boolean
function UUI_BP_InputHeader_Row_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_InputHeader_Row_C:ExecuteUbergraph_UI_BP_InputHeader_Row(EntryPoint) end


