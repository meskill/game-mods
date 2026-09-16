-- Requires DSX running with UDP enabled and a connected adaptive-trigger controller.
-- Deploy the backends_dsx Lua modules and transitive dependencies on UE4SS's module paths.
-- DSX effects persist: return to a paused state before disabling/reloading this mod.
-- Windows does not search package.cpath for a native module's DLL dependencies.
local luaDll = assert(package.searchpath("lua54", package.cpath))
assert(package.loadlib(luaDll, "*"))

local UEHelpers = require("UEHelpers")
local Server = require("server")
local AdaptiveTrigger = require("adaptive_triggers")
local getTime = require("socket").gettime
local Spells = require("spells")

local RIGHT_TRIGGER = AdaptiveTrigger.Trigger.Right
local POLL_INTERVAL_MS = 100
-- Logs gameplay, spell-state, and packet decisions.
---@type boolean
local DEBUG = true

---@param message string
local function debugLog(message)
    print("[HogwartsDualSense][debug] " .. message .. "\n")
end

-- Wand effects during gameplay; a spell fire effect from spells.lua overrides both.
-- A click on R2 is the basic wand attack and keeps the baseline; holding R2
-- (spell casting) switches to the light hold vibration.
---@type HogwartsTriggerEffect
local BASE_EFFECT = { mode = AdaptiveTrigger.Mode.VerySoft, args = {} }
---@type HogwartsTriggerEffect
local HOLD_EFFECT = { mode = AdaptiveTrigger.Mode.VIBRATION, args = { 3, 1, 20 } }
-- Seconds R2 must stay down before it counts as a hold rather than a click.
local HOLD_DELAY = 0.3
-- Seconds after a spell effect ends before a still-held R2 vibrates again;
-- the baseline fills the gap.
local SPELL_END_DELAY = 0.1
---@type FKey
local R2_KEY = { KeyName = FName("Gamepad_RightTrigger") }
---@type HogwartsTriggerEffect
local OFF_EFFECT = { mode = AdaptiveTrigger.Mode.OFF, args = {} }

---@type APlayerController?
local playerController
---@type number
local nextControllerLookupAt = 0

---Use the dumped Phoenix player type, not menu or spectator pawns.
---@return ABiped_Player? pawn The player pawn while gameplay is active.
---@return string state Why gameplay is inactive, or "active".
---@return APlayerController? controller The pawn's controller while active.
local function activePawn()
    local controller = playerController
    if not controller or not controller:IsValid() then
        -- The installed UEHelpers scans all UObjects on every controller lookup.
        -- Reuse a live controller; bound scans while menus/travel have none.
        local now = getTime()
        if now < nextControllerLookupAt then return nil, "controller rediscovery wait" end
        nextControllerLookupAt = now + 1
        controller = UEHelpers.GetPlayerController()
        playerController = controller
    end
    if not controller or not controller:IsValid() then return nil, "no valid controller" end

    local pawn = controller.Pawn
    if not pawn or not pawn:IsValid() or not pawn:IsA("/Script/Phoenix.Biped_Player") then
        return nil, "missing, invalid, or non-player pawn"
    end
    ---@cast pawn ABiped_Player

    local gameplay = UEHelpers.GetGameplayStatics()
    if not gameplay:IsValid() then return nil, "no gameplay statics" end
    if gameplay:IsGamePaused(controller) then return nil, "paused" end
    if pawn.InCinematic then return nil, "cinematic" end
    if pawn:IsDead() then return nil, "dead" end
    return pawn, "active", controller
end

