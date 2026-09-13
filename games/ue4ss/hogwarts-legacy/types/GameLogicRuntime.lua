---@meta

---@class FBitfield256
local FBitfield256 = {}


---@class FGameLogicBlueprintActionDelegateBinding
---@field ElementName FName
---@field FunctionNameToBind FName
local FGameLogicBlueprintActionDelegateBinding = {}



---@class FGameLogicRealmSettings
---@field RealmPrivacy EGameLogicRealmPrivacy
---@field bLocked boolean
---@field ElementPanelBitFlags int32
---@field ElementPanelMinimized int32
---@field ElementSize TMap<EGameLogicEditorPanel, EGameLogicElementSize>
local FGameLogicRealmSettings = {}



---@class FGameLogicVarAndBitBitfield : FName_GameLogicElement
---@field BitfieldType FString
---@field BitValue FString
local FGameLogicVarAndBitBitfield = {}



---@class FGameLogicVarAndValueBitfield : FName_GameLogicElement
---@field BitfieldType FString
---@field BitfieldValue FString
local FGameLogicVarAndValueBitfield = {}



---@class FGameLogicVarAndValueEnum : FName_GameLogicElement
---@field EnumType FString
---@field EnumValue FString
local FGameLogicVarAndValueEnum = {}



---@class FGlobal_GameLogicElement
---@field ElementName FName
---@field RealmName FName
---@field bGenerateEvent boolean
---@field bDebugValueChange boolean
local FGlobal_GameLogicElement = {}



---@class FGlobal_GameLogicExpression : FGlobal_GameLogicSentence
local FGlobal_GameLogicExpression = {}


---@class FGlobal_GameLogicPropositional : FGlobal_GameLogicSentence
local FGlobal_GameLogicPropositional = {}


---@class FGlobal_GameLogicPropositional_Bitfield : FGlobal_GameLogicPropositional
---@field BitfieldType FString
---@field Values TArray<FString>
local FGlobal_GameLogicPropositional_Bitfield = {}



---@class FGlobal_GameLogicPropositional_Enum : FGlobal_GameLogicPropositional
---@field EnumType FString
---@field Values TArray<FString>
local FGlobal_GameLogicPropositional_Enum = {}



---@class FGlobal_GameLogicPropositional_Float : FGlobal_GameLogicPropositional
---@field Values TArray<float>
local FGlobal_GameLogicPropositional_Float = {}



---@class FGlobal_GameLogicPropositional_Int32 : FGlobal_GameLogicPropositional
---@field Values TArray<int32>
local FGlobal_GameLogicPropositional_Int32 = {}



---@class FGlobal_GameLogicPropositional_String : FGlobal_GameLogicPropositional
---@field Values TArray<FString>
local FGlobal_GameLogicPropositional_String = {}



---@class FGlobal_GameLogicSentence : FGlobal_GameLogicElement
---@field LogicElements TArray<FName>
local FGlobal_GameLogicSentence = {}



---@class FGlobal_GameLogicVar_Bitfield : FGlobal_GameLogicElement
---@field BitfieldType FString
---@field BitfieldValue FString
local FGlobal_GameLogicVar_Bitfield = {}



---@class FGlobal_GameLogicVar_Bool : FGlobal_GameLogicElement
---@field bInitialValue boolean
local FGlobal_GameLogicVar_Bool = {}



---@class FGlobal_GameLogicVar_Enum : FGlobal_GameLogicElement
---@field EnumType FString
---@field EnumValue FString
local FGlobal_GameLogicVar_Enum = {}



---@class FGlobal_GameLogicVar_Float : FGlobal_GameLogicElement
---@field InitialValue float
local FGlobal_GameLogicVar_Float = {}



---@class FGlobal_GameLogicVar_Int32 : FGlobal_GameLogicElement
---@field InitialValue int32
local FGlobal_GameLogicVar_Int32 = {}



---@class FGlobal_GameLogicVar_String : FGlobal_GameLogicElement
---@field InitialValue FString
local FGlobal_GameLogicVar_String = {}



---@class FGlobal_GameLogicVar_Timer : FGlobal_GameLogicElement
---@field InitialValue float
---@field bInitiallyPaused boolean
local FGlobal_GameLogicVar_Timer = {}



