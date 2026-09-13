---@meta

---@class UBTT_Biped_StealthBlink_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field invulnerableTime float
---@field IKRestoreState boolean
---@field ShadowParticleEmitter UParticleSystemComponent
---@field Victim AActor
local UBTT_Biped_StealthBlink_C = {}

function UBTT_Biped_StealthBlink_C:DestroyShadowBlinkFX() end
function UBTT_Biped_StealthBlink_C:CreateShadowBlinkFX() end
---@param Falling boolean
function UBTT_Biped_StealthBlink_C:FallingTest(Falling) end
---@param OwnerActor AActor
function UBTT_Biped_StealthBlink_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_StealthBlink_C:ReceiveExecute(OwnerActor) end
function UBTT_Biped_StealthBlink_C:StealthBlinkTimerExpired() end
---@param EntryPoint int32
function UBTT_Biped_StealthBlink_C:ExecuteUbergraph_BTT_Biped_StealthBlink(EntryPoint) end


