---@meta

---@class FCalloutInformation
---@field CalloutType ECalloutType
---@field CalloutBlipType ECalloutBlipType
---@field CalloutAction ECalloutActions
---@field TargetName FText
---@field CalloutTextColor FSlateColor
---@field CalloutInteractDistance float
---@field bGrayOutButton boolean
---@field bIsTargetNameTranslatable boolean
---@field Owned boolean
---@field CalloutChargeTime float
local FCalloutInformation = {}



---@class UAISenseConfig_CogGroup : UAISenseConfig_Cognition
---@field Implementation TSubclassOf<UAISense_CogGroup>
---@field FocusDirectionClass UCogGroupFocusDirection
---@field UpDirectionClass UCogGroupUpDirection
---@field PerceiverPointClass UCogGroupPerceiverPoint
---@field TraceRadius float
---@field TargetPointClass UCogGroupTargetPoint
---@field TargetEvaluationArray TArray<UCogGroupEvaluation>
---@field TargetEvaluationArray_SecondOrder TArray<UCogGroupEvaluation_SecondOrder>
---@field BackgroundTargetEvaluationArray TArray<UCogGroupEvaluation>
---@field PriorityBase float
---@field bNormalizePriorityWeights boolean
---@field MinBufferDistance float
---@field MaxBufferDistance float
---@field MinReevaluationTime float
---@field DebugClass UCogGroupDebug
local UAISenseConfig_CogGroup = {}



---@class UAISenseConfig_Cognition : UAISenseConfig
---@field bStartActive boolean
---@field LogicContexts TArray<FInputContextWithType>
---@field BestTargetProcesses TArray<UCogGroupBestTargetProcess>
---@field bStencilPerceivedTarget boolean
---@field StencilEffect FStencilManagerEffectName
---@field StencilOwnedEffect FStencilManagerEffectName
local UAISenseConfig_Cognition = {}



---@class UAISenseFOVDetails : UObject
---@field FOVAxis FVector
---@field FOV float
local UAISenseFOVDetails = {}



---@class UAISenseSpecificDetails : UObject
---@field TargetPointClass UCogGroupTargetPoint
---@field CalloutOffset FVector
---@field FarDistanceOverride float
---@field bPositionCallOutsOverPerceiver boolean
---@field bPerceiverHeadtracksToTarget boolean
---@field bAllowStencil boolean
---@field bCalloutAboveCollision boolean
local UAISenseSpecificDetails = {}



---@class UAISense_CogGroup : UAISense_Cognition
local UAISense_CogGroup = {}


---@class UAISense_Cognition : UAISense
local UAISense_Cognition = {}


---@class UCogGroupBestTargetProcess : UObject
local UCogGroupBestTargetProcess = {}


---@class UCogGroupDebug : UObject
---@field bDrawTargetFootprint boolean
---@field DrawTesselation float
---@field DrawThickness float
---@field DrawFarThickness float
---@field DrawColorWithoutTargets FColor
---@field DrawColorWithValidTargets FColor
---@field DrawColorWithInvalidTargets FColor
local UCogGroupDebug = {}



---@class UCogGroupDebug_Default : UCogGroupDebug
local UCogGroupDebug_Default = {}


---@class UCogGroupEvaluation : UObject
---@field PriorityWeight int32
local UCogGroupEvaluation = {}



---@class UCogGroupEvaluation_Class : UCogGroupEvaluation
---@field IncludeClasses TArray<UClass>
local UCogGroupEvaluation_Class = {}



---@class UCogGroupEvaluation_CombinedBase : UCogGroupEvaluation
---@field FOV float
---@field NearDistance float
---@field FarDistance float
---@field NearHeightUp float
---@field NearHeightDown float
---@field FarHeightUp float
---@field FarHeightDown float
local UCogGroupEvaluation_CombinedBase = {}



---@class UCogGroupEvaluation_Distance : UCogGroupEvaluation
---@field NearDistance float
---@field FarDistance float
local UCogGroupEvaluation_Distance = {}



---@class UCogGroupEvaluation_DistanceWithWarp : UCogGroupEvaluation
---@field NearDistance float
---@field FarDistance float
---@field WarpDistanceByFocus float
local UCogGroupEvaluation_DistanceWithWarp = {}



---@class UCogGroupEvaluation_FOV : UCogGroupEvaluation
---@field FOV float
---@field bAutoAcceptIfFootprintOverlap boolean
---@field bUseTargetFootprintForFOV boolean
---@field bIgnoreForSticky boolean
local UCogGroupEvaluation_FOV = {}



