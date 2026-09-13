---@meta

---@class FEditPivotTarget
---@field TransformProxy UTransformProxy
---@field TransformGizmo UTransformGizmo
local FEditPivotTarget = {}



---@class FPerlinLayerProperties
---@field Frequency float
---@field Intensity float
local FPerlinLayerProperties = {}



---@class FPhysicsBoxData
---@field Dimensions FVector
---@field Transform FTransform
---@field Element FKShapeElem
local FPhysicsBoxData = {}



---@class FPhysicsCapsuleData
---@field Radius float
---@field Length float
---@field Transform FTransform
---@field Element FKShapeElem
local FPhysicsCapsuleData = {}



---@class FPhysicsConvexData
---@field NumVertices int32
---@field NumFaces int32
---@field Element FKShapeElem
local FPhysicsConvexData = {}



---@class FPhysicsSphereData
---@field Radius float
---@field Transform FTransform
---@field Element FKShapeElem
local FPhysicsSphereData = {}



---@class FTransformMeshesTarget
---@field TransformProxy UTransformProxy
---@field TransformGizmo UTransformGizmo
local FTransformMeshesTarget = {}



---@class UAcceptOutputProperties : UInteractiveToolPropertySet
---@field bExportSeparatedPiecesAsNewMeshAssets boolean
local UAcceptOutputProperties = {}



---@class UAddArrowPrimitiveTool : UAddPrimitiveTool
local UAddArrowPrimitiveTool = {}


---@class UAddBoxPrimitiveTool : UAddPrimitiveTool
local UAddBoxPrimitiveTool = {}


---@class UAddConePrimitiveTool : UAddPrimitiveTool
local UAddConePrimitiveTool = {}


---@class UAddCylinderPrimitiveTool : UAddPrimitiveTool
local UAddCylinderPrimitiveTool = {}


---@class UAddDiscPrimitiveTool : UAddPrimitiveTool
local UAddDiscPrimitiveTool = {}


---@class UAddPatchTool : USingleClickTool
---@field ShapeSettings UAddPatchToolProperties
---@field MaterialProperties UNewMeshMaterialProperties
---@field PreviewMesh UPreviewMesh
local UAddPatchTool = {}



---@class UAddPatchToolBuilder : UInteractiveToolBuilder
local UAddPatchToolBuilder = {}


---@class UAddPatchToolProperties : UInteractiveToolPropertySet
---@field Width float
---@field Rotation float
---@field Subdivisions int32
---@field Shift float
local UAddPatchToolProperties = {}



---@class UAddPrimitiveTool : USingleClickTool
---@field ShapeSettings UProceduralShapeToolProperties
---@field MaterialProperties UNewMeshMaterialProperties
---@field PreviewMesh UPreviewMesh
---@field LastGenerated ULastActorInfo
---@field AssetName FString
local UAddPrimitiveTool = {}



---@class UAddPrimitiveToolBuilder : UInteractiveToolBuilder
local UAddPrimitiveToolBuilder = {}


---@class UAddPuncturedDiscPrimitiveTool : UAddPrimitiveTool
local UAddPuncturedDiscPrimitiveTool = {}


---@class UAddRectanglePrimitiveTool : UAddPrimitiveTool
local UAddRectanglePrimitiveTool = {}


---@class UAddRoundedRectanglePrimitiveTool : UAddPrimitiveTool
local UAddRoundedRectanglePrimitiveTool = {}


---@class UAddSpherePrimitiveTool : UAddPrimitiveTool
local UAddSpherePrimitiveTool = {}


---@class UAddSphericalBoxPrimitiveTool : UAddPrimitiveTool
local UAddSphericalBoxPrimitiveTool = {}


---@class UAddTorusPrimitiveTool : UAddPrimitiveTool
local UAddTorusPrimitiveTool = {}


---@class UAlignObjectsTool : UMultiSelectionTool
---@field AlignProps UAlignObjectsToolProperties
local UAlignObjectsTool = {}



---@class UAlignObjectsToolBuilder : UInteractiveToolBuilder
local UAlignObjectsToolBuilder = {}


---@class UAlignObjectsToolProperties : UInteractiveToolPropertySet
---@field AlignType EAlignObjectsAlignTypes
---@field AlignTo EAlignObjectsAlignToOptions
---@field BoxPosition EAlignObjectsBoxPoint
---@field bAlignX boolean
---@field bAlignY boolean
---@field bAlignZ boolean
local UAlignObjectsToolProperties = {}



---@class UBakeMeshAttributeMapsTool : UMultiSelectionTool
---@field Settings UBakeMeshAttributeMapsToolProperties
---@field NormalMapProps UBakedNormalMapToolProperties
---@field OcclusionMapProps UBakedOcclusionMapToolProperties
---@field CurvatureMapProps UBakedCurvatureMapToolProperties
---@field Texture2DProps UBakedTexture2DImageProperties
---@field VisualizationProps UBakedOcclusionMapVisualizationProperties
---@field PreviewMaterial UMaterialInstanceDynamic
---@field BentNormalPreviewMaterial UMaterialInstanceDynamic
---@field CachedNormalMap UTexture2D
---@field CachedOcclusionMap UTexture2D
---@field CachedBentNormalMap UTexture2D
---@field CachedCurvatureMap UTexture2D
---@field CachedMeshPropertyMap UTexture2D
---@field CachedTexture2DImageMap UTexture2D
---@field EmptyNormalMap UTexture2D
---@field EmptyColorMapBlack UTexture2D
---@field EmptyColorMapWhite UTexture2D
local UBakeMeshAttributeMapsTool = {}



---@class UBakeMeshAttributeMapsToolBuilder : UInteractiveToolBuilder
local UBakeMeshAttributeMapsToolBuilder = {}


---@class UBakeMeshAttributeMapsToolProperties : UInteractiveToolPropertySet
---@field MapType EBakeMapType
---@field Resolution EBakeTextureResolution
---@field bUseWorldSpace boolean
---@field Thickness float
---@field UVLayer FString
---@field UVLayerNamesList TArray<FString>
---@field Result TArray<UTexture2D>
local UBakeMeshAttributeMapsToolProperties = {}

---@return TArray<FString>
function UBakeMeshAttributeMapsToolProperties:GetUVLayerNamesFunc() end


---@class UBakeTransformTool : UMultiSelectionTool
---@field BasicProperties UBakeTransformToolProperties
local UBakeTransformTool = {}



---@class UBakeTransformToolBuilder : UInteractiveToolBuilder
local UBakeTransformToolBuilder = {}


---@class UBakeTransformToolProperties : UInteractiveToolPropertySet
---@field bBakeRotation boolean
---@field BakeScale EBakeScaleMethod
---@field bRecenterPivot boolean
local UBakeTransformToolProperties = {}



---@class UBakedCurvatureMapToolProperties : UInteractiveToolPropertySet
---@field CurvatureType EBakedCurvatureTypeMode
---@field ColorMode EBakedCurvatureColorMode
---@field RangeMultiplier float
---@field MinRangeMultiplier float
---@field Clamping EBakedCurvatureClampMode
---@field bGaussianBlur boolean
---@field BlurRadius float
local UBakedCurvatureMapToolProperties = {}



---@class UBakedNormalMapToolProperties : UInteractiveToolPropertySet
local UBakedNormalMapToolProperties = {}


---@class UBakedOcclusionMapToolProperties : UInteractiveToolPropertySet
---@field Preview EOcclusionMapPreview
---@field OcclusionRays int32
---@field MaxDistance float
---@field SpreadAngle float
---@field Distribution EOcclusionMapDistribution
---@field bGaussianBlur boolean
---@field BlurRadius float
---@field BiasAngle float
---@field NormalSpace ENormalMapSpace
local UBakedOcclusionMapToolProperties = {}



---@class UBakedOcclusionMapVisualizationProperties : UInteractiveToolPropertySet
---@field BaseGrayLevel float
---@field OcclusionMultiplier float
local UBakedOcclusionMapVisualizationProperties = {}



---@class UBakedTexture2DImageProperties : UInteractiveToolPropertySet
---@field SourceTexture UTexture2D
---@field UVLayer int32
local UBakedTexture2DImageProperties = {}



---@class UBaseKelvinletBrushOpProps : UMeshSculptBrushOpProps
---@field Stiffness float
---@field Incompressiblity float
---@field BrushSteps int32
local UBaseKelvinletBrushOpProps = {}



