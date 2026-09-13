---@meta

---@class AStencilManagerSingleton : AActor
---@field Settings UStencilManagerSettings
---@field ExternalControls UStencilManagerExternalControls
---@field DisabledGroups TArray<FName>
---@field EnableInterfaces FStencilManagerEnableInterfaceList
---@field HardReferences TArray<UObject>
---@field LegacyStencilActors TMap<TWeakObjectPtr<AActor>, FStencilManagerTrackActorStencil>
---@field StencilLocalActors TMap<TWeakObjectPtr<AActor>, FStencilManagerTrackActorLocalStencil>
---@field SkinFXActors TMap<TWeakObjectPtr<AActor>, FStencilManagerTrackActorSkinFX>
---@field StencilMaskActors TMap<TWeakObjectPtr<AActor>, FStencilManagerTrackActorStencil>
---@field AutoStencilMaskActors TMap<TWeakObjectPtr<AActor>, FStencilManagerTrackActorStencil>
---@field ExternalLocks TMap<TWeakObjectPtr<UPrimitiveComponent>, FSavePrimitiveRenderCustomDepthOwner>
---@field StencilBlend float
---@field bUpdatedStencilBlend boolean
---@field MPCGlobals FStencilManagerMPCGlobals
---@field ConsoleDisabledGroups TArray<FName>
---@field bConsoleDisableStencil boolean
---@field bDisableStencil boolean
local AStencilManagerSingleton = {}

---@param WorldContextObject UObject
---@param bPlayerNearFadeDisable boolean
function AStencilManagerSingleton:SetStencilPlayerNearFadeDisable(WorldContextObject, bPlayerNearFadeDisable) end
---@param WorldContextObject UObject
---@param blendVal float
function AStencilManagerSingleton:SetStencilBlend(WorldContextObject, blendVal) end
---@param WorldContextObject UObject
---@param boostVal float
function AStencilManagerSingleton:SetOutdoorsDaytimeBoost(WorldContextObject, boostVal) end


---@class FLocalStencilEffect
---@field StencilValue int32
---@field RotatingStencilValue FLocalStencilEffectRotatingStencilValue
---@field StencilRules FStencilRules
---@field OverrideClass TSubclassOf<ULocalStencilComponentBase>
---@field OverrideMaterial UMaterialInterface
---@field FadeInTime float
---@field FadeOutTime float
---@field Params FLocalStencilEffectParams
---@field MeshScaleFactor float
---@field MeshInflateBounds FVector
---@field BoundsMethod ELocalStencilBoundsMethod
---@field AttachComponentTag FName
---@field bRenderCustomDepth boolean
---@field bForcePlayerCustomDepth boolean
---@field bUseRotatingStencilValue boolean
local FLocalStencilEffect = {}



---@class FLocalStencilEffectActorOverride : FLocalStencilEffectActorOverrideParameters
---@field Expression UStencilManagerMatchActor
local FLocalStencilEffectActorOverride = {}



---@class FLocalStencilEffectActorOverrideList
---@field Effect FStencilManagerEffectName
---@field ActorOverrides TArray<FLocalStencilEffectActorOverride>
local FLocalStencilEffectActorOverrideList = {}



---@class FLocalStencilEffectActorOverrideParameters : FLocalStencilEffectParams
---@field OverrideClass TSubclassOf<ULocalStencilComponentBase>
---@field OverrideMaterial UMaterialInterface
---@field FadeInTime float
---@field FadeOutTime float
---@field MeshScaleFactor float
---@field MeshInflateBounds FVector
---@field BoundsMethod ELocalStencilBoundsMethod
---@field AttachComponentTag FName
---@field TagFilter FStencilPrimitiveTagRules
---@field TypeFilter FStencilPrimitiveTypeRules
---@field PrimitiveFilter FStencilPrimitiveFilter
---@field PrimitiveClassFilter FStencilPrimitiveClassFilter
---@field bForcePlayerCustomDepth boolean
---@field bOverride_FadeInTime boolean
---@field bOverride_FadeOutTime boolean
---@field bOverride_MeshScaleFactor boolean
---@field bOverride_TagFilter boolean
---@field bOverride_TypeFilter boolean
---@field bOverride_PrimitiveFilter boolean
---@field bOverride_PrimitiveClassFilter boolean
---@field bOverride_MeshInflateBounds boolean
---@field bOverride_BoundsMethod boolean
---@field bOverride_AttachComponentTag boolean
---@field bOverride_bForcePlayerCustomDepth boolean
local FLocalStencilEffectActorOverrideParameters = {}



