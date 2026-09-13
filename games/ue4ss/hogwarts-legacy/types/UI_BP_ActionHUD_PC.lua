---@meta

---@class UUI_BP_ActionHUD_PC_C : UActionDiamondRing
---@field UberGraphFrame FPointerToUberGraphFrame
---@field hideFocusFX UWidgetAnimation
---@field showFocusFX UWidgetAnimation
---@field SwapGroupDown UWidgetAnimation
---@field SwapGroupUp UWidgetAnimation
---@field actionHUD UBorder
---@field actionItem_1 UUI_BP_ActionRingItem_C
---@field actionItem_2 UUI_BP_ActionRingItem_C
---@field actionItem_3 UUI_BP_ActionRingItem_C
---@field actionItem_4 UUI_BP_ActionRingItem_C
---@field buttonGraphic_1 UPhoenixRichTextBlock
---@field buttonGraphic_2 UPhoenixRichTextBlock
---@field buttonGraphic_3 UPhoenixRichTextBlock
---@field buttonGraphic_4 UPhoenixRichTextBlock
---@field groupNotification UUI_BP_ActionHUD_PC_MiniHUD_C
---@field PhoenixRichTextBlock UPhoenixRichTextBlock
---@field PhoenixRichTextBlock_68 UPhoenixRichTextBlock
---@field revelioCallout UHorizontalBox
---@field SpellSelectHorizontalBox UHorizontalBox
---@field ActiveMiniBack UImage
---@field ActiveMiniFill UImage
---@field isFocusFXShowing boolean
local UUI_BP_ActionHUD_PC_C = {}

function UUI_BP_ActionHUD_PC_C:SetGroupNotificationVisibility() end
---@param IgnoreLocks boolean
function UUI_BP_ActionHUD_PC_C:SetSpellSelectionVisibility(IgnoreLocks) end
---@param IgnoreLocks boolean
function UUI_BP_ActionHUD_PC_C:SetActionBarVisibility(IgnoreLocks) end
function UUI_BP_ActionHUD_PC_C:HideDiamondFX() end
function UUI_BP_ActionHUD_PC_C:ShowDiamondFX() end
---@param Button UPhoenixRichTextBlock
---@param Show boolean
function UUI_BP_ActionHUD_PC_C:SetButtonVisibility(Button, Show) end
---@param IgnoreLocks boolean
function UUI_BP_ActionHUD_PC_C:SetRevelioVisibility(IgnoreLocks) end
function UUI_BP_ActionHUD_PC_C:Construct() end
---@param GroupIndex int32
function UUI_BP_ActionHUD_PC_C:UpdateMiniDiamond(GroupIndex) end
function UUI_BP_ActionHUD_PC_C:NewDiamondSelected() end
---@param Caller UObject
---@param Lock FLockManagerLock
function UUI_BP_ActionHUD_PC_C:PassiveSpellLockChanged(Caller, Lock) end
function UUI_BP_ActionHUD_PC_C:ShowMiniDiamond() end
function UUI_BP_ActionHUD_PC_C:BndEvt__UI_BP_ActionHUD_PC_actionItem_1_K2Node_ComponentBoundEvent_0_Blacklisted__DelegateSignature() end
function UUI_BP_ActionHUD_PC_C:BndEvt__UI_BP_ActionHUD_PC_actionItem_1_K2Node_ComponentBoundEvent_1_UnBlacklisted__DelegateSignature() end
function UUI_BP_ActionHUD_PC_C:BndEvt__UI_BP_ActionHUD_PC_actionItem_2_K2Node_ComponentBoundEvent_2_Blacklisted__DelegateSignature() end
function UUI_BP_ActionHUD_PC_C:BndEvt__UI_BP_ActionHUD_PC_actionItem_2_K2Node_ComponentBoundEvent_3_UnBlacklisted__DelegateSignature() end
function UUI_BP_ActionHUD_PC_C:BndEvt__UI_BP_ActionHUD_PC_actionItem_3_K2Node_ComponentBoundEvent_4_Blacklisted__DelegateSignature() end
function UUI_BP_ActionHUD_PC_C:BndEvt__UI_BP_ActionHUD_PC_actionItem_3_K2Node_ComponentBoundEvent_5_UnBlacklisted__DelegateSignature() end
function UUI_BP_ActionHUD_PC_C:BndEvt__UI_BP_ActionHUD_PC_actionItem_4_K2Node_ComponentBoundEvent_6_Blacklisted__DelegateSignature() end
function UUI_BP_ActionHUD_PC_C:BndEvt__UI_BP_ActionHUD_PC_actionItem_4_K2Node_ComponentBoundEvent_7_UnBlacklisted__DelegateSignature() end
---@param Show boolean
function UUI_BP_ActionHUD_PC_C:OnShowButtonsChanged(Show) end
---@param IgnoreLocks boolean
function UUI_BP_ActionHUD_PC_C:OnShowHUDElement(IgnoreLocks) end
---@param HiddenState ESlateVisibility
function UUI_BP_ActionHUD_PC_C:OnHideHUDElement(HiddenState) end
---@param Caller UObject
---@param int int32
function UUI_BP_ActionHUD_PC_C:EnableAllSpellsChanged(Caller, int) end
---@param Caller UObject
---@param Lock FLockManagerLock
function UUI_BP_ActionHUD_PC_C:MenuSpellSelectionLockChanged(Caller, Lock) end
function UUI_BP_ActionHUD_PC_C:HideMiniDiamond() end
---@param EntryPoint int32
function UUI_BP_ActionHUD_PC_C:ExecuteUbergraph_UI_BP_ActionHUD_PC(EntryPoint) end


