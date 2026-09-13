---@meta

---@class APreviewGeometryActor : AInternalToolFrameworkActor
local APreviewGeometryActor = {}


---@class APreviewMeshActor : AInternalToolFrameworkActor
local APreviewMeshActor = {}


---@class FRenderableTriangle
---@field Material UMaterialInterface
---@field Vertex0 FRenderableTriangleVertex
---@field Vertex1 FRenderableTriangleVertex
---@field Vertex2 FRenderableTriangleVertex
local FRenderableTriangle = {}



---@class FRenderableTriangleVertex
---@field Position FVector
---@field UV FVector2D
---@field normal FVector
---@field Color FColor
local FRenderableTriangleVertex = {}



---@class IMeshCommandChangeTarget : IInterface
local IMeshCommandChangeTarget = {}


---@class IMeshReplacementCommandChangeTarget : IInterface
local IMeshReplacementCommandChangeTarget = {}


---@class IMeshVertexCommandChangeTarget : IInterface
local IMeshVertexCommandChangeTarget = {}


---@class UBaseCreateFromSelectedHandleSourceProperties : UOnAcceptHandleSourcesProperties
---@field WriteOutputTo EBaseCreateFromSelectedTargetType
---@field OutputName FString
---@field OutputAsset FString
local UBaseCreateFromSelectedHandleSourceProperties = {}



---@class UBaseCreateFromSelectedTool : UMultiSelectionTool
---@field TransformProperties UTransformInputsToolProperties
---@field HandleSourcesProperties UBaseCreateFromSelectedHandleSourceProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
---@field TransformProxies TArray<UTransformProxy>
---@field TransformGizmos TArray<UTransformGizmo>
---@field TransformInitialScales TArray<FVector>
local UBaseCreateFromSelectedTool = {}



---@class UBaseCreateFromSelectedToolBuilder : UInteractiveToolBuilder
local UBaseCreateFromSelectedToolBuilder = {}


---@class UBaseDynamicMeshComponent : UMeshComponent
local UBaseDynamicMeshComponent = {}


---@class UBaseMeshProcessingTool : USingleSelectionTool
---@field Preview UMeshOpPreviewWithBackgroundCompute
local UBaseMeshProcessingTool = {}



---@class UBaseMeshProcessingToolBuilder : UInteractiveToolBuilder
local UBaseMeshProcessingToolBuilder = {}


---@class UBaseVoxelTool : UBaseCreateFromSelectedTool
---@field VoxProperties UVoxelProperties
local UBaseVoxelTool = {}



---@class UCollectSurfacePathMechanic : UInteractionMechanic
local UCollectSurfacePathMechanic = {}


---@class UConstructionPlaneMechanic : UInteractionMechanic
---@field PlaneTransformGizmo UTransformGizmo
---@field PlaneTransformProxy UTransformProxy
---@field ClickToSetPlaneBehavior USingleClickInputBehavior
local UConstructionPlaneMechanic = {}



---@class UCurveControlPointsMechanic : UInteractionMechanic
---@field ClickBehavior USingleClickInputBehavior
---@field HoverBehavior UMouseHoverBehavior
---@field PreviewGeometryActor APreviewGeometryActor
---@field DrawnControlPoints UPointSetComponent
---@field DrawnControlSegments ULineSetComponent
---@field PreviewPoint UPointSetComponent
---@field PreviewSegment ULineSetComponent
---@field PointTransformProxy UTransformProxy
---@field PointTransformGizmo UTransformGizmo
local UCurveControlPointsMechanic = {}



---@class UDynamicMeshReplacementChangeTarget : UObject
local UDynamicMeshReplacementChangeTarget = {}


---@class ULineSetComponent : UMeshComponent
---@field LineMaterial UMaterialInterface
---@field Bounds FBoxSphereBounds
---@field bBoundsDirty boolean
local ULineSetComponent = {}



---@class UMeshOpPreviewWithBackgroundCompute : UObject
---@field PreviewMesh UPreviewMesh
---@field StandardMaterials TArray<UMaterialInterface>
---@field OverrideMaterial UMaterialInterface
---@field WorkingMaterial UMaterialInterface
local UMeshOpPreviewWithBackgroundCompute = {}



---@class UMultiTransformer : UObject
---@field GizmoManager UInteractiveGizmoManager
---@field TransformGizmo UTransformGizmo
---@field TransformProxy UTransformProxy
local UMultiTransformer = {}



---@class UOctreeDynamicMeshComponent : UBaseDynamicMeshComponent
---@field bExplicitShowWireframe boolean
local UOctreeDynamicMeshComponent = {}



---@class UOnAcceptHandleSourcesProperties : UInteractiveToolPropertySet
---@field OnToolAccept EHandleSourcesMethod
local UOnAcceptHandleSourcesProperties = {}



---@class UPlaneDistanceFromHitMechanic : UInteractionMechanic
local UPlaneDistanceFromHitMechanic = {}


---@class UPointSetComponent : UMeshComponent
---@field PointMaterial UMaterialInterface
---@field Bounds FBoxSphereBounds
---@field bBoundsDirty boolean
local UPointSetComponent = {}



---@class UPolyEditPreviewMesh : UPreviewMesh
local UPolyEditPreviewMesh = {}


