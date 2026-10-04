---@enum ENiagaraMaterialDriverParameterType
local ENiagaraMaterialDriverParameterType = {
    Scalar = 0,
    Vector2 = 1,
    Vector = 2,
    Vector4 = 3,
    LinearColor = 4,
    Quaternion = 5,
    QuaternionForward = 6,
    QuaternionUp = 7,
    QuaternionRight = 8,
    UniformScale = 9,
    RelativePosition = 10,
    DirectionTo = 11,
    ENiagaraMaterialDriverParameterType_MAX = 12,
}

---@enum ESkinFXAutoTriggerDelegateEvent
local ESkinFXAutoTriggerDelegateEvent = {
    Event_Start = 0,
    Event_Stop = 1,
    Event_MAX = 2,
}

---@enum ESkinFXColorConvert
local ESkinFXColorConvert = {
    None = 0,
    CLAMP = 1,
    QUANTIZE = 2,
    FROMHSB = 3,
    XYZ = 4,
    XYZW = 5,
    XY = 6,
    XYZWPAIR = 7,
    PYRFORWARD = 8,
    PYRUP = 9,
    PYRRIGHT = 10,
    RANGLE = 11,
    RGANGLE = 12,
    ESkinFXColorConvert_MAX = 13,
}

---@enum ESkinFXComponentAutoStartState
local ESkinFXComponentAutoStartState = {
    WaitingToStart = 0,
    Running = 1,
    Done = 2,
    ESkinFXComponentAutoStartState_MAX = 3,
}

---@enum ESkinFXDelegateEvent
local ESkinFXDelegateEvent = {
    Event_Start = 0,
    Event_Restart = 1,
    Event_Finish = 2,
    Envelope_StartAttack = 3,
    Envelope_FirstEnterSustain = 4,
    Envelope_LoopSustain = 5,
    Envelope_BeginRelease = 6,
    Envelope_EndRelease = 7,
    EndCalled_Immediately = 8,
    EndCalled_JumpToRelease = 9,
    EndCalled_EndSustainHold = 10,
    ESkinFXDelegateEvent_MAX = 11,
}

---@enum ESkinFXEffectEndStyle
local ESkinFXEffectEndStyle = {
    Immediately = 0,
    JumpToRelease = 1,
    EndSustainHold = 2,
    ESkinFXEffectEndStyle_MAX = 3,
}

---@enum ESkinFXEffectPriority
local ESkinFXEffectPriority = {
    NeverInterrupt = 0,
    VeryHigh = 1,
    High = 2,
    Normal = 3,
    Low = 4,
    AlwaysInterrupt = 5,
    ESkinFXEffectPriority_MAX = 6,
}

---@enum ESkinFXEffectSwapType
local ESkinFXEffectSwapType = {
    UsePermutedMaterials = 0,
    InPlaceMIDs = 1,
    MaterialOverride = 2,
    ESkinFXEffectSwapType_MAX = 3,
}

---@enum ESkinFXEffectTimeSource
local ESkinFXEffectTimeSource = {
    Actor = 0,
    World = 1,
    ESkinFXEffectTimeSource_MAX = 2,
}

---@enum ESkinFXEnvelopeColorMod
local ESkinFXEnvelopeColorMod = {
    RGBONLY = 0,
    ALPHAONLY = 1,
    ALL = 2,
    ESkinFXEnvelopeColorMod_MAX = 3,
}

---@enum ESkinFXEnvelopeState
local ESkinFXEnvelopeState = {
    Done = 0,
    Attack = 1,
    Sustain = 2,
    Release = 3,
    InfiniteSustain = 4,
    ESkinFXEnvelopeState_MAX = 5,
}

---@enum ESkinFXFunctionModOp
local ESkinFXFunctionModOp = {
    Add = 0,
    Subtract = 1,
    Multiply = 2,
    Divide = 3,
    Mod = 4,
    Power = 5,
    Min = 6,
    Max = 7,
}

---@enum ESkinFXLocatorListPositionalSourceType
local ESkinFXLocatorListPositionalSourceType = {
    Bone = 0,
    Socket = 1,
    Impact = 2,
    ESkinFXLocatorListPositionalSourceType_MAX = 3,
}

---@enum ESkinFXMaterialOverrideType
local ESkinFXMaterialOverrideType = {
    UseMeshMaterials = 0,
    UseSingleOverride = 1,
    MatchedIndexOverride = 2,
    ESkinFXMaterialOverrideType_MAX = 3,
}

---@enum ESkinFXPreviewComponentSwapType
local ESkinFXPreviewComponentSwapType = {
    Regular = 0,
    AnimateDirectly = 1,
    ESkinFXPreviewComponentSwapType_MAX = 2,
}

---@enum ESkinFXPreviewType
local ESkinFXPreviewType = {
    StaticMesh = 0,
    SkeletalMesh = 1,
    ESkinFXPreviewType_MAX = 2,
}

---@enum ESkinFXSocketOutput
local ESkinFXSocketOutput = {
    SFXS_POSITION = 0,
    SFXS_VELOCITY = 1,
    SFXS_VELOCITYDIR = 2,
    SFXS_DIR = 3,
    SFXS_UP = 4,
    SFXS_RIGHT = 5,
    SFXS_SCALE3D = 6,
    SFXS_SCALARSPEED = 7,
    SFXS_SCALARSCALEU = 8,
    SFXS_MAX = 9,
}

---@enum ESkinFXSocketOutputAlphaPack
local ESkinFXSocketOutputAlphaPack = {
    SFXSAP_NONE = 0,
    SFXSAP_SPEED = 1,
    SFXSAP_SCALE = 2,
    SFXSAP_MAX = 3,
}

