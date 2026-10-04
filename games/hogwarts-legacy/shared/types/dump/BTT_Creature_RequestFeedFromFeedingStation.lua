---@meta

---@class UBTT_Creature_RequestFeedFromFeedingStation_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FeedingStation FBlackboardKeySelector
local UBTT_Creature_RequestFeedFromFeedingStation_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_RequestFeedFromFeedingStation_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTT_Creature_RequestFeedFromFeedingStation_C:ExecuteUbergraph_BTT_Creature_RequestFeedFromFeedingStation(EntryPoint) end


