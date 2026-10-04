---@meta

---@class UUI_BP_FancyEnemyHealthBar_C : UFancyProgressBar
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Filled UWidgetAnimation
---@field Depleted UWidgetAnimation
---@field TheBar UImage
---@field CachedMaterial UMaterialInstanceDynamic
local UUI_BP_FancyEnemyHealthBar_C = {}

function UUI_BP_FancyEnemyHealthBar_C:Construct() end
---@param progress float
function UUI_BP_FancyEnemyHealthBar_C:ProgressChanged(progress) end
---@param GhostProgress float
function UUI_BP_FancyEnemyHealthBar_C:GhostProgressChanged(GhostProgress) end
function UUI_BP_FancyEnemyHealthBar_C:DepletedFeedback() end
function UUI_BP_FancyEnemyHealthBar_C:FilledFeedback() end
---@param EntryPoint int32
function UUI_BP_FancyEnemyHealthBar_C:ExecuteUbergraph_UI_BP_FancyEnemyHealthBar(EntryPoint) end