---@class FName_GameLogicBoolResult : FName_GameLogicElement
local FName_GameLogicBoolResult = {}


---@class FName_GameLogicElement
---@field ElementName FName
local FName_GameLogicElement = {}



---@class FName_GameLogicExpression : FName_GameLogicElement
local FName_GameLogicExpression = {}


---@class FName_GameLogicPropBitfield : FName_GameLogicElement
local FName_GameLogicPropBitfield = {}


---@class FName_GameLogicPropEnum : FName_GameLogicElement
local FName_GameLogicPropEnum = {}


---@class FName_GameLogicPropFloat : FName_GameLogicElement
local FName_GameLogicPropFloat = {}


---@class FName_GameLogicPropInt32 : FName_GameLogicElement
local FName_GameLogicPropInt32 = {}


---@class FName_GameLogicPropString : FName_GameLogicElement
local FName_GameLogicPropString = {}


---@class FName_GameLogicRealm : FName_GameLogicElement
local FName_GameLogicRealm = {}


---@class FName_GameLogicVarBitfield : FName_GameLogicElement
local FName_GameLogicVarBitfield = {}


---@class FName_GameLogicVarBool : FName_GameLogicElement
local FName_GameLogicVarBool = {}


---@class FName_GameLogicVarEnum : FName_GameLogicElement
local FName_GameLogicVarEnum = {}


---@class FName_GameLogicVarFloat : FName_GameLogicElement
local FName_GameLogicVarFloat = {}


---@class FName_GameLogicVarInt32 : FName_GameLogicElement
local FName_GameLogicVarInt32 = {}


---@class FName_GameLogicVarString : FName_GameLogicElement
local FName_GameLogicVarString = {}


---@class FName_GameLogicVarTimer : FName_GameLogicElement
local FName_GameLogicVarTimer = {}


---@class UGameLogicBPFunctionLibrary : UBlueprintFunctionLibrary
local UGameLogicBPFunctionLibrary = {}

---@param InBlueprint UObject
---@return UGameLogicObject
function UGameLogicBPFunctionLibrary:SpawnAndAttachToGameLogicObject(InBlueprint) end
---@param InputReceiver UObject
---@param GameLogicObject UGameLogicObject
function UGameLogicBPFunctionLibrary:DetachFromGameLogicEvents(InputReceiver, GameLogicObject) end
---@param InputReceiver UObject
---@param GameLogicObject UGameLogicObject
function UGameLogicBPFunctionLibrary:AttachToGameLogicEvents(InputReceiver, GameLogicObject) end


---@class UGameLogicBase : UObject
local UGameLogicBase = {}


---@class UGameLogicBoolBase : UGameLogicBase
local UGameLogicBoolBase = {}

---@return boolean
function UGameLogicBoolBase:GetCachedValue() end


---@class UGameLogicBoolResultDelegateBinding : UDynamicBlueprintBinding
---@field ActionDelegateBindings TArray<FGameLogicBlueprintActionDelegateBinding>
local UGameLogicBoolResultDelegateBinding = {}



---@class UGameLogicComponent : UActorComponent
---@field GameLogicObject UGameLogicObject
local UGameLogicComponent = {}

