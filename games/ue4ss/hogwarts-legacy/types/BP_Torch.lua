---@meta

---@class ABP_Torch_C : ATorch
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimatedLight UAnimatedLightComponent
---@field Ak_BP_Torch UAkComponent
---@field PropagateTrigger USphereComponent
---@field IndirectLight UPointLightComponent
---@field SpotLight USpotLightComponent
---@field PointLight UPointLightComponent
---@field FireParticle UNiagaraComponent
---@field ObjectState UObjectStateComponent
---@field Lightswitch_Timeline_Intensity_Percent_656EDB6C49C67839276729BFD7783D32 float
---@field Lightswitch_Timeline__Direction_656EDB6C49C67839276729BFD7783D32 ETimelineDirection::Type
---@field Lightswitch_Timeline UTimelineComponent
---@field Timeline_1_NewTrack_0_EDCBDBEC444AB99094E6A19E1ACC4925 float
---@field Timeline_1__Direction_EDCBDBEC444AB99094E6A19E1ACC4925 ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field environment EEnvironment::Type
---@field PropIndex int32
---@field MeshSelect TMap<TSoftObjectPtr<UStaticMesh>, boolean>
---@field EnvInt int32
---@field OnLit FBP_Torch_COnLit
---@field OnExtinguished FBP_Torch_COnExtinguished
---@field ['Switch Target'] TArray<AActor>
---@field TorchMeshToTorchSize TMap<TSoftObjectPtr<UStaticMesh>, E_TorchFireSize::Type>
---@field DPC_InitialTransform_0 FTransform
---@field ArrestoStart FBP_Torch_CArrestoStart
---@field TorchDamaged FBP_Torch_CTorchDamaged
---@field ['Light Clipping Planes Actor'] ALightClippingPlanes
---@field ['Invert Clipping Planes'] boolean
---@field ['On During Day'] boolean
---@field ['Point Light On'] boolean
---@field ['Spot Light On'] boolean
---@field ['OL Default Type'] E_LightFixture_Default::Type
---@field ['Light Type Input Names'] TArray<FName>
---@field ['Needs Texture Check'] TMap<int32, boolean>
---@field ['Near Shadow Clipping Plane'] float
---@field ['Run Easy Set Up'] boolean
---@field OLESU_Castle TArray<int32>
---@field OLESU_Cairn TArray<int32>
---@field OLESU_Cavern TArray<int32>
---@field OLESU_Overland TArray<int32>
---@field ['Default Type Override'] boolean
---@field ['Use Mesh To System'] boolean
---@field MeshToFireSystem TMap<TSoftObjectPtr<UStaticMesh>, TSoftObjectPtr<UNiagaraSystem>>
---@field MeshToPhysicsSystem TMap<TSoftObjectPtr<UStaticMesh>, TSoftObjectPtr<UNiagaraSystem>>
---@field ['Light Clipping Volumes Actor'] ALightClippingVolume
---@field ['Volume Mode'] ELightClippingProviderVolumeMode
---@field ['Max Draw Distance'] float
---@field ['Draw Distance Fade Range'] float
---@field ['Random Seed'] FRandomStream
---@field ['Sound Offset'] FVector
---@field BlockCameraCol boolean
local ABP_Torch_C = {}

