---@meta

---@class UBTS_Biped_Station_C : UBTService_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractionInitiated boolean
---@field ButtslideSurfaceTimer FTimerHandle
---@field IsMoving boolean
---@field WorldDirection FVector
---@field SlideForwardSpeed float
---@field FrictionOverride float
---@field RestoreIKState boolean
local UBTS_Biped_Station_C = {}

---@param Flag boolean
function UBTS_Biped_Station_C:SetContexts(Flag) end
---@param OwnerActor AActor
function UBTS_Biped_Station_C:ServiceEnd(OwnerActor) end
---@param OwnerActor AActor
function UBTS_Biped_Station_C:ServiceBegin(OwnerActor) end
---@param EntryPoint int32
function UBTS_Biped_Station_C:ExecuteUbergraph_BTS_Biped_Station(EntryPoint) end


