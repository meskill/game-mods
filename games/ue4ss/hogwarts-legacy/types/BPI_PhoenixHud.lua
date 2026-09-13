---@meta

---@class IBPI_PhoenixHud_C : IInterface
local IBPI_PhoenixHud_C = {}

---@param HUDElementName FString
---@param Visibility ESlateVisibility
---@param Context FString
---@param Provider UObject
function IBPI_PhoenixHud_C:I_SetHudElementVisibility(HUDElementName, Visibility, Context, Provider) end
---@param Visibility ESlateVisibility
function IBPI_PhoenixHud_C:I_SetHudWidgetVisibility(Visibility) end