---@class UPolygonSelectionMechanic : UInteractionMechanic
---@field Properties UPolygonSelectionMechanicProperties
---@field PreviewGeometryActor APreviewGeometryActor
---@field DrawnTriangleSetComponent UTriangleSetComponent
---@field HighlightedFaceMaterial UMaterialInterface
local UPolygonSelectionMechanic = {}



---@class UPolygonSelectionMechanicProperties : UInteractiveToolPropertySet
---@field bSelectFaces boolean
---@field bSelectEdges boolean
---@field bSelectVertices boolean
---@field bSelectEdgeLoops boolean
---@field bSelectEdgeRings boolean
---@field bPreferProjectedElement boolean
---@field bSelectDownRay boolean
---@field bIgnoreOcclusion boolean
local UPolygonSelectionMechanicProperties = {}



---@class UPreviewGeometry : UObject
---@field ParentActor APreviewGeometryActor
---@field LineSets TMap<FString, ULineSetComponent>
local UPreviewGeometry = {}

---@param LineSetIdentifier FString
---@param bVisible boolean
---@return boolean
function UPreviewGeometry:SetLineSetVisibility(LineSetIdentifier, bVisible) end
---@param LineSetIdentifier FString
---@param NewMaterial UMaterialInterface
---@return boolean
function UPreviewGeometry:SetLineSetMaterial(LineSetIdentifier, NewMaterial) end
---@param Material UMaterialInterface
function UPreviewGeometry:SetAllLineSetsMaterial(Material) end
---@param LineSetIdentifier FString
---@param bDestroy boolean
---@return boolean
function UPreviewGeometry:RemoveLineSet(LineSetIdentifier, bDestroy) end
---@param bDestroy boolean
function UPreviewGeometry:RemoveAllLineSets(bDestroy) end
---@return APreviewGeometryActor
function UPreviewGeometry:GetActor() end
---@param LineSetIdentifier FString
---@return ULineSetComponent
function UPreviewGeometry:FindLineSet(LineSetIdentifier) end
function UPreviewGeometry:Disconnect() end
---@param World UWorld
---@param WithTransform FTransform
function UPreviewGeometry:CreateInWorld(World, WithTransform) end
---@param LineSetIdentifier FString
---@return ULineSetComponent
function UPreviewGeometry:AddLineSet(LineSetIdentifier) end


---@class UPreviewMesh : UObject
---@field bBuildSpatialDataStructure boolean
---@field bDrawOnTop boolean
---@field DynamicMeshComponent USimpleDynamicMeshComponent
local UPreviewMesh = {}



---@class USimpleDynamicMeshComponent : UBaseDynamicMeshComponent
---@field TangentsType EDynamicMeshTangentCalcType
---@field bInvalidateProxyOnChange boolean
---@field bExplicitShowWireframe boolean
---@field bDrawOnTop boolean
local USimpleDynamicMeshComponent = {}



---@class USpaceCurveDeformationMechanic : UInteractionMechanic
---@field ClickBehavior USingleClickInputBehavior
---@field HoverBehavior UMouseHoverBehavior
---@field TransformProperties USpaceCurveDeformationMechanicPropertySet
---@field PreviewGeometryActor APreviewGeometryActor
---@field RenderPoints UPointSetComponent
---@field RenderSegments ULineSetComponent
---@field PointTransformProxy UTransformProxy
---@field PointTransformGizmo UTransformGizmo
local USpaceCurveDeformationMechanic = {}



---@class USpaceCurveDeformationMechanicPropertySet : UInteractiveToolPropertySet
---@field TransformMode ESpaceCurveControlPointTransformMode
---@field TransformOrigin ESpaceCurveControlPointOriginMode
---@field Softness float
---@field SoftFalloff ESpaceCurveControlPointFalloffType
local USpaceCurveDeformationMechanicPropertySet = {}



---@class USpatialCurveDistanceMechanic : UInteractionMechanic
local USpatialCurveDistanceMechanic = {}


---@class UTransformInputsToolProperties : UInteractiveToolPropertySet
---@field bShowTransformUI boolean
---@field bSnapToWorldGrid boolean
local UTransformInputsToolProperties = {}



---@class UTriangleSetComponent : UMeshComponent
---@field Bounds FBoxSphereBounds
---@field bBoundsDirty boolean
local UTriangleSetComponent = {}



---@class UUVLayoutPreview : UObject
---@field Settings UUVLayoutPreviewProperties
---@field PreviewMesh UPreviewMesh
---@field TriangleComponent UTriangleSetComponent
---@field bShowBackingRectangle boolean
---@field BackingRectangleMaterial UMaterialInterface
local UUVLayoutPreview = {}



---@class UUVLayoutPreviewProperties : UInteractiveToolPropertySet
---@field bVisible boolean
---@field ScaleFactor float
---@field WhichSide EUVLayoutPreviewSide
---@field bShowWireframe boolean
---@field Shift FVector2D
local UUVLayoutPreviewProperties = {}



---@class UVoxelProperties : UInteractiveToolPropertySet
---@field VoxelCount int32
---@field bAutoSimplify boolean
---@field bRemoveInternalSurfaces boolean
---@field SimplifyMaxErrorFactor double
---@field CubeRootMinComponentVolume double
local UVoxelProperties = {}



---@class UWeightMapSetProperties : UInteractiveToolPropertySet
---@field WeightMap FName
---@field WeightMapsList TArray<FString>
---@field bInvertWeightMap boolean
local UWeightMapSetProperties = {}

---@return TArray<FString>
function UWeightMapSetProperties:GetWeightMapsFunc() end


