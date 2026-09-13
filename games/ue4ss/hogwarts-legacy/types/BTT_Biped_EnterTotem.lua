---@meta

---@class UBTT_Biped_EnterTotem_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Totem AActor
---@field PlayerToStation FVector
---@field DesiredRotation FRotator
---@field Up FVector
---@field InterpSpeed float
---@field RotationSpeed float
---@field InterpPosSpeed float
---@field DistFromSite float
---@field GettingIntoPosition boolean
---@field HasLeftStickBeenPressed boolean
---@field ValueToAdd float
---@field DesiredLocation FVector
local UBTT_Biped_EnterTotem_C = {}

---@param Player AActor
function UBTT_Biped_EnterTotem_C:SetDesiredLocationAndRotation(Player) end
---@param OwnerActor AActor
function UBTT_Biped_EnterTotem_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_EnterTotem_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_EnterTotem_C:ExecuteUbergraph_BTT_Biped_EnterTotem(EntryPoint) end


