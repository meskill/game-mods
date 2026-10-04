---@meta

---@class FReferencedTimeRigBindings
---@field ReferencedTimeRig UTimeRig
---@field ReferencedPlaceholderMap TMap<TSoftObjectPtr<UTimeRigPlaceholder>, UTimeRigElement>
local FReferencedTimeRigBindings = {}



---@class FStoryGraphConditionBranchReference
---@field BranchID FName
local FStoryGraphConditionBranchReference = {}



---@class FStoryGraphConditionNodeReference
---@field Node UTimeRig_StoryGraphNode
local FStoryGraphConditionNodeReference = {}



---@class FStoryGraphEdge_ConditionProperties
local FStoryGraphEdge_ConditionProperties = {}


---@class FStoryGraphEdge_TriggerProperties
local FStoryGraphEdge_TriggerProperties = {}


---@class FTimeRigCoordinate
---@field Time float
local FTimeRigCoordinate = {}



---@class FTimeRigCursor
---@field PreviousTime FTimeRigCoordinate
---@field CurrentTime FTimeRigCoordinate
local FTimeRigCursor = {}



---@class FTimeRigEnterExitEntry
---@field EntryType ETimeRigEnterExitType
---@field TimeValue FTimeRigCoordinate
---@field IntervalState UTimeRigIntervalState
local FTimeRigEnterExitEntry = {}



---@class FTimeRigEventConstSymbolPair
local FTimeRigEventConstSymbolPair = {}


---@class FTimeRigEventHandlerData
local FTimeRigEventHandlerData = {}


---@class FTimeRigEventReference
---@field ReferenceElementSoftPtr TSoftObjectPtr<UTimeRigElement>
---@field ReferenceElement TWeakObjectPtr<UTimeRigElement>
---@field Name FName
local FTimeRigEventReference = {}



---@class FTimeRigEventSymbol
---@field OwningElement TWeakObjectPtr<UTimeRigElement>
---@field Event UTimeRigEvent
local FTimeRigEventSymbol = {}



---@class FTimeRigEventSymbolFraction
local FTimeRigEventSymbolFraction = {}


---@class FTimeRigEventSymbolList
local FTimeRigEventSymbolList = {}


---@class FTimeRigEventSymbolPair
local FTimeRigEventSymbolPair = {}


---@class FTimeRigEventSymbolValue
local FTimeRigEventSymbolValue = {}


---@class FTimeRigEventToHandle
---@field ElementState UTimeRigElementState
---@field EventName FName
local FTimeRigEventToHandle = {}



---@class FTimeRigInputSymbol : FTimeRigEventSymbol
local FTimeRigInputSymbol = {}


---@class FTimeRigNamedSymbol : FTimeRigEventSymbol
---@field Name FName
local FTimeRigNamedSymbol = {}



---@class FTimeRigOutputSymbol : FTimeRigEventSymbol
local FTimeRigOutputSymbol = {}


---@class FTimeRigScratchAnimation
---@field Animation UAnimSequence
local FTimeRigScratchAnimation = {}



---@class FTimeRigStoryNodeCommandContext
---@field PreviewWorld UWorld
local FTimeRigStoryNodeCommandContext = {}



---@class IStoryGraphPlayer : IInterface
local IStoryGraphPlayer = {}


---@class ITimeRigGenerator : IInterface
local ITimeRigGenerator = {}


---@class ITimeRigParentElement : IInterface
local ITimeRigParentElement = {}


---@class ITimeRigScratchAnimationContainer : IInterface
local ITimeRigScratchAnimationContainer = {}


---@class ITimeRigSettableEvent : IInterface
local ITimeRigSettableEvent = {}


---@class UStoryGraphConditionProvider : UBaseProvider
local UStoryGraphConditionProvider = {}


---@class UStoryGraphCondition_AND : UStoryGraphConditionProvider
---@field Conditions TArray<UStoryGraphConditionProvider>
local UStoryGraphCondition_AND = {}



---@class UStoryGraphCondition_Branch : UStoryGraphConditionProvider
---@field BranchID FStoryGraphConditionBranchReference
---@field IsVisible UBoolProvider
---@field IsSelectable UBoolProvider
---@field DisplayTextID UStringProvider
---@field DisplayIcon EStoryGraphBranchIcon
---@field NonSelectableHandling int32
local UStoryGraphCondition_Branch = {}



