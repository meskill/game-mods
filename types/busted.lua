---@meta
-- Fills gaps in the busted and luassert definitions bundled with LuaLS
-- (${3rd}/busted, ${3rd}/luassert): real APIs the specs use that they omit.

---@class luassert.internal
local internal = {}

---Assert that `actual == expected`; luassert's alias of `equal`.
---@param expected any
---@param actual any
---@param message? string Shown when the assertion fails.
function internal.equals(expected, actual, message) end

---Assert that `value == true`.
---@param value any
---@param message? string Shown when the assertion fails.
function internal.is_true(value, message) end

---Mark a test as pending; inside a running test, skips the rest of it.
---@param name string
---@param block? fun()
function pending(name, block) end
