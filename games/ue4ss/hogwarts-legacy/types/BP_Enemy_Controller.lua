---@meta

---@class ABP_Enemy_Controller_C : AEnemy_Controller
---@field UberGraphFrame FPointerToUberGraphFrame
local ABP_Enemy_Controller_C = {}

function ABP_Enemy_Controller_C:ReceiveBeginPlay() end
---@param PossessedPawn APawn
function ABP_Enemy_Controller_C:ReceivePossess(PossessedPawn) end
---@param EntryPoint int32
function ABP_Enemy_Controller_C:ExecuteUbergraph_BP_Enemy_Controller(EntryPoint) end


