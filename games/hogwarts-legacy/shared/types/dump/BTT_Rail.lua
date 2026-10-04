---@meta

---@class UBTT_Rail_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RailActor AActor
---@field EmitterComponent UParticleSystemComponent
---@field ExitingRail boolean
---@field RailTravelObject ARailTravelStatue
---@field RailSplineComponent USplineComponent
---@field TravelDirection float
---@field AddToYaw float
---@field FadeOutTime float
---@field WaitTime float
---@field FadeInTime float
---@field StickPressed boolean
---@field StickX float
---@field StickY float
local UBTT_Rail_C = {}

function UBTT_Rail_C:TeleportToSplineEnd() end
---@param SplineLocation FVector
---@param SplineRotation FRotator
function UBTT_Rail_C:GetSplineTransformAtEnd(SplineLocation, SplineRotation) end
function UBTT_Rail_C:GetInteractActor() end
---@param ParentActor AActor
function UBTT_Rail_C:SpawnStatue(ParentActor) end
function UBTT_Rail_C:ExitRail() end
---@param Flag boolean
function UBTT_Rail_C:SetContexts(Flag) end
---@param SplineComponent USplineComponent
---@param TravelDirection float
function UBTT_Rail_C:ComputeTravelDirection(SplineComponent, TravelDirection) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Rail_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Rail_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Rail_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Rail_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Rail_C:ReceiveExecute(OwnerActor) end
function UBTT_Rail_C:FadeOutComplete() end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Rail_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_Rail_C:ExecuteUbergraph_BTT_Rail(EntryPoint) end


