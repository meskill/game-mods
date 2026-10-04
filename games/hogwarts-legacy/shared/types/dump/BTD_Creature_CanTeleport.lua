---@meta

---@class UBTD_Creature_CanTeleport_C : UBTDecorator_BlueprintBase
local UBTD_Creature_CanTeleport_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
---@return boolean
function UBTD_Creature_CanTeleport_C:PerformConditionCheckAI(OwnerController, ControlledPawn) end
---@param OwnerActor AActor
---@return boolean
function UBTD_Creature_CanTeleport_C:PerformConditionCheck(OwnerActor) end


