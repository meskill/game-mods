---@meta

---@class AMunitionType_AOE : AMunitionType_Base
---@field MinDamage float
---@field m_radiusStart float
---@field m_radiusEnd float
---@field bUseCustomGrowthDuration boolean
---@field CustomGrowthDuration float
---@field m_hitVictimInterval float
---@field m_damageType TSubclassOf<UDamageType>
---@field m_explosionFX UParticleSystem
---@field PlayExplosionOnGround boolean
---@field m_explosionSfx UAkAudioEvent
---@field PhysicsImpulse float
---@field m_stopAtCollision boolean
---@field bUnblockable boolean
---@field bBreakBlockFX boolean
---@field m_hitActorFX UParticleSystem
---@field m_hitTerrainFX UParticleSystem
---@field m_hitBlockedFX UParticleSystem
---@field m_hitActorSfx UAkAudioEvent
---@field m_hitTerrainSfx UAkAudioEvent
---@field m_hitBlockedSfx UAkAudioEvent
local AMunitionType_AOE = {}



---@class AMunitionType_Base : AActor
---@field m_damage float
---@field m_minLifeTime float
---@field m_maxLifeTime float
---@field MunitionImpactTags FGameplayTagContainer
---@field MunitionDataAssets TArray<UInteractionArchitectAsset>
---@field OnOverlap FMunitionType_BaseOnOverlap
---@field OnImpact FMunitionType_BaseOnImpact
---@field OnMunitionDestroyed FMunitionType_BaseOnMunitionDestroyed
---@field OnImpactDamage FMunitionType_BaseOnImpactDamage
---@field bDOAOnParrySuccess boolean
local AMunitionType_Base = {}

function AMunitionType_Base:TargetDestroyed() end
---@param bInFlag boolean
function AMunitionType_Base:SetVelocityIncludeTarget(bInFlag) end
---@param i_pActor AActor
function AMunitionType_Base:SetTarget(i_pActor) end
---@param InVelocity FVector
function AMunitionType_Base:SetStartingVelocity(InVelocity) end
---@param i_sourcePos FVector
function AMunitionType_Base:SetSourcePosition(i_sourcePos) end
---@param InRemaningTime float
function AMunitionType_Base:SetRemainingLifeTime(InRemaningTime) end
---@param bInFlag boolean
function AMunitionType_Base:SetRecomputeVelocity(bInFlag) end
---@param i_pActor AActor
function AMunitionType_Base:SetMunitionOwner(i_pActor) end
---@param InMunitionImpactType FName
function AMunitionType_Base:SetMunitionImpactType(InMunitionImpactType) end
---@param InMunitionDataAssets TArray<UInteractionArchitectAsset>
function AMunitionType_Base:SetMunitionDataAssets(InMunitionDataAssets) end
---@param Range float
function AMunitionType_Base:SetMaxRange(Range) end
---@param InMaxDamage float
function AMunitionType_Base:SetMaxDamage(InMaxDamage) end
---@param InMaxTime float
function AMunitionType_Base:SetLifeTime(InMaxTime) end
---@param i_pActor AActor
function AMunitionType_Base:SetInstigator(i_pActor) end
---@param bInFlag boolean
function AMunitionType_Base:SetFromAimMode(bInFlag) end
---@param i_destPos FVector
function AMunitionType_Base:SetDestinationPosition(i_destPos) end
---@param InDamage float
function AMunitionType_Base:SetDamage(InDamage) end
function AMunitionType_Base:ResetMunitionTagContainer() end
function AMunitionType_Base:ResetMunitionDataAssets() end
---@param InMunitionTagContainer FGameplayTagContainer
function AMunitionType_Base:RemoveMunitionTagContainer(InMunitionTagContainer) end
---@param InMunitionTag FGameplayTag
function AMunitionType_Base:RemoveMunitionTag(InMunitionTag) end
---@param InMunitionDataAsset UInteractionArchitectAsset
function AMunitionType_Base:RemoveMunitionDataAsset(InMunitionDataAsset) end
---@param MunitionInstance AMunitionType_Base
---@param MunitionImpactData FMunitionImpactData
function AMunitionType_Base:OnOverlap__DelegateSignature(MunitionInstance, MunitionImpactData) end
---@param MunitionInstance AMunitionType_Base
---@param MunitionImpactData FMunitionImpactData
function AMunitionType_Base:OnImpactDamage__DelegateSignature(MunitionInstance, MunitionImpactData) end
---@param MunitionInstance AMunitionType_Base
---@param MunitionImpactData FMunitionImpactData
function AMunitionType_Base:OnImpact__DelegateSignature(MunitionInstance, MunitionImpactData) end
---@param MunitionInstance AMunitionType_Base
function AMunitionType_Base:OnDestroyed__DelegateSignature(MunitionInstance) end
function AMunitionType_Base:MunitionIgnored() end
function AMunitionType_Base:MunitionFailed() end
function AMunitionType_Base:MunitionDOA() end
function AMunitionType_Base:MunitionDeflected() end
function AMunitionType_Base:MunitionBlocked() end
---@return boolean
function AMunitionType_Base:K2_WasMunitionDeflected() end
---@return boolean
function AMunitionType_Base:IsDeflectedMunition_K2() end
---@param InActor AActor
function AMunitionType_Base:IgnoreActor(InActor) end
---@return boolean
function AMunitionType_Base:GetVelocityIncludeTarget() end
---@return AActor
function AMunitionType_Base:GetTarget() end
---@return FVector
function AMunitionType_Base:GetStartingVelocity() end
---@return FVector
function AMunitionType_Base:GetSourcePosition() end
---@return float
function AMunitionType_Base:GetRemainingLifeTime() end
---@return boolean
function AMunitionType_Base:GetRecomputeVelocity() end
---@return FGameplayTagContainer
function AMunitionType_Base:GetMunitionTagContainer() end
---@return AActor
function AMunitionType_Base:GetMunitionOwner() end
---@return FName
function AMunitionType_Base:GetMunitionImpactType() end
---@return TArray<UInteractionArchitectAsset>
function AMunitionType_Base:GetMunitionDataAssets() end
---@return float
function AMunitionType_Base:GetMaxRange() end
---@return float
function AMunitionType_Base:GetMaxDamage() end
---@return boolean
function AMunitionType_Base:GetFromAimMode() end
---@return FVector
function AMunitionType_Base:GetDestinationPosition() end
---@return float
function AMunitionType_Base:GetDamage() end
function AMunitionType_Base:Fire() end
---@param i_sourcePos FVector
---@param i_destPos FVector
---@param i_destVel FVector
---@param i_speed float
---@param o_time float
---@return FVector
function AMunitionType_Base:ComputeVelocity_NoGravity(i_sourcePos, i_destPos, i_destVel, i_speed, o_time) end
---@param i_sourcePos FVector
---@param i_destPos FVector
---@param i_destVel FVector
---@param i_speed float
---@param i_gravity float
---@param o_time float
---@param assertOnError boolean
---@return FVector
function AMunitionType_Base:ComputeVelocity(i_sourcePos, i_destPos, i_destVel, i_speed, i_gravity, o_time, assertOnError) end
---@param InMunitionTagContainer FGameplayTagContainer
function AMunitionType_Base:AddMunitionTagContainer(InMunitionTagContainer) end
---@param InMunitionTag FGameplayTag
function AMunitionType_Base:AddMunitionTag(InMunitionTag) end
---@param InMunitionDataAsset UInteractionArchitectAsset
function AMunitionType_Base:AddMunitionDataAsset(InMunitionDataAsset) end


