---@meta

---@class APhoenix_Game_Mode_C : APhoenixGameMode
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
local APhoenix_Game_Mode_C = {}

function APhoenix_Game_Mode_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function APhoenix_Game_Mode_C:ExecuteUbergraph_Phoenix_Game_Mode(EntryPoint) end


