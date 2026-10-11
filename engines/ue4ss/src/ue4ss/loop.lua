local Loop = {}

---Runs update on the game thread every intervalMs until it returns true.
---A timer on UE4SS's async thread queues each run, and only one run is queued at
---a time, so a stalled game thread does not accumulate them. Errors are caught so
---polling continues; onError receives an error only when it differs from the
---previous one reported.
---@param intervalMs integer
---@param update fun(): boolean? Returns true to stop polling.
---@param onError fun(message: string)
function Loop.gameThread(intervalMs, update, onError)
	local pending, stopped = false, false
	---@type string?
	local lastError

	local function run()
		local ok, result = pcall(update)
		if ok then
			stopped = stopped or result == true
		else
			local message = tostring(result)
			if message ~= lastError then
				lastError = message
				onError(message)
			end
		end
		-- Cleared even after an error, or polling would stall forever.
		pending = false
	end

	LoopAsync(intervalMs, function()
		if stopped then
			return true
		end
		if not pending then
			pending = true
			ExecuteInGameThread(run)
		end
		return false
	end)
end

return Loop
