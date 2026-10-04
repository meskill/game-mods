---@meta

---@class UUI_BP_ActionDiamondRing_C : UActionDiamondRing
---@field UberGraphFrame FPointerToUberGraphFrame
---@field hideFocusFX UWidgetAnimation
---@field showFocusFX UWidgetAnimation
---@field MiniDiamondLeft UWidgetAnimation
---@field MiniDiamondBottom UWidgetAnimation
---@field MiniDiamondRight UWidgetAnimation
---@field MiniDiamondTop UWidgetAnimation
---@field SwapGroup UWidgetAnimation
---@field ShowSpellCallouts UWidgetAnimation
---@field actionItem_Bottom UUI_BP_ActionRingItem_C
---@field actionItem_Left UUI_BP_ActionRingItem_C
---@field actionItem_Right UUI_BP_ActionRingItem_C
---@field actionItem_Top UUI_BP_ActionRingItem_C
---@field ActionRing UBorder
---@field BottomButton UCanvasPanel
---@field bottomButtonGraphic UPhoenixRichTextBlock
---@field CalloutButton UPhoenixRichTextBlock
---@field dpadCallout UPhoenixRichTextBlock
---@field dpadCallout_Both UPhoenixRichTextBlock
---@field LeftButton UCanvasPanel
---@field leftButtonGraphic UPhoenixRichTextBlock
---@field leftHanded UHorizontalBox
---@field leftHandedRevelio UPhoenixRichTextBlock
---@field leftHandedSpellSelection UPhoenixRichTextBlock
---@field mini1 UUI_BP_MiniSelectionDiamond_C
---@field mini2 UUI_BP_MiniSelectionDiamond_C
---@field mini3 UUI_BP_MiniSelectionDiamond_C
---@field mini4 UUI_BP_MiniSelectionDiamond_C
---@field miniDiamond UBorder
---@field MiniDiamondElements UCanvasPanel
---@field miniDpad UBorder
---@field miniFaceButtons UHorizontalBox
---@field RevelioIcon UImage
---@field RightButton UCanvasPanel
---@field rightButtonGraphic UPhoenixRichTextBlock
---@field rightHanded UHorizontalBox
---@field spellSelectIcon UImage
---@field TopButton UCanvasPanel
---@field topButtonGraphic UPhoenixRichTextBlock
---@field ActiveMiniBack UImage
---@field ActiveMiniFill UImage
---@field isFocusFXShowing boolean
---@field MiniDiamondArray TArray<UUI_BP_MiniSelectionDiamond_C>
---@field isRevelioAvailable boolean
local UUI_BP_ActionDiamondRing_C = {}

