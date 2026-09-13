---@meta

---@class ABP_GuideSpline_C : AGuideSpline
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_1_BasecolorOpacity_1F0006E04BF37DED4CB85DBDE3023E3B float
---@field Timeline_1_NewTrack_0_1F0006E04BF37DED4CB85DBDE3023E3B float
---@field Timeline_1__Direction_1F0006E04BF37DED4CB85DBDE3023E3B ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Timeline_0_RibbonOpacity_7C1B1AE44828561BB5866090503E04CF float
---@field Timeline_0_flapflapboom_7C1B1AE44828561BB5866090503E04CF float
---@field Timeline_0_slowstart_7C1B1AE44828561BB5866090503E04CF float
---@field Timeline_0_linear_7C1B1AE44828561BB5866090503E04CF float
---@field Timeline_0__Direction_7C1B1AE44828561BB5866090503E04CF ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field CanPathStart boolean
---@field SpawnedBookNiagaraRibbon UNiagaraComponent
---@field Myplayrate float
---@field MySplineMeshComponentArray TArray<USplineMeshComponent>
---@field MovableRibbonDistance float
---@field ['Number Of Elements'] int32
---@field ['New Mesh'] UStaticMesh
---@field scaleMovableRibbon float
---@field Tangent float
---@field dynamicinstances TArray<UMaterialInstanceDynamic>
---@field BookHoveringDistanceInWorldUnits float
---@field BookHoveringUDistance float
---@field PlayRate float
---@field EverLastingRibbon UNiagaraComponent
---@field BackTrackComponents int32
---@field ['Start guiding VFXHandle'] FHermesBPDelegateHandle
---@field InitialNiagaraBurst UNiagaraComponent
---@field FadeOutDuration float
---@field BookBurstNiagara UNiagaraComponent
---@field PreviousBookLocation FVector
---@field MinimumSplineLengthBurstEffectsTrigger float
---@field SecondaryBurstSpawned boolean
---@field PlayerProgressInComponentLengthUnits int32
---@field SplineLengthInComonentLengthUnits int32
---@field InitialSplineLength float
---@field AK_SecondaryBurst UAkComponent
---@field timeSinceLastCast float
---@field PlayerDistanceAlongSpline float
---@field CurrentPrefix int32
---@field PrevPrefix int32
---@field ['Player Progress Delta'] int32
---@field UpdateMesh TArray<boolean>
---@field StartPointTargets TArray<FVector>
---@field StartTangentTargets TArray<FVector>
---@field EndPointTargets TArray<FVector>
---@field EndTangentTargets TArray<FVector>
---@field MeshUpdateDeltaTime float
---@field MeshUpdateInterpSpeed float
---@field GuidingStarted boolean
local ABP_GuideSpline_C = {}

function ABP_GuideSpline_C:Timeline_0__FinishedFunc() end
function ABP_GuideSpline_C:Timeline_0__UpdateFunc() end
function ABP_GuideSpline_C:Timeline_1__FinishedFunc() end
function ABP_GuideSpline_C:Timeline_1__UpdateFunc() end
function ABP_GuideSpline_C:ComputeMeshComponentTargetsFromPlayerPosition() end
function ABP_GuideSpline_C:SpawnInitialBurstAndCheckIfPathCanStart() end
function ABP_GuideSpline_C:PreparePathRemoval() end
function ABP_GuideSpline_C:ReverseRibbon() end
function ABP_GuideSpline_C:ReceiveBeginPlay() end
---@param Caller UObject
function ABP_GuideSpline_C:StartGuidingMechanicVFX(Caller) end
---@param DeltaSeconds float
function ABP_GuideSpline_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_GuideSpline_C:ExecuteUbergraph_BP_GuideSpline(EntryPoint) end


