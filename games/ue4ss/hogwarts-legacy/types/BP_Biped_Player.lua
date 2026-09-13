---@meta

---@class ABP_Biped_Player_C : ABiped_Player
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OverlapAudio UOverlapAudioComponent
---@field WaterInteraction UWaterInteractionComponent
---@field OdcRepulsor UExtendedOdcRepulsorComponent
---@field CameraStack UCameraStackComponent
---@field PhysicalAnimation UPhysicalAnimationComponent
---@field PlayerPerceptionPoint UBP_PlayerPerceptionPoint_C
---@field DebugWidget UWidget_DebugHUD_C
---@field InGameMenuReference UObject
---@field cloakVis boolean
---@field jacketMAT UMaterialInstanceDynamic
---@field TestingAsync boolean
---@field DynamicLightRigClass TSubclassOf<ABP_Avatar_Dynamic_LightRig_C>
---@field DynamicLightRig ADynamicCharacterLightRig
---@field IsAttacking boolean
---@field ChainAttack boolean
---@field Combo int32
---@field Combo_AllMontage UAnimMontage
---@field LandscapeDebugActive boolean
---@field LandscapeLogTimer FTimerHandle
---@field Disable_alt_cast boolean
---@field R3Pressed boolean
---@field L2Pressed boolean
---@field R1Pressed boolean
local ABP_Biped_Player_C = {}

---@param Attach_The_Light_Rig boolean
function ABP_Biped_Player_C:AttachLightRig(Attach_The_Light_Rig) end
function ABP_Biped_Player_C:SetupDamageEffect() end
function ABP_Biped_Player_C:UpdateDebugHUD() end
---@param Key FKey
function ABP_Biped_Player_C:InpActEvt_CM_GamePad_LeftTrigger_K2Node_InputActionEvent_6(Key) end
---@param Key FKey
function ABP_Biped_Player_C:InpActEvt_CM_GamePad_LeftTrigger_K2Node_InputActionEvent_5(Key) end
---@param Key FKey
function ABP_Biped_Player_C:InpActEvt_CM_GamePad_RightShoulder_K2Node_InputActionEvent_4(Key) end
---@param Key FKey
function ABP_Biped_Player_C:InpActEvt_CM_GamePad_RightShoulder_K2Node_InputActionEvent_3(Key) end
---@param Key FKey
function ABP_Biped_Player_C:InpActEvt_CM_GamePad_ThumbStickButtonRIght_K2Node_InputActionEvent_2(Key) end
---@param Key FKey
function ABP_Biped_Player_C:InpActEvt_CM_GamePad_ThumbStickButtonRIght_K2Node_InputActionEvent_1(Key) end
---@param Key FKey
function ABP_Biped_Player_C:InpActEvt_CM_GamePad_DpadUp_K2Node_InputActionEvent_0(Key) end
---@param SourceID FString
---@param SlotNo int32
---@param Ticks float
function ABP_Biped_Player_C:OnBuffStatusApplied(SourceID, SlotNo, Ticks) end
---@param SourceID FString
---@param SlotNo int32
function ABP_Biped_Player_C:OnBuffStatusRemoved(SourceID, SlotNo) end
function ABP_Biped_Player_C:DisableDebug() end
function ABP_Biped_Player_C:EnableDebug() end
ABP_Biped_Player_C['Toggle Debug'] = function(self, ) end
function ABP_Biped_Player_C:ReceiveBeginPlay() end
function ABP_Biped_Player_C:ExitComplete() end
---@param InStationComponent UStationComponent
function ABP_Biped_Player_C:StationStoryEndedWithoutConsent(InStationComponent) end
---@param EntryPoint int32
function ABP_Biped_Player_C:ExecuteUbergraph_BP_Biped_Player(EntryPoint) end


