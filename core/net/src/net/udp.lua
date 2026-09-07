local socket = require("socket")

---@class UDP
---@field private socket any
local UDP = {}
UDP.__index = UDP

---Create a nonblocking IPv4 UDP client. This performs no handshake.
---@param host string
---@param port integer
---@return UDP? client
---@return string? error
function UDP.connect(host, port)
    local handle, err = socket.udp()
    if not handle then
        return nil, err
    end

    local ok
    ok, err = handle:settimeout(0)
    if ok then
        ok, err = handle:setpeername(host, port)
    end
    if not ok then
        handle:close()
        return nil, err
    end

    return setmetatable({ socket = handle }, UDP)
end

---Send exactly one datagram. Success is not a delivery acknowledgement.
---@param data string
---@return number? success
---@return string? error
function UDP:send(data)
    if not self.socket then
        return nil, "closed"
    end
    return self.socket:send(data)
end

---Read one datagram without waiting; nil, "timeout" means none is ready.
---@return string? data
---@return string? error
function UDP:receive()
    if not self.socket then
        return nil, "closed"
    end
    -- Accept any IPv4 UDP payload without silently truncating it.
    return self.socket:receive(65507)
end

function UDP:close()
    if self.socket then
        self.socket:close()
        self.socket = nil
    end
end

return UDP