---@class UBasePlaneBrushOpProps : UMeshSculptBrushOpProps
local UBasePlaneBrushOpProps = {}


---@class UBaseSmoothBrushOpProps : UMeshSculptBrushOpProps
local UBaseSmoothBrushOpProps = {}


---@class UBrushRemeshProperties : URemeshProperties
---@field bEnableRemeshing boolean
---@field TriangleSize int32
---@field PreserveDetail int32
---@field iterations int32
local UBrushRemeshProperties = {}



---@class UBrushSculptProperties : UInteractiveToolPropertySet
---@field bIsRemeshingEnabled boolean
---@field PrimaryBrushType EDynamicMeshSculptBrushType
---@field PrimaryBrushSpeed float
---@field bPreserveUVFlow boolean
---@field bFreezeTarget boolean
---@field SmoothBrushSpeed float
---@field bDetailPreservingSmooth boolean
local UBrushSculptProperties = {}



---@class UCSGMeshesTool : UBaseCreateFromSelectedTool
---@field CSGProperties UCSGMeshesToolProperties
---@field DrawnLineSet ULineSetComponent
local UCSGMeshesTool = {}



---@class UCSGMeshesToolBuilder : UBaseCreateFromSelectedToolBuilder
local UCSGMeshesToolBuilder = {}


---@class UCSGMeshesToolProperties : UInteractiveToolPropertySet
---@field Operation ECSGOperation
---@field bShowNewBoundaryEdges boolean
---@field bAttemptFixHoles boolean
---@field bOnlyUseFirstMeshMaterials boolean
local UCSGMeshesToolProperties = {}



---@class UCollisionGeometryVisualizationProperties : UInteractiveToolPropertySet
---@field LineThickness float
---@field bShowHidden boolean
---@field Color FColor
local UCollisionGeometryVisualizationProperties = {}



---@class UCombineMeshesTool : UMultiSelectionTool
---@field BasicProperties UCombineMeshesToolProperties
---@field HandleSourceProperties UOnAcceptHandleSourcesProperties
local UCombineMeshesTool = {}



---@class UCombineMeshesToolBuilder : UInteractiveToolBuilder
local UCombineMeshesToolBuilder = {}


---@class UCombineMeshesToolProperties : UInteractiveToolPropertySet
---@field bIsDuplicateMode boolean
---@field WriteOutputTo ECombineTargetType
---@field OutputName FString
---@field OutputAsset FString
local UCombineMeshesToolProperties = {}



---@class UConvertToPolygonsTool : USingleSelectionTool
---@field Settings UConvertToPolygonsToolProperties
---@field PreviewMesh UPreviewMesh
local UConvertToPolygonsTool = {}



---@class UConvertToPolygonsToolBuilder : UInteractiveToolBuilder
local UConvertToPolygonsToolBuilder = {}


---@class UConvertToPolygonsToolProperties : UInteractiveToolPropertySet
---@field ConversionMode EConvertToPolygonsMode
---@field AngleTolerance float
---@field bCalculateNormals boolean
---@field bShowGroupColors boolean
local UConvertToPolygonsToolProperties = {}



---@class UDeformMeshPolygonsTool : UMeshSurfacePointTool
---@field DynamicMeshComponent USimpleDynamicMeshComponent
---@field TransformProps UDeformMeshPolygonsTransformProperties
local UDeformMeshPolygonsTool = {}



---@class UDeformMeshPolygonsToolBuilder : UMeshSurfacePointToolBuilder
local UDeformMeshPolygonsToolBuilder = {}


---@class UDeformMeshPolygonsTransformProperties : UInteractiveToolPropertySet
---@field DeformationStrategy EGroupTopologyDeformationStrategy
---@field TransformMode EQuickTransformerMode
---@field bSelectFaces boolean
---@field bSelectEdges boolean
---@field bSelectVertices boolean
---@field bSnapToWorldGrid boolean
---@field bShowWireframe boolean
---@field SelectedWeightScheme EWeightScheme
---@field HandleWeight double
---@field bPostFixHandles boolean
local UDeformMeshPolygonsTransformProperties = {}



---@class UDiffusionSmoothProperties : UInteractiveToolPropertySet
---@field SmoothingPerStep float
---@field Steps int32
---@field bPreserveUVs boolean
local UDiffusionSmoothProperties = {}



---@class UDisplaceMeshCommonProperties : UInteractiveToolPropertySet
---@field DisplacementType EDisplaceMeshToolDisplaceType
---@field DisplaceIntensity float
---@field RandomSeed int32
---@field Subdivisions int32
---@field WeightMap FName
---@field WeightMapsList TArray<FString>
---@field bInvertWeightMap boolean
---@field bDisableSizeWarning boolean
local UDisplaceMeshCommonProperties = {}

---@return TArray<FString>
function UDisplaceMeshCommonProperties:GetWeightMapsFunc() end


---@class UDisplaceMeshDirectionalFilterProperties : UInteractiveToolPropertySet
---@field bEnableFilter boolean
---@field FilterDirection FVector
---@field FilterWidth float
local UDisplaceMeshDirectionalFilterProperties = {}



---@class UDisplaceMeshPerlinNoiseProperties : UInteractiveToolPropertySet
---@field PerlinLayerProperties TArray<FPerlinLayerProperties>
local UDisplaceMeshPerlinNoiseProperties = {}



---@class UDisplaceMeshSineWaveProperties : UInteractiveToolPropertySet
---@field SineWaveFrequency float
---@field SineWavePhaseShift float
---@field SineWaveDirection FVector
local UDisplaceMeshSineWaveProperties = {}



---@class UDisplaceMeshTextureMapProperties : UInteractiveToolPropertySet
---@field DisplacementMap UTexture2D
local UDisplaceMeshTextureMapProperties = {}



---@class UDisplaceMeshTool : USingleSelectionTool
---@field CommonProperties UDisplaceMeshCommonProperties
---@field DirectionalFilterProperties UDisplaceMeshDirectionalFilterProperties
---@field TextureMapProperties UDisplaceMeshTextureMapProperties
---@field NoiseProperties UDisplaceMeshPerlinNoiseProperties
---@field SineWaveProperties UDisplaceMeshSineWaveProperties
local UDisplaceMeshTool = {}



---@class UDisplaceMeshToolBuilder : UInteractiveToolBuilder
local UDisplaceMeshToolBuilder = {}


---@class UDrawAndRevolveTool : UInteractiveTool
---@field ControlPointsMechanic UCurveControlPointsMechanic
---@field PlaneMechanic UConstructionPlaneMechanic
---@field Settings URevolveToolProperties
---@field MaterialProperties UNewMeshMaterialProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
local UDrawAndRevolveTool = {}



---@class UDrawAndRevolveToolBuilder : UInteractiveToolBuilder
local UDrawAndRevolveToolBuilder = {}


---@class UDrawPolyPathExtrudeProperties : UInteractiveToolPropertySet
---@field Direction EDrawPolyPathExtrudeDirection
local UDrawPolyPathExtrudeProperties = {}



---@class UDrawPolyPathProperties : UInteractiveToolPropertySet
---@field OutputType EDrawPolyPathOutputMode
---@field WidthMode EDrawPolyPathWidthMode
---@field Width float
---@field HeightMode EDrawPolyPathHeightMode
---@field Height float
---@field RampStartRatio float
---@field bSnapToWorldGrid boolean
local UDrawPolyPathProperties = {}



---@class UDrawPolyPathTool : UInteractiveTool
---@field TransformProps UDrawPolyPathProperties
---@field ExtrudeProperties UDrawPolyPathExtrudeProperties
---@field MaterialProperties UNewMeshMaterialProperties
---@field PlaneMechanic UConstructionPlaneMechanic
---@field EditPreview UPolyEditPreviewMesh
---@field ExtrudeHeightMechanic UPlaneDistanceFromHitMechanic
---@field CurveDistMechanic USpatialCurveDistanceMechanic
---@field SurfacePathMechanic UCollectSurfacePathMechanic
local UDrawPolyPathTool = {}



---@class UDrawPolyPathToolBuilder : UMeshSurfacePointToolBuilder
local UDrawPolyPathToolBuilder = {}


---@class UDrawPolygonTool : UInteractiveTool
---@field PolygonProperties UDrawPolygonToolStandardProperties
---@field SnapProperties UDrawPolygonToolSnapProperties
---@field MaterialProperties UNewMeshMaterialProperties
---@field PreviewMesh UPreviewMesh
---@field PlaneTransformGizmo UTransformGizmo
---@field PlaneTransformProxy UTransformProxy
---@field HeightMechanic UPlaneDistanceFromHitMechanic
local UDrawPolygonTool = {}



