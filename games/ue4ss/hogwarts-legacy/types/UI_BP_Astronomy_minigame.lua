---@meta

---@class UUI_BP_Astronomy_minigame_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OutroAnimation UWidgetAnimation
---@field IntroAnimation UWidgetAnimation
---@field SolvedAnimation UWidgetAnimation
---@field Constellation_Image UImage
---@field Constellation_SFX UImage
---@field ConstellationNameText UPhoenixTextBlock
---@field Glass UImage
---@field Inner_Ring UImage
---@field Legend_Horizontal_Screen UUI_BP_Legend_Horizontal_Screen_C
---@field Lines_Image UImage
---@field Lines_SFX UImage
---@field Outer_Ring UImage
---@field outside_Left UImage
---@field outside_Right UImage
---@field Constellation E_AstronomyConstellations::Type
---@field InnerLerpStart float
---@field OuterLerpStart float
---@field OuterLerpEnd float
---@field DefaultLegendItemData TArray<FLegendItemData>
---@field CompletedLegendItemData TArray<FLegendItemData>
local UUI_BP_Astronomy_minigame_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_Astronomy_minigame_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_Astronomy_minigame_C:LerpOuterRing_End() end
---@param StartFOV float
---@param EndFOV float
function UUI_BP_Astronomy_minigame_C:LerpOuterRing_Start(StartFOV, EndFOV) end
---@param LerpProgress float
function UUI_BP_Astronomy_minigame_C:LerpOuterRing_Step(LerpProgress) end
function UUI_BP_Astronomy_minigame_C:LerpInnerRing_End() end
function UUI_BP_Astronomy_minigame_C:LerpInnerRing_Start() end
---@param LerpProgress float
function UUI_BP_Astronomy_minigame_C:LerpInnerRing_Step(LerpProgress) end
function UUI_BP_Astronomy_minigame_C:ResetGlass() end
---@param Rotation float
function UUI_BP_Astronomy_minigame_C:RotateGlass(Rotation) end
---@param Rotation float
function UUI_BP_Astronomy_minigame_C:RotateOuterRing(Rotation) end
---@param Rotation float
function UUI_BP_Astronomy_minigame_C:RotateInnerRing(Rotation) end
function UUI_BP_Astronomy_minigame_C:Construct() end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_Astronomy_minigame_C:LinesSfxTexLoaded(LoadedTexture, CallbackParam) end
---@param IsDesignTime boolean
function UUI_BP_Astronomy_minigame_C:PreConstruct(IsDesignTime) end
function UUI_BP_Astronomy_minigame_C:Solved() end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_Astronomy_minigame_C:ConstellationSfxTexLoaded(LoadedTexture, CallbackParam) end
function UUI_BP_Astronomy_minigame_C:ClearLegend() end
function UUI_BP_Astronomy_minigame_C:ShowBackButton() end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_Astronomy_minigame_C:LinesTexLoaded(LoadedTexture, CallbackParam) end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_Astronomy_minigame_C:ConstellationImageLoaded(LoadedTexture, CallbackParam) end
function UUI_BP_Astronomy_minigame_C:Destruct() end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_Astronomy_minigame_C:OnOutroStarted(OutroType, OutroDuration) end
---@param OutroType int32
function UUI_BP_Astronomy_minigame_C:OnOutroEnded(OutroType) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_Astronomy_minigame_C:OnIntroStarted(IntroType, IntroDuration) end
---@param EntryPoint int32
function UUI_BP_Astronomy_minigame_C:ExecuteUbergraph_UI_BP_Astronomy_minigame(EntryPoint) end


