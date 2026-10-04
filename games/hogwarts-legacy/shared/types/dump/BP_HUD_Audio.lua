---@meta

---@class UBP_HUD_Audio_C : UUIAccessibilityAudioCueWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ArrowHolder UCanvasPanel
---@field Circle UImage
---@field CuePanel UCanvasPanel
---@field Player APawn
---@field ActorsToVisualize TMap<AActor, UUI_BP_DirectionalArrowWidget_C>
local UBP_HUD_Audio_C = {}

function UBP_HUD_Audio_C:Construct() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UBP_HUD_Audio_C:Tick(MyGeometry, InDeltaTime) end
---@param Caller UObject
function UBP_HUD_Audio_C:HideHUD(Caller) end
---@param Caller UObject
function UBP_HUD_Audio_C:ShowHUD(Caller) end
---@param EntryPoint int32
function UBP_HUD_Audio_C:ExecuteUbergraph_BP_HUD_Audio(EntryPoint) end