---@class FLocalStencilEffectColor : FLocalStencilEffectMaterialParameter
---@field Color FLinearColor
local FLocalStencilEffectColor = {}



---@class FLocalStencilEffectColorCurve : FLocalStencilEffectMaterialParameter
---@field Curve UCurveLinearColor
local FLocalStencilEffectColorCurve = {}



---@class FLocalStencilEffectMaterialParameter
---@field MaterialParameter FName
local FLocalStencilEffectMaterialParameter = {}



---@class FLocalStencilEffectMesh : FLocalStencilEffectMeshBase
---@field LastTransform FTransform
local FLocalStencilEffectMesh = {}



---@class FLocalStencilEffectMeshAttached : FLocalStencilEffectMeshBase
---@field ParentComponent TWeakObjectPtr<USceneComponent>
local FLocalStencilEffectMeshAttached = {}



---@class FLocalStencilEffectMeshBase
---@field MeshComponent UStaticMeshComponent
---@field OriginalMaterials TArray<UMaterialInterface>
---@field DynamicMaterials TArray<UMaterialInstanceDynamic>
local FLocalStencilEffectMeshBase = {}



---@class FLocalStencilEffectParams
---@field StencilValueParameter FName
---@field FadeAlphaParameter FName
---@field OutlineRadius FLocalStencilEffectScalar
---@field OutlineColor FLocalStencilEffectColor
---@field OutlineColorAlpha FLocalStencilEffectScalar
---@field OutlineColorAlphaPower FLocalStencilEffectScalar
---@field FillColor FLocalStencilEffectColor
---@field FillColorAlpha FLocalStencilEffectScalar
---@field FinalIntensityMod FLocalStencilEffectScalar
---@field ObjectBottomFadeStart FLocalStencilEffectScalar
---@field ObjectBottomFadeFull FLocalStencilEffectScalar
---@field ObjectBottomFadePower FLocalStencilEffectScalar
---@field ObjectMinMaxHeightParameter FName
---@field ExtraScalars TArray<FLocalStencilEffectScalar>
---@field ExtraColors TArray<FLocalStencilEffectColor>
---@field ExtraScalarCurves TArray<FLocalStencilEffectScalarCurve>
---@field ExtraColorCurves TArray<FLocalStencilEffectColorCurve>
---@field bSetStencilValue boolean
---@field bSetFadeAlphaParameter boolean
---@field bSetOutlineRadius boolean
---@field bSetOutlineColor boolean
---@field bSetOutlineAlpha boolean
---@field bSetOutlineAlphaPower boolean
---@field bSetFillColor boolean
---@field bSetFillAlpha boolean
---@field bSetFinalIntensityMod boolean
---@field bSetObjectBottomFadeStart boolean
---@field bSetObjectBottomFadeFull boolean
---@field bSetExtraScalars boolean
---@field bSetExtraColors boolean
---@field bSetExtraScalarCurves boolean
---@field bSetExtraColorCurves boolean
---@field bSetObjectBottomFadePower boolean
---@field bSetObjectMinMaxHeightParameter boolean
local FLocalStencilEffectParams = {}



---@class FLocalStencilEffectRotatingStencilValue
---@field StencilValueMin int32
---@field StencilValueMax int32
local FLocalStencilEffectRotatingStencilValue = {}



---@class FLocalStencilEffectScalar : FLocalStencilEffectMaterialParameter
---@field Value float
local FLocalStencilEffectScalar = {}



---@class FLocalStencilEffectScalarCurve : FLocalStencilEffectMaterialParameter
---@field Curve UCurveFloat
local FLocalStencilEffectScalarCurve = {}



---@class FSaveAndOverridePrimitiveRenderCustomDepthOwner : FSavePrimitiveRenderCustomDepthOwner
---@field StencilValueOverride uint32
---@field bRenderCustomDepthOverride boolean
---@field bOverridestencilValue boolean
---@field bOverrideRenderCustomDepth boolean
local FSaveAndOverridePrimitiveRenderCustomDepthOwner = {}



---@class FSavePrimitiveRenderCustomDepth
---@field StencilValue uint32
---@field bRenderCustomDepth boolean
---@field bManageVisibility boolean
---@field bVisible boolean
local FSavePrimitiveRenderCustomDepth = {}