---@param InActor AActor
---@param Int32VarName FName_GameLogicVarInt32
---@param Value int32
function UGameLogicComponent:SetInt32Variable_OnActor(InActor, Int32VarName, Value) end
---@param Int32VarName FName_GameLogicVarInt32
---@param Value int32
function UGameLogicComponent:SetInt32Variable(Int32VarName, Value) end
---@param InActor AActor
---@param FloatVarName FName_GameLogicVarFloat
---@param Value float
function UGameLogicComponent:SetFloatVariable_OnActor(InActor, FloatVarName, Value) end
---@param FloatVarName FName_GameLogicVarFloat
---@param Value float
function UGameLogicComponent:SetFloatVariable(FloatVarName, Value) end
---@param InActor AActor
---@param BoolVarName FName_GameLogicVarBool
---@param bValue boolean
function UGameLogicComponent:SetBoolVariable_OnActor(InActor, BoolVarName, bValue) end
---@param BoolVarName FName_GameLogicVarBool
---@param bValue boolean
function UGameLogicComponent:SetBoolVariable(BoolVarName, bValue) end
---@param InActor AActor
---@param Int32VarName FName_GameLogicVarInt32
---@param Delta int32
function UGameLogicComponent:IncrementInt32Variable_OnActor(InActor, Int32VarName, Delta) end
---@param Int32VarName FName_GameLogicVarInt32
---@param Delta int32
function UGameLogicComponent:IncrementInt32Variable(Int32VarName, Delta) end
---@param InActor AActor
---@param Int32VarName FName_GameLogicVarInt32
---@return UGameLogicVar_Int32
function UGameLogicComponent:GetReferenceToInt32Variable_OnActor(InActor, Int32VarName) end
---@param Int32VarName FName_GameLogicVarInt32
---@return UGameLogicVar_Int32
function UGameLogicComponent:GetReferenceToInt32Variable(Int32VarName) end
---@param InActor AActor
---@param FloatVarName FName_GameLogicVarFloat
---@return UGameLogicVar_Float
function UGameLogicComponent:GetReferenceToFloatVariable_OnActor(InActor, FloatVarName) end
---@param FloatVarName FName_GameLogicVarFloat
---@return UGameLogicVar_Float
function UGameLogicComponent:GetReferenceToFloatVariable(FloatVarName) end
---@param InActor AActor
---@param ExpressionName FName_GameLogicExpression
---@return UGameLogicExpression
function UGameLogicComponent:GetReferenceToExpression_OnActor(InActor, ExpressionName) end
---@param ExpressionName FName_GameLogicExpression
---@return UGameLogicExpression
function UGameLogicComponent:GetReferenceToExpression(ExpressionName) end
---@param InActor AActor
---@param BoolVarName FName_GameLogicVarBool
---@return UGameLogicVar_Bool
function UGameLogicComponent:GetReferenceToBoolVariable_OnActor(InActor, BoolVarName) end
---@param BoolVarName FName_GameLogicVarBool
---@return UGameLogicVar_Bool
function UGameLogicComponent:GetReferenceToBoolVariable(BoolVarName) end
---@param InActor AActor
---@param Int32VarName FName_GameLogicVarInt32
---@return int32
function UGameLogicComponent:GetInt32Variable_OnActor(InActor, Int32VarName) end
---@param Int32VarName FName_GameLogicVarInt32
---@return int32
function UGameLogicComponent:GetInt32Variable(Int32VarName) end
---@return UGameLogicObject
function UGameLogicComponent:GetGameLogicObject() end
---@param InActor AActor
---@param FloatVarName FName_GameLogicVarFloat
---@return float
function UGameLogicComponent:GetFloatVariable_OnActor(InActor, FloatVarName) end
---@param FloatVarName FName_GameLogicVarFloat
---@return float
function UGameLogicComponent:GetFloatVariable(FloatVarName) end
---@param InActor AActor
---@param ExpressionName FName_GameLogicExpression
---@return boolean
function UGameLogicComponent:GetExpression_OnActor(InActor, ExpressionName) end
---@param ExpressionName FName_GameLogicExpression
---@return boolean
function UGameLogicComponent:GetExpression(ExpressionName) end
---@param InActor AActor
---@param BoolVarName FName_GameLogicVarBool
---@return boolean
function UGameLogicComponent:GetBoolVariable_OnActor(InActor, BoolVarName) end
---@param BoolVarName FName_GameLogicVarBool
---@return boolean
function UGameLogicComponent:GetBoolVariable(BoolVarName) end


---@class UGameLogicExpression : UGameLogicSentence
local UGameLogicExpression = {}

---@param NewResult boolean
function UGameLogicExpression:_MemberValueChanged(NewResult) end


---@class UGameLogicFloatResultDelegateBinding : UDynamicBlueprintBinding
---@field ActionDelegateBindings TArray<FGameLogicBlueprintActionDelegateBinding>
local UGameLogicFloatResultDelegateBinding = {}



