---@meta

---@class ASkinFXDefinition : AActor
---@field Priority ESkinFXEffectPriority
---@field MaterialSuffixOverride FName
---@field MaterialSubTypeOverride FSkinFXSubTypeProperty
---@field SwapType ESkinFXEffectSwapType
---@field OverrideMaterial TSoftObjectPtr<UMaterialInterface>
---@field DefaultSwapRules FMaterialSwapRules
---@field DefaultMeshStates TArray<UMaterialSwapMeshState>
---@field ASREnvelope FSkinFXASREnvelope
---@field EventTriggers TArray<USkinFXEventTrigger>
---@field Scalars TArray<FSkinFXScalar>
---@field ScalarCurves TArray<FSkinFXScalarCurve>
---@field Colors TArray<FSkinFXColor>
---@field ColorCurves TArray<FSkinFXColorCurve>
---@field Sockets TArray<FSkinFXSocket>
---@field LerpSockets TArray<FSkinFXSocketLerp>
---@field Textures TArray<FSkinFXTexture>
---@field Drivers TArray<USkinFXParameterDriver>
---@field FunctionMods TArray<FSkinFXFunctionMod>
---@field NoiseFunctionMods TArray<FSkinFXNoiseFunctionMod>
---@field NiagaraParameters FNiagaraMaterialDriverSetup
---@field StandardParamsStartOnly FSkinFXStandardParamsInitial
---@field StandardParamsEveryFrame FSkinFXStandardParams
---@field ExtraPreloads TArray<TSoftObjectPtr<UObject>>
---@field bAllowInBackground boolean
---@field TimeSource ESkinFXEffectTimeSource
---@field bDestroyActorWhenDone boolean
---@field bFullRetriggerOnRestart boolean
---@field bShowSwapErrors boolean
local ASkinFXDefinition = {}



---@class ASkinFXDefinitionGraph : ASkinFXDefinition
---@field bWantPerTickUpdateEvent boolean
---@field bSignalFinished boolean
local ASkinFXDefinitionGraph = {}

---@param tickMe boolean
function ASkinFXDefinitionGraph:WantPerTickUpdateEvent(tickMe) end
---@param DeltaTime float
function ASkinFXDefinitionGraph:SkinFXUpdateTick(DeltaTime) end
function ASkinFXDefinitionGraph:SkinFXSignalFinished() end
---@param ParameterName FName
---@param Value FVector
---@param packAlpha float
function ASkinFXDefinitionGraph:SkinFXSetVectorParameter(ParameterName, Value, packAlpha) end
---@param ParameterName FName
---@param Value UTexture
function ASkinFXDefinitionGraph:SkinFXSetTextureParameter(ParameterName, Value) end
---@param ParameterName FName
---@param Value float
function ASkinFXDefinitionGraph:SkinFXSetScalarParameter(ParameterName, Value) end
---@param parameterValues FMaterialSwapParameters
function ASkinFXDefinitionGraph:SkinFXSetParameters(parameterValues) end
---@param ParameterName FName
---@param Value FLinearColor
function ASkinFXDefinitionGraph:SkinFXSetColorParameter(ParameterName, Value) end
function ASkinFXDefinitionGraph:SkinFXNotifyStart() end
---@param CurrentTime float
function ASkinFXDefinitionGraph:SkinFXNotifyRetrigger(CurrentTime) end
function ASkinFXDefinitionGraph:SkinFXNotifyKill() end
---@param EndStyle ESkinFXEffectEndStyle
---@param CurrentTime float
function ASkinFXDefinitionGraph:SkinFXNotifyEnd(EndStyle, CurrentTime) end
function ASkinFXDefinitionGraph:SkinFXInitialUpdate() end
---@param RunningSkinFXComponent USkinFXComponent
function ASkinFXDefinitionGraph:SkinFXGetSkinFXComponent(RunningSkinFXComponent) end
---@param MyEffectName FName
function ASkinFXDefinitionGraph:SkinFXGetMyEffectName(MyEffectName) end
---@return float
function ASkinFXDefinitionGraph:SkinFXGetEnvelopeValueLinear() end
---@return float
function ASkinFXDefinitionGraph:SkinFXGetEnvelopeValueCurve() end
---@param ParameterName FName
---@param ParameterValue float
---@param bParameterFound boolean
function ASkinFXDefinitionGraph:SkinFXGetCurrentScalarParameter(ParameterName, ParameterValue, bParameterFound) end
---@param CurrentParameters FMaterialSwapParameters
function ASkinFXDefinitionGraph:SkinFXGetCurrentParameters(CurrentParameters) end
---@param ParameterName FName
---@param ParameterValue FLinearColor
---@param bParameterFound boolean
function ASkinFXDefinitionGraph:SkinFXGetCurrentColorParameter(ParameterName, ParameterValue, bParameterFound) end
---@param AffectedActor AActor
function ASkinFXDefinitionGraph:SkinFXGetAffectedActor(AffectedActor) end
---@param RunningSkinFXComponent USkinFXComponent
---@param Event ESkinFXDelegateEvent
function ASkinFXDefinitionGraph:SkinFXEventNotify(RunningSkinFXComponent, Event) end
---@return boolean
function ASkinFXDefinitionGraph:SkinFXApplyParameters() end


