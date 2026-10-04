---@meta

---@class ABP_SkinFX_StoneSkin_C : ABP_SkinFX_Graph_Parent_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_1_NewTrack_0_461AD6A145C277F47E9CACA8B97F7887 float
---@field Timeline_1__Direction_461AD6A145C277F47E9CACA8B97F7887 ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Timeline_0_NewTrack_1_13D198C14C93B8D3DBC74EBF02E16550 float
---@field Timeline_0_NewTrack_0_13D198C14C93B8D3DBC74EBF02E16550 float
---@field Timeline_0__Direction_13D198C14C93B8D3DBC74EBF02E16550 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
local ABP_SkinFX_StoneSkin_C = {}

function ABP_SkinFX_StoneSkin_C:Timeline_0__FinishedFunc() end
function ABP_SkinFX_StoneSkin_C:Timeline_0__UpdateFunc() end
function ABP_SkinFX_StoneSkin_C:Timeline_1__FinishedFunc() end
function ABP_SkinFX_StoneSkin_C:Timeline_1__UpdateFunc() end
---@param CurrentTime float
function ABP_SkinFX_StoneSkin_C:SkinFXNotifyRetrigger(CurrentTime) end
function ABP_SkinFX_StoneSkin_C:SkinFXNotifyStart() end
---@param EndStyle ESkinFXEffectEndStyle
---@param CurrentTime float
function ABP_SkinFX_StoneSkin_C:SkinFXNotifyEnd(EndStyle, CurrentTime) end
---@param EndPlayReason EEndPlayReason::Type
function ABP_SkinFX_StoneSkin_C:ReceiveEndPlay(EndPlayReason) end
---@param EntryPoint int32
function ABP_SkinFX_StoneSkin_C:ExecuteUbergraph_BP_SkinFX_StoneSkin(EntryPoint) end