---@class UGameLogicGameSettings : UDeveloperSettings
---@field Realms TArray<FName>
---@field RealmSettings TMap<FName, FGameLogicRealmSettings>
---@field BoolVars TArray<FGlobal_GameLogicVar_Bool>
---@field Int32Vars TArray<FGlobal_GameLogicVar_Int32>
---@field FloatVars TArray<FGlobal_GameLogicVar_Float>
---@field TimerVars TArray<FGlobal_GameLogicVar_Timer>
---@field EnumVars TArray<FGlobal_GameLogicVar_Enum>
---@field BitfieldVars TArray<FGlobal_GameLogicVar_Bitfield>
---@field StringVars TArray<FGlobal_GameLogicVar_String>
---@field PropInt32s TArray<FGlobal_GameLogicPropositional_Int32>
---@field PropFloats TArray<FGlobal_GameLogicPropositional_Float>
---@field PropEnums TArray<FGlobal_GameLogicPropositional_Enum>
---@field PropBitfields TArray<FGlobal_GameLogicPropositional_Bitfield>
---@field PropStrings TArray<FGlobal_GameLogicPropositional_String>
---@field Expressions TArray<FGlobal_GameLogicExpression>
local UGameLogicGameSettings = {}

---@param InSize EGameLogicElementSize
---@param ElementType EGameLogicEditorPanel
---@param RealmName FName
function UGameLogicGameSettings:SetElementSizeByPanelAndRealm(InSize, ElementType, RealmName) end
---@param ElementType EGameLogicEditorPanel
---@param Index int32
function UGameLogicGameSettings:RemoveElementByIndex(ElementType, Index) end
---@param ElementType EGameLogicEditorPanel
---@param Index int32
---@param IndexDelta int32
---@param bUseRealm boolean
---@param RealmName FName
function UGameLogicGameSettings:MoveElementByIndex(ElementType, Index, IndexDelta, bUseRealm, RealmName) end
---@param InName FName
---@return boolean
function UGameLogicGameSettings:IsValidElementName(InName) end
---@param InName FName
---@return boolean
function UGameLogicGameSettings:IsUniqueElementName(InName) end
---@param ElementType EGameLogicEditorPanel
---@param InElement FGlobal_GameLogicElement
---@param bUseRealm boolean
---@param RealmName FName
---@return int32
function UGameLogicGameSettings:GetIndexFromElement(ElementType, InElement, bUseRealm, RealmName) end
---@param ElementType EGameLogicEditorPanel
---@param RealmName FName
---@return EGameLogicElementSize
function UGameLogicGameSettings:GetElementSizeByPanelAndRealm(ElementType, RealmName) end
---@param ElementNames TArray<FName>
function UGameLogicGameSettings:GetElementNames(ElementNames) end
---@param ElementType EGameLogicEditorPanel
---@param bUseRealm boolean
---@param RealmName FName
---@return int32
function UGameLogicGameSettings:GetCountFromElement(ElementType, bUseRealm, RealmName) end
---@param ElementType EGameLogicEditorPanel
---@param RealmName FName
---@return boolean
function UGameLogicGameSettings:ElementPanelHasReferences(ElementType, RealmName) end
---@param ElementName FName
---@return boolean
function UGameLogicGameSettings:ElementHasReferences(ElementName) end
---@param RealmName FName
function UGameLogicGameSettings:DestroyRealm(RealmName) end
---@param ElementType EGameLogicEditorPanel
---@param RealmName FName
---@return boolean
function UGameLogicGameSettings:DestroyElementsByRealm(ElementType, RealmName) end
---@param RealmName FName
function UGameLogicGameSettings:CreateRealm(RealmName) end
---@param BaseName FName
---@return FName
function UGameLogicGameSettings:ComputeUniqueElementName(BaseName) end
---@param ElementType EGameLogicEditorPanel
---@param RealmName FName
---@param Index int32
---@param bCopyIndex boolean
---@param IndexToCopy int32
---@return FName
function UGameLogicGameSettings:AddElementToRealm(ElementType, RealmName, Index, bCopyIndex, IndexToCopy) end


---@class UGameLogicInt32ResultDelegateBinding : UDynamicBlueprintBinding
---@field ActionDelegateBindings TArray<FGameLogicBlueprintActionDelegateBinding>
local UGameLogicInt32ResultDelegateBinding = {}



---@class UGameLogicMaster : UObject
---@field GameLogicGameSettings UGameLogicGameSettings
local UGameLogicMaster = {}



