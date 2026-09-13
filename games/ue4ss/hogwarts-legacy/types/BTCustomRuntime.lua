---@meta

---@class FBTCustomAction
---@field ActionName FName
local FBTCustomAction = {}



---@class FBTCustomBlueprintActionDelegateBinding
---@field ActionName FName
---@field actionType EBTCustomActionType::Type
---@field FunctionNameToBind FName
local FBTCustomBlueprintActionDelegateBinding = {}



---@class FBTDelegates
---@field DelegateList TArray<FBTDelegatesDelegateList>
local FBTDelegates = {}



---@class FNameToType
---@field ActionTypeToDelegatesMap TMap<EBTCustomActionType::Type, FBTDelegates>
local FNameToType = {}



---@class IBTAvaAITree_Interface : IInterface
local IBTAvaAITree_Interface = {}

---@param InContext FInputContextWithType
---@param bFlag boolean
function IBTAvaAITree_Interface:SetManagedContext(InContext, bFlag) end
---@param InLeafNodeTag FGameplayTag
function IBTAvaAITree_Interface:LeafNodeSwitcher(InLeafNodeTag) end
---@param InContext FInputContextWithType
---@return boolean
function IBTAvaAITree_Interface:GetManagedContext(InContext) end
---@return FGameplayTag
function IBTAvaAITree_Interface:GetLastLeafNode() end
function IBTAvaAITree_Interface:Consume() end
---@param ActionName FBTCustomAction
---@param actionType EBTCustomActionType::Type
---@param VarMapHandle FVariantMapHandle
---@param bDestroyVarMap boolean
function IBTAvaAITree_Interface:BroadcastAction(ActionName, actionType, VarMapHandle, bDestroyVarMap) end


---@class UAnimNotify_BroadcastBTCustomAction : UAnimNotify
---@field BTCustomAction FBTCustomAction
---@field BTCustomActionType EBTCustomActionType::Type
local UAnimNotify_BroadcastBTCustomAction = {}



---@class UBTComposite_AvaAITree : UBTCompositeNode
local UBTComposite_AvaAITree = {}


---@class UBTComposite_RepeatUntilSuccess : UBTCompositeNode
---@field m_leafNodeBBKey FName
local UBTComposite_RepeatUntilSuccess = {}



---@class UBTComposite_Repeater : UBTCompositeNode
---@field m_leafNodeBBKey FName
local UBTComposite_Repeater = {}



---@class UBTCustomActionDelegateBinding : UDynamicBlueprintBinding
---@field ActionDelegateBindings TArray<FBTCustomBlueprintActionDelegateBinding>
local UBTCustomActionDelegateBinding = {}



---@class UBTCustomBPFunctionLibrary : UBlueprintFunctionLibrary
local UBTCustomBPFunctionLibrary = {}

---@param InputReceiver UObject
---@param InputComponent UBTCustomComponent
function UBTCustomBPFunctionLibrary:EnableBTCustomAction(InputReceiver, InputComponent) end
---@param InputReceiver UObject
---@param InputComponent UBTCustomComponent
function UBTCustomBPFunctionLibrary:DisableBTCustomAction(InputReceiver, InputComponent) end


---@class UBTCustomComponent : UBehaviorTreeComponent
---@field BehaviorTree UBehaviorTree
---@field GameplayTagPrefix FString
---@field bManageGameLogicBoolVars boolean
---@field LeafNodeSwitchedDelegate FBTCustomComponentLeafNodeSwitchedDelegate
---@field LeafNodeTag FGameplayTag
---@field LastLeafNodeTag FGameplayTag
---@field LastTaskNode UBTTaskNode
---@field bLockLeafNodeSwitcher boolean
---@field bLeafNodeSwitcherQueued boolean
---@field LeafNodeTagDuringLock FGameplayTag
---@field bSubtree boolean
---@field ActionNameToTypeMap TMap<FName, FNameToType>
local UBTCustomComponent = {}

---@param Actor AActor
function UBTCustomComponent:OnCharacterLoadComplete(Actor) end
---@param InLeafNodeTag FGameplayTag
function UBTCustomComponent:LeafNodeSwitcher(InLeafNodeTag) end
---@return FGameplayTag
function UBTCustomComponent:GetGameplayTagFromActiveLeafNode() end
---@param OwnerActor AActor
---@param ActionName FBTCustomAction
---@param actionType EBTCustomActionType::Type
---@param VarMapHandle FVariantMapHandle
---@param bDestroyVarMap boolean
---@return FVariantMapHandle
function UBTCustomComponent:BroadcastAction_Actor(OwnerActor, ActionName, actionType, VarMapHandle, bDestroyVarMap) end
---@param ActionName FBTCustomAction
---@param actionType EBTCustomActionType::Type
---@param VarMapHandle FVariantMapHandle
---@param bDestroyVarMap boolean
---@return FVariantMapHandle
function UBTCustomComponent:BroadcastAction(ActionName, actionType, VarMapHandle, bDestroyVarMap) end


