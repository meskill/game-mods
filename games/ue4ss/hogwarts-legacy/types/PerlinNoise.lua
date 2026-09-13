---@meta

---@class FNoiseImage
---@field NoiseData TArray<float>
---@field Width int32
---@field Height int32
---@field Min float
---@field Max float
---@field InverseDynamicRange float
local FNoiseImage = {}



---@class FNoiseParams
---@field Lumpiness float
---@field Amplitude float
---@field Seed float
---@field bTilable boolean
local FNoiseParams = {}



---@class FNoiseParams2D
---@field LumpinessX float
---@field LumpinessY float
---@field Amplitude float
---@field Seed float
---@field bTilable boolean
local FNoiseParams2D = {}



---@class FNoiseParams3D
---@field LumpinessX float
---@field LumpinessY float
---@field LumpinessZ float
---@field Amplitude float
---@field Seed float
---@field bTilable boolean
local FNoiseParams3D = {}



---@class FNoiseParams4D
---@field LumpinessX float
---@field LumpinessY float
---@field LumpinessZ float
---@field LumpinessW float
---@field Amplitude float
---@field Seed float
---@field bTilable boolean
local FNoiseParams4D = {}



---@class FNoiseTextureColor
---@field ColorData TArray<FColor>
---@field Width int32
---@field Height int32
---@field bLinearColor boolean
---@field bWantMask boolean
local FNoiseTextureColor = {}



---@class FNoiseTextureNormalMap
---@field ColorData TArray<FColor>
---@field Width int32
---@field Height int32
---@field bLinearColor boolean
local FNoiseTextureNormalMap = {}



---@class FOctaveNoiseParams
---@field Octaves int32
---@field OctaveMode EPerlinNoiseOctaveMode
---@field OctavePersistence float
---@field BaseFrequency float
---@field Amplitude float
---@field Seed float
---@field bTilable boolean
local FOctaveNoiseParams = {}



---@class UDynamicNoiseNormals : UDynamicNoiseNormalsBase
---@field NoiseParams FNoiseParams2D
---@field TimeFactor float
local UDynamicNoiseNormals = {}



---@class UDynamicNoiseNormalsBase : UDynamicNoiseTextureBase
---@field NormalStrength float
---@field bCurl boolean
local UDynamicNoiseNormalsBase = {}



---@class UDynamicNoiseOctaveNormals : UDynamicNoiseNormalsBase
---@field NoiseParams FOctaveNoiseParams
---@field TimeFactor float
local UDynamicNoiseOctaveNormals = {}



---@class UDynamicNoiseOctaveTexture : UDynamicNoiseTextureColorBase
---@field NoiseParams FOctaveNoiseParams
---@field TimeFactor float
local UDynamicNoiseOctaveTexture = {}



---@class UDynamicNoiseTexture : UDynamicNoiseTextureColorBase
---@field NoiseParams FNoiseParams2D
---@field TimeFactor float
local UDynamicNoiseTexture = {}



---@class UDynamicNoiseTextureBase : UObject
---@field Width int32
---@field Height int32
---@field UpdateInterval float
---@field Texture UTexture2D
---@field Age float
---@field NextUpdate float
local UDynamicNoiseTextureBase = {}

---@return UTexture2D
function UDynamicNoiseTextureBase:GetDynamicTexture() end


---@class UDynamicNoiseTextureColorBase : UDynamicNoiseTextureBase
---@field Palette UCurveLinearColor
---@field bWantMask boolean
local UDynamicNoiseTextureColorBase = {}



---@class UPerlinNoise : UObject
local UPerlinNoise = {}

