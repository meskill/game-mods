---@meta

---@class FCFCoreThemeRowData : FTableRowBase
---@field RoundedMode boolean
---@field MainFont FLinearColor
---@field SecondaryFont FLinearColor
---@field BackgroundColor FLinearColor
---@field ClassUnderline FLinearColor
---@field Button_SignIn FLinearColor
---@field SideBar FLinearColor
---@field Button_SideMenu FLinearColor
---@field Search_SideMenu FLinearColor
---@field ModWindow FLinearColor
---@field Button_Install FLinearColor
---@field Button_Uninstall FLinearColor
---@field Button_Update FLinearColor
---@field ExamineBackground FLinearColor
---@field InfoBackground FLinearColor
---@field NotificationBackground FLinearColor
local FCFCoreThemeRowData = {}



---@class FInstallProgressMod
---@field mod FInstalledMod
---@field progress FLibraryProgress
---@field installStatus EInstallStatus
---@field DynamicImage UTexture2DDynamic
---@field ShowcaseImages TMap<UTexture2D, FText>
---@field Screenshots_Info FScreenshotInfo
---@field Categories TArray<FCategory>
---@field ModSlotRef UWidget
local FInstallProgressMod = {}



---@class FModIdentification
---@field ID int64
---@field mainFileId int64
local FModIdentification = {}



---@class FScreenshotInfo
---@field screenshots TArray<UTexture2DDynamic>
---@field Descriptions TArray<FString>
local FScreenshotInfo = {}



---@class ICFCoreUIBaseModel : IInterface
local ICFCoreUIBaseModel = {}

---@param evt EGameModsEvent
---@param progress FLibraryProgress
---@param OutModsList TArray<FInstallProgressMod>
---@return boolean
function ICFCoreUIBaseModel:OnEventReceived_LibraryProgress(evt, progress, OutModsList) end
---@param evt EGameModsEvent
---@param InModsList TArray<FInstalledMod>
---@param OutModsList TArray<FInstallProgressMod>
---@return boolean
function ICFCoreUIBaseModel:OnEventReceived_Installed(evt, InModsList, OutModsList) end
---@param evt EGameModsEvent
---@param InModsList TArray<FCFCoreMod>
---@param OutModsList TArray<FInstallProgressMod>
---@return boolean
function ICFCoreUIBaseModel:OnEventReceived(evt, InModsList, OutModsList) end


---@class ICFCoreUIBaseView : IInterface
local ICFCoreUIBaseView = {}

---@param evt EGameModsEvent
---@param ModsList TArray<FInstallProgressMod>
---@param pagination FCFCoreApiResponsePagination
---@return boolean
function ICFCoreUIBaseView:OnEventBroadcasted(evt, ModsList, pagination) end


---@class UBindButtonSystem : UEngineSubsystem
---@field ControllerButtonInViewState FBindButtonSystemControllerButtonInViewState
local UBindButtonSystem = {}

function UBindButtonSystem:StartBind() end
---@param NewState EViewState
function UBindButtonSystem:SetViewState(NewState) end
function UBindButtonSystem:EndBind() end
---@param Key FKey
function UBindButtonSystem:ControllerAction(Key) end


---@class UCFCoreButtonImage : UImage
---@field UseDefaultBrushOnPC boolean
---@field PlayStationButtonImage FSlateBrush
---@field XboxButtonImage FSlateBrush
local UCFCoreButtonImage = {}



---@class UCFCoreGamepadCursorSettings : UDeveloperSettings
---@field AnalogCursorAccelerationCurve FRuntimeFloatCurve
---@field MaxAnalogCursorSpeed float
---@field MaxAnalogCursorSpeedWhenHovered float
---@field AnalogCursorDragCoefficient float
---@field AnalogCursorDragCoefficientWhenHovered float
---@field MinAnalogCursorSpeed float
---@field AnalogCursorDeadZone float
---@field AnalogCursorAccelerationMultiplier float
---@field AnalogCursorSize float
---@field bUseEngineAnalogCursor boolean
---@field bAnalogCursorNoAcceleration boolean
local UCFCoreGamepadCursorSettings = {}



---@class UCFCoreMathHelperFunctionLibrary : UBlueprintFunctionLibrary
local UCFCoreMathHelperFunctionLibrary = {}

---@param Value int64
---@return int64
function UCFCoreMathHelperFunctionLibrary:Int64_SubOne(Value) end
---@param Value int64
---@return int64
function UCFCoreMathHelperFunctionLibrary:Int64_AddOne(Value) end
---@param Value int32
---@return int32
function UCFCoreMathHelperFunctionLibrary:Int32_SubOne(Value) end
---@param Value int32
---@return int32
function UCFCoreMathHelperFunctionLibrary:Int32_AddOne(Value) end


