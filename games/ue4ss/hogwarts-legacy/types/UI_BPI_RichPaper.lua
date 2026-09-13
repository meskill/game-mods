---@meta

---@class IUI_BPI_RichPaper_C : IInterface
local IUI_BPI_RichPaper_C = {}

function IUI_BPI_RichPaper_C:MenuReadRichPaper() end
---@param NewBackground FString
function IUI_BPI_RichPaper_C:SetBackgroundImage(NewBackground) end
---@param RichPaperID FString
---@param sender FString
function IUI_BPI_RichPaper_C:SetRichPaper(RichPaperID, sender) end