---@class UStoryGraphCondition_NOT : UStoryGraphConditionProvider
---@field ConditionToInvert UStoryGraphConditionProvider
local UStoryGraphCondition_NOT = {}



---@class UStoryGraphCondition_NodeIsActive : UStoryGraphConditionProvider
---@field Node FStoryGraphConditionNodeReference
local UStoryGraphCondition_NodeIsActive = {}



---@class UStoryGraphCondition_OR : UStoryGraphConditionProvider
---@field Conditions TArray<UStoryGraphConditionProvider>
local UStoryGraphCondition_OR = {}



---@class UStoryGraphCondition_XOR : UStoryGraphConditionProvider
---@field Conditions TArray<UStoryGraphConditionProvider>
local UStoryGraphCondition_XOR = {}



---@class UStoryGraphTriggerProvider : UBaseProvider
local UStoryGraphTriggerProvider = {}


---@class UStoryGraphTrigger_Activate : UStoryGraphTriggerProvider
---@field InitializationType EStoryGraphTriggerActive_InitializeType
---@field ActivationType EStoryGraphTrigger_ActivateType
---@field ActivationEvent FTimeRigEventReference
---@field FeedbackType ETimeRig_StoryGraphEdgeFeedbackType
---@field FeedbackEvent FTimeRigEventReference
local UStoryGraphTrigger_Activate = {}



---@class UStoryGraphTrigger_Event : UStoryGraphTriggerProvider
---@field SourceEvent FTimeRigEventReference
---@field TargetEvent FTimeRigEventReference
local UStoryGraphTrigger_Event = {}



---@class UStoryGraphTrigger_Initialize : UStoryGraphTriggerProvider
---@field InitializationType EStoryGraphTrigger_InitializeType
---@field InitializationEvent FTimeRigEventReference
---@field FeedbackType ETimeRig_StoryGraphEdgeFeedbackType
---@field FeedbackEvent FTimeRigEventReference
local UStoryGraphTrigger_Initialize = {}



---@class UTimeRig : UTimeRigInterval
---@field ReferencedTimeRigBindings TMap<FName, FReferencedTimeRigBindings>
---@field EventHull TSet<UTimeRigEvent>
---@field ChildElements TArray<UTimeRigElement>
---@field InitializingBehavior ETimeRigInitializingBehavior
---@field RandomSeed int32
---@field StoryGraph UTimeRig_StoryGraph
---@field WarmUpTags TArray<FName>
local UTimeRig = {}



---@class UTimeRigAutoEvent : UTimeRigEvent
---@field DefaultOffset FTimeRigCoordinate
local UTimeRigAutoEvent = {}



---@class UTimeRigChain : UTimeRigInterval
---@field Color FLinearColor
---@field ChildElements TArray<UTimeRigElement>
local UTimeRigChain = {}



---@class UTimeRigChainEvent : UTimeRigEvent
---@field Offset FTimeRigCoordinate
local UTimeRigChainEvent = {}



---@class UTimeRigChainState : UTimeRigIntervalState
local UTimeRigChainState = {}


---@class UTimeRigClampEvent : UTimeRigEvent
---@field Input FTimeRigEventReference
---@field Minimum FTimeRigEventReference
---@field MinimumOffset FTimeRigCoordinate
---@field Maximum FTimeRigEventReference
---@field MaximumOffset FTimeRigCoordinate
local UTimeRigClampEvent = {}



---@class UTimeRigCustomEvent : UTimeRigEvent
---@field CustomEventName FName
---@field DefaultOffset FTimeRigCoordinate
local UTimeRigCustomEvent = {}



---@class UTimeRigElement : UObject
---@field Enabled boolean
---@field ParentElement UTimeRigElement
---@field username FName
---@field NamedSymbols TArray<FTimeRigNamedSymbol>
local UTimeRigElement = {}



---@class UTimeRigElementState : UObject
---@field Context UTimeRigInstanceContext
---@field BaseDefinition UTimeRigElement
local UTimeRigElementState = {}



