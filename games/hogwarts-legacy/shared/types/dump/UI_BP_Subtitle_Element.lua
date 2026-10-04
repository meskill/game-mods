---@meta

---@class UUI_BP_Subtitle_Element_C : USubtitleElement
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Shadow UBorder
---@field Text_Element UPhoenixRichTextBlock
---@field Parent UUI_BP_Subtitle_C
---@field Timer FTimerHandle
---@field bAudioDurationOverriden boolean
local UUI_BP_Subtitle_Element_C = {}

---@param NewParam URichTextBlock
function UUI_BP_Subtitle_Element_C:GetRichText(NewParam) end
---@param Caller UObject
function UUI_BP_Subtitle_Element_C:UI_Subtitles_Cleanup(Caller) end
---@param Caller UObject
function UUI_BP_Subtitle_Element_C:PauseSubtitles(Caller) end
---@param Caller UObject
function UUI_BP_Subtitle_Element_C:ResumeSubtitles(Caller) end
function UUI_BP_Subtitle_Element_C:Destruct() end
function UUI_BP_Subtitle_Element_C:SubtitlesCleanup() end
---@param Timer FTimerHandle
function UUI_BP_Subtitle_Element_C:SetTimer(Timer) end
---@param InputString FString
function UUI_BP_Subtitle_Element_C:SetRichText(InputString) end
function UUI_BP_Subtitle_Element_C:Construct() end
---@param PixelsUP float
function UUI_BP_Subtitle_Element_C:AdjustHeight(PixelsUP) end
function UUI_BP_Subtitle_Element_C:ResetHeight() end
---@param EntryPoint int32
function UUI_BP_Subtitle_Element_C:ExecuteUbergraph_UI_BP_Subtitle_Element(EntryPoint) end