---@class ASkinFXSingleton : AActor
---@field Library USkinFXLibrary
---@field Definitions TMap<TSubclassOf<ASkinFXDefinition>, FSkinFXEffectDefinition>
---@field DataDependencies USimpleDataSet
---@field bSignalledAllReady boolean
local ASkinFXSingleton = {}



---@class FAbsoluteTracker : FLocatorTracker
local FAbsoluteTracker = {}


---@class FActorTracker : FLocatorTracker
---@field Actor TWeakObjectPtr<AActor>
local FActorTracker = {}



---@class FBoneTracker : FActorTracker
---@field BoneComponent TWeakObjectPtr<USkinnedMeshComponent>
---@field BoneName FName
---@field BoneIndex int32
local FBoneTracker = {}



---@class FComponentTracker : FActorTracker
---@field SceneComponent TWeakObjectPtr<USceneComponent>
local FComponentTracker = {}



---@class FLocatorTracker
local FLocatorTracker = {}


---@class FNiagaraMaterialDriverAttachSetup
---@field Point FName
---@field Offset FVector
---@field Rotation FRotator
local FNiagaraMaterialDriverAttachSetup = {}



---@class FNiagaraMaterialDriverParameter
---@field NiagaraVariableName FName
---@field Type ENiagaraMaterialDriverParameterType
---@field MaterialParameter FName
---@field Scale float
---@field bEnabled boolean
---@field bScale boolean
local FNiagaraMaterialDriverParameter = {}



---@class FNiagaraMaterialDriverSetup
---@field NiagaraSystem UNiagaraSystem
---@field NiagaraSystemAsset TSoftObjectPtr<UNiagaraSystem>
---@field UseSpecificEmitter FName
---@field Parameters TArray<FNiagaraMaterialDriverParameter>
---@field MaxParameterParticles int32
---@field Attach FNiagaraMaterialDriverAttachSetup
---@field bAutoDestroy boolean
---@field InitialDelay float
local FNiagaraMaterialDriverSetup = {}



---@class FNiagaraMaterialDriverState
---@field NiagaraComponent UNiagaraComponent
---@field EmitterName FName
---@field Age float
---@field bOwnsComponent boolean
---@field bSystemFinished boolean
local FNiagaraMaterialDriverState = {}



---@class FRefPoseTracker : FLocatorTracker
---@field ReferenceTransform FTransform
---@field BoneName FName
---@field BoneIndex int32
local FRefPoseTracker = {}



---@class FSkinFXASREnvelope
---@field AttackDuration float
---@field AttackEase FSkinFXEnvelopeEase
---@field SustainDuration float
---@field bSustainHold boolean
---@field ReleaseDuration float
---@field ReleaseEase FSkinFXEnvelopeEase
---@field bInfiniteSustain boolean
---@field bInferLifetime boolean
local FSkinFXASREnvelope = {}



---@class FSkinFXASREnvelopeState
---@field Envelope FSkinFXASREnvelope
---@field Age float
---@field StateTime float
---@field State ESkinFXEnvelopeState
---@field CurveValue float
---@field LinearValue float
---@field bBreakHold boolean
local FSkinFXASREnvelopeState = {}



---@class FSkinFXApplyFunctionMod
---@field Function FSkinFXFunctionProperty
---@field Scale float
---@field Op ESkinFXFunctionModOp
---@field ClampMin float
---@field ClampMax float
---@field bClampMin boolean
---@field bClampMax boolean
local FSkinFXApplyFunctionMod = {}



---@class FSkinFXApplyFunctionModColor
---@field Function FSkinFXFunctionProperty
---@field Scale float
---@field Op ESkinFXFunctionModOp
---@field ClampMin float
---@field ClampMax float
---@field bClampMin boolean
---@field bClampMax boolean
---@field ColorMod ESkinFXEnvelopeColorMod
local FSkinFXApplyFunctionModColor = {}



---@class FSkinFXAutoTriggeNiagaraInfo
---@field NiagaraSystem UNiagaraSystem
---@field AttachPointName FName
---@field Location FVector
---@field Rotation FRotator
---@field Scale FVector
---@field LocationType EAttachLocation::Type
local FSkinFXAutoTriggeNiagaraInfo = {}



---@class FSkinFXAutoTriggeSkinFXInfo
---@field SkinFX TSubclassOf<ASkinFXDefinition>
local FSkinFXAutoTriggeSkinFXInfo = {}



---@class FSkinFXAutoTriggerDriverEffectInfo : FSkinFXAutoTriggerEffectInfo
---@field Priority float
---@field Parameters FMaterialSwapParameters
local FSkinFXAutoTriggerDriverEffectInfo = {}



---@class FSkinFXAutoTriggerDriverTracker
---@field Driver USkinFXAutoTriggerDriver
---@field EffectInfo FSkinFXAutoTriggerEffectInfo
---@field Priority float
---@field NiagaraComponent UNiagaraComponent
---@field bSignalledActive boolean
---@field bSignalledInactive boolean
local FSkinFXAutoTriggerDriverTracker = {}



---@class FSkinFXAutoTriggerEffectInfo
---@field SkinFX FSkinFXAutoTriggeSkinFXInfo
---@field NiagaraFX FSkinFXAutoTriggeNiagaraInfo
local FSkinFXAutoTriggerEffectInfo = {}



