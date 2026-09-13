---@meta

---@class IUI_BPI_SubtitleInterface_C : IInterface
local IUI_BPI_SubtitleInterface_C = {}

---@param PixelsUP float
function IUI_BPI_SubtitleInterface_C:AdjustHeight(PixelsUP) end
function IUI_BPI_SubtitleInterface_C:ResetHeight() end
function IUI_BPI_SubtitleInterface_C:SubtitlesCleanup() end
---@param InputString FString
function IUI_BPI_SubtitleInterface_C:SetRichText(InputString) end
---@param NewParam URichTextBlock
function IUI_BPI_SubtitleInterface_C:GetRichText(NewParam) end


