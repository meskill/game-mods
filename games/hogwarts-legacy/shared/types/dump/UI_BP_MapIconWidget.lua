---@meta

---@class UUI_BP_MapIconWidget_C : UMapIconWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShrinkRegion UWidgetAnimation
---@field FadeRegion UWidgetAnimation
---@field HoverRegion UWidgetAnimation
---@field TextShadow UImage
---@field RegionActive boolean
---@field RegionFaded boolean
---@field RegionWasActive boolean
local UUI_BP_MapIconWidget_C = {}

function UUI_BP_MapIconWidget_C:OnHoverRegion() end
---@param TitleSwitch boolean
---@param Title FString
---@param LegendStrings TArray<FString>
function UUI_BP_MapIconWidget_C:OnHoverMap(TitleSwitch, Title, LegendStrings) end
function UUI_BP_MapIconWidget_C:Construct() end
function UUI_BP_MapIconWidget_C:WidgetAnimationEvt_MapTitle_Exit_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_MapIconWidget_C:PlayFanfare_Event() end
---@param Texture UTexture2D
function UUI_BP_MapIconWidget_C:SetIcon(Texture) end
---@param Caller UObject
---@param int int32
function UUI_BP_MapIconWidget_C:RegionIndexEvent(Caller, int) end
---@param EntryPoint int32
function UUI_BP_MapIconWidget_C:ExecuteUbergraph_UI_BP_MapIconWidget(EntryPoint) end


