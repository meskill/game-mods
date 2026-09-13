---@enum EDaysOfTheWeek
local EDaysOfTheWeek = {
    MONDAY = 0,
    TUESDAY = 1,
    WEDNESDAY = 2,
    THURSDAY = 3,
    FRIDAY = 4,
    SATURDAY = 5,
    SUNDAY = 6,
    ALL_DAYS = 7,
    EDaysOfTheWeek_MAX = 8,
}

---@enum EDaysOfTheWeekBitmask
local EDaysOfTheWeekBitmask = {
    Monday = 0,
    Tuesday = 1,
    Wednesday = 2,
    Thursday = 3,
    Friday = 4,
    Saturday = 5,
    Sunday = 6,
    EveryDay = 7,
    EDaysOfTheWeekBitmask_MAX = 8,
}

---@enum EEventFrequency
local EEventFrequency = {
    EVENT_FREQ_CONTINUOUS = 0,
    EVENT_FREQ_ONCE = 1,
    EVENT_FREQ_MAX = 2,
}

---@enum EEventType
local EEventType = {
    EVENT_TYPE_HOURLY = 0,
    EVENT_TYPE_MINUTELY = 1,
    EVENT_TYPE_TIME = 2,
    EVENT_TYPE_DELTA_TIME = 3,
    EVENT_TYPE_MAX = 4,
}

---@enum EMonthsOfTheYear
local EMonthsOfTheYear = {
    January = 0,
    February = 1,
    March = 2,
    April = 3,
    May = 4,
    June = 5,
    July = 6,
    August = 7,
    September = 8,
    October = 9,
    November = 10,
    December = 11,
    AllMonths = 255,
    EMonthsOfTheYear_MAX = 256,
}

---@enum ESchedulerMoonPhase
local ESchedulerMoonPhase = {
    MOONPHASE_NEWMOON = 0,
    MOONPHASE_WAXINGCRESCENT = 1,
    MOONPHASE_FIRSTQUARTER = 2,
    MOONPHASE_WAXINGGIBBOUS = 3,
    MOONPHASE_FULLMOON = 4,
    MOONPHASE_WANINGGIBBOUS = 5,
    MOONPHASE_LASTQUARTER = 6,
    MOONPHASE_WANINGCRESCENT = 7,
    MOONPHASE_MAX = 8,
}

---@enum ESchedulerTimeDateType
local ESchedulerTimeDateType = {
    SCHEDULER_TYPE_TIME = 0,
    SCHEDULER_TYPE_DATE = 1,
    SCHEDULER_TYPE_DAY = 2,
    SCHEDULER_TYPE_MONTH = 3,
    SCHEDULER_TYPE_TIME_AND_DATE = 4,
    SCHEDULER_TYPE_MAX = 5,
}

