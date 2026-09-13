---@meta

---@class UUI_BP_LogoAndLegal_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Bink UImage
---@field content UVerticalBox
---@field InstaLod UImage
---@field Mercuna UImage
---@field Oodle UImage
---@field SpeedTree UImage
---@field UnrealEngine UImage
---@field Wwise UImage
local UUI_BP_LogoAndLegal_C = {}

function UUI_BP_LogoAndLegal_C:AdjustForViewportWidth() end
function UUI_BP_LogoAndLegal_C:OnInitialized() end
function UUI_BP_LogoAndLegal_C:Construct() end
---@param Caller UObject
function UUI_BP_LogoAndLegal_C:ResolutionSettingsApplied(Caller) end
---@param EntryPoint int32
function UUI_BP_LogoAndLegal_C:ExecuteUbergraph_UI_BP_LogoAndLegal(EntryPoint) end


