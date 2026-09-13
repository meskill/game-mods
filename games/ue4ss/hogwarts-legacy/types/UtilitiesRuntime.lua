---@meta

---@class FCurtainStageEntry
---@field EnableAtTime double
---@field StageOptions FCurtainStageOptions
local FCurtainStageEntry = {}



---@class FCurtainStageOptions
---@field Spinner boolean
---@field LoadingText boolean
---@field StaticImage boolean
---@field Tips boolean
---@field ProgressBar boolean
local FCurtainStageOptions = {}



---@class FGeneratedHandle
---@field Handle int32
local FGeneratedHandle = {}



---@class FIconInfo : FTableRowBase
---@field Icon TSoftObjectPtr<UTexture2D>
---@field Locked boolean
---@field HAngle float
---@field VAngle float
---@field FieldOfView float
---@field Padding float
---@field LightHAngle float
---@field LightVAngle float
---@field CameraOffset FVector
---@field AnimSequence TSoftObjectPtr<UAnimSequence>
---@field AnimPercent float
---@field CopyIconInfoRowName FName
local FIconInfo = {}



---@class FLandscapePointData
---@field PointLocation FVector
---@field TangentLocation FVector
---@field Width float
---@field Tags TArray<FName>
local FLandscapePointData = {}



---@class FLandscapeRoadData
---@field RoadPoints TArray<FLandscapePointData>
local FLandscapeRoadData = {}



---@class FPhase
---@field PhaseValue float
local FPhase = {}



---@class FVariantMapHandle : FGeneratedHandle
local FVariantMapHandle = {}


---@class FWordRow : FTableRowBase
---@field Locale FString
---@field bAlwaysCheck boolean
local FWordRow = {}



---@class FWorldActorReference : FWorldObjectReference
local FWorldActorReference = {}


---@class FWorldObjectReference
---@field ObjectReferenceString_NoMarkup FString
---@field CachedObjectPtr TWeakObjectPtr<UObject>
---@field CachedForWorld TWeakObjectPtr<UWorld>
local FWorldObjectReference = {}



---@class UBlueprintHelper : UBlueprintFunctionLibrary
local UBlueprintHelper = {}

