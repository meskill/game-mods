---@meta

---@class UUI_BP_BroomPosition_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field placeName UPhoenixTextBlock
---@field placeNumber UPhoenixTextBlock
---@field placeTime UPhoenixTextBlock
---@field playerColorMarker UImage
---@field positionNumber int32
---@field ['Player Name'] FString
local UUI_BP_BroomPosition_C = {}

---@param RacerName FString
---@param RacerTime FText
---@param IsPlayer boolean
function UUI_BP_BroomPosition_C:SetPositionData(RacerName, RacerTime, IsPlayer) end
---@param IsDesignTime boolean
function UUI_BP_BroomPosition_C:PreConstruct(IsDesignTime) end
function UUI_BP_BroomPosition_C:Construct() end
---@param EntryPoint int32
function UUI_BP_BroomPosition_C:ExecuteUbergraph_UI_BP_BroomPosition(EntryPoint) end


