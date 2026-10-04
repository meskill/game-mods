---@meta

---@class UUI_BP_AutosaveDisclaimer_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Disclaimer1 UPhoenixTextBlock
---@field Disclaimer2 UPhoenixTextBlock
---@field UI_BP_SavingIcon UUI_BP_SavingIcon_C
---@field ScreenDuration float
local UUI_BP_AutosaveDisclaimer_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_AutosaveDisclaimer_C:GatherMenuReaderStrings(DepthLevel) end
---@param IsDesignTime boolean
function UUI_BP_AutosaveDisclaimer_C:PreConstruct(IsDesignTime) end
function UUI_BP_AutosaveDisclaimer_C:Construct() end
---@param EntryPoint int32
function UUI_BP_AutosaveDisclaimer_C:ExecuteUbergraph_UI_BP_AutosaveDisclaimer(EntryPoint) end