---@param Strings TArray<FString>
---@return TArray<FString>
function UBlueprintHelper:SortStrings(Strings) end
---@param Names TArray<FName>
---@return TArray<FName>
function UBlueprintHelper:SortNames(Names) end
---@param Ints TArray<int32>
---@return TArray<int32>
function UBlueprintHelper:SortInts(Ints) end
---@return boolean
function UBlueprintHelper:SkipCriticalLoad() end
---@param SceneComp USceneComponent
---@param NewMobility EComponentMobility::Type
---@return boolean
function UBlueprintHelper:SetSceneComponentMobility(SceneComp, NewMobility) end
---@param Class TSoftClassPtr<UObject>
---@return UClass
function UBlueprintHelper:ResolveSoftClassReference(Class) end
---@param Table UDataTable
---@param RowName FName
function UBlueprintHelper:RemoveDataTableRow(Table, RowName) end
---@param Prxy ALandscapeProxy
---@return TArray<FLandscapeRoadData>
function UBlueprintHelper:RecursiveGetLandscapeRoadsDataFromProxy(Prxy) end
---@return TArray<FLandscapeRoadData>
function UBlueprintHelper:RecursiveGetLandscapeRoadsData() end
---@param Camera UCameraComponent
---@param Actor AActor
---@param OnlyTheseComponents TArray<FString>
---@param Padding float
---@param AspectRatio float
---@return boolean
function UBlueprintHelper:PositionCameraToFitActor(Camera, Actor, OnlyTheseComponents, Padding, AspectRatio) end
---@param UnloadedMesh TSoftObjectPtr<UStaticMesh>
---@param LoadedMesh UStaticMesh
function UBlueprintHelper:LoadSyncronousStaticMesh(UnloadedMesh, LoadedMesh) end
---@param UnloadedClass TSoftClassPtr<AActor>
---@param LoadedClass TSubclassOf<AActor>
function UBlueprintHelper:LoadSyncronousActorClass(UnloadedClass, LoadedClass) end
---@param WorldContextObject UObject
---@param Point FVector
---@param MarginPercent float
---@param PlayerIndex int32
---@return boolean
function UBlueprintHelper:IsPointOnCamera(WorldContextObject, Point, MarginPercent, PlayerIndex) end
---@param Actor AActor
---@param Branches EIsPlayer
function UBlueprintHelper:IsPlayerCharacter(Actor, Branches) end
---@param Object UObject
---@return boolean
function UBlueprintHelper:IsObjectInGameWorld(Object) end
---@param WorldContextObject UObject
---@return TArray<FString>
function UBlueprintHelper:GetWorldOptions(WorldContextObject) end
---@param InLevel ULevel
---@return UWorld
function UBlueprintHelper:GetWorldFromLevelScriptable(InLevel) end
---@param InLevel ULevel
---@return UWorld
function UBlueprintHelper:GetWorldFromLevel(InLevel) end
---@param WorldContextObject UObject
---@return ULevel
function UBlueprintHelper:GetPersistentLevel(WorldContextObject) end
---@param InStreamingLevel ULevelStreaming
---@return ULevel
function UBlueprintHelper:GetLoadedLevelFromStreamingLevel(InStreamingLevel) end
---@param InLevel ULevel
---@return FString
function UBlueprintHelper:GetLevelName(InLevel) end
---@param InActor AActor
---@return ULevel
function UBlueprintHelper:GetLevelFromActorScriptable(InActor) end
---@param InActor AActor
---@return ULevel
function UBlueprintHelper:GetLevelFromActor(InActor) end
---@param WorldContextObject UObject
---@return ULevel
function UBlueprintHelper:GetCurrentLevel(WorldContextObject) end
---@param Actor AActor
---@param CameraDir FVector
---@param HorizontalFieldOfView float
---@param AspectRatio float
---@param OutCameraPos FVector
---@param OutTargetPos FVector
---@param OnlyTheseComponents TArray<FString>
---@param Padding float
---@return boolean
function UBlueprintHelper:GetCameraPositionToFitActor(Actor, CameraDir, HorizontalFieldOfView, AspectRatio, OutCameraPos, OutTargetPos, OnlyTheseComponents, Padding) end
---@param Actor AActor
---@param Origin FVector
---@param BoxExtent FVector
function UBlueprintHelper:GetActorBounds(Actor, Origin, BoxExtent) end
---@param Actor AActor
---@return FBox
function UBlueprintHelper:GetActorBoundingBox(Actor) end
---@param Actor AActor
---@param OnlyTheseComponents TArray<FString>
---@return FBox
function UBlueprintHelper:GetAccurateActorBounds(Actor, OnlyTheseComponents) end
---@return boolean
function UBlueprintHelper:ForceUnloadLevels() end
---@return boolean
function UBlueprintHelper:ForceSimpleLevels() end
---@return boolean
function UBlueprintHelper:ForceLoadMaps() end
---@return boolean
function UBlueprintHelper:ForceFullLevels() end
---@param CurveFloat UCurveFloat
---@param InValue float
---@param OutValue float
---@return boolean
function UBlueprintHelper:FloatCurve_FindTimeFromValue(CurveFloat, InValue, OutValue) end
---@param InLevel ULevel
---@return ULevelStreaming
function UBlueprintHelper:FindLevelStreamingForLevel(InLevel) end
---@param InterpFloatCurve FInterpCurveFloat
---@param Pos float
---@param DefaultValue float
---@return float
function UBlueprintHelper:EvaluateFloatCurve(InterpFloatCurve, Pos, DefaultValue) end
---@return boolean
function UBlueprintHelper:DisplayMapName() end
---@param Values TArray<float>
---@return FInterpCurveFloat
function UBlueprintHelper:CreateFloatCurve(Values) end
---@param S FString
---@param Key int32
---@param Branches ETwoBranches
function UBlueprintHelper:CompareAgainstHashKey(S, Key, Branches) end


---@class UCurtainStageSettings : UObject
---@field CurtainStages TArray<FCurtainStageEntry>
local UCurtainStageSettings = {}



---@class UCurtainSubsystem : UGameInstanceSubsystem
---@field CurtainWidgetClass TSubclassOf<UUserWidget>
---@field OnCurtainLowered FCurtainSubsystemOnCurtainLowered
---@field OnCurtainRaised FCurtainSubsystemOnCurtainRaised
---@field OnLienholdersChanged FCurtainSubsystemOnLienholdersChanged
---@field OnCurtainStageOptionsChanged FCurtainSubsystemOnCurtainStageOptionsChanged
---@field CurtainWidget UUserWidget
local UCurtainSubsystem = {}

