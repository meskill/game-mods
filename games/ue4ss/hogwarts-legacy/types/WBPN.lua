---@meta

---@class FWBPNAccount
---@field m_id FString
---@field m_createdAt FDateTime
---@field m_updatedAt FDateTime
---@field m_publicId FString
---@field m_isComplete boolean
---@field m_username FString
---@field m_locale FString
---@field m_avatar FWBPNAvatarDetails
---@field m_lastLogin FDateTime
---@field m_ageCategory EWBPNAgeCategory
---@field m_wizardingWorldLink FWBPNThirdPartyLink
---@field m_curseForgeLink FWBPNThirdPartyLink
---@field m_gameLinks TMap<FString, FWBPNGameLink>
---@field m_myGameLink FWBPNGameLink
---@field m_email FString
local FWBPNAccount = {}



---@class FWBPNAccountContactDetails
---@field m_ownerId FString
---@field m_contactId FString
---@field m_blocked boolean
---@field m_account FWBPNAccountDisplayDetails
local FWBPNAccountContactDetails = {}



---@class FWBPNAccountDisplayDetails
---@field m_username FString
---@field m_accountId FString
---@field m_avatar FWBPNAvatarDetails
---@field m_presenceState EWBPNPresenceState
local FWBPNAccountDisplayDetails = {}



---@class FWBPNAccountLookupData
---@field m_publicId FString
---@field m_username FString
---@field m_avatar FWBPNAvatarDetails
local FWBPNAccountLookupData = {}



---@class FWBPNAge
---@field m_ageType EWBPNAgeType
---@field m_ageValue FString
local FWBPNAge = {}



---@class FWBPNAgeInformation
---@field m_location FWBPNLocation
---@field m_age FWBPNAge
---@field m_updatedAt FDateTime
---@field m_country FString
---@field m_territory FString
local FWBPNAgeInformation = {}



---@class FWBPNAvatarDetails
---@field m_name FString
---@field m_imageUrl FString
local FWBPNAvatarDetails = {}



---@class FWBPNCheckAgeResponseData
---@field m_passed boolean
local FWBPNCheckAgeResponseData = {}



---@class FWBPNCountry
---@field m_code FString
---@field m_name FString
---@field m_localeName FWBPNLocalizedField
---@field m_region TMap<FString, FString>
---@field m_embargoed boolean
---@field m_childAgeGate int32
---@field m_adultAgeGate int32
---@field m_territories TArray<FWBPNTerritory>
local FWBPNCountry = {}



---@class FWBPNCurseForgeSilentAuthTokenResponse
---@field m_token FString
local FWBPNCurseForgeSilentAuthTokenResponse = {}



---@class FWBPNData
---@field m_isLoggedIn boolean
local FWBPNData = {}



---@class FWBPNFriendDeletedNotification : FWBPNRealtimeNotification
---@field m_friendId FString
local FWBPNFriendDeletedNotification = {}



---@class FWBPNFriendDetails
---@field m_account FWBPNAccountDisplayDetails
---@field m_createdAt FDateTime
local FWBPNFriendDetails = {}



---@class FWBPNFriendInvitation
---@field m_id FString
---@field m_createdAt FDateTime
---@field m_updatedAt FDateTime
---@field m_sentFrom FString
---@field m_sentTo FString
---@field m_state EFriendInvitationState
local FWBPNFriendInvitation = {}



---@class FWBPNFriendInvitationCreatedNotification : FWBPNRealtimeNotification
---@field m_invitationId FString
---@field m_friend FWBPNAccountDisplayDetails
local FWBPNFriendInvitationCreatedNotification = {}



---@class FWBPNFriendInvitationDetails
---@field m_id FString
---@field m_sentFrom FString
---@field m_sentTo FString
---@field m_state EFriendInvitationState
---@field m_account FWBPNAccountDisplayDetails
local FWBPNFriendInvitationDetails = {}



