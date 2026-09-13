---@meta

---@class UUI_BP_CreatureCallout_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Border_AlbinoColour UBorder
---@field Border_GenderColor UBorder
---@field Creature_AlbinoIcon UImage
---@field Creature_GenderIcon UImage
---@field CreaturePanel UHorizontalBox
---@field CreatureStatusSummary UUI_BP_CreatureStatusSummary_C
---@field EnemyLevelTriangle UImage
---@field HealthBar UProgressBar
---@field HealthBorder UBorder
---@field LevelText UPhoenixTextBlock
---@field nameBorder UBorder
---@field nameBox UHorizontalBox
---@field NPCStatus_Bottom UCanvasPanel
---@field npcStatusBorder UBorder
---@field TargetName_Label UPhoenixTextBlock
---@field ParentActor AActor
---@field ['Hide bar when full'] boolean
---@field bHasSetCreatureName boolean
---@field NurtureComponent UCreature_NurtureComponent
---@field CreatureState UCreatureState
---@field CreatureCharacter AActor
---@field Allies boolean
---@field ForceHideBar boolean
---@field ObjectStateInfo UObjectStateInfo
local UUI_BP_CreatureCallout_C = {}

---@return UWidget
function UUI_BP_CreatureCallout_C:GetOffscreenIndicator() end
---@param OutroType int32
---@return float
function UUI_BP_CreatureCallout_C:GetOutroDuration(OutroType) end
---@param Creature ACreature_Character
---@param bIsTame boolean
function UUI_BP_CreatureCallout_C:IsCreatureTame(Creature, bIsTame) end
---@param HealthPercent float
---@param DamageAmount float
function UUI_BP_CreatureCallout_C:UpdateBarPercent(HealthPercent, DamageAmount) end
function UUI_BP_CreatureCallout_C:targeted() end
---@param CreatureCharacterActor AActor
function UUI_BP_CreatureCallout_C:SetupCreatureSpecificUIWild(CreatureCharacterActor) end
---@param CreatureState UCreatureState
function UUI_BP_CreatureCallout_C:UpdateCreatureSpecificUI(CreatureState) end
---@param CreatureCharacterActor AActor
function UUI_BP_CreatureCallout_C:SetupCreatureSpecificUI(CreatureCharacterActor) end
---@param IsVisible boolean
function UUI_BP_CreatureCallout_C:SetCalloutVisibility(IsVisible) end
---@param Revealio boolean
function UUI_BP_CreatureCallout_C:AttackThreatDataChange(Revealio) end
---@param bFromUpdate boolean
function UUI_BP_CreatureCallout_C:AwareStateInfoChanged(bFromUpdate) end
---@param HasOffscreenProxy boolean
function UUI_BP_CreatureCallout_C:SetHasOffscreenProxyActive(HasOffscreenProxy) end
---@param IsOffscreen boolean
function UUI_BP_CreatureCallout_C:SetIsOffscreenCallout(IsOffscreen) end
---@param CharacterID FName
---@param BarPercent float
function UUI_BP_CreatureCallout_C:UpdateCallOutUI(CharacterID, BarPercent) end
---@param Parent AActor
---@param CallOutComponent UCallOutComponent
function UUI_BP_CreatureCallout_C:SetupWidget(Parent, CallOutComponent) end
---@param Revealio boolean
function UUI_BP_CreatureCallout_C:ShowWidget(Revealio) end
---@param CreatureActor AActor
---@param IsTamed boolean
function UUI_BP_CreatureCallout_C:SetupCreatureUI(CreatureActor, IsTamed) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_CreatureCallout_C:Tick(MyGeometry, InDeltaTime) end
---@param Target AActor
---@param InHealthChange float
---@param IndicateHUD boolean
function UUI_BP_CreatureCallout_C:HealthBarUpdate(Target, InHealthChange, IndicateHUD) end
---@param EntryPoint int32
function UUI_BP_CreatureCallout_C:ExecuteUbergraph_UI_BP_CreatureCallout(EntryPoint) end


