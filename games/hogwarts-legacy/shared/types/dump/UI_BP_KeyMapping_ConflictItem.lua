---@meta

---@class UUI_BP_KeyMapping_ConflictItem_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ItemText UPhoenixTextBlock
---@field ['Text Key'] FString
local UUI_BP_KeyMapping_ConflictItem_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_KeyMapping_ConflictItem_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_KeyMapping_ConflictItem_C:Construct() end
---@param IsDesignTime boolean
function UUI_BP_KeyMapping_ConflictItem_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_KeyMapping_ConflictItem_C:ExecuteUbergraph_UI_BP_KeyMapping_ConflictItem(EntryPoint) end