---@class FSavePrimitiveRenderCustomDepthOwner : FSavePrimitiveRenderCustomDepth
---@field Owner TWeakObjectPtr<UObject>
local FSavePrimitiveRenderCustomDepthOwner = {}



---@class FStencilManagerCutsomDepthFX
---@field StencilValue uint32
---@field StencilRules FStencilRules
---@field bRenderCustomDepth boolean
local FStencilManagerCutsomDepthFX = {}



---@class FStencilManagerEffectInfo
---@field Name FName
---@field Group FStencilManagerGroupName
---@field LegacyStencilValue uint32
---@field Priority EStencilManagerEffectPriority
---@field PreferredEffect EStencilManagerPreferredEffect
---@field LocalDepthFX FLocalStencilEffect
---@field SkinFX FStencilManagerSkinFX
---@field bDisableOverrides boolean
local FStencilManagerEffectInfo = {}



---@class FStencilManagerEffectInfoAccessibilityOverride : FStencilManagerEffectInfoOverride
---@field HighContrastMode int32
local FStencilManagerEffectInfoAccessibilityOverride = {}



---@class FStencilManagerEffectInfoActorOverrides
---@field Expression UStencilManagerMatchActor
---@field EffectOverrides TArray<FStencilManagerEffectInfoOverride>
local FStencilManagerEffectInfoActorOverrides = {}



---@class FStencilManagerEffectInfoOverride
---@field Effect FStencilManagerEffectName
---@field GroupOverride FStencilManagerGroupName
---@field PreferredEffect EStencilManagerPreferredEffect
---@field LocalDepthFX FLocalStencilEffect
---@field SkinFX FStencilManagerSkinFX
---@field bUseGroupOverride boolean
local FStencilManagerEffectInfoOverride = {}



---@class FStencilManagerEffectName
---@field Name FName
local FStencilManagerEffectName = {}



---@class FStencilManagerEnableInterfaceList
---@field Interfaces TArray<TWeakObjectPtr<UObject>>
local FStencilManagerEnableInterfaceList = {}



---@class FStencilManagerGroupName
---@field Name FName
local FStencilManagerGroupName = {}



---@class FStencilManagerMPCGlobals
---@field GlobalBrightnessMod float
---@field OutdoorsDaytimeBoost_DEPRICATED float
---@field bPlayerNearFadeDisable boolean
local FStencilManagerMPCGlobals = {}



---@class FStencilManagerSkinFX
---@field SkinFX TSubclassOf<ASkinFXDefinition>
---@field ForceEmissiveColor FStencilManagerSkinFXColor
---@field bForceEmissive boolean
local FStencilManagerSkinFX = {}



---@class FStencilManagerSkinFXColor
---@field MaterialParameter FName
---@field Color FLinearColor
local FStencilManagerSkinFXColor = {}



---@class FStencilManagerTrackActor
---@field Effect FName
local FStencilManagerTrackActor = {}



---@class FStencilManagerTrackActorLocalStencil : FStencilManagerTrackActorStencilBase
---@field DepthFX FLocalStencilEffect
---@field LocalStencilComponent ULocalStencilComponentBase
local FStencilManagerTrackActorLocalStencil = {}



---@class FStencilManagerTrackActorSkinFX : FStencilManagerTrackActor
---@field SkinFX FStencilManagerSkinFX
---@field SkinFXComponent TWeakObjectPtr<USkinFXComponent>
local FStencilManagerTrackActorSkinFX = {}



---@class FStencilManagerTrackActorStencil : FStencilManagerTrackActorStencilBase
---@field DepthFX FStencilManagerCutsomDepthFX
local FStencilManagerTrackActorStencil = {}



---@class FStencilManagerTrackActorStencilBase : FStencilManagerTrackActor
---@field OriginalValues TMap<TWeakObjectPtr<UPrimitiveComponent>, FSavePrimitiveRenderCustomDepth>
local FStencilManagerTrackActorStencilBase = {}



---@class FStencilPrimitiveClassFilter
---@field PrimitiveClasses TArray<TSoftClassPtr<UPrimitiveComponent>>
---@field Rule EStencilRule
---@field bIncludeSubclasses boolean
---@field IgnoreTag FName
local FStencilPrimitiveClassFilter = {}



---@class FStencilPrimitiveFilter
---@field Primitives TArray<FName>
---@field Rule EStencilRule
---@field MatchMode EStencilFilterPrimitiveMatchMode
local FStencilPrimitiveFilter = {}