---@class UCFCoreRichText : URichTextBlock
---@field ImageMap TMap<FString, UTexture2DDynamic>
local UCFCoreRichText = {}



---@class UCFCoreRichTextBlockICodeBlockDecorator : URichTextBlockDecorator
local UCFCoreRichTextBlockICodeBlockDecorator = {}


---@class UCFCoreRichTextBlockImageDecorator : URichTextBlockImageDecorator
---@field CoreRichText UCFCoreRichText
---@field OnSuccess FCFCoreRichTextBlockImageDecoratorOnSuccess
---@field OnFail FCFCoreRichTextBlockImageDecoratorOnFail
local UCFCoreRichTextBlockImageDecorator = {}

---@param Image UTexture2DDynamic
---@param ImageURL FString
function UCFCoreRichTextBlockImageDecorator:SetImageToMap(Image, ImageURL) end


---@class UCFCoreThemeSettings : UBlueprintFunctionLibrary
local UCFCoreThemeSettings = {}

---@param themeDataTable UDataTable
---@param themeName FString
---@param Data FCFCoreThemeRowData
function UCFCoreThemeSettings:CommitThemeData(themeDataTable, themeName, Data) end


---@class UCFCoreUIModel : UObject
local UCFCoreUIModel = {}


---@class UCFCoreUISubsystem : UGameInstanceSubsystem
---@field UIPurchaseModDelegate FCFCoreUISubsystemUIPurchaseModDelegate
---@field UIPurchaseModsDelegate FCFCoreUISubsystemUIPurchaseModsDelegate
---@field UserRatings FMyRatings
---@field ModsRatingsInit FCFCoreUISubsystemModsRatingsInit
---@field bRatingsInitialized boolean
---@field Models TArray<UObject>
local UCFCoreUISubsystem = {}

