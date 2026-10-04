---@meta

---@class UWBASDK : UGameInstanceSubsystem
---@field StartFullscreenTakeoverEventBP FWBASDKStartFullscreenTakeoverEventBP
---@field StartFullscreenTakeoverFlagsEventBP FWBASDKStartFullscreenTakeoverFlagsEventBP
---@field EndFullscreenTakeoverEventBP FWBASDKEndFullscreenTakeoverEventBP
---@field StartPartialTakeoverEventBP FWBASDKStartPartialTakeoverEventBP
---@field StartPartialTakeoverFlagsEventBP FWBASDKStartPartialTakeoverFlagsEventBP
---@field EndPartialTakeoverEventBP FWBASDKEndPartialTakeoverEventBP
---@field CreatePromotionTextureEventBP FWBASDKCreatePromotionTextureEventBP
---@field DestroyPromotionTextureEventBP FWBASDKDestroyPromotionTextureEventBP
---@field ErrorEventBP FWBASDKErrorEventBP
---@field Vault UWBASDKVault
local UWBASDK = {}

---@param Name FString
---@param flags EWBASDKTakeoverFlags
function UWBASDK:StartPartialTakeoverFlagsBP__DelegateSignature(Name, flags) end
---@param Name FString
function UWBASDK:StartPartialTakeoverBP__DelegateSignature(Name) end
---@param Name FString
---@param flags EWBASDKTakeoverFlags
function UWBASDK:StartFullscreenTakeoverFlagsBP__DelegateSignature(Name, flags) end
---@param Name FString
function UWBASDK:StartFullscreenTakeoverBP__DelegateSignature(Name) end
---@param InPromotionName FString
---@return EWBASDKPromotionStatus
function UWBASDK:GetPromotionStatus(InPromotionName) end
---@return EWBASDKInputIconType
function UWBASDK:GetInputIconType() end
---@param InPromotionName FString
---@return EWBASDKPromotionStatus
function UWBASDK:GetBannerPromotionStatus(InPromotionName) end
---@param InIconType EWBASDKInputIconType
function UWBASDK:ForceInputIconType(InIconType) end
---@param Error EWBASDKError
---@param Name FString
function UWBASDK:ErrorBP__DelegateSignature(Error, Name) end
---@param Name FString
function UWBASDK:EndPartialTakeoverBP__DelegateSignature(Name) end
---@param Name FString
function UWBASDK:EndFullscreenTakeoverBP__DelegateSignature(Name) end
---@param Name FString
---@param Texture UTexture2DDynamic
function UWBASDK:DestroyPromotionTextureBP__DelegateSignature(Name, Texture) end
---@param Name FString
---@param Texture UTexture2DDynamic
function UWBASDK:CreatePromotionTextureBP__DelegateSignature(Name, Texture) end


---@class UWBASDKSettings : UObject
---@field DecryptionKey FString
---@field KeyboardContinueKeys TArray<FName>
---@field GamepadContinueKeys TArray<FName>
---@field KeyboardBuyKeys TArray<FName>
---@field GamepadBuyKeys TArray<FName>
---@field KeyboardSecondaryKeys TArray<FName>
---@field GamepadSecondaryKeys TArray<FName>
local UWBASDKSettings = {}



---@class UWBASDKVault : UWBASDKVaultBase
---@field InstallDate int64
---@field PlayerId FString
---@field HydraPublicId FString
---@field PlayerNetworkPublicId FString
---@field DisplayName FString
---@field AgeGate boolean
---@field AgeGateInitialized boolean
local UWBASDKVault = {}



---@class UWBASDKVaultBase : USaveGame
local UWBASDKVaultBase = {}