---@class UTimeRigEvent : UObject
---@field CoordinateIndex int32
local UTimeRigEvent = {}



---@class UTimeRigExternalEvent : UTimeRigEvent
---@field Constraint ETimeRigExternalEventConstraint
---@field DefaultTime float
local UTimeRigExternalEvent = {}



---@class UTimeRigFirstOfEvent : UTimeRigEvent
---@field InputEventReferences TArray<FTimeRigEventReference>
local UTimeRigFirstOfEvent = {}



---@class UTimeRigFractionEvent : UTimeRigEvent
---@field StartReference FTimeRigEventReference
---@field FinishReference FTimeRigEventReference
---@field Fraction float
local UTimeRigFractionEvent = {}



---@class UTimeRigFractionPlusEvent : UTimeRigEvent
---@field StartReference FTimeRigEventReference
---@field FinishReference FTimeRigEventReference
---@field FractionProvider UFloatProvider
local UTimeRigFractionPlusEvent = {}



---@class UTimeRigGroup : UTimeRigInterval
---@field Color FLinearColor
---@field ChildElements TArray<UTimeRigElement>
local UTimeRigGroup = {}



---@class UTimeRigGroupState : UTimeRigIntervalState
local UTimeRigGroupState = {}


---@class UTimeRigInstanceContext : UObject
---@field TimeRig UTimeRig
---@field IsHammerTime boolean
---@field RandomStream FRandomStream
---@field InitializeAsPaused boolean
---@field IsInEditor boolean
---@field ConstrainTimeline boolean
---@field CurrentCursor FTimeRigCursor
---@field InitializationDuration FTimeRigCoordinate
---@field LastInitializationError FTimeRigCoordinate
---@field bSkippingEnabled boolean
---@field bInUnskippableSection boolean
---@field bSkipping boolean
---@field InstanceStateMap TMap<UTimeRigElement, UTimeRigElementState>
---@field EmbeddedContexts TArray<UTimeRigInstanceContext>
---@field ElementStatesNotReadyToPlay TSet<UTimeRigElementState>
---@field PreInitializedEventHandlers TMap<FName, FTimeRigEventHandlerData>
---@field EnteringExitingEntries TArray<FTimeRigEnterExitEntry>
---@field EnteringIntervals TSet<UTimeRigIntervalState>
---@field ExitingIntervals TSet<UTimeRigIntervalState>
---@field InsideIntervals TSet<UTimeRigIntervalState>
---@field SkippedIntervals TSet<UTimeRigIntervalState>
---@field InstantIntervals TSet<UTimeRigIntervalState>
---@field EventsToHandle TArray<FTimeRigEventToHandle>
---@field EventsRegisteredToBeHandled TArray<UTimeRigEvent>
---@field InsideIntervalsPostActorTick TSet<UTimeRigIntervalState>
---@field InstantIntervalsPostActorTick TSet<UTimeRigIntervalState>
local UTimeRigInstanceContext = {}



---@class UTimeRigInterval : UTimeRigElement
---@field Start FTimeRigInputSymbol
---@field Finish FTimeRigOutputSymbol
---@field sortOrder float
---@field UsePostActorTick boolean
local UTimeRigInterval = {}

---@param Previous FTimeRigCoordinate
---@param Current FTimeRigCoordinate
---@param Context UTimeRigInstanceContext
---@param State UTimeRigElementState
function UTimeRigInterval:OnStartChanged(Previous, Current, Context, State) end
---@param Previous FTimeRigCoordinate
---@param Current FTimeRigCoordinate
---@param Context UTimeRigInstanceContext
---@param State UTimeRigElementState
function UTimeRigInterval:OnFinishChanged(Previous, Current, Context, State) end


---@class UTimeRigIntervalState : UTimeRigElementState
local UTimeRigIntervalState = {}


---@class UTimeRigLastOfChildrenEvent : UTimeRigEvent
local UTimeRigLastOfChildrenEvent = {}


---@class UTimeRigLastOfEvent : UTimeRigEvent
---@field InputEventReferences TArray<FTimeRigEventReference>
local UTimeRigLastOfEvent = {}



