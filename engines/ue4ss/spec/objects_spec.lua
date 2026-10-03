---A stand-in for a UE4SS UObject wrapper.
local function object(fields)
    fields = fields or {}
    function fields:IsValid() return self.valid ~= false end
    return fields
end

local function controller(isLocal, valid)
    return object({
        valid = valid,
        IsLocalPlayerController = function() return isLocal end,
    })
end

describe("ue4ss.objects", function()
    local Objects

    before_each(function()
        package.loaded["ue4ss.objects"] = nil
        Objects = require("ue4ss.objects")
    end)

    after_each(function()
        _G.FindAllOf = nil
        _G.StaticFindObject = nil
    end)

    describe("playerController", function()
        it("returns nil when no PlayerController exists", function()
            _G.FindAllOf = function() return nil end
            assert.is_nil(Objects.playerController())
        end)

        it("skips invalid and remote controllers", function()
            local remote, stale, player = controller(false), controller(true, false), controller(true)
            _G.FindAllOf = function(class)
                assert.equals("PlayerController", class)
                return { remote, stale, player }
            end
            assert.equals(player, Objects.playerController())
        end)
    end)

    describe("gameplayStatics", function()
        it("returns nil until the default object loads, then finds it", function()
            local loaded = object({ valid = false })
            _G.StaticFindObject = function(path)
                assert.equals("/Script/Engine.Default__GameplayStatics", path)
                return loaded
            end
            assert.is_nil(Objects.gameplayStatics())

            loaded.valid = true
            assert.equals(loaded, Objects.gameplayStatics())
        end)

        it("searches again once the cached object is no longer valid", function()
            local first, second = object(), object()
            local found = first
            _G.StaticFindObject = function() return found end
            assert.equals(first, Objects.gameplayStatics())

            first.valid, found = false, second
            assert.equals(second, Objects.gameplayStatics())
        end)
    end)
end)
