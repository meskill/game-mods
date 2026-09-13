---@meta

---@class UUI_BP_MKBInput_ConflictItem_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ItemText UPhoenixTextBlock
---@field TextKey FString
local UUI_BP_MKBInput_ConflictItem_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_MKBInput_ConflictItem_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_MKBInput_ConflictItem_C:Construct() end
---@param EntryPoint int32
function UUI_BP_MKBInput_ConflictItem_C:ExecuteUbergraph_UI_BP_MKBInput_ConflictItem(EntryPoint) end


