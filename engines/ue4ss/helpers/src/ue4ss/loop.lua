local Loop = {}

---Runs update on the game thread every intervalMs until it returns true.
---Uses UE4SS's LoopInGameThreadWithDelay, so no Lua runs on UE4SS's async
---thread: async callbacks share the mod's Lua state with game-thread hooks and
---corrupt it (RE-UE4SS issue #168). A stopped loop is not cancelled, because
---cancelling from inside its own callback edits the action list UE4SS is
---iterating (issue #1180); it stays registered and does nothing. Errors are
---caught so polling continues; onError receives an error only when it differs
---from the previous one reported.
---@param intervalMs integer
---@param update fun(): boolean? Returns true to stop polling.
---@param onError fun(message: string)
function Loop.gameThread(intervalMs, update, onError)
	local stopped = false
	---@type string?
	local lastError

	LoopInGameThreadWithDelay(intervalMs, function()
		if stopped then
			return
		end
		local ok, result = pcall(update)
		if ok then
			stopped = result == true
			return
		end
		local message = tostring(result)
		if message ~= lastError then
			lastError = message
			onError(message)
		end
	end)
end

return Loop
