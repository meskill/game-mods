local Screenshot = require("ue4ss.devtools.screenshot")
local Fakes = dofile(debug.getinfo(1, "S").source:match("^@(.*[/\\])") .. "fakes.lua")

describe("ue4ss.devtools.screenshot", function()
	local out, win64, journal, polls, commands, write, shots

	local function exists(path)
		local file = io.open(path, "rb")
		return file ~= nil and file:close()
	end

	local function mkdir(path)
		local native = package.config:sub(1, 1) == "\\" and path:gsub("/", "\\") or path
		assert(os.execute(('mkdir "%s"'):format(native)))
	end

	local function create(path, content)
		local file = assert(io.open(path, "wb"))
		file:write(content or "png")
		file:close()
	end

	-- What the game does: shot writes the first free <filename><5 digits>.png,
	-- relative paths from Binaries/Win64.
	local function engineWrites(command)
		local base = assert(command:match("filename=(%S+)"))
		if not (base:match("^%a:/") or base:match("^/")) then
			base = ("%s/%s"):format(win64, base)
		end
		local index = 0
		while exists(("%s%05d.png"):format(base, index)) do
			index = index + 1
		end
		create(("%s%05d.png"):format(base, index))
	end

	-- Runs every pending poll once, as UE4SS's timers would.
	local function poll()
		for i = #polls, 1, -1 do
			if polls[i]() then
				table.remove(polls, i)
			end
		end
	end

	local function new(dir)
		return Screenshot.new(journal, {
			every = function(_, _, fn)
				polls[#polls + 1] = fn
			end,
		}, {
			controller = function()
				return {}
			end,
		}, dir)
	end

	before_each(function()
		-- A fresh output directory with the shots/ folder the engine would create.
		out = os.tmpname():gsub("\\", "/")
		os.remove(out)
		mkdir(out .. "/shots")
		win64 = out:match("^(.*)/[^/]+$")
		polls, commands, write = {}, {}, engineWrites
		_G.StaticFindObject = function()
			return {
				IsValid = function()
					return true
				end,
				ExecuteConsoleCommand = function(_, _, command)
					commands[#commands + 1] = command
					write(command)
				end,
			}
		end
		_G.IterateGameDirectories = function()
			return { Game = { Binaries = { Win64 = { __absolute_path = win64 } } } }
		end
		journal = Fakes.journal()
		shots = new(out)
	end)

	after_each(function()
		Fakes.restore()
		_G.IterateGameDirectories = nil
		for n = 1, 3 do
			for _, suffix in ipairs({ "-a.png", "-b.png", "-a00000.png", "-b00000.png", "-a00001.png" }) do
				os.remove(("%s/shots/shot-%03d%s"):format(out, n, suffix))
			end
		end
		os.remove(out .. "/shots")
		os.remove(out)
	end)

	it("passes a directory under Binaries/Win64 relative to it and names the file", function()
		local path = shots:take({ name = "a" })
		assert.same({ ("shot filename=%s/shots/shot-001-a"):format(out:match("[^/]+$")) }, commands)
		poll()
		poll()
		assert.equals(out .. "/shots/shot-001-a.png", path)
		assert.is_true(exists(path))
		assert.is_false(exists(out .. "/shots/shot-001-a00000.png"))
		assert.equals("shot #1 = " .. path .. " (0 ms)", journal.lines[#journal.lines])
	end)

	it("replaces spaces and path characters in the name, so the console passes it whole", function()
		local path = shots:take({ name = "before menu/1" })
		assert.same({ ("shot filename=%s/shots/shot-001-before_menu_1"):format(out:match("[^/]+$")) }, commands)
		poll()
		poll()
		assert.equals(out .. "/shots/shot-001-before_menu_1.png", path)
		assert.is_true(exists(path))
	end)

	it("removes a numbered file left by an unfinished shot, so the new shot is the one named", function()
		create(out .. "/shots/shot-001-a00000.png", "stale")
		local path = shots:take({ name = "a" })
		poll()
		poll()
		assert.equals("png", assert(io.open(path, "rb")):read("a"))
		assert.is_false(exists(out .. "/shots/shot-001-a00001.png"))
	end)

	it("passes a directory elsewhere as an absolute path", function()
		_G.IterateGameDirectories = function()
			return { Game = { Binaries = { Win64 = { __absolute_path = "Z:/Game/Binaries/Win64" } } } }
		end
		shots:take({ name = "a" })
		assert.same({ ("shot filename=%s/shots/shot-001-a"):format(out) }, commands)
	end)

	it("refuses an absolute directory with a space, which the console would cut", function()
		_G.IterateGameDirectories = function()
			return { Game = { Binaries = { Win64 = { __absolute_path = "Z:/Game/Binaries/Win64" } } } }
		end
		local spaced = new("D:/My Mods/devtools")
		assert.is_nil(spaced:take({ name = "a" }))
		assert.same({}, commands)
		assert.matches("^shot ! screenshot directory has a space", journal.lines[1])
	end)

	it("logs a failing command instead of raising, and the next shot runs", function()
		write = function()
			error("UObject instance is nullptr", 0)
		end
		assert.is_nil(shots:take({ name = "a" }))
		assert.same({ "shot ! UObject instance is nullptr" }, journal.lines)

		write = engineWrites
		assert.is_string(shots:take({ name = "b" }))
	end)

	it("refuses a shot while one is pending, and takes it once that one times out", function()
		write = function() end
		assert.is_string(shots:take({ name = "a" }))
		assert.is_nil(shots:take({ name = "b" }))
		assert.equals("shot ! a screenshot is pending", journal.lines[#journal.lines])

		journal.clock.now = 5
		poll()
		assert.matches("^shot #1 ! no .* after 5000 ms$", journal.lines[#journal.lines])
		assert.is_string(shots:take({ name = "b" }))
	end)

	it("replaces a same-named shot of an earlier load", function()
		create(out .. "/shots/shot-001-a.png", "old")
		local path = shots:take({ name = "a" })
		poll()
		poll()
		assert.equals("png", assert(io.open(path, "rb")):read("a"))
	end)
end)
