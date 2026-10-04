---@meta

---@class UBTT_EnemyAI_GetRandomLocation_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ApplyTether boolean
---@field ['OverrideCharacterTetherTypeAnd Dist'] boolean
---@field TetherDistOverride float
---@field TetherTypeOveride ENPC_Tether
---@field NPCComponent UNPC_Component
---@field StartVec FVector
local UBTT_EnemyAI_GetRandomLocation_C = {}

---@param OwnerActor AActor
function UBTT_EnemyAI_GetRandomLocation_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_EnemyAI_GetRandomLocation_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_EnemyAI_GetRandomLocation_C:ExecuteUbergraph_BTT_EnemyAI_GetRandomLocation(EntryPoint) end


