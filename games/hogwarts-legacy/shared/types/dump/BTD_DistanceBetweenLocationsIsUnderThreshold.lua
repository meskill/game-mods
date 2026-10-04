---@meta

---@class UBTD_DistanceBetweenLocationsIsUnderThreshold_C : UBTDecorator_BlueprintBase
---@field LocationA FBlackboardKeySelector
---@field LocationB FBlackboardKeySelector
---@field Threshold float
local UBTD_DistanceBetweenLocationsIsUnderThreshold_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
---@return boolean
function UBTD_DistanceBetweenLocationsIsUnderThreshold_C:PerformConditionCheckAI(OwnerController, ControlledPawn) end
---@param OwnerActor AActor
---@return boolean
function UBTD_DistanceBetweenLocationsIsUnderThreshold_C:PerformConditionCheck(OwnerActor) end


