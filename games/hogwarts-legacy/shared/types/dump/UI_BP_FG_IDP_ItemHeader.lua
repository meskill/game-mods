---@meta

---@class UUI_BP_FG_IDP_ItemHeader_C : UPhoenixUserWidget
---@field AlbinoIcon UImage
---@field GenderIcon UImage
---@field itemTitle UPhoenixTextBlock
---@field CachedIsMale boolean
local UUI_BP_FG_IDP_ItemHeader_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FG_IDP_ItemHeader_C:GatherMenuReaderStrings(DepthLevel) end
---@param IsAlbino boolean
---@param useGenderIcon boolean
---@param IsMale boolean
function UUI_BP_FG_IDP_ItemHeader_C:SetCreatureIcons(IsAlbino, useGenderIcon, IsMale) end
---@param headerTitle FString
---@param TranslateTitle boolean
function UUI_BP_FG_IDP_ItemHeader_C:SetHeaderData(headerTitle, TranslateTitle) end


