---@enum ELocalStencilBoundsHintMode
local ELocalStencilBoundsHintMode = {
    Override = 0,
    Maximum = 1,
    Minimum = 2,
    ELocalStencilBoundsHintMode_MAX = 3,
}

---@enum ELocalStencilBoundsMethod
local ELocalStencilBoundsMethod = {
    Default = 0,
    Local = 1,
    World = 2,
    ELocalStencilBoundsMethod_MAX = 3,
}

---@enum ELocalStencilMaterialMode
local ELocalStencilMaterialMode = {
    Default = 0,
    DefaultMID = 1,
    Custom = 2,
    CustomMID = 3,
    ELocalStencilMaterialMode_MAX = 4,
}

---@enum EStencilFilterPrimitiveMatchMode
local EStencilFilterPrimitiveMatchMode = {
    Exact = 0,
    SubStringCaseSensitve = 1,
    SubStringIgnoreCase = 2,
    EStencilFilterPrimitiveMatchMode_MAX = 3,
}

---@enum EStencilManagerEffectPriority
local EStencilManagerEffectPriority = {
    AlwaysInterrupt = 0,
    Low = 1,
    BelowNormal = 2,
    Normal = 3,
    AboveNormal = 4,
    High = 5,
    VeryHigh = 6,
    NeverInterrupt = 7,
    EStencilManagerEffectPriority_MAX = 8,
}

---@enum EStencilManagerPreferredEffect
local EStencilManagerPreferredEffect = {
    LocalDepthFX = 0,
    SkinFX = 1,
    EStencilManagerPreferredEffect_MAX = 2,
}

---@enum EStencilRule
local EStencilRule = {
    DoNotStencil = 0,
    OnlyStencil = 1,
    EStencilRule_MAX = 2,
}

---@enum EStencilRulesTypeMode
local EStencilRulesTypeMode = {
    Default = 0,
    OnlySwap = 1,
    NeverSwap = 2,
    EStencilRulesTypeMode_MAX = 3,
}

---@enum EStencilTagRule
local EStencilTagRule = {
    DoNotStencil = 0,
    StencilOnly = 1,
    ConditionalStencil = 2,
    ShowOnStencil = 3,
    HideOnStencil = 4,
    EStencilTagRule_MAX = 5,
}

---@enum EStencilValueRenderCustomDepthRule
local EStencilValueRenderCustomDepthRule = {
    DoNotStencil = 0,
    OnlyStencil = 1,
    EStencilValueRenderCustomDepthRule_MAX = 2,
}

