---@meta

---@class UABP_Robe_ClothJoints_Base_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_CopyPoseFromMesh FAnimNode_CopyPoseFromMesh
---@field AnimGraphNode_Constraint_4 FAnimNode_Constraint
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_Constraint_3 FAnimNode_Constraint
---@field AnimGraphNode_Constraint_2 FAnimNode_Constraint
---@field AnimGraphNode_Constraint_1 FAnimNode_Constraint
---@field AnimGraphNode_Constraint FAnimNode_Constraint
---@field AnimGraphNode_LookAt_4 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_3 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_2 FAnimNode_LookAt
---@field AnimGraphNode_LookAt_1 FAnimNode_LookAt
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field ClothTargetHips FTransform
---@field ClothTargetLeft FTransform
---@field ClothTargetRight FTransform
---@field ClothTargetAlpha float
---@field ClothTargetAlphaDesired float
---@field ['Cloth Mount Targets'] FClothMountTargets
---@field ValidClothingAssetNames TArray<FName>
---@field ['Anim Drive Stiffness'] FVector2DClothInteractorValue
---@field ['Anim Drive Damping'] FVector2DClothInteractorValue
---@field ['Drag Coefficient'] FFloatClothInteractorValue
---@field ['Lift Coefficient'] FFloatClothInteractorValue
---@field ['Collision Thickness'] FFloatClothInteractorValue
---@field ['Friction Coefficient'] FFloatClothInteractorValue
---@field ['Damping Coefficient'] FFloatClothInteractorValue
---@field ['Show Debug'] boolean
---@field ['Gravity Scale'] FFloatClothInteractorValue
---@field UseGravityOverride FBoolClothInteractorValue
---@field ['Gravity Override'] FVectorClothInteractorValue
---@field ['Tether Stiffness'] FVector2DClothInteractorValue
---@field ['Edge Stiffness'] FFloatClothInteractorValue
---@field ['Bending Stiffness'] FFloatClothInteractorValue
---@field ['Area Stiffness'] FFloatClothInteractorValue
---@field ['Linear Velocity Scale'] FVectorClothInteractorValue
---@field ['Angular Velocity Scale'] FFloatClothInteractorValue
---@field ['Fictitious Angular Scale'] FFloatClothInteractorValue
---@field ['Wind Velocity Scale'] FFloatClothInteractorValue
---@field ['Interation Count'] FIntClothInteractorValue
---@field ['Subdivision Count'] FIntClothInteractorValue
---@field Caller UObject
---@field PreviousClothAlpha float
---@field BlendTime float
---@field ActiveAnimDriveStiffness FVector2D
---@field ActiveAnimDriveDamping FVector2D
---@field LastAnimDriveVelocityScale float
---@field ['Targets Only'] boolean
local UABP_Robe_ClothJoints_Base_C = {}

---@param AnimGraph FPoseLink
function UABP_Robe_ClothJoints_Base_C:AnimGraph(AnimGraph) end
---@param NewParam AActor
function UABP_Robe_ClothJoints_Base_C:GetVelocityActor(NewParam) end
---@param Speed float
function UABP_Robe_ClothJoints_Base_C:GetSpeed(Speed) end
function UABP_Robe_ClothJoints_Base_C:UpdateVelocityAnimDrive() end
---@param DeltaTime float
function UABP_Robe_ClothJoints_Base_C:UpdateClothAlpha(DeltaTime) end
---@param ClothingAsset FString
---@return boolean
function UABP_Robe_ClothJoints_Base_C:ShouldProcessClothingAsset(ClothingAsset) end
UABP_Robe_ClothJoints_Base_C['Restore Clothing Asset Values'] = function(self, ) end
---@param ChaosClothInteractor UChaosClothingInteractor
---@param ChaosClothSimInterator UChaosClothingSimulationInteractor
UABP_Robe_ClothJoints_Base_C['Restore Cloth Interactor Values'] = function(self, ChaosClothInteractor, ChaosClothSimInterator) end
---@param ChaosClothInteractor UChaosClothingInteractor
---@param ChaosClothSimInterator UChaosClothingSimulationInteractor
UABP_Robe_ClothJoints_Base_C['Set Cloth Interactor Values'] = function(self, ChaosClothInteractor, ChaosClothSimInterator) end
UABP_Robe_ClothJoints_Base_C['Update Cloth Target'] = function(self, ) end
UABP_Robe_ClothJoints_Base_C['Set Clothing Asset Values'] = function(self, ) end
function UABP_Robe_ClothJoints_Base_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_Robe_ClothJoints_Base_AnimGraphNode_LookAt_2585B5A94FF85B361E3034931BCB0624() end
function UABP_Robe_ClothJoints_Base_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_Robe_ClothJoints_Base_AnimGraphNode_LookAt_FB17C4724885D341E2012B9B4FF5781E() end
function UABP_Robe_ClothJoints_Base_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_Robe_ClothJoints_Base_AnimGraphNode_LookAt_A6077BAE40160E78E9E8C690781E2893() end
function UABP_Robe_ClothJoints_Base_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_Robe_ClothJoints_Base_AnimGraphNode_LookAt_FA19EDC14B7EEBA1388BFC9C77A50936() end
function UABP_Robe_ClothJoints_Base_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_Robe_ClothJoints_Base_AnimGraphNode_LookAt_5EEAE11C437407E030FA068B5DF9635C() end
---@param DeltaTimeX float
function UABP_Robe_ClothJoints_Base_C:BlueprintUpdateAnimation(DeltaTimeX) end
function UABP_Robe_ClothJoints_Base_C:BlueprintInitializeAnimation() end
function UABP_Robe_ClothJoints_Base_C:OnClothTargetEnd() end
---@param ClothMountTargets FClothMountTargets
---@param Caller UObject
---@param BlendIn boolean
---@param TargetsOnly boolean
function UABP_Robe_ClothJoints_Base_C:OnClothTargetStart(ClothMountTargets, Caller, BlendIn, TargetsOnly) end
---@param EntryPoint int32
function UABP_Robe_ClothJoints_Base_C:ExecuteUbergraph_ABP_Robe_ClothJoints_Base(EntryPoint) end


