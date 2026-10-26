local Journal = require("devtools.journal")

describe("devtools.journal", function()
	local path, journal

	local function lines()
		journal:flush()
		local list = {}
		for line in io.lines(path) do
			list[#list + 1] = line
		end
		return list
	end

	before_each(function()
		path = os.tmpname()
		journal = Journal.open(path)
	end)

	after_each(function()
		journal:close()
		os.remove(path)
	end)

	it("starts the file with the wall-clock time it was opened", function()
		assert.matches("^%+0%.%d%d%d debug log opened %d%d%d%d%-%d%d%-%d%d %d%d:%d%d:%d%d$", lines()[1])
	end)

	it("writes the time since opening and the scope, and returns the line", function()
		local line = journal:write("#a1", "= 2")
		assert.matches("^%+%d+%.%d%d%d #a1 = 2$", line)
		assert.equals(line, lines()[2])
	end)

	it("indents continuation lines under the text", function()
		local line = journal:write("trace", "a\nb")
		local first, second = line:match("^(.-a)\n(.*)$")
		assert.equals(#first - 1, #second - 1)
		assert.matches("^%s+b$", second)
	end)

	it("truncates the file when opened again", function()
		journal:write("x", "old")
		journal:close()
		journal = Journal.open(path)
		assert.equals(1, #lines())
	end)

	it("raises an error naming the file when writing, flushing or closing fails", function()
		local failing = false
		local function result(file)
			if failing then
				return nil, "disk full"
			end
			return file
		end
		local fake = { setvbuf = function() end, write = result, flush = result, close = result }
		local open = io.open
		finally(function()
			io.open = open
		end)
		io.open = function()
			return fake
		end
		local broken = Journal.open("broken.log")
		failing = true
		assert.has_error(function()
			broken:write("x", "lost")
		end, "cannot write broken.log: disk full")
		assert.has_error(function()
			broken:flush()
		end, "cannot flush broken.log: disk full")
		assert.has_error(function()
			broken:close()
		end, "cannot close broken.log: disk full")
	end)
end)