---@class UCogGroupEvaluation_Height : UCogGroupEvaluation
---@field NearHeightUp float
---@field NearHeightDown float
---@field FarHeightUp float
---@field FarHeightDown float
---@field bAdjustCenterHeightByCameraDirection boolean
local UCogGroupEvaluation_Height = {}



---@class UCogGroupEvaluation_OnScreen : UCogGroupEvaluation
---@field ScreenBorder float
local UCogGroupEvaluation_OnScreen = {}



---@class UCogGroupEvaluation_ScreenSpace : UCogGroupEvaluation
---@field ScreenDistance float
local UCogGroupEvaluation_ScreenSpace = {}



---@class UCogGroupEvaluation_SecondOrder : UObject
local UCogGroupEvaluation_SecondOrder = {}


---@class UCogGroupEvaluation_SecondOrder_LOS : UCogGroupEvaluation_SecondOrder
local UCogGroupEvaluation_SecondOrder_LOS = {}


---@class UCogGroupEvaluation_TargetFOV : UCogGroupEvaluation
---@field bUsePerceiverFootprintForFOV boolean
local UCogGroupEvaluation_TargetFOV = {}



---@class UCogGroupFocusDirection : UObject
local UCogGroupFocusDirection = {}


---@class UCogGroupFocusDirection_ActorFacing : UCogGroupFocusDirection
local UCogGroupFocusDirection_ActorFacing = {}


---@class UCogGroupFocusDirection_Camera : UCogGroupFocusDirection
local UCogGroupFocusDirection_Camera = {}


---@class UCogGroupFocusDirection_Movement : UCogGroupFocusDirection
local UCogGroupFocusDirection_Movement = {}


---@class UCogGroupFocusDirection_Socket : UCogGroupFocusDirection
---@field SocketName FName
local UCogGroupFocusDirection_Socket = {}



---@class UCogGroupFocusDirection_Velocity : UCogGroupFocusDirection
local UCogGroupFocusDirection_Velocity = {}


---@class UCogGroupLookAtPoint : UObject
local UCogGroupLookAtPoint = {}


---@class UCogGroupLookAtPoint_CollisionCenter : UCogGroupLookAtPoint
local UCogGroupLookAtPoint_CollisionCenter = {}


---@class UCogGroupLookAtPoint_CollisionTop : UCogGroupLookAtPoint
local UCogGroupLookAtPoint_CollisionTop = {}


---@class UCogGroupLookAtPoint_Custom : UCogGroupLookAtPoint
local UCogGroupLookAtPoint_Custom = {}


---@class UCogGroupLookAtPoint_Ground : UCogGroupLookAtPoint
local UCogGroupLookAtPoint_Ground = {}


---@class UCogGroupLookAtPoint_Socket : UCogGroupLookAtPoint
---@field SocketName FName
local UCogGroupLookAtPoint_Socket = {}



---@class UCogGroupLookAtPoint_World : UCogGroupLookAtPoint
local UCogGroupLookAtPoint_World = {}


---@class UCogGroupLookAtPoint_World_ActorOffset : UCogGroupLookAtPoint
---@field Offset FVector
local UCogGroupLookAtPoint_World_ActorOffset = {}



---@class UCogGroupPerceiverPoint : UObject
local UCogGroupPerceiverPoint = {}


---@class UCogGroupPerceiverPoint_Camera : UCogGroupPerceiverPoint
local UCogGroupPerceiverPoint_Camera = {}


---@class UCogGroupPerceiverPoint_Ground : UCogGroupPerceiverPoint
local UCogGroupPerceiverPoint_Ground = {}


---@class UCogGroupPerceiverPoint_Socket : UCogGroupPerceiverPoint
---@field SocketName FName
local UCogGroupPerceiverPoint_Socket = {}



---@class UCogGroupPerceiverPoint_World : UCogGroupPerceiverPoint
local UCogGroupPerceiverPoint_World = {}


---@class UCogGroupPerceiverPoint_World_ActorOffset : UCogGroupPerceiverPoint
---@field Offset FVector
local UCogGroupPerceiverPoint_World_ActorOffset = {}



---@class UCogGroupTargetPoint : UObject
local UCogGroupTargetPoint = {}


---@class UCogGroupTargetPoint_CalloutAttach : UCogGroupTargetPoint
local UCogGroupTargetPoint_CalloutAttach = {}


