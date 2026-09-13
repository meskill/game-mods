---@meta

---@class ABP_TransfigurationMovementStyle_DefaultGround_C : ABP_TransfigurationMovementStyle_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RegionDecal9 UDecalComponent
---@field RegionDecal8 UDecalComponent
---@field RegionDecal7 UDecalComponent
---@field RegionDecal6 UDecalComponent
---@field RegionDecal5 UDecalComponent
---@field RegionDecal4 UDecalComponent
---@field RegionDecal3 UDecalComponent
---@field RegionDecal2 UDecalComponent
---@field RegionDecal1 UDecalComponent
---@field Region9 USceneComponent
---@field Region8 USceneComponent
---@field Region7 USceneComponent
---@field Region6 USceneComponent
---@field Region5 USceneComponent
---@field Region4 USceneComponent
---@field Region3 USceneComponent
---@field Region2 USceneComponent
---@field Region1 USceneComponent
---@field RegionDecals USceneComponent
---@field BeamBMesh UStaticMeshComponent
---@field BeamCMesh UStaticMeshComponent
---@field BeamDMesh UStaticMeshComponent
---@field BeamAMesh UStaticMeshComponent
---@field BeamD USceneComponent
---@field BeamC USceneComponent
---@field BeamB USceneComponent
---@field BeamA USceneComponent
---@field Decal UDecalComponent
---@field Beam4Mesh UStaticMeshComponent
---@field Beam4 USceneComponent
---@field Beam3Mesh UStaticMeshComponent
---@field Beam3 USceneComponent
---@field Beam2Mesh UStaticMeshComponent
---@field Beam2 USceneComponent
---@field Beam1Mesh UStaticMeshComponent
---@field Beam1 USceneComponent
---@field Beams USceneComponent
---@field PlaceTimeline_DistanceFromSurface_E1E02CDF45363D0D74CF43B8D0F7B6EB float
---@field PlaceTimeline__Direction_E1E02CDF45363D0D74CF43B8D0F7B6EB ETimelineDirection::Type
---@field PlaceTimeline UTimelineComponent
---@field MovementTimeline_HeightOffset_51B15FD044B4AD220542F59FD1F5B2A3 float
---@field MovementTimeline__Direction_51B15FD044B4AD220542F59FD1F5B2A3 ETimelineDirection::Type
---@field MovementTimeline UTimelineComponent
---@field LiftTimeline_DistanceFromSurface_DD302BA54D96212CC51A4C821CF49AD2 float
---@field LiftTimeline__Direction_DD302BA54D96212CC51A4C821CF49AD2 ETimelineDirection::Type
---@field LiftTimeline UTimelineComponent
---@field TransformOffset FTransform
---@field LevitationDistance float
---@field ValidBeamMaterial UMaterialInterface
---@field ErrorBeamMaterial UMaterialInterface
---@field ValidPlacementMaterial UMaterialInterface
---@field ErrorPlacementMaterial UMaterialInterface
---@field ErrorEdgeMaterial UMaterialInterface
---@field BeamLit TArray<boolean>
---@field BeamOffsetFromEdge float
---@field AllRegionDecals TArray<UDecalComponent>
---@field AllBeams TArray<UStaticMeshComponent>
---@field AllRegions TArray<USceneComponent>
---@field PlacementAnimator ABP_TransfigurationPreviewPlacementAnimator_C
local ABP_TransfigurationMovementStyle_DefaultGround_C = {}

---@param LocalExtent FVector
---@param LocalLocation FVector
function ABP_TransfigurationMovementStyle_DefaultGround_C:SetWallTransformFromBounds(LocalExtent, LocalLocation) end
---@param LocalExtent FVector
---@param LocalLocation FVector
function ABP_TransfigurationMovementStyle_DefaultGround_C:SetTransformFromBounds(LocalExtent, LocalLocation) end
---@param CanPlace boolean
ABP_TransfigurationMovementStyle_DefaultGround_C['Update Decals Visibility'] = function(self, CanPlace) end
---@param BeamComponent UPrimitiveComponent
---@param IsBlocked boolean
function ABP_TransfigurationMovementStyle_DefaultGround_C:SetBeamBlockedState(BeamComponent, IsBlocked) end
function ABP_TransfigurationMovementStyle_DefaultGround_C:UpdateBeamStates() end
function ABP_TransfigurationMovementStyle_DefaultGround_C:LiftTimeline__FinishedFunc() end
function ABP_TransfigurationMovementStyle_DefaultGround_C:LiftTimeline__UpdateFunc() end
function ABP_TransfigurationMovementStyle_DefaultGround_C:MovementTimeline__FinishedFunc() end
function ABP_TransfigurationMovementStyle_DefaultGround_C:MovementTimeline__UpdateFunc() end
function ABP_TransfigurationMovementStyle_DefaultGround_C:PlaceTimeline__FinishedFunc() end
function ABP_TransfigurationMovementStyle_DefaultGround_C:PlaceTimeline__UpdateFunc() end
function ABP_TransfigurationMovementStyle_DefaultGround_C:PlaceTimeline__Impact__EventFunc() end
function ABP_TransfigurationMovementStyle_DefaultGround_C:Lift() end
function ABP_TransfigurationMovementStyle_DefaultGround_C:Place() end
---@param DeltaSeconds float
function ABP_TransfigurationMovementStyle_DefaultGround_C:ReceiveTick(DeltaSeconds) end
---@param bCanPlace boolean
function ABP_TransfigurationMovementStyle_DefaultGround_C:CanPlace(bCanPlace) end
---@param bShow boolean
function ABP_TransfigurationMovementStyle_DefaultGround_C:ShowDecal(bShow) end
function ABP_TransfigurationMovementStyle_DefaultGround_C:ClearLitBeams() end
function ABP_TransfigurationMovementStyle_DefaultGround_C:ReceiveBeginPlay() end
---@param InLocationLocal FVector
function ABP_TransfigurationMovementStyle_DefaultGround_C:ShowBeamAtLocalLocation(InLocationLocal) end
---@param EntryPoint int32
function ABP_TransfigurationMovementStyle_DefaultGround_C:ExecuteUbergraph_BP_TransfigurationMovementStyle_DefaultGround(EntryPoint) end