---@class FStencilPrimitiveTagRules
---@field DoNotStencil TArray<FName>
---@field StencilOnly TArray<FName>
---@field ConditionalStencil TArray<FName>
---@field ShowOnStencil TArray<FName>
---@field HideOnStencil TArray<FName>
local FStencilPrimitiveTagRules = {}



---@class FStencilPrimitiveTypeRules
---@field Static EStencilRulesTypeMode
---@field Skeletal EStencilRulesTypeMode
---@field Instanced EStencilRulesTypeMode
---@field Spline EStencilRulesTypeMode
---@field Moveable EStencilRulesTypeMode
---@field Stationary EStencilRulesTypeMode
---@field ReceivesDecals EStencilRulesTypeMode
---@field ReceivesWeatherDecals EStencilRulesTypeMode
---@field RenderCustomDepth EStencilRulesTypeMode
local FStencilPrimitiveTypeRules = {}



---@class FStencilRules
---@field TagFilter FStencilPrimitiveTagRules
---@field TypeFilter FStencilPrimitiveTypeRules
---@field PrimitiveFilter FStencilPrimitiveFilter
---@field PrimitiveClassFilter FStencilPrimitiveClassFilter
local FStencilRules = {}



---@class FStencilValueRenderCustomDepth
---@field StencilValue int32
---@field bRenderCustomDepth boolean
---@field bOverridestencilValue boolean
---@field bOverrideRenderCustomDepth boolean
local FStencilValueRenderCustomDepth = {}



---@class FStencilValueRenderCustomDepthFilter
---@field Tags TArray<FName>
---@field Rule EStencilValueRenderCustomDepthRule
---@field bExcludeFX boolean
local FStencilValueRenderCustomDepthFilter = {}



---@class IStencilManagerEnableInterface : IInterface
local IStencilManagerEnableInterface = {}


---@class ULocalStencilAutoStartComponent : ULocalStencilComponent
---@field AutoStartEffect FLocalStencilEffect
---@field bStartOnBeginPlay boolean
local ULocalStencilAutoStartComponent = {}

---@return boolean
function ULocalStencilAutoStartComponent:LocalStencilEffectStart() end


---@class ULocalStencilBoundsHintComponent : ULocalStencilBoundsHintComponentBase
---@field Mode ELocalStencilBoundsHintMode
---@field bIgnoreVisibility boolean
---@field bEnabled boolean
local ULocalStencilBoundsHintComponent = {}



---@class ULocalStencilBoundsHintComponentBase : USceneComponent
local ULocalStencilBoundsHintComponentBase = {}


---@class ULocalStencilComponent : ULocalStencilComponentBase
---@field EffectMesh FLocalStencilEffectMesh
local ULocalStencilComponent = {}



---@class ULocalStencilComponentBase : UActorComponent
---@field Mesh UStaticMesh
---@field MeshScaleFactor float
---@field TranslucentSortPriority int32
---@field bSetTranslucentSortPriority boolean
---@field CurrentEffect FLocalStencilEffect
---@field WorldObjectBounds FBox
---@field Age float
---@field FadeInAge float
---@field FadeOutAge float
---@field MaterialMode ELocalStencilMaterialMode
---@field bEffectActive boolean
---@field bStencilManagerLock boolean
---@field bFadingOut boolean
local ULocalStencilComponentBase = {}

---@param Effect FLocalStencilEffect
---@return boolean
function ULocalStencilComponentBase:StartLocalStencilEffect(Effect) end
---@param bIsRunning boolean
---@param RunningEffect FLocalStencilEffect
function ULocalStencilComponentBase:LocalStencilEffectIsRunning(bIsRunning, RunningEffect) end
---@return boolean
function ULocalStencilComponentBase:EndLocalStencilEffect() end
---@param Actor AActor
---@param Effect FLocalStencilEffect
---@param Success boolean
function ULocalStencilComponentBase:ActorStartLocalStencilEffect(Actor, Effect, Success) end
---@param Actor AActor
---@param bIsRunning boolean
---@param RunningEffect FLocalStencilEffect
function ULocalStencilComponentBase:ActorLocalStencilEffectIsRunning(Actor, bIsRunning, RunningEffect) end
---@param Actor AActor
---@param Success boolean
function ULocalStencilComponentBase:ActorEndLocalStencilEffect(Actor, Success) end


