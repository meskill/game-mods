local Server = require("server")

---@class DSXAdaptiveTrigger
---@field private server DSXServer
---@field controllerIndex integer
local AdaptiveTrigger = {}
AdaptiveTrigger.__index = AdaptiveTrigger

---@enum DSXTrigger
AdaptiveTrigger.Trigger = {
    Left = 1,
    Right = 2,
}

---@enum DSXTriggerMode
AdaptiveTrigger.Mode = {
    Normal = 0,
    GameCube = 1,
    VerySoft = 2,
    Soft = 3,
    Hard = 4,
    VeryHard = 5,
    Hardest = 6,
    Rigid = 7,
    VibrateTrigger = 8,
    Choppy = 9,
    Medium = 10,
    VibrateTriggerPulse = 11,
    CustomTriggerValue = 12,
    Resistance = 13,
    Bow = 14,
    Galloping = 15,
    SemiAutomaticGun = 16,
    AutomaticGun = 17,
    Machine = 18,
    VIBRATE_TRIGGER_10Hz = 19,
    OFF = 20,
    FEEDBACK = 21,
    WEAPON = 22,
    VIBRATION = 23,
    SLOPE_FEEDBACK = 24,
    MULTIPLE_POSITION_FEEDBACK = 25,
    MULTIPLE_POSITION_VIBRATION = 26,
}

---@enum DSXCustomTriggerValueMode
AdaptiveTrigger.CustomMode = {
    OFF = 0,
    Rigid = 1,
    RigidA = 2,
    RigidB = 3,
    RigidAB = 4,
    Pulse = 5,
    PulseA = 6,
    PulseB = 7,
    PulseAB = 8,
    VibrateResistance = 9,
    VibrateResistanceA = 10,
    VibrateResistanceB = 11,
    VibrateResistanceAB = 12,
    VibratePulse = 13,
    VibratePulseA = 14,
    VibratePulsB = 15,
    VibratePulseAB = 16,
}

---Bind a controller to an existing server; does not own or open its socket.
---@param server DSXServer
---@param controllerIndex integer Use a status response's Devices[].Index.
---@return DSXAdaptiveTrigger
function AdaptiveTrigger.new(server, controllerIndex)
    return setmetatable({
        server = server,
        controllerIndex = controllerIndex,
    }, AdaptiveTrigger)
end

---Build an instruction for batching, without sending it.
---@param trigger DSXTrigger
---@param mode DSXTriggerMode
---@param ... integer Mode-specific positional parameters; see API.md.
---@return DSXInstruction
function AdaptiveTrigger:instruction(trigger, mode, ...)
    return {
        type = Server.InstructionType.TriggerUpdate,
        parameters = { self.controllerIndex, trigger, mode, ... },
    }
end

---Apply one effect. Callers provide parameters within the documented ranges.
---@param trigger DSXTrigger
---@param mode DSXTriggerMode
---@param ... integer
---@return number? success
---@return string? error
function AdaptiveTrigger:set(trigger, mode, ...)
    return self.server:send({ self:instruction(trigger, mode, ...) })
end

---Disable one trigger effect; this does not restore the DSX profile.
---@param trigger DSXTrigger
---@return number? success
---@return string? error
function AdaptiveTrigger:off(trigger)
    return self:set(trigger, AdaptiveTrigger.Mode.OFF)
end

return AdaptiveTrigger