---@class UDrawPolygonToolBuilder : UInteractiveToolBuilder
local UDrawPolygonToolBuilder = {}


---@class UDrawPolygonToolSnapProperties : UInteractiveToolPropertySet
---@field bEnableSnapping boolean
---@field bSnapToWorldGrid boolean
---@field bSnapToVertices boolean
---@field bSnapToEdges boolean
---@field bSnapToAngles boolean
---@field bSnapToLengths boolean
---@field SegmentLength float
---@field bHitSceneObjects boolean
---@field HitNormalOffset float
local UDrawPolygonToolSnapProperties = {}



---@class UDrawPolygonToolStandardProperties : UInteractiveToolPropertySet
---@field PolygonType EDrawPolygonDrawMode
---@field OutputMode EDrawPolygonOutputMode
---@field FeatureSizeRatio float
---@field ExtrudeHeight float
---@field Steps int32
---@field bAllowSelfIntersections boolean
---@field bShowGizmo boolean
local UDrawPolygonToolStandardProperties = {}



---@class UDynamicMeshBrushTool : UBaseBrushTool
---@field PreviewMesh UPreviewMesh
local UDynamicMeshBrushTool = {}



---@class UDynamicMeshSculptTool : UMeshSurfacePointTool
---@field BrushProperties USculptBrushProperties
---@field SculptProperties UBrushSculptProperties
---@field SculptMaxBrushProperties USculptMaxBrushProperties
---@field KelvinBrushProperties UKelvinBrushProperties
---@field RemeshProperties UBrushRemeshProperties
---@field GizmoProperties UFixedPlaneBrushProperties
---@field ViewProperties UMeshEditingViewProperties
---@field SculptToolActions UDynamicSculptToolActions
---@field BrushIndicator UBrushStampIndicator
---@field BrushIndicatorMaterial UMaterialInstanceDynamic
---@field BrushIndicatorMesh UPreviewMesh
---@field DynamicMeshComponent UOctreeDynamicMeshComponent
---@field ActiveOverrideMaterial UMaterialInstanceDynamic
---@field PlaneTransformGizmo UTransformGizmo
---@field PlaneTransformProxy UTransformProxy
local UDynamicMeshSculptTool = {}



---@class UDynamicMeshSculptToolBuilder : UMeshSurfacePointToolBuilder
local UDynamicMeshSculptToolBuilder = {}


---@class UDynamicSculptToolActions : UInteractiveToolPropertySet
local UDynamicSculptToolActions = {}

function UDynamicSculptToolActions:DiscardAttributes() end


---@class UEdgeLoopInsertionOperatorFactory : UObject
---@field Tool UEdgeLoopInsertionTool
local UEdgeLoopInsertionOperatorFactory = {}



---@class UEdgeLoopInsertionProperties : UInteractiveToolPropertySet
---@field PositionMode EEdgeLoopPositioningMode
---@field InsertionMode EEdgeLoopInsertionMode
---@field NumLoops int32
---@field ProportionOffset double
---@field DistanceOffset double
---@field bInteractive boolean
---@field bFlipOffsetDirection boolean
---@field bWireframe boolean
---@field VertexTolerance double
local UEdgeLoopInsertionProperties = {}



---@class UEdgeLoopInsertionTool : USingleSelectionTool
---@field Settings UEdgeLoopInsertionProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
local UEdgeLoopInsertionTool = {}



---@class UEdgeLoopInsertionToolBuilder : UInteractiveToolBuilder
local UEdgeLoopInsertionToolBuilder = {}


---@class UEditMeshPolygonsTool : UMeshSurfacePointTool
---@field DynamicMeshComponent USimpleDynamicMeshComponent
---@field CommonProps UPolyEditCommonProperties
---@field EditActions UEditMeshPolygonsToolActions
---@field EditActions_Triangles UEditMeshPolygonsToolActions_Triangles
---@field EditEdgeActions UEditMeshPolygonsToolEdgeActions
---@field EditEdgeActions_Triangles UEditMeshPolygonsToolEdgeActions_Triangles
---@field EditUVActions UEditMeshPolygonsToolUVActions
---@field ExtrudeProperties UPolyEditExtrudeProperties
---@field OffsetProperties UPolyEditOffsetProperties
---@field InsetProperties UPolyEditInsetProperties
---@field OutsetProperties UPolyEditOutsetProperties
---@field CutProperties UPolyEditCutProperties
---@field SetUVProperties UPolyEditSetUVProperties
---@field SelectionMechanic UPolygonSelectionMechanic
---@field MultiTransformer UMultiTransformer
---@field EditPreview UPolyEditPreviewMesh
---@field ExtrudeHeightMechanic UPlaneDistanceFromHitMechanic
---@field CurveDistMechanic USpatialCurveDistanceMechanic
---@field SurfacePathMechanic UCollectSurfacePathMechanic
local UEditMeshPolygonsTool = {}



---@class UEditMeshPolygonsToolActionPropertySet : UInteractiveToolPropertySet
local UEditMeshPolygonsToolActionPropertySet = {}


---@class UEditMeshPolygonsToolActions : UEditMeshPolygonsToolActionPropertySet
local UEditMeshPolygonsToolActions = {}

function UEditMeshPolygonsToolActions:Retriangulate() end
function UEditMeshPolygonsToolActions:RecalcNormals() end
function UEditMeshPolygonsToolActions:Outset() end
function UEditMeshPolygonsToolActions:Offset() end
function UEditMeshPolygonsToolActions:Merge() end
function UEditMeshPolygonsToolActions:Inset() end
function UEditMeshPolygonsToolActions:Flip() end
function UEditMeshPolygonsToolActions:Extrude() end
function UEditMeshPolygonsToolActions:Disconnect() end
function UEditMeshPolygonsToolActions:DELETE() end
function UEditMeshPolygonsToolActions:Decompose() end
function UEditMeshPolygonsToolActions:CutFaces() end


---@class UEditMeshPolygonsToolActions_Triangles : UEditMeshPolygonsToolActionPropertySet
local UEditMeshPolygonsToolActions_Triangles = {}

function UEditMeshPolygonsToolActions_Triangles:RecalcNormals() end
function UEditMeshPolygonsToolActions_Triangles:Poke() end
function UEditMeshPolygonsToolActions_Triangles:Outset() end
function UEditMeshPolygonsToolActions_Triangles:Offset() end
function UEditMeshPolygonsToolActions_Triangles:Inset() end
function UEditMeshPolygonsToolActions_Triangles:Flip() end
function UEditMeshPolygonsToolActions_Triangles:Extrude() end
function UEditMeshPolygonsToolActions_Triangles:Disconnect() end
function UEditMeshPolygonsToolActions_Triangles:DELETE() end
function UEditMeshPolygonsToolActions_Triangles:CutFaces() end


---@class UEditMeshPolygonsToolBuilder : UMeshSurfacePointToolBuilder
local UEditMeshPolygonsToolBuilder = {}


---@class UEditMeshPolygonsToolEdgeActions : UEditMeshPolygonsToolActionPropertySet
local UEditMeshPolygonsToolEdgeActions = {}

function UEditMeshPolygonsToolEdgeActions:Weld() end
function UEditMeshPolygonsToolEdgeActions:Straighten() end
function UEditMeshPolygonsToolEdgeActions:FillHole() end


---@class UEditMeshPolygonsToolEdgeActions_Triangles : UEditMeshPolygonsToolActionPropertySet
local UEditMeshPolygonsToolEdgeActions_Triangles = {}

function UEditMeshPolygonsToolEdgeActions_Triangles:Weld() end
function UEditMeshPolygonsToolEdgeActions_Triangles:Split() end
function UEditMeshPolygonsToolEdgeActions_Triangles:Flip() end
function UEditMeshPolygonsToolEdgeActions_Triangles:FillHole() end
function UEditMeshPolygonsToolEdgeActions_Triangles:Collapse() end


---@class UEditMeshPolygonsToolUVActions : UEditMeshPolygonsToolActionPropertySet
local UEditMeshPolygonsToolUVActions = {}

function UEditMeshPolygonsToolUVActions:PlanarProjection() end


---@class UEditNormalsAdvancedProperties : UInteractiveToolPropertySet
local UEditNormalsAdvancedProperties = {}


