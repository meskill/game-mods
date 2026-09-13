---@meta

---@class ABP_Phoenix_Player_Controller_C : APhoenixPlayerController
---@field UberGraphFrame FPointerToUberGraphFrame
local ABP_Phoenix_Player_Controller_C = {}

function ABP_Phoenix_Player_Controller_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_Phoenix_Player_Controller_C:ExecuteUbergraph_BP_Phoenix_Player_Controller(EntryPoint) end