---@class UCogGroupTargetPoint_ClosestPointOnCollision : UCogGroupTargetPoint
---@field MinZHeightFromActorLocation float
local UCogGroupTargetPoint_ClosestPointOnCollision = {}



---@class UCogGroupTargetPoint_CollisionCenter : UCogGroupTargetPoint
---@field bOnlyCollidingComponents boolean
local UCogGroupTargetPoint_CollisionCenter = {}



---@class UCogGroupTargetPoint_CollisionCenterOLD : UCogGroupTargetPoint
---@field bOnlyCollidingComponents boolean
local UCogGroupTargetPoint_CollisionCenterOLD = {}



---@class UCogGroupTargetPoint_Custom : UCogGroupTargetPoint
local UCogGroupTargetPoint_Custom = {}


---@class UCogGroupTargetPoint_CustomRelative : UCogGroupTargetPoint
local UCogGroupTargetPoint_CustomRelative = {}


---@class UCogGroupTargetPoint_Ground : UCogGroupTargetPoint
local UCogGroupTargetPoint_Ground = {}


---@class UCogGroupTargetPoint_PlayerWorld : UCogGroupTargetPoint
local UCogGroupTargetPoint_PlayerWorld = {}


---@class UCogGroupTargetPoint_Socket : UCogGroupTargetPoint
---@field SocketName FName
local UCogGroupTargetPoint_Socket = {}



---@class UCogGroupTargetPoint_StaticMeshCenter : UCogGroupTargetPoint
local UCogGroupTargetPoint_StaticMeshCenter = {}


---@class UCogGroupTargetPoint_World : UCogGroupTargetPoint
local UCogGroupTargetPoint_World = {}


---@class UCogGroupTargetPoint_World_ActorOffset : UCogGroupTargetPoint
---@field Offset FVector
local UCogGroupTargetPoint_World_ActorOffset = {}



---@class UCogGroupUpDirection : UObject
local UCogGroupUpDirection = {}


---@class UCogGroupUpDirection_Actor : UCogGroupUpDirection
local UCogGroupUpDirection_Actor = {}


---@class UCogGroupUpDirection_Camera : UCogGroupUpDirection
local UCogGroupUpDirection_Camera = {}


---@class UCogGroupUpDirection_Socket : UCogGroupUpDirection
---@field SocketName FName
local UCogGroupUpDirection_Socket = {}



---@class UCogGroupUpDirection_World : UCogGroupUpDirection
local UCogGroupUpDirection_World = {}


---@class UCogTargetSceneComponent : USceneComponent
local UCogTargetSceneComponent = {}

---@param Actor AActor
function UCogTargetSceneComponent:OnCharacterLoadComplete(Actor) end
---@param bInFlag boolean
function UCogTargetSceneComponent:CogTargetSceneComponent_DebugDraw(bInFlag) end


---@class UCognitionComponent : UAIPerceptionComponent
---@field TimeOutCameraStickMoved float
---@field TargetSightedDelegate FCognitionComponentTargetSightedDelegate
---@field TargetChangedDelegate FCognitionComponentTargetChangedDelegate
---@field TargetLostDelegate FCognitionComponentTargetLostDelegate
---@field CameraStickLastMovedDelegate FCognitionComponentCameraStickLastMovedDelegate
---@field CameraStickTimerExpiredDelegate FCognitionComponentCameraStickTimerExpiredDelegate
local UCognitionComponent = {}

function UCognitionComponent:TimerExpired() end
---@param bInFlag boolean
function UCognitionComponent:SetRightStickMoving(bInFlag) end
---@param WorldDirection FVector
function UCognitionComponent:SetMovementFocusDirection(WorldDirection) end
---@param bInFlag boolean
function UCognitionComponent:SetLeftStickMoving(bInFlag) end
---@param bInFlag boolean
function UCognitionComponent:SetIsLocked(bInFlag) end
---@param InFlag boolean
function UCognitionComponent:SetCameraLastMovedStick(InFlag) end
---@return boolean
function UCognitionComponent:IsRightStickMoving() end
---@return boolean
function UCognitionComponent:IsLocked() end
---@return boolean
function UCognitionComponent:IsLeftStickMoving() end
---@return boolean
function UCognitionComponent:IsCameraLastMovedStick() end
---@return FVector
function UCognitionComponent:GetMovementFocusDirection() end
---@return FVector2D
function UCognitionComponent:GetCameraFlickDirection() end
---@param SenseImplementation TSubclassOf<UAISense>
---@return AActor
function UCognitionComponent:GetBestTarget(SenseImplementation) end
function UCognitionComponent:DEBUG_CycleDebug() end
---@param InIndex int32
function UCognitionComponent:DEBUG_ByIndex(InIndex) end


