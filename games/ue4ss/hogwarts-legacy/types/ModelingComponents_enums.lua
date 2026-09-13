---@enum EBaseCreateFromSelectedTargetType
local EBaseCreateFromSelectedTargetType = {
    NewAsset = 0,
    FirstInputAsset = 1,
    LastInputAsset = 2,
    EBaseCreateFromSelectedTargetType_MAX = 3,
}

---@enum EDynamicMeshTangentCalcType
local EDynamicMeshTangentCalcType = {
    NoTangents = 0,
    AutoCalculated = 1,
    ExternallyCalculated = 2,
    EDynamicMeshTangentCalcType_MAX = 3,
}

---@enum EHandleSourcesMethod
local EHandleSourcesMethod = {
    DeleteSources = 0,
    HideSources = 1,
    KeepSources = 2,
    EHandleSourcesMethod_MAX = 3,
}

---@enum EMultiTransformerMode
local EMultiTransformerMode = {
    DefaultGizmo = 1,
    QuickAxisTranslation = 2,
    EMultiTransformerMode_MAX = 3,
}

---@enum ESpaceCurveControlPointFalloffType
local ESpaceCurveControlPointFalloffType = {
    Linear = 0,
    Smooth = 1,
    ESpaceCurveControlPointFalloffType_MAX = 2,
}

---@enum ESpaceCurveControlPointOriginMode
local ESpaceCurveControlPointOriginMode = {
    Shared = 0,
    First = 1,
    Last = 2,
    ESpaceCurveControlPointOriginMode_MAX = 3,
}

---@enum ESpaceCurveControlPointTransformMode
local ESpaceCurveControlPointTransformMode = {
    Shared = 0,
    PerVertex = 1,
    ESpaceCurveControlPointTransformMode_MAX = 2,
}

---@enum EUVLayoutPreviewSide
local EUVLayoutPreviewSide = {
    Left = 0,
    Right = 1,
    EUVLayoutPreviewSide_MAX = 2,
}

