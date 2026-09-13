---@meta

---@class UBTS_Student_TopLevel_C : UBTService_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTS_Student_TopLevel_C = {}

---@param OwnerActor AActor
function UBTS_Student_TopLevel_C:ServiceBegin(OwnerActor) end
---@param OwnerActor AActor
function UBTS_Student_TopLevel_C:ReceiveSearchStart(OwnerActor) end
---@param EntryPoint int32
function UBTS_Student_TopLevel_C:ExecuteUbergraph_BTS_Student_TopLevel(EntryPoint) end


