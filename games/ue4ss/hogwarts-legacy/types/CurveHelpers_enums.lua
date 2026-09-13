---@enum ESampleTextureToColorNormalizeMode
local ESampleTextureToColorNormalizeMode = {
    Intensity = 0,
    Luminance = 1,
    LuminanceBT709 = 2,
    LuminanceRMY = 3,
    LuminanceYIQ = 4,
    LuminanceATM = 5,
    Magnitude = 6,
    MagnitudeRG = 7,
    MagnitudeGB = 8,
    MagnitudeRB = 9,
    RedComponent = 10,
    GreenComponent = 11,
    BlueComponent = 12,
    MaxComponent = 13,
    ESampleTextureToColorNormalizeMode_MAX = 14,
}

---@enum ESampleTextureToCurveAlphaChannel
local ESampleTextureToCurveAlphaChannel = {
    TextureAlpha = 0,
    FixedAlpha = 1,
    AlphaIsOne = 2,
    AlphaIsZero = 3,
    AlphaIsIntensity = 4,
    ESampleTextureToCurveAlphaChannel_MAX = 5,
}

---@enum ESampleTextureToCurveType
local ESampleTextureToCurveType = {
    SampleAlongU = 0,
    SampleAlongV = 1,
    ESampleTextureToCurveType_MAX = 2,
}

