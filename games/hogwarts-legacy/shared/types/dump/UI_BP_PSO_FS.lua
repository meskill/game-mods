---@meta

---@class UUI_BP_PSO_FS_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FrontendFadeOut UWidgetAnimation
---@field backgroundOverlay UOverlay
---@field BlackFadeImage UImage
---@field CompileProgressBar UProgressBar
---@field LegendBar UUI_BP_Legend_Horizontal_Screen_C
---@field PSODesc UPhoenixTextBlock
---@field PSOTitle UPhoenixTextBlock
---@field UI_BP_FullBackgroundSmoke UUI_BP_FullBackgroundSmoke_C
---@field PSOComplete FUI_BP_PSO_FS_CPSOComplete
---@field MinDurationComplete boolean
---@field CompileComplete boolean
---@field MaxDurationExceeded boolean
---@field MinScreenDuration float
---@field MaxScreenDuration float
---@field ExitRequested boolean
---@field IsFrontend boolean
---@field IsPrecompilationPaused boolean
local UUI_BP_PSO_FS_C = {}

function UUI_BP_PSO_FS_C:AdjustForViewportWidth() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_PSO_FS_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_PSO_FS_C:RequestExit() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_PSO_FS_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param progress float
function UUI_BP_PSO_FS_C:PSOUpdate(progress) end
function UUI_BP_PSO_FS_C:OnMinDurationCompleted() end
function UUI_BP_PSO_FS_C:EmergencyTimeout() end
function UUI_BP_PSO_FS_C:StartListening() end
function UUI_BP_PSO_FS_C:Construct() end
function UUI_BP_PSO_FS_C:WidgetAnimationEvt_FrontendFadeOut_K2Node_WidgetAnimationEvent_0() end
---@param Caller UObject
function UUI_BP_PSO_FS_C:ResolutionSettingsApplied(Caller) end
function UUI_BP_PSO_FS_C:Destruct() end
---@param EntryPoint int32
function UUI_BP_PSO_FS_C:ExecuteUbergraph_UI_BP_PSO_FS(EntryPoint) end
function UUI_BP_PSO_FS_C:PSOComplete__DelegateSignature() end


