---@meta

---@class UUI_BP_TraitNote_C : UAvaUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field traitDesc_1 UPhoenixTextBlock
---@field traitIcon UImage
---@field traitTier UPhoenixTextBlock
---@field traitTitle UPhoenixTextBlock
---@field isInTooltip boolean
local UUI_BP_TraitNote_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_TraitNote_C:GatherMenuReaderStrings(DepthLevel) end
---@param traitName FString
---@param traitTier FText
UUI_BP_TraitNote_C['Set TraitData'] = function(self, traitName, traitTier) end
---@param IsDesignTime boolean
function UUI_BP_TraitNote_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_TraitNote_C:ExecuteUbergraph_UI_BP_TraitNote(EntryPoint) end


