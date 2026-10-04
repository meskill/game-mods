---@enum EFriendInvitationState
local EFriendInvitationState = {
    FRIEND_INVITE_STATE_OPEN = 0,
    FRIEND_INVITE_STATE_ACCEPTED = 1,
    FRIEND_INVITE_STATE_CANCELLED = 2,
    FRIEND_INVITE_STATE_DECLINED = 3,
    FRIEND_INVITE_STATE_MAX = 4,
}

---@enum EWBPNAgeCategory
local EWBPNAgeCategory = {
    UNKNOWN = 0,
    CHILD = 1,
    TEEN = 2,
    ADULT = 3,
    EWBPNAgeCategory_MAX = 4,
}

---@enum EWBPNAgeType
local EWBPNAgeType = {
    UNKNOWN = 0,
    AGE = 1,
    DATE_OF_BIRTH = 2,
    XBOX_AGE_GROUP = 3,
    PSN_AGE = 4,
    MATURE = 5,
    EWBPNAgeType_MAX = 6,
}

---@enum EWBPNLegalDocumentType
local EWBPNLegalDocumentType = {
    UNKNOWN = 0,
    TERMS_OF_SERVICE = 1,
    PRIVACY_POLICY = 2,
    EULA = 3,
    ONLINE_SERVICES_AGREEMENT = 4,
    EPILEPSY_WARNING = 5,
    EWBPNLegalDocumentType_MAX = 6,
}

---@enum EWBPNLocationType
local EWBPNLocationType = {
    UNKNOWN = 0,
    ISO_CODE = 1,
    IP_ADDRESS = 2,
    REQUEST_GEOIP = 3,
    EWBPNLocationType_MAX = 4,
}

---@enum EWBPNOAuthPrefer
local EWBPNOAuthPrefer = {
    NONE = 0,
    SIGNIN = 1,
    REGISTER = 2,
    EWBPNOAuthPrefer_MAX = 3,
}

---@enum EWBPNPlatform
local EWBPNPlatform = {
    UNKNOWN = 0,
    XBOX = 1,
    PLAYSTATION = 2,
    NINTENDO_SWITCH = 3,
    EPIC = 4,
    DISCORD = 5,
    STEAM = 6,
    EWBPNPlatform_MAX = 7,
}

---@enum EWBPNPlatformLinkType
local EWBPNPlatformLinkType = {
    WBPN_PLATFORM_INVALID = 0,
    WBPN_PLATFORM_DISCORD = 1,
    WBPN_PLATFORM_EPIC = 2,
    WBPN_PLATFORM_MAX = 3,
}

---@enum EWBPNPresenceState
local EWBPNPresenceState = {
    OFFLINE = 0,
    ONLINE = 1,
    UNKNOWN = 2,
    EWBPNPresenceState_MAX = 3,
}

---@enum EWBPNRealtimeError
local EWBPNRealtimeError = {
    CLUSTER_INVALID = 0,
    SERVER_INVALID = 1,
    AUTH_FAILED = 2,
    WEBSOCKET_CONNECT = 3,
    EWBPNRealtimeError_MAX = 4,
}

---@enum EWBPNRealtimeIncomingMessage
local EWBPNRealtimeIncomingMessage = {
    RECEIVE = 0,
    NOTIFICATION = 6,
    AUTH = 9,
    SERVERDISCONNECT = 10,
    PING = 12,
    EWBPNRealtimeIncomingMessage_MAX = 13,
}

---@enum EWBPNRealtimeOutgoingMessage
local EWBPNRealtimeOutgoingMessage = {
    AUTH = 0,
    DISCONNECT = 1,
    PONG = 10,
    EWBPNRealtimeOutgoingMessage_MAX = 11,
}

---@enum EWBPNXboxAgeGroup
local EWBPNXboxAgeGroup = {
    UNKNOWN = 0,
    CHILD = 1,
    TEEN = 2,
    ADULT = 3,
    EWBPNXboxAgeGroup_MAX = 4,
}

