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

---Read one datagram. Without a timeout this never waits: nil, "timeout"
---means none is ready. With a timeout it blocks up to that many seconds.
---@param timeout? number Seconds to wait; omit for a nonblocking read.
---@return string? data
---@return string? error
function UDP:receive(timeout)
	if not self.socket then
		return nil, "closed"
	end
	if timeout then
		self.socket:settimeout(timeout)
	end
	-- Accept any IPv4 UDP payload without silently truncating it.
	local data, err = self.socket:receive(65507)
	if timeout then
		self.socket:settimeout(0)
	end
	return data, err
end

function UDP:close()
	if self.socket then
		self.socket:close()
		self.socket = nil
	end
end

return UDP
