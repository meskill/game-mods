---@meta

---@class UUI_BP_BackgroundSmoke_C : UScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Fluid_Vortex_switch UWidgetAnimation
---@field Fadeout_SmokeDesolve_Vortex UWidgetAnimation
---@field FadeIn_SmokeFluid_Vortex UWidgetAnimation
---@field FadeIn_SmokeFluid_RB UWidgetAnimation
---@field PhoenixImage_BackSmokePlate UPhoenixImage
---@field PhoenixImage_BackVortexPool UPhoenixImage
---@field PhoenixImage_StarBrust UPhoenixImage
---@field RetainerBox_BackSmoke URetainerBox
---@field AbortInteraction FUI_BP_BackgroundSmoke_CAbortInteraction
---@field StartPreview FUI_BP_BackgroundSmoke_CStartPreview
---@field LeavePreview FUI_BP_BackgroundSmoke_CLeavePreview
---@field OnItemPurchased FUI_BP_BackgroundSmoke_COnItemPurchased
---@field OnItemSold FUI_BP_BackgroundSmoke_COnItemSold
---@field OnItemPurchaseFailedNoMoney FUI_BP_BackgroundSmoke_COnItemPurchaseFailedNoMoney
---@field OnItemPurchaseFailedNoSpace FUI_BP_BackgroundSmoke_COnItemPurchaseFailedNoSpace
---@field MatRef_BorderGlow float
---@field MatRef_FillGlow float
---@field MatRef_MoveY float
---@field MatRef_Rotate float
---@field MatRef_MaskLerpAlpha float
---@field MatRef_Move float
---@field MatRef_Move2 float
---@field HaveStarBrust boolean
---@field BackSmokeType UI_BP_BackgroundSmoke_Enum::Type
local UUI_BP_BackgroundSmoke_C = {}

function UUI_BP_BackgroundSmoke_C:SequenceEvent__ENTRYPOINTUI_BP_BackgroundSmoke_3() end
function UUI_BP_BackgroundSmoke_C:SequenceEvent__ENTRYPOINTUI_BP_BackgroundSmoke_2() end
function UUI_BP_BackgroundSmoke_C:SequenceEvent__ENTRYPOINTUI_BP_BackgroundSmoke_1() end
function UUI_BP_BackgroundSmoke_C:SequenceEvent__ENTRYPOINTUI_BP_BackgroundSmoke_0() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_BackgroundSmoke_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_BackgroundSmoke_C:Finished_A0718D5D4425C53BA4252CA49D170DAC() end
function UUI_BP_BackgroundSmoke_C:Finished_7E5D6D1D4577374A1CD1A781D1E39F3B() end
function UUI_BP_BackgroundSmoke_C:SequenceEvent_1() end
function UUI_BP_BackgroundSmoke_C:Construct() end
function UUI_BP_BackgroundSmoke_C:Destruct() end
---@param IsDesignTime boolean
function UUI_BP_BackgroundSmoke_C:PreConstruct(IsDesignTime) end
function UUI_BP_BackgroundSmoke_C:SequenceEvent_SmokeFadeIn() end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_BackgroundSmoke_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_BackgroundSmoke_C:OnOutroStarted(OutroType, OutroDuration) end
---@param OutroType int32
function UUI_BP_BackgroundSmoke_C:OnOutroEnded(OutroType) end
---@param IntroType int32
function UUI_BP_BackgroundSmoke_C:OnIntroEnded(IntroType) end
function UUI_BP_BackgroundSmoke_C:IntroAnim_SmokeFluid() end
function UUI_BP_BackgroundSmoke_C:OutroAnim_SmokeDesolve() end
---@param PlaybackSpeed float
---@param StartAtTime float
---@param VortexOpacity float
function UUI_BP_BackgroundSmoke_C:IntroAnim_SmokeFluidVortex(PlaybackSpeed, StartAtTime, VortexOpacity) end
function UUI_BP_BackgroundSmoke_C:OutroAnim_SmokeFluid() end
function UUI_BP_BackgroundSmoke_C:SwitchAnim() end
---@param EntryPoint int32
function UUI_BP_BackgroundSmoke_C:ExecuteUbergraph_UI_BP_BackgroundSmoke(EntryPoint) end
function UUI_BP_BackgroundSmoke_C:OnItemPurchaseFailedNoSpace__DelegateSignature() end
function UUI_BP_BackgroundSmoke_C:OnItemPurchaseFailedNoMoney__DelegateSignature() end
function UUI_BP_BackgroundSmoke_C:OnItemSold__DelegateSignature() end
function UUI_BP_BackgroundSmoke_C:OnItemPurchased__DelegateSignature() end
---@param PreviewedGearID FString
function UUI_BP_BackgroundSmoke_C:LeavePreview__DelegateSignature(PreviewedGearID) end
---@param PreviewedGearID FString
function UUI_BP_BackgroundSmoke_C:StartPreview__DelegateSignature(PreviewedGearID) end
function UUI_BP_BackgroundSmoke_C:AbortInteraction__DelegateSignature() end