---@class AMunitionType_Cone : AMunitionType_Base
---@field m_Range float
---@field m_endRadius float
---@field m_damageType TSubclassOf<UDamageType>
---@field m_stopAtCollision boolean
---@field m_explosionFX UParticleSystem
---@field m_hitActorFX UParticleSystem
---@field m_hitTerrainFX UParticleSystem
---@field m_hitBlockedFX UParticleSystem
---@field m_explosionSfx UAkAudioEvent
---@field m_hitActorSfx UAkAudioEvent
---@field m_hitTerrainSfx UAkAudioEvent
---@field m_hitBlockedSfx UAkAudioEvent
local AMunitionType_Cone = {}



---@class AMunitionType_Hitbox : AMunitionType_Base
---@field m_Extents FVector
---@field PhysicsImpulse float
---@field m_hitVictimInterval float
---@field bUseMunitionOwnerAtImpactSource boolean
---@field bUseTraceAsDamageImpactDirection boolean
---@field m_damageType TSubclassOf<UDamageType>
---@field bUnblockable boolean
---@field CollisionChannel ECollisionChannel
---@field bOnlyDetectBlockingHits boolean
---@field m_hitActorFX TSoftObjectPtr<UParticleSystem>
---@field m_hitTerrainFX TSoftObjectPtr<UParticleSystem>
---@field m_hitBlockedFX TSoftObjectPtr<UParticleSystem>
---@field m_hitActorSfx UAkAudioEvent
---@field m_hitTerrainSfx UAkAudioEvent
---@field m_hitBlockedSfx UAkAudioEvent
local AMunitionType_Hitbox = {}



