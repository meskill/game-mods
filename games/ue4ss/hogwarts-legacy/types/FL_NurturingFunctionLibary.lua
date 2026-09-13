---@meta

---@class UFL_NurturingFunctionLibary_C : UBlueprintFunctionLibrary
local UFL_NurturingFunctionLibary_C = {}

---@param GearItem FGearItem
---@param GearRarity FName
---@param __WorldContext UObject
---@param TotalAvailableTraits int32
function UFL_NurturingFunctionLibary_C:GetAllAvailableTraitsForLoom(GearItem, GearRarity, __WorldContext, TotalAvailableTraits) end
---@param Widget UWidget
---@param __WorldContext UObject
function UFL_NurturingFunctionLibary_C:MoveCursorToCenterOfWidget(Widget, __WorldContext) end
---@param GearItem FGearItem
---@param __WorldContext UObject
---@param TotalAvailableTraits int32
function UFL_NurturingFunctionLibary_C:GetTotalAvailableTriats(GearItem, __WorldContext, TotalAvailableTraits) end
---@param Hide boolean
---@param Provider UObject
---@param __WorldContext UObject
function UFL_NurturingFunctionLibary_C:ToggleHideHUDForNurturingScreen(Hide, Provider, __WorldContext) end
---@param CreatureState UCreatureState
---@param __WorldContext UObject
---@param TotalDuration FTimespan
---@param DurationRemaining FTimespan
UFL_NurturingFunctionLibary_C['Get Creature Pregnancy Durations'] = function(self, CreatureState, __WorldContext, TotalDuration, DurationRemaining) end
---@param __WorldContext UObject
---@param UsingPlayerCamera boolean
function UFL_NurturingFunctionLibary_C:GetIsUsingPlayerCamera(__WorldContext, UsingPlayerCamera) end
---@param CreatureState UCreatureState
---@param __WorldContext UObject
---@param CanMoveCreature boolean
---@param ErrorMsgKey FString
UFL_NurturingFunctionLibary_C['Get Can View Creature Details'] = function(self, CreatureState, __WorldContext, CanMoveCreature, ErrorMsgKey) end
---@param CreatureState UCreatureState
---@param __WorldContext UObject
---@param CanMoveCreature boolean
---@param ErrorMsgKey FString
UFL_NurturingFunctionLibary_C['Get Can Summon Creature'] = function(self, CreatureState, __WorldContext, CanMoveCreature, ErrorMsgKey) end
---@param TimeRemaining FTimespan
---@param __WorldContext UObject
---@param TimeRemainingText FText
function UFL_NurturingFunctionLibary_C:GetTimeRemainingText(TimeRemaining, __WorldContext, TimeRemainingText) end
---@param CreatureUID FName
---@param __WorldContext UObject
---@param OutName FString
---@param OutIsLocalizationKey boolean
function UFL_NurturingFunctionLibary_C:GetCreatureDisplayNameFromUIDName(CreatureUID, __WorldContext, OutName, OutIsLocalizationKey) end
---@param CreatureState UCreatureState
---@param __WorldContext UObject
---@param CanMoveCreature boolean
---@param ErrorMsgKey FString
function UFL_NurturingFunctionLibary_C:GetCanMoveCreatureOutOfNurtureSpace(CreatureState, __WorldContext, CanMoveCreature, ErrorMsgKey) end
---@param Unlock_Source FTransfigurationUnlockSource
---@param __WorldContext UObject
---@param Unlock_Text FText
function UFL_NurturingFunctionLibary_C:GetUnlockTextFromUnlockSource(Unlock_Source, __WorldContext, Unlock_Text) end
---@param CreatureDefinition UCreatureDefinition
---@param __WorldContext UObject
---@param IconTextureName FString
function UFL_NurturingFunctionLibary_C:GetUnbornCreatureIconTextureName(CreatureDefinition, __WorldContext, IconTextureName) end
---@param CreatureState UCreatureState
---@param PhoenixTextBlock UPhoenixTextBlock
---@param __WorldContext UObject
function UFL_NurturingFunctionLibary_C:SetTextToCreatureName(CreatureState, PhoenixTextBlock, __WorldContext) end
---@param CreatureState UCreatureState
---@param __WorldContext UObject
---@param IconTextureName FString
function UFL_NurturingFunctionLibary_C:GetCreatureIconTextureName(CreatureState, __WorldContext, IconTextureName) end
---@param InVariation FName
---@param __WorldContext UObject
---@param OutInfoString FString
function UFL_NurturingFunctionLibary_C:GetCreatureInventoryInfoString(InVariation, __WorldContext, OutInfoString) end
---@param __WorldContext UObject
---@param ButtonLegend FText
function UFL_NurturingFunctionLibary_C:GetCreatureInventoryButtonLegend(__WorldContext, ButtonLegend) end
---@param InCreatureUID FName
---@param __WorldContext UObject
---@param CreatureSpecies FString
function UFL_NurturingFunctionLibary_C:GetCreatureSpecies(InCreatureUID, __WorldContext, CreatureSpecies) end