---@class UEditNormalsOperatorFactory : UObject
---@field Tool UEditNormalsTool
local UEditNormalsOperatorFactory = {}



---@class UEditNormalsTool : UMultiSelectionTool
---@field BasicProperties UEditNormalsToolProperties
---@field AdvancedProperties UEditNormalsAdvancedProperties
---@field Previews TArray<UMeshOpPreviewWithBackgroundCompute>
local UEditNormalsTool = {}



---@class UEditNormalsToolBuilder : UInteractiveToolBuilder
local UEditNormalsToolBuilder = {}


---@class UEditNormalsToolProperties : UInteractiveToolPropertySet
---@field bRecomputeNormals boolean
---@field NormalCalculationMethod ENormalCalculationMethod
---@field bFixInconsistentNormals boolean
---@field bInvertNormals boolean
---@field SplitNormalMethod ESplitNormalMethod
---@field SharpEdgeAngleThreshold float
---@field bAllowSharpVertices boolean
local UEditNormalsToolProperties = {}



---@class UEditPivotTool : UMultiSelectionTool
---@field TransformProps UEditPivotToolProperties
---@field EditPivotActions UEditPivotToolActionPropertySet
---@field ActiveGizmos TArray<FEditPivotTarget>
local UEditPivotTool = {}



---@class UEditPivotToolActionPropertySet : UInteractiveToolPropertySet
---@field bUseWorldBox boolean
local UEditPivotToolActionPropertySet = {}

function UEditPivotToolActionPropertySet:Top() end
function UEditPivotToolActionPropertySet:Right() end
function UEditPivotToolActionPropertySet:Left() end
function UEditPivotToolActionPropertySet:Front() end
function UEditPivotToolActionPropertySet:Center() end
function UEditPivotToolActionPropertySet:Bottom() end
function UEditPivotToolActionPropertySet:Back() end


---@class UEditPivotToolBuilder : UInteractiveToolBuilder
local UEditPivotToolBuilder = {}


---@class UEditPivotToolProperties : UInteractiveToolPropertySet
---@field bEnableSnapDragging boolean
---@field RotationMode EEditPivotSnapDragRotationMode
local UEditPivotToolProperties = {}



---@class UEditUVIslandsTool : UMeshSurfacePointTool
---@field MaterialSettings UExistingMeshMaterialProperties
---@field CheckerMaterial UMaterialInstanceDynamic
---@field DynamicMeshComponent USimpleDynamicMeshComponent
---@field SelectionMechanic UPolygonSelectionMechanic
---@field MultiTransformer UMultiTransformer
local UEditUVIslandsTool = {}



---@class UEditUVIslandsToolBuilder : UMeshSurfacePointToolBuilder
local UEditUVIslandsToolBuilder = {}


---@class UEraseBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
local UEraseBrushOpProps = {}



---@class UExistingMeshMaterialProperties : UInteractiveToolPropertySet
---@field MaterialMode ESetMeshMaterialMode
---@field CheckerDensity float
---@field OverrideMaterial UMaterialInterface
---@field CheckerMaterial UMaterialInstanceDynamic
local UExistingMeshMaterialProperties = {}



---@class UExtractCollisionGeometryTool : USingleSelectionTool
---@field VizSettings UCollisionGeometryVisualizationProperties
---@field ObjectProps UPhysicsObjectToolPropertySet
---@field PreviewElements UPreviewGeometry
---@field PreviewMesh UPreviewMesh
local UExtractCollisionGeometryTool = {}



---@class UExtractCollisionGeometryToolBuilder : UInteractiveToolBuilder
local UExtractCollisionGeometryToolBuilder = {}


---@class UFixedPlaneBrushOpProps : UBasePlaneBrushOpProps
---@field Strength float
---@field Falloff float
---@field Depth float
---@field WhichSide EPlaneBrushSideMode
local UFixedPlaneBrushOpProps = {}



---@class UFixedPlaneBrushProperties : UInteractiveToolPropertySet
---@field bPropertySetEnabled boolean
---@field bShowGizmo boolean
---@field bSnapToGrid boolean
---@field Position FVector
---@field Rotation FQuat
local UFixedPlaneBrushProperties = {}



---@class UFlattenBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
---@field Depth float
---@field WhichSide EPlaneBrushSideMode
local UFlattenBrushOpProps = {}



---@class UGroupEdgeInsertionOperatorFactory : UObject
---@field Tool UGroupEdgeInsertionTool
local UGroupEdgeInsertionOperatorFactory = {}



---@class UGroupEdgeInsertionProperties : UInteractiveToolPropertySet
---@field InsertionMode EGroupEdgeInsertionMode
---@field bWireframe boolean
---@field VertexTolerance double
local UGroupEdgeInsertionProperties = {}



---@class UGroupEdgeInsertionTool : USingleSelectionTool
---@field Settings UGroupEdgeInsertionProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
local UGroupEdgeInsertionTool = {}



---@class UGroupEdgeInsertionToolBuilder : UInteractiveToolBuilder
local UGroupEdgeInsertionToolBuilder = {}


---@class UHoleFillOperatorFactory : UObject
---@field FillTool UHoleFillTool
local UHoleFillOperatorFactory = {}



---@class UHoleFillStatisticsProperties : UInteractiveToolPropertySet
---@field InitialHoles FString
---@field SelectedHoles FString
---@field SuccessfulFills FString
---@field FailedFills FString
---@field RemainingHoles FString
local UHoleFillStatisticsProperties = {}



---@class UHoleFillTool : USingleSelectionTool
---@field SmoothHoleFillProperties USmoothHoleFillProperties
---@field Properties UHoleFillToolProperties
---@field Actions UHoleFillToolActions
---@field Statistics UHoleFillStatisticsProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
---@field SelectionMechanic UPolygonSelectionMechanic
local UHoleFillTool = {}



---@class UHoleFillToolActions : UInteractiveToolPropertySet
local UHoleFillToolActions = {}

function UHoleFillToolActions:SelectAll() end
function UHoleFillToolActions:Clear() end


---@class UHoleFillToolBuilder : UInteractiveToolBuilder
local UHoleFillToolBuilder = {}


---@class UHoleFillToolProperties : UInteractiveToolPropertySet
---@field FillType EHoleFillOpFillType
---@field bRemoveIsolatedTriangles boolean
local UHoleFillToolProperties = {}



---@class UImplicitOffsetProperties : UInteractiveToolPropertySet
---@field Smoothness float
---@field bPreserveUVs boolean
local UImplicitOffsetProperties = {}



---@class UImplicitSmoothProperties : UInteractiveToolPropertySet
---@field SmoothSpeed float
---@field Smoothness float
---@field bPreserveUVs boolean
---@field VolumeCorrection float
local UImplicitSmoothProperties = {}



---@class UInflateBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
local UInflateBrushOpProps = {}



---@class UIterativeOffsetProperties : UInteractiveToolPropertySet
---@field Steps int32
---@field bOffsetBoundaries boolean
---@field SmoothingPerStep float
---@field bReprojectSmooth boolean
local UIterativeOffsetProperties = {}



---@class UIterativeSmoothProperties : UInteractiveToolPropertySet
---@field SmoothingPerStep float
---@field Steps int32
---@field bSmoothBoundary boolean
local UIterativeSmoothProperties = {}



---@class UKelvinBrushProperties : UInteractiveToolPropertySet
---@field FalloffDistance float
---@field Stiffness float
---@field Incompressiblity float
---@field BrushSteps int32
local UKelvinBrushProperties = {}



---@class ULastActorInfo : UObject
---@field Actor AActor
---@field StaticMesh UStaticMesh
---@field ShapeSettings UProceduralShapeToolProperties
---@field MaterialProperties UNewMeshMaterialProperties
local ULastActorInfo = {}



---@class UMeshAnalysisProperties : UInteractiveToolPropertySet
---@field SurfaceArea FString
---@field Volume FString
local UMeshAnalysisProperties = {}



---@class UMeshAttributePaintEditActions : UInteractiveToolPropertySet
local UMeshAttributePaintEditActions = {}


---@class UMeshAttributePaintTool : UDynamicMeshBrushTool
---@field AttribProps UMeshAttributePaintToolProperties
local UMeshAttributePaintTool = {}



---@class UMeshAttributePaintToolBuilder : UMeshSurfacePointToolBuilder
local UMeshAttributePaintToolBuilder = {}