---@class FWBPNFriendInvitationStateChangedNotification : FWBPNRealtimeNotification
---@field m_invitationId FString
---@field m_state EFriendInvitationState
---@field m_friend FWBPNAccountDisplayDetails
local FWBPNFriendInvitationStateChangedNotification = {}



---@class FWBPNGameLink
---@field m_gameSlug FString
---@field m_id FString
---@field m_lastSeenPlatform EWBPNPlatform
---@field m_lastGameLogin FDateTime
---@field m_lastAccessed FDateTime
---@field m_ageInformation FWBPNAgeInformation
---@field m_ageCategory EWBPNAgeCategory
---@field m_allPlatforms TMap<FString, FWBPNGameLinkPlatformInfo>
---@field m_isMyGameLink boolean
local FWBPNGameLink = {}



---@class FWBPNGameLinkPlatformInfo
---@field m_accessTime FDateTime
local FWBPNGameLinkPlatformInfo = {}



---@class FWBPNGenerateDeviceAuthorizationTokenResponse
---@field m_url FString
---@field m_code FString
---@field m_deviceToken FString
---@field m_pollInterval float
---@field m_expiresAt FDateTime
local FWBPNGenerateDeviceAuthorizationTokenResponse = {}



---@class FWBPNGenerateDeviceLinkCodeResponse
---@field m_url FString
---@field m_code FString
---@field m_pollInterval float
---@field m_expiresAt FDateTime
local FWBPNGenerateDeviceLinkCodeResponse = {}



---@class FWBPNGeolocationResponseData
---@field m_timezone FString
---@field m_countryCode FString
---@field m_territory FString
local FWBPNGeolocationResponseData = {}



---@class FWBPNGetAgeCategoryResponseData
---@field m_ageCategory EWBPNAgeCategory
---@field m_location FWBPNLocationData
local FWBPNGetAgeCategoryResponseData = {}



---@class FWBPNLegalConfiguration
---@field m_countries TArray<FWBPNCountry>
---@field m_documentViewPriority TArray<EWBPNLegalDocumentType>
---@field m_localization FWBPNLegalLocalization
local FWBPNLegalConfiguration = {}



---@class FWBPNLegalDocument
---@field m_id FString
---@field m_regions TArray<FString>
---@field m_effectiveAt FDateTime
---@field m_content FWBPNLocalizedField
---@field m_contentURL FWBPNLocalizedField
---@field m_name FWBPNLocalizedField
---@field m_type EWBPNLegalDocumentType
---@field m_platform EWBPNPlatform
---@field m_createdAt FDateTime
---@field m_updatedAt FDateTime
local FWBPNLegalDocument = {}



---@class FWBPNLegalDocumentComplianceResponseData
---@field m_documents TArray<FWBPNLegalDocument>
local FWBPNLegalDocumentComplianceResponseData = {}



---@class FWBPNLegalDocumentConsent
---@field m_platform EWBPNPlatform
---@field m_documentId FString
---@field m_createdAt FDateTime
---@field m_updatedAt FDateTime
local FWBPNLegalDocumentConsent = {}



---@class FWBPNLegalDocumentsConsentedToResponseData
---@field m_consents TArray<FWBPNLegalDocumentConsent>
local FWBPNLegalDocumentsConsentedToResponseData = {}



---@class FWBPNLegalLocalization
---@field m_slug FString
---@field m_gameSlug FString
---@field m_strings TArray<FWBPNLocalizedField>
local FWBPNLegalLocalization = {}



---@class FWBPNLegalTrackingConsentResponseData
---@field m_allowPerformanceTracking boolean
---@field m_allowFunctionalTracking boolean
---@field m_allowTargetingTracking boolean
---@field m_consentedAt FDateTime
---@field m_createdAt FDateTime
---@field m_updatedAt FDateTime
local FWBPNLegalTrackingConsentResponseData = {}



---@class FWBPNLocalizedField
---@field m_default FString
---@field m_rendered FString
---@field m_slug FString
---@field m_localizations TMap<FString, FString>
local FWBPNLocalizedField = {}



