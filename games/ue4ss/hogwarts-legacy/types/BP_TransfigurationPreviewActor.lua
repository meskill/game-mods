---@meta

---@class ABP_TransfigurationPreviewActor_C : ATransfigurationPreviewActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PostProcess UPostProcessComponent
---@field Visibility_PointLight UPointLightComponent
---@field CentredMeshRoot USceneComponent
---@field NiagaraSwirl UNiagaraComponent
---@field Timeline_0_Light_551032264E08DDD03F2778B4242AC652 float
---@field Timeline_0_Distortion_551032264E08DDD03F2778B4242AC652 float
---@field Timeline_0__Direction_551032264E08DDD03F2778B4242AC652 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field ConjuredFromThinAirTimeline_Light_DE9EC78A4D8C95068C93FB91E1840FD8 float
---@field ConjuredFromThinAirTimeline_DistortIn_DE9EC78A4D8C95068C93FB91E1840FD8 float
---@field ConjuredFromThinAirTimeline_DistortOut_DE9EC78A4D8C95068C93FB91E1840FD8 float
---@field ConjuredFromThinAirTimeline_Rotation_DE9EC78A4D8C95068C93FB91E1840FD8 float
---@field ConjuredFromThinAirTimeline_Scale_DE9EC78A4D8C95068C93FB91E1840FD8 float
---@field ConjuredFromThinAirTimeline__Direction_DE9EC78A4D8C95068C93FB91E1840FD8 ETimelineDirection::Type
---@field ConjuredFromThinAirTimeline UTimelineComponent
---@field OriginalScale FVector
---@field GhostMeshes TArray<UMeshComponent>
---@field SolidMeshes TArray<UMeshComponent>
---@field ScaleFactor float
---@field Visible boolean
---@field GlowMult float
---@field PinchMult float
---@field RefractionMult float
---@field RandomSwirl float
---@field TransformingIn boolean
---@field CamUID int32
---@field SizeToCameraDistanceCurve UCurveFloat
---@field BlendCurve UCurveFloat
---@field SizeToVertOffsetCurve UCurveFloat
---@field bInitializeVisibilityOnLoad boolean
---@field OriginalCenter FVector
---@field ActorState E_PreviewActorState::Type
---@field bTransformationMeshSwapPending boolean
---@field HiddenComponents TArray<USceneComponent>
---@field EffectScale float
---@field ExpandEffect UNiagaraSystem
---@field CollapseEffect UNiagaraSystem
---@field Rotation FRotator
---@field PlayRate float
---@field MinimumScale FVector
---@field InitialLightIntensity float
---@field MinimumLightCap float
---@field CurrentLightIntesity float
---@field TargetLightIntensity float
local ABP_TransfigurationPreviewActor_C = {}

