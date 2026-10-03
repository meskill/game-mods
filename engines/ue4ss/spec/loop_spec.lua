local Loop = require("ue4ss.loop")

describe("ue4ss.loop", function()
    local tick, queued

    before_each(function()
        queued = {}
        _G.LoopAsync = function(_, callback) tick = callback end
        _G.ExecuteInGameThread = function(callback) table.insert(queued, callback) end
    end)

    after_each(function()
        _G.LoopAsync = nil
        _G.ExecuteInGameThread = nil
    end)

    local function runQueued()
        local callbacks = queued
        queued = {}
        for _, callback in ipairs(callbacks) do callback() end
    end

    it("queues one update at a time while the game thread is stalled", function()
        local runs = 0
        Loop.gameThread(100, function() runs = runs + 1 end, error)

        tick()
        tick()
        tick()
        assert.equals(1, #queued)

        runQueued()
        assert.equals(1, runs)
        tick()
        assert.equals(1, #queued)
    end)

    it("keeps polling after errors and reports each new error once", function()
        local failure = "first"
        local reported = {}
        Loop.gameThread(100, function() error(failure, 0) end,
            function(message) table.insert(reported, message) end)

        for _ = 1, 2 do
            assert.is_false(tick())
            runQueued()
        end
        failure = "second"
        tick()
        runQueued()

        assert.same({ "first", "second" }, reported)
    end)

    it("stops once update returns true", function()
        local stop = false
        Loop.gameThread(100, function() return stop end, error)

        assert.is_false(tick())
        stop = true
        runQueued()
        assert.is_true(tick())
        assert.equals(0, #queued)
    end)
end)
