---@meta

---@class UUI_BP_KeyMapping_ConflictItemGroupHeader_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ItemText UPhoenixTextBlock
---@field GroupName FName
local UUI_BP_KeyMapping_ConflictItemGroupHeader_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_KeyMapping_ConflictItemGroupHeader_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_KeyMapping_ConflictItemGroupHeader_C:Construct() end
---@param IsDesignTime boolean
function UUI_BP_KeyMapping_ConflictItemGroupHeader_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_KeyMapping_ConflictItemGroupHeader_C:ExecuteUbergraph_UI_BP_KeyMapping_ConflictItemGroupHeader(EntryPoint) end


