---@meta

---@class UUI_BP_NurtureProgressDiamond_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HitZone UButton
---@field MainImage UImage
---@field progressMeter UImage
---@field MinimumFill float
local UUI_BP_NurtureProgressDiamond_C = {}

---@param progress float
function UUI_BP_NurtureProgressDiamond_C:SetProgress(progress) end
---@param ImageName FString
function UUI_BP_NurtureProgressDiamond_C:SetImageName(ImageName) end
---@param IsDesignTime boolean
function UUI_BP_NurtureProgressDiamond_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_NurtureProgressDiamond_C:ExecuteUbergraph_UI_BP_NurtureProgressDiamond(EntryPoint) end