---@class UMeshAttributePaintToolProperties : UInteractiveToolPropertySet
---@field Attributes TArray<FName>
---@field SelectedAttribute int32
---@field AttributeName FString
local UMeshAttributePaintToolProperties = {}



---@class UMeshBoundaryToolBase : USingleSelectionTool
---@field SelectionMechanic UPolygonSelectionMechanic
---@field LoopSelectClickBehavior USingleClickInputBehavior
local UMeshBoundaryToolBase = {}



---@class UMeshConstraintProperties : UInteractiveToolPropertySet
---@field bPreserveSharpEdges boolean
---@field MeshBoundaryConstraint EMeshBoundaryConstraint
---@field GroupBoundaryConstraint EGroupBoundaryConstraint
---@field MaterialBoundaryConstraint EMaterialBoundaryConstraint
---@field bPreventNormalFlips boolean
local UMeshConstraintProperties = {}



---@class UMeshEditingViewProperties : UInteractiveToolPropertySet
---@field bShowWireframe boolean
---@field MaterialMode EMeshEditingMaterialModes
---@field bFlatShading boolean
---@field Color FLinearColor
---@field Image UTexture2D
local UMeshEditingViewProperties = {}



---@class UMeshInspectorProperties : UInteractiveToolPropertySet
---@field bWireframe boolean
---@field bBoundaryEdges boolean
---@field bBowtieVertices boolean
---@field bPolygonBorders boolean
---@field bUVSeams boolean
---@field bUVBowties boolean
---@field bNormalSeams boolean
---@field bNormalVectors boolean
---@field bTangentVectors boolean
---@field NormalLength float
---@field TangentLength float
local UMeshInspectorProperties = {}



---@class UMeshInspectorTool : USingleSelectionTool
---@field Settings UMeshInspectorProperties
---@field MaterialSettings UExistingMeshMaterialProperties
---@field PreviewMesh UPreviewMesh
---@field DrawnLineSet ULineSetComponent
---@field DefaultMaterial UMaterialInterface
local UMeshInspectorTool = {}



---@class UMeshInspectorToolBuilder : UInteractiveToolBuilder
local UMeshInspectorToolBuilder = {}


---@class UMeshSculptBrushOpProps : UInteractiveToolPropertySet
local UMeshSculptBrushOpProps = {}


---@class UMeshSculptToolBase : UMeshSurfacePointTool
---@field BrushProperties USculptBrushProperties
---@field GizmoProperties UWorkPlaneProperties
---@field BrushOpPropSets TMap<int32, UMeshSculptBrushOpProps>
---@field SecondaryBrushOpPropSets TMap<int32, UMeshSculptBrushOpProps>
---@field ViewProperties UMeshEditingViewProperties
---@field ActiveOverrideMaterial UMaterialInstanceDynamic
---@field BrushIndicator UBrushStampIndicator
---@field BrushIndicatorMaterial UMaterialInstanceDynamic
---@field BrushIndicatorMesh UPreviewMesh
---@field PlaneTransformGizmo UTransformGizmo
---@field PlaneTransformProxy UTransformProxy
local UMeshSculptToolBase = {}



---@class UMeshSelectionEditActions : UMeshSelectionToolActionPropertySet
local UMeshSelectionEditActions = {}

function UMeshSelectionEditActions:Shrink() end
function UMeshSelectionEditActions:SelectLargestComponentByTriCount() end
function UMeshSelectionEditActions:SelectLargestComponentByArea() end
function UMeshSelectionEditActions:SelectAll() end
function UMeshSelectionEditActions:OptimizeSelection() end
function UMeshSelectionEditActions:Invert() end
function UMeshSelectionEditActions:Grow() end
function UMeshSelectionEditActions:ExpandToConnected() end
function UMeshSelectionEditActions:Clear() end


---@class UMeshSelectionMeshEditActions : UMeshSelectionToolActionPropertySet
local UMeshSelectionMeshEditActions = {}

function UMeshSelectionMeshEditActions:SeparateTriangles() end
function UMeshSelectionMeshEditActions:FlipNormals() end
function UMeshSelectionMeshEditActions:DisconnectTriangles() end
function UMeshSelectionMeshEditActions:DeleteTriangles() end
function UMeshSelectionMeshEditActions:CreatePolygroup() end


---@class UMeshSelectionTool : UDynamicMeshBrushTool
---@field SelectionProps UMeshSelectionToolProperties
---@field SelectionActions UMeshSelectionEditActions
---@field EditActions UMeshSelectionToolActionPropertySet
---@field Selection UMeshSelectionSet
---@field SpawnedActors TArray<AActor>
local UMeshSelectionTool = {}



---@class UMeshSelectionToolActionPropertySet : UInteractiveToolPropertySet
local UMeshSelectionToolActionPropertySet = {}


---@class UMeshSelectionToolBuilder : UMeshSurfacePointToolBuilder
local UMeshSelectionToolBuilder = {}


---@class UMeshSelectionToolProperties : UInteractiveToolPropertySet
---@field SelectionMode EMeshSelectionToolPrimaryMode
---@field AngleTolerance float
---@field bHitBackFaces boolean
---@field bShowWireframe boolean
---@field FaceColorMode EMeshFacesColorMode
local UMeshSelectionToolProperties = {}



---@class UMeshSpaceDeformerTool : UMeshSurfacePointTool
---@field SelectedOperationType ENonlinearOperationType
---@field UpperBoundsInterval float
---@field LowerBoundsInterval float
---@field ModifierPercent float
---@field bSnapToWorldGrid boolean
---@field StateTarget UGizmoTransformChangeStateTarget
---@field Preview UMeshOpPreviewWithBackgroundCompute
---@field GizmoCenter FVector
---@field GizmoOrientation FQuat
---@field IntervalGizmo UIntervalGizmo
---@field TransformGizmo UTransformGizmo
---@field TransformProxy UTransformProxy
---@field UpIntervalSource UGizmoLocalFloatParameterSource
---@field DownIntervalSource UGizmoLocalFloatParameterSource
---@field ForwardIntervalSource UGizmoLocalFloatParameterSource
local UMeshSpaceDeformerTool = {}



---@class UMeshSpaceDeformerToolBuilder : UMeshSurfacePointToolBuilder
local UMeshSpaceDeformerToolBuilder = {}


---@class UMeshStatisticsProperties : UInteractiveToolPropertySet
---@field Mesh FString
---@field UV FString
---@field Attributes FString
local UMeshStatisticsProperties = {}



---@class UMeshVertexSculptTool : UMeshSculptToolBase
---@field SculptProperties UVertexBrushSculptProperties
---@field DynamicMeshComponent USimpleDynamicMeshComponent
local UMeshVertexSculptTool = {}



---@class UMeshVertexSculptToolBuilder : UMeshSurfacePointToolBuilder
local UMeshVertexSculptToolBuilder = {}


---@class UMirrorOperatorFactory : UObject
---@field MirrorTool UMirrorTool
local UMirrorOperatorFactory = {}



---@class UMirrorTool : UMultiSelectionTool
---@field Settings UMirrorToolProperties
---@field ToolActions UMirrorToolActionPropertySet
---@field MeshesToMirror TArray<UDynamicMeshReplacementChangeTarget>
---@field Previews TArray<UMeshOpPreviewWithBackgroundCompute>
---@field PlaneMechanic UConstructionPlaneMechanic
local UMirrorTool = {}



---@class UMirrorToolActionPropertySet : UInteractiveToolPropertySet
local UMirrorToolActionPropertySet = {}

function UMirrorToolActionPropertySet:Up() end
function UMirrorToolActionPropertySet:ShiftToCenter() end
function UMirrorToolActionPropertySet:Right() end
function UMirrorToolActionPropertySet:Left() end
function UMirrorToolActionPropertySet:Forward() end
function UMirrorToolActionPropertySet:Down() end
function UMirrorToolActionPropertySet:Backward() end


---@class UMirrorToolBuilder : UInteractiveToolBuilder
local UMirrorToolBuilder = {}


---@class UMirrorToolProperties : UInteractiveToolPropertySet
---@field OperationMode EMirrorOperationMode
---@field bCropAlongMirrorPlaneFirst boolean
---@field bWeldVerticesOnMirrorPlane boolean
---@field bAllowBowtieVertexCreation boolean
---@field bSnapToWorldGrid boolean
---@field CtrlClickBehavior EMirrorCtrlClickBehavior
---@field bButtonsOnlyChangeOrientation boolean
---@field bShowPreview boolean
---@field SaveMode EMirrorSaveMode
local UMirrorToolProperties = {}