function UUI_BP_ActionDiamondRing_C:AdjustButtonGraphicsForSwitch() end
---@param InSouthpaw boolean
function UUI_BP_ActionDiamondRing_C:ToggleRevelioSpellSelectionPrompts(InSouthpaw) end
---@param GroupIndex int32
---@param ForceRefreshAll boolean
function UUI_BP_ActionDiamondRing_C:SetMiniDiamondElementsVisibility(GroupIndex, ForceRefreshAll) end
---@param IgnoreLocks boolean
function UUI_BP_ActionDiamondRing_C:SetActionRingVisibility(IgnoreLocks) end
---@param IgnoreLocks boolean
function UUI_BP_ActionDiamondRing_C:SetSpellSelectionVisibility(IgnoreLocks) end
---@param InSouthpaw boolean
function UUI_BP_ActionDiamondRing_C:ToggleMiniDiamondPrompts(InSouthpaw) end
function UUI_BP_ActionDiamondRing_C:HideDiamondFX() end
function UUI_BP_ActionDiamondRing_C:ShowDiamondFX() end
---@param Button UWidget
---@param Show boolean
function UUI_BP_ActionDiamondRing_C:SetButtonVisibility(Button, Show) end
---@param IgnoreLocks boolean
function UUI_BP_ActionDiamondRing_C:SetRevelioVisibility(IgnoreLocks) end
function UUI_BP_ActionDiamondRing_C:UpdateBackAndFill() end
---@param GroupIndex int32
function UUI_BP_ActionDiamondRing_C:UpdateMiniDiamond(GroupIndex) end
function UUI_BP_ActionDiamondRing_C:Construct() end
---@param Show boolean
function UUI_BP_ActionDiamondRing_C:ShowButtonCallouts(Show) end
function UUI_BP_ActionDiamondRing_C:NewDiamondSelected() end
---@param Caller UObject
---@param Lock FLockManagerLock
function UUI_BP_ActionDiamondRing_C:PassiveSpellLockChanged(Caller, Lock) end
function UUI_BP_ActionDiamondRing_C:ShowMiniDiamond() end
function UUI_BP_ActionDiamondRing_C:BndEvt__UI_BP_ActionDiamondRing_actionItem_Top_K2Node_ComponentBoundEvent_0_Blacklisted__DelegateSignature() end
function UUI_BP_ActionDiamondRing_C:BndEvt__UI_BP_ActionDiamondRing_actionItem_Top_K2Node_ComponentBoundEvent_1_UnBlacklisted__DelegateSignature() end
function UUI_BP_ActionDiamondRing_C:BndEvt__UI_BP_ActionDiamondRing_actionItem_Right_K2Node_ComponentBoundEvent_2_Blacklisted__DelegateSignature() end
function UUI_BP_ActionDiamondRing_C:BndEvt__UI_BP_ActionDiamondRing_actionItem_Right_K2Node_ComponentBoundEvent_3_UnBlacklisted__DelegateSignature() end
function UUI_BP_ActionDiamondRing_C:BndEvt__UI_BP_ActionDiamondRing_actionItem_Bottom_K2Node_ComponentBoundEvent_4_Blacklisted__DelegateSignature() end
function UUI_BP_ActionDiamondRing_C:BndEvt__UI_BP_ActionDiamondRing_actionItem_Bottom_K2Node_ComponentBoundEvent_5_UnBlacklisted__DelegateSignature() end
function UUI_BP_ActionDiamondRing_C:BndEvt__UI_BP_ActionDiamondRing_actionItem_Left_K2Node_ComponentBoundEvent_6_Blacklisted__DelegateSignature() end
function UUI_BP_ActionDiamondRing_C:BndEvt__UI_BP_ActionDiamondRing_actionItem_Left_K2Node_ComponentBoundEvent_7_UnBlacklisted__DelegateSignature() end
---@param Show boolean
function UUI_BP_ActionDiamondRing_C:OnShowButtonsChanged(Show) end
---@param Caller UObject
---@param int int32
function UUI_BP_ActionDiamondRing_C:Settings_SouthpawToggled(Caller, int) end
---@param HiddenState ESlateVisibility
function UUI_BP_ActionDiamondRing_C:OnHideHUDElement(HiddenState) end
---@param IgnoreLocks boolean
function UUI_BP_ActionDiamondRing_C:OnShowHUDElement(IgnoreLocks) end
---@param Caller UObject
---@param int int32
function UUI_BP_ActionDiamondRing_C:EnableAllSpellsChanged(Caller, int) end
---@param Caller UObject
---@param Lock FLockManagerLock
function UUI_BP_ActionDiamondRing_C:MenuSpellSelectionLockChanged(Caller, Lock) end
---@param Caller UObject
---@param int int32
function UUI_BP_ActionDiamondRing_C:LockedDiamondSelected(Caller, int) end
---@param Caller UObject
function UUI_BP_ActionDiamondRing_C:BeginChannelingWingardiumLeviosa(Caller) end
---@param Caller UObject
function UUI_BP_ActionDiamondRing_C:EndChannelingWidgardiumLeviosa(Caller) end
---@param Caller UObject
function UUI_BP_ActionDiamondRing_C:RefreshButtonCallouts(Caller) end
function UUI_BP_ActionDiamondRing_C:HideMiniDiamond() end
---@param EntryPoint int32
function UUI_BP_ActionDiamondRing_C:ExecuteUbergraph_UI_BP_ActionDiamondRing(EntryPoint) end


