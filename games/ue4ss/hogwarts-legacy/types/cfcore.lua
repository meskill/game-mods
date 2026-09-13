---@meta

---@class FApiResponseErrorInternal
---@field statusCode int32
---@field ErrorCode int32
---@field Message FString
local FApiResponseErrorInternal = {}



---@class FAssureServerModsUpdatedParams
---@field modIds TArray<int64>
---@field devModIds TArray<int64>
local FAssureServerModsUpdatedParams = {}



---@class FAuthToken
---@field Token FString
local FAuthToken = {}



---@class FAuthTokenResponse
---@field Data FAuthToken
local FAuthTokenResponse = {}



---@class FBlockedDetails
---@field serverIds TArray<FString>
---@field modIds TArray<int64>
---@field blockedUIModIds TArray<int64>
---@field blockedUIAuthorIds TArray<int64>
local FBlockedDetails = {}



---@class FCFCoreApiRequestPagination
---@field Index int32
---@field pageSize int32
local FCFCoreApiRequestPagination = {}



---@class FCFCoreApiResponseError
---@field cancelled boolean
---@field badRequest boolean
---@field entityNotFound boolean
---@field serverUnreachable boolean
---@field missingPriviliges boolean
---@field tokenExpired boolean
---@field resourceExpired boolean
---@field failedToParseServerResponse boolean
---@field ErrorCode int32
---@field Description FString
local FCFCoreApiResponseError = {}



---@class FCFCoreApiResponsePagination
---@field Index int32
---@field pageSize int32
---@field resultCount int32
---@field totalCount int32
local FCFCoreApiResponsePagination = {}



---@class FCFCoreError
---@field isError boolean
---@field code ECFCoreErrorCodes
---@field apiError FCFCoreApiResponseError
---@field Description FString
local FCFCoreError = {}



---@class FCFCoreFileSize
---@field kb int32
---@field mb int32
---@field gb int32
local FCFCoreFileSize = {}



---@class FCFCoreGetCategoriesFilter
---@field classId int32
---@field classesOnly boolean
local FCFCoreGetCategoriesFilter = {}



---@class FCFCoreGetFilesFilter
---@field fileIds TArray<int64>
local FCFCoreGetFilesFilter = {}



---@class FCFCoreGetModsFilter
---@field modIds TArray<int64>
---@field devModIds TArray<int64>
---@field filterPcOnly boolean
local FCFCoreGetModsFilter = {}



---@class FCFCoreGetModsHighlightsFilter
---@field excludedModIds TArray<int64>
---@field filters FCFCoreGetModsHighlightsFilters
local FCFCoreGetModsHighlightsFilter = {}



---@class FCFCoreGetModsHighlightsFilters
---@field carousel boolean
---@field banners boolean
---@field Categories boolean
---@field latest boolean
---@field mostDownloaded boolean
---@field premium boolean
---@field trending boolean
---@field themePages boolean
local FCFCoreGetModsHighlightsFilters = {}



---@class FCFCoreInitializationOptions
---@field userContextId FString
local FCFCoreInitializationOptions = {}



---@class FCFCoreMod
---@field ID int64
---@field gameId int64
---@field gamePopularityRank int32
---@field Name FString
---@field slug FString
---@field links FModLinks
---@field summary FString
---@field status ECFCoreModStatus
---@field downloadCount int64
---@field isFeatured boolean
---@field classId int32
---@field primaryCategoryId int32
---@field Categories TArray<FCategory>
---@field authors TArray<FModAuthor>
---@field logo FModAsset
---@field screenshots TArray<FModAsset>
---@field videos TArray<FModAsset>
---@field mainFileId int64
---@field latestFiles TArray<FFile>
---@field latestFilesIndexes TArray<FFileIndex>
---@field dateCreated FDateTime
---@field dateModified FDateTime
---@field dateReleased FDateTime
---@field allowModDistribution boolean
---@field isAvailable boolean
---@field RatingDetails FRatingDetails
---@field PremiumDetails FPremiumDetails
local FCFCoreMod = {}



---@class FCFCoreSearchModsFilter
---@field classId int32
---@field categoryId int32
---@field GameVersion FString
---@field searchFilter FString
---@field sortField ECFCoreModsSearchSortField
---@field sortOrder ECFCoreSortOrder
---@field modLoaderType ECFCoreModLoaderType
---@field gameVersionTypeId int32
---@field authorId int32
---@field primaryAuthorId int32
---@field premiumFilterType ECFCorePremiumFilterType
---@field modsSearchEnhancedFeatures int64
local FCFCoreSearchModsFilter = {}



---@class FCFCoreSettings
---@field defaultLanguage FString
---@field gameId int64
---@field apiKey FString
---@field maxConcurrentInstallations int32
---@field modsDirectory FString
---@field modsDirectoryMode EModsDirectoryMode
---@field userDataDirectory FString
---@field IsServer boolean
---@field isServerPcOnly boolean
---@field throttling FCFCoreSettingsThrottling
---@field premiumMods FCFCoreSettingsPremiumMods
---@field logger FCFCoreSettingsLogger
---@field dynamicContentCategoryIds TSet<int64>
---@field Analytics FCFCoreSettingsAnalytics
local FCFCoreSettings = {}



---@class FCFCoreSettingsAnalytics
---@field performanceAndStability boolean
---@field userEngagement boolean
local FCFCoreSettingsAnalytics = {}



---@class FCFCoreSettingsLogger
---@field Enabled boolean
---@field History int32
---@field maxSizeInMB int32
local FCFCoreSettingsLogger = {}



---@class FCFCoreSettingsPremiumMods
---@field publicKeyPem FString
local FCFCoreSettingsPremiumMods = {}



