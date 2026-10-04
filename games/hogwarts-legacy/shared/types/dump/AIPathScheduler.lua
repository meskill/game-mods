---@meta

---@class AAIPath : AActor
---@field BlendScale float
---@field UseAsEscapePath boolean
---@field BranchOnly boolean
---@field PathSchedule TArray<FPathScheduleData>
---@field bStartActive boolean
---@field bApparateOnDeactivate boolean
---@field bAllowGroups boolean
---@field MinStationHangTime float
---@field MaxStationHangTime float
---@field PathComponent UPathComponent
---@field BranchCommands TArray<FBranchTagCommand>
---@field StationCommands TArray<FStationTagCommand>
---@field bDataTransfered boolean
local AAIPath = {}

---@param InEnable boolean
function AAIPath:EnableApparate(InEnable) end
function AAIPath:Deactivate() end
function AAIPath:Activate() end


---@class FBaseTagCommand
---@field TagCommandType ETagType
local FBaseTagCommand = {}



---@class FBranchTagCommand : FBaseTagCommand
---@field UUID_BranchTo int64
---@field FromPathPointIndex int32
---@field ToPathPointIndex int32
---@field Probability float
---@field ForwardToBranchDirection ETrafficFlow
---@field BackwardToBranchDirection ETrafficFlow
local FBranchTagCommand = {}



---@class FPathScheduleData
---@field StartTime int32
---@field DaysMask uint8
---@field SpawnDensity int32
---@field HouseAndGender uint8
---@field HoboType uint32
---@field Weights TArray<FTypeWeight>
local FPathScheduleData = {}



---@class FStationTagCommand : FBaseTagCommand
---@field UUID_AIPath int64
---@field FromPathPointIndex int32
---@field Probability float
---@field SiteLocation FName
local FStationTagCommand = {}



---@class FTypeWeight
---@field Type int32
---@field weight float
local FTypeWeight = {}