---@class FSkinFXBoneProperty
---@field Name FName
local FSkinFXBoneProperty = {}



---@class FSkinFXColor
---@field MaterialParameter FSkinFXMaterialVectorProperty
---@field Color FLinearColor
---@field EnvelopeColorMod ESkinFXEnvelopeColorMod
---@field bMultiplyByASREnvelope boolean
---@field Advanced FSkinFXColorAdvanced
local FSkinFXColor = {}



---@class FSkinFXColorAdvanced
---@field FunctionMod FSkinFXApplyFunctionModColor
---@field Convert ESkinFXColorConvert
---@field bPreviewOnly boolean
local FSkinFXColorAdvanced = {}



---@class FSkinFXColorCurve
---@field MaterialParameter FSkinFXMaterialVectorProperty
---@field ColorCurve FRuntimeCurveLinearColor
---@field bStretchToEnvelope boolean
---@field bLoop boolean
---@field EnvelopeColorMod ESkinFXEnvelopeColorMod
---@field bMultiplyByASREnvelope boolean
---@field Advanced FSkinFXColorAdvanced
local FSkinFXColorCurve = {}



---@class FSkinFXColorPreview
---@field PreviewCurve FRuntimeCurveLinearColor
local FSkinFXColorPreview = {}



---@class FSkinFXEffectDefinition
---@field Name FName
---@field Blueprint UClass
---@field Effect ASkinFXDefinition
local FSkinFXEffectDefinition = {}



---@class FSkinFXEffectEnd
---@field EndStyle ESkinFXEffectEndStyle
---@field bEnd boolean
local FSkinFXEffectEnd = {}



---@class FSkinFXEffectLibraryEntry
---@field Effect TSubclassOf<ASkinFXDefinition>
---@field FXName FName
---@field TypeOverride FName
local FSkinFXEffectLibraryEntry = {}



---@class FSkinFXEffectTypeOverrideEntry
---@field ActorClassPtr TSoftClassPtr<AActor>
---@field TypeOverride FName
---@field bAllowSubclasses boolean
local FSkinFXEffectTypeOverrideEntry = {}



---@class FSkinFXEnvelopeEase
---@field Easing EEasingFunc::Type
---@field BlendExp float
---@field Steps int32
local FSkinFXEnvelopeEase = {}



---@class FSkinFXEnvelopeReshaper
---@field Shaping FSkinFXEnvelopeEase
---@field bReshape boolean
local FSkinFXEnvelopeReshaper = {}



---@class FSkinFXExternalContext
---@field FXName FName
---@field TimeFactor float
---@field Values FMaterialSwapParameters
---@field MeshStates TArray<UMaterialSwapMeshState>
---@field bMeshStatesSet boolean
local FSkinFXExternalContext = {}



---@class FSkinFXFunctionMod
---@field FunctionName FName
---@field Curve FRuntimeFloatCurve
---@field bStretchToEnvelope boolean
---@field bLoop boolean
---@field bMultiplyByASREnvelope boolean
---@field Advanced FSkinFXFunctionModAdvanced
local FSkinFXFunctionMod = {}



---@class FSkinFXFunctionModAdvanced
---@field ReshapeASREnvelope FSkinFXEnvelopeReshaper
local FSkinFXFunctionModAdvanced = {}



---@class FSkinFXFunctionProperty
---@field Name FName
local FSkinFXFunctionProperty = {}



---@class FSkinFXLerpIndex
---@field Index0 int32
---@field Index1 int32
---@field Alpha float
local FSkinFXLerpIndex = {}



---@class FSkinFXLocatorListPositionalSource
---@field Bone FSkinFXBoneProperty
---@field Socket FSkinFXSocketProperty
---@field Source ESkinFXLocatorListPositionalSourceType
---@field ExtraParameters FSkinFXUIParameters
local FSkinFXLocatorListPositionalSource = {}



---@class FSkinFXMaterialOverride
---@field Type ESkinFXMaterialOverrideType
---@field Materials TArray<TSoftObjectPtr<UMaterialInterface>>
local FSkinFXMaterialOverride = {}



---@class FSkinFXMaterialParamProperty
---@field Name FName
local FSkinFXMaterialParamProperty = {}



---@class FSkinFXMaterialSaver
---@field Mesh UMeshComponent
---@field OriginalMaterials TArray<UMaterialInterface>
local FSkinFXMaterialSaver = {}



---@class FSkinFXMaterialScalarProperty
---@field Name FName
local FSkinFXMaterialScalarProperty = {}



---@class FSkinFXMaterialTextureProperty
---@field Name FName
local FSkinFXMaterialTextureProperty = {}



---@class FSkinFXMaterialVectorProperty
---@field Name FName
local FSkinFXMaterialVectorProperty = {}



---@class FSkinFXNoiseFunctionMod
---@field FunctionName FName
---@field TimeBase float
---@field Lumpiness float
---@field Amplitude float
---@field Offset float
---@field bStretchToEnvelope boolean
---@field bLoop boolean
---@field bMultiplyByASREnvelope boolean
---@field Advanced FSkinFXNoiseFunctionModAdvanced
local FSkinFXNoiseFunctionMod = {}