---@class UGameLogicObject : UObject
---@field InstancedBoolVars TMap<FName, UGameLogicVar_Bool>
---@field InstancedInt32Vars TMap<FName, UGameLogicVar_Int32>
---@field InstancedFloatVars TMap<FName, UGameLogicVar_Float>
---@field InstancedTimerVars TMap<FName, UGameLogicVar_Timer>
---@field InstancedEnumVars TMap<FName, UGameLogicVar_Enum>
---@field InstancedBitfieldVars TMap<FName, UGameLogicVar_Bitfield>
---@field InstancedStringVars TMap<FName, UGameLogicVar_String>
---@field InstancedPropInt32s TMap<FName, UGameLogicPropositional_Int32>
---@field InstancedPropFloats TMap<FName, UGameLogicPropositional_Float>
---@field InstancedPropEnums TMap<FName, UGameLogicPropositional_Enum>
---@field InstancedPropBitfields TMap<FName, UGameLogicPropositional_Bitfield>
---@field InstancedPropStrings TMap<FName, UGameLogicPropositional_String>
---@field InstancedExpressions TMap<FName, UGameLogicExpression>
local UGameLogicObject = {}

---@param VarAndValue FGameLogicVarAndValueBitfield
function UGameLogicObject:XOrBitfieldVariable(VarAndValue) end
---@param Outer UObject
---@param World UWorld
---@return UGameLogicObject
function UGameLogicObject:SpawnGameLogicObject(Outer, World) end
---@param TimerVarName FName_GameLogicVarTimer
---@param bFlag boolean
---@param Value float
function UGameLogicObject:SetTimerVariablePauseAndValue(TimerVarName, bFlag, Value) end
---@param TimerVarName FName_GameLogicVarTimer
---@param bFlag boolean
function UGameLogicObject:SetTimerVariablePause(TimerVarName, bFlag) end
---@param TimerVarName FName_GameLogicVarTimer
---@param Value float
function UGameLogicObject:SetTimerVariable(TimerVarName, Value) end
---@param StringVarName FName_GameLogicVarString
---@param Value FString
function UGameLogicObject:SetStringVariable(StringVarName, Value) end
---@param Int32VarName FName_GameLogicVarInt32
---@param Value int32
function UGameLogicObject:SetInt32Variable(Int32VarName, Value) end
---@param FloatVarName FName_GameLogicVarFloat
---@param Value float
function UGameLogicObject:SetFloatVariable(FloatVarName, Value) end
---@param EnumVarName FName_GameLogicVarEnum
---@param Value uint8
function UGameLogicObject:SetEnumVariableWithU8(EnumVarName, Value) end
---@param VarAndValue FGameLogicVarAndValueEnum
function UGameLogicObject:SetEnumVariable(VarAndValue) end
---@param BoolVarName FName_GameLogicVarBool
---@param bValue boolean
function UGameLogicObject:SetBoolVariable(BoolVarName, bValue) end
---@param VarAndValue FGameLogicVarAndValueBitfield
function UGameLogicObject:SetBitfieldVariable(VarAndValue) end
---@param VarAndValue FGameLogicVarAndValueBitfield
function UGameLogicObject:OrBitfieldVariable(VarAndValue) end
---@param Int32VarName FName_GameLogicVarInt32
---@param Delta int32
function UGameLogicObject:IncrementInt32Variable(Int32VarName, Delta) end
---@param TimerVarName FName_GameLogicVarTimer
---@return float
function UGameLogicObject:GetTimerVariable(TimerVarName) end
---@param StringVarName FName_GameLogicVarString
---@return FString
function UGameLogicObject:GetStringVariable(StringVarName) end
---@param PropName FName_GameLogicPropString
---@return boolean
function UGameLogicObject:GetStringPropositional(PropName) end
---@param TimerVarName FName_GameLogicVarTimer
---@return UGameLogicVar_Timer
function UGameLogicObject:GetReferenceToTimerVariable(TimerVarName) end
---@param StringVarName FName_GameLogicVarString
---@return UGameLogicVar_String
function UGameLogicObject:GetReferenceToStringVariable(StringVarName) end
---@param PropName FName_GameLogicPropString
---@return UGameLogicPropositional_String
function UGameLogicObject:GetReferenceToPropString(PropName) end
---@param PropName FName_GameLogicPropInt32
---@return UGameLogicPropositional_Int32
function UGameLogicObject:GetReferenceToPropInt32(PropName) end
---@param PropName FName_GameLogicPropFloat
---@return UGameLogicPropositional_Float
function UGameLogicObject:GetReferenceToPropFloat(PropName) end
---@param PropName FName_GameLogicPropEnum
---@return UGameLogicPropositional_Enum
function UGameLogicObject:GetReferenceToPropEnum(PropName) end
---@param PropName FName_GameLogicPropBitfield
---@return UGameLogicPropositional_Bitfield
function UGameLogicObject:GetReferenceToPropBitfield(PropName) end
---@param Int32VarName FName_GameLogicVarInt32
---@return UGameLogicVar_Int32
function UGameLogicObject:GetReferenceToInt32Variable(Int32VarName) end
---@param FloatVarName FName_GameLogicVarFloat
---@return UGameLogicVar_Float
function UGameLogicObject:GetReferenceToFloatVariable(FloatVarName) end
---@param ExpressionName FName_GameLogicExpression
---@return UGameLogicExpression
function UGameLogicObject:GetReferenceToExpression(ExpressionName) end
---@param EnumVarName FName_GameLogicVarEnum
---@return UGameLogicVar_Enum
function UGameLogicObject:GetReferenceToEnumVariable(EnumVarName) end
---@param BoolVarName FName_GameLogicVarBool
---@return UGameLogicVar_Bool
function UGameLogicObject:GetReferenceToBoolVariable(BoolVarName) end
---@param BitfieldVarName FName_GameLogicVarBitfield
---@return UGameLogicVar_Bitfield
function UGameLogicObject:GetReferenceToBitfieldVariable(BitfieldVarName) end
---@param Int32VarName FName_GameLogicVarInt32
---@return int32
function UGameLogicObject:GetInt32Variable(Int32VarName) end
---@param PropName FName_GameLogicPropInt32
---@return boolean
function UGameLogicObject:GetInt32Propositional(PropName) end
---@param FloatVarName FName_GameLogicVarFloat
---@return float
function UGameLogicObject:GetFloatVariable(FloatVarName) end
---@param PropName FName_GameLogicPropFloat
---@return boolean
function UGameLogicObject:GetFloatPropositional(PropName) end
---@param ExpressionName FName_GameLogicExpression
---@return boolean
function UGameLogicObject:GetExpression(ExpressionName) end
---@param EnumVarName FName_GameLogicVarEnum
---@return uint8
function UGameLogicObject:GetEnumVariable(EnumVarName) end
---@param PropName FName_GameLogicPropEnum
---@return boolean
function UGameLogicObject:GetEnumPropositional(PropName) end
---@param BoolVarName FName_GameLogicVarBool
---@return boolean
function UGameLogicObject:GetBoolVariable(BoolVarName) end
---@param BitfieldVarName FName_GameLogicVarBitfield
---@return FBitfield256
function UGameLogicObject:GetBitfieldVariable(BitfieldVarName) end
---@param PropName FName_GameLogicPropBitfield
---@return boolean
function UGameLogicObject:GetBitfieldPropositional(PropName) end
---@param InGameLogicObject UGameLogicObject
---@return UGameLogicObject
function UGameLogicObject:DestroyGameLogicObject(InGameLogicObject) end
---@param BitfieldVarName FGameLogicVarAndBitBitfield
function UGameLogicObject:BitfieldVariable_SetBit(BitfieldVarName) end
---@param VarName FName_GameLogicVarBitfield
function UGameLogicObject:BitfieldVariable_SetAllBits(VarName) end
---@param BitfieldVarName FGameLogicVarAndBitBitfield
function UGameLogicObject:BitfieldVariable_FlipBit(BitfieldVarName) end
---@param BitfieldVarName FGameLogicVarAndBitBitfield
function UGameLogicObject:BitfieldVariable_ClearBit(BitfieldVarName) end
---@param VarAndValue FGameLogicVarAndValueBitfield
function UGameLogicObject:AndBitfieldVariable(VarAndValue) end


