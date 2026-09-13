---@meta

---@class ATool : AActor
---@field bUseEffectsOnTool boolean
---@field EffectsTimeIn float
---@field EffectsTimeOut float
---@field ActivateEffects TArray<UToolEffectData>
---@field DeactivateEffects TArray<UToolEffectData>
---@field AttachSocket FName
---@field EquipSfx UAkAudioEvent
---@field UnequipSfx UAkAudioEvent
---@field ToolEquipAction FBTCustomAction
local ATool = {}

---@return AActor
function ATool:GetUltimateOwner() end
---@return UToolRecord
function ATool:GetToolRecord() end
---@return UToolSetComponent
function ATool:GetOurToolSetComponent() end
function ATool:DeactivationFx() end
function ATool:DeactivationComplete() end
function ATool:BlueprintDeactivate() end
function ATool:BlueprintActivate() end
function ATool:ActivateFx() end


---@class FLEDFadeEffectProperty
---@field FadeTime float
---@field FadeToRGB FColor
local FLEDFadeEffectProperty = {}



---@class ULEDEffects : UActorComponent
---@field faders TArray<ULEDFadeEffect>
---@field BaseLEDFadeEffect ULEDFadeEffect
local ULEDEffects = {}

---@param ControllerId int32
---@param Color FColor
function ULEDEffects:SetColor(ControllerId, Color) end
---@param ControllerId int32
function ULEDEffects:ResetLED(ControllerId) end
function ULEDEffects:ResetAll() end
---@param Color FColor
---@return boolean
function ULEDEffects:GetActiveColor(Color) end


---@class ULEDFadeEffect : UObject
---@field FadeEffectProperties TArray<FLEDFadeEffectProperty>
---@field loop boolean
---@field SetOnEnd boolean
local ULEDFadeEffect = {}



---@class UToolAsset_Ammo : UDataAsset
---@field m_ammoUpgrade FString
---@field m_clipSize int32
---@field m_autoReload boolean
---@field m_reloadDelay float
---@field m_reloadSfx UAkAudioEvent
---@field m_reloadAnim UAnimMontage
---@field m_limitedAmmo boolean
---@field m_startingAmmo int32
---@field m_maxAmmo int32
---@field m_emptySfx UAkAudioEvent
local UToolAsset_Ammo = {}



---@class UToolEffectData : UDataAsset
---@field EffectType EToolEffectType
---@field GraphCurveFloat UCurveFloat
---@field BaseScale float
local UToolEffectData = {}



---@class UToolManager : UObject
---@field ToolList TArray<TWeakObjectPtr<ATool>>
local UToolManager = {}



---@class UToolRecord : UDataAsset
---@field LookupName FName
---@field LockName FName
---@field Contexts TArray<FInputContextWithType>
local UToolRecord = {}



---@class UToolSetComponent : UActorComponent
---@field ToolRecords TArray<UToolRecord>
---@field OnActiveToolChanged FToolSetComponentOnActiveToolChanged
---@field SpawnedToolsMap TMap<UToolRecord, ATool>
local UToolSetComponent = {}

---@param InTools TArray<UToolRecord>
---@param InPriority EStandardManagedPriority
---@param InProvider UObject
function UToolSetComponent:StartSettingWhitelistedTools(InTools, InPriority, InProvider) end
---@param InTools TArray<UToolRecord>
---@param InPriority EStandardManagedPriority
---@param InProvider UObject
function UToolSetComponent:StartSettingBlacklistedTools(InTools, InPriority, InProvider) end
---@param InOwnerMesh USceneComponent
function UToolSetComponent:SetAttachmentParent(InOwnerMesh) end
---@param Activated ATool
---@param Deactivated ATool
function UToolSetComponent:OnActiveToolChanged__DelegateSignature(Activated, Deactivated) end
---@param ToolRecord UToolRecord
---@return boolean
function UToolSetComponent:IsToolUsageAllowed(ToolRecord) end
---@return TArray<UToolRecord>
function UToolSetComponent:GetToolRecords() end
---@param ToolRecord UToolRecord
---@return int32
function UToolSetComponent:GetToolRecordIndex(ToolRecord) end
---@param Name FName
---@return UToolRecord
function UToolSetComponent:GetToolRecordByName(Name) end
---@return USceneComponent
function UToolSetComponent:GetAttachmentParent() end
---@return int32
function UToolSetComponent:GetActiveToolRecordIndex() end
---@return ATool
function UToolSetComponent:GetActiveTool() end
---@param InPriority EStandardManagedPriority
---@param InProvider UObject
function UToolSetComponent:FinishSettingWhitelistedTools(InPriority, InProvider) end
---@param InPriority EStandardManagedPriority
---@param InProvider UObject
function UToolSetComponent:FinishSettingBlacklistedTools(InPriority, InProvider) end
---@return ATool
function UToolSetComponent:ClearActiveTool() end
---@param Name FName
function UToolSetComponent:AsyncLoadToolByName(Name) end
---@param NewRecord UToolRecord
function UToolSetComponent:AddToolToRecords(NewRecord) end
---@param Name FName
---@return ATool
function UToolSetComponent:ActivateToolByName(Name) end
---@param ToolRecord UToolRecord
---@return ATool
function UToolSetComponent:ActivateTool(ToolRecord) end
---@param Tool ATool
---@return ATool
function UToolSetComponent:ActivateExistingTool(Tool) end


---@class UToolType : UActorComponent
---@field m_autoEquipTimeout float
local UToolType = {}



---@class UTriggerEffect : UObject
---@field TriggerMode TriggerModeEnum
---@field RightTrigger boolean
---@field LeftTrigger boolean
---@field WeaponStartPosition uint8
---@field WeaponEndPosition uint8
---@field WeaponStrength uint8
---@field VibrationPosition uint8
---@field VibrationFrequency uint8
---@field VibrationAmplitude uint8
---@field FeedbackPosition uint8
---@field FeedbackStrength uint8
local UTriggerEffect = {}

function UTriggerEffect:MarkForUpdate() end


---@class UTriggerEffectManager : UObject
---@field InactiveTriggerEffect UTriggerEffect
---@field TriggerEffectStack TArray<UTriggerEffect>
local UTriggerEffectManager = {}

function UTriggerEffectManager:ResumeTriggerEffects() end
function UTriggerEffectManager:PauseTriggerEffects() end
---@param TriggerEffect UTriggerEffect
---@param ControllerId int32
function UTriggerEffectManager:DeactivateTriggerEffect(TriggerEffect, ControllerId) end
---@param TriggerEffect UTriggerEffect
---@param ControllerId int32
function UTriggerEffectManager:ActivateTriggerEffect(TriggerEffect, ControllerId) end