---@class UBTCustomGameSettings : UObject
---@field Actions TArray<FName>
local UBTCustomGameSettings = {}

---@return UBTCustomGameSettings
function UBTCustomGameSettings:GetInputSettings() end
---@param ActionNames TArray<FName>
function UBTCustomGameSettings:GetActionNames(ActionNames) end


---@class UBTService_AvaAITree : UBTService_BlueprintBase
local UBTService_AvaAITree = {}

---@param OwnerActor AActor
function UBTService_AvaAITree:ServiceEnd(OwnerActor) end
---@param OwnerActor AActor
function UBTService_AvaAITree:ServiceBegin(OwnerActor) end
---@param InLeafNodeTag FGameplayTag
function UBTService_AvaAITree:LeafNodeSwitcher(InLeafNodeTag) end
---@return FGameplayTag
function UBTService_AvaAITree:GetLastLeafNode() end
---@return UBlackboardComponent
function UBTService_AvaAITree:GetBlackboardComponent() end
---@return UAnimInstance
function UBTService_AvaAITree:GetAnimInstance() end
---@return AActor
function UBTService_AvaAITree:GetActorOwner() end
---@return FGameplayTag
function UBTService_AvaAITree:GetActiveLeafNodeTag() end
---@return FName
function UBTService_AvaAITree:GetActiveLeafNodeName() end
function UBTService_AvaAITree:Consume() end
---@param ActionName FBTCustomAction
---@param actionType EBTCustomActionType::Type
---@param VarMapHandle FVariantMapHandle
---@param bDestroyVarMap boolean
function UBTService_AvaAITree:BroadcastAction(ActionName, actionType, VarMapHandle, bDestroyVarMap) end


---@class UBTService_AvaAITree_Input : UBTService_AvaAITree
---@field GameLogicBoolVars TArray<FName_GameLogicVarBool>
local UBTService_AvaAITree_Input = {}

---@param InContext FInputContextWithType
---@param bFlag boolean
function UBTService_AvaAITree_Input:SetManagedContext(InContext, bFlag) end
function UBTService_AvaAITree_Input:PlayerInputSoonToBeRemoved() end
---@param InputComponent UInputComponent
function UBTService_AvaAITree_Input:PlayerInputComponentCreated(InputComponent) end
function UBTService_AvaAITree_Input:PlayerInputComponentAboutToBeDestroyed() end
---@param InContext FInputContextWithType
---@return boolean
function UBTService_AvaAITree_Input:GetManagedContext(InContext) end


---@class UBTTask_AvaAITree : UBTTask_BlueprintBase
local UBTTask_AvaAITree = {}

---@param LeafNodeTag FGameplayTag
function UBTTask_AvaAITree:LeafNodeSwitcher(LeafNodeTag) end
function UBTTask_AvaAITree:LeafNodeSwitched() end
---@return FGameplayTag
function UBTTask_AvaAITree:GetLastLeafNode() end
---@return UBlackboardComponent
function UBTTask_AvaAITree:GetBlackboardComponent() end
---@return UAnimInstance
function UBTTask_AvaAITree:GetAnimInstance() end
---@return AActor
function UBTTask_AvaAITree:GetActorOwner() end
---@param OwnerActor AActor
function UBTTask_AvaAITree:ExitTask(OwnerActor) end
function UBTTask_AvaAITree:Consume() end
---@param ActionName FBTCustomAction
---@param actionType EBTCustomActionType::Type
---@param VarMapHandle FVariantMapHandle
---@param bDestroyVarMap boolean
function UBTTask_AvaAITree:BroadcastAction(ActionName, actionType, VarMapHandle, bDestroyVarMap) end


---@class UBTTask_AvaAITree_Input : UBTTask_AvaAITree
---@field GameLogicBoolVars TArray<FName_GameLogicVarBool>
---@field CustomActions TArray<FBTCustomAction>
---@field FacialAnimation FFacialAnimation
---@field FacialAnimationPriority EManagedFacialAnimationPriority
local UBTTask_AvaAITree_Input = {}

---@param InContext FInputContextWithType
---@param bFlag boolean
function UBTTask_AvaAITree_Input:SetManagedContext(InContext, bFlag) end
---@param InputComponent UInputComponent
function UBTTask_AvaAITree_Input:PlayerInputComponentCreated(InputComponent) end
function UBTTask_AvaAITree_Input:PlayerInputComponentAboutToBeDestroyed() end
---@param InContext FInputContextWithType
---@return boolean
function UBTTask_AvaAITree_Input:GetManagedContext(InContext) end


