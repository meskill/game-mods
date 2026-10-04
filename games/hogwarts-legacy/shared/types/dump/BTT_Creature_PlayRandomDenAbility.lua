---@meta

---@class UBTT_Creature_PlayRandomDenAbility_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Creature Stance'] ECreatureStance
---@field ['Force Execute'] boolean
---@field ['IDA Stance Map'] TMap<ECreatureStance, UInteractionArchitectAsset>
---@field AIComponent UCreature_AIComponent
local UBTT_Creature_PlayRandomDenAbility_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_PlayRandomDenAbility_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTT_Creature_PlayRandomDenAbility_C:ExecuteUbergraph_BTT_Creature_PlayRandomDenAbility(EntryPoint) end


