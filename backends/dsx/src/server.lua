local UDP = require("net.udp")
-- dkjson returns a string without an output buffer, and a third result on decode errors.
---@type { encode: (fun(value: any): string), decode: (fun(text: string): any, integer, string?) }
local json = require("dkjson")

---@class DSXInstruction
---@field type integer
---@field parameters table

---@class DSXServerOptions
---@field host? string Defaults to 127.0.0.1.
---@field port? integer Overrides local DSX port discovery.

---@class DSXServer
---@field private transport UDP
local Server = {}
Server.__index = Server

Server.InstructionType = {
    GetDSXStatus = 0,
    TriggerUpdate = 1,
    RGBUpdate = 2,
    PlayerLED = 3,
    TriggerThreshold = 4,
    MicLED = 5,
    PlayerLEDNewRevision = 6,
    ResetToUserSettings = 7,
}

---Resolve DSX's UDP port from its runtime file, defaulting to 6969.
---@return integer
local function discoverPort()
    local appData = os.getenv("LOCALAPPDATA")
    if appData then
        local file = io.open(appData .. "\\DSX\\DSX_UDP_PortNumber.txt", "r")
        if file then
            local contents = file:read("*a")
            local port = tonumber(contents)
            file:close()
            if port and port % 1 == 0 and port >= 1 and port <= 65535 then
                return math.floor(port)
            end
        end
    end
    return 6969
end

---Open a client socket, not a confirmed DSX session.
---@param options? DSXServerOptions
---@return DSXServer? server
---@return string? error
function Server.connect(options)
    options = options or {}
    local transport, err = UDP.connect(
        options.host or "127.0.0.1",
        options.port or discoverPort()
    )
    if not transport then
        return nil, err
    end
    return setmetatable({ transport = transport }, Server)
end

---Send an ordered instruction array in one JSON datagram.
---@param instructions DSXInstruction[]
---@return number? success
---@return string? error
function Server:send(instructions)
    return self.transport:send(json.encode({ instructions = instructions }))
end

---@return number? success
---@return string? error
function Server:requestStatus()
    return self:send({
        { type = Server.InstructionType.GetDSXStatus, parameters = {} },
    })
end

---Poll one decoded DSX response. No response yet returns nil, "timeout".
---@return table? response
---@return string? error
function Server:receive()
    local data, err = self.transport:receive()
    if not data then
        return nil, err
    end
    local response, position, decodeError = json.decode(data)
    if decodeError then
        return nil, decodeError
    end
    if type(response) ~= "table"
        or getmetatable(response).__jsontype ~= "object"
        or data:sub(position):find("%S") then
        return nil, "expected a DSX JSON response object"
    end
    return response
end

---Restore the controller's DSX profile, not merely turn its triggers off.
---@param controllerIndex integer DSX Devices[].Index, not a Lua array index.
---@return number? success
---@return string? error
function Server:reset(controllerIndex)
    return self:send({
        {
            type = Server.InstructionType.ResetToUserSettings,
            parameters = { controllerIndex },
        },
    })
end

---Close the socket only; restore owned controller settings before closing.
function Server:close()
    self.transport:close()
end

return Server
