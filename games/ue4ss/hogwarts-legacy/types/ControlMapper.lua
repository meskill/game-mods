---@meta

---@class FActionToGameLogicInfo : FInputToGameLogicInfo
local FActionToGameLogicInfo = {}


---@class FAxisToGameLogicInfo : FInputToGameLogicInfo
---@field FloatVarName FName_GameLogicVarFloat
---@field EnterValue float
---@field ExitValue float
local FAxisToGameLogicInfo = {}



---@class FBlueprintCustomInputAxisDelegateBinding : FBlueprintInputDelegateBinding
---@field InputAxisName FName
---@field FunctionNameToBind FName
local FBlueprintCustomInputAxisDelegateBinding = {}



---@class FCustomBlueprintAnalogInputDelegateBinding : FBlueprintInputActionDelegateBinding
---@field WatcherRecord UWatcherRecord
---@field SplitWindow FSplitWindow
---@field bUsesGameLogic boolean
local FCustomBlueprintAnalogInputDelegateBinding = {}



---@class FCustomBlueprintInputDelegateBinding : FBlueprintInputActionDelegateBinding
---@field WatcherRecord UWatcherRecord
---@field SplitWindow FSplitWindow
---@field bUsesGameLogic boolean
local FCustomBlueprintInputDelegateBinding = {}



---@class FCustomBlueprintStickInputDelegateBinding : FBlueprintInputActionDelegateBinding
---@field WatcherRecord UWatcherRecord
---@field SplitWindow FSplitWindow
---@field bUsesGameLogic boolean
local FCustomBlueprintStickInputDelegateBinding = {}



---@class FInputContextWithType
---@field ContextName FName
---@field ContextLogicType EInputContextLogicType::Type
---@field bInitialValue boolean
---@field bDebugValueChange boolean
local FInputContextWithType = {}



---@class FInputContextWithTypeDef
---@field ContextName FName
---@field ContextLogicType EInputContextLogicType::Type
---@field bInitialValue boolean
---@field bDebugValueChange boolean
local FInputContextWithTypeDef = {}



---@class FInputFilter
---@field FilterName FName
local FInputFilter = {}



---@class FInputFilterDef
---@field FilterName FName
---@field LogicElements TArray<FName>
local FInputFilterDef = {}



---@class FInputToGameLogicInfo
---@field BoolVarName FName_GameLogicVarBool
---@field bExecuteWhenPaused boolean
local FInputToGameLogicInfo = {}



---@class FName_ControlMapperAction : FName_GameLogicElement
local FName_ControlMapperAction = {}


---@class FName_ControlMapperAxis : FName_GameLogicElement
local FName_ControlMapperAxis = {}


---@class FSplitWindow
---@field QueueOffsetTime float
---@field bQueueStickDirection boolean
local FSplitWindow = {}



---@class UActionToGameLogic : UInputToGameLogic
local UActionToGameLogic = {}


---@class UAnalogButtonWatcher : UButtonWatcher
local UAnalogButtonWatcher = {}

---@param AxisVal float
function UAnalogButtonWatcher:AnalogValue(AxisVal) end


---@class UAnalogButtonWatcherRecord : UButtonWatcherRecord
---@field PressedValue float
---@field ReleasedValue float
local UAnalogButtonWatcherRecord = {}



---@class UAxisToGameLogic : UInputToGameLogic
local UAxisToGameLogic = {}


---@class UBaseWatcher : UObject
---@field WatcherRecord UWatcherRecord
local UBaseWatcher = {}

---@param bNewResult boolean
function UBaseWatcher:FiltersHaveChanged(bNewResult) end


---@class UButtonWatcher : UBaseWatcher
local UButtonWatcher = {}

---@param NewResult boolean
function UButtonWatcher:ModifierChanged(NewResult) end
---@param InWatcherRecord UWatcherRecord
function UButtonWatcher:FlushQueuedActions(InWatcherRecord) end
---@param NewResult boolean
function UButtonWatcher:ExpressionChanged(NewResult) end
function UButtonWatcher:ButtonReleased() end
function UButtonWatcher:ButtonPressed() end
function UButtonWatcher:ActionInitiate() end
function UButtonWatcher:ActionCancel() end


---@class UButtonWatcherRecord : UWatcherRecord
local UButtonWatcherRecord = {}


---@class UContextFilterComponent : UGameLogicComponent
---@field StartingContexts TArray<FName>
local UContextFilterComponent = {}

---@param InActor AActor
---@param Context FInputContextWithType
---@param bFlag boolean
function UContextFilterComponent:SetContextOnActor(InActor, Context, bFlag) end
---@param Context FInputContextWithType
---@param bFlag boolean
function UContextFilterComponent:SetContext(Context, bFlag) end
---@param InFilter FInputFilter
function UContextFilterComponent:RemoveFilter(InFilter) end
---@param InActor AActor
---@param Context FInputContextWithType
---@return boolean
function UContextFilterComponent:GetContextOnActor(InActor, Context) end
---@param Context FInputContextWithType
---@return boolean
function UContextFilterComponent:GetContext(Context) end
---@param InActor AActor
---@param InputFilter FInputFilter
---@return boolean
function UContextFilterComponent:EvaluateFilterOnActor(InActor, InputFilter) end
---@param InFilter FInputFilter
---@return boolean
function UContextFilterComponent:EvaluateFilter(InFilter) end
---@param InActor AActor
---@param Context FInputContextWithType
function UContextFilterComponent:ClearContextOnActor(InActor, Context) end
---@param Context FInputContextWithType
function UContextFilterComponent:ClearContext(Context) end
---@param InFilter FInputFilter
function UContextFilterComponent:AddFilter(InFilter) end


