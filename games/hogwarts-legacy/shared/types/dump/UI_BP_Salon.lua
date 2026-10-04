---@meta

---@class UUI_BP_Salon_C : UScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field hideSalon UWidgetAnimation
---@field showSalon UWidgetAnimation
---@field AsyncComplexion UUI_BP_AsyncLoadWrapper_C
---@field AsyncEyebrows UUI_BP_AsyncLoadWrapper_C
---@field AsyncHair UUI_BP_AsyncLoadWrapper_C
---@field backgroundSmoke UUI_BP_BackgroundSmoke_C
---@field creatorSwitcher UAsyncWidgetSwitcher
---@field LegendBar UUI_BP_Legend_Horizontal_Screen_C
---@field moneyBar UUI_BP_MoneyBar_C
---@field NavBarHorizontal UUI_BP_FG_CategoryNavBarHorizontal_C
---@field SalonScaleBox UScaleBox
---@field sectionText UPhoenixTextBlock
---@field PageIndex int32
---@field GenderRig EGenderEnum
---@field CustomizationPages TArray<UUI_BP_AsyncLoadWrapper_C>
---@field LegendItemConfirm ULegendItem
---@field PlayerCustomizationComponent UCustomizableCharacterComponent
---@field CachedPlayer ACharacter
---@field CurrentActivePresets TMap<EAvatarPresetType, TSoftObjectPtr<UAvatarPresetDefinition>>
---@field PresetSelected FUI_BP_Salon_CPresetSelected
---@field ChangesConfirmed FUI_BP_Salon_CChangesConfirmed
---@field ChangesDiscarded FUI_BP_Salon_CChangesDiscarded
---@field NewPresets TMap<EAvatarPresetType, TSoftObjectPtr<UAvatarPresetDefinition>>
---@field InitialLoadComplete boolean
---@field CustomizationPagesTitleKey TArray<FString>
---@field CurrentMoney int32
---@field SalonCost int32
---@field CachedHeadAppearance FString
---@field CachedFaceAppearance FString
---@field HoveredNavBarIndex int32
---@field LegendItemSelect ULegendItem
---@field LegendItemNotEnoughFunds ULegendItem
---@field LegendItemBack ULegendItem
---@field ShouldDiscardChanges boolean
local UUI_BP_Salon_C = {}

function UUI_BP_Salon_C:SequenceEvent__ENTRYPOINTUI_BP_Salon_1() end
function UUI_BP_Salon_C:SequenceEvent__ENTRYPOINTUI_BP_Salon_0() end
---@param PageIndex int32
function UUI_BP_Salon_C:ScrollSelectedItemIntoView(PageIndex) end
function UUI_BP_Salon_C:AdjustForViewportWidth() end
function UUI_BP_Salon_C:RestoreInitialGearAppearances() end
function UUI_BP_Salon_C:EquipInvisibleGearAppearances() end
---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_Salon_C:ConfirmButtonHoldReleased(LegendItem, HoldWasCompleted) end
function UUI_BP_Salon_C:InitLegend() end
function UUI_BP_Salon_C:RefreshTitleKey() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_Salon_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_Salon_C:VO_OnExitMenu() end
function UUI_BP_Salon_C:VO_OnItemPurchasedFailedNoMoney() end
function UUI_BP_Salon_C:VO_OnLeavePreview() end
function UUI_BP_Salon_C:VO_OnGearPreview() end
function UUI_BP_Salon_C:VO_OnItemPurchased() end
function UUI_BP_Salon_C:VO_OnEnterVendor() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_Salon_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_Salon_C:DiscardChanges() end
function UUI_BP_Salon_C:ConfirmChanges() end
---@param PresetType EAvatarPresetType
---@param PresetId FName
function UUI_BP_Salon_C:UpdateCurrentPreset(PresetType, PresetId) end
---@param PresetType EAvatarPresetType
---@param PresetName FName
function UUI_BP_Salon_C:UpdatePreviewActor(PresetType, PresetName) end
---@param PresetType EAvatarPresetType
---@param PrestName FString
UUI_BP_Salon_C['On Preset Selected'] = function(self, PresetType, PrestName) end
---@param AvatarPresetDefinitionsMap TMap<EAvatarPresetType, TSoftObjectPtr<UAvatarPresetDefinition>>
---@param OutMap TMap<FString, FString>
function UUI_BP_Salon_C:AvatarPresetDefinitionsMapToStringMaps(AvatarPresetDefinitionsMap, OutMap) end
---@param Child UAsyncLoadWrapper
function UUI_BP_Salon_C:ChildPageLoaded(Child) end
---@param NewIndex int32
UUI_BP_Salon_C['Category Switch'] = function(self, NewIndex) end
---@param PageIndex int32
function UUI_BP_Salon_C:GoToPage(PageIndex) end
function UUI_BP_Salon_C:StartBackgroundSmokeOutro() end
function UUI_BP_Salon_C:Construct() end
---@param Caller UObject
---@param String FString
function UUI_BP_Salon_C:PresetButtonClicked(Caller, String) end
function UUI_BP_Salon_C:OnInitialized() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_Salon_C:Tick(MyGeometry, InDeltaTime) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_Salon_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_Salon_C:OnOutroStarted(OutroType, OutroDuration) end
function UUI_BP_Salon_C:StartBackgroundSmokeIntro() end
---@param OutroType int32
function UUI_BP_Salon_C:OnOutroEnded(OutroType) end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_Salon_C:BndEvt__UI_BP_Salon_AsyncHair_K2Node_ComponentBoundEvent_0_AsyncWrapperClassLoadEvent__DelegateSignature(SelfReference) end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_Salon_C:BndEvt__UI_BP_Salon_AsyncEyebrows_K2Node_ComponentBoundEvent_2_AsyncWrapperClassLoadEvent__DelegateSignature(SelfReference) end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_Salon_C:BndEvt__UI_BP_Salon_AsyncComplexion_K2Node_ComponentBoundEvent_3_AsyncWrapperClassLoadEvent__DelegateSignature(SelfReference) end
---@param ActiveWidget UUserWidget
function UUI_BP_Salon_C:BndEvt__UI_BP_Salon_creatorSwitcher_K2Node_ComponentBoundEvent_4_WidgetActiveEvent__DelegateSignature(ActiveWidget) end
---@param NewCategoryIndex int32
function UUI_BP_Salon_C:BndEvt__UI_BP_Salon_NavBarHorizontal_K2Node_ComponentBoundEvent_5_ChangedCategory__DelegateSignature(NewCategoryIndex) end
---@param ButtonIndex int32
---@param CategoryButton UIconButtonWidget
function UUI_BP_Salon_C:BndEvt__UI_BP_Salon_NavBarHorizontal_K2Node_ComponentBoundEvent_1_HoveredCategory__DelegateSignature(ButtonIndex, CategoryButton) end
---@param EntryPoint int32
function UUI_BP_Salon_C:ExecuteUbergraph_UI_BP_Salon(EntryPoint) end
---@param PresetType EAvatarPresetType
---@param PresetName FString
function UUI_BP_Salon_C:PresetSelected__DelegateSignature(PresetType, PresetName) end
function UUI_BP_Salon_C:ChangesDiscarded__DelegateSignature() end
function UUI_BP_Salon_C:ChangesConfirmed__DelegateSignature() end


