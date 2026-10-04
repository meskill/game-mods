---@meta

---@class UUI_BP_EnemyCallout_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Outro_SparksTime UWidgetAnimation
---@field Outro_Erode UWidgetAnimation
---@field Outro_Normal UWidgetAnimation
---@field Intro UWidgetAnimation
---@field EmbersCard UImage
---@field EnemyLevelTriangle UImage
---@field EnemyLevelTriangleShadow UImage
---@field ErosionEffect URetainerBox
---@field FancyHealthBar UUI_BP_FancyEnemyHealthBar_C
---@field FrameMain UOverlay
---@field LevelText UPhoenixTextBlock
---@field nameBox UHorizontalBox
---@field NPCStatus_Level UOverlay
---@field TargetName_Label UPhoenixTextBlock
---@field ObjectStateInfo UObjectStateInfo
---@field NPC_Character ANPC_Character
---@field IntroCurve FRuntimeFloatCurve
---@field OutroCurve FRuntimeFloatCurve
---@field ErosionMaterial UMaterialInstanceDynamic
local UUI_BP_EnemyCallout_C = {}

---@return UWidget
function UUI_BP_EnemyCallout_C:GetOffscreenIndicator() end
---@param OutroType int32
---@return float
function UUI_BP_EnemyCallout_C:GetOutroDuration(OutroType) end
---@param NPC_Character ANPC_Character
UUI_BP_EnemyCallout_C['NPC Character State Setup'] = function(self, NPC_Character) end
---@param Target AActor
---@param InHealthChange float
---@param IndicateHUD boolean
function UUI_BP_EnemyCallout_C:HealthChanged(Target, InHealthChange, IndicateHUD) end
---@param Revealio boolean
function UUI_BP_EnemyCallout_C:ShowWidget(Revealio) end
---@param Parent AActor
---@param CallOutComponent UCallOutComponent
function UUI_BP_EnemyCallout_C:SetupWidget(Parent, CallOutComponent) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_EnemyCallout_C:Tick(MyGeometry, InDeltaTime) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_EnemyCallout_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_EnemyCallout_C:OnOutroStarted(OutroType, OutroDuration) end
function UUI_BP_EnemyCallout_C:Construct() end
---@param CharacterID FName
---@param BarPercent float
function UUI_BP_EnemyCallout_C:UpdateCallOutUI(CharacterID, BarPercent) end
---@param IsOffscreen boolean
function UUI_BP_EnemyCallout_C:SetIsOffscreenCallout(IsOffscreen) end
---@param HasOffscreenProxy boolean
function UUI_BP_EnemyCallout_C:SetHasOffscreenProxyActive(HasOffscreenProxy) end
---@param bFromUpdate boolean
function UUI_BP_EnemyCallout_C:AwareStateInfoChanged(bFromUpdate) end
---@param Revealio boolean
function UUI_BP_EnemyCallout_C:AttackThreatDataChange(Revealio) end
---@param EntryPoint int32
function UUI_BP_EnemyCallout_C:ExecuteUbergraph_UI_BP_EnemyCallout(EntryPoint) end