---@class UMoveBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
---@field Depth float
local UMoveBrushOpProps = {}



---@class UNewMeshMaterialProperties : UInteractiveToolPropertySet
---@field Material TWeakObjectPtr<UMaterialInterface>
---@field UVScale float
---@field bWorldSpaceUVScale boolean
---@field bWireframe boolean
---@field bShowExtendedOptions boolean
local UNewMeshMaterialProperties = {}



---@class UOffsetMeshTool : UBaseMeshProcessingTool
---@field OffsetProperties UOffsetMeshToolProperties
---@field IterativeProperties UIterativeOffsetProperties
---@field ImplicitProperties UImplicitOffsetProperties
---@field WeightMapProperties UOffsetWeightMapSetProperties
local UOffsetMeshTool = {}



---@class UOffsetMeshToolBuilder : UBaseMeshProcessingToolBuilder
local UOffsetMeshToolBuilder = {}


---@class UOffsetMeshToolProperties : UInteractiveToolPropertySet
---@field OffsetType EOffsetMeshToolOffsetType
---@field Distance float
---@field bCreateShell boolean
local UOffsetMeshToolProperties = {}



---@class UOffsetWeightMapSetProperties : UWeightMapSetProperties
---@field MinDistance float
local UOffsetWeightMapSetProperties = {}



---@class UPhysicsInspectorTool : UMultiSelectionTool
---@field VizSettings UCollisionGeometryVisualizationProperties
---@field ObjectData TArray<UPhysicsObjectToolPropertySet>
---@field LineMaterial UMaterialInterface
---@field PreviewElements TArray<UPreviewGeometry>
local UPhysicsInspectorTool = {}



---@class UPhysicsInspectorToolBuilder : UInteractiveToolBuilder
local UPhysicsInspectorToolBuilder = {}


---@class UPhysicsObjectToolPropertySet : UInteractiveToolPropertySet
---@field ObjectName FString
---@field CollisionType ECollisionGeometryMode
---@field Spheres TArray<FPhysicsSphereData>
---@field Boxes TArray<FPhysicsBoxData>
---@field Capsules TArray<FPhysicsCapsuleData>
---@field Convexes TArray<FPhysicsConvexData>
local UPhysicsObjectToolPropertySet = {}



---@class UPinchBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
---@field Depth float
---@field bPerpDamping boolean
local UPinchBrushOpProps = {}



---@class UPlaneBrushOpProps : UBasePlaneBrushOpProps
---@field Strength float
---@field Falloff float
---@field Depth float
---@field WhichSide EPlaneBrushSideMode
local UPlaneBrushOpProps = {}



---@class UPlaneCutOperatorFactory : UObject
---@field CutTool UPlaneCutTool
local UPlaneCutOperatorFactory = {}



---@class UPlaneCutTool : UMultiSelectionTool
---@field BasicProperties UPlaneCutToolProperties
---@field AcceptProperties UAcceptOutputProperties
---@field CutPlaneOrigin FVector
---@field CutPlaneOrientation FQuat
---@field Previews TArray<UMeshOpPreviewWithBackgroundCompute>
---@field MeshesToCut TArray<UDynamicMeshReplacementChangeTarget>
---@field PlaneTransformGizmo UTransformGizmo
---@field PlaneTransformProxy UTransformProxy
local UPlaneCutTool = {}

function UPlaneCutTool:Cut() end


---@class UPlaneCutToolBuilder : UInteractiveToolBuilder
local UPlaneCutToolBuilder = {}


---@class UPlaneCutToolProperties : UInteractiveToolPropertySet
---@field bSnapToWorldGrid boolean
---@field bKeepBothHalves boolean
---@field SpacingBetweenHalves float
---@field bFillCutHole boolean
---@field bShowPreview boolean
---@field bFillSpans boolean
local UPlaneCutToolProperties = {}



---@class UPolyEditCommonProperties : UInteractiveToolPropertySet
---@field bShowWireframe boolean
---@field LocalFrameMode ELocalFrameMode
---@field bLockRotation boolean
---@field bSnapToWorldGrid boolean
local UPolyEditCommonProperties = {}



---@class UPolyEditCutProperties : UInteractiveToolPropertySet
---@field Orientation EPolyEditCutPlaneOrientation
---@field bSnapToVertices boolean
local UPolyEditCutProperties = {}



---@class UPolyEditExtrudeProperties : UInteractiveToolPropertySet
---@field Direction EPolyEditExtrudeDirection
---@field bShellsToSolids boolean
local UPolyEditExtrudeProperties = {}



---@class UPolyEditInsetProperties : UInteractiveToolPropertySet
---@field bReproject boolean
---@field Softness float
---@field bBoundaryOnly boolean
---@field AreaScale float
local UPolyEditInsetProperties = {}



---@class UPolyEditOffsetProperties : UInteractiveToolPropertySet
---@field bUseFaceNormals boolean
local UPolyEditOffsetProperties = {}



---@class UPolyEditOutsetProperties : UInteractiveToolPropertySet
---@field Softness float
---@field bBoundaryOnly boolean
---@field AreaScale float
local UPolyEditOutsetProperties = {}



---@class UPolyEditSetUVProperties : UInteractiveToolPropertySet
---@field bShowMaterial boolean
local UPolyEditSetUVProperties = {}



---@class UPositionPlaneGizmo : UInteractiveGizmo
---@field CenterBallShape UPreviewMesh
---@field CenterBallMaterial UMaterialInstance
local UPositionPlaneGizmo = {}



---@class UPositionPlaneGizmoBuilder : UInteractiveGizmoBuilder
local UPositionPlaneGizmoBuilder = {}


---@class UPositionPlaneOnSceneInputBehavior : UAnyButtonInputBehavior
local UPositionPlaneOnSceneInputBehavior = {}


---@class UProceduralArrowToolProperties : UProceduralShapeToolProperties
---@field ShaftRadius float
---@field ShaftHeight float
---@field HeadRadius float
---@field HeadHeight float
---@field RadialSlices int32
---@field TotalSubdivisions int32
local UProceduralArrowToolProperties = {}



---@class UProceduralBoxToolProperties : UProceduralRectangleToolProperties
---@field Height float
---@field HeightSubdivisions int32
local UProceduralBoxToolProperties = {}



---@class UProceduralConeToolProperties : UProceduralShapeToolProperties
---@field Radius float
---@field Height float
---@field RadialSlices int32
---@field HeightSubdivisions int32
local UProceduralConeToolProperties = {}



---@class UProceduralCylinderToolProperties : UProceduralShapeToolProperties
---@field Radius float
---@field Height float
---@field RadialSlices int32
---@field HeightSubdivisions int32
local UProceduralCylinderToolProperties = {}



---@class UProceduralDiscToolProperties : UProceduralShapeToolProperties
---@field Radius float
---@field RadialSlices int32
---@field RadialSubdivisions int32
local UProceduralDiscToolProperties = {}



---@class UProceduralPuncturedDiscToolProperties : UProceduralDiscToolProperties
---@field HoleRadius float
local UProceduralPuncturedDiscToolProperties = {}



---@class UProceduralRectangleToolProperties : UProceduralShapeToolProperties
---@field Width float
---@field Depth float
---@field WidthSubdivisions int32
---@field DepthSubdivisions int32
local UProceduralRectangleToolProperties = {}



---@class UProceduralRoundedRectangleToolProperties : UProceduralRectangleToolProperties
---@field CornerRadius float
---@field CornerSlices int32
local UProceduralRoundedRectangleToolProperties = {}



---@class UProceduralShapeToolProperties : UInteractiveToolPropertySet
---@field bInstanceIfPossible boolean
---@field PolygroupMode EMakeMeshPolygroupMode
---@field PlaceMode EMakeMeshPlacementType
---@field bSnapToGrid boolean
---@field PivotLocation EMakeMeshPivotLocation
---@field Rotation float
---@field bAlignShapeToPlacementSurface boolean
local UProceduralShapeToolProperties = {}



---@class UProceduralSphereToolProperties : UProceduralShapeToolProperties
---@field Radius float
---@field LatitudeSlices int32
---@field LongitudeSlices int32
local UProceduralSphereToolProperties = {}



---@class UProceduralSphericalBoxToolProperties : UProceduralShapeToolProperties
---@field Radius float
---@field Subdivisions int32
local UProceduralSphericalBoxToolProperties = {}



