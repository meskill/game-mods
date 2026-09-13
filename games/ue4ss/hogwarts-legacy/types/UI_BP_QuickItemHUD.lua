---@meta

---@class UUI_BP_QuickItemHUD_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Deactivate UWidgetAnimation
---@field Activate UWidgetAnimation
---@field NewItemSelected UWidgetAnimation
---@field ActiveFlames UImage
---@field ActiveGlow UImage
---@field ActiveHighlight UCanvasPanel
---@field ActiveSparks UPhoenixImage
---@field Count UOverlay
---@field ItemButtonText UPhoenixRichTextBlock
---@field ItemCountText UPhoenixTextBlock
---@field ItemIcon UImage
---@field itemMeter UImage
---@field ItemPanel UCanvasPanel
---@field UsageCount UOverlay
---@field UsageCountText UPhoenixTextBlock
---@field ItemPickupLocks TArray<FName>
---@field TimerActive boolean
---@field potionDuration float
---@field PotionColorMap TMap<FName, FSlateColor>
---@field DefaultHighlightColor FSlateColor
---@field SelectedItemName FName
---@field OnFocusPotionApplied FUI_BP_QuickItemHUD_COnFocusPotionApplied
---@field OnFocusPotionExpired FUI_BP_QuickItemHUD_COnFocusPotionExpired
local UUI_BP_QuickItemHUD_C = {}

function UUI_BP_QuickItemHUD_C:FocusPotionExpired() end
---@param PotionID FName
function UUI_BP_QuickItemHUD_C:SetHighlightColor(PotionID) end
---@param ACTIVE boolean
---@param ShowAnimation boolean
---@param ForceOperation boolean
function UUI_BP_QuickItemHUD_C:SetTimerActive(ACTIVE, ShowAnimation, ForceOperation) end
---@param ItemName FName
function UUI_BP_QuickItemHUD_C:UpdatePlantUsageCount(ItemName) end
---@param PotionName FName
function UUI_BP_QuickItemHUD_C:ResetTimer(PotionName) end
---@param ItemName FName
function UUI_BP_QuickItemHUD_C:ActivateTimer(ItemName) end
UUI_BP_QuickItemHUD_C['Update Fill Meter'] = function(self, ) end
UUI_BP_QuickItemHUD_C['Set Item Panel Visibility'] = function(self, ) end
---@param ItemName FName
function UUI_BP_QuickItemHUD_C:SetItemCount(ItemName) end
---@param ItemName FName
function UUI_BP_QuickItemHUD_C:SetItem(ItemName) end
---@param Caller UObject
---@param String FName
function UUI_BP_QuickItemHUD_C:AbilityAdded(Caller, String) end
---@param Caller UObject
---@param String FName
function UUI_BP_QuickItemHUD_C:WheelItemSelected(Caller, String) end
---@param Caller UObject
---@param Lock FLockManagerLock
function UUI_BP_QuickItemHUD_C:WheelItemUnlocked(Caller, Lock) end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_QuickItemHUD_C:ItemIconLoaded(LoadedTexture, CallbackParam) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_QuickItemHUD_C:Tick(MyGeometry, InDeltaTime) end
---@param IsDesignTime boolean
function UUI_BP_QuickItemHUD_C:PreConstruct(IsDesignTime) end
function UUI_BP_QuickItemHUD_C:Construct() end
---@param Caller UObject
---@param InventoryResult FInventoryResult
function UUI_BP_QuickItemHUD_C:PlayerInventoryChanged(Caller, InventoryResult) end
---@param Caller UObject
---@param String FName
function UUI_BP_QuickItemHUD_C:QuickItemUsed(Caller, String) end
---@param Caller UObject
---@param int int32
function UUI_BP_QuickItemHUD_C:ShowButtonGraphicsFlagChanged(Caller, int) end
---@param Caller UObject
function UUI_BP_QuickItemHUD_C:PlayerPlantCountChanged(Caller) end
function UUI_BP_QuickItemHUD_C:PostLoadPlayerSpawn() end
---@param Caller UObject
function UUI_BP_QuickItemHUD_C:RestartChallenge(Caller) end
---@param EntryPoint int32
function UUI_BP_QuickItemHUD_C:ExecuteUbergraph_UI_BP_QuickItemHUD(EntryPoint) end
function UUI_BP_QuickItemHUD_C:OnFocusPotionExpired__DelegateSignature() end
function UUI_BP_QuickItemHUD_C:OnFocusPotionApplied__DelegateSignature() end