---@param WhosAsking UObject
---@param WhatsYourName FName
function UCurtainSubsystem:LowerCurtain(WhosAsking, WhatsYourName) end
---@param WhosAsking UObject
---@return boolean
function UCurtainSubsystem:IsCurtainDown(WhosAsking) end
---@return FString
function UCurtainSubsystem:GetLienholderNames() end


---@class UCustomInterp : UObject
local UCustomInterp = {}


---@class UHandleGenerator : UObject
---@field m_linkInfoMap TMap<uint32, UHandleLinkInfo>
local UHandleGenerator = {}



---@class UHandleLink : UObject
---@field m_pObject UObject
local UHandleLink = {}



---@class UHandleLinkInfo : UObject
---@field m_handleToLinkMap TMap<uint32, UHandleLink>
local UHandleLinkInfo = {}



---@class UIconEditorFunctionLibrary : UBlueprintFunctionLibrary
local UIconEditorFunctionLibrary = {}

---@param Table UDataTable
---@param RowName FName
---@param IconInfo FIconInfo
---@param bSave boolean
function UIconEditorFunctionLibrary:UpdateIconTableRow(Table, RowName, IconInfo, bSave) end
---@param Name FName
---@param ColorTextureRenderTarget UTextureRenderTarget2D
---@param DownResFactor int32
function UIconEditorFunctionLibrary:SaveImageFromRenderTargets(Name, ColorTextureRenderTarget, DownResFactor) end
---@param Skeleton USkeleton
---@return TArray<UAnimSequence>
function UIconEditorFunctionLibrary:GetAnimationsForSkeleton(Skeleton) end
---@param ColorTextureRenderTarget UTextureRenderTarget2D
---@param PackageName FString
---@param DownResFactor int32
---@param AlphaTextureRenderTarget UTextureRenderTarget2D
---@return UTexture2D
function UIconEditorFunctionLibrary:CreateTextureFromRenderTargets(ColorTextureRenderTarget, PackageName, DownResFactor, AlphaTextureRenderTarget) end


---@class UKeyboardTrigger : UObject
local UKeyboardTrigger = {}


---@class ULoadComplete : UObject
local ULoadComplete = {}

function ULoadComplete:OnLoadCompleteCallback() end


---@class UManagedCharacterComponent : UManagedStateComponent
local UManagedCharacterComponent = {}

---@param InMovementMode EMovementMode
---@param Priority EManagedMovementModePriority
---@param Provider UObject
function UManagedCharacterComponent:StartSettingMovementMode(InMovementMode, Priority, Provider) end
---@param Emotion EFacialEmotion
---@param Provider UObject
---@param Transition float
---@param ManagedFacialEmotionPriority EManagedFacialEmotionPriority
---@param AnimTags FGameplayTagContainer
function UManagedCharacterComponent:SetStartFacialEmotionWithTags(Emotion, Provider, Transition, ManagedFacialEmotionPriority, AnimTags) end
---@param Emotion EFacialEmotion
---@param Provider UObject
---@param Transition float
---@param ManagedFacialEmotionPriority EManagedFacialEmotionPriority
function UManagedCharacterComponent:SetStartFacialEmotion(Emotion, Provider, Transition, ManagedFacialEmotionPriority) end
---@param Provider UObject
---@param ManagedFacialEmotionPriority EManagedFacialEmotionPriority
function UManagedCharacterComponent:SetFinishFacialEmotion(Provider, ManagedFacialEmotionPriority) end
---@param Emotion EFacialEmotion
---@param Transition float
function UManagedCharacterComponent:SetDefaultFacialEmotion(Emotion, Transition) end
---@param Priority EManagedMovementModePriority
---@param Provider UObject
function UManagedCharacterComponent:FinishSettingMovementMode(Priority, Provider) end


---@class UManagedStateComponent : UActorComponent
local UManagedStateComponent = {}

---@param Actor AActor
---@param Provider UObject
function UManagedStateComponent:BP_TryFinishSettingHiddenUnprioritized(Actor, Provider) end
---@param Actor AActor
---@param IsHidden boolean
---@param Provider UObject
function UManagedStateComponent:BP_StartSettingHiddenUnprioritized(Actor, IsHidden, Provider) end
---@param Actor AActor
---@param IsHidden boolean
---@param Priority EManagedVisibilityPriority
---@param Provider UObject
function UManagedStateComponent:BP_StartSettingHiddenPrioritized(Actor, IsHidden, Priority, Provider) end
---@param Actor AActor
---@param Provider UObject
function UManagedStateComponent:BP_FinishSettingHiddenUnprioritized(Actor, Provider) end
---@param Actor AActor
---@param Priority EManagedVisibilityPriority
---@param Provider UObject
function UManagedStateComponent:BP_FinishSettingHiddenPrioritized(Actor, Priority, Provider) end