-- Discovery may wait for DSX, so it must never run on the game thread.
ExecuteAsync(function()
    local server, err = Server.connect()
    if not server then
        print("[HogwartsDualSense] Could not open DSX socket: " .. tostring(err) .. "\n")
        return
    end

    local status
    status, err = server:requestStatus(1)
    local index
    if status then
        index, err = AdaptiveTrigger.findController(status)
    end
    if not index then
        print("[HogwartsDualSense] DSX discovery failed: " .. tostring(err)
            .. ". Enable DSX UDP and connect a DualSense, then restart the mod.\n")
        server:close()
        return
    end

    local triggers = AdaptiveTrigger.new(server, index)
    local spells = Spells.tracker(DEBUG and debugLog or nil)
    ---@type table<HogwartsTriggerEffect, DSXInstruction[]>
    local packets = {}
    ---@type HogwartsTriggerEffect?
    local appliedEffect
    local updatePending = false
    local stopped = false
    ---@type string?
    local gameplayState
    local triggerHeld, triggerDown = false, false
    ---@type HogwartsTriggerEffect?
    local lastSpellEffect
    local spellEndedAt = -math.huge

    ---@param effect HogwartsTriggerEffect
    ---@param force? boolean A new cast must refresh even an identical effect.
    ---@return boolean
    local function applyEffect(effect, force)
        if stopped then
            return false
        end
        if effect == appliedEffect and not force then
            return true
        end
        local packet = packets[effect]
        if not packet then
            local instruction = triggers:instruction(RIGHT_TRIGGER, effect.mode)
            table.move(effect.args, 1, #effect.args, 4, instruction.parameters)
            packet = { instruction }
            packets[effect] = packet
        end
        local sent, sendError = server:send(packet)
        if not sent then
            print("[HogwartsDualSense] DSX send failed: " .. tostring(sendError) .. "\n")
            server:close()
            stopped = true
            return false
        end
        appliedEffect = effect
        if DEBUG then
            debugLog("sent R2 mode=" .. effect.mode .. " args={" .. table.concat(effect.args, ",")
                .. "} force=" .. tostring(force == true))
        end
        return true
    end

    -- DSX answers every datagram with its status; replies show whether it accepted
    -- our trigger packets and still sees the controller.
    local function logReplies()
        while true do
            local reply, replyError = server:receive()
            if not reply then
                if replyError ~= "timeout" then debugLog("DSX reply error: " .. tostring(replyError)) end
                return
            end
            debugLog("DSX reply Status=" .. tostring(reply.Status)
                .. " connected=" .. tostring(reply.isControllerConnected)
                .. " devices=" .. #(reply.Devices or {}))
        end
    end

    local function update()
        if DEBUG then logReplies() end
        local pawn, state, controller = activePawn()
        if DEBUG and state ~= gameplayState then
            debugLog("gameplay " .. state)
        end
        gameplayState = state
        if not pawn or not controller then
            spells:clear()
            applyEffect(OFF_EFFECT)
            return
        end
        local heldFor = controller:GetInputKeyTimeDown(R2_KEY)
        local held = heldFor >= HOLD_DELAY
        local down = heldFor > 0
        if DEBUG and (held ~= triggerHeld or down ~= triggerDown) then
            debugLog(("R2 %s (down %.2f s)"):format(held and "held" or down and "down" or "up",
                heldFor))
        end
        triggerHeld, triggerDown = held, down
        local now = getTime()
        local effect, cast = spells:update(pawn, now)
        if lastSpellEffect and not effect then spellEndedAt = now end
        lastSpellEffect = effect
        local vibrate = held and now >= spellEndedAt + SPELL_END_DELAY
        if applyEffect(effect or (vibrate and HOLD_EFFECT) or BASE_EFFECT, cast ~= nil) and cast then
            print("[HogwartsDualSense] Spell effect: " .. cast .. "\n")
        end
    end

    ---@type string?
    local lastUpdateError

    LoopAsync(POLL_INTERVAL_MS, function()
        if stopped then
            return true
        end
        -- A stalled game thread must not accumulate queued updates.
        if not updatePending then
            updatePending = true
            ExecuteInGameThread(function()
                -- An error must not leave updatePending set and stall polling forever.
                local ok, updateError = pcall(update)
                if not ok and tostring(updateError) ~= lastUpdateError then
                    lastUpdateError = tostring(updateError)
                    print("[HogwartsDualSense] Update failed: " .. lastUpdateError .. "\n")
                end
                updatePending = false
            end)
        end
        return false
    end)

    print("[HogwartsDualSense] Local wand spell polling ready for controller " .. index .. "\n")
end)
