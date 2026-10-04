---@meta

---@class ABP_LootDrop_Container_C : AWorldObject
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LootDrop ULootDropComponent
---@field CognitionStimuliSource UCognitionStimuliSourceComponent
---@field StaticMesh UStaticMeshComponent
---@field NewVar_0 UAkComponent
---@field environment EEnvironment::Type
---@field AutoSelectLoot boolean
---@field onBagEmpty FBP_LootDrop_Container_COnBagEmpty
---@field Beacon UNiagaraComponent
---@field Collected boolean
---@field AllowBeacon boolean
---@field fxStartTime float
---@field fxScaleInDuration float
---@field fxScaleOutDuration float
local ABP_LootDrop_Container_C = {}

---@param AttachToComponent USceneComponent
---@param Location FVector
---@param Rotation FRotator
---@return UNiagaraComponent
function ABP_LootDrop_Container_C:SpawnBeacon(AttachToComponent, Location, Rotation) end
function ABP_LootDrop_Container_C:UserConstructionScript() end
function ABP_LootDrop_Container_C:ReceiveBeginPlay() end
---@param i_caller UObject
function ABP_LootDrop_Container_C:BndEvt__LootDrop_K2Node_ComponentBoundEvent_1_OnInventoryUpdated__DelegateSignature(i_caller) end
---@param Caller UObject
function ABP_LootDrop_Container_C:Perceived_Interact(Caller) end
---@param Caller UObject
function ABP_LootDrop_Container_C:NoLongerPerceived_Interact(Caller) end
---@param Caller UObject
function ABP_LootDrop_Container_C:ShowNonCinematicElements(Caller) end
---@param Caller UObject
function ABP_LootDrop_Container_C:HideNonCinematicElements(Caller) end
---@param EntryPoint int32
function ABP_LootDrop_Container_C:ExecuteUbergraph_BP_LootDrop_Container(EntryPoint) end
function ABP_LootDrop_Container_C:onBagEmpty__DelegateSignature() end


