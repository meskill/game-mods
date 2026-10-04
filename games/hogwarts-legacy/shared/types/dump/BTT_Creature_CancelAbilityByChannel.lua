---@meta

---@class UBTT_Creature_CancelAbilityByChannel_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ChannelName FName
local UBTT_Creature_CancelAbilityByChannel_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_CancelAbilityByChannel_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTT_Creature_CancelAbilityByChannel_C:ExecuteUbergraph_BTT_Creature_CancelAbilityByChannel(EntryPoint) end


