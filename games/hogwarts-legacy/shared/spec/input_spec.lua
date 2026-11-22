local SETTINGS = "/Script/Engine.Default__InputSettings"

local function name(text)
	return {
		text = text,
		ToString = function()
			return text
		end,
	}
end

---An action mapping as the input settings hold it.
local function mapping(action, key)
	return {
		ActionName = name(action),
		Key = { KeyName = name(key) },
		bShift = false,
		bCtrl = false,
		bAlt = false,
		bCmd = false,
		GroupName = name("Gameplay"),
		SortIndex = 3,
	}
end

---The mapping a struct parameter describes, as "action key".
local function describe_struct(struct)
	assert.equals("Gameplay", struct.GroupName.text)
	assert.equals(3, struct.SortIndex)
	assert.is_false(struct.bShift or struct.bCtrl or struct.bAlt or struct.bCmd)
	return struct.ActionName.text .. " " .. struct.Key.KeyName.text
end

describe("hogwarts.input", function()
	local Input, settings, calls

	before_each(function()
		calls = {}
		local mappings = {
			mapping("CM_GamePad_DpadDown", "Gamepad_DPad_Down"),
			mapping("Jump", "Gamepad_FaceButton_Bottom"),
			mapping("AM_Loadout1", "Gamepad_DPad_Up"),
			mapping("AM_Loadout1", "Five"),
		}
		function mappings:GetArrayNum()
			return #self
		end
		settings = { ActionMappings = mappings }
		function settings:IsValid()
			return true
		end
		function settings:RemoveActionMapping(struct, rebuild)
			assert.is_false(rebuild)
			calls[#calls + 1] = "remove " .. describe_struct(struct)
		end
		function settings:AddActionMapping(struct, rebuild)
			assert.is_false(rebuild)
			calls[#calls + 1] = "add " .. describe_struct(struct)
		end
		function settings:ForceRebuildKeymaps()
			calls[#calls + 1] = "rebuild"
		end
		_G.StaticFindObject = function(path)
			assert.equals(SETTINGS, path)
			return settings
		end
		_G.FName = name

		package.loaded["hogwarts.input"] = nil
		Input = require("hogwarts.input")
	end)

	after_each(function()
		_G.StaticFindObject, _G.FName = nil, nil
	end)

	it("takes the mappings off the blocked keys only, and puts them back", function()
		local blocker = Input.blocker({ "Gamepad_DPad_Up", "Gamepad_DPad_Down", "Gamepad_DPad_Left" })
		blocker:block()
		assert.same({
			"remove CM_GamePad_DpadDown Gamepad_DPad_Down",
			"remove AM_Loadout1 Gamepad_DPad_Up",
			"rebuild",
		}, calls)

		calls = {}
		blocker:restore()
		assert.same({
			"add CM_GamePad_DpadDown Gamepad_DPad_Down",
			"add AM_Loadout1 Gamepad_DPad_Up",
			"rebuild",
		}, calls)
	end)

	it("takes the mappings of the blocked actions only, on any key", function()
		local blocker = Input.actionBlocker({ "AM_Loadout1", "Jump" })
		blocker:block()
		blocker:restore()
		assert.same({
			"remove Jump Gamepad_FaceButton_Bottom",
			"remove AM_Loadout1 Gamepad_DPad_Up",
			"remove AM_Loadout1 Five",
			"rebuild",
			"add Jump Gamepad_FaceButton_Bottom",
			"add AM_Loadout1 Gamepad_DPad_Up",
			"add AM_Loadout1 Five",
			"rebuild",
		}, calls)
	end)

	it("takes the blocked actions off the given keys only", function()
		local blocker = Input.actionBlocker({ "AM_Loadout1" }, { "Gamepad_DPad_Up" })
		blocker:block()
		assert.same({ "remove AM_Loadout1 Gamepad_DPad_Up", "rebuild" }, calls)
	end)

	it("removes once while blocked and restores only after a block", function()
		local blocker = Input.blocker({ "Gamepad_DPad_Up" })
		blocker:restore()
		assert.same({}, calls)

		blocker:block()
		blocker:block()
		blocker:restore()
		blocker:restore()
		assert.same({
			"remove AM_Loadout1 Gamepad_DPad_Up",
			"rebuild",
			"add AM_Loadout1 Gamepad_DPad_Up",
			"rebuild",
		}, calls)
	end)

	it("does not touch the settings when no mapping uses the keys", function()
		local blocker = Input.blocker({ "Gamepad_DPad_Left" })
		blocker:block()
		blocker:restore()
		assert.same({}, calls)
	end)

	it("reads rebound controls after a reset, not between blocks", function()
		local blocker = Input.blocker({ "Gamepad_DPad_Left" })
		blocker:block()
		blocker:restore()
		settings.ActionMappings[2] = mapping("Revelio", "Gamepad_DPad_Left")

		blocker:block()
		assert.same({}, calls)

		blocker:reset()
		blocker:block()
		assert.same({ "remove Revelio Gamepad_DPad_Left", "rebuild" }, calls)
	end)

	describe("tracker", function()
		local A, B = "Gamepad_RightShoulder", "Gamepad_DPad_Up"
		local keys, held, time
		local controller = {
			IsInputKeyDown = function(_, key)
				return held[key.KeyName.text] == true
			end,
		}

		---Polls at `at` seconds with exactly these keys held.
		local function poll(at, ...)
			time, held = at, {}
			for _, key in ipairs({ ... }) do
				held[key] = true
			end
			keys:update(controller)
		end

		before_each(function()
			keys = Input.tracker({ A, B }, function()
				return time
			end)
		end)

		it("reports a press and a release at the poll that sees each, once", function()
			poll(0)
			poll(1, A)
			assert.is_true(keys:pressed(A))
			assert.is_false(keys:pressed(B))
			poll(2, A)
			assert.is_true(keys:isDown(A))
			assert.is_false(keys:pressed(A))
			poll(3)
			assert.is_true(keys:released(A))
			poll(4)
			assert.is_false(keys:released(A))
		end)

		it("times a hold from the poll that saw the press, and 0 once released", function()
			poll(0)
			poll(1.5, A)
			assert.equals(0, keys:heldFor(A))
			poll(2, A, B)
			assert.equals(0.5, keys:heldFor(A))
			assert.equals(0, keys:heldFor(B))
			poll(3, B)
			assert.equals(0, keys:heldFor(A))
			assert.equals(1, keys:heldFor(B))
		end)

		it("reports no edges at the first poll after creation or a reset", function()
			poll(0, A)
			assert.is_true(keys:isDown(A))
			assert.is_false(keys:pressed(A))

			keys:reset()
			assert.is_false(keys:isDown(A))
			poll(5, B)
			assert.is_false(keys:released(A))
			assert.is_false(keys:pressed(B))
			poll(6, B)
			assert.equals(1, keys:heldFor(B))
		end)

		it("rejects a key it does not track", function()
			poll(0)
			assert.has_error(function()
				keys:isDown("Gamepad_DPad_Left")
			end)
		end)
	end)
end)