---@class UProceduralTorusToolProperties : UProceduralShapeToolProperties
---@field MajorRadius float
---@field MinorRadius float
---@field TubeSlices int32
---@field CrossSectionSlices int32
local UProceduralTorusToolProperties = {}



---@class UProjectToTargetTool : URemeshMeshTool
local UProjectToTargetTool = {}


---@class UProjectToTargetToolBuilder : UInteractiveToolBuilder
local UProjectToTargetToolBuilder = {}


---@class UProjectToTargetToolProperties : URemeshMeshToolProperties
local UProjectToTargetToolProperties = {}


---@class UPullKelvinletBrushOpProps : UBaseKelvinletBrushOpProps
---@field Falloff float
---@field Depth float
local UPullKelvinletBrushOpProps = {}



---@class URemeshMeshTool : UMultiSelectionTool
---@field BasicProperties URemeshMeshToolProperties
---@field MeshStatisticsProperties UMeshStatisticsProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
local URemeshMeshTool = {}



---@class URemeshMeshToolBuilder : UInteractiveToolBuilder
local URemeshMeshToolBuilder = {}


---@class URemeshMeshToolProperties : URemeshProperties
---@field TargetTriangleCount int32
---@field SmoothingType ERemeshSmoothingType
---@field bDiscardAttributes boolean
---@field bShowWireframe boolean
---@field bShowGroupColors boolean
---@field RemeshType ERemeshType
---@field RemeshIterations int32
---@field bUseTargetEdgeLength boolean
---@field TargetEdgeLength float
---@field bReproject boolean
local URemeshMeshToolProperties = {}



---@class URemeshProperties : UMeshConstraintProperties
---@field SmoothingStrength float
---@field bFlips boolean
---@field bSplits boolean
---@field bCollapses boolean
local URemeshProperties = {}



---@class URemoveOccludedTrianglesAdvancedProperties : UInteractiveToolPropertySet
local URemoveOccludedTrianglesAdvancedProperties = {}


---@class URemoveOccludedTrianglesOperatorFactory : UObject
---@field Tool URemoveOccludedTrianglesTool
local URemoveOccludedTrianglesOperatorFactory = {}



---@class URemoveOccludedTrianglesTool : UMultiSelectionTool
---@field BasicProperties URemoveOccludedTrianglesToolProperties
---@field AdvancedProperties URemoveOccludedTrianglesAdvancedProperties
---@field Previews TArray<UMeshOpPreviewWithBackgroundCompute>
---@field PreviewCopies TArray<UPreviewMesh>
local URemoveOccludedTrianglesTool = {}



---@class URemoveOccludedTrianglesToolBuilder : UInteractiveToolBuilder
local URemoveOccludedTrianglesToolBuilder = {}


---@class URemoveOccludedTrianglesToolProperties : UInteractiveToolPropertySet
---@field OcclusionTestMethod EOcclusionCalculationUIMode
---@field TriangleSampling EOcclusionTriangleSamplingUIMode
---@field WindingIsoValue double
---@field AddRandomRays int32
---@field AddTriangleSamples int32
---@field bOnlySelfOcclude boolean
local URemoveOccludedTrianglesToolProperties = {}



---@class URevolveBoundaryOperatorFactory : UObject
---@field RevolveBoundaryTool URevolveBoundaryTool
local URevolveBoundaryOperatorFactory = {}



---@class URevolveBoundaryTool : UMeshBoundaryToolBase
---@field Settings URevolveBoundaryToolProperties
---@field MaterialProperties UNewMeshMaterialProperties
---@field PlaneMechanic UConstructionPlaneMechanic
---@field Preview UMeshOpPreviewWithBackgroundCompute
local URevolveBoundaryTool = {}



---@class URevolveBoundaryToolBuilder : UInteractiveToolBuilder
local URevolveBoundaryToolBuilder = {}


---@class URevolveBoundaryToolProperties : URevolveProperties
---@field bDisplayOriginalMesh boolean
---@field AxisOrigin FVector
---@field AxisYaw float
---@field AxisPitch float
---@field bSnapToWorldGrid boolean
local URevolveBoundaryToolProperties = {}



---@class URevolveOperatorFactory : UObject
---@field RevolveTool UDrawAndRevolveTool
local URevolveOperatorFactory = {}



---@class URevolveProperties : UInteractiveToolPropertySet
---@field RevolutionDegrees double
---@field RevolutionDegreesOffset double
---@field Steps int32
---@field bReverseRevolutionDirection boolean
---@field bFlipMesh boolean
---@field bProfileIsCrossSectionOfSide boolean
---@field PolygroupMode ERevolvePropertiesPolygroupMode
---@field QuadSplitMode ERevolvePropertiesQuadSplit
---@field DiagonalProportionTolerance double
---@field CapFillMode ERevolvePropertiesCapFillMode
---@field bWeldFullRevolution boolean
---@field bWeldVertsOnAxis boolean
---@field AxisWeldTolerance double
---@field bSharpNormals boolean
---@field SharpNormalAngleTolerance double
---@field bFlipVs boolean
---@field bUVsSkipFullyWeldedEdges boolean
local URevolveProperties = {}



---@class URevolveToolProperties : URevolveProperties
---@field bConnectOpenProfileToAxis boolean
---@field bSnapToWorldGrid boolean
---@field DrawPlaneOrigin FVector
---@field DrawPlaneOrientation FRotator
---@field bEnableSnapping boolean
---@field bAllowedToEditDrawPlane boolean
local URevolveToolProperties = {}



---@class UScaleKelvinletBrushOpProps : UBaseKelvinletBrushOpProps
---@field Strength float
---@field Falloff float
local UScaleKelvinletBrushOpProps = {}



---@class USculptBrushProperties : UBrushBaseProperties
---@field Depth float
---@field bHitBackFaces boolean
---@field Lazyness float
---@field bShowPerBrushProps boolean
local USculptBrushProperties = {}



---@class USculptMaxBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
---@field MaxHeight float
---@field bUseFixedHeight boolean
---@field FixedHeight float
local USculptMaxBrushOpProps = {}



---@class USculptMaxBrushProperties : UInteractiveToolPropertySet
---@field MaxHeight float
---@field bFreezeCurrentHeight boolean
local USculptMaxBrushProperties = {}



---@class USeamSculptTool : UDynamicMeshBrushTool
---@field Settings USeamSculptToolProperties
---@field PreviewGeom UPreviewGeometry
local USeamSculptTool = {}



---@class USeamSculptToolBuilder : UMeshSurfacePointToolBuilder
local USeamSculptToolBuilder = {}


---@class USeamSculptToolProperties : UInteractiveToolPropertySet
---@field bShowWireframe boolean
---@field bHitBackFaces boolean
local USeamSculptToolProperties = {}



---@class USecondarySmoothBrushOpProps : UBaseSmoothBrushOpProps
---@field Strength float
---@field Falloff float
---@field bPreserveUVFlow boolean
local USecondarySmoothBrushOpProps = {}



---@class USelfUnionMeshesTool : UBaseCreateFromSelectedTool
---@field Properties USelfUnionMeshesToolProperties
---@field DrawnLineSet ULineSetComponent
local USelfUnionMeshesTool = {}



---@class USelfUnionMeshesToolBuilder : UBaseCreateFromSelectedToolBuilder
local USelfUnionMeshesToolBuilder = {}


---@class USelfUnionMeshesToolProperties : UInteractiveToolPropertySet
---@field bAttemptFixHoles boolean
---@field bShowNewBoundaryEdges boolean
---@field bTrimFlaps boolean
---@field WindingNumberThreshold double
---@field bOnlyUseFirstMeshMaterials boolean
local USelfUnionMeshesToolProperties = {}



---@class USetCollisionGeometryTool : UMultiSelectionTool
---@field Settings USetCollisionGeometryToolProperties
---@field VizSettings UCollisionGeometryVisualizationProperties
---@field CollisionProps UPhysicsObjectToolPropertySet
---@field LineMaterial UMaterialInterface
---@field PreviewGeom UPreviewGeometry
local USetCollisionGeometryTool = {}



---@class USetCollisionGeometryToolBuilder : UInteractiveToolBuilder
local USetCollisionGeometryToolBuilder = {}


