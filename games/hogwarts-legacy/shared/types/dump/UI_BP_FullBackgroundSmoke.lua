---@meta

---@class UUI_BP_FullBackgroundSmoke_C : UScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PhoenixImage_Aurora UPhoenixImage
---@field PhoenixImage_BackSmokePlate UPhoenixImage
---@field PhoenixImage_FrontGlow UPhoenixImage
---@field AbortInteraction FUI_BP_FullBackgroundSmoke_CAbortInteraction
---@field StartPreview FUI_BP_FullBackgroundSmoke_CStartPreview
---@field LeavePreview FUI_BP_FullBackgroundSmoke_CLeavePreview
---@field OnItemPurchased FUI_BP_FullBackgroundSmoke_COnItemPurchased
---@field OnItemSold FUI_BP_FullBackgroundSmoke_COnItemSold
---@field OnItemPurchaseFailedNoMoney FUI_BP_FullBackgroundSmoke_COnItemPurchaseFailedNoMoney
---@field OnItemPurchaseFailedNoSpace FUI_BP_FullBackgroundSmoke_COnItemPurchaseFailedNoSpace
---@field MatRef_BorderGlow float
---@field MatRef_FillGlow float
---@field MatRef_MoveY float
---@field MatRef_Rotate float
---@field MatRef_MaskLerpAlpha float
---@field MatRef_Move float
---@field MatRef_Move2 float
---@field BackSmokeType UI_BP_BackgroundSmoke_Enum::Type
---@field MaterialOpacity float
---@field GlowOpacity float
---@field AuroraOpacity float
local UUI_BP_FullBackgroundSmoke_C = {}

---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_FullBackgroundSmoke_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_FullBackgroundSmoke_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_FullBackgroundSmoke_C:OnOutroStarted(OutroType, OutroDuration) end
---@param OutroType int32
function UUI_BP_FullBackgroundSmoke_C:OnOutroEnded(OutroType) end
---@param IntroType int32
function UUI_BP_FullBackgroundSmoke_C:OnIntroEnded(IntroType) end
---@param IsDesignTime boolean
function UUI_BP_FullBackgroundSmoke_C:PreConstruct(IsDesignTime) end
function UUI_BP_FullBackgroundSmoke_C:Destruct() end
function UUI_BP_FullBackgroundSmoke_C:Construct() end
function UUI_BP_FullBackgroundSmoke_C:SequenceEvent_1() end
---@param EntryPoint int32
function UUI_BP_FullBackgroundSmoke_C:ExecuteUbergraph_UI_BP_FullBackgroundSmoke(EntryPoint) end
function UUI_BP_FullBackgroundSmoke_C:OnItemPurchaseFailedNoSpace__DelegateSignature() end
function UUI_BP_FullBackgroundSmoke_C:OnItemPurchaseFailedNoMoney__DelegateSignature() end
function UUI_BP_FullBackgroundSmoke_C:OnItemSold__DelegateSignature() end
function UUI_BP_FullBackgroundSmoke_C:OnItemPurchased__DelegateSignature() end
---@param PreviewedGearID FString
function UUI_BP_FullBackgroundSmoke_C:LeavePreview__DelegateSignature(PreviewedGearID) end
---@param PreviewedGearID FString
function UUI_BP_FullBackgroundSmoke_C:StartPreview__DelegateSignature(PreviewedGearID) end
function UUI_BP_FullBackgroundSmoke_C:AbortInteraction__DelegateSignature() end


