---@meta

---@class UBTT_Biped_OpenChest_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LootableContainer AActor
---@field PlayerLocation FVector
---@field InteractiveObject UInteractiveObjectComponent
---@field CogStimuliSource UCognitionStimuliSourceComponent
---@field LootDrop ULootDropComponent
local UBTT_Biped_OpenChest_C = {}

---@param SetPrerequisite boolean
function UBTT_Biped_OpenChest_C:SetAvatarTickPrerequisite(SetPrerequisite) end
---@param Chest UObject
---@param Biped UObject
---@param FacingTarget UTargetTracker
---@param Rotation FRotator
---@param Location FVector
---@param Direction FVector
function UBTT_Biped_OpenChest_C:CalculateLocation(Chest, Biped, FacingTarget, Rotation, Location, Direction) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_OpenChest_C:CustActionEvt_ShowLootUI_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_OpenChest_C:CustActionEvt_OpenChest_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_OpenChest_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param Caller UObject
function UBTT_Biped_OpenChest_C:LootUIDone(Caller) end
---@param OwnerActor AActor
function UBTT_Biped_OpenChest_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_OpenChest_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_OpenChest_C:ExecuteUbergraph_BTT_Biped_OpenChest(EntryPoint) end