---@class ULocalStencilComponentMultiMesh : ULocalStencilComponentBase
---@field EffectMeshes TArray<FLocalStencilEffectMeshAttached>
local ULocalStencilComponentMultiMesh = {}



---@class ULocalStencilComponentOrientCamera : ULocalStencilComponent
---@field MeshNearClipTweak float
local ULocalStencilComponentOrientCamera = {}



---@class ULocalStencilEffectActorOverrides : UDataAsset
---@field GeneralActorOverrides TArray<FLocalStencilEffectActorOverride>
---@field EffectOverrides TArray<FLocalStencilEffectActorOverrideList>
local ULocalStencilEffectActorOverrides = {}

function ULocalStencilEffectActorOverrides:Validate() end


---@class ULocalStencilEffectDelegatedActorExtraCurveParameters : ULocalStencilEffectDelegatedActorOverrideFiltered
---@field ExtraScalarCurves TArray<FLocalStencilEffectScalarCurve>
---@field ExtraColorCurves TArray<FLocalStencilEffectColorCurve>
---@field bSetExtraScalarCurves boolean
---@field bSetExtraColorCurves boolean
local ULocalStencilEffectDelegatedActorExtraCurveParameters = {}



---@class ULocalStencilEffectDelegatedActorExtraParameters : ULocalStencilEffectDelegatedActorOverrideFiltered
---@field ExtraScalars TArray<FLocalStencilEffectScalar>
---@field ExtraColors TArray<FLocalStencilEffectColor>
---@field bSetExtraScalars boolean
---@field bSetExtraColors boolean
local ULocalStencilEffectDelegatedActorExtraParameters = {}



---@class ULocalStencilEffectDelegatedActorOverride : UObject
local ULocalStencilEffectDelegatedActorOverride = {}


---@class ULocalStencilEffectDelegatedActorOverrideBottomFade : ULocalStencilEffectDelegatedActorOverrideFiltered
---@field OverrideMaterial UMaterialInterface
---@field ObjectBottomFadeStart float
---@field ObjectBottomFadeFull float
---@field ObjectBottomFadePower float
---@field bSetObjectBottomFadeStart boolean
---@field bSetObjectBottomFadeFull boolean
---@field bSetObjectBottomFadePower boolean
local ULocalStencilEffectDelegatedActorOverrideBottomFade = {}



---@class ULocalStencilEffectDelegatedActorOverrideBoundsMethod : ULocalStencilEffectDelegatedActorOverrideFiltered
---@field BoundsMethod ELocalStencilBoundsMethod
local ULocalStencilEffectDelegatedActorOverrideBoundsMethod = {}



---@class ULocalStencilEffectDelegatedActorOverrideClassAndMaterial : ULocalStencilEffectDelegatedActorOverrideFiltered
---@field OverrideClass TSubclassOf<ULocalStencilComponentBase>
---@field OverrideMaterial UMaterialInterface
local ULocalStencilEffectDelegatedActorOverrideClassAndMaterial = {}



---@class ULocalStencilEffectDelegatedActorOverrideEverything : ULocalStencilEffectDelegatedActorOverrideFiltered
---@field Parameters FLocalStencilEffectActorOverrideParameters
local ULocalStencilEffectDelegatedActorOverrideEverything = {}



---@class ULocalStencilEffectDelegatedActorOverrideFade : ULocalStencilEffectDelegatedActorOverrideFiltered
---@field FadeInTime float
---@field FadeOutTime float
---@field bOverride_FadeInTime boolean
---@field bOverride_FadeOutTime boolean
local ULocalStencilEffectDelegatedActorOverrideFade = {}



---@class ULocalStencilEffectDelegatedActorOverrideFiltered : ULocalStencilEffectDelegatedActorOverride
---@field Effect FStencilManagerEffectName
---@field bFilterByEffectName boolean
local ULocalStencilEffectDelegatedActorOverrideFiltered = {}



---@class ULocalStencilEffectDelegatedActorOverrideOverdraw : ULocalStencilEffectDelegatedActorOverrideFiltered
---@field MeshScaleFactor float
---@field MeshInflateBounds FVector
---@field BoundsMethod ELocalStencilBoundsMethod
---@field bOverride_MeshScaleFactor boolean
---@field bOverride_MeshInflateBounds boolean
---@field bOverride_BoundsMethod boolean
local ULocalStencilEffectDelegatedActorOverrideOverdraw = {}



