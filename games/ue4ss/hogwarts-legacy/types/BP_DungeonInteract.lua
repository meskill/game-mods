---@meta

---@class ABP_DungeonInteract_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CognitionStimuliSource UCognitionStimuliSourceComponent
---@field Capsule UCapsuleComponent
---@field TextName UWidgetComponent
---@field Billboard UBillboardComponent
---@field DefaultSceneRoot USceneComponent
---@field InteractedWith FBP_DungeonInteract_CInteractedWith
---@field Parent AActor
---@field ShowUI boolean
---@field DungeonName FName
local ABP_DungeonInteract_C = {}

---@param AvaService UBTService_AvaAITree
function ABP_DungeonInteract_C:Interact(AvaService) end
function ABP_DungeonInteract_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_DungeonInteract_C:ExecuteUbergraph_BP_DungeonInteract(EntryPoint) end
function ABP_DungeonInteract_C:InteractedWith__DelegateSignature() end


