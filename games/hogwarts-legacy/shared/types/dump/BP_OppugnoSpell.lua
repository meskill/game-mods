---@meta

---@class ABP_OppugnoSpell_C : AOppugnoSpellTool
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Ak_audio location'] UAkComponent
---@field DefaultSceneRoot USceneComponent
---@field CamShake TSubclassOf<UCameraShakeBase>
local ABP_OppugnoSpell_C = {}

function ABP_OppugnoSpell_C:ReceiveBeginPlay() end
---@param Target AActor
---@param Location FVector
---@param MuzzleLocation FVector
function ABP_OppugnoSpell_C:OnCastSpell(Target, Location, MuzzleLocation) end
---@param EntryPoint int32
function ABP_OppugnoSpell_C:ExecuteUbergraph_BP_OppugnoSpell(EntryPoint) end


