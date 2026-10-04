---@meta

---@class UFL_Brooms_C : UBlueprintFunctionLibrary
local UFL_Brooms_C = {}

---@param Biped_Player UObject
---@param __WorldContext UObject
---@param IsWalking_ boolean
function UFL_Brooms_C:IsPlayerWalking(Biped_Player, __WorldContext, IsWalking_) end
---@param Caller AActor
---@param __WorldContext UObject
---@param Player_Broom AFlyingBroom
function UFL_Brooms_C:GetPlayerBroom(Caller, __WorldContext, Player_Broom) end
---@param InActor AActor
---@param InBroomCapsule TSubclassOf<AFlyingBroom>
---@param InBroomProp TSubclassOf<AFlyingBroom>
---@param MountType EBroomMountType
---@param __WorldContext UObject
function UFL_Brooms_C:PutPlayerOnBroom(InActor, InBroomCapsule, InBroomProp, MountType, __WorldContext) end