---@class FCFCoreSettingsThrottling
---@field diskWriteBytesPerSec int64
local FCFCoreSettingsThrottling = {}



---@class FCarouselItem
---@field mainTitle FString
---@field subTitle FString
---@field mainImageUrl FString
---@field tileImageUrl FString
---@field customTag FString
---@field ctaText FString
---@field Destination FCarouselItemDestination
---@field layout ECFCoreCarouselItemLayout
local FCarouselItem = {}



---@class FCarouselItemDestination
---@field Type ECFCoreCarouselItemDestinationType
---@field Value int64
local FCarouselItemDestination = {}



---@class FCategory
---@field ID int64
---@field gameId int64
---@field Name FString
---@field slug FString
---@field URL FString
---@field iconUrl FString
---@field dateModified FDateTime
---@field isClass boolean
---@field classId int64
---@field parentCategoryId int64
---@field displayIndex int32
local FCategory = {}



---@class FCategoryArrayResponse
---@field Data TArray<FCategory>
local FCategoryArrayResponse = {}



---@class FCookerVersion
---@field Build FString
local FCookerVersion = {}



---@class FCreateCookedModFileRequest
---@field Platform ECFCorePlatform
---@field fileLength int64
local FCreateCookedModFileRequest = {}



---@class FCreateModFileChunkedResponse
---@field Data FModFileChunkedInfo
local FCreateModFileChunkedResponse = {}



---@class FCreateModFileRequest
---@field changelogType ECFCoreChangelogMarkupType
---@field changelog FString
---@field Filename FString
---@field DisplayName FString
---@field gameVersionIds TArray<int64>
---@field releaseType ECFCoreFileReleaseType
---@field cookingOptions FModFileCookingOptions
---@field fileLength int64
local FCreateModFileRequest = {}



---@class FCreateModFileResponse
---@field Data FUploadedModFile
local FCreateModFileResponse = {}



---@class FCreateModRequest
---@field classId int64
---@field Name FString
---@field summary FString
---@field descriptionType ECFCoreMakrupType
---@field Description FString
---@field primaryCategoryId int64
---@field gameCategoryIds TArray<int64>
---@field isExperimental boolean
local FCreateModRequest = {}



---@class FDirectDownloadDomainEx
---@field domain FString
local FDirectDownloadDomainEx = {}



---@class FDirectDownloadDomainExResponse
---@field Data FDirectDownloadDomainEx
local FDirectDownloadDomainExResponse = {}



---@class FEntitlementCampaign
---@field ID int64
---@field gameId int64
---@field Name FString
---@field createdAt FDateTime
---@field expiresAt FDateTime
---@field Type ECFCoreEntitlmentCampaignType
---@field isDeleted boolean
---@field codeLength int32
---@field extraData FString
local FEntitlementCampaign = {}



---@class FEntitlementsRedeemCodeRequest
---@field code FString
local FEntitlementsRedeemCodeRequest = {}



---@class FEntitlementsRedeemCodeResponse
---@field Data FEntitlementCampaign
local FEntitlementsRedeemCodeResponse = {}



---@class FExternalAuthAdditionalInfo
---@field eulaAcceptTime FDateTime
---@field environment FString
local FExternalAuthAdditionalInfo = {}



---@class FExternalAuthAdditionalInfoRequestDto
---@field eulaAcceptTime FString
---@field environment FString
local FExternalAuthAdditionalInfoRequestDto = {}



---@class FFile
---@field ID int64
---@field gameId int64
---@field modId int64
---@field isAvailable boolean
---@field DisplayName FString
---@field Filename FString
---@field releaseType ECFCoreFileReleaseType
---@field fileStatus ECFCoreFileStatus
---@field hashes TArray<FFileHash>
---@field fileDate FDateTime
---@field fileLength int64
---@field fileSizeOnDisk int64
---@field downloadCount int64
---@field downloadUrl FString
---@field gameVersions TArray<FString>
---@field sortableGameVersions TArray<FSortableGameVersion>
---@field dependencies TArray<FFileDependency>
---@field ExposeAsAlternative boolean
---@field parentProjectFileId int64
---@field alternateFileId int64
---@field isServerPack boolean
---@field serverPackFileId int64
---@field fileFingerprint int64
---@field modules TArray<FFileModule>
---@field cookingInfo FFileCookingInfo
local FFile = {}



---@class FFileArrayResponse
---@field Data TArray<FFile>
---@field pagination FCFCoreApiResponsePagination
local FFileArrayResponse = {}



---@class FFileCookingInfo
---@field CookerVersion FString
local FFileCookingInfo = {}



---@class FFileDeltaDiff
---@field ID int64
---@field gameId int64
---@field modId int64
---@field oldFileId int64
---@field newFileId int64
---@field status ECFCoreFileDeltaDiffStatus
---@field downloadUrl FString
---@field Filename FString
---@field dateCreated FDateTime
---@field dateModified FDateTime
---@field fileLength int64
---@field fileSizeOnDisk int64
---@field hashes TArray<FFileHash>
---@field extraJsonData FString
local FFileDeltaDiff = {}



---@class FFileDeltaDiffExtraData
---@field Version int32
---@field files TArray<FFileDeltaDiffExtraDataFileInfo>
local FFileDeltaDiffExtraData = {}



---@class FFileDeltaDiffExtraDataFileInfo
---@field Path FString
---@field patchFilename FString
---@field originalFilename FString
local FFileDeltaDiffExtraDataFileInfo = {}



---@class FFileDependency
---@field modId int64
---@field fileId int64
---@field relationType ECFCoreFileRelationType
local FFileDependency = {}



---@class FFileHash
---@field Value FString
---@field algo ECFCoreHashAlgo
local FFileHash = {}



