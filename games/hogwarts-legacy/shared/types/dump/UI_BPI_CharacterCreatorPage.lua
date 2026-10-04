---@meta

---@class IUI_BPI_CharacterCreatorPage_C : IInterface
local IUI_BPI_CharacterCreatorPage_C = {}

function IUI_BPI_CharacterCreatorPage_C:I_ScrollIntoView() end
function IUI_BPI_CharacterCreatorPage_C:I_TabActivated() end
---@param ErrorMsg FString
function IUI_BPI_CharacterCreatorPage_C:I_FinalizeFailed(ErrorMsg) end
---@param Gender EGenderEnum
function IUI_BPI_CharacterCreatorPage_C:I_UpdateIcons(Gender) end
---@param CurrentPresets TMap<FString, FString>
function IUI_BPI_CharacterCreatorPage_C:I_UpdateHighlights(CurrentPresets) end
---@param PageLegend FString
function IUI_BPI_CharacterCreatorPage_C:I_GetPageLegend(PageLegend) end
---@param PageTitle FString
function IUI_BPI_CharacterCreatorPage_C:I_GetPageTitle(PageTitle) end


