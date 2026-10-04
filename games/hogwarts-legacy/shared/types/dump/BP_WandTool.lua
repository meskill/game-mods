---@meta

---@class ABP_WandTool_C : AWandTool
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SK_Wand USkeletalMeshComponent
---@field ComboSplitData FComboSplitData
---@field FinisherTimerHandle FTimerHandle
---@field ComboTimerHandle FTimerHandle
---@field HeavyComboSplitData FComboSplitData
---@field HeavyFinisherTimerHandle FTimerHandle
---@field HeavyComboTimerHandle FTimerHandle
---@field ComboFinisherEffect UNiagaraComponent
---@field MothFollowing boolean
---@field HardRefToOppugnoSpell ABP_OppugnoSpell_C
---@field HardRefToExpelliarmusSpell ABP_ExpelliarmusSpell_C
---@field WandStyleData UDataTable
---@field ['Current Wand Mesh Asset'] USkeletalMesh
---@field ['Wand Dynamic Material'] UMaterialInstanceDynamic
---@field StarterWand boolean
---@field StarterWandProjectileSpeedMultiplier float
---@field WandStyle FName
---@field Tip_DTexture UTexture2D
---@field Tip_NTexture UTexture2D
---@field Tip_MROTexture UTexture2D
---@field Handle_DTexture UTexture2D
---@field Handle_NTexture UTexture2D
---@field Handle_MROTexture UTexture2D
local ABP_WandTool_C = {}

function ABP_WandTool_C:ResetStyleTextureReferences() end
---@return UMeshComponent
function ABP_WandTool_C:GetWandMesh() end
---@param New_Wand_Mesh_Asset USkeletalMesh
---@param TipDTexture UTexture2D
---@param TipNTexture UTexture2D
---@param TipMROTexture UTexture2D
---@param HandleDTexture UTexture2D
---@param HandleNTexture UTexture2D
---@param HandleMROTexture UTexture2D
---@param Force boolean
---@param Wand_MID UMaterialInstanceDynamic
ABP_WandTool_C['Create Wand'] = function(self, New_Wand_Mesh_Asset, TipDTexture, TipNTexture, TipMROTexture, HandleDTexture, HandleNTexture, HandleMROTexture, Force, Wand_MID) end
---@param Mesh_Component USkinnedMeshComponent
---@param Mesh_Asset USkeletalMesh
ABP_WandTool_C['Assign Skeletal Mesh Asset'] = function(self, Mesh_Component, Mesh_Asset) end
function ABP_WandTool_C:UserConstructionScript() end
---@param Loaded UObject
function ABP_WandTool_C:OnLoaded_A0077CDF44E6650F785A2BACCB20E9AD(Loaded) end
---@param Loaded UObject
function ABP_WandTool_C:OnLoaded_A0077CDF44E6650F785A2BAC2881D8FA(Loaded) end
---@param Loaded UObject
function ABP_WandTool_C:OnLoaded_0055B6AC46721F5CE836AA9E366D0F29(Loaded) end
---@param Loaded UObject
function ABP_WandTool_C:OnLoaded_227F03C34C43721E008652B57453C981(Loaded) end
---@param Loaded UObject
function ABP_WandTool_C:OnLoaded_5867A7E746A9CA997A25E3AD69B69E55(Loaded) end
---@param Loaded UObject
function ABP_WandTool_C:OnLoaded_37A9E9014EFC37E0A67828B37114B2E4(Loaded) end
---@param Loaded UObject
function ABP_WandTool_C:OnLoaded_A0077CDF44E6650F785A2BACA8ABDA2C(Loaded) end
function ABP_WandTool_C:ReceiveBeginPlay() end
---@param Caller UObject
function ABP_WandTool_C:HideWand(Caller) end
---@param Caller UObject
function ABP_WandTool_C:ShowWand(Caller) end
---@param EndPlayReason EEndPlayReason::Type
function ABP_WandTool_C:ReceiveEndPlay(EndPlayReason) end
---@param ComboSplitData FComboSplitData
function ABP_WandTool_C:StartComboSplitTimer(ComboSplitData) end
function ABP_WandTool_C:FinisherTimerElapsed() end
function ABP_WandTool_C:CancelComboSplitTimer() end
function ABP_WandTool_C:ComboTimerExpired() end
function ABP_WandTool_C:ResetCombos() end
---@param ComboSplitData FComboSplitData
function ABP_WandTool_C:StartHeavyComboSplitTimer(ComboSplitData) end
function ABP_WandTool_C:HeavyFinisherTimerExpired() end
function ABP_WandTool_C:HeavyComboTimerExpired() end
function ABP_WandTool_C:CancelHeavyComboSplitTimer() end
function ABP_WandTool_C:ResetLightCombo() end
function ABP_WandTool_C:ResetHeavyCombo() end
---@param WandStyle FName
function ABP_WandTool_C:SetWandStyle(WandStyle) end
---@param EntryPoint int32
function ABP_WandTool_C:ExecuteUbergraph_BP_WandTool(EntryPoint) end


