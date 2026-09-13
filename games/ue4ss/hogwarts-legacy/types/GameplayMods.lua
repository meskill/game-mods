---@meta

---@class FGameplayProperty
---@field TypeName FName
---@field UpdateFunctionName FName
---@field OnUpdatedCallback UFunction
---@field bSkipUpdateOnTick boolean
---@field SupportedOnAddModFilters TArray<TSubclassOf<UModFilter>>
---@field SupportedOnApplyModFilters TArray<TSubclassOf<UModFilter>>
local FGameplayProperty = {}



---@class FGameplayPropertyEntry
local FGameplayPropertyEntry = {}


---@class FGameplayPropertyNumeric : FGameplayProperty
local FGameplayPropertyNumeric = {}


---@class FGameplayPropertySearchHelper
---@field OffsetInObject int32
---@field Depth int32
---@field CachedInternalName FString
---@field CachedDisplayName FString
---@field OwnerClass UClass
local FGameplayPropertySearchHelper = {}



---@class FGameplayProperty_Float : FGameplayPropertyNumeric
---@field Current float
---@field Base float
---@field Min float
---@field Max float
local FGameplayProperty_Float = {}



---@class FGameplayProperty_Int : FGameplayPropertyNumeric
---@field Current int32
---@field Base int32
---@field Min int32
---@field Max int32
---@field RoundingType EPostCalculationRoundingType
local FGameplayProperty_Int = {}



---@class FModEntry
---@field Modifier UGameplayPropertyMod
---@field InputValueProvider UFunction
---@field OwnerModComponent UGameplayModComponent
---@field Handle FGuid
---@field CurrentLifeTime float
---@field bRemove boolean
local FModEntry = {}



---@class FModFloatSettings : FModSettingsNumeric
---@field FixedAmount float
local FModFloatSettings = {}



---@class FModIntSettings : FModSettingsNumeric
---@field FixedAmount int32
local FModIntSettings = {}



---@class FModSettingsNumeric
---@field CalculationType EPropModCalculationType
---@field TimeBasedEffect ETimeBasedEffectType
---@field ExternalInputEffect EInputModType
---@field TimeCurve FRuntimeFloatCurve
---@field InputCurve FRuntimeFloatCurve
local FModSettingsNumeric = {}



---@class FModTarget
---@field bQueryBlueprints boolean
---@field Class UClass
---@field PathToProperty FString
local FModTarget = {}



---@class FPropertyList
---@field Properties TArray<FGameplayPropertyEntry>
---@field bAutomaticallyAdded boolean
local FPropertyList = {}



---@class FSelectableName
---@field Name FName
local FSelectableName = {}



---@class FSelectableString
---@field String FString
local FSelectableString = {}



---@class IModdable : IInterface
local IModdable = {}


---@class IModdableCustomGather : IInterface
local IModdableCustomGather = {}

---@return TArray<UObject>
function IModdableCustomGather:GatherAssociatedModdables() end


---@class UGameplayModComponent : UActorComponent
---@field ModEntries TArray<FModEntry>
---@field LocalModEntries TArray<FModEntry>
---@field UnreplicatedModEntries TArray<FModEntry>
---@field ModdableObjectProperties TMap<UObject, FPropertyList>
local UGameplayModComponent = {}