---@class FWBPNLocation
---@field m_locationType EWBPNLocationType
---@field m_locationValue FString
local FWBPNLocation = {}



---@class FWBPNLocationData
---@field m_country FString
---@field m_territory FString
local FWBPNLocationData = {}



---@class FWBPNLoginResponse
---@field m_accessToken FString
---@field m_expiresIn int32
---@field m_mfaRequired boolean
---@field m_refreshToken FString
---@field m_refreshExpiresIn int32
local FWBPNLoginResponse = {}



---@class FWBPNPaginatedFriendDetails
---@field m_total int32
---@field m_page int32
---@field m_pageSize int32
---@field m_friends TArray<FWBPNFriendDetails>
local FWBPNPaginatedFriendDetails = {}



---@class FWBPNPaginatedFriendInvitations
---@field m_total int32
---@field m_page int32
---@field m_pageSize int32
---@field m_invitations TArray<FWBPNFriendInvitationDetails>
local FWBPNPaginatedFriendInvitations = {}



---@class FWBPNPresenceChangedNotification : FWBPNRealtimeNotification
---@field m_friendId FString
---@field m_presence EWBPNPresenceState
local FWBPNPresenceChangedNotification = {}



---@class FWBPNRealtimeClusterInfo
---@field Name FString
---@field servers TArray<FWBPNRealtimeServerInfo>
local FWBPNRealtimeClusterInfo = {}



---@class FWBPNRealtimeData
---@field m_enabled boolean
---@field m_clusters TMap<FString, FWBPNRealtimeClusterInfo>
local FWBPNRealtimeData = {}



---@class FWBPNRealtimeNotification
---@field m_cmd FString
local FWBPNRealtimeNotification = {}



---@class FWBPNRealtimeServerInfo
---@field Name FString
---@field ws FString
---@field wss FString
---@field udp FString
local FWBPNRealtimeServerInfo = {}



---@class FWBPNSdkData
---@field m_realtime FWBPNRealtimeData
local FWBPNSdkData = {}



---@class FWBPNTerritory
---@field m_code FString
---@field m_name FString
---@field m_childAgeGate int32
---@field m_adultAgeGate int32
local FWBPNTerritory = {}



---@class FWBPNThirdPartyLink
---@field m_createdAt FDateTime
---@field m_updatedAt FDateTime
---@field m_authId FString
---@field m_lastSeenUsername FString
local FWBPNThirdPartyLink = {}



---@class FWBPNWizardingWorldAttributeData
---@field m_keyname FString
---@field m_value FString
---@field m_issuer FString
local FWBPNWizardingWorldAttributeData = {}



---@class FWBPNWizardingWorldAttributeListData
---@field m_attributes TArray<FWBPNWizardingWorldAttributeData>
local FWBPNWizardingWorldAttributeListData = {}



---@class FWBPNWizardingWorldData
---@field m_sourceUserId FString
---@field m_Source FString
---@field m_issuer FString
---@field m_groupHash FString
---@field m_linkedAccounts TArray<FWBPNWizardingWorldLinkedAccountData>
local FWBPNWizardingWorldData = {}



---@class FWBPNWizardingWorldLinkAttributeData
---@field m_keyname FString
---@field m_value FString
---@field m_iss FString
---@field m_issuerKeynameHash FString
local FWBPNWizardingWorldLinkAttributeData = {}



---@class FWBPNWizardingWorldLinkData
---@field m_Source FString
---@field m_iss FString
---@field m_groupHash FString
---@field m_groupLink FString
---@field m_attributes TArray<FWBPNWizardingWorldLinkAttributeData>
local FWBPNWizardingWorldLinkData = {}



---@class FWBPNWizardingWorldLinkedAccountData
---@field m_Source FString
---@field m_iss FString
---@field m_isParent boolean
---@field m_groupHash FString
---@field m_groupLink FString
local FWBPNWizardingWorldLinkedAccountData = {}



---@class UWBPNClient : UObject
local UWBPNClient = {}


