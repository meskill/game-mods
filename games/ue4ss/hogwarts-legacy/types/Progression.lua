---@meta

---@class UPT_Progression : UDataAsset
---@field m_tree UPT_Tree
---@field m_baseValues UDataTable
---@field m_upgrades UDataTable
local UPT_Progression = {}



---@class UPT_Tree : UDataAsset
---@field m_upgradeName FName
---@field m_children TArray<UPT_Tree>
local UPT_Tree = {}



---@class UProgressionComponent : UActorComponent
---@field m_progression UPT_Progression
local UProgressionComponent = {}



