---@meta

---@class ABP_SkinFX_ApparateParent_C : ABP_SkinFX_Graph_Parent_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Appear_RotationBlend_C881C9494301D8595640F9BBD86064CA float
---@field Appear_Collapse_C881C9494301D8595640F9BBD86064CA float
---@field Appear_Rotation_Amount_C881C9494301D8595640F9BBD86064CA float
---@field Appear__Direction_C881C9494301D8595640F9BBD86064CA ETimelineDirection::Type
---@field Appear UTimelineComponent
---@field Dissapear_Rotation_Blend_73E7A023474E36B120363C82FCBB7787 float
---@field Dissapear_Collapse_73E7A023474E36B120363C82FCBB7787 float
---@field Dissapear_Rotation_Amount_73E7A023474E36B120363C82FCBB7787 float
---@field Dissapear__Direction_73E7A023474E36B120363C82FCBB7787 ETimelineDirection::Type
---@field Dissapear UTimelineComponent
---@field Color FLinearColor
---@field FadeOutStart float
---@field Center FVector
---@field Scale FVector
---@field ['Use Specific Rotation Axis'] boolean
---@field Offset float
---@field Effect UParticleSystemComponent
---@field CentreOffset FVector
---@field ScaleMultiplier float
---@field ['Initial Rotation'] FVector
---@field ['Final Rotation'] FVector
local ABP_SkinFX_ApparateParent_C = {}

---@param ActorComponent USceneComponent
function ABP_SkinFX_ApparateParent_C:GetActorBoundsComponent(ActorComponent) end
function ABP_SkinFX_ApparateParent_C:Dissapear__FinishedFunc() end
function ABP_SkinFX_ApparateParent_C:Dissapear__UpdateFunc() end
function ABP_SkinFX_ApparateParent_C:Appear__FinishedFunc() end
function ABP_SkinFX_ApparateParent_C:Appear__UpdateFunc() end
---@param EndStyle ESkinFXEffectEndStyle
---@param CurrentTime float
function ABP_SkinFX_ApparateParent_C:SkinFXNotifyEnd(EndStyle, CurrentTime) end
---@param DeltaTime float
function ABP_SkinFX_ApparateParent_C:SkinFXUpdateTick(DeltaTime) end
function ABP_SkinFX_ApparateParent_C:Apparate() end
function ABP_SkinFX_ApparateParent_C:Disapparate() end
function ABP_SkinFX_ApparateParent_C:Initialise() end
function ABP_SkinFX_ApparateParent_C:OnApparateFinished() end
function ABP_SkinFX_ApparateParent_C:OnDisapparateFinished() end
function ABP_SkinFX_ApparateParent_C:SkinFXInitialUpdate() end
---@param EntryPoint int32
function ABP_SkinFX_ApparateParent_C:ExecuteUbergraph_BP_SkinFX_ApparateParent(EntryPoint) end


