---@meta

---@class ACharacterCreatorGameMode : AGameModeBase
local ACharacterCreatorGameMode = {}


---@class FAnimNode_CustomizableCharacterEyeCap : FAnimNode_Base
---@field BasePose FPoseLink
---@field LODThreshold int32
---@field BlinkCap float
local FAnimNode_CustomizableCharacterEyeCap = {}



---@class FAnimNode_CustomizableCharacterFacialPoseBlendNode : FAnimNode_PoseBlendNode
---@field CustomizableCharacterComponent UCustomizableCharacterComponent
local FAnimNode_CustomizableCharacterFacialPoseBlendNode = {}



---@class FAnimNode_CustomizableCharacterLocalModifyBoneScales : FAnimNode_Base
---@field BasePose FPoseLink
---@field LODThreshold int32
---@field CustomizableCharacterComponent UCustomizableCharacterComponent
local FAnimNode_CustomizableCharacterLocalModifyBoneScales = {}



---@class FAnimNode_CustomizableCharacterModifyBoneScales : FAnimNode_SkeletalControlBase
---@field CustomizableCharacterComponent UCustomizableCharacterComponent
local FAnimNode_CustomizableCharacterModifyBoneScales = {}



---@class FBoneScaleEntry
---@field SliderName FName
---@field BoneNames TArray<FName>
---@field Default float
---@field Min float
---@field Max float
local FBoneScaleEntry = {}



---@class FBoneScaleRow : FTableRowBase
---@field Skeleton TSoftObjectPtr<USkeleton>
---@field BoneScaleEntries TArray<FBoneScaleEntry>
local FBoneScaleRow = {}



---@class FCharacterClassificationRow : FTableRowBase
---@field CharacterTypes TSet<FCharacterPieceCharacterType>
local FCharacterClassificationRow = {}



---@class FCharacterPieceCharacterClassification
---@field Type FName
local FCharacterPieceCharacterClassification = {}



---@class FCharacterPieceCharacterType
---@field Type FName
local FCharacterPieceCharacterType = {}



---@class FCharacterPieceDefinition
---@field CharacterPiece UCharacterPiece
---@field bSetCharacterPieceEvenIfNone boolean
---@field bIsFlipped boolean
---@field ScalarOverrides TMap<FName, float>
---@field VectorOverrides TMap<FName, FLinearColor>
---@field TextureOverrides TMap<FName, UTexture>
local FCharacterPieceDefinition = {}



---@class FCharacterPieceNiagaraSystem
---@field NiagaraSystem UNiagaraSystem
---@field SocketName FName
---@field Location FVector
---@field Rotation FRotator
local FCharacterPieceNiagaraSystem = {}



---@class FCharacterPieceType
---@field Type FName
local FCharacterPieceType = {}



---@class FClothAssetOriginalPhysicsAssets
---@field ClothingAssetToOriginalPhysicsAsset TMap<UClothingAssetCommon, UPhysicsAsset>
local FClothAssetOriginalPhysicsAssets = {}



---@class FClothingAssetName
---@field Name FName
local FClothingAssetName = {}



---@class FDbCharacterPiece : FTableRowBase
---@field CharacterPiece TSoftObjectPtr<UCharacterPiece>
local FDbCharacterPiece = {}



---@class FDbGradientRow : FTableRowBase
---@field DisplayName FName
---@field Texture TSoftObjectPtr<UTexture>
local FDbGradientRow = {}



---@class FDbMaterialRegionPresetRow : FTableRowBase
---@field Params TMap<FName, FString>
local FDbMaterialRegionPresetRow = {}



---@class FDbMeshMaterialPresetRow : FTableRowBase
---@field MeshName FName
---@field PresetName FName
---@field Params TMap<FName, FString>
---@field Icon UTexture2D
local FDbMeshMaterialPresetRow = {}



---@class FDbTextureRow : FTableRowBase
---@field DisplayName FName
---@field ParamName FName
---@field MeshName FString
---@field Texture TSoftObjectPtr<UTexture>
local FDbTextureRow = {}



---@class FLevelRow : FTableRowBase
---@field Level TSoftObjectPtr<UWorld>
---@field bLoadSky boolean
---@field Location FVector
---@field Rotation FRotator
local FLevelRow = {}



