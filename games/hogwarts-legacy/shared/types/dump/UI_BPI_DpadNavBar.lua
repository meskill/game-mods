---@meta

---@class IUI_BPI_DpadNavBar_C : IInterface
local IUI_BPI_DpadNavBar_C = {}

function IUI_BPI_DpadNavBar_C:RefreshCategoryNewCounts() end
---@param NewOwner UUserWidget
function IUI_BPI_DpadNavBar_C:SetOwner(NewOwner) end
function IUI_BPI_DpadNavBar_C:NavBar_InitCategoryButtons() end
---@param Index int32
function IUI_BPI_DpadNavBar_C:SetCurCategoryIndex(Index) end
function IUI_BPI_DpadNavBar_C:GoToCategoryNext() end
function IUI_BPI_DpadNavBar_C:GoToCategoryPrev() end
---@param Categories TArray<FText>
function IUI_BPI_DpadNavBar_C:I_SetCategoryNames(Categories) end


