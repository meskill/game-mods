---@meta

---@class FHermesBPDelegateHandle
local FHermesBPDelegateHandle = {}


---@class UHermesBPLibrary : UBlueprintFunctionLibrary
local UHermesBPLibrary = {}

---@param Caller UObject
---@param Vector FVector
function UHermesBPLibrary:HermesVectorDelegate__DelegateSignature(Caller, Vector) end
---@param Handle FHermesBPDelegateHandle
function UHermesBPLibrary:HermesUnbind(Handle) end
---@param Caller UObject
---@param int int32
function UHermesBPLibrary:HermesIntDelegate__DelegateSignature(Caller, int) end
---@param Caller UObject
---@param HitResult FHitResult
function UHermesBPLibrary:HermesHitResultDelegate__DelegateSignature(Caller, HitResult) end
---@param Caller UObject
---@param Guid FGuid
function UHermesBPLibrary:HermesGuidDelegate__DelegateSignature(Caller, Guid) end
---@param Caller UObject
---@param Text FText
function UHermesBPLibrary:HermesFTextDelegate__DelegateSignature(Caller, Text) end
---@param Caller UObject
---@param String FString
function UHermesBPLibrary:HermesFStringDelegate__DelegateSignature(Caller, String) end
---@param Caller UObject
---@param String FName
function UHermesBPLibrary:HermesFNameDelegate__DelegateSignature(Caller, String) end
---@param Caller UObject
---@param float float
function UHermesBPLibrary:HermesFloatDelegate__DelegateSignature(Caller, float) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param Vector FVector
function UHermesBPLibrary:HermesExecuteOwnedVector(Name, Owner, Caller, Vector) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param int int32
function UHermesBPLibrary:HermesExecuteOwnedInt(Name, Owner, Caller, int) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param HitResult FHitResult
function UHermesBPLibrary:HermesExecuteOwnedHitResult(Name, Owner, Caller, HitResult) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param Guid FGuid
function UHermesBPLibrary:HermesExecuteOwnedGuid(Name, Owner, Caller, Guid) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param Text FText
function UHermesBPLibrary:HermesExecuteOwnedFText(Name, Owner, Caller, Text) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param String FString
function UHermesBPLibrary:HermesExecuteOwnedFString(Name, Owner, Caller, String) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param String FName
function UHermesBPLibrary:HermesExecuteOwnedFName(Name, Owner, Caller, String) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param float float
function UHermesBPLibrary:HermesExecuteOwnedFloat(Name, Owner, Caller, float) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
function UHermesBPLibrary:HermesExecuteOwnedEvent(Name, Owner, Caller) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param int int32
---@param Int2 int32
function UHermesBPLibrary:HermesExecuteOwnedDoubleInt(Name, Owner, Caller, int, Int2) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param String1 FString
---@param String2 FString
function UHermesBPLibrary:HermesExecuteOwnedDoubleFString(Name, Owner, Caller, String1, String2) end
---@param Name FString
---@param Owner UObject
---@param Caller UObject
---@param Actor AActor
function UHermesBPLibrary:HermesExecuteOwnedAActor(Name, Owner, Caller, Actor) end
---@param Name FString
---@param Caller UObject
---@param Vector FVector
function UHermesBPLibrary:HermesExecuteAllVector(Name, Caller, Vector) end
---@param Name FString
---@param Caller UObject
---@param int int32
function UHermesBPLibrary:HermesExecuteAllInt(Name, Caller, int) end
---@param Name FString
---@param Caller UObject
---@param HitResult FHitResult
function UHermesBPLibrary:HermesExecuteAllHitResult(Name, Caller, HitResult) end
---@param Name FString
---@param Caller UObject
---@param Guid FGuid
function UHermesBPLibrary:HermesExecuteAllGuid(Name, Caller, Guid) end
---@param Name FString
---@param Caller UObject
---@param Text FText
function UHermesBPLibrary:HermesExecuteAllFText(Name, Caller, Text) end
---@param Name FString
---@param Caller UObject
---@param String FString
function UHermesBPLibrary:HermesExecuteAllFString(Name, Caller, String) end
---@param Name FString
---@param Caller UObject
---@param String FName
function UHermesBPLibrary:HermesExecuteAllFName(Name, Caller, String) end
---@param Name FString
---@param Caller UObject
---@param float float
function UHermesBPLibrary:HermesExecuteAllFloat(Name, Caller, float) end
---@param Name FString
---@param Caller UObject
function UHermesBPLibrary:HermesExecuteAllEvent(Name, Caller) end
---@param Name FString
---@param Caller UObject
---@param Int1 int32
---@param Int2 int32
function UHermesBPLibrary:HermesExecuteAllDoubleInt(Name, Caller, Int1, Int2) end
---@param Name FString
---@param Caller UObject
---@param String1 FString
---@param String2 FString
function UHermesBPLibrary:HermesExecuteAllDoubleFString(Name, Caller, String1, String2) end
---@param Name FString
---@param Caller UObject
---@param Actor AActor
function UHermesBPLibrary:HermesExecuteAllAActor(Name, Caller, Actor) end
---@param Caller UObject
function UHermesBPLibrary:HermesEventDelegate__DelegateSignature(Caller) end
---@param Caller UObject
---@param Int1 int32
---@param Int2 int32
function UHermesBPLibrary:HermesDoubleIntDelegate__DelegateSignature(Caller, Int1, Int2) end
---@param Caller UObject
---@param String1 FString
---@param String2 FString
function UHermesBPLibrary:HermesDoubleFStringDelegate__DelegateSignature(Caller, String1, String2) end
---@param Delegate_Vector FHermesBindVectorDelegate_Vector
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UHermesBPLibrary:HermesBindVector(Delegate_Vector, Owner, Handle) end
---@param Delegate_Int FHermesBindIntDelegate_Int
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UHermesBPLibrary:HermesBindInt(Delegate_Int, Owner, Handle) end
---@param Delegate_HitResult FHermesBindHitResultDelegate_HitResult
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UHermesBPLibrary:HermesBindHitResult(Delegate_HitResult, Owner, Handle) end
---@param Delegate_Guid FHermesBindGuidDelegate_Guid
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UHermesBPLibrary:HermesBindGuid(Delegate_Guid, Owner, Handle) end
---@param Delegate_FText FHermesBindFTextDelegate_FText
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UHermesBPLibrary:HermesBindFText(Delegate_FText, Owner, Handle) end
---@param Delegate_FString FHermesBindFStringDelegate_FString
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UHermesBPLibrary:HermesBindFString(Delegate_FString, Owner, Handle) end
---@param Delegate_FName FHermesBindFNameDelegate_FName
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UHermesBPLibrary:HermesBindFName(Delegate_FName, Owner, Handle) end
---@param Delegate_Float FHermesBindFloatDelegate_Float
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UHermesBPLibrary:HermesBindFloat(Delegate_Float, Owner, Handle) end
---@param Delegate_Event FHermesBindEventDelegate_Event
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UHermesBPLibrary:HermesBindEvent(Delegate_Event, Owner, Handle) end
---@param Delegate_DoubleInt FHermesBindDoubleIntDelegate_DoubleInt
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UHermesBPLibrary:HermesBindDoubleInt(Delegate_DoubleInt, Owner, Handle) end
---@param Delegate_DoubleFString FHermesBindDoubleFStringDelegate_DoubleFString
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UHermesBPLibrary:HermesBindDoubleFString(Delegate_DoubleFString, Owner, Handle) end
---@param Delegate_AActor FHermesBindAActorDelegate_AActor
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UHermesBPLibrary:HermesBindAActor(Delegate_AActor, Owner, Handle) end
---@param Caller UObject
---@param Actor AActor
function UHermesBPLibrary:HermesAActorDelegate__DelegateSignature(Caller, Actor) end


