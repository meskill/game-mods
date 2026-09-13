---@meta

---@class UUI_BP_Subtitle_HUD_C : USubtitle_HUD
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CanvasPanel_0 UCanvasPanel
---@field UI_BP_Subtitle UUI_BP_Subtitle_C
---@field DefaultSubtitleHeight float
local UUI_BP_Subtitle_HUD_C = {}

---@param NewParam URichTextBlock
function UUI_BP_Subtitle_HUD_C:GetRichText(NewParam) end
---@param InputString FString
function UUI_BP_Subtitle_HUD_C:SetRichText(InputString) end
function UUI_BP_Subtitle_HUD_C:Construct() end
function UUI_BP_Subtitle_HUD_C:SubtitlesCleanup() end
---@param PixelsUP float
function UUI_BP_Subtitle_HUD_C:AdjustHeight(PixelsUP) end
function UUI_BP_Subtitle_HUD_C:ResetHeight() end
---@param Caller UObject
function UUI_BP_Subtitle_HUD_C:SubtitleHUD_Show(Caller) end
---@param Caller UObject
function UUI_BP_Subtitle_HUD_C:SubtitleHUD_Hide(Caller) end
function UUI_BP_Subtitle_HUD_C:Destruct() end
---@param EntryPoint int32
function UUI_BP_Subtitle_HUD_C:ExecuteUbergraph_UI_BP_Subtitle_HUD(EntryPoint) end