---@class UGameLogicPropositional : UGameLogicSentence
local UGameLogicPropositional = {}


---@class UGameLogicPropositional_Bitfield : UGameLogicPropositional
local UGameLogicPropositional_Bitfield = {}

---@param NewResult FBitfield256
function UGameLogicPropositional_Bitfield:_MemberValueChanged(NewResult) end


---@class UGameLogicPropositional_Enum : UGameLogicPropositional
local UGameLogicPropositional_Enum = {}

---@param NewResult uint8
function UGameLogicPropositional_Enum:_MemberValueChanged(NewResult) end


---@class UGameLogicPropositional_Float : UGameLogicPropositional
local UGameLogicPropositional_Float = {}

---@param NewResult float
function UGameLogicPropositional_Float:_MemberValueChanged(NewResult) end


---@class UGameLogicPropositional_Int32 : UGameLogicPropositional
local UGameLogicPropositional_Int32 = {}

---@param NewResult int32
function UGameLogicPropositional_Int32:_MemberValueChanged(NewResult) end


---@class UGameLogicPropositional_String : UGameLogicPropositional
local UGameLogicPropositional_String = {}

---@param NewResult FString
function UGameLogicPropositional_String:_MemberValueChanged(NewResult) end


---@class UGameLogicSentence : UGameLogicBoolBase
local UGameLogicSentence = {}