---@class FSkinFXNoiseFunctionModAdvanced
---@field ReshapeASREnvelope FSkinFXEnvelopeReshaper
local FSkinFXNoiseFunctionModAdvanced = {}



---@class FSkinFXParameterDriverContext
---@field World UWorld
---@field Effect ASkinFXDefinition
---@field Component USkinFXComponent
---@field Owner AActor
---@field ForceEnd FSkinFXEffectEnd
---@field bSignalledEnd boolean
local FSkinFXParameterDriverContext = {}



---@class FSkinFXPreviewAnimationSetup
---@field AnimToPlay TSoftObjectPtr<UAnimationAsset>
---@field Position float
---@field PlayRate float
---@field bIsLooping boolean
---@field bIsPlaying boolean
local FSkinFXPreviewAnimationSetup = {}



---@class FSkinFXPreviewSetup
---@field Type ESkinFXPreviewType
---@field StaticMeshAsset TSoftObjectPtr<UStaticMesh>
---@field SkeletalMeshAsset TSoftObjectPtr<USkeletalMesh>
---@field Animation FSkinFXPreviewAnimationSetup
---@field MaterialOverrides FSkinFXMaterialOverride
local FSkinFXPreviewSetup = {}



---@class FSkinFXRunningEffect
---@field EffectDefinition FSkinFXEffectDefinition
---@field BlueprintGraph ASkinFXDefinitionGraph
local FSkinFXRunningEffect = {}



---@class FSkinFXRunningEffectInstance
---@field Effect FSkinFXRunningEffect
---@field Envelope FSkinFXASREnvelopeState
---@field DriverContext FSkinFXParameterDriverContext
---@field NiagaraDriver UNiagaraMaterialSwapDriver
---@field MaterialSwap UMaterialSwap
---@field MaterialSwapRules FMaterialSwapRules
---@field HistoryParameters FMaterialSwapParameters
---@field CommitBlueprintParameters FMaterialSwapParameters
---@field StagedBlueprintParameters FMaterialSwapParameters
---@field EventBroadcastMask int32
---@field EnvelopeState ESkinFXEnvelopeState
---@field bEnvelopeStateValid boolean
---@field bHaveAppliedInitialParameters boolean
local FSkinFXRunningEffectInstance = {}



---@class FSkinFXScalar
---@field MaterialParameter FSkinFXMaterialScalarProperty
---@field Scalar float
---@field bMultiplyByASREnvelope boolean
---@field Advanced FSkinFXScalarAdvanced
local FSkinFXScalar = {}



---@class FSkinFXScalarAdvanced
---@field FunctionMod FSkinFXApplyFunctionMod
---@field bPreviewOnly boolean
local FSkinFXScalarAdvanced = {}



---@class FSkinFXScalarCurve
---@field MaterialParameter FSkinFXMaterialScalarProperty
---@field ScalarCurve FRuntimeFloatCurve
---@field OutputScale float
---@field bStretchToEnvelope boolean
---@field bLoop boolean
---@field bMultiplyByASREnvelope boolean
---@field Advanced FSkinFXScalarAdvanced
local FSkinFXScalarCurve = {}



---@class FSkinFXScalarPreview
---@field PreviewCurve FRuntimeFloatCurve
local FSkinFXScalarPreview = {}



---@class FSkinFXSocket
---@field MaterialParameter FSkinFXMaterialParamProperty
---@field Socket FSkinFXSocketProperty
---@field Bone FSkinFXBoneProperty
---@field SocketOutput ESkinFXSocketOutput
---@field SocketOutputAlpha ESkinFXSocketOutputAlphaPack
---@field bMultiplyColorByEnvelope boolean
---@field EnvelopeColorMod ESkinFXEnvelopeColorMod
---@field bMultiplyScalarByEnvelope boolean
---@field Advanced FSkinFXSocketAdvanced
---@field bUseBone boolean
---@field bUseReferencePose boolean
local FSkinFXSocket = {}



---@class FSkinFXSocketAdvanced
---@field UseSpecificComponent FName
---@field bEvaluateOnlyAtStart boolean
---@field bPreviewOnly boolean
local FSkinFXSocketAdvanced = {}



---@class FSkinFXSocketLerp
---@field MaterialParameter FSkinFXMaterialParamProperty
---@field SocketOne FSkinFXSocketProperty
---@field BoneOne FSkinFXBoneProperty
---@field SocketTwo FSkinFXSocketProperty
---@field BoneTwo FSkinFXBoneProperty
---@field bUseBoneOne boolean
---@field bUseBoneTwo boolean
---@field SocketOutput ESkinFXSocketOutput
---@field SocketOutputAlpha ESkinFXSocketOutputAlphaPack
---@field LerpCurve FRuntimeFloatCurve
---@field bStretchToEnvelope boolean
---@field bLoop boolean
---@field bMultiplyByASREnvelope boolean
---@field Advanced FSkinFXSocketLerpAdvanced
local FSkinFXSocketLerp = {}



---@class FSkinFXSocketLerpAdvanced
---@field UseSpecificComponent FName
---@field bEvaluateOnlyAtStart boolean
---@field bPreviewOnly boolean
local FSkinFXSocketLerpAdvanced = {}



---@class FSkinFXSocketProperty
---@field Name FName
local FSkinFXSocketProperty = {}