---@class UTimeRigMatchParentEvent : UTimeRigEvent
local UTimeRigMatchParentEvent = {}


---@class UTimeRigPlaceholder : UTimeRigElement
---@field PlaceholderForType TSubclassOf<UTimeRigElement>
---@field ChildElements TArray<UTimeRigElement>
local UTimeRigPlaceholder = {}



---@class UTimeRigPlaceholderState : UTimeRigElementState
local UTimeRigPlaceholderState = {}


---@class UTimeRigPlayer : UObject
---@field BranchID FName
---@field TimeRig UTimeRig
---@field InstanceContext UTimeRigInstanceContext
---@field PlaybackScale float
---@field RoundTimeToFPS float
---@field SecondsRemainingForAlmostCompleteTrigger float
local UTimeRigPlayer = {}

---@param SecondsFromNow float
---@param BlendTime float
function UTimeRigPlayer:StopIn(SecondsFromNow, BlendTime) end
function UTimeRigPlayer:StopImmediate() end
function UTimeRigPlayer:Stop() end
---@return boolean
function UTimeRigPlayer:Skip() end
---@param Seconds float
function UTimeRigPlayer:SetTime(Seconds) end
---@param Seconds float
function UTimeRigPlayer:SetSecondsRemainingForAlmostCompleteTrigger(Seconds) end
---@param FPS float
function UTimeRigPlayer:SetRoundTimeToFPS(FPS) end
---@param Scale float
function UTimeRigPlayer:SetPlaybackScale(Scale) end
---@param InOnPlaybackStarting FSetOnPlaybackStartingInOnPlaybackStarting
---@return boolean
function UTimeRigPlayer:SetOnPlaybackStarting(InOnPlaybackStarting) end
---@param InOnPlaybackStarted FSetOnPlaybackStartedInOnPlaybackStarted
---@return boolean
function UTimeRigPlayer:SetOnPlaybackStarted(InOnPlaybackStarted) end
---@param LoopingEnabled boolean
---@return boolean
function UTimeRigPlayer:SetLooping(LoopingEnabled) end
---@param actionType UClass
function UTimeRigPlayer:RewindToCurrentStartOf(actionType) end
---@return boolean
function UTimeRigPlayer:ReadyToPlay() end
---@param InActivationSource FName
---@return boolean
function UTimeRigPlayer:PlayImmediate(InActivationSource) end
---@return boolean
function UTimeRigPlayer:PlaybackHasStarted() end
---@param InActivationSource FName
---@return boolean
function UTimeRigPlayer:Play(InActivationSource) end
---@param actionType UClass
function UTimeRigPlayer:PauseAfterCurrentEndOf(actionType) end
function UTimeRigPlayer:Pause() end
---@return boolean
function UTimeRigPlayer:IsWantingToPlayButNotPlaying() end
---@return boolean
function UTimeRigPlayer:IsTicking() end
---@return boolean
function UTimeRigPlayer:IsStopping() end
---@return boolean
function UTimeRigPlayer:IsPlaying() end
---@return boolean
function UTimeRigPlayer:IsLooping() end
---@return boolean
function UTimeRigPlayer:IsInitializing() end
---@return boolean
function UTimeRigPlayer:IsInitialized() end
---@return boolean
function UTimeRigPlayer:IsActive() end
---@param EventName FName
---@return boolean
function UTimeRigPlayer:HasEvent(EventName) end
---@return UTimeRig
function UTimeRigPlayer:GetTimeRig() end
---@return float
function UTimeRigPlayer:GetTime() end
---@return float
function UTimeRigPlayer:GetSecondsRemainingForAlmostCompleteTrigger() end
---@return float
function UTimeRigPlayer:GetRoundTimeToFPS() end
---@return ETimeRigPlayerState
function UTimeRigPlayer:GetPlayerState() end
---@return float
function UTimeRigPlayer:GetPlaybackScale() end
---@return float
function UTimeRigPlayer:GetEndTime() end
---@return float
function UTimeRigPlayer:GetCurrentTime() end
---@return float
function UTimeRigPlayer:GetBeginTime() end
---@param actionType UClass
function UTimeRigPlayer:FastForwardToNextStartOf(actionType) end
---@param actionType UClass
function UTimeRigPlayer:FastForwardToNextEndOf(actionType) end
---@param EventName FName
function UTimeRigPlayer:FastForwardToEvent(EventName) end
---@param actionType UClass
function UTimeRigPlayer:FastForwardToCurrentEndOf(actionType) end
---@param EventName FName
---@return boolean
function UTimeRigPlayer:EventOccursNow(EventName) end
---@param EventName FName
---@param SecondsFromNow float
---@return boolean
function UTimeRigPlayer:EventOccursAt(EventName, SecondsFromNow) end
---@param EventName FName
---@param Handler FAddEventHandlerHandler
---@return boolean
function UTimeRigPlayer:AddEventHandler(EventName, Handler) end
---@param EventName FName
---@param Handler FAddCriticalEventHandlerHandler
---@return boolean
function UTimeRigPlayer:AddCriticalEventHandler(EventName, Handler) end


