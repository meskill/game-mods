---@meta

---@class ABP_StealthTakedownInteractActor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CognitionStimuliSource UCognitionStimuliSourceComponent
---@field DefaultSceneRoot USceneComponent
---@field AutoTargetEnemy AEnemy_Character
---@field StealthAttackDisabled boolean
local ABP_StealthTakedownInteractActor_C = {}

---@param DeltaSeconds float
function ABP_StealthTakedownInteractActor_C:ReceiveTick(DeltaSeconds) end
function ABP_StealthTakedownInteractActor_C:ReceiveBeginPlay() end
---@param Caller UObject
function ABP_StealthTakedownInteractActor_C:Perceived_Interact(Caller) end
---@param Caller UObject
function ABP_StealthTakedownInteractActor_C:NoLongerPerceived_Interact(Caller) end
---@param EndPlayReason EEndPlayReason::Type
function ABP_StealthTakedownInteractActor_C:ReceiveEndPlay(EndPlayReason) end
---@param EntryPoint int32
function ABP_StealthTakedownInteractActor_C:ExecuteUbergraph_BP_StealthTakedownInteractActor(EntryPoint) end