---@class FSkinFXStandardParams
---@field Age FName
---@field EnvelopeValue FName
---@field EnvelopePhase FName
---@field EnvelopeAttackPhase FName
---@field EnvelopeSustainPhase FName
---@field EnvelopeReleasePhase FName
---@field Bounds FSkinFXStandardParamsBounds
---@field bAge boolean
---@field bEnvelopeValue boolean
---@field bEnvelopePhase boolean
---@field bEnvelopeAttackPhase boolean
---@field bEnvelopeSustainPhase boolean
---@field bEnvelopeReleasePhase boolean
local FSkinFXStandardParams = {}



---@class FSkinFXStandardParamsBounds
---@field Sphere FName
---@field BoxMin FName
---@field BoxMax FName
---@field BoxCenter FName
---@field BoxExtent FName
---@field ScreenSpaceBoxMinMax FName
---@field ScreenSpaceBoxCenterExtent FName
---@field ScreenSpaceBoundingCircle FName
---@field bSphere boolean
---@field bBoxMin boolean
---@field bBoxMax boolean
---@field bBoxCenter boolean
---@field bBoxExtent boolean
---@field bScreenSpaceBoxMinMax boolean
---@field bScreenSpaceBoxCenterExtent boolean
---@field bScreenSpaceBoundingCircle boolean
local FSkinFXStandardParamsBounds = {}



---@class FSkinFXStandardParamsInitial
---@field StartTime FName
---@field RandomSeed FName
---@field RandomUnitVector FName
---@field Bounds FSkinFXStandardParamsBounds
---@field bStartTime boolean
---@field bRandomSeed boolean
---@field bRandomUnitVector boolean
local FSkinFXStandardParamsInitial = {}



---@class FSkinFXSubTypeProperty
---@field Name FName
local FSkinFXSubTypeProperty = {}



---@class FSkinFXTexture
---@field MaterialParameter FSkinFXMaterialTextureProperty
---@field Texture TSoftObjectPtr<UTexture>
---@field Advanced FSkinFXTextureAdvanced
local FSkinFXTexture = {}



---@class FSkinFXTextureAdvanced
---@field bPreviewOnly boolean
local FSkinFXTextureAdvanced = {}



---@class FSkinFXUIParameters
---@field Scalars TArray<FSkinFXUIScalarParameter>
---@field Vectors TArray<FSkinFXUIVectorParameter>
local FSkinFXUIParameters = {}



---@class FSkinFXUIScalarParameter
---@field Parameter FSkinFXMaterialScalarProperty
---@field Value float
local FSkinFXUIScalarParameter = {}



---@class FSkinFXUIVectorParameter
---@field Parameter FSkinFXMaterialVectorProperty
---@field Value FLinearColor
local FSkinFXUIVectorParameter = {}



---@class FSocketTracker : FActorTracker
---@field SocketComponent TWeakObjectPtr<USceneComponent>
---@field SocketName FName
local FSocketTracker = {}



---@class ISkinFXBlueprintInterface : IInterface
local ISkinFXBlueprintInterface = {}


---@class ULocatorTrackerLibrary : UBlueprintFunctionLibrary
local ULocatorTrackerLibrary = {}

---@param Actor AActor
---@param SocketName FName
---@param Tracker FSocketTracker
---@param bTrackerValid boolean
function ULocatorTrackerLibrary:MakeSocketTracker(Actor, SocketName, Tracker, bTrackerValid) end
---@param Actor AActor
---@param BoneName FName
---@param Tracker FRefPoseTracker
---@param bTrackerValid boolean
function ULocatorTrackerLibrary:MakeRefPoseTracker(Actor, BoneName, Tracker, bTrackerValid) end
---@param Component USceneComponent
---@param Tracker FLocatorTracker
---@param bTrackerValid boolean
function ULocatorTrackerLibrary:MakeComponentTracker(Component, Tracker, bTrackerValid) end
---@param Actor AActor
---@param BoneName FName
---@param Tracker FBoneTracker
---@param bTrackerValid boolean
function ULocatorTrackerLibrary:MakeBoneTracker(Actor, BoneName, Tracker, bTrackerValid) end
---@param Actor AActor
---@param Tracker FActorTracker
---@param bTrackerValid boolean
function ULocatorTrackerLibrary:MakeActorTracker(Actor, Tracker, bTrackerValid) end
---@param Actor AActor
---@param BoneName FName
---@param Transform FTransform
---@param bValid boolean
function ULocatorTrackerLibrary:GetRefPoseTransform(Actor, BoneName, Transform, bValid) end
---@param Tracker FLocatorTracker
---@param Velocity FVector
---@param bTrackerValid boolean
function ULocatorTrackerLibrary:GetLocatorTrackerVelocity(Tracker, Velocity, bTrackerValid) end
---@param Tracker FLocatorTracker
---@param bTrackerValid boolean
function ULocatorTrackerLibrary:GetLocatorTrackerValid(Tracker, bTrackerValid) end
---@param Tracker FLocatorTracker
---@param Transform FTransform
---@param bTrackerValid boolean
function ULocatorTrackerLibrary:GetLocatorTrackerTransform(Tracker, Transform, bTrackerValid) end
---@param Tracker FLocatorTracker
---@param SceneComponent USceneComponent
---@param bTrackerValid boolean
function ULocatorTrackerLibrary:GetLocatorTrackerSceneComponent(Tracker, SceneComponent, bTrackerValid) end
---@param Tracker FLocatorTracker
---@param Actor AActor
---@param bTrackerValid boolean
function ULocatorTrackerLibrary:GetLocatorTrackerActor(Tracker, Actor, bTrackerValid) end


