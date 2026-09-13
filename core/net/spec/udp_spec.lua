local socket = require("socket")
local UDP = require("net.udp")

describe("net.udp", function()
    local server, port

    before_each(function()
        -- A local UDP server on an ephemeral loopback port.
        server = assert(socket.udp())
        assert(server:setsockname("127.0.0.1", 0))
        local _, boundPort = server:getsockname()
        port = boundPort
        server:settimeout(1)
    end)

    after_each(function()
        server:close()
    end)

    it("sends a request and receives the server's response", function()
        local client = assert(UDP.connect("127.0.0.1", port))

        assert(client:send("ping"))

        local request, ip, clientPort = server:receivefrom()
        assert.equals("ping", request)
        assert(server:sendto("pong", ip, clientPort))

        local response = assert(client:receive(1))
        assert.equals("pong", response)

        client:close()
    end)

    it("never blocks when no response is ready", function()
        local client = assert(UDP.connect("127.0.0.1", port))

        local started = socket.gettime()
        local data, err = client:receive()
        local elapsed = socket.gettime() - started

        assert.is_nil(data)
        assert.equals("timeout", err)
        assert.is_true(elapsed < 0.1, "receive blocked for " .. elapsed .. "s")

        client:close()
    end)

    it("waits up to the timeout, then reverts to nonblocking", function()
        local client = assert(UDP.connect("127.0.0.1", port))

        -- Nothing sent: a bounded wait gives up on time, not instantly.
        local started = socket.gettime()
        local data, err = client:receive(0.2)
        local elapsed = socket.gettime() - started
        assert.is_nil(data)
        assert.equals("timeout", err)
        assert.is_true(elapsed >= 0.15, "gave up after only " .. elapsed .. "s")

        -- A later no-arg receive must be nonblocking again.
        started = socket.gettime()
        client:receive()
        assert.is_true(socket.gettime() - started < 0.1, "timeout leaked into later calls")

        client:close()
    end)

    it("refuses to send or receive after close", function()
        local client = assert(UDP.connect("127.0.0.1", port))
        client:close()

        local sent, sendErr = client:send("late")
        assert.is_nil(sent)
        assert.equals("closed", sendErr)

        local data, recvErr = client:receive()
        assert.is_nil(data)
        assert.equals("closed", recvErr)
    end)
end)
