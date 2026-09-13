---@meta

---@class UUI_BP_NPCHealthMeter_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeOut UWidgetAnimation
---@field DeathFadeOut UWidgetAnimation
---@field OffsetHealthbarReset UWidgetAnimation
---@field OffsetHealthbar UWidgetAnimation
---@field FadeIn UWidgetAnimation
---@field Albino UImage
---@field Bg UPhoenixImage
---@field CreatureGender UImage
---@field CreatureStatus UUI_BP_CreatureStatusSummary_C
---@field DamageBar UProgressBar
---@field InvalidationBoxNPCHealthMeter UInvalidationBox
---@field Level UPhoenixTextBlock
---@field LevelBox UImage
---@field Poof1 UPhoenixImage
---@field Poof2 UPhoenixImage
---@field Poof3 UPhoenixImage
---@field Poof4 UPhoenixImage
---@field Poof5 UPhoenixImage
---@field Poof6 UPhoenixImage
---@field Poof7 UPhoenixImage
---@field Poof8 UPhoenixImage
---@field Poof9 UPhoenixImage
---@field Spacer UPhoenixImage
---@field Swirls UImage
---@field Swirls2 UImage
---@field TargetCallout UBorder
---@field TargetCalloutVerticalBox UVerticalBox
---@field targetHealth UCanvasPanel
---@field targetHealthBar UProgressBar
---@field TargetLevel UCanvasPanel
---@field TargetName UPhoenixTextBlock
---@field CurrentTargetActor AActor
---@field PlayingDeathFadeOut boolean
---@field FadeOutDelay float
---@field ShouldShowHealth boolean
---@field ShouldShowName boolean
---@field LastTargetActor AActor
---@field DesiredFadeState boolean
---@field CurrentFadeState boolean
---@field FadeOutRequested boolean
local UUI_BP_NPCHealthMeter_C = {}

function UUI_BP_NPCHealthMeter_C:CheckForNewTarget() end
---@param FadeIn boolean
function UUI_BP_NPCHealthMeter_C:PlayFadeAnimation(FadeIn) end
---@param Level float
function UUI_BP_NPCHealthMeter_C:SetLevelTextColor(Level) end
function UUI_BP_NPCHealthMeter_C:RemoveStealthDamageIndication() end
---@param InStealthRange boolean
function UUI_BP_NPCHealthMeter_C:UpdateStealthKillStatus(InStealthRange) end
---@param HealthBarType EUIHealthBarType
function UUI_BP_NPCHealthMeter_C:SetHealthBarColor(HealthBarType) end
---@param TargetActor AActor
---@param ShowName boolean
---@param ShowHealth boolean
function UUI_BP_NPCHealthMeter_C:SetCurrentTargetActor(TargetActor, ShowName, ShowHealth) end
---@param Target AActor
---@param Health float
---@param Not_sure boolean
function UUI_BP_NPCHealthMeter_C:HealthChanged(Target, Health, Not_sure) end
---@param InCreature AActor
function UUI_BP_NPCHealthMeter_C:CreatureInfo(InCreature) end
---@param NurtureComponent UCreature_NurtureComponent
function UUI_BP_NPCHealthMeter_C:SetupWildCreature(NurtureComponent) end
---@param CreatureState UCreatureState
function UUI_BP_NPCHealthMeter_C:SetupTamedCreature(CreatureState) end
---@param Target AActor
---@param ShowName boolean
---@param ShowHealthBar boolean
function UUI_BP_NPCHealthMeter_C:UpdateTarget(Target, ShowName, ShowHealthBar) end
---@param IsDesignTime boolean
function UUI_BP_NPCHealthMeter_C:PreConstruct(IsDesignTime) end
function UUI_BP_NPCHealthMeter_C:Construct() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_NPCHealthMeter_C:Tick(MyGeometry, InDeltaTime) end
---@param Caller UObject
function UUI_BP_NPCHealthMeter_C:SetDummyHealthBarColor(Caller) end
---@param Caller UObject
function UUI_BP_NPCHealthMeter_C:RestoreEnemyHealthBarColor(Caller) end
---@param Target AActor
function UUI_BP_NPCHealthMeter_C:TargetAcquired(Target) end
function UUI_BP_NPCHealthMeter_C:TargetLost() end
---@param Caller UObject
---@param int int32
function UUI_BP_NPCHealthMeter_C:CanStealthKill(Caller, int) end
function UUI_BP_NPCHealthMeter_C:WidgetAnimationEvt_DeathFadeOut_K2Node_WidgetAnimationEvent_0() end
---@param Caller UObject
---@param int int32
function UUI_BP_NPCHealthMeter_C:SetColorBlindMode(Caller, int) end
UUI_BP_NPCHealthMeter_C['On FadeOut Complete'] = function(self, ) end
---@param EntryPoint int32
function UUI_BP_NPCHealthMeter_C:ExecuteUbergraph_UI_BP_NPCHealthMeter(EntryPoint) end


