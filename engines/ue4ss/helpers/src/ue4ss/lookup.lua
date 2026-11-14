local Clock = require("ue4ss.clock")

---Caches an object that is expensive to find, such as one located by scanning
---every instance of a class, and limits how often a missing object is searched for.
---@class UE4SSLookup
---@field private interval number
---@field private search fun(...): any
---@field private keep fun(object: any, ...): boolean
---@field private clock fun(): number
---@field private object any
---@field private nextSearchAt number
local Lookup = {}
Lookup.__index = Lookup

---False also when UE4SS rejects the cached wrapper itself, as it does after
---the object behind it is gone (seen in Hogwarts Legacy after 2 minutes).
---@param object UObject
---@return boolean
local function isValid(object)
	local ok, valid = pcall(function()
		return object:IsValid()
	end)
	return ok and valid == true
end

---@param interval number Minimum seconds between searches.
---@param search fun(...): any Returns the object, or nil if there is none yet.
---@param keep? fun(object: any, ...): boolean Whether the cached object still
---applies; defaults to checking that it is valid.
---@param clock? fun(): number Seconds that never go backwards; defaults to
---ue4ss.clock.
---@return UE4SSLookup
function Lookup.new(interval, search, keep, clock)
	return setmetatable({
		interval = interval,
		search = search,
		keep = keep or isValid,
		clock = clock or Clock.now,
		nextSearchAt = -math.huge,
	}, Lookup)
end

---The cached object while it still applies. Otherwise searches, at most once
---per interval, and returns nil between searches.
---@param ... any Passed to keep and search.
---@return any
function Lookup:get(...)
	local object = self.object
	if object ~= nil and self.keep(object, ...) then
		return object
	end
	self.object = nil
	local now = self.clock()
	if now < self.nextSearchAt then
		return nil
	end
	self.nextSearchAt = now + self.interval
	self.object = self.search(...)
	return self.object
end

---Caches an object found another way, without waiting for a search.
---@generic T
---@param object T
---@return T
function Lookup:set(object)
	self.object = object
	return object
end

---Forgets the cached object. The search interval still applies.
function Lookup:clear()
	self.object = nil
end

return Lookup