---@class FMaterialOverride
---@field Rules TArray<FMeshRule>
---@field Materials TMap<FName, UMaterialInterface>
local FMaterialOverride = {}



---@class FMeshOverride
---@field Rules TArray<FMeshRule>
---@field Mesh USkeletalMesh
local FMeshOverride = {}



---@class FMeshRule
---@field CharacterID FName
---@field RuleType FName
---@field Comparison EComparisonEnum
---@field CharacterType FName
---@field Gender EGenderEnum
---@field SleeveLength ESleeveLengthEnum
---@field HatType EHatTypeEnum
---@field ShoeHeight EShoeHeightEnum
---@field PantLength EPantLengthEnum
---@field RobeType ERobeTypeEnum
---@field GloveType EGloveTypeEnum
---@field RobeShoulderType ERobeShoulderTypeEnum
---@field Tags FGameplayTagContainer
---@field CharacterPieceTags FGameplayTagContainer
---@field CharacterPiece TSoftObjectPtr<UCharacterPiece>
local FMeshRule = {}



---@class FOutfit
---@field OutfitItems TMap<FName, UAddOnMeshProperties>
local FOutfit = {}



---@class FOutfitDefinition
---@field OutfitItems TMap<FName, FCharacterPieceDefinition>
local FOutfitDefinition = {}



---@class FOutfitType
---@field Name FName
local FOutfitType = {}



---@class FTextureFilterRow
---@field DisplayName FName
---@field ParamName FName
---@field MeshName FString
local FTextureFilterRow = {}



---@class ICustomizableCharacterInterface : IInterface
local ICustomizableCharacterInterface = {}


---@class UAddOnMesh : UObject
---@field SkeletalMeshComponent USkeletalMeshComponent
---@field SlotNameToMaterialInstanceDynamicMap TMap<FName, UMaterialInstanceDynamic>
---@field NiagaraComponents TArray<UNiagaraComponent>
local UAddOnMesh = {}



---@class UAddOnMeshProperties : UObject
---@field CharacterPiece UCharacterPiece
---@field bIsFlipped boolean
---@field ScalarOverrides TMap<FName, float>
---@field VectorOverrides TMap<FName, FLinearColor>
---@field TextureOverrides TMap<FName, UTexture>
local UAddOnMeshProperties = {}



---@class UCharacterPiece : UDataAsset
---@field CharacterClassification FCharacterPieceCharacterClassification
---@field CharacterPieceType FCharacterPieceType
---@field Tags FGameplayTagContainer
---@field Gender ECharacterPieceGenderEnum
---@field SleeveLength ESleeveLengthEnum
---@field HatType EHatTypeEnum
---@field ShoeHeight EShoeHeightEnum
---@field PantLength EPantLengthEnum
---@field RobeType ERobeTypeEnum
---@field GloveType EGloveTypeEnum
---@field RobeShoulderType ERobeShoulderTypeEnum
---@field DefaultMesh USkeletalMesh
---@field FacialPoseAsset UPoseAsset
---@field MeshOverrides TArray<FMeshOverride>
---@field MaterialOverrides TArray<FMaterialOverride>
---@field RegionNames TArray<FName>
---@field NiagaraSystems TArray<FCharacterPieceNiagaraSystem>
---@field AnimClass TSubclassOf<UAnimInstance>
local UCharacterPiece = {}

---@return FName
function UCharacterPiece:ToId() end


---@class UCustomizableCharacterComponent : UActorComponent
---@field CharacterName FName
---@field Type FName
---@field Gender EGenderEnum
---@field Tags FGameplayTagContainer
---@field OnCharacterLoadComplete FCustomizableCharacterComponentOnCharacterLoadComplete
---@field OnCharacterOutfitLoadComplete FCustomizableCharacterComponentOnCharacterOutfitLoadComplete
---@field OnAddOnMeshesChangedDynamicDelegate FCustomizableCharacterComponentOnAddOnMeshesChangedDynamicDelegate
---@field OnGearFinishedLoading FCustomizableCharacterComponentOnGearFinishedLoading
---@field CurrentOutfit FOutfitType
---@field Outfits TMap<FName, FOutfit>
---@field bDoAsyncLoad boolean
---@field AddOnMeshes TMap<FName, UAddOnMesh>
---@field CharacterItems TMap<FName, UAddOnMeshProperties>
---@field MergedMesh UAddOnMesh
---@field HeadPoseAsset UPoseAsset
---@field FacialPoseAsset UPoseAsset
---@field CurrentCCDLoading UCustomizableCharacterDefinition
---@field CacheCCD UCustomizableCharacterDefinition
local UCustomizableCharacterComponent = {}