function ABP_TransfigurationPreviewActor_C:ResetToOriginalScale() end
---@return boolean
function ABP_TransfigurationPreviewActor_C:IsPreviewInTransition() end
function ABP_TransfigurationPreviewActor_C:ShowBillboardComponents() end
ABP_TransfigurationPreviewActor_C['Set EffectScale'] = function(self, ) end
function ABP_TransfigurationPreviewActor_C:ShowPreviewMesh() end
function ABP_TransfigurationPreviewActor_C:HidePreviewMesh() end
---@return boolean
function ABP_TransfigurationPreviewActor_C:IsReadyForPlacement() end
---@return boolean
function ABP_TransfigurationPreviewActor_C:ShouldBeCollapsedToSwirl() end
function ABP_TransfigurationPreviewActor_C:SetupCentredMeshRoot() end
function ABP_TransfigurationPreviewActor_C:ConjuredFromThinAirTimeline__FinishedFunc() end
function ABP_TransfigurationPreviewActor_C:ConjuredFromThinAirTimeline__UpdateFunc() end
function ABP_TransfigurationPreviewActor_C:ConjuredFromThinAirTimeline__TriggerMotionBlur__EventFunc() end
function ABP_TransfigurationPreviewActor_C:ConjuredFromThinAirTimeline__SwirlOffEvent__EventFunc() end
function ABP_TransfigurationPreviewActor_C:ConjuredFromThinAirTimeline__BackwardsTransformationEvent__EventFunc() end
ABP_TransfigurationPreviewActor_C['ConjuredFromThinAirTimeline__Camera Shaker Trigger__EventFunc'] = function(self, ) end
function ABP_TransfigurationPreviewActor_C:Timeline_0__FinishedFunc() end
function ABP_TransfigurationPreviewActor_C:Timeline_0__UpdateFunc() end
function ABP_TransfigurationPreviewActor_C:Timeline_0__NewTrack_1__EventFunc() end
function ABP_TransfigurationPreviewActor_C:InitializeVisibility() end
function ABP_TransfigurationPreviewActor_C:ReinitializeVisibility() end
---@param DeltaSeconds float
function ABP_TransfigurationPreviewActor_C:ReceiveTick(DeltaSeconds) end
function ABP_TransfigurationPreviewActor_C:ConjuredFromThinAir() end
function ABP_TransfigurationPreviewActor_C:CancelledIntoThinAir() end
---@param InNewActor AActor
function ABP_TransfigurationPreviewActor_C:ObjectDeselected(InNewActor) end
---@param InNewActors TArray<AActor>
function ABP_TransfigurationPreviewActor_C:ObjectConfirmed(InNewActors) end
function ABP_TransfigurationPreviewActor_C:BlueprintInitialize() end
---@param InNewPreview ATransfigurationPreviewActor
function ABP_TransfigurationPreviewActor_C:OnTransformStart(InNewPreview) end
---@param DestroyedActor AActor
function ABP_TransfigurationPreviewActor_C:OnTransformationDone(DestroyedActor) end
function ABP_TransfigurationPreviewActor_C:ObjectSelected() end
function ABP_TransfigurationPreviewActor_C:OnVanishStart() end
function ABP_TransfigurationPreviewActor_C:OnPreviewMeshLoaded() end
---@param InPreviousPreview ATransfigurationPreviewActor
function ABP_TransfigurationPreviewActor_C:TransformedFromOtherPreview(InPreviousPreview) end
function ABP_TransfigurationPreviewActor_C:Vanish() end
function ABP_TransfigurationPreviewActor_C:BP_OnTransformationLoaded() end
function ABP_TransfigurationPreviewActor_C:OnTransformWithoutStyle() end
function ABP_TransfigurationPreviewActor_C:OnReturnedToSwirl() end
function ABP_TransfigurationPreviewActor_C:AppearFromSwirl() end
function ABP_TransfigurationPreviewActor_C:ReturnToSwirl() end
---@param TotalConjurationDuration float
---@param Resources TArray<FTransfigurationResource>
---@param WandPos FVector
function ABP_TransfigurationPreviewActor_C:StartHoldConjuring(TotalConjurationDuration, Resources, WandPos) end
function ABP_TransfigurationPreviewActor_C:ColorAboutToChange() end
function ABP_TransfigurationPreviewActor_C:CannotHoldConjuring() end
function ABP_TransfigurationPreviewActor_C:StartHoldVanishing() end
function ABP_TransfigurationPreviewActor_C:CancelHoldVanishing() end
function ABP_TransfigurationPreviewActor_C:StartHoldTransforming() end
function ABP_TransfigurationPreviewActor_C:CancelHoldTransforming() end
function ABP_TransfigurationPreviewActor_C:FinishHoldVanishing() end
function ABP_TransfigurationPreviewActor_C:FinishHoldTransforming() end
---@param StartScale float
---@param EndScale float
function ABP_TransfigurationPreviewActor_C:OnSizeChange(StartScale, EndScale) end
---@param EntryPoint int32
function ABP_TransfigurationPreviewActor_C:ExecuteUbergraph_BP_TransfigurationPreviewActor(EntryPoint) end