---@class UControlMapperBPFunctionLibrary : UBlueprintFunctionLibrary
local UControlMapperBPFunctionLibrary = {}

---@param InputComponentOwner AActor
---@param InputAxisName FName
---@return float
function UControlMapperBPFunctionLibrary:GetInputAxisValue(InputComponentOwner, InputAxisName) end
---@param InputReceiver UObject
---@param InputComponent UInputComponent
function UControlMapperBPFunctionLibrary:EnableCustomInput(InputReceiver, InputComponent) end
---@param InputReceiver UObject
---@param InputComponent UInputComponent
function UControlMapperBPFunctionLibrary:DisableCustomInput(InputReceiver, InputComponent) end


---@class UControlMapperPlayerInput : UPlayerInput
local UControlMapperPlayerInput = {}


---@class UControlMapperSettings : UObject
---@field UsesRealm FName_GameLogicRealm
---@field ActionToGameLogicBool TMap<FName_ControlMapperAction, FActionToGameLogicInfo>
---@field AxisToGameLogicBool TMap<FName_ControlMapperAxis, FAxisToGameLogicInfo>
local UControlMapperSettings = {}



---@class UCustomAnalogInputActionDelegateBinding : UCustomInputDelegateBinding
---@field InputActionDelegateBindings TArray<FCustomBlueprintAnalogInputDelegateBinding>
local UCustomAnalogInputActionDelegateBinding = {}



---@class UCustomInputActionDelegateBinding : UCustomInputDelegateBinding
---@field InputActionDelegateBindings TArray<FCustomBlueprintInputDelegateBinding>
local UCustomInputActionDelegateBinding = {}



---@class UCustomInputAxisDelegateBinding : UCustomInputDelegateBinding
---@field InputAxisDelegateBindings TArray<FBlueprintInputAxisDelegateBinding>
local UCustomInputAxisDelegateBinding = {}



---@class UCustomInputDelegateBinding : UInputDelegateBinding
local UCustomInputDelegateBinding = {}


---@class UCustomStickInputActionDelegateBinding : UCustomInputDelegateBinding
---@field InputActionDelegateBindings TArray<FCustomBlueprintStickInputDelegateBinding>
local UCustomStickInputActionDelegateBinding = {}



---@class UInputToGameLogic : UObject
local UInputToGameLogic = {}

function UInputToGameLogic:InputFlushed() end


---@class UInputWatcherComponent : UInputComponent
---@field Watchers TArray<UBaseWatcher>
---@field InputToGameLogicMap TMap<FName, UInputToGameLogic>
---@field UpdateWatcherList TArray<UBaseWatcher>
---@field GameLogicObject UGameLogicObject
local UInputWatcherComponent = {}

---@return UGameLogicObject
function UInputWatcherComponent:GetGameLogicObject() end
---@param Owner AActor
---@param StickFlickWatcherRecord UStickFlickWatcherRecord
---@return FVector2D
function UInputWatcherComponent:GetFlickDirection(Owner, StickFlickWatcherRecord) end
---@param Owner AActor
---@param InWatcherRecord UWatcherRecord
function UInputWatcherComponent:FlushQueuedActionsOnOwner(Owner, InWatcherRecord) end
---@param InWatcherRecord UWatcherRecord
function UInputWatcherComponent:FlushQueuedActions(InWatcherRecord) end


---@class UStickFlickWatcher : UStickWatcher
local UStickFlickWatcher = {}


---@class UStickFlickWatcherRecord : UStickWatcherRecord
---@field PreFlickRestTime float
---@field MaxTime float
---@field MinMagnitude float
local UStickFlickWatcherRecord = {}



---@class UStickWatcher : UBaseWatcher
local UStickWatcher = {}

---@param AxisVal float
function UStickWatcher:StickY(AxisVal) end
---@param AxisVal float
function UStickWatcher:StickX(AxisVal) end
---@return FVector2D
function UStickWatcher:GetInputAxes() end
function UStickWatcher:ActionStop() end
function UStickWatcher:ActionStart() end
function UStickWatcher:ActionCancel() end


---@class UStickWatcherRecord : UWatcherRecord
---@field StickMagCurve UCurveFloat
local UStickWatcherRecord = {}



---@class UTimedButtonWatcher : UButtonWatcher
local UTimedButtonWatcher = {}

---@param InChargeTime float
function UTimedButtonWatcher:SetChargeTime(InChargeTime) end
---@return float
function UTimedButtonWatcher:RestoreChargeTime() end
function UTimedButtonWatcher:ActionStop() end


---@class UTimedButtonWatcherRecord : UButtonWatcherRecord
---@field ChargeTime float
local UTimedButtonWatcherRecord = {}



---@class UWatcherRecord : UObject
---@field LogicFilters TArray<FInputFilter>
---@field bRequireControlReleaseBeforeActionPressed boolean
---@field bFilterMustBeTrueAtActionPressed boolean
---@field bFilterMustBeTrueAtActionReleased boolean
---@field bActionPressedMustHaveBeenSentToSendActionReleased boolean
---@field bRequireRepressAfterCancel boolean
---@field bExecuteWhenPaused boolean
---@field bModifierRequired boolean
---@field ModifierName FName_GameLogicExpression
---@field bRequiredModifierValue boolean
local UWatcherRecord = {}