---@class ULocalStencilEffectDelegatedActorOverrideParameters : ULocalStencilEffectDelegatedActorOverrideFiltered
---@field OverrideMaterial UMaterialInterface
---@field Parameters FLocalStencilEffectParams
local ULocalStencilEffectDelegatedActorOverrideParameters = {}



---@class ULocalStencilEffectDelegatedActorOverrideRadius : ULocalStencilEffectDelegatedActorOverrideFiltered
---@field OutlineRadius float
local ULocalStencilEffectDelegatedActorOverrideRadius = {}



---@class ULocalStencilEffectDelegatedActorOverrideRadiusAlpha : ULocalStencilEffectDelegatedActorOverrideFiltered
---@field OutlineRadius float
---@field OutlineColorAlpha float
---@field OutlineColorAlphaPower float
---@field FinalIntensityMod float
---@field bSetOutlineRadius boolean
---@field bSetOutlineAlpha boolean
---@field bSetOutlineAlphaPower boolean
---@field bSetFinalIntensityMod boolean
local ULocalStencilEffectDelegatedActorOverrideRadiusAlpha = {}



---@class ULocalStencilEffectDelegatedForcePlayerCustomDepth : ULocalStencilEffectDelegatedActorOverrideFiltered
---@field bForcePlayerCustomDepth boolean
local ULocalStencilEffectDelegatedForcePlayerCustomDepth = {}



---@class UStencilManager : UBlueprintFunctionLibrary
local UStencilManager = {}

---@param WorldContextObject UObject
---@param LockOwner UObject
---@param Component UPrimitiveComponent
---@param bSuccess boolean
---@param bRestore boolean
function UStencilManager:UnlockForStencil(WorldContextObject, LockOwner, Component, bSuccess, bRestore) end
---@param WorldContextObject UObject
---@param LockOwner UObject
---@param bSuccess boolean
---@param bRestore boolean
function UStencilManager:UnlockAllForStencil(WorldContextObject, LockOwner, bSuccess, bRestore) end
---@param WorldContextObject UObject
---@param Group FName
---@return boolean
function UStencilManager:StencilGroupEnabled(WorldContextObject, Group) end
---@param WorldContextObject UObject
---@return boolean
function UStencilManager:StencilEnabled(WorldContextObject) end
---@param PrimitiveComponent UPrimitiveComponent
---@param StencilValueRenderCustomDepth FStencilValueRenderCustomDepth
function UStencilManager:SetStencilValueRenderCustomDepth(PrimitiveComponent, StencilValueRenderCustomDepth) end
---@param PrimitiveComponent UPrimitiveComponent
---@param StencilValue int32
---@param bRenderCustomDepth boolean
function UStencilManager:SetStencilValueAndRenderCustomDepth(PrimitiveComponent, StencilValue, bRenderCustomDepth) end
---@param PrimitiveComponent UPrimitiveComponent
---@param StencilValue int32
function UStencilManager:SetStencilValue(PrimitiveComponent, StencilValue) end
---@param InTarget AActor
---@param StencilEffect FName
---@param bFlag boolean
function UStencilManager:SetStencilEffect(InTarget, StencilEffect, bFlag) end
---@param InTarget AActor
---@param StencilValue uint8
---@param bFlag boolean
function UStencilManager:SetStencil(InTarget, StencilValue, bFlag) end
---@param PrimitiveComponent UPrimitiveComponent
---@param bRenderCustomDepth boolean
function UStencilManager:SetRenderCustomDepth(PrimitiveComponent, bRenderCustomDepth) end
---@param Actor AActor
---@param StencilValueRenderCustomDepth FStencilValueRenderCustomDepth
function UStencilManager:SetActorStencilValueRenderCustomDepth(Actor, StencilValueRenderCustomDepth) end
---@param Actor AActor
---@param StencilValue int32
---@param bRenderCustomDepth boolean
function UStencilManager:SetActorStencilValueAndRenderCustomDepth(Actor, StencilValue, bRenderCustomDepth) end
---@param Actor AActor
---@param StencilValue int32
function UStencilManager:SetActorStencilValue(Actor, StencilValue) end
---@param Actor AActor
---@param bRenderCustomDepth boolean
function UStencilManager:SetActorRenderCustomDepth(Actor, bRenderCustomDepth) end
---@param WorldContextObject UObject
---@param Component UPrimitiveComponent
---@param Owner UObject
function UStencilManager:LockOwnerForStencil(WorldContextObject, Component, Owner) end
---@param WorldContextObject UObject
---@param LockOwner UObject
---@param Component UPrimitiveComponent
---@param StencilValue int32
---@param bSuccess boolean
---@param bRenderCustomDepth boolean
function UStencilManager:LockForStencil(WorldContextObject, LockOwner, Component, StencilValue, bSuccess, bRenderCustomDepth) end
---@param WorldContextObject UObject
---@param LockOwner UObject
---@param Actor AActor
---@param StencilValue int32
---@param bSuccess boolean
---@param bRenderCustomDepth boolean
function UStencilManager:LockAllForStencil(WorldContextObject, LockOwner, Actor, StencilValue, bSuccess, bRenderCustomDepth) end
---@param WorldContextObject UObject
---@param Component UPrimitiveComponent
---@param bLocked boolean
function UStencilManager:IsLockedForStencil(WorldContextObject, Component, bLocked) end
---@param WorldContextObject UObject
---@return AStencilManagerSingleton
function UStencilManager:GetStencilManager(WorldContextObject) end
---@param InTarget AActor
---@param StencilEffect FName
function UStencilManager:GetCurrentStencilEffect(InTarget, StencilEffect) end
---@param WorldContextObject UObject
---@param Groups TArray<FName>
---@param bEnable boolean
function UStencilManager:EnableStencilGroups(WorldContextObject, Groups, bEnable) end
---@param WorldContextObject UObject
---@param Group FName
---@param bEnable boolean
function UStencilManager:EnableStencilGroup(WorldContextObject, Group, bEnable) end
---@param WorldContextObject UObject
---@param bEnable boolean
function UStencilManager:EnableStencil(WorldContextObject, bEnable) end
---@param WorldContextObject UObject
---@param Groups TArray<FName>
function UStencilManager:DisableStencilGroups(WorldContextObject, Groups) end
---@param WorldContextObject UObject
---@param Group FName
function UStencilManager:DisableStencilGroup(WorldContextObject, Group) end