---@class UGameLogicVar_Bitfield : UGameLogicBase
local UGameLogicVar_Bitfield = {}

---@param Value FBitfield256
function UGameLogicVar_Bitfield:SetCachedValue(Value) end
---@return FBitfield256
function UGameLogicVar_Bitfield:GetCachedValue() end


---@class UGameLogicVar_Bool : UGameLogicBoolBase
local UGameLogicVar_Bool = {}

---@param bValue boolean
function UGameLogicVar_Bool:SetCachedValue(bValue) end


---@class UGameLogicVar_Enum : UGameLogicBase
local UGameLogicVar_Enum = {}

---@param Value uint8
function UGameLogicVar_Enum:SetCachedValue(Value) end
---@return uint8
function UGameLogicVar_Enum:GetCachedValue() end


---@class UGameLogicVar_Float : UGameLogicBase
local UGameLogicVar_Float = {}

---@param Delta float
function UGameLogicVar_Float:Subtract(Delta) end
---@param Value float
function UGameLogicVar_Float:SetCachedValue(Value) end
---@param Factor float
function UGameLogicVar_Float:Multiply(Factor) end
---@return float
function UGameLogicVar_Float:GetCachedValue() end
---@param Factor float
function UGameLogicVar_Float:Divide(Factor) end
---@param Delta float
function UGameLogicVar_Float:Add(Delta) end


---@class UGameLogicVar_Int32 : UGameLogicBase
local UGameLogicVar_Int32 = {}

---@param Delta int32
function UGameLogicVar_Int32:Subtract(Delta) end
---@param Value int32
function UGameLogicVar_Int32:SetCachedValue(Value) end
---@param Factor int32
function UGameLogicVar_Int32:Multiply(Factor) end
---@return int32
function UGameLogicVar_Int32:GetCachedValue() end
---@param Denominator int32
function UGameLogicVar_Int32:Divide(Denominator) end
---@param Delta int32
function UGameLogicVar_Int32:Add(Delta) end


---@class UGameLogicVar_String : UGameLogicBase
local UGameLogicVar_String = {}

---@param Value FString
function UGameLogicVar_String:SetCachedValue(Value) end
---@return FString
function UGameLogicVar_String:GetCachedValue() end


---@class UGameLogicVar_Timer : UGameLogicBoolBase
local UGameLogicVar_Timer = {}

function UGameLogicVar_Timer:TimerExpired() end
---@param Value float
function UGameLogicVar_Timer:SetTimerValue(Value) end
---@param bInPaused boolean
function UGameLogicVar_Timer:SetTimerPause(bInPaused) end
---@param bValue boolean
function UGameLogicVar_Timer:SetCachedValue(bValue) end
---@return boolean
function UGameLogicVar_Timer:IsTimerPaused() end
---@return float
function UGameLogicVar_Timer:GetTimerValue() end


