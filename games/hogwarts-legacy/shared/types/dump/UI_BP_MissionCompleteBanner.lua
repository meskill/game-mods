---@meta

---@class UUI_BP_MissionCompleteBanner_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideMissionComplete_Anim UWidgetAnimation
---@field ShowMissionComplete_Anim UWidgetAnimation
---@field CompleteMissionName UPhoenixTextBlock
---@field CompleteTitle UPhoenixTextBlock
---@field MissionCompleteIcon UImage
---@field WinCloud UImage
---@field BannerUpdateType BannerUpdateType
---@field MissionName FString
local UUI_BP_MissionCompleteBanner_C = {}

function UUI_BP_MissionCompleteBanner_C:MissionCompleteBannerDone() end
function UUI_BP_MissionCompleteBanner_C:HideMissionComplete() end
---@param updateType BannerUpdateType
---@param MissionTitle FString
---@param MissionName FString
---@param MissionIcon FString
function UUI_BP_MissionCompleteBanner_C:ShowMissionComplete(updateType, MissionTitle, MissionName, MissionIcon) end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_MissionCompleteBanner_C:IconLoaded(LoadedTexture, CallbackParam) end
---@param EntryPoint int32
function UUI_BP_MissionCompleteBanner_C:ExecuteUbergraph_UI_BP_MissionCompleteBanner(EntryPoint) end