---@class FFileIndex
---@field GameVersion FString
---@field fileId int64
---@field Filename FString
---@field releaseType ECFCoreFileReleaseType
---@field gameVersionTypeId int32
---@field modLoader ECFCoreModLoaderType
local FFileIndex = {}



---@class FFileModule
---@field Name FString
---@field fingerprint int64
local FFileModule = {}



---@class FFileTransferProgress
---@field progress int32
---@field transferredBytes int64
---@field bytesPerSecond int64
local FFileTransferProgress = {}



---@class FFinalizePurchaseRequest
---@field transactionId FString
---@field Provider ECFCoreExternalAuthProvider
---@field Token FString
---@field tracking TMap<FString, FString>
local FFinalizePurchaseRequest = {}



---@class FGame
---@field ID int64
---@field Name FString
---@field slug FString
---@field dateModified FDateTime
---@field assets FGameAssets
---@field status ECFCoreStatus
---@field apiStatus ECFCoreApiStatus
local FGame = {}



---@class FGameAssets
---@field iconUrl FString
---@field tileUrl FString
---@field coverUrl FString
local FGameAssets = {}



---@class FGamePlaySessionParams
---@field sessionLengthInSecs int32
---@field sessionType ECFCoreSessionType
---@field modIds TArray<int64>
---@field serverName FString
local FGamePlaySessionParams = {}



---@class FGameResponse
---@field Data FGame
local FGameResponse = {}



---@class FGameVersionByTypeArrayResponse
---@field Data TArray<FGameVersionsByType>
local FGameVersionByTypeArrayResponse = {}



---@class FGameVersionDetailed
---@field ID int64
---@field Name FString
---@field slug FString
local FGameVersionDetailed = {}



---@class FGameVersionType
---@field ID int64
---@field gameId int64
---@field Name FString
---@field slug FString
local FGameVersionType = {}



---@class FGameVersionTypeArrayResponse
---@field Data TArray<FGameVersionType>
local FGameVersionTypeArrayResponse = {}



---@class FGameVersionsByType
---@field Type int64
---@field versions TArray<FString>
local FGameVersionsByType = {}



---@class FGameVersionsDetailedByType
---@field Type int64
---@field versions TArray<FGameVersionDetailed>
local FGameVersionsDetailedByType = {}



---@class FGameVersionsDetailedByTypeArrayResponse
---@field Data TArray<FGameVersionsDetailedByType>
local FGameVersionsDetailedByTypeArrayResponse = {}



---@class FGenPremiumCheckoutUrlRequest
---@field modIds TArray<int64>
---@field tracking TMap<FString, FString>
local FGenPremiumCheckoutUrlRequest = {}



---@class FGeneratePremiumCheckoutUrlResponse
---@field Data FString
local FGeneratePremiumCheckoutUrlResponse = {}



---@class FGenerateTempTokenResponse
---@field Data FString
local FGenerateTempTokenResponse = {}



---@class FGetAuthTokenByExternalProviderRequestDto
---@field Provider FString
---@field Token FString
---@field additionalInfo FExternalAuthAdditionalInfoRequestDto
local FGetAuthTokenByExternalProviderRequestDto = {}



---@class FGetAuthTokenRequestDto
---@field email FString
---@field otp int32
local FGetAuthTokenRequestDto = {}



---@class FGetBlockedDetailsResponse
---@field Data FBlockedDetails
local FGetBlockedDetailsResponse = {}



---@class FGetCookerSdkVersionResponse
---@field Data FCookerVersion
local FGetCookerSdkVersionResponse = {}



---@class FGetFilesByIdsRequestDto
---@field fileIds TArray<int64>
local FGetFilesByIdsRequestDto = {}



---@class FGetModFileDeltaDiffResponse
---@field Data FFileDeltaDiff
local FGetModFileDeltaDiffResponse = {}



---@class FGetModFileDownloadUrlResponse
---@field Data FModFileDownloadUrl
---@field sig FString
local FGetModFileDownloadUrlResponse = {}



---@class FGetModsByIdsRequestDto
---@field modIds TArray<int64>
---@field devModIds TArray<int64>
---@field filterPcOnly boolean
local FGetModsByIdsRequestDto = {}



---@class FGetModsHighlightsRequestDto : FCFCoreGetModsHighlightsFilter
---@field gameId int64
local FGetModsHighlightsRequestDto = {}



---@class FGetModsHighlightsResponse
---@field Data FModsHighlights
local FGetModsHighlightsResponse = {}



---@class FGetModsHighlightsV2Response
---@field Data FModsHighlightsV2
local FGetModsHighlightsV2Response = {}



---@class FInitiatePurchaseRequest
---@field modId int64
---@field Provider ECFCoreExternalAuthProvider
---@field Token FString
local FInitiatePurchaseRequest = {}



---@class FInitiatePurchaseResponse
---@field Data FPurchaseDetails
local FInitiatePurchaseResponse = {}



---@class FInstallModAdditionalParams
---@field tracking TMap<FString, FString>
---@field throttleDownloadKbps int32
---@field dynamicContent boolean
local FInstallModAdditionalParams = {}



---@class FInstalledMod
---@field dateInstalled FDateTime
---@field dateUpdated FDateTime
---@field status EInstalledModStatus
---@field pathOnDisk FString
---@field Enabled boolean
---@field details FCFCoreMod
---@field installedFile FFile
---@field latestUpdatedFile FFile
---@field dynamicContent boolean
local FInstalledMod = {}



---@class FInstalledModArray
---@field installedMods TArray<FInstalledMod>
local FInstalledModArray = {}



