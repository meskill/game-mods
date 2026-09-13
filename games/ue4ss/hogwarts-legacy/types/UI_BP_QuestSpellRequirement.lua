---@meta

---@class UUI_BP_QuestSpellRequirement_C : UPhoenixUserWidget
---@field SpellIcon UImage
---@field SpellName UPhoenixTextBlock
local UUI_BP_QuestSpellRequirement_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_QuestSpellRequirement_C:GatherMenuReaderStrings(DepthLevel) end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_QuestSpellRequirement_C:SpellTypeLoaded(LoadedTexture, CallbackParam) end
---@param Spell FString
function UUI_BP_QuestSpellRequirement_C:SetSpellData(Spell) end


