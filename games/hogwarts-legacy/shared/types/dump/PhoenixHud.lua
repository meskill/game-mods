---@meta

---@class APhoenixHud_C : APhoenixHUD
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field Subtitle_HUD UUserWidget
---@field HideHUD_Override boolean
---@field LockVisibility boolean
---@field AudioHUD UBP_HUD_Audio_C
local APhoenixHud_C = {}

---@param SubtitleHUD UUserWidget
function APhoenixHud_C:GetSubtitleHUD(SubtitleHUD) end
function APhoenixHud_C:MakeHudWidget() end
function APhoenixHud_C:UserConstructionScript() end
---@param Visibility ESlateVisibility
function APhoenixHud_C:I_SetHudWidgetVisibility(Visibility) end
---@param HUDElementName FString
---@param Visibility ESlateVisibility
---@param Context FString
---@param Provider UObject
function APhoenixHud_C:I_SetHudElementVisibility(HUDElementName, Visibility, Context, Provider) end
function APhoenixHud_C:ReceiveBeginPlay() end
---@param Show boolean
---@param AllowSelectiveTicking boolean
---@param AllowAnimation boolean
function APhoenixHud_C:ToggleHUD(Show, AllowSelectiveTicking, AllowAnimation) end
---@param EndPlayReason EEndPlayReason::Type
function APhoenixHud_C:ReceiveEndPlay(EndPlayReason) end
---@param EntryPoint int32
function APhoenixHud_C:ExecuteUbergraph_PhoenixHud(EntryPoint) end


