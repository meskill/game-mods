local Objects = require("ue4ss.objects")

---Screenshots taken by the game with its own "shot" console command, which
---reads back the frame on screen: the lightest capture measured in Hogwarts
---Legacy (~200 ms stall at 2560x1440; HighResShot renders again, 320 ms and
---more at lower resolutions). Written straight to <dir>/shots/ with filename=
---(the engine creates the folder) as <file>00000.png, renamed to <file>.png.
---The console cuts arguments at spaces, so the path is passed relative to the
---game's Binaries/Win64 (the working directory) when under it, else absolute,
---which then must have no spaces. `dist` deletes shots/ on each
---deploy. One at a time; failures are logged under "shot", never raised, so
---they stop nothing else.
---@class DebugScreenshots
---@field private journal DevtoolsJournal
---@field private timers DebugTimers
---@field private player DebugPlayer
---@field private dir string
---@field private count integer
---@field private pending boolean
local Screenshot = {}
Screenshot.__index = Screenshot

---@class DebugShotOptions
---@field name? string Added to the file name: shot-<n>-<name>.png; characters other than letters, digits, "-", "_" and "." become "_", as the console cuts at spaces.
---@field ui? boolean Include menus and HUD ("shot showui").

-- Milliseconds between checks for the file, and until giving up on it.
local POLL, TIMEOUT = 100, 5000

---@param journal DevtoolsJournal
---@param timers DebugTimers
---@param player DebugPlayer Its controller runs the command.
---@param dir string The output directory: shots go to <dir>/shots/.
---@return DebugScreenshots
function Screenshot.new(journal, timers, player, dir)
	return setmetatable(
		{ journal = journal, timers = timers, player = player, dir = dir, count = 0, pending = false },
		Screenshot
	)
end

---Has the game take a screenshot; logs "#<n> <command>", then
---"#<n> = <path> (<ms> ms)" once written, or "#<n> ! ...".
---@param options? DebugShotOptions
---@return string? path The file it writes, or nil on failure.
function Screenshot:take(options)
	if self.pending then
		self.journal:write("shot", "! a screenshot is pending")
		return nil
	end
	local ok, result = pcall(self.request, self, options or {})
	if not ok then
		self.pending = false
		self.journal:write("shot", "! " .. tostring(result))
		return nil
	end
	return result
end

---@private
---@param options DebugShotOptions
---@return string path
function Screenshot:request(options)
	local journal = self.journal
	local controller = self.player:controller()
	if not controller then
		error("no player controller to run the screenshot command", 0)
	end
	local file = Screenshot.argument(self.dir .. "/shots")
	self.count = self.count + 1
	local label = "#" .. self.count
	local suffix = options.name and ("-" .. options.name:gsub("[^%w%-_.]", "_")) or ""
	local name = ("shot-%03d%s"):format(self.count, suffix)
	local command = ("%s filename=%s/%s"):format(options.ui and "shot showui" or "shot", file, name)
	local path = ("%s/shots/%s.png"):format(self.dir, name)
	local written = ("%s/shots/%s00000.png"):format(self.dir, name)
	-- Names repeat after Restart All Mods without a deploy: the engine would
	-- number past an old file, and the rename would fail on an existing one.
	os.remove(written)
	os.remove(path)
	-- APlayerController:ConsoleCommand is not reflected in every game (not in
	-- Hogwarts Legacy); KismetSystemLibrary:ExecuteConsoleCommand is.
	local library = Objects.find("/Script/Engine.Default__KismetSystemLibrary") --[[@as any]]
	library:ExecuteConsoleCommand(controller, command, controller)
	journal:write("shot", ("%s %s"):format(label, command))
	self.pending = true
	local started, lastSize = journal:now(), nil
	self.timers:every(POLL, function()
		local size = Screenshot.size(written)
		local ms = math.floor((journal:now() - started) * 1000 + 0.5)
		-- Written once its size stops changing between two checks.
		if size and size > 0 and size == lastSize then
			self.pending = false
			local renamed, err = os.rename(written, path)
			journal:write(
				"shot",
				("%s %s (%d ms)"):format(label, renamed and ("= " .. path) or ("! " .. tostring(err)), ms)
			)
			return true
		end
		if ms >= TIMEOUT then
			self.pending = false
			journal:write("shot", ("%s ! no %s after %d ms"):format(label, written, ms))
			return true
		end
		lastSize = size
	end)
	return path
end

---Size in bytes of the file at path, or nil when there is none.
---@private
---@param path string
---@return integer?
function Screenshot.size(path)
	local file = io.open(path, "rb")
	if not file then
		return nil
	end
	local size = file:seek("end", 0)
	file:close()
	return size
end

---A directory as a console argument: relative to the game's Binaries/Win64
---when under it, else absolute; raises when the result has a space.
---@private
---@param dir string
---@return string
function Screenshot.argument(dir)
	local root = (IterateGameDirectories() --[[@as any]]).Game.Binaries.Win64.__absolute_path:gsub("\\", "/")
	dir = dir:gsub("\\", "/")
	if dir:lower():sub(1, #root + 1) == root:lower() .. "/" then
		dir = dir:sub(#root + 2)
	end
	if dir:find(" ", 1, true) then
		error(("screenshot directory has a space, which the console cuts at: %s"):format(dir), 0)
	end
	return dir
end

return Screenshot
