---@meta

---@class FRenderedCinematicInfo
---@field OutVideoPath FString
---@field CinematicName FString
---@field Description FString
---@field SceneRigPath FString
---@field ShotgunStatus FString
---@field Tier FString
---@field bUploadToShotgun boolean
---@field bWasRenderSuccessful boolean
---@field bAudioOnly boolean
---@field bHasOverlay boolean
---@field bUsingUnlit boolean
---@field DesiredRecordTime int32
---@field ActualRecordTime int32
local FRenderedCinematicInfo = {}



---@class FRenderedCinematicJsonOutput
---@field CinematicInfos TArray<FRenderedCinematicInfo>
local FRenderedCinematicJsonOutput = {}



---@class IRecordMovieInterface : IInterface
local IRecordMovieInterface = {}