---@class AMunitionType_Physics : AMunitionType_Base
---@field m_speed float
---@field m_explodeOnContactWithActors boolean
---@field m_explodeOnContactWithTerrain boolean
---@field m_explodeWhenLifetimeExpires boolean
---@field m_AOE TSubclassOf<AMunitionType_Base>
---@field m_hitActorFX UParticleSystem
---@field m_hitTerrainFX UParticleSystem
---@field m_hitBlockedFX UParticleSystem
---@field m_hitDeflectedFX UParticleSystem
---@field m_hitActorSfx UAkAudioEvent
---@field m_hitTerrainSfx UAkAudioEvent
---@field m_hitBlockedSfx UAkAudioEvent
---@field m_hitDeflectedSfx UAkAudioEvent
---@field m_destroyedTargetSfx UAkAudioEvent
---@field m_placeDecal boolean
---@field m_decalMaterial UMaterialInterface
---@field m_decalSize FVector
---@field m_decalLifeSpan float
local AMunitionType_Physics = {}



---@class AMunitionType_Subsonic : AMunitionType_Base
---@field m_speed float
---@field m_gravity float
---@field m_explodeOnContactWithActors boolean
---@field m_explodeOnContactWithTerrain boolean
---@field m_explodeWhenLifetimeExpires boolean
---@field m_deactivteParticlesOnDeath boolean
---@field m_delayedDeactivationTime float
---@field m_delayedDeathTime float
---@field m_physicsImpulse float
---@field m_AOE TSubclassOf<AMunitionType_Base>
---@field m_hitActorFX UParticleSystem
---@field m_hitTerrainFX UParticleSystem
---@field m_hitBlockedFX UParticleSystem
---@field m_fizzleOutFX UParticleSystem
---@field m_hitActorNiagaraFX UNiagaraSystem
---@field m_hitTerrainNiagaraFX UNiagaraSystem
---@field m_hitBlockedNiagaraFX UNiagaraSystem
---@field m_fizzleOutNiagaraFX UNiagaraSystem
---@field m_destroyedTargetSfx UAkAudioEvent
---@field m_hitActorSfx UAkAudioEvent
---@field m_hitTerrainSfx UAkAudioEvent
---@field m_hitBlockedSfx UAkAudioEvent
---@field m_fizzleOutSfx UAkAudioEvent
---@field m_placeDecal boolean
---@field m_decalMaterial UMaterialInterface
---@field m_decalSize FVector
---@field m_decalLifeSpan float
---@field m_decalFadeTime float
---@field HomingMarkerOffsetCurve UCurveFloat
---@field HomingAccelerationCurve UCurveFloat
---@field m_sphereComp USphereComponent
---@field m_meshComp USkeletalMeshComponent
---@field ProjectileMovementComponent UMunitionMovementComponent
local AMunitionType_Subsonic = {}

---@param HitResult FHitResult
---@param bDestroyed boolean
---@param bHit boolean
---@param bBlocked boolean
---@param bFailed boolean
function AMunitionType_Subsonic:OnHit(HitResult, bDestroyed, bHit, bBlocked, bFailed) end
---@param Target AActor
---@param TargetLocation FVector
---@param Velocity FVector
function AMunitionType_Subsonic:OnFire(Target, TargetLocation, Velocity) end
---@return USphereComponent
function AMunitionType_Subsonic:GetSphereComp() end
---@return UMunitionMovementComponent
function AMunitionType_Subsonic:GetProjectileMovement() end
---@return USkeletalMeshComponent
function AMunitionType_Subsonic:GetMeshComp() end
function AMunitionType_Subsonic:DestroyMunition() end


---@class AMunitionType_SuperSonic : AMunitionType_Base
---@field m_hitActorFX UParticleSystem
---@field m_hitActorSfx UAkAudioEvent
---@field m_hitTerrainFX UParticleSystem
---@field m_hitTerrainSfx UAkAudioEvent
---@field m_placeDecal boolean
---@field m_decalMaterial UMaterialInterface
---@field m_decalSize float
---@field m_decalLifeSpan float
local AMunitionType_SuperSonic = {}



---@class FMunitionImpactData
---@field m_hitResult FHitResult
---@field m_pMunitionActor AActor
---@field m_pMunitionOwner AActor
---@field m_pInstigator AActor
---@field m_impactDataAssets TArray<UInteractionArchitectAsset>
---@field MunitionImpactType FName
---@field MunitionTagContainer FGameplayTagContainer
---@field DamageTypeClass TSubclassOf<UDamageType>
---@field m_damage float
---@field m_maxDamage float
---@field CharacterDamage float
local FMunitionImpactData = {}



---@class FMunitionToInstigatorData
---@field InstigatorPtr AActor
---@field VictimPtr AActor
---@field MunitionBasePtr AMunitionType_Base
local FMunitionToInstigatorData = {}