---@class UNiagaraMIDDriverComponent : UNiagaraMaterialDriverComponent
---@field MaterialInstanceDynamics TArray<TSoftObjectPtr<UMaterialInstanceDynamic>>
local UNiagaraMIDDriverComponent = {}

---@param Mid UMaterialInstanceDynamic
function UNiagaraMIDDriverComponent:RemoveMID(Mid) end
function UNiagaraMIDDriverComponent:EmptyMIDs() end
---@param Mid UMaterialInstanceDynamic
function UNiagaraMIDDriverComponent:AddMID(Mid) end


---@class UNiagaraMaterialDriver : UObject
---@field Setup FNiagaraMaterialDriverSetup
---@field State FNiagaraMaterialDriverState
local UNiagaraMaterialDriver = {}

---@param PSystem UNiagaraComponent
function UNiagaraMaterialDriver:OnNiagaraSystemFinished(PSystem) end


---@class UNiagaraMaterialDriverComponent : USceneComponent
---@field Setup FNiagaraMaterialDriverSetup
---@field State FNiagaraMaterialDriverState
local UNiagaraMaterialDriverComponent = {}

function UNiagaraMaterialDriverComponent:Reset() end
---@param PSystem UNiagaraComponent
function UNiagaraMaterialDriverComponent:OnNiagaraSystemFinished(PSystem) end


---@class UNiagaraMaterialSwapDriver : UNiagaraMaterialDriver
---@field ParameterSet FMaterialSwapParameters
local UNiagaraMaterialSwapDriver = {}



---@class UNiagaraSwapParamsDriverComponent : UNiagaraMaterialDriverComponent
---@field ParameterSet FMaterialSwapParameters
local UNiagaraSwapParamsDriverComponent = {}



---@class USkinFX : UBlueprintFunctionLibrary
local USkinFX = {}

---@param FX FName
---@return FMaterialPermuterKey
function USkinFX:SkinFXNameMaterialPermuterKey(FX) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param Name FName
function USkinFX:SkinFXName(FX, Name) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@return FMaterialPermuterKey
function USkinFX:SkinFXMaterialPermuterKey(FX) end
---@param Effect ASkinFXDefinition
---@return FMaterialPermuterKey
function USkinFX:SkinFXEffectMaterialPermuterKey(Effect) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param Name FName
function USkinFX:EffectName(FX, Name) end
---@param Actor AActor
---@param FX FName
---@param newRules FMaterialSwapRules
---@param Result boolean
function USkinFX:ActorUpdateSkinFXRules(Actor, FX, newRules, Result) end
---@param Actor AActor
---@param SkinFXComponent USkinFXComponent
---@param StartFX FName
---@param swapRules FMaterialSwapRules
---@param parameterValues FMaterialSwapParameters
---@param detachAndDestroyWhenDone boolean
function USkinFX:ActorStartSkinFXWithRulesAndInitialParameters(Actor, SkinFXComponent, StartFX, swapRules, parameterValues, detachAndDestroyWhenDone) end
---@param Actor AActor
---@param SkinFXComponent USkinFXComponent
---@param StartFX FName
---@param swapRules FMaterialSwapRules
---@param detachAndDestroyWhenDone boolean
function USkinFX:ActorStartSkinFXWithRules(Actor, SkinFXComponent, StartFX, swapRules, detachAndDestroyWhenDone) end
---@param Actor AActor
---@param StartFX FName
---@param parameterValues FMaterialSwapParameters
---@param SkinFXComponent USkinFXComponent
---@param detachAndDestroyWhenDone boolean
function USkinFX:ActorStartSkinFXWithInitialParameters(Actor, StartFX, parameterValues, SkinFXComponent, detachAndDestroyWhenDone) end
---@param Actor AActor
---@param SkinFXComponent USkinFXComponent
---@param StartFX FName
---@param detachAndDestroyWhenDone boolean
function USkinFX:ActorStartSkinFX(Actor, SkinFXComponent, StartFX, detachAndDestroyWhenDone) end
---@param Actor AActor
---@param FXName FName
---@param TimeFactor float
---@param Success boolean
function USkinFX:ActorSetSkinFXTimeFactor(Actor, FXName, TimeFactor, Success) end
---@param Actor AActor
---@param FXName FName
---@param ParameterName FName
---@param Value FVector
---@param packAlpha float
function USkinFX:ActorSetExternalVectorParameter(Actor, FXName, ParameterName, Value, packAlpha) end
---@param Owner AActor
---@param FXName FName
---@param ParameterName FName
---@param Value UTexture
function USkinFX:ActorSetExternalTextureParameter(Owner, FXName, ParameterName, Value) end
---@param Actor AActor
---@param FXName FName
---@param ParameterName FName
---@param Value float
function USkinFX:ActorSetExternalScalarParameter(Actor, FXName, ParameterName, Value) end
---@param Actor AActor
---@param FXName FName
---@param parameterValues FMaterialSwapParameters
function USkinFX:ActorSetExternalParameters(Actor, FXName, parameterValues) end
---@param Actor AActor
---@param FXName FName
---@param ParameterName FName
---@param Value FLinearColor
function USkinFX:ActorSetExternalColorParameter(Actor, FXName, ParameterName, Value) end
---@param Actor AActor
---@param FXName FName
---@param IsRunning boolean
function USkinFX:ActorIsSkinFXRunning(Actor, FXName, IsRunning) end
---@param Actor AActor
---@param FXName FName
---@param TimeFactor float
function USkinFX:ActorGetSkinFXTimeFactor(Actor, FXName, TimeFactor) end
---@param Actor AActor
---@param SkinFXComponent USkinFXComponent
function USkinFX:ActorGetSkinFX(Actor, SkinFXComponent) end
---@param Actor AActor
---@param endFX FName
---@param EndStyle ESkinFXEffectEndStyle
function USkinFX:ActorEndSkinFX(Actor, endFX, EndStyle) end
---@param Actor AActor
---@param EndStyle ESkinFXEffectEndStyle
function USkinFX:ActorEndAllSkinFX(Actor, EndStyle) end
---@param Actor AActor
---@param IsRunning boolean
function USkinFX:ActorAnySkinFXRunning(Actor, IsRunning) end
---@param Actor AActor
---@param SkinFXComponent USkinFXComponent
---@param detachAndDestroyWhenDone boolean
function USkinFX:ActorAddSkinFXComponent(Actor, SkinFXComponent, detachAndDestroyWhenDone) end


