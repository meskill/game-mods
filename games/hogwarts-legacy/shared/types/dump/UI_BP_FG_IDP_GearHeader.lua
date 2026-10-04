---@meta

---@class UUI_BP_FG_IDP_GearHeader_C : UPhoenixUserWidget
---@field gearHeaderBackLeft UPhoenixImage
---@field gearHeaderBackMiddle UPhoenixImage
---@field gearHeaderBackRight UPhoenixImage
---@field GearRarityFlame UBorder
---@field gearRarityTitle UPhoenixTextBlock
---@field gearTitle UPhoenixTextBlock
---@field rarityHeaderBack UPhoenixImage
---@field rarityHeaderBackBorder UBorder
local UUI_BP_FG_IDP_GearHeader_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FG_IDP_GearHeader_C:GatherMenuReaderStrings(DepthLevel) end
---@param headerTitle FString
---@param headerQualtiy FString
---@param Rarity FName
---@param ShowRarityGraphics boolean
function UUI_BP_FG_IDP_GearHeader_C:SetHeaderData(headerTitle, headerQualtiy, Rarity, ShowRarityGraphics) end