---@class FInternalSettings
---@field apiBaseUrl FString
---@field chunkedUploadServerUrl FString
---@field analyticsUrl FString
---@field userAgent FString
---@field Platform FString
---@field pluginVersion FString
---@field httpFileDownloadTimeoutSecs float
local FInternalSettings = {}



---@class FJwtPayload
---@field sub int64
---@field iat int64
---@field Exp int64
---@field Scope TArray<FString>
---@field iss FString
local FJwtPayload = {}



---@class FLibraryProgress
---@field modId int64
---@field fileId int64
---@field State ELibraryProgressState
---@field dataTransfer FLibraryProgressDataTransfer
local FLibraryProgress = {}



---@class FLibraryProgressDataTransfer
---@field progress int32
---@field transferredBytes int64
---@field transferRateBytesPerSecond int64
---@field Filename FString
local FLibraryProgressDataTransfer = {}



---@class FMatchPlatformFilesFilter
---@field fileIds TArray<int64>
local FMatchPlatformFilesFilter = {}



---@class FMe
---@field ID int64
---@field DisplayName FString
---@field username FString
---@field email FString
---@field avatarUrl FString
---@field dateCreated FDateTime
---@field hasConnectedAccount boolean
---@field phasingData FMePhasingData
---@field eulaLastAgreed FDateTime
local FMe = {}



---@class FMePhasingData
---@field deltaDiffs int32
---@field analyticsUserEngagement int32
---@field analyticsPerfAndStability int32
local FMePhasingData = {}



---@class FMeResponse
---@field Data FMe
local FMeResponse = {}



---@class FModArrayResponse
---@field Data TArray<FCFCoreMod>
---@field pagination FCFCoreApiResponsePagination
local FModArrayResponse = {}



---@class FModAsset
---@field ID int64
---@field modId int64
---@field Title FString
---@field Description FString
---@field thumbnailUrl FString
---@field URL FString
local FModAsset = {}



---@class FModAuthor
---@field ID int64
---@field Name FString
---@field URL FString
local FModAuthor = {}



---@class FModBrowsingFunnelParams
---@field pageName FString
---@field pageComponent FString
---@field shelfName FString
---@field modId int64
---@field pageId int64
---@field itemPosition int64
---@field actionType FString
local FModBrowsingFunnelParams = {}



---@class FModFileChunkMetadata
---@field chunkedUploadId FString
---@field totalChunks int32
---@field chunkIndex int32
local FModFileChunkMetadata = {}



---@class FModFileChunkedInfo
---@field fileId int64
---@field Directory FString
---@field Filename FString
---@field uploadId FString
local FModFileChunkedInfo = {}



---@class FModFileCookingOptions
---@field isSourceFile boolean
---@field autoCookingType ECFCoreAutoCookingType
---@field CookerVersion FString
local FModFileCookingOptions = {}



---@class FModFileDownloadUrl
---@field URL FString
---@field securedParams FString
local FModFileDownloadUrl = {}



---@class FModIdArrayResponse
---@field Data TArray<int64>
---@field sig FString
local FModIdArrayResponse = {}



---@class FModInstallParams
---@field modId int64
---@field isUpdate boolean
---@field Success boolean
local FModInstallParams = {}



---@class FModLinks
---@field websiteUrl FString
---@field wikiUrl FString
---@field issuesUrl FString
---@field sourceUrl FString
---@field modManagementUrl FString
local FModLinks = {}



---@class FModResponse
---@field Data FCFCoreMod
local FModResponse = {}



---@class FModsDirInfo
---@field pathOnDisk FString
---@field totalDiskSizeInBytes int64
---@field freeDiskSizeInBytes int64
local FModsDirInfo = {}



---@class FModsHighlights
---@field Categories TArray<FCategory>
---@field carousel TArray<FCFCoreMod>
---@field premium TArray<FCFCoreMod>
---@field trending TArray<FCFCoreMod>
---@field mostDownloaded TArray<FCFCoreMod>
---@field latest TArray<FCFCoreMod>
local FModsHighlights = {}



---@class FModsHighlightsV2
---@field Categories TArray<FCategory>
---@field carousel TArray<FCarouselItem>
---@field banners TArray<FCarouselItem>
---@field premium TArray<FCFCoreMod>
---@field trending TArray<FCFCoreMod>
---@field mostDownloaded TArray<FCFCoreMod>
---@field latest TArray<FCFCoreMod>
---@field themePages TArray<FThemePage>
local FModsHighlightsV2 = {}



---@class FModsUpdateProgress
---@field State EModsUpdateProgressState
local FModsUpdateProgress = {}



---@class FMyRatings
---@field upvotes TArray<int32>
---@field downvotes TArray<int32>
local FMyRatings = {}



---@class FMyRatingsResponse
---@field Data FMyRatings
local FMyRatingsResponse = {}



---@class FPremiumDetails
---@field isPremium boolean
---@field isFreemium boolean
---@field tierPrice float
---@field CurrencySymbol FString
---@field platformData FPremiumDetailsPlatformData
---@field discountData FPremiumDetailsDiscount
local FPremiumDetails = {}



---@class FPremiumDetailsDiscount
---@field discountPrice float
---@field percent float
---@field endDate FDateTime
---@field platformData FPremiumDetailsPlatformData
local FPremiumDetailsDiscount = {}



---@class FPremiumDetailsPlatformData
---@field productId FString
local FPremiumDetailsPlatformData = {}



---@class FPremiumModsCheckRequestDto
---@field modIds TArray<int64>
local FPremiumModsCheckRequestDto = {}



---@class FPremiumModsCheckRequestResponse
---@field Data TArray<int64>
---@field sig FString
local FPremiumModsCheckRequestResponse = {}



---@class FPurchaseDetails
---@field productId FString
---@field transactionId FString
local FPurchaseDetails = {}



