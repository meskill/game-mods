---@meta

---@class UUI_BP_MinimapOverland_C : UMinimapOverland
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MinimapBackground UImage
---@field ImageTextureArray TArray<UTexture2D>
---@field TileIndices TArray<int32>
---@field ImageNames TArray<FString>
---@field BlackTexture_0 UTexture2D
---@field ImageNamesTest TArray<FString>
local UUI_BP_MinimapOverland_C = {}

---@param MapIndex int32
---@param IsValid boolean
function UUI_BP_MinimapOverland_C:ValidateMapIndex(MapIndex, IsValid) end
---@param Texture UTexture2D
---@param Image UObject
function UUI_BP_MinimapOverland_C:MapTileLoaded_LowerRight(Texture, Image) end
---@param Texture UTexture2D
---@param Image UObject
function UUI_BP_MinimapOverland_C:MapTileLoaded_LowerLeft(Texture, Image) end
---@param Texture UTexture2D
---@param Image UObject
function UUI_BP_MinimapOverland_C:MapTileLoaded_UpperRight(Texture, Image) end
---@param TileTexture UTexture2D
---@param TileImage UObject
function UUI_BP_MinimapOverland_C:MapTileLoaded_UpperLeft(TileTexture, TileImage) end
---@param UpperLeftIndex int32
function UUI_BP_MinimapOverland_C:UpdateTileIndicesFromImageNames(UpperLeftIndex) end
function UUI_BP_MinimapOverland_C:DebugPrintPlayerTile() end
function UUI_BP_MinimapOverland_C:UpdateTileTextures() end
function UUI_BP_MinimapOverland_C:UpdateCurrentMapPosition() end
---@param Opacity float
function UUI_BP_MinimapOverland_C:SetMapOpacity(Opacity) end
---@param Visibile boolean
function UUI_BP_MinimapOverland_C:ShowMap(Visibile) end
---@param EntryPoint int32
function UUI_BP_MinimapOverland_C:ExecuteUbergraph_UI_BP_MinimapOverland(EntryPoint) end