---@class UPreferredNavDataPathFollowingComponent : UPathFollowingComponent
---@field PreferredNavData FSoftClassPath
---@field ReplacedNavData FSoftClassPath
local UPreferredNavDataPathFollowingComponent = {}



---@class UPulldownMenu : UComboBoxString
---@field LockPulldownWidth boolean
local UPulldownMenu = {}



---@class URaiseCurtainAction : UBlueprintAsyncActionBase
---@field CurtainRaised FRaiseCurtainActionCurtainRaised
---@field CurtainSubsystem UCurtainSubsystem
---@field WhosAsking UObject
local URaiseCurtainAction = {}

---@param WhosAsking UObject
---@return URaiseCurtainAction
function URaiseCurtainAction:RaiseCurtain(WhosAsking) end
function URaiseCurtainAction:OnCurtainRaised() end


---@class USplineHelper : UObject
local USplineHelper = {}

---@param SplineComponent USplineComponent
---@param DistanceAlongSpline float
---@param TestLocation FVector
---@param DistanceRange float
---@param bDebug boolean
---@return boolean
function USplineHelper:IsLocationCloseEnoughToSplineAtDistance(SplineComponent, DistanceAlongSpline, TestLocation, DistanceRange, bDebug) end
---@param SplineComponent USplineComponent
---@param Location FVector
---@param bFound boolean
---@return float
function USplineHelper:GetDistanceAlongSplineFromWorldLocation(SplineComponent, Location, bFound) end


---@class UStaticBP_ActorReferenceHelper : UBlueprintFunctionLibrary
local UStaticBP_ActorReferenceHelper = {}

---@param WorldContext UObject
---@param ActorReference FWorldActorReference
---@param Actor AActor
---@return boolean
function UStaticBP_ActorReferenceHelper:GetActorFromReference(WorldContext, ActorReference, Actor) end


---@class UVariantMap : UObject
local UVariantMap = {}

