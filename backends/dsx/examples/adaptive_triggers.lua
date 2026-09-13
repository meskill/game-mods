-- Hands-on adaptive trigger effects against a running DSX.
--
-- Every DSX v3 effect is exposed three ways: `name()` drives both triggers
-- in one datagram, `name_left()` and `name_right()` drive one.
-- Effects persist until replaced, so finish with `off()` or `reset()`.
--
-- Run from the workspace root with DSX running and its UDP server enabled;
-- `lx lua` puts this package's dependencies on the module path.
--
--   lx lua
--   > at = dofile("backends/dsx/examples/adaptive_triggers.lua")
--   > at.feedback()        -- stiff resistance on both triggers
--   > at.weapon_right()    -- firm wall on the right trigger only
--   > at.sweep()           -- every effect in turn, 5 s apart
--   > at.sweep_left()      -- the same on the left trigger only
--   > at.names()           -- list the effect names
--   > at.off()             -- effects off, DSX profile untouched
--   > at.reset()           -- restore the controller's full DSX profile
--   > at.close()           -- drop the connection; effects stay as they are

local socket = require("socket")
local Server = require("server")
local AdaptiveTrigger = require("adaptive_triggers")

local Trigger = AdaptiveTrigger.Trigger
local Mode = AdaptiveTrigger.Mode

local SWEEP_SECONDS = 5

local M = {}

---@type DSXServer?
local server
---@type DSXAdaptiveTrigger?
local triggers

-- Connect and discover the controller once; reuse on every later call.
---@return DSXAdaptiveTrigger triggers
---@return DSXServer server
local function connection()
    if not server then
        local s = assert(Server.connect())
        -- Blocking is fine here; a game loop would call receive() per tick.
        local status, err = s:requestStatus(1)
        local index
        if status then
            index, err = AdaptiveTrigger.findController(status)
        elseif err == "timeout" then
            err = "DSX did not reply; is it running with the UDP server enabled?"
        end
        if not index then
            s:close()
            error(err, 3)
        end
        server = s
        triggers = AdaptiveTrigger.new(s, index)
    end
    return triggers, server
end

-- Mid-range arguments from the ranges in API.md, one entry per DSX v3 effect.
---@type { name: string, mode: DSXTriggerMode, args: integer[] }[]
local EFFECTS = {
    { name = "feedback", mode = Mode.FEEDBACK, args = { 2, 5 } },
    { name = "weapon", mode = Mode.WEAPON, args = { 2, 6, 8 } },
    { name = "vibration", mode = Mode.VIBRATION, args = { 1, 8, 20 } },
    { name = "slope_feedback", mode = Mode.SLOPE_FEEDBACK, args = { 1, 9, 1, 8 } },
    {
        name = "multiple_position_feedback",
        mode = Mode.MULTIPLE_POSITION_FEEDBACK,
        args = { 8, 8, 8, 0, 0, 0, 8, 8, 0, 0 },
    },
    {
        name = "multiple_position_vibration",
        mode = Mode.MULTIPLE_POSITION_VIBRATION,
        args = { 20, 8, 8, 8, 0, 0, 0, 8, 8, 0, 0 },
    },
    { name = "off", mode = Mode.OFF, args = {} },
}

-- One trigger, or both in a single datagram when `trigger` is nil.
---@param mode DSXTriggerMode
---@param args integer[]
---@param trigger? DSXTrigger
local function apply(mode, args, trigger)
    local at, s = connection()
    if trigger then
        assert(at:set(trigger, mode, table.unpack(args)))
        return
    end
    assert(s:send({
        at:instruction(Trigger.Left, mode, table.unpack(args)),
        at:instruction(Trigger.Right, mode, table.unpack(args)),
    }))
end

for _, effect in ipairs(EFFECTS) do
    M[effect.name] = function()
        apply(effect.mode, effect.args)
    end
    M[effect.name .. "_left"] = function()
        apply(effect.mode, effect.args, Trigger.Left)
    end
    M[effect.name .. "_right"] = function()
        apply(effect.mode, effect.args, Trigger.Right)
    end
end

---Apply every effect in turn, two seconds apart, ending on `off`.
---@param trigger? DSXTrigger Omit to drive both triggers.
function M.sweep(trigger)
    for index, effect in ipairs(EFFECTS) do
        print(("%2d/%d %s"):format(index, #EFFECTS, effect.name))
        apply(effect.mode, effect.args, trigger)
        socket.sleep(SWEEP_SECONDS)
    end
end

---Sweep the left trigger only.
function M.sweep_left()
    M.sweep(Trigger.Left)
end

---Sweep the right trigger only.
function M.sweep_right()
    M.sweep(Trigger.Right)
end

---Effect names, in sweep order.
---@return string[]
function M.names()
    local names = {}
    for index, effect in ipairs(EFFECTS) do
        names[index] = effect.name
    end
    return names
end

---Restore the controller's entire DSX profile, not just the triggers.
function M.reset()
    local at, s = connection()
    assert(s:reset(at.controllerIndex))
end

---Close the connection. The next call reconnects and rediscovers.
function M.close()
    if server then
        server:close()
        server, triggers = nil, nil
    end
end

return M
