---@meta

---@class UUI_BP_MiniMap_C : UMinimapManager
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeIcons UWidgetAnimation
---@field FadeFelixFelicis UWidgetAnimation
---@field Minimap_Intro_Quick UWidgetAnimation
---@field Minimap_Outro_Instant UWidgetAnimation
---@field Minimap_Intro_Instant UWidgetAnimation
---@field FadeCloud UWidgetAnimation
---@field TutorialBounce UWidgetAnimation
---@field POI_Ring_Pulse UWidgetAnimation
---@field Minimap_Intro UWidgetAnimation
---@field CloudyMap UImage
---@field DissolvingRetainer URetainerBox
---@field Dungeon UUI_BP_MinimapDungeon_C
---@field FelixFelicisEffect UImage
---@field FelixFelicisRetainer URetainerBox
---@field Frame UImage
---@field Hogsmeade UUI_BP_MinimapHogsmeade_C
---@field Hogwarts UUI_BP_MinimapHogwarts_C
---@field IntrusionAlert UImage
---@field mapHolder UBorder
---@field minimapRetainer URetainerBox
---@field Overland UUI_BP_MinimapOverland_C
---@field Player UImage
---@field POI_Rings UCanvasPanel
---@field RetentionBox UMinimapRetentionBox
---@field Root UCanvasPanel
---@field Sanctuary UUI_BP_MinimapSanctuary_C
---@field Tents UUI_BP_MinimapTents_C
---@field Tutorial UUI_BP_MinimapTutorial_C
---@field TutorialHighlight UOverlay
---@field UsingHoverDrone boolean
---@field POIRePulseTime float
---@field POICollected boolean
---@field InstantFadeIn boolean
---@field InstantFadeOut boolean
---@field isCloudy boolean
---@field OnMinimapScaleChanged FUI_BP_MiniMap_COnMinimapScaleChanged
---@field isFelixFelicisOn boolean
local UUI_BP_MiniMap_C = {}

---@param TurnOn boolean
function UUI_BP_MiniMap_C:TogglePOIFlash(TurnOn) end
function UUI_BP_MiniMap_C:AnimationOutroDone() end
function UUI_BP_MiniMap_C:AnimationIntroDone() end
UUI_BP_MiniMap_C['Play Mini Map Outro'] = function(self, ) end
function UUI_BP_MiniMap_C:PlayMiniMapIntro() end
---@param Enable boolean
function UUI_BP_MiniMap_C:ShowMiniMapEvent(Enable) end
---@param InstantIntro boolean
function UUI_BP_MiniMap_C:RevealMiniMapEvent(InstantIntro) end
---@param InstantIntro boolean
function UUI_BP_MiniMap_C:UnrevealMiniMapEvent(InstantIntro) end
---@param Enable boolean
function UUI_BP_MiniMap_C:ShowPathLayerEvent(Enable) end
---@param Enable boolean
function UUI_BP_MiniMap_C:SetIntrusionAlertOnBP(Enable) end
---@param Caller UObject
---@param int int32
function UUI_BP_MiniMap_C:InPOIRange(Caller, int) end
---@param Caller UObject
---@param float float
function UUI_BP_MiniMap_C:DistanceToPOI(Caller, float) end
function UUI_BP_MiniMap_C:WidgetAnimationEvt_POI_Ring_Pulse_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_MiniMap_C:Repulse() end
---@param Caller UObject
function UUI_BP_MiniMap_C:POICollectedNotification(Caller) end
---@param Caller UObject
function UUI_BP_MiniMap_C:StartMinimapTutorial(Caller) end
---@param Caller UObject
function UUI_BP_MiniMap_C:MinimapTutorialComplete(Caller) end
function UUI_BP_MiniMap_C:TurnOnCloudyMiniMapEvent() end
function UUI_BP_MiniMap_C:TurnOffCloudyMiniMapEvent() end
---@param Visible boolean
---@param Opacity float
function UUI_BP_MiniMap_C:SetVisibleOpacityMiniMapEvent(Visible, Opacity) end
---@param Opacity float
function UUI_BP_MiniMap_C:SetOpacityMiniMapEvent(Opacity) end
function UUI_BP_MiniMap_C:fadeInSimple() end
function UUI_BP_MiniMap_C:fadeOutSimple() end
---@param Opacity float
---@param MapOpacity float
function UUI_BP_MiniMap_C:SetOpacityQucikMiniMapEvent(Opacity, MapOpacity) end
---@param MiniMapSize EMiniMapSizeOption
function UUI_BP_MiniMap_C:MinimapScaleChanged(MiniMapSize) end
function UUI_BP_MiniMap_C:Construct() end
function UUI_BP_MiniMap_C:TurnOnCloudyMiniMapDarkEvent() end
function UUI_BP_MiniMap_C:EventTurnOnFelixFelicisMap() end
function UUI_BP_MiniMap_C:EventTurnOffFelixFelicisMap() end
---@param Caller UObject
function UUI_BP_MiniMap_C:FelixFelicisPotionStart(Caller) end
---@param Caller UObject
function UUI_BP_MiniMap_C:FelixFelicisPotionStop(Caller) end
function UUI_BP_MiniMap_C:DoMapTransitionStart() end
function UUI_BP_MiniMap_C:DoMapTransitionEnd() end
---@param EntryPoint int32
function UUI_BP_MiniMap_C:ExecuteUbergraph_UI_BP_MiniMap(EntryPoint) end
---@param NewMapSize EMiniMapSizeOption
function UUI_BP_MiniMap_C:OnMinimapScaleChanged__DelegateSignature(NewMapSize) end


