---@meta

---@class UBTS_Biped_EQS_C : UBTService_SocialReasoning
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTS_Biped_EQS_C = {}

---@param SocialReasoning ASocialReasoning
---@param RunMode EEnvQueryRunMode::Type
---@param QueryFinishedDelegate FQueryFinishedData
function UBTS_Biped_EQS_C:RunEQS_FindStations(SocialReasoning, RunMode, QueryFinishedDelegate) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTS_Biped_EQS_C:FindStations_QueryFinished(QueryInstance, QueryStatus) end
---@param SocialReasoning ASocialReasoning
---@param RunMode EEnvQueryRunMode::Type
---@param QueryFinishedDelegate FQueryFinishedData
function UBTS_Biped_EQS_C:RunEQS_FindSocialReasonings(SocialReasoning, RunMode, QueryFinishedDelegate) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTS_Biped_EQS_C:FindSocialReasonings_QueryFinished(QueryInstance, QueryStatus) end
---@param EntryPoint int32
function UBTS_Biped_EQS_C:ExecuteUbergraph_BTS_Biped_EQS(EntryPoint) end