---@class USkinFXAutoTriggerComponent : UActorComponent
---@field Drivers TArray<USkinFXAutoTriggerDriver>
---@field DynamicEventDelegate FSkinFXAutoTriggerComponentDynamicEventDelegate
---@field Tracker FSkinFXAutoTriggerDriverTracker
---@field bDisabled boolean
local USkinFXAutoTriggerComponent = {}

---@param Enabled boolean
function USkinFXAutoTriggerComponent:SetEnabled(Enabled) end
---@param TriggerName FName
function USkinFXAutoTriggerComponent:RemoveDriverByName(TriggerName) end
---@param Driver USkinFXAutoTriggerDriver
function USkinFXAutoTriggerComponent:RemoveDriver(Driver) end
---@param WorldContextObject UObject
function USkinFXAutoTriggerComponent:RefreshAll(WorldContextObject) end
---@param Actor AActor
function USkinFXAutoTriggerComponent:Refresh(Actor) end
---@return boolean
function USkinFXAutoTriggerComponent:IsEnabled() end
---@param TriggerName FName
---@return boolean
function USkinFXAutoTriggerComponent:HasDriverByName(TriggerName) end
---@param Driver USkinFXAutoTriggerDriver
---@return boolean
function USkinFXAutoTriggerComponent:HasDriver(Driver) end
---@param Driver USkinFXAutoTriggerDriver
function USkinFXAutoTriggerComponent:AddDriver(Driver) end


---@class USkinFXAutoTriggerDriver : UObject
---@field bDisabled boolean
local USkinFXAutoTriggerDriver = {}



---@class USkinFXComponent : UActorComponent
---@field DynamicEventDelegate FSkinFXComponentDynamicEventDelegate
---@field EffectStack TArray<FSkinFXRunningEffectInstance>
---@field ExternalContexts TArray<FSkinFXExternalContext>
---@field FXSignalKillOwner FName
---@field bOwnerKilled boolean
local USkinFXComponent = {}

---@param FX FName
---@param newRules FMaterialSwapRules
---@return boolean
function USkinFXComponent:SkinFXUpdateRules(FX, newRules) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param swapRules FMaterialSwapRules
---@param UseEnvelope FSkinFXASREnvelope
---@return boolean
function USkinFXComponent:SkinFXStartWithRulesAndEnvelope(FX, swapRules, UseEnvelope) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param swapRules FMaterialSwapRules
---@return boolean
function USkinFXComponent:SkinFXStartWithRules(FX, swapRules) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param UseEnvelope FSkinFXASREnvelope
---@return boolean
function USkinFXComponent:SkinFXStartWithEnvelope(FX, UseEnvelope) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@return boolean
function USkinFXComponent:SkinFXStart(FX) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param TimeFactor float
---@param Success boolean
function USkinFXComponent:SkinFXSetTimeFactor(FX, TimeFactor, Success) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param ParameterName FName
---@param Value FVector
---@param packAlpha float
function USkinFXComponent:SkinFXSetExternalVectorParameter(FX, ParameterName, Value, packAlpha) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param ParameterName FName
---@param Value UTexture
function USkinFXComponent:SkinFXSetExternalTextureParameter(FX, ParameterName, Value) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param ParameterName FName
---@param Value float
function USkinFXComponent:SkinFXSetExternalScalarParameter(FX, ParameterName, Value) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param parameterValues FMaterialSwapParameters
function USkinFXComponent:SkinFXSetExternalParameters(FX, parameterValues) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param ParameterName FName
---@param Value FLinearColor
function USkinFXComponent:SkinFXSetExternalColorParameter(FX, ParameterName, Value) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@return boolean
function USkinFXComponent:SkinFXIsRunning(FX) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param TimeFactor float
function USkinFXComponent:SkinFXGetTimeFactor(FX, TimeFactor) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param EffectDefinitionGraph ASkinFXDefinitionGraph
function USkinFXComponent:SkinFXGetEffectBlueprintGraph(FX, EffectDefinitionGraph) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param ParameterName FName
---@param ParameterValue float
---@param bParameterFound boolean
function USkinFXComponent:SkinFXGetCurrentScalarParameter(FX, ParameterName, ParameterValue, bParameterFound) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param CurrentParameters FMaterialSwapParameters
function USkinFXComponent:SkinFXGetCurrentParameters(FX, CurrentParameters) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param ParameterName FName
---@param ParameterValue FLinearColor
---@param bParameterFound boolean
function USkinFXComponent:SkinFXGetCurrentColorParameter(FX, ParameterName, ParameterValue, bParameterFound) end
---@param EndStyle ESkinFXEffectEndStyle
---@return boolean
function USkinFXComponent:SkinFXEndAll(EndStyle) end
---@param FX TSubclassOf<ASkinFXDefinition>
---@param EndStyle ESkinFXEffectEndStyle
---@return boolean
function USkinFXComponent:SkinFXEnd(FX, EndStyle) end
---@param FX TSubclassOf<ASkinFXDefinition>
function USkinFXComponent:SkinFXClearExternalParameters(FX) end
---@return boolean
function USkinFXComponent:SkinFXAnyRunning() end