---@class UStencilManagerAccessibilityOverrides : UDataAsset
---@field AccessibilityOverrides TArray<FStencilManagerEffectInfoAccessibilityOverride>
local UStencilManagerAccessibilityOverrides = {}



---@class UStencilManagerDynamicLock : UObject
---@field StencilManager TWeakObjectPtr<AStencilManagerSingleton>
---@field Priority int32
---@field LastUsedStencilValue uint32
local UStencilManagerDynamicLock = {}



---@class UStencilManagerExternalControl : UObject
local UStencilManagerExternalControl = {}


---@class UStencilManagerExternalControlAnd : UStencilManagerExternalControlLogicList
local UStencilManagerExternalControlAnd = {}


---@class UStencilManagerExternalControlFalse : UStencilManagerExternalControl
local UStencilManagerExternalControlFalse = {}


---@class UStencilManagerExternalControlLogicList : UStencilManagerExternalControl
---@field Controls TArray<UStencilManagerExternalControl>
local UStencilManagerExternalControlLogicList = {}



---@class UStencilManagerExternalControlNot : UStencilManagerExternalControl
---@field Control UStencilManagerExternalControl
local UStencilManagerExternalControlNot = {}



---@class UStencilManagerExternalControlOr : UStencilManagerExternalControlLogicList
local UStencilManagerExternalControlOr = {}


---@class UStencilManagerExternalControlTrue : UStencilManagerExternalControl
local UStencilManagerExternalControlTrue = {}


---@class UStencilManagerExternalControls : UDataAsset
---@field SystemEnable UStencilManagerExternalControl
---@field GroupEnable TMap<FName, UStencilManagerExternalControl>
local UStencilManagerExternalControls = {}



---@class UStencilManagerExternalGroupControl : UStencilManagerExternalControl
local UStencilManagerExternalGroupControl = {}


---@class UStencilManagerExternalSystemControl : UStencilManagerExternalControl
local UStencilManagerExternalSystemControl = {}


---@class UStencilManagerMatchActor : UObject
local UStencilManagerMatchActor = {}


---@class UStencilManagerMatchActorAND : UStencilManagerMatchActor
---@field Expressions TArray<UStencilManagerMatchActor>
local UStencilManagerMatchActorAND = {}



---@class UStencilManagerMatchActorBounds : UStencilManagerMatchActor
---@field Radius float
---@field bIncludeChildActors boolean
local UStencilManagerMatchActorBounds = {}