---@class FRatingDetails
---@field rating float
---@field totalRatings int64
---@field positiveRatings int64
---@field score ECFCoreRatingScore
local FRatingDetails = {}



---@class FReportModRequestDto
---@field reportReasonId int64
---@field reportText FString
local FReportModRequestDto = {}



---@class FReportingReason
---@field ID int64
---@field slug FString
---@field Name FString
---@field Description FString
local FReportingReason = {}



---@class FReportingReasonsResponse
---@field Data TArray<FReportingReason>
local FReportingReasonsResponse = {}



---@class FSDKVersion
---@field Build int32
local FSDKVersion = {}



---@class FSDKVersionResponse
---@field Data FSDKVersion
local FSDKVersionResponse = {}



---@class FSendSecurityCodeRequestDto
---@field email FString
local FSendSecurityCodeRequestDto = {}



---@class FSharedContextInfo
---@field machineId FString
local FSharedContextInfo = {}



---@class FSortableGameVersion
---@field gameVersionName FString
---@field gameVersionPadded FString
---@field GameVersion FString
---@field gameVersionReleaseDate FDateTime
---@field gameVersionTypeId int32
local FSortableGameVersion = {}



---@class FStringResponse
---@field Data FString
local FStringResponse = {}



---@class FSubscribeRequest
---@field modId int64
local FSubscribeRequest = {}



---@class FTerms
---@field updateDate FDateTime
---@field content FTermsContent
local FTerms = {}



---@class FTermsButton
---@field Text FString
local FTermsButton = {}



---@class FTermsButtons
---@field agree FTermsButton
---@field disagree FTermsButton
local FTermsButtons = {}



---@class FTermsContent
---@field Language FString
---@field plainText FString
---@field html FString
---@field buttons FTermsButtons
---@field links FTermsLinks
local FTermsContent = {}



---@class FTermsLink
---@field required boolean
---@field Text FString
---@field URL FString
local FTermsLink = {}



---@class FTermsLinks
---@field website FTermsLink
---@field Terms FTermsLink
---@field privacy FTermsLink
local FTermsLinks = {}



---@class FTermsResponse
---@field Data FTerms
local FTermsResponse = {}



---@class FThemePage
---@field ID int64
---@field bannerUrl FString
---@field mainTitle FString
---@field subTitle FString
---@field modIds TArray<int64>
local FThemePage = {}



---@class FUnblockModsRequest
---@field blockedAuthors TArray<int64>
---@field blockedMods TArray<int64>
---@field blockedServerMods TArray<int64>
---@field blockedServers TArray<FString>
local FUnblockModsRequest = {}



---@class FUpdateModRequest : FCreateModRequest
local FUpdateModRequest = {}


---@class FUploadModFileChunkResponse
---@field Data boolean
local FUploadModFileChunkResponse = {}



---@class FUploadedModFile
---@field fileId int64
---@field Directory FString
---@field Filename FString
local FUploadedModFile = {}



---@class FUserContextInfo
---@field AuthToken FString
local FUserContextInfo = {}



---@class UCFCoreBPLibrary : UBlueprintFunctionLibrary
local UCFCoreBPLibrary = {}

---@param class_id int64
---@param Name FString
---@param summary FString
---@param description_type ECFCoreMakrupType
---@param Description FString
---@param primary_category_id int64
---@param game_category_ids TArray<int64>
---@param is_experimental boolean
---@return FUpdateModRequest
function UCFCoreBPLibrary:MakeUpdateModRequest(class_id, Name, summary, description_type, Description, primary_category_id, game_category_ids, is_experimental) end
---@return FCFCoreSettings
function UCFCoreBPLibrary:MakeSettingsFromProjectConfig() end
---@param default_language FString
---@param game_id int64
---@param api_key FString
---@param mods_directory FString
---@param user_data_directory FString
---@param max_concurrent_installations int32
---@return FCFCoreSettings
function UCFCoreBPLibrary:MakeSettings(default_language, game_id, api_key, mods_directory, user_data_directory, max_concurrent_installations) end
---@param class_id int32
---@param category_id int32
---@param game_version FString
---@param search_filter FString
---@param sort_field ECFCoreModsSearchSortField
---@param sort_order ECFCoreSortOrder
---@param mod_loader_type ECFCoreModLoaderType
---@param game_version_type_id int32
---@param premiumFilter ECFCorePremiumFilterType
---@return FCFCoreSearchModsFilter
function UCFCoreBPLibrary:MakeSearchModsFilter(class_id, category_id, game_version, search_filter, sort_field, sort_order, mod_loader_type, game_version_type_id, premiumFilter) end
---@param class_id int32
---@return FCFCoreGetCategoriesFilter
function UCFCoreBPLibrary:MakeGetCategoriesFilter(class_id) end
---@param eulaAcceptTime FDateTime
---@return FExternalAuthAdditionalInfo
function UCFCoreBPLibrary:MakeExternalAuthAdditionalInfo(eulaAcceptTime) end
---@param class_id int64
---@param Name FString
---@param summary FString
---@param description_type ECFCoreMakrupType
---@param Description FString
---@param primary_category_id int64
---@param game_category_ids TArray<int64>
---@param is_experimental boolean
---@return FCreateModRequest
function UCFCoreBPLibrary:MakeCreateModRequest(class_id, Name, summary, description_type, Description, primary_category_id, game_category_ids, is_experimental) end
---@param changelog_type ECFCoreChangelogMarkupType
---@param changelog FString
---@param Filename FString
---@param DisplayName FString
---@param gameVersionIds TArray<int64>
---@param releaseType ECFCoreFileReleaseType
---@param cookingOptions FModFileCookingOptions
---@return FCreateModFileRequest
function UCFCoreBPLibrary:MakeCreateModFileRequest(changelog_type, changelog, Filename, DisplayName, gameVersionIds, releaseType, cookingOptions) end
---@param modIds TArray<int64>
---@param devModIds TArray<int64>
---@return FAssureServerModsUpdatedParams
function UCFCoreBPLibrary:MakeAssureServerModsUpdatedParams(modIds, devModIds) end
---@param Index int32
---@param page_size int32
---@return FCFCoreApiRequestPagination
function UCFCoreBPLibrary:MakeApiRequestPagination(Index, page_size) end
---@param Bytes int64
---@return FString
function UCFCoreBPLibrary:FormatFileSize(Bytes) end
---@param InExtraData FString
---@param InFieldName FString
---@return int64
function UCFCoreBPLibrary:ExtractIdFromExtraData(InExtraData, InFieldName) end
---@param Bytes int64
---@return FCFCoreFileSize
function UCFCoreBPLibrary:BreakFileSize(Bytes) end


