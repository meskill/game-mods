---@meta

---@class UUI_BP_MenuReaderTester_C : UMenuReaderTestScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DummyText UPhoenixTextBlock
---@field Legend UUI_BP_Legend_Horizontal_Screen_C
---@field NonRichText UPhoenixTextBlock
---@field NumStrings UPhoenixTextBlock
---@field PronunciationText UPhoenixTextBlock
---@field RichText UPhoenixRichTextBlock
---@field CurrentIndex int32
---@field HasDummyText boolean
---@field DummyString FString
local UUI_BP_MenuReaderTester_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_MenuReaderTester_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_MenuReaderTester_C:RefreshLegend() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_MenuReaderTester_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_MenuReaderTester_C:RefreshDisplay() end
---@param Delta int32
function UUI_BP_MenuReaderTester_C:ChangeCurrentString(Delta) end
function UUI_BP_MenuReaderTester_C:Construct() end
---@param EntryPoint int32
function UUI_BP_MenuReaderTester_C:ExecuteUbergraph_UI_BP_MenuReaderTester(EntryPoint) end