---@param InWorldContextObject UObject
---@param InTransform FTransform
---@param InCharacterID FName
---@param CharacterClass TSubclassOf<AActor>
---@param InLoadCompleteFromSpawnDelegate FSpawnEditorCharacterInLoadCompleteFromSpawnDelegate
---@return AActor
function UCustomizableCharacterComponent:SpawnEditorCharacter(InWorldContextObject, InTransform, InCharacterID, CharacterClass, InLoadCompleteFromSpawnDelegate) end
---@param Names TArray<FName>
---@return TArray<FName>
function UCustomizableCharacterComponent:SortNames(Names) end
---@param MeshName FName
---@param ParameterName FName
---@param Value FLinearColor
---@param bResetMaterialParameters boolean
function UCustomizableCharacterComponent:SetVectorParameter(MeshName, ParameterName, Value, bResetMaterialParameters) end
---@param MeshName FName
---@param ParameterName FName
---@param Texture UTexture
---@param bResetMaterialParameters boolean
function UCustomizableCharacterComponent:SetTextureParameter(MeshName, ParameterName, Texture, bResetMaterialParameters) end
---@param State boolean
function UCustomizableCharacterComponent:SetScaleRootMotion(State) end
---@param NewScale float
function UCustomizableCharacterComponent:SetScale(NewScale) end
---@param MeshName FName
---@param ParameterName FName
---@param Value float
---@param bResetMaterialParameters boolean
function UCustomizableCharacterComponent:SetScalarParameter(MeshName, ParameterName, Value, bResetMaterialParameters) end
---@param LOD int32
---@param bInFOV boolean
function UCustomizableCharacterComponent:SetForcedLOD(LOD, bInFOV) end
---@param CharacterPieceType FName
---@param bFlip boolean
function UCustomizableCharacterComponent:SetFlipped(CharacterPieceType, bFlip) end
---@param OutfitName FName
function UCustomizableCharacterComponent:SetCurrentOutfit(OutfitName) end
---@param InRegistryID FName
function UCustomizableCharacterComponent:SetCharacterID(InRegistryID) end
---@param BoneName FName
---@param Value float
function UCustomizableCharacterComponent:SetBoneSliderScale(BoneName, Value) end
---@param bInAsyncLoad boolean
---@return boolean
function UCustomizableCharacterComponent:SetAsyncLoad(bInAsyncLoad) end
---@param NewClass UClass
function UCustomizableCharacterComponent:SetAnimInstanceClass(NewClass) end
---@param CharacterPieceType FName
---@param CharacterPieceName FName
---@param bResetMaterialParams boolean
function UCustomizableCharacterComponent:SetAddOnMesh(CharacterPieceType, CharacterPieceName, bResetMaterialParams) end
---@param TexturePtr TSoftObjectPtr<UTexture>
---@return UTexture
function UCustomizableCharacterComponent:ResolveTextureSoftObjectReference(TexturePtr) end
---@param MeshName FName
---@param ParameterName FName
---@return boolean
function UCustomizableCharacterComponent:ResetOverridenVectorParameter(MeshName, ParameterName) end
---@param MeshName FName
---@param ParameterName FName
---@return boolean
function UCustomizableCharacterComponent:ResetOverridenTextureParameter(MeshName, ParameterName) end
---@param MeshName FName
---@param ParameterName FName
---@return boolean
function UCustomizableCharacterComponent:ResetOverridenScalarParameter(MeshName, ParameterName) end
---@param CharacterLoadComplete FReloadCharacterWithCallbackCharacterLoadComplete
function UCustomizableCharacterComponent:ReloadCharacterWithCallback(CharacterLoadComplete) end
function UCustomizableCharacterComponent:ReloadCharacter() end
function UCustomizableCharacterComponent:RecreateClothingActors() end
function UCustomizableCharacterComponent:RebuildAddOnMeshes() end
---@param MeshName FName
---@param ParameterName FName
---@return boolean
function UCustomizableCharacterComponent:IsVectorParameterOverriden(MeshName, ParameterName) end
---@param MeshName FName
---@param ParameterName FName
---@return boolean
function UCustomizableCharacterComponent:IsTextureParameterOverriden(MeshName, ParameterName) end
---@param MeshName FName
---@param ParameterName FName
---@return boolean
function UCustomizableCharacterComponent:IsScalarParameterOverriden(MeshName, ParameterName) end
---@return boolean
function UCustomizableCharacterComponent:IsLoading() end
---@return boolean
function UCustomizableCharacterComponent:IsAsyncLoad() end
---@param MeshName FName
---@return TMap<FName, FLinearColor>
function UCustomizableCharacterComponent:GetVectorParameters(MeshName) end
---@param MeshName FName
---@param ParameterName FName
---@return FLinearColor
function UCustomizableCharacterComponent:GetVectorParameterDefault(MeshName, ParameterName) end
---@param MeshName FName
---@param ParameterName FName
---@return FLinearColor
function UCustomizableCharacterComponent:GetVectorParameter(MeshName, ParameterName) end
---@return FName
function UCustomizableCharacterComponent:GetTypeClassication() end
---@param MeshName FName
---@return TMap<FName, UTexture>
function UCustomizableCharacterComponent:GetTextureParameters(MeshName) end
---@param MeshName FName
---@param ParameterName FName
---@return UTexture
function UCustomizableCharacterComponent:GetTextureParameterDefault(MeshName, ParameterName) end
---@param MeshName FName
---@param ParameterName FName
---@return UTexture
function UCustomizableCharacterComponent:GetTextureParameter(MeshName, ParameterName) end
---@param SurfaceName FName
---@return EPhysicalSurface
function UCustomizableCharacterComponent:GetSurfaceTypeByName(SurfaceName) end
---@param Actor AActor
---@return EPhysicalSurface
function UCustomizableCharacterComponent:GetSurfaceTypeBelowActor(Actor) end
---@param Actor AActor
---@return FName
function UCustomizableCharacterComponent:GetSurfaceNameBelowActor(Actor) end
---@param SurfaceType EPhysicalSurface
---@return FName
function UCustomizableCharacterComponent:GetSurfaceName(SurfaceType) end
---@param MeshName FName
---@return FName
function UCustomizableCharacterComponent:GetSkeletalMeshName(MeshName) end
---@return boolean
function UCustomizableCharacterComponent:GetScaleRootMotion() end
---@return float
function UCustomizableCharacterComponent:GetScale() end
---@param MeshName FName
---@return TMap<FName, float>
function UCustomizableCharacterComponent:GetScalarParameters(MeshName) end
---@param MeshName FName
---@param ParameterName FName
---@return float
function UCustomizableCharacterComponent:GetScalarParameterDefault(MeshName, ParameterName) end
---@param MeshName FName
---@param ParameterName FName
---@return float
function UCustomizableCharacterComponent:GetScalarParameter(MeshName, ParameterName) end
---@return FRandomStream
function UCustomizableCharacterComponent:GetRandomStream() end
---@return float
function UCustomizableCharacterComponent:GetRandomFloat() end
---@return FColor
function UCustomizableCharacterComponent:GetRandomColorFromColorPalette() end
---@return TMap<FName, FOutfit>
function UCustomizableCharacterComponent:GetOutfits() end
---@param Name FName
---@param LOD int32
---@return int32
function UCustomizableCharacterComponent:GetMeshTriangleCount(Name, LOD) end
---@return TArray<FName>
function UCustomizableCharacterComponent:GetMeshNames() end
---@param Name FName
---@param LOD int32
---@return int32
function UCustomizableCharacterComponent:GetMeshDrawCount(Name, LOD) end
---@param LOD int32
---@param TriangleCount int32
---@param DrawCallCount int32
---@param MeshCount int32
function UCustomizableCharacterComponent:GetLODInfo(LOD, TriangleCount, DrawCallCount, MeshCount) end
---@return UAddOnMeshProperties
function UCustomizableCharacterComponent:GetHeadAddOnMeshProperties() end
---@return FOutfit
function UCustomizableCharacterComponent:GetCurrentOutfit() end
---@param Classification FName
---@return TArray<FName>
function UCustomizableCharacterComponent:GetClassicationSubTypes(Classification) end
---@param SubType FName
---@return FName
function UCustomizableCharacterComponent:GetClassicationFromSubType(SubType) end
---@return TMap<FName, UAddOnMeshProperties>
function UCustomizableCharacterComponent:GetCharacterItems() end
---@param OutCharacterID FName
---@return boolean
function UCustomizableCharacterComponent:GetCharacterID(OutCharacterID) end
---@param BoneSliderName FName
---@return float
function UCustomizableCharacterComponent:GetBoneSliderScale(BoneSliderName) end
---@return TArray<FName>
function UCustomizableCharacterComponent:GetAllSurfaceNames() end
---@return TArray<FName>
function UCustomizableCharacterComponent:GetAllOutfitItemTypes() end
---@return TArray<FName>
function UCustomizableCharacterComponent:GetAllCharacterTypes() end
---@return TArray<FName>
function UCustomizableCharacterComponent:GetAllCharacterPieceClassifications() end
---@return TArray<FName>
function UCustomizableCharacterComponent:GetAllCharacterItemTypes() end
---@param SubtypeID FName
---@return TArray<FName>
function UCustomizableCharacterComponent:GetAllCharacterIDsOfTypeForEditor(SubtypeID) end
---@param Name FName
---@return UAddOnMeshProperties
function UCustomizableCharacterComponent:GetAddOnMeshProperties(Name) end
---@param Name FName
---@return FName
function UCustomizableCharacterComponent:GetAddOnMeshPieceName(Name) end
---@return TMap<FName, UAddOnMesh>
function UCustomizableCharacterComponent:GetAddOnMeshes() end
---@param Name FName
---@return boolean
function UCustomizableCharacterComponent:GetAddOnMeshBP(Name) end
---@return boolean
function UCustomizableCharacterComponent:EditorSave() end
---@param Color FLinearColor
---@param LineThickness float
function UCustomizableCharacterComponent:DrawSkeletalCapsules(Color, LineThickness) end
---@param Color FLinearColor
---@param LineThickness float
function UCustomizableCharacterComponent:DrawClothCapsules(Color, LineThickness) end
---@param RenderTarget UTextureRenderTarget2D
---@param PackageName FString
---@return UTexture2D
function UCustomizableCharacterComponent:CreateTextureFromRenderTarget(RenderTarget, PackageName) end
---@param CharName FName
---@param CharacterSubtype FName
---@param SkeletonType FName
---@param CharacterGender FName
---@param OutOptionalErrorMsg FString
---@return boolean
function UCustomizableCharacterComponent:CreateCharacterDefinition(CharName, CharacterSubtype, SkeletonType, CharacterGender, OutOptionalErrorMsg) end
---@return float
function UCustomizableCharacterComponent:ComputeBoundsScreenSize() end


---@class UCustomizableCharacterDefinition : UDataAsset
---@field Gender EGenderEnum
---@field BoneScaleValues TMap<FName, float>
---@field Scale float
---@field CharacterItems TMap<FName, FCharacterPieceDefinition>
---@field Outfits TMap<FName, FOutfitDefinition>
---@field ExtraObjects TArray<UObject>
local UCustomizableCharacterDefinition = {}



---@class ULoadEntry : UObject
local ULoadEntry = {}


---@class ULoadIntoCurrentOutfitLoadEntry : ULoadEntry
---@field OutfitToLoad FOutfitDefinition
local ULoadIntoCurrentOutfitLoadEntry = {}



---@class UPoseNamesAssetUserData : UAssetUserData
---@field PoseNames TArray<FName>
local UPoseNamesAssetUserData = {}



---@class USetCurrentOutfitLoadEntry : ULoadEntry
local USetCurrentOutfitLoadEntry = {}


---@class UTextureFilterDataAsset : UDataAsset
---@field filters TMap<TSoftObjectPtr<UTexture>, FTextureFilterRow>
local UTextureFilterDataAsset = {}



