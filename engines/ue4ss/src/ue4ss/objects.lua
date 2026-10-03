---Unreal object lookups. Unlike UEHelpers, these return nil when nothing is
---found, on every UE4SS build since v3.0.1.
local Objects = {}

---The first locally controlled player controller, or nil while none exists
---(menus, travel). Scans every PlayerController: cache the result, for example
---with ue4ss.lookup.
---@return APlayerController?
function Objects.playerController()
    for _, controller in ipairs(FindAllOf("PlayerController") or {}) do
        ---@cast controller APlayerController
        if controller:IsValid() and controller:IsLocalPlayerController() then
            return controller
        end
    end
    return nil
end

---A valid object at a full path, such as a class default object
---("/Script/Engine.Default__GameplayStatics"), or nil.
---@param path string
---@return UObject?
function Objects.find(path)
    local object = StaticFindObject(path)
    if object and object:IsValid() then
        return object
    end
    return nil
end

---@type UGameplayStatics?
local gameplayStatics

---The UGameplayStatics default object for calling its static functions, or nil
---before the engine has loaded it.
---@return UGameplayStatics?
function Objects.gameplayStatics()
    if not gameplayStatics or not gameplayStatics:IsValid() then
        gameplayStatics = Objects.find("/Script/Engine.Default__GameplayStatics") --[[@as UGameplayStatics?]]
    end
    return gameplayStatics
end

return Objects
