---@meta

---@class UUI_BP_NewLoadingScreen_C : ULoadingcreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeInTips UWidgetAnimation
---@field FadeInImage UWidgetAnimation
---@field FadeInSpinner UWidgetAnimation
---@field Intro UWidgetAnimation
---@field NextTip UWidgetAnimation
---@field FadeOut UWidgetAnimation
---@field AutoSaveIcon UUI_BP_AutoSave_C
---@field Canvas UCanvasPanel
---@field imageSizeBox USizeBox
---@field LienHolders UTextBlock
---@field LienholdersBox UVerticalBox
---@field TipsContent UOverlay
---@field TipsWidget UBorder
---@field TipText UPhoenixRichTextBlock
---@field UI_BP_LoadingBackgroundFX UUI_BP_LoadingBackgroundFX_C
---@field PrevHintKeys TArray<FKey>
---@field NextHintKeys TArray<FKey>
---@field LastSpinnerValue boolean
---@field LastStaticImageValue boolean
---@field LastTipsValue boolean
local UUI_BP_NewLoadingScreen_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_NewLoadingScreen_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_NewLoadingScreen_C:UpdateTipsState() end
function UUI_BP_NewLoadingScreen_C:UpdateStaticImageState() end
function UUI_BP_NewLoadingScreen_C:UpdateSpinnerState() end
function UUI_BP_NewLoadingScreen_C:AdjustForViewportWidth() end
function UUI_BP_NewLoadingScreen_C:InitKeyDownArrays() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_NewLoadingScreen_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
---@return FEventReply
function UUI_BP_NewLoadingScreen_C:OnKeyDown(MyGeometry, InKeyEvent) end
function UUI_BP_NewLoadingScreen_C:UpdateLienholdersWidget() end
function UUI_BP_NewLoadingScreen_C:OnCurtainRaised() end
---@param CurtainStageOptions FCurtainStageOptions
function UUI_BP_NewLoadingScreen_C:OnCurtainStageOptionsChanged(CurtainStageOptions) end
---@param TipKey FString
function UUI_BP_NewLoadingScreen_C:OnDisplayNextTip(TipKey) end
function UUI_BP_NewLoadingScreen_C:Construct() end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_NewLoadingScreen_C:OnOutroStarted(OutroType, OutroDuration) end
---@param OutroType int32
function UUI_BP_NewLoadingScreen_C:OnOutroEnded(OutroType) end
function UUI_BP_NewLoadingScreen_C:OnCurtainLienholdersChanged() end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_NewLoadingScreen_C:OnIntroStarted(IntroType, IntroDuration) end
---@param EntryPoint int32
function UUI_BP_NewLoadingScreen_C:ExecuteUbergraph_UI_BP_NewLoadingScreen(EntryPoint) end


