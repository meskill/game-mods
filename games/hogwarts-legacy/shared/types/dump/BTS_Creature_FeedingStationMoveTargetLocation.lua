---@meta

---@class UBTS_Creature_FeedingStationMoveTargetLocation_C : UBTService_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FeedingStationKey FBlackboardKeySelector
---@field MoveTargetLocationKey FBlackboardKeySelector
---@field ApproachRadiusMultiplier float
---@field FeedingStation ACreatureFeedingStation
local UBTS_Creature_FeedingStationMoveTargetLocation_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTS_Creature_FeedingStationMoveTargetLocation_C:ReceiveActivationAI(OwnerController, ControlledPawn) end
---@param OwnerController AAIController
---@param ControlledPawn APawn
---@param DeltaSeconds float
function UBTS_Creature_FeedingStationMoveTargetLocation_C:ReceiveTickAI(OwnerController, ControlledPawn, DeltaSeconds) end
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTS_Creature_FeedingStationMoveTargetLocation_C:ReceiveDeactivationAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTS_Creature_FeedingStationMoveTargetLocation_C:ExecuteUbergraph_BTS_Creature_FeedingStationMoveTargetLocation(EntryPoint) end