---@class UCFCoreEditorSettings : UObject
---@field defaultLanguage FString
---@field gameId int64
---@field apiKey FString
---@field maxConcurrentInstallations int32
---@field modsDirectory FString
---@field modsDirectoryMode EModsDirectoryMode
---@field userDataDirectory FString
---@field IsServer boolean
---@field isServerPcOnly boolean
---@field throttling FCFCoreSettingsThrottling
---@field premiumMods FCFCoreSettingsPremiumMods
---@field logger FCFCoreSettingsLogger
---@field dynamicContentCategoryIds TSet<int64>
---@field Analytics FCFCoreSettingsAnalytics
local UCFCoreEditorSettings = {}



---@class UCFCoreSubsystem : UEngineSubsystem
local UCFCoreSubsystem = {}

---@param mod_id int64
---@param update_mod_request FUpdateModRequest
---@param avatar_image_filename FString
---@param on_success FUpdateModOn_success
---@param on_error FUpdateModOn_error
function UCFCoreSubsystem:UpdateMod(mod_id, update_mod_request, avatar_image_filename, on_success, on_error) end
---@param OnUninitialized FUnitializeOnUninitialized
---@param OnError FUnitializeOnError
function UCFCoreSubsystem:Unitialize(OnUninitialized, OnError) end
---@param mod_id int64
---@param on_uninstalled FUninstallModOn_uninstalled
---@param on_error FUninstallModOn_error
function UCFCoreSubsystem:UninstallMod(mod_id, on_uninstalled, on_error) end
---@param on_success FSynchronizeWithServerOn_success
---@param on_error FSynchronizeWithServerOn_error
function UCFCoreSubsystem:SynchronizeWithServer(on_success, on_error) end
---@param email FString
---@param on_success FSendSecurityCodeOn_success
---@param on_error FSendSecurityCodeOn_error
function UCFCoreSubsystem:SendSecurityCode(email, on_success, on_error) end
---@param InModIds TArray<int64>
---@param OnSuccess FPremiumModsCheckOnSuccess
---@param OnError FPremiumModsCheckOnError
function UCFCoreSubsystem:PremiumModsCheck(InModIds, OnSuccess, OnError) end
---@param installed_mods TArray<FInstalledMod>
---@param on_success FPerformModsValidationOn_success
---@param on_error FPerformModsValidationOn_error
function UCFCoreSubsystem:PerformModsValidation(installed_mods, on_success, on_error) end
---@param InPublicKeyPem FString
---@param OnSuccess FOverridePublicKeyOnSuccess
---@param OnError FOverridePublicKeyOnError
function UCFCoreSubsystem:OverridePublicKey(InPublicKeyPem, OnSuccess, OnError) end
---@param on_success FLogoutOn_success
---@param on_error FLogoutOn_error
function UCFCoreSubsystem:Logout(on_success, on_error) end
---@param on_is_auth FIsAuthenticatedOn_is_auth
function UCFCoreSubsystem:IsAuthenticated(on_is_auth) end
---@param InMod FCFCoreMod
---@param InFile FFile
---@param InAdditionalParams FInstallModAdditionalParams
---@param OnProgress FInstallModExtendedOnProgress
---@param OnInstalled FInstallModExtendedOnInstalled
---@param OnError FInstallModExtendedOnError
function UCFCoreSubsystem:InstallModExtended(InMod, InFile, InAdditionalParams, OnProgress, OnInstalled, OnError) end
---@param mod FCFCoreMod
---@param on_progress FInstallModOn_progress
---@param on_installed FInstallModOn_installed
---@param on_error FInstallModOn_error
function UCFCoreSubsystem:InstallMod(mod, on_progress, on_installed, on_error) end
---@param Settings FCFCoreSettings
---@param OPTIONS FCFCoreInitializationOptions
---@param OnInitialized FInitializeOnInitialized
---@param OnError FInitializeOnError
function UCFCoreSubsystem:Initialize(Settings, OPTIONS, OnInitialized, OnError) end
---@param OnSuccess FGetMyPremiumModsOnSuccess
---@param OnError FGetMyPremiumModsOnError
function UCFCoreSubsystem:GetMyPremiumMods(OnSuccess, OnError) end
---@param OnModsDirInfo FGetModsDirInfoOnModsDirInfo
---@param OnError FGetModsDirInfoOnError
function UCFCoreSubsystem:GetModsDirInfo(OnModsDirInfo, OnError) end
---@param on_installed_mods FGetInstalledModsOn_installed_mods
---@param on_error FGetInstalledModsOn_error
function UCFCoreSubsystem:GetInstalledMods(on_installed_mods, on_error) end
---@param on_success FGetCookerSdkVersionOn_success
---@param on_error FGetCookerSdkVersionOn_error
function UCFCoreSubsystem:GetCookerSdkVersion(on_success, on_error) end
---@param on_success FGetAuthTermsOn_success
---@param on_error FGetAuthTermsOn_error
function UCFCoreSubsystem:GetAuthTerms(on_success, on_error) end
---@param Provider ECFCoreExternalAuthProvider
---@param external_token FString
---@param additional_info FExternalAuthAdditionalInfo
---@param on_success FGenerateAuthTokenByExternalProviderOn_success
---@param on_error FGenerateAuthTokenByExternalProviderOn_error
function UCFCoreSubsystem:GenerateAuthTokenByExternalProvider(Provider, external_token, additional_info, on_success, on_error) end
---@param email FString
---@param security_code int32
---@param on_success FGenerateAuthTokenOn_success
---@param on_error FGenerateAuthTokenOn_error
function UCFCoreSubsystem:GenerateAuthToken(email, security_code, on_success, on_error) end
---@param modId int64
---@param CreateModFileRequest FCreateModFileRequest
---@param LocalFilenameToUpload FString
---@param OnCreateModFileRequestId FCreateModFileOnCreateModFileRequestId
---@param OnProgress FCreateModFileOnProgress
---@param OnSuccess FCreateModFileOnSuccess
---@param OnError FCreateModFileOnError
function UCFCoreSubsystem:CreateModFile(modId, CreateModFileRequest, LocalFilenameToUpload, OnCreateModFileRequestId, OnProgress, OnSuccess, OnError) end
---@param create_mod_request FCreateModRequest
---@param avatar_image_filename FString
---@param on_success FCreateModOn_success
---@param on_error FCreateModOn_error
function UCFCoreSubsystem:CreateMod(create_mod_request, avatar_image_filename, on_success, on_error) end
---@param modId int64
---@param SourceFileId int64
---@param CreateCookedModFileRequest FCreateCookedModFileRequest
---@param LocalFilenameToUpload FString
---@param OnCreateModFileRequestId FCreateCookedModFileOnCreateModFileRequestId
---@param OnProgress FCreateCookedModFileOnProgress
---@param OnSuccess FCreateCookedModFileOnSuccess
---@param OnError FCreateCookedModFileOnError
function UCFCoreSubsystem:CreateCookedModFile(modId, SourceFileId, CreateCookedModFileRequest, LocalFilenameToUpload, OnCreateModFileRequestId, OnProgress, OnSuccess, OnError) end
---@param mod_id int64
---@param on_success FCancelInstallationOn_success
---@param on_error FCancelInstallationOn_error
function UCFCoreSubsystem:CancelInstallation(mod_id, on_success, on_error) end
---@param Params FAssureServerModsUpdatedParams
---@param OnProgress FAssureServerModsUpdatedOnProgress
---@param OnUpdated FAssureServerModsUpdatedOnUpdated
---@param OnError FAssureServerModsUpdatedOnError
function UCFCoreSubsystem:AssureServerModsUpdated(Params, OnProgress, OnUpdated, OnError) end
---@param ServerFileIds TArray<int64>
---@param OnProgress FAssureClientModsUpdatedOnProgress
---@param OnUpdated FAssureClientModsUpdatedOnUpdated
---@param OnError FAssureClientModsUpdatedOnError
function UCFCoreSubsystem:AssureClientModsUpdated(ServerFileIds, OnProgress, OnUpdated, OnError) end
---@param modId int64
---@param Direction ECFCoreRatingVoteDirection
---@param on_success FApiUpdateRatingOn_success
---@param on_error FApiUpdateRatingOn_error
function UCFCoreSubsystem:ApiUpdateRating(modId, Direction, on_success, on_error) end
---@param Request FSubscribeRequest
---@param on_success FApiUnsubscribeOn_success
---@param on_error FApiUnsubscribeOn_error
function UCFCoreSubsystem:ApiUnsubscribe(Request, on_success, on_error) end
---@param Request FUnblockModsRequest
---@param OnResult FApiUnblockModsOnResult
---@param OnError FApiUnblockModsOnError
function UCFCoreSubsystem:ApiUnblockMods(Request, OnResult, OnError) end
---@param Request FSubscribeRequest
---@param on_success FApiSubscribeOn_success
---@param on_error FApiSubscribeOn_error
function UCFCoreSubsystem:ApiSubscribe(Request, on_success, on_error) end
---@param Filter FCFCoreSearchModsFilter
---@param pagination FCFCoreApiRequestPagination
---@param on_results FApiSearchModsOn_results
---@param on_error FApiSearchModsOn_error
function UCFCoreSubsystem:ApiSearchMods(Filter, pagination, on_results, on_error) end
---@param modId int64
---@param reasonId int64
---@param Report FString
---@param on_reasons FApiReportModOn_reasons
---@param on_error FApiReportModOn_error
function UCFCoreSubsystem:ApiReportMod(modId, reasonId, Report, on_reasons, on_error) end
---@param modId int64
---@param on_success FApiRemoveRatingOn_success
---@param on_error FApiRemoveRatingOn_error
function UCFCoreSubsystem:ApiRemoveRating(modId, on_success, on_error) end
---@param Filter FMatchPlatformFilesFilter
---@param OnResults FApiMatchPlatformFilesOnResults
---@param OnError FApiMatchPlatformFilesOnError
function UCFCoreSubsystem:ApiMatchPlatformFiles(Filter, OnResults, OnError) end
---@param Request FInitiatePurchaseRequest
---@param OnSuccess FApiInitiatePurchaseOnSuccess
---@param OnError FApiInitiatePurchaseOnError
function UCFCoreSubsystem:ApiInitiatePurchase(Request, OnSuccess, OnError) end
---@param on_results FApiGetVersionTypesOn_results
---@param on_error FApiGetVersionTypesOn_error
function UCFCoreSubsystem:ApiGetVersionTypes(on_results, on_error) end
---@param on_results FApiGetVersionsOn_results
---@param on_error FApiGetVersionsOn_error
function UCFCoreSubsystem:ApiGetVersions(on_results, on_error) end
---@param on_results FApiGetReportingReasonsOn_results
---@param on_error FApiGetReportingReasonsOn_error
function UCFCoreSubsystem:ApiGetReportingReasons(on_results, on_error) end
---@param on_results FApiGetMyRatingsOn_results
---@param on_error FApiGetMyRatingsOn_error
function UCFCoreSubsystem:ApiGetMyRatings(on_results, on_error) end
---@param on_results FApiGetMyModsOn_results
---@param on_error FApiGetMyModsOn_error
function UCFCoreSubsystem:ApiGetMyMods(on_results, on_error) end
---@param pagination FCFCoreApiRequestPagination
---@param on_subscriptions FApiGetModsSubscriptionsOn_subscriptions
---@param on_error FApiGetModsSubscriptionsOn_error
function UCFCoreSubsystem:ApiGetModsSubscriptions(pagination, on_subscriptions, on_error) end
---@param InFilter FCFCoreGetModsHighlightsFilter
---@param OnResults FApiGetModsHighlightsV2OnResults
---@param OnError FApiGetModsHighlightsV2OnError
function UCFCoreSubsystem:ApiGetModsHighlightsV2(InFilter, OnResults, OnError) end
---@param InFilter FCFCoreGetModsHighlightsFilter
---@param OnResults FApiGetModsHighlightsOnResults
---@param OnError FApiGetModsHighlightsOnError
function UCFCoreSubsystem:ApiGetModsHighlights(InFilter, OnResults, OnError) end
---@param modIds TArray<int64>
---@param on_results FApiGetModsOn_results
---@param on_error FApiGetModsOn_error
function UCFCoreSubsystem:ApiGetMods(modIds, on_results, on_error) end
---@param modId int64
---@param on_mod_desc FApiGetModDescriptionOn_mod_desc
---@param on_error FApiGetModDescriptionOn_error
function UCFCoreSubsystem:ApiGetModDescription(modId, on_mod_desc, on_error) end
---@param modId int64
---@param on_mod FApiGetModOn_mod
---@param on_error FApiGetModOn_error
function UCFCoreSubsystem:ApiGetMod(modId, on_mod, on_error) end
---@param on_results FApiGetMeOn_results
---@param on_error FApiGetMeOn_error
function UCFCoreSubsystem:ApiGetMe(on_results, on_error) end
---@param on_game FApiGetGameOn_game
---@param on_error FApiGetGameOn_error
function UCFCoreSubsystem:ApiGetGame(on_game, on_error) end
---@param fileIds TArray<int64>
---@param OnResults FApiGetFilesOnResults
---@param OnError FApiGetFilesOnError
function UCFCoreSubsystem:ApiGetFiles(fileIds, OnResults, OnError) end
---@param Filter FCFCoreGetCategoriesFilter
---@param on_results FApiGetCategoriesOn_results
---@param on_error FApiGetCategoriesOn_error
function UCFCoreSubsystem:ApiGetCategories(Filter, on_results, on_error) end
---@param on_result FApiGetBlockedModsDetailsOn_result
---@param on_error FApiGetBlockedModsDetailsOn_error
function UCFCoreSubsystem:ApiGetBlockedModsDetails(on_result, on_error) end
---@param on_result FApiGenerateTempTokenOn_result
---@param on_error FApiGenerateTempTokenOn_error
function UCFCoreSubsystem:ApiGenerateTempToken(on_result, on_error) end
---@param Request FGenPremiumCheckoutUrlRequest
---@param OnSuccess FApiGeneratePremiumCheckoutUrlOnSuccess
---@param OnError FApiGeneratePremiumCheckoutUrlOnError
function UCFCoreSubsystem:ApiGeneratePremiumCheckoutUrl(Request, OnSuccess, OnError) end
---@param Request FFinalizePurchaseRequest
---@param OnSuccess FApiFinalizePurchaseOnSuccess
---@param OnError FApiFinalizePurchaseOnError
function UCFCoreSubsystem:ApiFinalizePurchase(Request, OnSuccess, OnError) end
---@param InRequest FEntitlementsRedeemCodeRequest
---@param OnSuccess FApiEntitlementsRedeemCodeOnSuccess
---@param OnError FApiEntitlementsRedeemCodeOnError
function UCFCoreSubsystem:ApiEntitlementsRedeemCode(InRequest, OnSuccess, OnError) end
---@param InParams FModBrowsingFunnelParams
---@param OnSuccess FAnalyticsSendModBrowsingFunnelImpressionOnSuccess
---@param OnError FAnalyticsSendModBrowsingFunnelImpressionOnError
function UCFCoreSubsystem:AnalyticsSendModBrowsingFunnelImpression(InParams, OnSuccess, OnError) end
---@param InParams FModBrowsingFunnelParams
---@param OnSuccess FAnalyticsSendModBrowsingFunnelActionOnSuccess
---@param OnError FAnalyticsSendModBrowsingFunnelActionOnError
function UCFCoreSubsystem:AnalyticsSendModBrowsingFunnelAction(InParams, OnSuccess, OnError) end
---@param InParams FGamePlaySessionParams
---@param OnSuccess FAnalyticsSendGamePlaySessionOnSuccess
---@param OnError FAnalyticsSendGamePlaySessionOnError
function UCFCoreSubsystem:AnalyticsSendGamePlaySession(InParams, OnSuccess, OnError) end


