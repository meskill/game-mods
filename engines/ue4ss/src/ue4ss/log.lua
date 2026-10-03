local Log = {}

---A logger for the UE4SS console and UE4SS.log. UE4SS's print does not end
---lines itself, so each message gets a newline.
---@param tag string Prepended to every message, e.g. "[MyMod]".
---@return fun(message: string)
function Log.new(tag)
    local head = tag .. " "
    return function(message)
        print(head .. message .. "\n")
    end
end

return Log