---@return boolean
function ABP_Torch_C:DisallowArrestoMomentum() end
---@param Instigator AActor
---@param Amount float
---@return boolean
function ABP_Torch_C:StartFreeze(Instigator, Amount) end
---@param Instigator AActor
---@param increaseAmount float
---@param Location FVector
---@return boolean
function ABP_Torch_C:IncreaseWetness(Instigator, increaseAmount, Location) end
---@param Instigator AActor
---@param Amount float
---@param Location FVector
---@return boolean
function ABP_Torch_C:StartWetness(Instigator, Amount, Location) end
---@param decreaseAmount float
---@return boolean
function ABP_Torch_C:DecreaseFire(decreaseAmount) end
---@param increaseAmount float
---@param Location FVector
---@return boolean
function ABP_Torch_C:IncreaseFire(increaseAmount, Location) end
---@param Point FVector
---@param OnFire boolean
---@return boolean
function ABP_Torch_C:IsPointOnFire(Point, OnFire) end
---@param Amount float
---@param Location FVector
---@return boolean
function ABP_Torch_C:StartFire(Amount, Location) end
---@param light ULightComponentBase
---@param ForceOnProbes boolean
function ABP_Torch_C:ForceOnDuringProbeCapture(light, ForceOnProbes) end
---@return boolean
function ABP_Torch_C:ShouldStartLit() end
---@return E_LightFixture_Default::Type
ABP_Torch_C['Auto Easy Set Up'] = function(self, ) end
ABP_Torch_C['Set Point Light Texture'] = function(self, ) end
ABP_Torch_C['Run Construction'] = function(self, ) end
ABP_Torch_C['OL Easy Set Up'] = function(self, ) end
---@return boolean
function ABP_Torch_C:ConstructTorch() end
---@return boolean
function ABP_Torch_C:ParticleSetup() end
---@return float
function ABP_Torch_C:PropagationSetup() end
---@return uint8
function ABP_Torch_C:ModFunctionSetup() end
function ABP_Torch_C:UserConstructionScript() end
function ABP_Torch_C:Timeline_1__FinishedFunc() end
function ABP_Torch_C:Timeline_1__UpdateFunc() end
function ABP_Torch_C:Lightswitch_Timeline__FinishedFunc() end
function ABP_Torch_C:Lightswitch_Timeline__UpdateFunc() end
---@param DayNightMaster UDayNightMasterComponent
---@param EventName FName
---@param NormalizedTime FSolarNormalizedTime
---@param GameTime FDateTime
---@param MoonDirection EDayNightEventDirection
---@param MoonAltitudeDegrees float
---@param Phase EMoonPhaseName
---@param bLate boolean
function ABP_Torch_C:DayNightMoonEvent(DayNightMaster, EventName, NormalizedTime, GameTime, MoonDirection, MoonAltitudeDegrees, Phase, bLate) end
function ABP_Torch_C:OnFailedToFreeze() end
---@param Instigator AActor
function ABP_Torch_C:OnThaw(Instigator) end
---@param decreaseAmount float
function ABP_Torch_C:OnDecreaseWetness(decreaseAmount) end
---@param Instigator AActor
function ABP_Torch_C:OnDry(Instigator) end
function ABP_Torch_C:OnFailedToWet() end
---@param IncendioComponent UIncendioComponent
function ABP_Torch_C:OnCaughtFire(IncendioComponent) end
function ABP_Torch_C:OnCompletelyCharred() end
function ABP_Torch_C:OnFailedToLight() end
function ABP_Torch_C:OnFireExtinguished() end
function ABP_Torch_C:ReceiveBeginPlay() end
---@param bLerp boolean
function ABP_Torch_C:EndLight(bLerp) end
---@param bSlow boolean
function ABP_Torch_C:ExtinguishLight(bSlow) end
---@param LightLoc FVector
function ABP_Torch_C:SequentialLight(LightLoc) end
function ABP_Torch_C:OnAttemptToFreeze() end
---@param Location FVector
function ABP_Torch_C:OnAttemptToSetOnFire(Location) end
---@param Amount float
---@param Location FVector
function ABP_Torch_C:OnAttemptToApplyWetness(Amount, Location) end
---@param LightComponent ULightComponent
function ABP_Torch_C:OnEnterLightTickRange(LightComponent) end
---@param LightComponent ULightComponent
function ABP_Torch_C:OnExitLightTickRange(LightComponent) end
---@param SwitchActor AActor
function ABP_Torch_C:SwitchOn(SwitchActor) end
function ABP_Torch_C:Stop_Lerp() end
---@param Instigator AActor
---@param ArrestoMomentumComponent UArrestoMomentumComponent
---@param TimeDilation float
function ABP_Torch_C:OnArrestoMomentumBegin(Instigator, ArrestoMomentumComponent, TimeDilation) end
---@param Instigator AActor
---@param ArrestoMomentumComponent UArrestoMomentumComponent
function ABP_Torch_C:OnArrestoMomentumEnd(Instigator, ArrestoMomentumComponent) end
---@param SwitchActor AActor
function ABP_Torch_C:SwitchOff(SwitchActor) end
---@param bOn boolean
function ABP_Torch_C:Lightswitch_Lerp(bOn) end
---@param DayNightMaster UDayNightMasterComponent
---@param EventName FName
---@param NormalizedTime FSolarNormalizedTime
---@param GameTime FDateTime
---@param SunDirection EDayNightEventDirection
---@param SunAltitudeDegrees float
---@param bLate boolean
function ABP_Torch_C:DayNightSunEvent(DayNightMaster, EventName, NormalizedTime, GameTime, SunDirection, SunAltitudeDegrees, bLate) end
---@param EntryPoint int32
function ABP_Torch_C:ExecuteUbergraph_BP_Torch(EntryPoint) end
---@param Damage float
---@param MunitionTagContainer FGameplayTagContainer
---@param Instigator AActor
function ABP_Torch_C:TorchDamaged__DelegateSignature(Damage, MunitionTagContainer, Instigator) end
---@param bStart boolean
---@param ArrestoComp UArrestoMomentumComponent
---@param TimeDilation float
function ABP_Torch_C:ArrestoStart__DelegateSignature(bStart, ArrestoComp, TimeDilation) end
---@param Torch ABP_Torch_C
function ABP_Torch_C:OnExtinguished__DelegateSignature(Torch) end
---@param Torch ABP_Torch_C
function ABP_Torch_C:OnLit__DelegateSignature(Torch) end


