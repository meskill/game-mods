---@meta

---@class UUI_BP_AvailableMissionNote_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MissionIconLeft UWidgetAnimation
---@field MissionIconRight UWidgetAnimation
---@field mapMissionIcon UImage
---@field mapMissionIcon_1 UImage
---@field MissionTitle UPhoenixTextBlock
local UUI_BP_AvailableMissionNote_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_AvailableMissionNote_C:GatherMenuReaderStrings(DepthLevel) end
---@param Color FLinearColor
function UUI_BP_AvailableMissionNote_C:SetColor(Color) end
---@param MissionIcon FString
---@param MissionName FString
UUI_BP_AvailableMissionNote_C['Set Mission Data'] = function(self, MissionIcon, MissionName) end
function UUI_BP_AvailableMissionNote_C:Construct() end
---@param Caller UObject
function UUI_BP_AvailableMissionNote_C:AvailableMissionRight(Caller) end
---@param Caller UObject
function UUI_BP_AvailableMissionNote_C:AvailableMissionLeft(Caller) end
---@param EntryPoint int32
function UUI_BP_AvailableMissionNote_C:ExecuteUbergraph_UI_BP_AvailableMissionNote(EntryPoint) end