---@class USkinFXComponentAutoStart : USkinFXComponent
---@field AutoStartEffect TSubclassOf<ASkinFXDefinition>
---@field InitialDelay float
---@field RepeatDelay float
---@field bRepeat boolean
---@field Timer float
---@field State ESkinFXComponentAutoStartState
local USkinFXComponentAutoStart = {}



---@class USkinFXEventTrigger : UObject
local USkinFXEventTrigger = {}


---@class USkinFXEventTriggerFiltered : USkinFXEventTrigger
---@field Events int32
local USkinFXEventTriggerFiltered = {}



---@class USkinFXLibrary : UDataAsset
---@field TypeOverrides TArray<FSkinFXEffectTypeOverrideEntry>
---@field EffectEntries TArray<FSkinFXEffectLibraryEntry>
local USkinFXLibrary = {}



---@class USkinFXParameterDriver : UObject
local USkinFXParameterDriver = {}


---@class USkinFXParameterDriverEndEffect : USkinFXParameterDriver
local USkinFXParameterDriverEndEffect = {}


---@class USkinFXParameterDriverMod : USkinFXParameterDriver
---@field Parameter FSkinFXMaterialParamProperty
local USkinFXParameterDriverMod = {}



---@class USkinFXParameterDriverModScalar : USkinFXParameterDriverMod
---@field ModByParameter FSkinFXMaterialScalarProperty
---@field DefaultValue float
---@field bUseDefaultValue boolean
local USkinFXParameterDriverModScalar = {}



---@class USkinFXParameterLocatorListLerpDriver : USkinFXParameterDriver
---@field Parameter FSkinFXMaterialVectorProperty
---@field Locators TArray<FSkinFXLocatorListPositionalSource>
---@field LerpIndexDriver USkinFXParameterLocatorListLerpIndexDriver
---@field bLerpExtraColorsUsingHSV boolean
local USkinFXParameterLocatorListLerpDriver = {}



---@class USkinFXParameterLocatorListLerpIndexDriver : UObject
local USkinFXParameterLocatorListLerpIndexDriver = {}


---@class USkinFXParameterLocatorListLerpIndexDriverCurve : USkinFXParameterLocatorListLerpIndexDriver
---@field Curve UCurveFloat
---@field bHermite boolean
local USkinFXParameterLocatorListLerpIndexDriverCurve = {}



---@class USkinFXParameterLocatorListLerpIndexDriverDefault : USkinFXParameterLocatorListLerpIndexDriver
local USkinFXParameterLocatorListLerpIndexDriverDefault = {}


---@class USkinFXParameterLocatorListLerpIndexDriverFixedTime : USkinFXParameterLocatorListLerpIndexDriver
---@field TotalLerpTime float
---@field bLooped boolean
---@field bHermite boolean
local USkinFXParameterLocatorListLerpIndexDriverFixedTime = {}



---@class USkinFXParameterLocatorListLerpIndexDriverPerLocatorTime : USkinFXParameterLocatorListLerpIndexDriver
---@field PerLocatorTimeMin float
---@field PerLocatorTimeMax float
---@field bSmooth boolean
---@field bHermite boolean
local USkinFXParameterLocatorListLerpIndexDriverPerLocatorTime = {}



---@class USkinFXParameterLocatorListLerpIndexDriverRandom : USkinFXParameterLocatorListLerpIndexDriver
---@field MinTimeBetweenChanges float
---@field MaxTimeBetweenChanges float
---@field bSmooth boolean
---@field bHermite boolean
local USkinFXParameterLocatorListLerpIndexDriverRandom = {}



---@class USkinFXPreviewComponent : USceneComponent
local USkinFXPreviewComponent = {}

function USkinFXPreviewComponent:ResetEnvelope() end
function USkinFXPreviewComponent:ResetAll() end
function USkinFXPreviewComponent:ConstructPreview() end


