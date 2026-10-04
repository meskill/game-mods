---@meta

---@class UBTT_Companion_FollowPlayer_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlayerPawn APawn
---@field EnemyAIComp UEnemyAIComponent
---@field AIController AAIController
---@field Destination FVector
---@field CharMoveComp UCharacterMovementComponent
---@field NPCPathFollowComp UNPC_PathFollowingComponent
---@field MyPawn APawn
---@field CrouchSwimSpeed float
---@field SlowSpeed float
---@field SprintSpeed float
---@field CloseDistanceSquared float
---@field MinDistanceToMoveSquared float
---@field bShouldMove boolean
---@field DestinationAcceptanceRadius float
local UBTT_Companion_FollowPlayer_C = {}

---@return boolean
function UBTT_Companion_FollowPlayer_C:ShouldRepath() end
function UBTT_Companion_FollowPlayer_C:ChoseSpeed() end
---@param OwnerActor AActor
function UBTT_Companion_FollowPlayer_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Companion_FollowPlayer_C:ReceiveTick(OwnerActor, DeltaSeconds) end
function UBTT_Companion_FollowPlayer_C:TimeOutEvent() end
function UBTT_Companion_FollowPlayer_C:Repath() end
---@param EntryPoint int32
function UBTT_Companion_FollowPlayer_C:ExecuteUbergraph_BTT_Companion_FollowPlayer(EntryPoint) end


