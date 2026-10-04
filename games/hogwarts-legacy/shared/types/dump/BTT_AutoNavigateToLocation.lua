---@meta

---@class UBTT_AutoNavigateToLocation_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlayerController AController
---@field SpawnedTravellerController ASocialTravelerController
---@field PlayerCapsuleRadius float
---@field NavLocation FVector
---@field NavDirection FVector
---@field NavState int32
---@field PathDistance float
---@field PathDistanceTimerHandle FTimerHandle
---@field TimeExpiredHandle FTimerHandle
---@field JogDistance float
---@field WalkDistance float
---@field LastLeaf FGameplayTag
---@field Transit boolean
---@field ConnectionTransform FTransform
local UBTT_AutoNavigateToLocation_C = {}

---@param ActorBlackboard UBlackboardComponent
---@param IsStation boolean
function UBTT_AutoNavigateToLocation_C:StationConnectionTransform(ActorBlackboard, IsStation) end
---@param BipedCharacter ABiped_Character
function UBTT_AutoNavigateToLocation_C:NavStage_Sprint2Jog(BipedCharacter) end
---@param BipedCharacter ABiped_Character
function UBTT_AutoNavigateToLocation_C:NavStage_SprintOrJog(BipedCharacter) end
---@param BipedCharacter ABiped_Character
function UBTT_AutoNavigateToLocation_C:NavStage_Jog2Walk(BipedCharacter) end
---@param BipedCharacter ABiped_Character
function UBTT_AutoNavigateToLocation_C:NavStage_Final(BipedCharacter) end
---@param BipedCharacter ABiped_Character
function UBTT_AutoNavigateToLocation_C:NavStage_Walk(BipedCharacter) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_AutoNavigateToLocation_C:CustActionEvt_RequestFinished_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_AutoNavigateToLocation_C:CustActionEvt_RequestFinished_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_AutoNavigateToLocation_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_AutoNavigateToLocation_C:ReceiveExecute(OwnerActor) end
function UBTT_AutoNavigateToLocation_C:GetPathDistance() end
function UBTT_AutoNavigateToLocation_C:TimeExpired() end
---@param OwnerActor AActor
function UBTT_AutoNavigateToLocation_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_AutoNavigateToLocation_C:ExecuteUbergraph_BTT_AutoNavigateToLocation(EntryPoint) end


