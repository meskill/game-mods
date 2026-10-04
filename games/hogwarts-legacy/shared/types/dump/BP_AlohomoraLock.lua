---@meta

---@class ABP_AlohomoraLock_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TurnOffHighContrastGameplay URenderSettingsCustomBlendDomainOverrideNamedComponent
---@field FoliageRemoverActor UFoliageRemoverActorComponent
---@field Box UBoxComponent
---@field Cube UStaticMeshComponent
---@field SpotLight1 USpotLightComponent
---@field PostProcess UPostProcessComponent
---@field SpotLight USpotLightComponent
---@field BlendableGlobalLighting UBlendableGlobalLightingComponent
---@field Camera UCineCameraComponent
---@field SkeletalMesh USkeletalMeshComponent
---@field SceneRoot USceneComponent
---@field Ak_BP_Alohomora UAkComponent
---@field CameraTimeline_CameraFocalLength_BBD92ECF4B9CBEF233E45D835A118368 float
---@field CameraTimeline__Direction_BBD92ECF4B9CBEF233E45D835A118368 ETimelineDirection::Type
---@field CameraTimeline UTimelineComponent
---@field InteractInitiated boolean
---@field PuzzleComplete boolean
---@field AnimBlueprint UABP_AlohomoraLock_C
---@field InnerTargetDegrees float
---@field OuterTargetDegrees float
---@field CurrentOuterDegrees float
---@field CurrentInnerDegrees float
---@field WinningInnerAngle float
---@field WinningOuterAngle float
---@field DistanceToInnerWin float
---@field DistanceToOuterWin float
---@field MinStickPressToWin float
---@field ContainsLoot boolean
---@field MaxErrorToWin float
---@field MaxRumble float
---@field RightStickPressed boolean
---@field LeftStickPressed boolean
---@field LeftStickFrac float
---@field RightStickFrac float
---@field MinAngleForFX float
---@field LeftRumbleMultiplier float
---@field LargeRumble float
---@field MedRumble float
---@field SmallRumble float
---@field RightRumbleMult float
---@field LastUnsolvedTime float
---@field HoldtimeForWin float
---@field OneStickCorrectRumble float
---@field BothSticksCorrectRumble float
---@field DistanceForParticles float
---@field ['Prev Inner Degrees'] float
---@field ['Prev Outer Degrees'] float
---@field InnerSpeed float
---@field OuterSpeed float
---@field ['Delta Seconds'] float
---@field InnerDiscMoving boolean
---@field OuterDiscMoving boolean
---@field StartSpeed float
---@field StopSpeed float
---@field LockedActor AActor
---@field GreenSpark UNiagaraComponent
---@field RedSpark UNiagaraComponent
---@field GreenAlpha float
---@field RedAlpha float
---@field FX_Intensity float
---@field GreenOuterSocket FName
---@field RedInnerSocket FName
---@field RightStickPressedLastFrame boolean
---@field LeftStickPressedLastFrame boolean
---@field BaseOuterDegrees float
---@field BaseInnerDegrees float
---@field InitialLeftStickAngle float
---@field InitialRightStickAngle float
---@field GreenJitter FVector
---@field RedJitter FVector
---@field JitterMax float
---@field JitterMin float
---@field RedLight UPointLightComponent
---@field GreenLight UPointLightComponent
---@field RedSmoke UNiagaraComponent
---@field GreenSmoke UNiagaraComponent
---@field MunitionImpactHandle FHermesBPDelegateHandle
---@field LegendWidget UUI_BP_SimpleLegend_Screen_C
---@field UsingKeyboard boolean
---@field KeyboardButtonPressed boolean
---@field ['Outer KB Input'] float
---@field ['Inner KB Input'] float
---@field ['Keyboard Max Speed'] float
---@field ['Outer KB Pressed'] boolean
---@field ['Inner KB Pressed'] boolean
---@field ['Outer KB Current Speed'] float
---@field ['KB Interp Speed'] float
---@field ['Inner KB Current Speed'] float
---@field GreenCorrectFX UNiagaraComponent
---@field RedCorrectFX UNiagaraComponent
---@field ExitingPuzzle boolean
---@field ['Overlapping Actors'] TArray<AActor>
---@field GreenColor FLinearColor
---@field RedColor FLinearColor
---@field KBOuterFirstTickInput float
---@field KBInnerFirstTickInput float
---@field InputDeviceChangedHandle FHermesBPDelegateHandle
---@field FadeBlackDuration float
local ABP_AlohomoraLock_C = {}

