---@enum EHoudiniHandleType
local EHoudiniHandleType = {
    Xform = 0,
    Bounder = 1,
    Unsupported = 2,
    EHoudiniHandleType_MAX = 3,
}

---@enum EHoudiniRuntimeSettingsAxisImport
local EHoudiniRuntimeSettingsAxisImport = {
    HRSAI_Unreal = 0,
    HRSAI_Houdini = 1,
    HRSAI_MAX = 2,
}

---@enum EHoudiniRuntimeSettingsRecomputeFlag
local EHoudiniRuntimeSettingsRecomputeFlag = {
    HRSRF_Always = 0,
    HRSRF_OnlyIfMissing = 1,
    HRSRF_Nothing = 2,
    HRSRF_MAX = 3,
}

---@enum EHoudiniRuntimeSettingsSessionType
local EHoudiniRuntimeSettingsSessionType = {
    HRSST_InProcess = 0,
    HRSST_Socket = 1,
    HRSST_NamedPipe = 2,
    HRSST_MAX = 3,
}

---@enum EHoudiniToolSelectionType
local EHoudiniToolSelectionType = {
    HTOOL_SELECTION_ALL = 0,
    HTOOL_SELECTION_WORLD_ONLY = 1,
    HTOOL_SELECTION_CB_ONLY = 2,
    HTOOL_SELECTION_MAX = 3,
}

---@enum EHoudiniToolType
local EHoudiniToolType = {
    HTOOLTYPE_GENERATOR = 0,
    HTOOLTYPE_OPERATOR_SINGLE = 1,
    HTOOLTYPE_OPERATOR_MULTI = 2,
    HTOOLTYPE_OPERATOR_BATCH = 3,
    HTOOLTYPE_MAX = 4,
}

---@enum EHoudiniVertexAttributeDataType
local EHoudiniVertexAttributeDataType = {
    VADT_Float = 0,
    VADT_Int32 = 1,
    VADT_Bool = 2,
    VADT_MAX = 3,
}