---@param Path FSoftObjectPath
---@param Curve UCurveFloat
---@return UCurveFloat
function UPerlinNoise:SaveCurve(Path, Curve) end
---@return float
function UPerlinNoise:PerlinNoiseSeed() end
---@param Owner AActor
---@param Params FOctaveNoiseParams
---@param Width int32
---@param Height int32
---@param SuperSample float
---@param Palette UCurveLinearColor
---@param WantMask boolean
---@return UTexture2D
function UPerlinNoise:MakeOctaveNoiseTex(Owner, Params, Width, Height, SuperSample, Palette, WantMask) end
---@param Owner AActor
---@param Params FOctaveNoiseParams
---@param Width int32
---@param Height int32
---@param Strength float
---@param Curl boolean
---@param SuperSample float
---@return UTexture2D
function UPerlinNoise:MakeOctaveNoiseNormalTex(Owner, Params, Width, Height, Strength, Curl, SuperSample) end
---@param Owner AActor
---@param Duration float
---@param Params FOctaveNoiseParams
---@param SampleRate float
---@param ErrorThreshold float
---@return UCurveFloat
function UPerlinNoise:MakeOctaveNoiseCurve(Owner, Duration, Params, SampleRate, ErrorThreshold) end
---@param Owner AActor
---@param Params FNoiseParams2D
---@param Width int32
---@param Height int32
---@param SuperSample float
---@param Palette UCurveLinearColor
---@param WantMask boolean
---@return UTexture2D
function UPerlinNoise:MakeNoiseTex(Owner, Params, Width, Height, SuperSample, Palette, WantMask) end
---@param Owner AActor
---@param Params FNoiseParams2D
---@param Width int32
---@param Height int32
---@param Strength float
---@param Curl boolean
---@param SuperSample float
---@return UTexture2D
function UPerlinNoise:MakeNoiseNormalTex(Owner, Params, Width, Height, Strength, Curl, SuperSample) end
---@param Owner AActor
---@param Duration float
---@param Params FNoiseParams
---@param SampleRate float
---@param ErrorThreshold float
---@return UCurveFloat
function UPerlinNoise:MakeNoiseNormalizedCurve(Owner, Duration, Params, SampleRate, ErrorThreshold) end
---@param Owner AActor
---@param Duration float
---@param Params FNoiseParams
---@param SampleRate float
---@param ErrorThreshold float
---@return UCurveFloat
function UPerlinNoise:MakeNoiseCurve(Owner, Duration, Params, SampleRate, ErrorThreshold) end
---@param Pos FVector
---@param Time float
---@param Params FOctaveNoiseParams
---@param Noise float
function UPerlinNoise:GetOctaveNoise4D(Pos, Time, Params, Noise) end
---@param Pos FVector
---@param Params FOctaveNoiseParams
---@param Noise float
function UPerlinNoise:GetOctaveNoise3D(Pos, Params, Noise) end
---@param Pos FVector2D
---@param Params FOctaveNoiseParams
---@param Noise float
function UPerlinNoise:GetOctaveNoise2D(Pos, Params, Noise) end
---@param Time float
---@param Params FOctaveNoiseParams
---@param Noise float
function UPerlinNoise:GetOctaveNoise(Time, Params, Noise) end
---@param Time float
---@param Params FNoiseParams
---@param Noise float
function UPerlinNoise:GetNoiseNormalized(Time, Params, Noise) end
---@param Pos FVector
---@param Params FNoiseParams
---@param normal FVector
---@param inverseNormalStrength float
---@param Epsilon float
function UPerlinNoise:GetNoiseNormal3D(Pos, Params, normal, inverseNormalStrength, Epsilon) end
---@param Pos FVector2D
---@param Params FNoiseParams
---@param normal FVector
---@param inverseNormalStrength float
---@param Epsilon float
function UPerlinNoise:GetNoiseNormal2D(Pos, Params, normal, inverseNormalStrength, Epsilon) end
---@param Pos FVector
---@param Time float
---@param Params FNoiseParams4D
---@param Noise float
function UPerlinNoise:GetNoise4DAsymmetric(Pos, Time, Params, Noise) end
---@param Pos FVector
---@param Time float
---@param Params FNoiseParams
---@param Noise float
function UPerlinNoise:GetNoise4D(Pos, Time, Params, Noise) end
---@param Pos FVector
---@param Params FNoiseParams3D
---@param Noise float
function UPerlinNoise:GetNoise3DAsymmetric(Pos, Params, Noise) end
---@param Pos FVector
---@param Params FNoiseParams
---@param Noise float
function UPerlinNoise:GetNoise3D(Pos, Params, Noise) end
---@param Pos FVector2D
---@param Params FNoiseParams2D
---@param Noise float
function UPerlinNoise:GetNoise2DAsymmetric(Pos, Params, Noise) end
---@param Pos FVector2D
---@param Params FNoiseParams
---@param Noise float
function UPerlinNoise:GetNoise2D(Pos, Params, Noise) end
---@param Time float
---@param Params FNoiseParams
---@param Noise float
function UPerlinNoise:GetNoise(Time, Params, Noise) end
---@param Pos FVector2D
---@param Params FNoiseParams
---@param Curl FVector
---@param CurlEpsilon float
---@param inverseNormalStrength float
function UPerlinNoise:GetCurlNoiseAsNormal(Pos, Params, Curl, CurlEpsilon, inverseNormalStrength) end
---@param Pos FVector
---@param Params FNoiseParams
---@param Curl FVector
---@param CurlEpsilon float
function UPerlinNoise:GetCurlNoise3D(Pos, Params, Curl, CurlEpsilon) end
---@param Pos FVector2D
---@param Params FNoiseParams
---@param Curl FVector2D
---@param CurlEpsilon float
function UPerlinNoise:GetCurlNoise2D(Pos, Params, Curl, CurlEpsilon) end
---@param Owner AActor
---@param Params FNoiseParams2D
---@param TimeFactor float
---@param Width int32
---@param Height int32
---@param UpdateInterval float
---@param Palette UCurveLinearColor
---@param WantMask boolean
---@return UDynamicNoiseTexture
function UPerlinNoise:ConstructDynamicNoiseTexture(Owner, Params, TimeFactor, Width, Height, UpdateInterval, Palette, WantMask) end
---@param Owner AActor
---@param Params FOctaveNoiseParams
---@param TimeFactor float
---@param Width int32
---@param Height int32
---@param UpdateInterval float
---@param Palette UCurveLinearColor
---@param WantMask boolean
---@return UDynamicNoiseOctaveTexture
function UPerlinNoise:ConstructDynamicNoiseOctaveTexture(Owner, Params, TimeFactor, Width, Height, UpdateInterval, Palette, WantMask) end
---@param Owner AActor
---@param Params FOctaveNoiseParams
---@param TimeFactor float
---@param Width int32
---@param Height int32
---@param UpdateInterval float
---@param NormalStrength float
---@param Curl boolean
---@return UDynamicNoiseOctaveNormals
function UPerlinNoise:ConstructDynamicNoiseOctaveNormals(Owner, Params, TimeFactor, Width, Height, UpdateInterval, NormalStrength, Curl) end
---@param Owner AActor
---@param Params FNoiseParams2D
---@param TimeFactor float
---@param Width int32
---@param Height int32
---@param UpdateInterval float
---@param NormalStrength float
---@param Curl boolean
---@return UDynamicNoiseNormals
function UPerlinNoise:ConstructDynamicNoiseNormals(Owner, Params, TimeFactor, Width, Height, UpdateInterval, NormalStrength, Curl) end


