---@meta

---@class UBTD_Creature_HasTagOnTarget_C : UBTDecorator_BlueprintBase
---@field TagID FName
---@field TargetActor FBlackboardKeySelector
local UBTD_Creature_HasTagOnTarget_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
---@return boolean
function UBTD_Creature_HasTagOnTarget_C:PerformConditionCheckAI(OwnerController, ControlledPawn) end
---@param OwnerActor AActor
---@return boolean
function UBTD_Creature_HasTagOnTarget_C:PerformConditionCheck(OwnerActor) end


