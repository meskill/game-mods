local socket = require("socket")
local json = require("dkjson")
local Server = require("server")

-- Stands in for DSX: answers each datagram with a numbered reply, so a test
-- can tell which request a reply belongs to. Single threaded, so `pump` runs
-- between a send and a read.
local Stub = {}
Stub.__index = Stub

local function numberedReply(seq)
    return ('{"Status":"ok","Seq":%d}'):format(seq)
end

function Stub.new()
    local handle = assert(socket.udp())
    assert(handle:setsockname("127.0.0.1", 0))
    handle:settimeout(0)
    local _, port = handle:getsockname()
    return setmetatable({
        socket = handle,
        port = tonumber(port),
        requests = {},
        reply = numberedReply,
    }, Stub)
end

---Answer every datagram waiting on the socket.
function Stub:pump()
    while true do
        local data, host, port = self.socket:receivefrom()
        if not data then
            return
        end
        self.requests[#self.requests + 1] = data
        assert(self.socket:sendto(self.reply(#self.requests), host, port))
    end
end

function Stub:close()
    self.socket:close()
end

describe("server", function()
    local stub, server

    local function statusInstruction()
        return { type = Server.InstructionType.GetDSXStatus, parameters = {} }
    end

    before_each(function()
        stub = Stub.new()
        server = assert(Server.connect({ port = stub.port }))
    end)

    after_each(function()
        server:close()
        stub:close()
    end)

    it("refuses an empty batch instead of sending one", function()
        local sent, err = server:send({})
        assert.is_nil(sent)
        assert.equals("no instructions to send", err)

        stub:pump()
        assert.equals(0, #stub.requests)
    end)

    it("sends one datagram per batch, preserving order and parameters", function()
        assert(server:send({
            statusInstruction(),
            { type = Server.InstructionType.TriggerThreshold, parameters = { 0, 2, 128 } },
        }))
        stub:pump()

        assert.equals(1, #stub.requests)
        local sent = json.decode(stub.requests[1])
        assert.equals(2, #sent.instructions)
        assert.equals(Server.InstructionType.GetDSXStatus, sent.instructions[1].type)
        assert.equals(Server.InstructionType.TriggerThreshold, sent.instructions[2].type)
        assert.same({ 0, 2, 128 }, sent.instructions[2].parameters)
    end)

    it("decodes a reply into a table", function()
        assert(server:send({ statusInstruction() }))
        stub:pump()
        assert.equals("ok", assert(server:receive()).Status)
    end)

    it("never returns a stale reply to a status request", function()
        -- Unread replies queue up, as effect acknowledgements do.
        for _ = 1, 3 do
            assert(server:send({ statusInstruction() }))
        end
        stub:pump()

        -- The request is sent after the stale replies are discarded.
        local status, err = server:requestStatus()
        assert.is_nil(status)
        assert.equals("timeout", err)

        stub:pump()
        assert.equals(4, #stub.requests)
        assert.equals(4, assert(server:receive()).Seq)
    end)

    it("reports a reply that is not JSON", function()
        stub.reply = function() return "not json at all" end
        assert(server:send({ statusInstruction() }))
        stub:pump()
        local response, err = server:receive()
        assert.is_nil(response)
        assert.is_string(err)
    end)

    it("rejects a JSON value that is not an object", function()
        stub.reply = function() return "[1,2,3]" end
        assert(server:send({ statusInstruction() }))
        stub:pump()
        local response, err = server:receive()
        assert.is_nil(response)
        assert.equals("expected a DSX JSON response object", err)
    end)

    it("rejects trailing bytes after the object", function()
        stub.reply = function() return '{"Status":"ok"} and more' end
        assert(server:send({ statusInstruction() }))
        stub:pump()
        local response, err = server:receive()
        assert.is_nil(response)
        assert.equals("expected a DSX JSON response object", err)
    end)
end)
