---@meta

---@class UGameModManagerShimDynamic : UObject
local UGameModManagerShimDynamic = {}

---@param CharacterID int32
function UGameModManagerShimDynamic:PreCharacterDeleted(CharacterID) end
function UGameModManagerShimDynamic:OnSaveGameLoaded() end
function UGameModManagerShimDynamic:OnGameToBeSaved() end