---@param Disable boolean
function ABP_AlohomoraLock_C:HighContrastMode(Disable) end
function ABP_AlohomoraLock_C:UpdateLegend() end
---@param StickAngle float
function ABP_AlohomoraLock_C:PlayLightWhooshMotion(StickAngle) end
---@param Activate boolean
function ABP_AlohomoraLock_C:ActivateUI(Activate) end
function ABP_AlohomoraLock_C:CalculateJitter() end
function ABP_AlohomoraLock_C:ClickSFX() end
---@return float
function ABP_AlohomoraLock_C:OuterFXAngle() end
---@return float
function ABP_AlohomoraLock_C:InnerFXAngle() end
function ABP_AlohomoraLock_C:OnRightStickPressed() end
---@return boolean
function ABP_AlohomoraLock_C:CalcLeftStickPressed() end
---@return boolean
function ABP_AlohomoraLock_C:CalcRightStickPressed() end
---@return float
function ABP_AlohomoraLock_C:LeftStickAngle() end
---@return float
function ABP_AlohomoraLock_C:RightStickAngle() end
function ABP_AlohomoraLock_C:OnLeftStickPressed() end
---@param A float
---@param Out float
function ABP_AlohomoraLock_C:PickClosest45(A, Out) end
---@param InputPin float
---@return float
function ABP_AlohomoraLock_C:SetAngleToRange(InputPin) end
---@param DeltaTime float
---@param NewParam float
function ABP_AlohomoraLock_C:CalculateAnglesFromSticks(DeltaTime, NewParam) end
function ABP_AlohomoraLock_C:CameraTimeline__FinishedFunc() end
function ABP_AlohomoraLock_C:CameraTimeline__UpdateFunc() end
function ABP_AlohomoraLock_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_AlohomoraLock_C:ReceiveTick(DeltaSeconds) end
---@param Caller UObject
function ABP_AlohomoraLock_C:InteractionInitiated(Caller) end
---@param Caller UObject
function ABP_AlohomoraLock_C:CabinetOpen(Caller) end
---@param Caller UObject
function ABP_AlohomoraLock_C:RightButtonPressed(Caller) end
---@param Caller UObject
---@param HitBySpell FHitBySpellData
function ABP_AlohomoraLock_C:ActorHitBySpell(Caller, HitBySpell) end
---@param EndPlayReason EEndPlayReason::Type
function ABP_AlohomoraLock_C:ReceiveEndPlay(EndPlayReason) end
function ABP_AlohomoraLock_C:Exit() end
---@param Caller UObject
---@param float float
function ABP_AlohomoraLock_C:Alohomora_OuterRing_Pressed(Caller, float) end
---@param Caller UObject
---@param float float
function ABP_AlohomoraLock_C:Alohomora_InnerRing_Pressed(Caller, float) end
---@param Caller UObject
---@param float float
function ABP_AlohomoraLock_C:Alohomora_OuterRing_Released(Caller, float) end
---@param Caller UObject
---@param float float
function ABP_AlohomoraLock_C:Alohomora_InnerRing_Released(Caller, float) end
---@param Caller UObject
function ABP_AlohomoraLock_C:ExitImmediately(Caller) end
function ABP_AlohomoraLock_C:AutoSolve() end
---@param Caller UObject
function ABP_AlohomoraLock_C:RefreshButtonCallouts(Caller) end
---@param EntryPoint int32
function ABP_AlohomoraLock_C:ExecuteUbergraph_BP_AlohomoraLock(EntryPoint) end