---@class FTargetedByMunition
---@field InstigatorPtr AActor
---@field TimeToReachDest float
---@field MunitionPtr AActor
---@field Deflection boolean
---@field bPerfect boolean
---@field Velocity FVector
local FTargetedByMunition = {}



---@class UMunition : UDataAsset
local UMunition = {}


---@class UMunitionMovementComponent : UProjectileMovementComponent
local UMunitionMovementComponent = {}


---@class UMunitionsBPLibrary : UBlueprintFunctionLibrary
local UMunitionsBPLibrary = {}

---@param Caller UObject
---@param TargetedByMunitionWithData FTargetedByMunition
function UMunitionsBPLibrary:HermesTargetedByMunitionWithDataDelegate__DelegateSignature(Caller, TargetedByMunitionWithData) end
---@param Caller UObject
---@param MunitionType AMunitionType_Base
function UMunitionsBPLibrary:HermesMunitionTypeDelegate__DelegateSignature(Caller, MunitionType) end
---@param Caller UObject
---@param MunitionImpactData FMunitionImpactData
function UMunitionsBPLibrary:HermesMunitionImpactDataDelegate__DelegateSignature(Caller, MunitionImpactData) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param TargetedByMunitionWithData FTargetedByMunition
function UMunitionsBPLibrary:HermesExecuteOwnedTargetedByMunitionWithData(Name, Owner, Caller, TargetedByMunitionWithData) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param MunitionType AMunitionType_Base
function UMunitionsBPLibrary:HermesExecuteOwnedMunitionType(Name, Owner, Caller, MunitionType) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param MunitionImpactData FMunitionImpactData
function UMunitionsBPLibrary:HermesExecuteOwnedMunitionImpactData(Name, Owner, Caller, MunitionImpactData) end
---@param Name FString
---@param Caller UObject
---@param TargetedByMunitionWithData FTargetedByMunition
function UMunitionsBPLibrary:HermesExecuteAllTargetedByMunitionWithData(Name, Caller, TargetedByMunitionWithData) end
---@param Name FString
---@param Caller UObject
---@param MunitionType AMunitionType_Base
function UMunitionsBPLibrary:HermesExecuteAllMunitionType(Name, Caller, MunitionType) end
---@param Name FString
---@param Caller UObject
---@param MunitionImpactData FMunitionImpactData
function UMunitionsBPLibrary:HermesExecuteAllMunitionImpactData(Name, Caller, MunitionImpactData) end
---@param Delegate_TargetedByMunitionWithData FHermesBindTargetedByMunitionWithDataDelegate_TargetedByMunitionWithData
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UMunitionsBPLibrary:HermesBindTargetedByMunitionWithData(Delegate_TargetedByMunitionWithData, Owner, Handle) end
---@param Delegate_MunitionType FHermesBindMunitionTypeDelegate_MunitionType
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UMunitionsBPLibrary:HermesBindMunitionType(Delegate_MunitionType, Owner, Handle) end
---@param Delegate_MunitionImpactData FHermesBindMunitionImpactDataDelegate_MunitionImpactData
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UMunitionsBPLibrary:HermesBindMunitionImpactData(Delegate_MunitionImpactData, Owner, Handle) end


---@class UMunitionsSystem : UObject
---@field MunitionList TArray<AMunitionType_Base>
local UMunitionsSystem = {}

---@param MunitionClass TSubclassOf<AMunitionType_Base>
---@param MunitionOwner AActor
---@param Instigator APawn
---@param SourcePos FVector
---@return AMunitionType_Base
function UMunitionsSystem:SpawnMunition(MunitionClass, MunitionOwner, Instigator, SourcePos) end
function UMunitionsSystem:SetMunitionImpactFailed() end
---@param Owner UObject
---@param Caller UObject
---@param miData FMunitionImpactData
function UMunitionsSystem:SendSpellMadeContact(Owner, Caller, miData) end
---@param Owner UObject
---@param Caller UObject
---@param miData FMunitionImpactData
function UMunitionsSystem:SendMunitionImpactDamage(Owner, Caller, miData) end
---@param Owner UObject
---@param Caller UObject
---@param miData FMunitionImpactData
---@return boolean
function UMunitionsSystem:SendMunitionImpactCombined(Owner, Caller, miData) end
---@param Owner UObject
---@param Caller UObject
---@param miData FMunitionImpactData
function UMunitionsSystem:SendMunitionImpact(Owner, Caller, miData) end
---@param Owner UObject
---@param Caller UObject
---@param mtoIData FMunitionToInstigatorData
function UMunitionsSystem:MunitionToInstigator(Owner, Caller, mtoIData) end
---@param Munition AMunitionType_Base
function UMunitionsSystem:DestroySpawnedMunition(Munition) end


