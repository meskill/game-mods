---@enum EAimAtAxisType
local EAimAtAxisType = {
    Up = 0,
    Down = 1,
    Forward = 2,
    Backward = 3,
    Right = 4,
    Left = 5,
    EAimAtAxisType_MAX = 6,
}

---@enum ECommandForType
local ECommandForType = {
    Speaker = 0,
    Listener = 1,
    Both = 2,
    ECommandForType_MAX = 3,
}

---@enum ECommandLookAtType
local ECommandLookAtType = {
    Speaker = 0,
    Listener = 1,
    ECommandLookAtType_MAX = 2,
}

---@enum EFT_TriggerType
local EFT_TriggerType = {
    All = 0,
    SceneRig = 1,
    StoryGraph = 2,
    EFT_MAX = 3,
}

---@enum EFadeType
local EFadeType = {
    FadeIn = 0,
    FadeOut = 1,
    HoldFade = 2,
    Manual = 3,
    EFadeType_MAX = 4,
}

---@enum EFloatMultiChannelNoiseWaveform
local EFloatMultiChannelNoiseWaveform = {
    CosineWave = 0,
    SineWave = 1,
    PerlinNoise = 2,
    EFloatMultiChannelNoiseWaveform_MAX = 3,
}

---@enum ELipsyncFlags
local ELipsyncFlags = {
    NoLipsync = 0,
    Lipsync = 1,
    MouthOnlyLipsyncLocalizedLanguages = 2,
    MouthOnlyLipsync = 3,
    ELipsyncFlags_MAX = 4,
}

---@enum EManagedCameraPriority
local EManagedCameraPriority = {
    Lowest = 0,
    PassiveCinematic = 1,
    ActiveCinematic = 2,
    Highest = 3,
    EManagedCameraPriority_MAX = 4,
}

---@enum EParticleSystemActivation
local EParticleSystemActivation = {
    Activate = 0,
    Deactivate = 1,
    ActivateAndDeactivate = 2,
    EParticleSystemActivation_MAX = 3,
}

---@enum ERestoreFade
local ERestoreFade = {
    Never = 0,
    EndOfAction = 1,
    EndOfSceneRig = 2,
    ERestoreFade_MAX = 3,
}

---@enum ESceneAction_AnimateCurves_BlendMode
local ESceneAction_AnimateCurves_BlendMode = {
    Replace = 0,
    Multiply = 1,
    Additive = 2,
    ESceneAction_AnimateCurves_MAX = 3,
}

---@enum ESceneAction_AnimateCurves_FillMode
local ESceneAction_AnimateCurves_FillMode = {
    Stretch = 0,
    Hold = 1,
    Repeat = 2,
    ESceneAction_AnimateCurves_MAX = 3,
}

---@enum ESceneAction_CameraResetType
local ESceneAction_CameraResetType = {
    NoReset = 0,
    BehindAvatar = 1,
    CurrentCameraDirection = 2,
    CurrentCameraYawAndDefaultPitch = 3,
    LookAtLocation = 4,
    ESceneAction_MAX = 5,
}

---@enum ESceneAction_ClothingTeleportMode
local ESceneAction_ClothingTeleportMode = {
    None = 0,
    Teleport = 1,
    TeleportAndReset = 2,
    ESceneAction_MAX = 3,
}

---@enum ESceneAction_LookAtPriority
local ESceneAction_LookAtPriority = {
    Lowest = 0,
    Passive = 1,
    Active = 2,
    Highest = 3,
    ESceneAction_MAX = 4,
}

---@enum ESceneAction_PlaySceneRigInitializeType
local ESceneAction_PlaySceneRigInitializeType = {
    OnStartOfSceneRig = 0,
    OnStartOfAction = 1,
    ESceneAction_MAX = 2,
}

---@enum ESceneParameterChangeRequestType
local ESceneParameterChangeRequestType = {
    String = 0,
    Bool = 1,
    Float = 2,
    Object = 3,
    Int = 4,
    Transform = 5,
    ESceneParameterChangeRequestType_MAX = 6,
}

---@enum ESceneRigAnimationPlaybackRange
local ESceneRigAnimationPlaybackRange = {
    FullClipRange = 0,
    StartEndOffsets = 1,
    StartEndFractions = 2,
    StartOffsetWithDuration = 3,
    ESceneRigAnimationPlaybackRange_MAX = 4,
}

---@enum ESceneRigAnimationPlaybackSpeed
local ESceneRigAnimationPlaybackSpeed = {
    NaturalSpeed = 0,
    FillActionDuration = 1,
    UseSpeedMultiplier = 2,
    ESceneRigAnimationPlaybackSpeed_MAX = 3,
}

---@enum ESceneRigAnimationRootBlendMode
local ESceneRigAnimationRootBlendMode = {
    BlendRootWithAnimation = 0,
    DoNotBlendRoot = 1,
    ESceneRigAnimationRootBlendMode_MAX = 2,
}

---@enum ESceneRigAnimationTrackConstraintMode
local ESceneRigAnimationTrackConstraintMode = {
    ConstrainComponent = 0,
    ConstrainActor = 1,
    ESceneRigAnimationTrackConstraintMode_MAX = 2,
}

---@enum ESceneRigCameraAttachment
local ESceneRigCameraAttachment = {
    Stage_Root = 0,
    Avatar_Head = 1,
    A1_Head = 2,
    A2_Head = 3,
    B1_Head = 4,
    B2_Head = 5,
    ESceneRigCameraAttachment_MAX = 6,
}

---@enum ESceneRigCameraProxyActor_ValidCameraType
local ESceneRigCameraProxyActor_ValidCameraType = {
    CheckObstructions = 0,
    AlwaysValid = 1,
    AlwaysInValid = 2,
    ESceneRigCameraProxyActor_MAX = 3,
}

---@enum ESceneRigPreparingToInitializePhase
local ESceneRigPreparingToInitializePhase = {
    Uninitialized = 0,
    WorldTransitioning = 1,
    RequestingRequiredLevels = 2,
    LoadingRequiredLevels = 3,
    WaitingToCompleteStreaming = 4,
    WaitingForLoadingDependencies = 5,
    PreparedToInitialize = 6,
    ESceneRigPreparingToInitializePhase_MAX = 7,
}

---@enum ESceneRigProxyActor_PlatformHide
local ESceneRigProxyActor_PlatformHide = {
    None = 0,
    SwitchOnly = 1,
    LastGenAndSwitch = 2,
    ESceneRigProxyActor_MAX = 3,
}

---@enum ESceneRigStageRoleType
local ESceneRigStageRoleType = {
    NONE = 0,
    Foreground = 1,
    Background = 2,
    Extra = 3,
    Prop = 4,
    ESceneRigStageRoleType_MAX = 5,
}

---@enum EStoryGraphActorDependencies
local EStoryGraphActorDependencies = {
    WaitingForCurtain = 1,
    WaitingForAmbient = 2,
    EStoryGraphActorDependencies_MAX = 3,
}

---@enum EStoryGraphActorState
local EStoryGraphActorState = {
    StoryNotStarted = 0,
    StoryReadyToStart = 1,
    StoryPlaying = 2,
    StoryFinished = 3,
    EStoryGraphActorState_MAX = 4,
}