---@class USetCollisionGeometryToolProperties : UInteractiveToolPropertySet
---@field GeometryType ECollisionGeometryType
---@field InputMode ESetCollisionGeometryInputMode
---@field bUseWorldSpace boolean
---@field bRemoveContained boolean
---@field bEnableMaxCount boolean
---@field MaxCount int32
---@field MinThickness float
---@field bDetectBoxes boolean
---@field bDetectSpheres boolean
---@field bDetectCapsules boolean
---@field bSimplifyHulls boolean
---@field HullTargetFaceCount int32
---@field bSimplifyPolygons boolean
---@field HullTolerance float
---@field SweepAxis EProjectedHullAxis
---@field bAppendToExisting boolean
---@field SetCollisionType ECollisionGeometryMode
local USetCollisionGeometryToolProperties = {}



---@class USharpPullKelvinletBrushOpProps : UBaseKelvinletBrushOpProps
---@field Falloff float
---@field Depth float
local USharpPullKelvinletBrushOpProps = {}



---@class USmoothBrushOpProps : UBaseSmoothBrushOpProps
---@field Strength float
---@field Falloff float
---@field bPreserveUVFlow boolean
local USmoothBrushOpProps = {}



---@class USmoothFillBrushOpProps : UBaseSmoothBrushOpProps
---@field Strength float
---@field Falloff float
---@field bPreserveUVFlow boolean
local USmoothFillBrushOpProps = {}



---@class USmoothHoleFillProperties : UInteractiveToolPropertySet
---@field bConstrainToHoleInterior boolean
---@field RemeshingExteriorRegionWidth int32
---@field SmoothingExteriorRegionWidth int32
---@field SmoothingInteriorRegionWidth int32
---@field InteriorSmoothness float
---@field FillDensityScalar double
---@field bProjectDuringRemesh boolean
local USmoothHoleFillProperties = {}



---@class USmoothMeshTool : UBaseMeshProcessingTool
---@field SmoothProperties USmoothMeshToolProperties
---@field IterativeProperties UIterativeSmoothProperties
---@field DiffusionProperties UDiffusionSmoothProperties
---@field ImplicitProperties UImplicitSmoothProperties
---@field WeightMapProperties USmoothWeightMapSetProperties
local USmoothMeshTool = {}



---@class USmoothMeshToolBuilder : UBaseMeshProcessingToolBuilder
local USmoothMeshToolBuilder = {}


---@class USmoothMeshToolProperties : UInteractiveToolPropertySet
---@field SmoothingType ESmoothMeshToolSmoothType
local USmoothMeshToolProperties = {}



---@class USmoothWeightMapSetProperties : UWeightMapSetProperties
---@field MinSmoothMultiplier float
local USmoothWeightMapSetProperties = {}



---@class USpaceDeformerOperatorFactory : UObject
---@field SpaceDeformerTool UMeshSpaceDeformerTool
local USpaceDeformerOperatorFactory = {}



---@class UStandardSculptBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
local UStandardSculptBrushOpProps = {}



---@class UTransformMeshesTool : UMultiSelectionTool
---@field TransformProps UTransformMeshesToolProperties
---@field ActiveGizmos TArray<FTransformMeshesTarget>
local UTransformMeshesTool = {}



---@class UTransformMeshesToolBuilder : UInteractiveToolBuilder
local UTransformMeshesToolBuilder = {}


---@class UTransformMeshesToolProperties : UInteractiveToolPropertySet
---@field TransformMode ETransformMeshesTransformMode
---@field bSetPivot boolean
---@field bEnableSnapDragging boolean
---@field SnapDragSource ETransformMeshesSnapDragSource
---@field RotationMode ETransformMeshesSnapDragRotationMode
local UTransformMeshesToolProperties = {}



---@class UTwistKelvinletBrushOpProps : UBaseKelvinletBrushOpProps
---@field Strength float
---@field Falloff float
local UTwistKelvinletBrushOpProps = {}



---@class UUVProjectionAdvancedProperties : UInteractiveToolPropertySet
local UUVProjectionAdvancedProperties = {}


---@class UUVProjectionOperatorFactory : UObject
---@field Tool UUVProjectionTool
local UUVProjectionOperatorFactory = {}



---@class UUVProjectionTool : UMultiSelectionTool
---@field BasicProperties UUVProjectionToolProperties
---@field AdvancedProperties UUVProjectionAdvancedProperties
---@field MaterialSettings UExistingMeshMaterialProperties
---@field Previews TArray<UMeshOpPreviewWithBackgroundCompute>
---@field CheckerMaterial UMaterialInstanceDynamic
---@field TransformGizmos TArray<UTransformGizmo>
---@field TransformProxies TArray<UTransformProxy>
local UUVProjectionTool = {}



---@class UUVProjectionToolBuilder : UInteractiveToolBuilder
local UUVProjectionToolBuilder = {}


---@class UUVProjectionToolProperties : UInteractiveToolPropertySet
---@field UVProjectionMethod EUVProjectionMethod
---@field ProjectionPrimitiveScale FVector
---@field CylinderProjectToTopOrBottomAngleThreshold float
---@field UVScale FVector2D
---@field UVOffset FVector2D
---@field bWorldSpaceUVScale boolean
local UUVProjectionToolProperties = {}



---@class UVertexBrushSculptProperties : UInteractiveToolPropertySet
---@field PrimaryBrushType EMeshVertexSculptBrushType
---@field PrimaryFalloffType EMeshSculptFalloffType
---@field bFreezeTarget boolean
---@field bSmoothErases boolean
local UVertexBrushSculptProperties = {}



---@class UViewAlignedPlaneBrushOpProps : UBasePlaneBrushOpProps
---@field Strength float
---@field Falloff float
---@field Depth float
---@field WhichSide EPlaneBrushSideMode
local UViewAlignedPlaneBrushOpProps = {}



---@class UViewAlignedSculptBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
local UViewAlignedSculptBrushOpProps = {}



---@class UVoxelBlendMeshesTool : UBaseVoxelTool
---@field BlendProperties UVoxelBlendMeshesToolProperties
local UVoxelBlendMeshesTool = {}



---@class UVoxelBlendMeshesToolBuilder : UBaseCreateFromSelectedToolBuilder
local UVoxelBlendMeshesToolBuilder = {}


---@class UVoxelBlendMeshesToolProperties : UInteractiveToolPropertySet
---@field BlendPower double
---@field BlendFalloff double
---@field bSolidifyInput boolean
---@field bRemoveInternalsAfterSolidify boolean
---@field OffsetSolidifySurface double
local UVoxelBlendMeshesToolProperties = {}



---@class UVoxelMorphologyMeshesTool : UBaseVoxelTool
---@field MorphologyProperties UVoxelMorphologyMeshesToolProperties
local UVoxelMorphologyMeshesTool = {}



---@class UVoxelMorphologyMeshesToolBuilder : UBaseCreateFromSelectedToolBuilder
local UVoxelMorphologyMeshesToolBuilder = {}


---@class UVoxelMorphologyMeshesToolProperties : UInteractiveToolPropertySet
---@field Operation EMorphologyOperation
---@field Distance double
---@field bSolidifyInput boolean
---@field bRemoveInternalsAfterSolidify boolean
---@field OffsetSolidifySurface double
local UVoxelMorphologyMeshesToolProperties = {}



---@class UVoxelSolidifyMeshesTool : UBaseVoxelTool
---@field SolidifyProperties UVoxelSolidifyMeshesToolProperties
local UVoxelSolidifyMeshesTool = {}



---@class UVoxelSolidifyMeshesToolBuilder : UBaseCreateFromSelectedToolBuilder
local UVoxelSolidifyMeshesToolBuilder = {}


---@class UVoxelSolidifyMeshesToolProperties : UInteractiveToolPropertySet
---@field WindingThreshold double
---@field ExtendBounds double
---@field SurfaceSearchSteps int32
---@field bSolidAtBoundaries boolean
---@field bMakeOffsetSurfaces boolean
---@field OffsetThickness double
local UVoxelSolidifyMeshesToolProperties = {}



---@class UWeldMeshEdgesTool : USingleSelectionTool
---@field Tolerance float
---@field bOnlyUnique boolean
local UWeldMeshEdgesTool = {}



---@class UWeldMeshEdgesToolBuilder : UInteractiveToolBuilder
local UWeldMeshEdgesToolBuilder = {}


---@class UWorkPlaneProperties : UInteractiveToolPropertySet
---@field bPropertySetEnabled boolean
---@field bShowGizmo boolean
---@field bSnapToGrid boolean
---@field Position FVector
---@field Rotation FQuat
local UWorkPlaneProperties = {}



