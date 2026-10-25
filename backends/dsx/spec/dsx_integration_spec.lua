-- Protocol facts only a live DSX can answer for. Needs DSX running with its
-- UDP server enabled; found the way the mod finds it (port file, else 6969).
-- Skipped when CI is set or no controller is found.
-- Client behaviour is covered in server_spec.lua.
--
-- Effects are not asserted: DSX has no error channel and no read-back.
-- Judge them by hand with examples/adaptive_triggers.lua.

local socket = require("socket")
local UDP = require("net.udp")
local Server = require("server")
local AdaptiveTrigger = require("adaptive_triggers")

local describeIntegration = os.getenv("CI") and pending or describe

describeIntegration("DSX UDP protocol", function()
	local server

	-- Everything but the clock, so two replies can be compared.
	local function snapshot(status)
		return {
			Status = status.Status,
			isControllerConnected = status.isControllerConnected,
			BatteryLevel = status.BatteryLevel,
			deviceCount = #(status.Devices or {}),
		}
	end

	local function statusInstruction()
		return { type = Server.InstructionType.GetDSXStatus, parameters = {} }
	end

	local function statusRequest()
		local status, err = server:requestStatus(1)
		assert(status, ("DSX did not reply (%s): is it running with the UDP server enabled?"):format(tostring(err)))
		return status
	end

	setup(function()
		server = assert(Server.connect())
	end)

	teardown(function()
		server:close()
	end)

	it("replies with the documented status document", function()
		local status = statusRequest()
		assert.equals("string", type(status.Status))
		assert.equals("boolean", type(status.isControllerConnected))
		assert.equals("number", type(status.BatteryLevel))
		assert.equals("table", type(status.Devices))
	end)

	it("answers once per datagram, not once per instruction", function()
		local batch = {}
		for _ = 1, 4 do
			batch[#batch + 1] = statusInstruction()
		end
		assert(server:send(batch))
		socket.sleep(0.2) -- let every reply DSX might send arrive

		assert(server:receive())
		local extra, err = server:receive()
		assert.is_nil(extra)
		assert.equals("timeout", err)
	end)

	it("reports no error for an instruction it cannot act on", function()
		-- Nothing downstream validates, so the client must.
		assert(server:send({ { type = 99, parameters = { "nonsense" } } }))
		local rejected = assert(server:receive(1))
		assert.same(snapshot(statusRequest()), snapshot(rejected))
	end)

	it("never answers an empty instruction array", function()
		-- The datagram Server:send refuses to emit.
		local raw = assert(UDP.connect("127.0.0.1", Server.discoverPort()))
		assert(raw:send('{"instructions":[]}'))
		local reply, err = raw:receive(1)
		assert.is_nil(reply)
		assert.equals("timeout", err)

		-- The socket is fine: a real request is answered.
		assert(raw:send('{"instructions":[{"type":0,"parameters":[]}]}'))
		assert(raw:receive(1))
		raw:close()
	end)

	describe("with a controller connected", function()
		local devices

		setup(function()
			devices = {}
			for _, device in ipairs(statusRequest().Devices) do
				if device.IsSupportAT then
					devices[#devices + 1] = device
				end
			end
		end)

		local function requireController()
			if #devices == 0 then
				pending("no connected controller supports adaptive triggers")
			end
		end

		it("describes each device the way the client reads it", function()
			requireController()
			local device = devices[1]
			assert.equals("number", type(device.Index))
			assert.equals("string", type(device.MacAddress))
			assert.equals("number", type(device.DeviceType))
			assert.equals("number", type(device.ConnectionType))
		end)

		it("exposes a controller index that findController selects", function()
			requireController()
			assert.equals(devices[1].Index, AdaptiveTrigger.findController({ Devices = devices }))
		end)
	end)
end)
