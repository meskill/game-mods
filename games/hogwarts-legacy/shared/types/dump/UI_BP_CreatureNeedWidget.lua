---@meta

---@class UUI_BP_CreatureNeedWidget_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field iconBack UPhoenixImage
---@field NeedIcon UPhoenixImage
---@field BrushSize FVector2D
---@field CreatureNeed ECreatureNeed
---@field CreatureState UCreatureState
local UUI_BP_CreatureNeedWidget_C = {}

---@param CreatureState UCreatureState
function UUI_BP_CreatureNeedWidget_C:UpdateWithCreatureState(CreatureState) end
---@param IsNeedMet boolean
function UUI_BP_CreatureNeedWidget_C:Update(IsNeedMet) end
---@param IsDesignTime boolean
function UUI_BP_CreatureNeedWidget_C:PreConstruct(IsDesignTime) end
function UUI_BP_CreatureNeedWidget_C:OnNeedsChanged() end
function UUI_BP_CreatureNeedWidget_C:Destruct() end
---@param EntryPoint int32
function UUI_BP_CreatureNeedWidget_C:ExecuteUbergraph_UI_BP_CreatureNeedWidget(EntryPoint) end