---@class UStencilManagerMatchActorClass : UStencilManagerMatchActor
---@field ActorClass TSoftClassPtr<AActor>
---@field bAllowSubclasses boolean
local UStencilManagerMatchActorClass = {}



---@class UStencilManagerMatchActorFalse : UStencilManagerMatchActor
local UStencilManagerMatchActorFalse = {}


---@class UStencilManagerMatchActorHasChildClass : UStencilManagerMatchActor
---@field ChildClass TSoftClassPtr<AActor>
---@field bAllowSubclasses boolean
local UStencilManagerMatchActorHasChildClass = {}



---@class UStencilManagerMatchActorHasComponent : UStencilManagerMatchActor
---@field ComponentClass TSoftClassPtr<UActorComponent>
local UStencilManagerMatchActorHasComponent = {}



---@class UStencilManagerMatchActorHasStaticMesh : UStencilManagerMatchActor
---@field Mesh TSoftObjectPtr<UStaticMesh>
---@field bIncludeChildActors boolean
local UStencilManagerMatchActorHasStaticMesh = {}



---@class UStencilManagerMatchActorHasTag : UStencilManagerMatchActor
---@field Tag FName
---@field bIncludeChildActors boolean
local UStencilManagerMatchActorHasTag = {}



---@class UStencilManagerMatchActorIF : UStencilManagerMatchActor
---@field Expression UStencilManagerMatchActor
---@field ExpressionTrue UStencilManagerMatchActor
---@field ExpressionFalse UStencilManagerMatchActor
local UStencilManagerMatchActorIF = {}



---@class UStencilManagerMatchActorLevelStartsWith : UStencilManagerMatchActorNameStartsWith
local UStencilManagerMatchActorLevelStartsWith = {}


---@class UStencilManagerMatchActorMovable : UStencilManagerMatchActor
local UStencilManagerMatchActorMovable = {}


---@class UStencilManagerMatchActorNOT : UStencilManagerMatchActor
---@field Expression UStencilManagerMatchActor
local UStencilManagerMatchActorNOT = {}



---@class UStencilManagerMatchActorName : UStencilManagerMatchActor
---@field bIgnoreCase boolean
local UStencilManagerMatchActorName = {}



---@class UStencilManagerMatchActorNameContains : UStencilManagerMatchActorName
---@field CONTAINS FName
local UStencilManagerMatchActorNameContains = {}



---@class UStencilManagerMatchActorNameStartsWith : UStencilManagerMatchActorName
---@field StartOfName FName
local UStencilManagerMatchActorNameStartsWith = {}



---@class UStencilManagerMatchActorOR : UStencilManagerMatchActor
---@field Expressions TArray<UStencilManagerMatchActor>
local UStencilManagerMatchActorOR = {}



---@class UStencilManagerMatchActorRadiusGreaterThan : UStencilManagerMatchActorBounds
local UStencilManagerMatchActorRadiusGreaterThan = {}


---@class UStencilManagerMatchActorRadiusLessThan : UStencilManagerMatchActorBounds
local UStencilManagerMatchActorRadiusLessThan = {}


---@class UStencilManagerMatchActorStationary : UStencilManagerMatchActorMovable
local UStencilManagerMatchActorStationary = {}


---@class UStencilManagerMatchActorTrue : UStencilManagerMatchActor
local UStencilManagerMatchActorTrue = {}


---@class UStencilManagerSettings : UDataAsset
---@field StencilPostProcessingMaterials TArray<UMaterialInterface>
---@field PreferredStencilPostProcessingMaterial UMaterialInterface
---@field bForcePreferredStencilPostProcessingMaterial boolean
---@field MaterialParameterCollection UMaterialParameterCollection
---@field MaterialParameterGlobals FStencilManagerMPCGlobals
---@field Groups TArray<FName>
---@field EffectsList TArray<FStencilManagerEffectInfo>
---@field AccessibilityOverrides UStencilManagerAccessibilityOverrides
---@field WholeActorOverrides UStencilManagerWholeActorOverrides
---@field DefaultLocalStencilTagRules FStencilPrimitiveTagRules
---@field LocalStencilFXOverrides ULocalStencilEffectActorOverrides
local UStencilManagerSettings = {}



---@class UStencilManagerWholeActorOverrides : UDataAsset
---@field WholeActorOverrides TArray<FStencilManagerEffectInfoActorOverrides>
local UStencilManagerWholeActorOverrides = {}

function UStencilManagerWholeActorOverrides:Validate() end