---@param modId int64
---@param Vote ECFCoreRatingVoteDirection
function UCFCoreUISubsystem:UpdateModRating(modId, Vote) end
---@param mod FCFCoreMod
function UCFCoreUISubsystem:UpdateMod(mod) end
---@param ReceivedModsRatingsInit FUpdateAllModRatingsReceivedModsRatingsInit
function UCFCoreUISubsystem:UpdateAllModRatings(ReceivedModsRatingsInit) end
---@param View UObject
---@param evts TArray<EGameModsEvent>
function UCFCoreUISubsystem:UnsubscribeViewFromEvents(View, evts) end
---@param View UObject
---@param evt EGameModsEvent
---@return boolean
function UCFCoreUISubsystem:UnsubscribeViewFromEvent(View, evt) end
---@param modelClass UClass
---@return boolean
function UCFCoreUISubsystem:UnregisterModelClass(modelClass) end
---@param mod FCFCoreMod
function UCFCoreUISubsystem:UninstallMod(mod) end
---@param InstallProgressMod FInstallProgressMod
---@param bIsUploadedByLocalPlayer boolean
function UCFCoreUISubsystem:TryInstallMod(InstallProgressMod, bIsUploadedByLocalPlayer) end
---@param View UObject
---@param evts TArray<EGameModsEvent>
---@param initializeView boolean
---@return boolean
function UCFCoreUISubsystem:SubscribeViewToEvents(View, evts, initializeView) end
---@param View UObject
---@param evt EGameModsEvent
---@param initializeView boolean
---@return boolean
function UCFCoreUISubsystem:SubscribeViewToEvent(View, evt, initializeView) end
---@param mod FCFCoreMod
---@param InInstalledMod FInstalledMod
---@param OutInstalledMod FInstalledMod
function UCFCoreUISubsystem:SetMod(mod, InInstalledMod, OutInstalledMod) end
---@param Filter FCFCoreSearchModsFilter
---@param pagination FCFCoreApiRequestPagination
function UCFCoreUISubsystem:SearchMods(Filter, pagination) end
function UCFCoreUISubsystem:ReleaseUIController() end
---@param tryInstallModResultDelegate FRegisterTryInstallModResultDelegateTryInstallModResultDelegate
function UCFCoreUISubsystem:RegisterTryInstallModResultDelegate(tryInstallModResultDelegate) end
---@param PurchaseModsDelegate FRegisterPurchaseModsDelegatePurchaseModsDelegate
function UCFCoreUISubsystem:RegisterPurchaseModsDelegate(PurchaseModsDelegate) end
---@param PurchaseModDelegate FRegisterPurchaseModDelegatePurchaseModDelegate
function UCFCoreUISubsystem:RegisterPurchaseModDelegate(PurchaseModDelegate) end
---@param modelClass UClass
---@return boolean
function UCFCoreUISubsystem:RegisterModelClass(modelClass) end
---@param errorDelegate FRegisterErrorDelegateErrorDelegate
function UCFCoreUISubsystem:RegisterErrorDelegate(errorDelegate) end
---@param ModsId TArray<int64>
function UCFCoreUISubsystem:PurchaseMods(ModsId) end
---@param modId int64
function UCFCoreUISubsystem:PurchaseMod(modId) end
---@param Error FCFCoreError
function UCFCoreUISubsystem:OnUpdateModRatingError(Error) end
function UCFCoreUISubsystem:OnUpdateModRating() end
---@param InstalledMod FInstalledMod
function UCFCoreUISubsystem:OnUninstall(InstalledMod) end
---@param Error FCFCoreError
function UCFCoreUISubsystem:OnSearchModsError(Error) end
---@param mods TArray<FCFCoreMod>
---@param pagination FCFCoreApiResponsePagination
function UCFCoreUISubsystem:OnSearchMods(mods, pagination) end
---@param ratings FMyRatings
function UCFCoreUISubsystem:OnRatingsReceived(ratings) end
---@param Error FCFCoreError
function UCFCoreUISubsystem:OnMyModsError(Error) end
---@param mods TArray<FCFCoreMod>
function UCFCoreUISubsystem:OnMyMods(mods) end
---@param Error FCFCoreError
function UCFCoreUISubsystem:OnModUninstallError(Error) end
---@param Error FCFCoreError
function UCFCoreUISubsystem:OnModInstallError(Error) end
---@param progress FLibraryProgress
function UCFCoreUISubsystem:OnInstallProgress(progress) end
---@param Error FCFCoreError
function UCFCoreUISubsystem:OnGetMyRatingsError(Error) end
---@param mods TArray<FCFCoreMod>
function UCFCoreUISubsystem:OnGetModsByIds(mods) end
---@param Error FCFCoreError
function UCFCoreUISubsystem:OnGetInstalledModsError(Error) end
---@param installedMods TArray<FInstalledMod>
function UCFCoreUISubsystem:OnGetInstalledMods(installedMods) end
---@param Error FCFCoreError
function UCFCoreUISubsystem:OnGetCookerSdkVersionError(Error) end
function UCFCoreUISubsystem:OnGetCookerSdkVersion() end
---@param updatedMod FInstalledMod
function UCFCoreUISubsystem:OnFinishedUpdating(updatedMod) end
---@param InstalledMod FInstalledMod
function UCFCoreUISubsystem:OnFinishedInstalling(InstalledMod) end
function UCFCoreUISubsystem:OnCancelModInstallationSuccess() end
---@param Error FCFCoreError
function UCFCoreUISubsystem:OnCancelModInstallation(Error) end
---@param ID int64
---@return FInstallProgressMod
function UCFCoreUISubsystem:MakeFInstallProgressModFromID(ID) end
---@param mod FCFCoreMod
---@return FInstallProgressMod
function UCFCoreUISubsystem:MakeFInstallProgressMod(mod) end
---@return boolean
function UCFCoreUISubsystem:IsAnyModInstalling() end
---@param mod FCFCoreMod
function UCFCoreUISubsystem:InstallMod(mod) end
function UCFCoreUISubsystem:InitializeUIController() end
---@param View UObject
---@param mod FCFCoreMod
---@return boolean
function UCFCoreUISubsystem:InitializeModView(View, mod) end
function UCFCoreUISubsystem:GetMyMods() end
---@param InstallProgressMod FInstallProgressMod
---@return int32
function UCFCoreUISubsystem:GetModSize(InstallProgressMod) end
---@param ID int64
---@return boolean
function UCFCoreUISubsystem:GetModNeedsUpdate(ID) end
---@param OutMod FInstallProgressMod
---@param ID int64
---@return boolean
function UCFCoreUISubsystem:GetModById(OutMod, ID) end
function UCFCoreUISubsystem:GetInstalledMods() end
function UCFCoreUISubsystem:GetCookerSdkVersion() end
---@param InstallProgressMod FInstallProgressMod
---@param bIsUploadedByLocalPlayer boolean
---@return boolean
function UCFCoreUISubsystem:CanInstallMod(InstallProgressMod, bIsUploadedByLocalPlayer) end
---@param mod FCFCoreMod
function UCFCoreUISubsystem:CancelModInstallation(mod) end
---@param modIds TArray<int64>
function UCFCoreUISubsystem:ApiGetModsById(modIds) end


---@class UCFCoreVirtualCursorFunctionLibrary : UBlueprintFunctionLibrary
local UCFCoreVirtualCursorFunctionLibrary = {}

---@return boolean
function UCFCoreVirtualCursorFunctionLibrary:IsCursorOverInteractableWidget() end
---@param PC APlayerController
function UCFCoreVirtualCursorFunctionLibrary:EnableVirtualCursor(PC) end
---@param PC APlayerController
function UCFCoreVirtualCursorFunctionLibrary:DisableVirtualCursor(PC) end


