---@meta

---@class FEventDateTime : FDateTime
---@field Year int32
---@field Month EMonthsOfTheYear
---@field Day int32
---@field Hour int32
---@field Minute int32
---@field Second int32
---@field DeltaMonths float
---@field DeltaDays float
---@field DeltaHours float
---@field DeltaMinutes float
---@field DeltaSeconds float
---@field DaysMask uint8
local FEventDateTime = {}



---@class FRegisteredEvent
local FRegisteredEvent = {}


---@class FTimeEvent
---@field DayMask int32
---@field Hour float
---@field Minute float
---@field Second float
---@field DeltaTime float
---@field Time24 float
---@field SimulatedTime FDateTime
---@field EventTime FDateTime
local FTimeEvent = {}



---@class UScheduler : UObject
---@field OnInitiateEndOfDay FSchedulerOnInitiateEndOfDay
---@field OnStartNewDay FSchedulerOnStartNewDay
---@field OnStartOfFirstDay FSchedulerOnStartOfFirstDay
local UScheduler = {}

---@param InStop boolean
---@param InLockName FName
function UScheduler:StopTime(InStop, InLockName) end
function UScheduler:StartNewDay() end
---@param Factor float
function UScheduler:SetSimulationTimeFactorOverride(Factor) end
---@param InHours int32
---@param InMinutes int32
---@param InSeconds int32
---@param Month int32
---@param Day int32
---@param Year int32
function UScheduler:SetCurrentTime(InHours, InMinutes, InSeconds, Month, Day, Year) end
---@param InHandle int32
---@param bInAssertIfNotFound boolean
---@return boolean
function UScheduler:RemoveRegisteredEvent(InHandle, bInAssertIfNotFound) end
---@param InSchedulerCallbackDelegate FRegisterNewTimeEventBPInSchedulerCallbackDelegate
---@param InEventType EEventType
---@param InDate FEventDateTime
---@param InEventFrequency EEventFrequency
---@return int32
function UScheduler:RegisterNewTimeEventBP(InSchedulerCallbackDelegate, InEventType, InDate, InEventFrequency) end
---@param bInPause boolean
function UScheduler:Pause(bInPause) end
function UScheduler:OnSaveGameLoaded() end
function UScheduler:OnGameToBeSaved() end
---@param StartTimeString FString
---@param EndTimeString FString
---@return boolean
function UScheduler:IsNowInBetweenStringTimes(StartTimeString, EndTimeString) end
---@return boolean
function UScheduler:IsNight() end
---@return boolean
function UScheduler:IsDay() end
---@return boolean
function UScheduler:IsClockStopped() end
function UScheduler:InitiateEndOfDay() end
---@param bInHide boolean
function UScheduler:Hide(bInHide) end
---@return float
function UScheduler:GetTotalSeconds() end
---@param In24HourTimeA int32
---@param In24HourTimeB int32
---@return int32
function UScheduler:GetTimeDelta(In24HourTimeA, In24HourTimeB) end
---@param TimeString FString
---@return int32
function UScheduler:GetStringTimeMinutes(TimeString) end
---@return float
function UScheduler:GetSimulationTimeFactorOverride() end
---@return int32
function UScheduler:GetSimulatedYearBP() end
---@return int32
function UScheduler:GetSimulatedTime24BP() end
---@return FDateTime
function UScheduler:GetSimulatedTime() end
---@return float
function UScheduler:GetSimulatedSecondMultiplier() end
---@return int32
function UScheduler:GetSimulatedSecondBP() end
---@return int32
function UScheduler:GetSimulatedMonthBP() end
---@return int32
function UScheduler:GetSimulatedMinuteBP() end
---@return int32
function UScheduler:GetSimulatedHourBP() end
---@return int32
function UScheduler:GetSimulatedDayBP() end
---@return FDateTime
function UScheduler:GetSimulateDateTimeBP() end
---@param InType ESchedulerTimeDateType
---@return FString
function UScheduler:GetSimlatedTimeDateType(InType) end
---@return int32
function UScheduler:GetSecondOfTheDay() end
---@return FDateTime
function UScheduler:GetNurtureTime() end
---@return ESchedulerMoonPhase
function UScheduler:GetMoonPhaseBP() end
---@return int32
function UScheduler:GetMonthOfTheYear() end
---@return int32
function UScheduler:GetMinuteOfTheDay() end
---@return int32
function UScheduler:GetHourOfTheDay() end
---@param TimeString FString
---@param o_Hour int32
---@param o_Minute int32
function UScheduler:GetHourAndMinutesFromString(TimeString, o_Hour, o_Minute) end
---@return int32
function UScheduler:GetDayOfTheYear() end
---@return int32
function UScheduler:GetDayOfTheWeek() end
---@return int32
function UScheduler:GetDayOfTheMonth() end
---@return ESeasonEnum
function UScheduler:GetCurrentSeason() end
---@return int32
function UScheduler:GetCalendarYear() end
---@return boolean
function UScheduler:GetActive() end
---@return UScheduler
function UScheduler:Get() end
function UScheduler:BeginFirstDay() end
---@param InDays int32
---@param InHours int32
---@param InMinutes int32
---@param InSeconds int32
function UScheduler:AdvanceTimeTo(InDays, InHours, InMinutes, InSeconds) end
---@param InDays int32
---@param InHours int32
---@param InMinutes int32
---@param InSeconds int32
function UScheduler:AdvanceTime(InDays, InHours, InMinutes, InSeconds) end
---@param InSeconds int32
function UScheduler:AdvanceSeconds(InSeconds) end
---@param InDays int32
---@param InHours int32
---@param InMinutes int32
---@param InSeconds int32
function UScheduler:AdvanceNurtureTime(InDays, InHours, InMinutes, InSeconds) end
---@param InMinutes int32
function UScheduler:AdvanceMinutes(InMinutes) end
---@param InHours int32
function UScheduler:AdvanceHours(InHours) end
---@param InDays int32
function UScheduler:AdvanceDays(InDays) end


---@class UTimeSourceScheduler : UTimeSourceVolume
---@field bDisable boolean
local UTimeSourceScheduler = {}



