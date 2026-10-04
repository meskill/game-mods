---@meta

---@class UUI_BP_GearTooltipContent_C : UUserWidget
---@field cooldownArrow UImage
---@field cooldownBox UHorizontalBox
---@field cooldownValue UPhoenixTextBlock
---@field defenseArrow UImage
---@field defenseBox UHorizontalBox
---@field defenseValue UPhoenixTextBlock
---@field GearDeleteMessage UPhoenixTextBlock
---@field gearDivider UImage
---@field GearStats UVerticalBox
---@field offenseArrow UImage
---@field offenseBox UHorizontalBox
---@field offenseValue UPhoenixTextBlock
---@field trait1 UUI_BP_TraitNote_C
---@field trait2 UUI_BP_TraitNote_C
---@field trait3 UUI_BP_TraitNote_C
---@field StatsArray TArray<FName>
local UUI_BP_GearTooltipContent_C = {}

---@param TraitArray TArray<FName>
---@param EmptySlotCount int32
function UUI_BP_GearTooltipContent_C:CreateStatArray(TraitArray, EmptySlotCount) end
---@param GearID FString
---@param Variation FName
---@param DisplayIfSafeToDelete boolean
function UUI_BP_GearTooltipContent_C:SetStatData(GearID, Variation, DisplayIfSafeToDelete) end


