---@meta

---@class UBTT_Schedule_PatrolNoStation_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SocialReasoning ASocialReasoning
local UBTT_Schedule_PatrolNoStation_C = {}

---@param OwnerActor AActor
function UBTT_Schedule_PatrolNoStation_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Schedule_PatrolNoStation_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_Schedule_PatrolNoStation_C:ExecuteUbergraph_BTT_Schedule_PatrolNoStation(EntryPoint) end


