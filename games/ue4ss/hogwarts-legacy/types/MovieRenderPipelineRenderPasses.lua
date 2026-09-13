---@meta

---@class FMoviePipelinePostProcessPass
---@field bEnabled boolean
---@field Material TSoftObjectPtr<UMaterialInterface>
local FMoviePipelinePostProcessPass = {}



---@class UMoviePipelineDeferredPassBase : UMoviePipelineImagePassBase
---@field bAccumulatorIncludesAlpha boolean
---@field bDisableMultisampleEffects boolean
---@field bUse32BitPostProcessMaterials boolean
---@field AdditionalPostProcessMaterials TArray<FMoviePipelinePostProcessPass>
---@field bAddDefaultLayer boolean
---@field StencilLayers TArray<FActorLayer>
---@field ActivePostProcessMaterials TArray<UMaterialInterface>
---@field StencilLayerMaterial UMaterialInterface
---@field TileRenderTargets TArray<UTextureRenderTarget2D>
local UMoviePipelineDeferredPassBase = {}



---@class UMoviePipelineDeferredPass_DetailLighting : UMoviePipelineDeferredPassBase
local UMoviePipelineDeferredPass_DetailLighting = {}


---@class UMoviePipelineDeferredPass_LightingOnly : UMoviePipelineDeferredPassBase
local UMoviePipelineDeferredPass_LightingOnly = {}


---@class UMoviePipelineDeferredPass_PathTracer : UMoviePipelineDeferredPassBase
local UMoviePipelineDeferredPass_PathTracer = {}


---@class UMoviePipelineDeferredPass_ReflectionsOnly : UMoviePipelineDeferredPassBase
local UMoviePipelineDeferredPass_ReflectionsOnly = {}


---@class UMoviePipelineDeferredPass_Unlit : UMoviePipelineDeferredPassBase
local UMoviePipelineDeferredPass_Unlit = {}


---@class UMoviePipelineImagePassBase : UMoviePipelineRenderPass
local UMoviePipelineImagePassBase = {}


---@class UMoviePipelineImageSequenceOutputBase : UMoviePipelineOutputBase
local UMoviePipelineImageSequenceOutputBase = {}


---@class UMoviePipelineImageSequenceOutput_BMP : UMoviePipelineImageSequenceOutputBase
local UMoviePipelineImageSequenceOutput_BMP = {}


---@class UMoviePipelineImageSequenceOutput_EXR : UMoviePipelineImageSequenceOutputBase
---@field Compression EEXRCompressionFormat
---@field bMultilayer boolean
local UMoviePipelineImageSequenceOutput_EXR = {}



---@class UMoviePipelineImageSequenceOutput_JPG : UMoviePipelineImageSequenceOutputBase
local UMoviePipelineImageSequenceOutput_JPG = {}


---@class UMoviePipelineImageSequenceOutput_PNG : UMoviePipelineImageSequenceOutputBase
local UMoviePipelineImageSequenceOutput_PNG = {}


---@class UMoviePipelineWaveOutput : UMoviePipelineOutputBase
---@field FileNameFormatOverride FString
local UMoviePipelineWaveOutput = {}