---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@return boolean
function UVariantMap:VariantExists_FromHandle(VarMapHandle, Name) end
---@param Name FName
---@return boolean
function UVariantMap:VariantExists(Name) end
---@param VarMapHandle FVariantMapHandle
---@return UVariantMap
function UVariantMap:RetrieveVariantMap(VarMapHandle) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param DefaultValue FName
---@param bFound boolean
---@return FName
function UVariantMap:GetVariantName_FromHandle(VarMapHandle, Name, DefaultValue, bFound) end
---@param Name FName
---@param DefaultValue FName
---@param bFound boolean
---@return FName
function UVariantMap:GetVariantName(Name, DefaultValue, bFound) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param DefaultValue int32
---@param bFound boolean
---@return int32
function UVariantMap:GetVariantInt32_FromHandle(VarMapHandle, Name, DefaultValue, bFound) end
---@param Name FName
---@param DefaultValue int32
---@param bFound boolean
---@return int32
function UVariantMap:GetVariantInt32(Name, DefaultValue, bFound) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param DefaultValue FVector
---@param bFound boolean
---@return FVector
function UVariantMap:GetVariantFVector_FromHandle(VarMapHandle, Name, DefaultValue, bFound) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param DefaultValue FVector2D
---@param bFound boolean
---@return FVector2D
function UVariantMap:GetVariantFVector2D_FromHandle(VarMapHandle, Name, DefaultValue, bFound) end
---@param Name FName
---@param DefaultValue FVector2D
---@param bFound boolean
---@return FVector2D
function UVariantMap:GetVariantFVector2D(Name, DefaultValue, bFound) end
---@param Name FName
---@param DefaultValue FVector
---@param bFound boolean
---@return FVector
function UVariantMap:GetVariantFVector(Name, DefaultValue, bFound) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param DefaultValue FTransform
---@param bFound boolean
---@return FTransform
function UVariantMap:GetVariantFTransform_FromHandle(VarMapHandle, Name, DefaultValue, bFound) end
---@param Name FName
---@param DefaultValue FTransform
---@param bFound boolean
---@return FTransform
function UVariantMap:GetVariantFTransform(Name, DefaultValue, bFound) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param DefaultValue FString
---@param bFound boolean
---@return FString
function UVariantMap:GetVariantFString_FromHandle(VarMapHandle, Name, DefaultValue, bFound) end
---@param Name FName
---@param DefaultValue FString
---@param bFound boolean
---@return FString
function UVariantMap:GetVariantFString(Name, DefaultValue, bFound) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param DefaultValue FRotator
---@param bFound boolean
---@return FRotator
function UVariantMap:GetVariantFRotator_FromHandle(VarMapHandle, Name, DefaultValue, bFound) end
---@param Name FName
---@param DefaultValue FRotator
---@param bFound boolean
---@return FRotator
function UVariantMap:GetVariantFRotator(Name, DefaultValue, bFound) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param DefaultValue float
---@param bFound boolean
---@return float
function UVariantMap:GetVariantFloat_FromHandle(VarMapHandle, Name, DefaultValue, bFound) end
---@param Name FName
---@param DefaultValue float
---@param bFound boolean
---@return float
function UVariantMap:GetVariantFloat(Name, DefaultValue, bFound) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param DefaultValue boolean
---@param bFound boolean
---@return boolean
function UVariantMap:GetVariantBool_FromHandle(VarMapHandle, Name, DefaultValue, bFound) end
---@param Name FName
---@param DefaultValue boolean
---@param bFound boolean
---@return boolean
function UVariantMap:GetVariantBool(Name, DefaultValue, bFound) end
---@param InObject UObject
---@return FVariantMapHandle
function UVariantMap:GetHandle_FromObject(InObject) end
---@return FVariantMapHandle
function UVariantMap:GetHandle() end
---@param VarMapHandle FVariantMapHandle
---@param bDestroy boolean
---@return FVariantMapHandle
function UVariantMap:DuplicateVariantMap(VarMapHandle, bDestroy) end
---@param VarMapHandle FVariantMapHandle
---@return FVariantMapHandle
function UVariantMap:DestroyVariantMap(VarMapHandle) end
---@return FVariantMapHandle
function UVariantMap:CreateVariantMap() end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param Value FName
function UVariantMap:AddVariantName_FromHandle(VarMapHandle, Name, Value) end
---@param Name FName
---@param Value FName
function UVariantMap:AddVariantName(Name, Value) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param Value int32
function UVariantMap:AddVariantInt32_FromHandle(VarMapHandle, Name, Value) end
---@param Name FName
---@param Value int32
function UVariantMap:AddVariantInt32(Name, Value) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param Value FVector
function UVariantMap:AddVariantFVector_FromHandle(VarMapHandle, Name, Value) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param Value FVector2D
function UVariantMap:AddVariantFVector2D_FromHandle(VarMapHandle, Name, Value) end
---@param Name FName
---@param Value FVector2D
function UVariantMap:AddVariantFVector2D(Name, Value) end
---@param Name FName
---@param Value FVector
function UVariantMap:AddVariantFVector(Name, Value) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param Value FTransform
function UVariantMap:AddVariantFTransform_FromHandle(VarMapHandle, Name, Value) end
---@param Name FName
---@param Value FTransform
function UVariantMap:AddVariantFTransform(Name, Value) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param Value FString
function UVariantMap:AddVariantFString_FromHandle(VarMapHandle, Name, Value) end
---@param Name FName
---@param Value FString
function UVariantMap:AddVariantFString(Name, Value) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param Value FRotator
function UVariantMap:AddVariantFRotator_FromHandle(VarMapHandle, Name, Value) end
---@param Name FName
---@param Value FRotator
function UVariantMap:AddVariantFRotator(Name, Value) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param Value float
function UVariantMap:AddVariantFloat_FromHandle(VarMapHandle, Name, Value) end
---@param Name FName
---@param Value float
function UVariantMap:AddVariantFloat(Name, Value) end
---@param VarMapHandle FVariantMapHandle
---@param Name FName
---@param Value boolean
function UVariantMap:AddVariantBool_FromHandle(VarMapHandle, Name, Value) end
---@param Name FName
---@param Value boolean
function UVariantMap:AddVariantBool(Name, Value) end
---@param MasterVarMapHandle FVariantMapHandle
---@param VarMapHandleToAbsorb FVariantMapHandle
function UVariantMap:AbsorbVariantMap_FromHandle(MasterVarMapHandle, VarMapHandleToAbsorb) end
---@param VarMapHandleToAbsorb UVariantMap
function UVariantMap:AbsorbVariantMap(VarMapHandleToAbsorb) end


---@class UWizardWordsFunctionLibrary : UBlueprintFunctionLibrary
local UWizardWordsFunctionLibrary = {}

---@param Word FString
---@return FString
function UWizardWordsFunctionLibrary:EncryptString(Word) end