---@class UCognitionStimuliSourceComponent : UAIPerceptionStimuliSourceComponent
---@field SenseSpecificDetails TMap<TSubclassOf<UAISense>, UAISenseSpecificDetails>
---@field TargetEvaluationArray TArray<UCogGroupEvaluation>
---@field FootprintRadius float
---@field TopOffset float
---@field BottomOffset float
---@field PriorityWeight float
---@field VsPlayerPriorityWeightBump float
---@field FarDistance_Override float
---@field FOV_Override float
---@field SocialORCombatMode ESocialCombatMode
---@field bIgnoreLineOfSight boolean
---@field bIgnoreScreenSpace boolean
---@field bSpecialOnScreenTarget boolean
---@field bDisallowInteractInCombat boolean
---@field bDisallowInteractInMountOrTransition boolean
---@field bDisallowAimTargeting boolean
---@field TargetPointClass UCogGroupTargetPoint
---@field LookAtPointClass UCogGroupLookAtPoint
---@field CalloutOffset FVector
---@field TargetFOVDetails TArray<UAISenseFOVDetails>
---@field bLockOnEnabled boolean
---@field MaxLockOnDistance float
---@field bRecordInteractLocation boolean
---@field bAllowTargetWhileStandingOn boolean
---@field bOverrideMinAimDistance boolean
---@field MinAimDistance float
---@field CalloutType ECalloutType
---@field CalloutBlipType ECalloutBlipType
---@field CalloutAction ECalloutActions
---@field TargetText FText
---@field CalloutTextColor FSlateColor
---@field bGrayOutButton boolean
---@field bIsTargetTextTranslatable boolean
---@field CustomTargetPoint FVector
---@field CustomLookAtPoint FVector
---@field ChargeTime float
---@field CalloutInteractDistance float
---@field SenseSpecificTargetSceneComponents TMap<TSubclassOf<UAISense>, UCogTargetSceneComponent>
---@field TargetPointSpecificTargetSceneComponents TMap<TSubclassOf<UCogGroupTargetPoint>, UCogTargetSceneComponent>
local UCognitionStimuliSourceComponent = {}

---@param weight float
function UCognitionStimuliSourceComponent:SetPriorityWeight(weight) end
---@param bFlag boolean
function UCognitionStimuliSourceComponent:SetIgnoreLineOfSight(bFlag) end
---@param Radius float
function UCognitionStimuliSourceComponent:SetFootprintRadius(Radius) end
---@param bFlag boolean
function UCognitionStimuliSourceComponent:SetAutoRegisterAsSource(bFlag) end
---@param SenseToFind TSubclassOf<UAISense>
---@return boolean
function UCognitionStimuliSourceComponent:IsRegisteredForSense(SenseToFind) end
---@return boolean
function UCognitionStimuliSourceComponent:IsOwned() end
---@param InSense TSubclassOf<UAISense>
---@return UAISenseSpecificDetails
function UCognitionStimuliSourceComponent:GetSenseSpecificDetails(InSense) end
---@return float
function UCognitionStimuliSourceComponent:GetPriorityWeight() end
---@return boolean
function UCognitionStimuliSourceComponent:GetIgnoreLineOfSight() end
---@return float
function UCognitionStimuliSourceComponent:GetFootprintRadius() end
---@return boolean
function UCognitionStimuliSourceComponent:GetAutoRegisterAsSource() end
---@param NewInformation FCalloutInformation
function UCognitionStimuliSourceComponent:ChangeInformation(NewInformation) end
---@param DistanceFromPerceiver float
---@param PerceiverController AController
---@param SenseToUse TSubclassOf<UAISense>
---@param bIncludePerceiverRadius boolean
---@return float
function UCognitionStimuliSourceComponent:CalculateRadiusNeededToBePerceivedBy(DistanceFromPerceiver, PerceiverController, SenseToUse, bIncludePerceiverRadius) end
---@param Sense TSubclassOf<UAISense>
function UCognitionStimuliSourceComponent:AddRegisterAsSourceForSenses(Sense) end