---@class UTimeRigRelativeEvent : UTimeRigEvent
---@field ParentReference FTimeRigEventReference
---@field Offset FTimeRigCoordinate
local UTimeRigRelativeEvent = {}



---@class UTimeRigRelativePlusEvent : UTimeRigEvent
---@field ParentReference FTimeRigEventReference
---@field OffsetProvider UFloatProvider
local UTimeRigRelativePlusEvent = {}



---@class UTimeRigRule : UTimeRigInterval
---@field BakedChildren TArray<UTimeRigElement>
local UTimeRigRule = {}



---@class UTimeRigRuleState : UTimeRigIntervalState
---@field GeneratedTimeRig UTimeRig
---@field InstanceContext UTimeRigInstanceContext
local UTimeRigRuleState = {}



---@class UTimeRigSelfEvent : UTimeRigEvent
---@field Offset FTimeRigCoordinate
local UTimeRigSelfEvent = {}



---@class UTimeRigSelfPlusEvent : UTimeRigEvent
---@field OffsetProvider UFloatProvider
local UTimeRigSelfPlusEvent = {}



---@class UTimeRigState : UTimeRigIntervalState
local UTimeRigState = {}


---@class UTimeRig_StoryGraph : UObject
---@field Name FString
---@field RootNodes TArray<UTimeRig_StoryGraphNode>
---@field AllNodes TArray<UTimeRig_StoryGraphNode>
---@field AllEdges TArray<UTimeRig_StoryGraphEdge>
---@field bEdgeEnabled boolean
---@field bPersistent boolean
---@field StageLevels TArray<TSoftObjectPtr<UWorld>>
local UTimeRig_StoryGraph = {}

---@param ToConsole boolean
---@param ToScreen boolean
function UTimeRig_StoryGraph:Print(ToConsole, ToScreen) end
---@param Level int32
---@param Nodes TArray<UTimeRig_StoryGraphNode>
function UTimeRig_StoryGraph:GetNodesByLevel(Level, Nodes) end
---@return int32
function UTimeRig_StoryGraph:GetLevelNum() end


---@class UTimeRig_StoryGraphEdge : UObject
---@field Condition UStoryGraphConditionProvider
---@field Trigger UStoryGraphTriggerProvider
---@field InitializationType ETimeRig_StoryGraphEdgeInitType
---@field InitializationEvent FTimeRigEventReference
---@field TriggerType ETimeRig_StoryGraphEdgeTriggerType
---@field BranchID FName
---@field ActivationEvent FTimeRigEventReference
---@field FeedbackType ETimeRig_StoryGraphEdgeFeedbackType
---@field FeedbackEvent FTimeRigEventReference
---@field StartNode UTimeRig_StoryGraphNode
---@field EndNode UTimeRig_StoryGraphNode
local UTimeRig_StoryGraphEdge = {}



---@class UTimeRig_StoryGraphNode : UObject
---@field ParentNodes TArray<UTimeRig_StoryGraphNode>
---@field ChildrenNodes TArray<UTimeRig_StoryGraphNode>
---@field Edges TMap<UTimeRig_StoryGraphNode, UTimeRig_StoryGraphEdge>
local UTimeRig_StoryGraphNode = {}



