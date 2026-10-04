---@meta

---@class ABP_Marker_Base_C : AMarker
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field ['DB Name'] FString
---@field BaseName FString
---@field UniqueIdentity int32
---@field UniqueIdentityName FString
---@field MarkerRootName FString
---@field OverrideMarkerName FString
---@field ['Arithmancy #'] FString
---@field ['Tile Name Off'] boolean
---@field ['Level Name'] FString
---@field ['Text Display'] boolean
---@field ['TEMP Level Name'] FString
---@field ['Text Rotation'] FRotator
local ABP_Marker_Base_C = {}

---@param Text FString
---@param Height float
---@param size float
---@param Color FColor
function ABP_Marker_Base_C:AddTextMarker(Text, Height, size, Color) end
---@param Height float
---@param Color FColor
function ABP_Marker_Base_C:CreateBar(Height, Color) end
---@param InTechLevel boolean
---@param In_Mission boolean
---@param In_Other boolean
---@param Hogsmeade boolean
---@param Feature boolean
---@param VFX boolean
function ABP_Marker_Base_C:CheckForTechLevel(InTechLevel, In_Mission, In_Other, Hogsmeade, Feature, VFX) end
---@param Height float
---@param size float
---@param Color FColor
---@param MarkerRootName FString
---@param SkipLeft int32
---@param SkipRight int32
---@param OverrideMarker_Name FString
---@param Arithmancy__ FString
---@param Bar_Off boolean
---@param Tile_Name_Off boolean
---@param Text_Off boolean
---@param Rotate_Text_180 boolean
---@param Valid boolean
function ABP_Marker_Base_C:InitMarker(Height, size, Color, MarkerRootName, SkipLeft, SkipRight, OverrideMarker_Name, Arithmancy__, Bar_Off, Tile_Name_Off, Text_Off, Rotate_Text_180, Valid) end
function ABP_Marker_Base_C:SetUniqueIdentity() end
---@param SkipLeft int32
---@param SkipRight int32
function ABP_Marker_Base_C:SetBaseName(SkipLeft, SkipRight) end
function ABP_Marker_Base_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_Marker_Base_C:ExecuteUbergraph_BP_Marker_Base(EntryPoint) end