---@param Tag FGameplayTag
---@param Value float
---@param bForceRecomputeProperties boolean
function UGameplayModComponent:SetModBlackboardValue(Tag, Value, bForceRecomputeProperties) end
---@param InMod UGameplayPropertyMod
function UGameplayModComponent:ServerRemoveMod(InMod) end
---@param InModGroup UGameplayPropertyModGroup
function UGameplayModComponent:ServerRemoveGroup(InModGroup) end
---@param InMod UGameplayPropertyMod
function UGameplayModComponent:ServerAddMod(InMod) end
---@param InModGroup UGameplayPropertyModGroup
function UGameplayModComponent:ServerAddGroup(InModGroup) end
---@param InTarget UObject
function UGameplayModComponent:RemoveTargetModdable(InTarget) end
---@param InMod UGameplayPropertyMod
function UGameplayModComponent:RemoveModReplicated(InMod) end
---@param InMod UGameplayPropertyMod
function UGameplayModComponent:RemoveMod(InMod) end
---@param InModGroup UGameplayPropertyModGroup
function UGameplayModComponent:RemoveGroupReplicated(InModGroup) end
---@param InModGroup UGameplayPropertyModGroup
function UGameplayModComponent:RemoveGroup(InModGroup) end
function UGameplayModComponent:OnRep_ModEntries() end
---@param Tag FGameplayTag
---@param OutValue float
---@return boolean
function UGameplayModComponent:GetModBlackboardValue(Tag, OutValue) end
---@param InTarget UObject
function UGameplayModComponent:ExpungeTargetModdable(InTarget) end
---@param InMod UGameplayPropertyMod
function UGameplayModComponent:DelayedRemoveMod(InMod) end
---@param InMod UGameplayPropertyMod
function UGameplayModComponent:ClientRemoveModManualReplication(InMod) end
---@param InModGroup UGameplayPropertyModGroup
function UGameplayModComponent:ClientRemoveGroupManualReplication(InModGroup) end
---@param InMod UGameplayPropertyMod
function UGameplayModComponent:ClientAddModManualReplication(InMod) end
---@param InModGroup UGameplayPropertyModGroup
function UGameplayModComponent:ClientAddGroupManualReplication(InModGroup) end
function UGameplayModComponent:AutoDetectModdables() end
---@param InTarget UObject
function UGameplayModComponent:AddTargetModdable(InTarget) end
---@param InMod UGameplayPropertyMod
function UGameplayModComponent:AddModReplicated(InMod) end
---@param InMod UGameplayPropertyMod
function UGameplayModComponent:AddMod(InMod) end
---@param InModGroup UGameplayPropertyModGroup
function UGameplayModComponent:AddGroupReplicated(InModGroup) end
---@param InModGroup UGameplayPropertyModGroup
function UGameplayModComponent:AddGroup(InModGroup) end


---@class UGameplayPropertyMod : UDataAsset
---@field ModTarget FModTarget
---@field bEvaluateInputOnAddOnly boolean
---@field ExternalInputSource EModExternalInputMethod
---@field ExternalInputFunction FSelectableName
---@field ExternalInputTag FGameplayTag
---@field LifeTime float
---@field bApplyOnceOnly boolean
---@field bDelayedRemoveAfterUse boolean
---@field bStackable boolean
---@field ModAddFilters TArray<UModFilter>
---@field ModApplyFilters TArray<UModFilter>
---@field ModExtensions TArray<UModExtension>
local UGameplayPropertyMod = {}

---@param InTargetObject UObject
function UGameplayPropertyMod:OnModRemoved_BP(InTargetObject) end
---@param InTargetObject UObject
---@param bFirstTime boolean
function UGameplayPropertyMod:OnModApplied_BP(InTargetObject, bFirstTime) end
---@param InTargetObject UObject
function UGameplayPropertyMod:OnModAdded_BP(InTargetObject) end


---@class UGameplayPropertyModGroup : UDataAsset
---@field Modifiers TArray<UGameplayPropertyMod>
local UGameplayPropertyModGroup = {}

---@param TargetObject UObject
function UGameplayPropertyModGroup:OnRemoved(TargetObject) end
---@param TargetObject UObject
function UGameplayPropertyModGroup:OnAdded(TargetObject) end


---@class UGameplayPropertyModNumeric : UGameplayPropertyMod
---@field FloatSettings FModFloatSettings
---@field IntSettings FModIntSettings
local UGameplayPropertyModNumeric = {}



---@class UModExtension : UObject
local UModExtension = {}


---@class UModFilter : UPrimaryDataAsset
local UModFilter = {}


