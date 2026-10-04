---@meta

---@class UUI_BP_DuelTechniques_C : UDuelTechniquesHUDBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field hideDuelingTechniques UWidgetAnimation
---@field showDuelingTechniques UWidgetAnimation
---@field InvalidationBox_DuelTechniques UInvalidationBox
---@field techniqueList UVerticalBox
local UUI_BP_DuelTechniques_C = {}

function UUI_BP_DuelTechniques_C:SequenceEvent__ENTRYPOINTUI_BP_DuelTechniques_0() end
function UUI_BP_DuelTechniques_C:ClearTechniques() end
---@param TechniqueID FName
---@param TechniqueItem UUI_BP_DuelTechnique_Item_C
function UUI_BP_DuelTechniques_C:FindTechnique(TechniqueID, TechniqueItem) end
---@param TechniqueID FName
---@param NewValue int32
function UUI_BP_DuelTechniques_C:UpdateTechnique(TechniqueID, NewValue) end
---@param TechniqueData TArray<FDuelTechnique_UIData>
UUI_BP_DuelTechniques_C['Add Duel Techniques'] = function(self, TechniqueData) end
function UUI_BP_DuelTechniques_C:OnFadeDuelTechniquesFinished() end
function UUI_BP_DuelTechniques_C:Construct() end
---@param TechniqueID FName
---@param NewValue int32
function UUI_BP_DuelTechniques_C:OnDuelTechniqueUpdatedByID(TechniqueID, NewValue) end
---@param TechniqueUIData TArray<FDuelTechnique_UIData>
function UUI_BP_DuelTechniques_C:OnDuelTechniquesInitialized(TechniqueUIData) end
---@param TechniqueID FName
---@param IsNew boolean
function UUI_BP_DuelTechniques_C:OnDuelTechniqueProgressCompletedByID(TechniqueID, IsNew) end
---@param TechniqueID FName
---@param TimeStr FText
function UUI_BP_DuelTechniques_C:OnTimedTechniqueUpdated(TechniqueID, TimeStr) end
---@param TechniqueID FName
---@param IsNew boolean
function UUI_BP_DuelTechniques_C:OnDuelTechniqueProgressFailedByID(TechniqueID, IsNew) end
function UUI_BP_DuelTechniques_C:OnDuelTechniquesDone() end
---@param EntryPoint int32
function UUI_BP_DuelTechniques_C:ExecuteUbergraph_UI_BP_DuelTechniques(EntryPoint) end


