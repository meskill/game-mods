---@meta

---@class FChromaSDKAppInfoType
---@field Title FString
---@field Description FString
---@field Author_Name FString
---@field Author_Contact FString
---@field SupportedDevice int32
---@field Category int32
local FChromaSDKAppInfoType = {}



---@class FChromaSDKColorFrame1D
---@field Colors TArray<FLinearColor>
local FChromaSDKColorFrame1D = {}



---@class FChromaSDKColorFrame2D
---@field Colors TArray<FChromaSDKColors>
local FChromaSDKColorFrame2D = {}



---@class FChromaSDKColors
---@field Colors TArray<FLinearColor>
local FChromaSDKColors = {}



---@class FChromaSDKDeviceFrameIndex
---@field FrameIndex TArray<int32>
local FChromaSDKDeviceFrameIndex = {}



---@class FChromaSDKDeviceInfoType
---@field DeviceType EChromaSDKCoreDeviceTypeEnum::Type
---@field Connected int32
local FChromaSDKDeviceInfoType = {}



---@class FChromaSDKEffectResult
---@field Result int32
---@field EffectId FChromaSDKGuid
local FChromaSDKEffectResult = {}



---@class FChromaSDKGuid
local FChromaSDKGuid = {}


---@class FChromaSDKScene
---@field Effects TArray<FChromaSDKSceneEffect>
local FChromaSDKScene = {}



---@class FChromaSDKSceneEffect
---@field Animation FString
---@field State boolean
---@field PrimaryColor int32
---@field SecondaryColor int32
---@field Speed int32
---@field Blend EChromaSDKSceneBlend::Type
---@field Mode EChromaSDKSceneMode::Type
---@field FrameIndex FChromaSDKDeviceFrameIndex
local FChromaSDKSceneEffect = {}



---@class UChromaSDKPluginBPLibrary : UBlueprintFunctionLibrary
local UChromaSDKPluginBPLibrary = {}

---@param animationName FString
---@param Flag boolean
function UChromaSDKPluginBPLibrary:UsePreloadingName(animationName, Flag) end
---@param animationId int32
---@param Flag boolean
function UChromaSDKPluginBPLibrary:UsePreloading(animationId, Flag) end
---@param Flag boolean
function UChromaSDKPluginBPLibrary:UseIdleAnimations(Flag) end
---@param device EChromaSDKDeviceEnum::Type
---@param Flag boolean
function UChromaSDKPluginBPLibrary:UseIdleAnimation(device, Flag) end
---@param toggle boolean
function UChromaSDKPluginBPLibrary:UseForwardChromaEvents(toggle) end
---@param animationName FString
function UChromaSDKPluginBPLibrary:UnloadAnimationName(animationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:UnloadAnimation(animationId) end
---@param animationName FString
---@param NumberOfFrames int32
function UChromaSDKPluginBPLibrary:TrimStartFramesName(animationName, NumberOfFrames) end
---@param animationId int32
---@param NumberOfFrames int32
function UChromaSDKPluginBPLibrary:TrimStartFrames(animationId, NumberOfFrames) end
---@param animationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:TrimFrameName(animationName, frameId) end
---@param animationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:TrimFrame(animationId, frameId) end
---@param animationName FString
---@param lastFrameId int32
function UChromaSDKPluginBPLibrary:TrimEndFramesName(animationName, lastFrameId) end
---@param animationId int32
---@param lastFrameId int32
function UChromaSDKPluginBPLibrary:TrimEndFrames(animationId, lastFrameId) end
---@param colorParam int32
---@return FLinearColor
function UChromaSDKPluginBPLibrary:ToLinearColor(colorParam) end
---@param colorParam FLinearColor
---@return int32
function UChromaSDKPluginBPLibrary:ToBGR(colorParam) end
---@return boolean
function UChromaSDKPluginBPLibrary:SupportsStreaming() end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Offset int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroTargetAllKeysAllFramesOffsetName(sourceAnimationName, targetAnimationName, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroTargetAllKeysAllFramesOffset(sourceAnimationId, targetAnimationId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:SubtractNonZeroTargetAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroTargetAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroAllKeysName(sourceAnimationName, targetAnimationName, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Offset int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroAllKeysAllFramesOffsetName(sourceAnimationName, targetAnimationName, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroAllKeysAllFramesOffset(sourceAnimationId, targetAnimationId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:SubtractNonZeroAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroAllKeys(sourceAnimationId, targetAnimationId, frameId) end
function UChromaSDKPluginBPLibrary:StreamWatchEnd() end
---@param streamId FString
---@param Timestamp int32
function UChromaSDKPluginBPLibrary:StreamWatch(streamId, Timestamp) end
---@param streamFocus FString
---@return boolean
function UChromaSDKPluginBPLibrary:StreamSetFocus(streamFocus) end
---@param shortcode FString
---@return boolean
function UChromaSDKPluginBPLibrary:StreamReleaseShortcode(shortcode) end
---@param status EChromaSDKStreamStatusEnum::Type
---@return FString
function UChromaSDKPluginBPLibrary:StreamGetStatusString(status) end
---@return EChromaSDKStreamStatusEnum::Type
function UChromaSDKPluginBPLibrary:StreamGetStatus() end
---@param shortcode FString
---@return FString
function UChromaSDKPluginBPLibrary:StreamGetKey(shortcode) end
---@param shortcode FString
---@return FString
function UChromaSDKPluginBPLibrary:StreamGetId(shortcode) end
---@return FString
function UChromaSDKPluginBPLibrary:StreamGetFocus() end
---@param Platform FString
---@param Title FString
---@return FString
function UChromaSDKPluginBPLibrary:StreamGetAuthShortcode(Platform, Title) end
function UChromaSDKPluginBPLibrary:StreamBroadcastEnd() end
---@param streamId FString
---@param streamKey FString
function UChromaSDKPluginBPLibrary:StreamBroadcast(streamId, streamKey) end
---@param device EChromaSDKDeviceEnum::Type
function UChromaSDKPluginBPLibrary:StopAnimationType(device) end
---@param animationNames TArray<FString>
function UChromaSDKPluginBPLibrary:StopAnimations(animationNames) end
---@param animationName FString
function UChromaSDKPluginBPLibrary:StopAnimationComposite(animationName) end
---@param animationName FString
function UChromaSDKPluginBPLibrary:StopAnimation(animationName) end
function UChromaSDKPluginBPLibrary:StopAll() end
---@param Color FLinearColor
function UChromaSDKPluginBPLibrary:SetStaticColorAll(Color) end
---@param device EChromaSDKDeviceEnum::Type
---@param Color FLinearColor
function UChromaSDKPluginBPLibrary:SetStaticColor(device, Color) end
---@param led EChromaSDKMouseLed::Type
---@param colorParam FLinearColor
---@param Colors TArray<FChromaSDKColors>
function UChromaSDKPluginBPLibrary:SetMouseLedColor(led, colorParam, Colors) end
---@param animationName FString
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysNonZeroColorName(animationName, FrameIndex, Keys, colorParam) end
---@param animationName FString
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysNonZeroColorAllFramesName(animationName, Keys, colorParam) end
---@param animationId int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysNonZeroColorAllFrames(animationId, Keys, colorParam) end
---@param animationId int32
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysNonZeroColor(animationId, FrameIndex, Keys, colorParam) end
---@param animationName FString
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:SetKeysColorRGBName(animationName, FrameIndex, Keys, Red, Green, Blue) end
---@param animationId int32
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:SetKeysColorRGB(animationId, FrameIndex, Keys, Red, Green, Blue) end
---@param animationName FString
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysColorName(animationName, FrameIndex, Keys, colorParam) end
---@param animationName FString
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:SetKeysColorAllFramesRGBName(animationName, Keys, Red, Green, Blue) end
---@param animationId int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:SetKeysColorAllFramesRGB(animationId, Keys, Red, Green, Blue) end
---@param animationName FString
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysColorAllFramesName(animationName, Keys, colorParam) end
---@param animationId int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysColorAllFrames(animationId, Keys, colorParam) end
---@param animationId int32
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysColor(animationId, FrameIndex, Keys, colorParam) end
---@param animationName FString
---@param FrameIndex int32
---@param Row int32
---@param Column int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyRowColumnColorName(animationName, FrameIndex, Row, Column, colorParam) end
---@param animationName FString
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyNonZeroColorName(animationName, FrameIndex, Key, colorParam) end
---@param animationName FString
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyNonZeroColorAllFramesName(animationName, Key, colorParam) end
---@param animationId int32
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyNonZeroColorAllFrames(animationId, Key, colorParam) end
---@param animationId int32
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyNonZeroColor(animationId, FrameIndex, Key, colorParam) end
---@param animationName FString
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyColorName(animationName, FrameIndex, Key, colorParam) end
---@param animationName FString
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyColorAllFramesName(animationName, Key, colorParam) end
---@param animationId int32
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyColorAllFrames(animationId, Key, colorParam) end
---@param animationId int32
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyColor(animationId, FrameIndex, Key, colorParam) end
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
---@param Colors TArray<FChromaSDKColors>
function UChromaSDKPluginBPLibrary:SetKeyboardKeyColor(Key, colorParam, Colors) end
---@param animationName FString
function UChromaSDKPluginBPLibrary:SetIdleAnimationName(animationName) end
---@param Name FString
---@return int32
function UChromaSDKPluginBPLibrary:SetEventName(Name) end
---@param animationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:SetCurrentFrameName(animationName, frameId) end
---@param animationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:SetCurrentFrame(animationId, frameId) end
---@param animationName FString
---@param Flag boolean
function UChromaSDKPluginBPLibrary:SetChromaCustomFlagName(animationName, Flag) end
---@param animationName FString
function UChromaSDKPluginBPLibrary:SetChromaCustomColorAllFramesName(animationName) end
---@param animationName FString
function UChromaSDKPluginBPLibrary:ReverseAllFramesName(animationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:ReverseAllFrames(animationId) end
---@param animationName FString
---@param N int32
function UChromaSDKPluginBPLibrary:ReduceFramesName(animationName, N) end
---@param animationId int32
---@param N int32
function UChromaSDKPluginBPLibrary:ReduceFrames(animationId, N) end
---@param animationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:PreviewFrameName(animationName, frameId) end
---@param animationId int32
---@param frameId int32
---@return int32
function UChromaSDKPluginBPLibrary:PreviewFrame(animationId, frameId) end
---@param animationNames TArray<FString>
---@param loop boolean
function UChromaSDKPluginBPLibrary:PlayAnimations(animationNames, loop) end
---@param animationName FString
---@param loop boolean
function UChromaSDKPluginBPLibrary:PlayAnimationName(animationName, loop) end
---@param animationName FString
---@param loop boolean
function UChromaSDKPluginBPLibrary:PlayAnimationComposite(animationName, loop) end
---@param animationName FString
---@param loop boolean
function UChromaSDKPluginBPLibrary:PlayAnimation(animationName, loop) end
---@param animationName FString
---@param Duration float
function UChromaSDKPluginBPLibrary:OverrideFrameDurationName(animationName, Duration) end
---@param Data TArray<uint8>
---@param animationName FString
function UChromaSDKPluginBPLibrary:OpenAnimationFromMemory(Data, animationName) end
---@param animationName FString
---@param frameId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:OffsetNonZeroColorsName(animationName, frameId, Red, Green, Blue) end
---@param animationName FString
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:OffsetNonZeroColorsAllFramesName(animationName, Red, Green, Blue) end
---@param animationId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:OffsetNonZeroColorsAllFrames(animationId, Red, Green, Blue) end
---@param animationId int32
---@param frameId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:OffsetNonZeroColors(animationId, frameId, Red, Green, Blue) end
---@param animationName FString
---@param frameId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:OffsetColorsName(animationName, frameId, Red, Green, Blue) end
---@param animationName FString
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:OffsetColorsAllFramesName(animationName, Red, Green, Blue) end
---@param animationId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:OffsetColorsAllFrames(animationId, Red, Green, Blue) end
---@param animationId int32
---@param frameId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:OffsetColors(animationId, frameId, Red, Green, Blue) end
---@param animationName FString
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyTargetColorLerpAllFramesName(animationName, colorParam1, colorParam2) end
---@param animationId int32
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyTargetColorLerpAllFrames(animationId, colorParam1, colorParam2) end
---@param animationName FString
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyNonZeroTargetColorLerpAllFramesName(animationName, colorParam1, colorParam2) end
---@param animationId int32
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyNonZeroTargetColorLerpAllFrames(animationId, colorParam1, colorParam2) end
---@param animationName FString
---@param frameId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:MultiplyIntensityRGBName(animationName, frameId, Red, Green, Blue) end
---@param animationId int32
---@param frameId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:MultiplyIntensityRGB(animationId, frameId, Red, Green, Blue) end
---@param animationName FString
---@param frameId int32
---@param Intensity float
function UChromaSDKPluginBPLibrary:MultiplyIntensityName(animationName, frameId, Intensity) end
---@param animationName FString
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyIntensityColorName(animationName, frameId, colorParam) end
---@param animationName FString
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyIntensityColorAllFramesName(animationName, colorParam) end
---@param animationId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyIntensityColorAllFrames(animationId, colorParam) end
---@param animationId int32
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyIntensityColor(animationId, frameId, colorParam) end
---@param animationName FString
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:MultiplyIntensityAllFramesRGBName(animationName, Red, Green, Blue) end
---@param animationId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:MultiplyIntensityAllFramesRGB(animationId, Red, Green, Blue) end
---@param animationName FString
---@param Intensity float
function UChromaSDKPluginBPLibrary:MultiplyIntensityAllFramesName(animationName, Intensity) end
---@param animationId int32
---@param Intensity float
function UChromaSDKPluginBPLibrary:MultiplyIntensityAllFrames(animationId, Intensity) end
---@param animationId int32
---@param frameId int32
---@param Intensity float
function UChromaSDKPluginBPLibrary:MultiplyIntensity(animationId, frameId, Intensity) end
---@param animationName FString
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyColorLerpAllFramesName(animationName, colorParam1, colorParam2) end
---@param animationId int32
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyColorLerpAllFrames(animationId, colorParam1, colorParam2) end
---@param animationName FString
---@param frameCount int32
---@param Duration float
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:MakeBlankFramesRGBName(animationName, frameCount, Duration, Red, Green, Blue) end
---@param animationId int32
---@param frameCount int32
---@param Duration float
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:MakeBlankFramesRGB(animationId, frameCount, Duration, Red, Green, Blue) end
---@param animationName FString
---@param frameCount int32
---@param Duration float
function UChromaSDKPluginBPLibrary:MakeBlankFramesRandomName(animationName, frameCount, Duration) end
---@param animationName FString
---@param frameCount int32
---@param Duration float
function UChromaSDKPluginBPLibrary:MakeBlankFramesRandomBlackAndWhiteName(animationName, frameCount, Duration) end
---@param animationId int32
---@param frameCount int32
---@param Duration float
function UChromaSDKPluginBPLibrary:MakeBlankFramesRandomBlackAndWhite(animationId, frameCount, Duration) end
---@param animationId int32
---@param frameCount int32
---@param Duration float
function UChromaSDKPluginBPLibrary:MakeBlankFramesRandom(animationId, frameCount, Duration) end
---@param animationName FString
---@param frameCount int32
---@param Duration float
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:MakeBlankFramesName(animationName, frameCount, Duration, colorParam) end
---@param animationId int32
---@param frameCount int32
---@param Duration float
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:MakeBlankFrames(animationId, frameCount, Duration, colorParam) end
---@param animationName FString
function UChromaSDKPluginBPLibrary:LoadAnimationName(animationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:LoadAnimation(animationId) end
---@param From int32
---@param To int32
---@param T float
---@return int32
function UChromaSDKPluginBPLibrary:LerpColorBGR(From, To, T) end
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
---@param T float
---@return FLinearColor
function UChromaSDKPluginBPLibrary:LerpColor(colorParam1, colorParam2, T) end
---@param Start float
---@param End float
---@param amt float
---@return float
function UChromaSDKPluginBPLibrary:Lerp(Start, End, amt) end
---@return boolean
function UChromaSDKPluginBPLibrary:IsPlatformWindows() end
---@return boolean
function UChromaSDKPluginBPLibrary:IsInitialized() end
---@param deviceInfoType FChromaSDKDeviceInfoType
---@return int32
function UChromaSDKPluginBPLibrary:IsConnected(deviceInfoType) end
---@param device EChromaSDKDeviceEnum::Type
---@return boolean
function UChromaSDKPluginBPLibrary:IsAnimationTypePlaying(device) end
---@param animationName FString
---@return boolean
function UChromaSDKPluginBPLibrary:IsAnimationPlaying(animationName) end
---@param ACTIVE boolean
---@return int32
function UChromaSDKPluginBPLibrary:IsActive(ACTIVE) end
---@param animationName FString
function UChromaSDKPluginBPLibrary:InvertColorsAllFramesName(animationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:InvertColorsAllFrames(animationId) end
---@param animationName FString
---@param sourceFrame int32
---@param targetFrame int32
function UChromaSDKPluginBPLibrary:InsertFrameName(animationName, sourceFrame, targetFrame) end
---@param animationId int32
---@param sourceFrame int32
---@param targetFrame int32
function UChromaSDKPluginBPLibrary:InsertFrame(animationId, sourceFrame, targetFrame) end
---@param animationName FString
---@param frameId int32
---@param Delay int32
function UChromaSDKPluginBPLibrary:InsertDelayName(animationName, frameId, Delay) end
---@param animationId int32
---@param frameId int32
---@param Delay int32
function UChromaSDKPluginBPLibrary:InsertDelay(animationId, frameId, Delay) end
---@param Red int32
---@param Green int32
---@param Blue int32
---@return FLinearColor
function UChromaSDKPluginBPLibrary:GetRGB(Red, Green, Blue) end
---@param Index int32
---@return int32
function UChromaSDKPluginBPLibrary:GetPlayingAnimationId(Index) end
---@return int32
function UChromaSDKPluginBPLibrary:GetPlayingAnimationCount() end
---@param led EChromaSDKMouseLed::Type
---@param Colors TArray<FChromaSDKColors>
---@return FLinearColor
function UChromaSDKPluginBPLibrary:GetMouseLedColor(led, Colors) end
---@param device EChromaSDKDevice2DEnum::Type
---@return int32
function UChromaSDKPluginBPLibrary:GetMaxRow(device) end
---@param device EChromaSDKDevice1DEnum::Type
---@return int32
function UChromaSDKPluginBPLibrary:GetMaxLeds(device) end
---@param device EChromaSDKDevice2DEnum::Type
---@return int32
function UChromaSDKPluginBPLibrary:GetMaxColumn(device) end
---@param animationName FString
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
---@return FLinearColor
function UChromaSDKPluginBPLibrary:GetKeyColorName(animationName, FrameIndex, Key) end
---@param animationId int32
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
---@return FLinearColor
function UChromaSDKPluginBPLibrary:GetKeyColor(animationId, FrameIndex, Key) end
---@param Key EChromaSDKKeyboardKey::Type
---@return int32
function UChromaSDKPluginBPLibrary:GetKeyboardRzKey(Key) end
---@param Key FKey
---@return EChromaSDKKeyboardKey::Type
function UChromaSDKPluginBPLibrary:GetKeyboardRazerKey(Key) end
---@param Key EChromaSDKKeyboardKey::Type
---@param Colors TArray<FChromaSDKColors>
---@return FLinearColor
function UChromaSDKPluginBPLibrary:GetKeyboardKeyColor(Key, Colors) end
---@param animationName FString
---@return int32
function UChromaSDKPluginBPLibrary:GetFrameCountName(animationName) end
---@param animationId int32
---@return int32
function UChromaSDKPluginBPLibrary:GetFrameCount(animationId) end
---@param animationName FString
---@return int32
function UChromaSDKPluginBPLibrary:GetCurrentFrameName(animationName) end
---@param animationId int32
---@return int32
function UChromaSDKPluginBPLibrary:GetCurrentFrame(animationId) end
---@param Red int32
---@param Green int32
---@param Blue int32
---@return int32
function UChromaSDKPluginBPLibrary:GetBGRInt(Red, Green, Blue) end
---@param animationId int32
---@return FString
function UChromaSDKPluginBPLibrary:GetAnimationName(animationId) end
---@param Index int32
---@return int32
function UChromaSDKPluginBPLibrary:GetAnimationIdByIndex(Index) end
---@param animationName FString
---@return int32
function UChromaSDKPluginBPLibrary:GetAnimationId(animationName) end
---@return int32
function UChromaSDKPluginBPLibrary:GetAnimationCount() end
---@param animationName FString
---@return int32
function UChromaSDKPluginBPLibrary:GetAnimation(animationName) end
---@param animationName FString
---@param frameId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillZeroColorRGBName(animationName, frameId, Red, Green, Blue) end
---@param animationId int32
---@param frameId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillZeroColorRGB(animationId, frameId, Red, Green, Blue) end
---@param animationName FString
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillZeroColorName(animationName, frameId, colorParam) end
---@param animationName FString
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillZeroColorAllFramesRGBName(animationName, Red, Green, Blue) end
---@param animationId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillZeroColorAllFramesRGB(animationId, Red, Green, Blue) end
---@param animationName FString
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillZeroColorAllFramesName(animationName, colorParam) end
---@param animationId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillZeroColorAllFrames(animationId, colorParam) end
---@param animationId int32
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillZeroColor(animationId, frameId, colorParam) end
---@param animationName FString
---@param redThreshold int32
---@param greenThreshold int32
---@param blueThreshold int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillThresholdRGBColorsAllFramesRGBName(animationName, redThreshold, greenThreshold, blueThreshold, Red, Green, Blue) end
---@param animationId int32
---@param redThreshold int32
---@param greenThreshold int32
---@param blueThreshold int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillThresholdRGBColorsAllFramesRGB(animationId, redThreshold, greenThreshold, blueThreshold, Red, Green, Blue) end
---@param animationName FString
---@param frameId int32
---@param Threshold int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillThresholdColorsRGBName(animationName, frameId, Threshold, Red, Green, Blue) end
---@param animationId int32
---@param frameId int32
---@param Threshold int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillThresholdColorsRGB(animationId, frameId, Threshold, Red, Green, Blue) end
---@param animationName FString
---@param minThreshold int32
---@param minRed int32
---@param minGreen int32
---@param minBlue int32
---@param maxThreshold int32
---@param maxRed int32
---@param maxGreen int32
---@param maxBlue int32
function UChromaSDKPluginBPLibrary:FillThresholdColorsMinMaxAllFramesRGBName(animationName, minThreshold, minRed, minGreen, minBlue, maxThreshold, maxRed, maxGreen, maxBlue) end
---@param animationId int32
---@param minThreshold int32
---@param minRed int32
---@param minGreen int32
---@param minBlue int32
---@param maxThreshold int32
---@param maxRed int32
---@param maxGreen int32
---@param maxBlue int32
function UChromaSDKPluginBPLibrary:FillThresholdColorsMinMaxAllFramesRGB(animationId, minThreshold, minRed, minGreen, minBlue, maxThreshold, maxRed, maxGreen, maxBlue) end
---@param animationName FString
---@param Threshold int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillThresholdColorsAllFramesRGBName(animationName, Threshold, Red, Green, Blue) end
---@param animationId int32
---@param Threshold int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillThresholdColorsAllFramesRGB(animationId, Threshold, Red, Green, Blue) end
---@param animationName FString
---@param Threshold int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillThresholdColorsAllFramesName(animationName, Threshold, colorParam) end
---@param animationId int32
---@param Threshold int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillThresholdColorsAllFrames(animationId, Threshold, colorParam) end
---@param animationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:FillRandomColorsName(animationName, frameId) end
---@param animationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:FillRandomColorsBlackAndWhiteName(animationName, frameId) end
---@param animationName FString
function UChromaSDKPluginBPLibrary:FillRandomColorsBlackAndWhiteAllFramesName(animationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:FillRandomColorsBlackAndWhiteAllFrames(animationId) end
---@param animationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:FillRandomColorsBlackAndWhite(animationId, frameId) end
---@param animationName FString
function UChromaSDKPluginBPLibrary:FillRandomColorsAllFramesName(animationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:FillRandomColorsAllFrames(animationId) end
---@param animationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:FillRandomColors(animationId, frameId) end
---@param animationName FString
---@param frameId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillNonZeroColorRGBName(animationName, frameId, Red, Green, Blue) end
---@param animationId int32
---@param frameId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillNonZeroColorRGB(animationId, frameId, Red, Green, Blue) end
---@param animationName FString
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillNonZeroColorName(animationName, frameId, colorParam) end
---@param animationName FString
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillNonZeroColorAllFramesRGBName(animationName, Red, Green, Blue) end
---@param animationId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillNonZeroColorAllFramesRGB(animationId, Red, Green, Blue) end
---@param animationName FString
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillNonZeroColorAllFramesName(animationName, colorParam) end
---@param animationId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillNonZeroColorAllFrames(animationId, colorParam) end
---@param animationId int32
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillNonZeroColor(animationId, frameId, colorParam) end
---@param animationName FString
---@param frameId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillColorRGBName(animationName, frameId, Red, Green, Blue) end
---@param animationId int32
---@param frameId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillColorRGB(animationId, frameId, Red, Green, Blue) end
---@param animationName FString
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillColorName(animationName, frameId, colorParam) end
---@param animationName FString
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillColorAllFramesRGBName(animationName, Red, Green, Blue) end
---@param animationId int32
---@param Red int32
---@param Green int32
---@param Blue int32
function UChromaSDKPluginBPLibrary:FillColorAllFramesRGB(animationId, Red, Green, Blue) end
---@param animationName FString
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillColorAllFramesName(animationName, colorParam) end
---@param animationId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillColorAllFrames(animationId, colorParam) end
---@param animationId int32
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillColor(animationId, frameId, colorParam) end
---@param animationName FString
---@param fade int32
function UChromaSDKPluginBPLibrary:FadeStartFramesName(animationName, fade) end
---@param animationId int32
---@param fade int32
function UChromaSDKPluginBPLibrary:FadeStartFrames(animationId, fade) end
---@param animationName FString
---@param fade int32
function UChromaSDKPluginBPLibrary:FadeEndFramesName(animationName, fade) end
---@param animationId int32
---@param fade int32
function UChromaSDKPluginBPLibrary:FadeEndFrames(animationId, fade) end
---@param animationName FString
function UChromaSDKPluginBPLibrary:DuplicateMirrorFramesName(animationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:DuplicateMirrorFrames(animationId) end
---@param animationName FString
function UChromaSDKPluginBPLibrary:DuplicateFramesName(animationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:DuplicateFrames(animationId) end
---@param animationName FString
---@param frameCount int32
function UChromaSDKPluginBPLibrary:DuplicateFirstFrameName(animationName, frameCount) end
---@param animationId int32
---@param frameCount int32
function UChromaSDKPluginBPLibrary:DuplicateFirstFrame(animationId, frameCount) end
---@param device EChromaSDKDevice2DEnum::Type
---@return TArray<FChromaSDKColors>
function UChromaSDKPluginBPLibrary:CreateRandomColorsBlackAndWhite2D(device) end
---@param device EChromaSDKDevice1DEnum::Type
---@return TArray<FLinearColor>
function UChromaSDKPluginBPLibrary:CreateRandomColorsBlackAndWhite1D(device) end
---@param device EChromaSDKDevice2DEnum::Type
---@return TArray<FChromaSDKColors>
function UChromaSDKPluginBPLibrary:CreateRandomColors2D(device) end
---@param device EChromaSDKDevice1DEnum::Type
---@return TArray<FLinearColor>
function UChromaSDKPluginBPLibrary:CreateRandomColors1D(device) end
---@param device EChromaSDKDevice2DEnum::Type
---@return TArray<FChromaSDKColors>
function UChromaSDKPluginBPLibrary:CreateColors2D(device) end
---@param device EChromaSDKDevice1DEnum::Type
---@return TArray<FLinearColor>
function UChromaSDKPluginBPLibrary:CreateColors1D(device) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:CopyZeroTargetAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:CopyZeroTargetAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:CopyNonZeroTargetAllKeysName(sourceAnimationName, targetAnimationName, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Offset int32
function UChromaSDKPluginBPLibrary:CopyNonZeroTargetAllKeysAllFramesOffsetName(sourceAnimationName, targetAnimationName, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:CopyNonZeroTargetAllKeysAllFramesOffset(sourceAnimationId, targetAnimationId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:CopyNonZeroTargetAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:CopyNonZeroTargetAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:CopyNonZeroTargetAllKeys(sourceAnimationId, targetAnimationId, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyNonZeroKeysColorName(sourceAnimationName, targetAnimationName, FrameIndex, Keys) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyNonZeroKeysColorAllFramesName(sourceAnimationName, targetAnimationName, Keys) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyNonZeroKeysColorAllFrames(sourceAnimationId, targetAnimationId, Keys) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyNonZeroKeysColor(sourceAnimationId, targetAnimationId, FrameIndex, Keys) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
function UChromaSDKPluginBPLibrary:CopyNonZeroKeyColorName(sourceAnimationName, targetAnimationName, FrameIndex, Key) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
function UChromaSDKPluginBPLibrary:CopyNonZeroKeyColor(sourceAnimationId, targetAnimationId, FrameIndex, Key) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param frameId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysOffsetName(sourceAnimationName, targetAnimationName, frameId, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param frameId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysOffset(sourceAnimationId, targetAnimationId, frameId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysName(sourceAnimationName, targetAnimationName, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Offset int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysAllFramesOffsetName(sourceAnimationName, targetAnimationName, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysAllFramesOffset(sourceAnimationId, targetAnimationId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeys(sourceAnimationId, targetAnimationId, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyKeysColorName(sourceAnimationName, targetAnimationName, FrameIndex, Keys) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyKeysColorAllFramesName(sourceAnimationName, targetAnimationName, Keys) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyKeysColorAllFrames(sourceAnimationId, targetAnimationId, Keys) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyKeysColor(sourceAnimationId, targetAnimationId, FrameIndex, Keys) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
function UChromaSDKPluginBPLibrary:CopyKeyColorName(sourceAnimationName, targetAnimationName, FrameIndex, Key) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
function UChromaSDKPluginBPLibrary:CopyKeyColor(sourceAnimationId, targetAnimationId, FrameIndex, Key) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:CopyAnimationName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:CopyAnimation(sourceAnimationId, targetAnimationName) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:CopyAllKeysName(sourceAnimationName, targetAnimationName, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:CopyAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:CopyAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:CopyAllKeys(sourceAnimationId, targetAnimationId, frameId) end
---@param animationName FString
function UChromaSDKPluginBPLibrary:CloseAnimationName(animationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:CloseAnimation(animationId) end
function UChromaSDKPluginBPLibrary:CloseAll() end
---@param device EChromaSDKDeviceEnum::Type
function UChromaSDKPluginBPLibrary:ClearAnimationType(device) end
function UChromaSDKPluginBPLibrary:ClearAll() end
---@return int32
function UChromaSDKPluginBPLibrary:ChromaSDKUnInit() end
---@param EffectId FChromaSDKGuid
---@return int32
function UChromaSDKPluginBPLibrary:ChromaSDKSetEffect(EffectId) end
---@param appInfo FChromaSDKAppInfoType
---@return int32
function UChromaSDKPluginBPLibrary:ChromaSDKInitSDK(appInfo) end
---@return int32
function UChromaSDKPluginBPLibrary:ChromaSDKInit() end
---@param EffectId FChromaSDKGuid
---@return int32
function UChromaSDKPluginBPLibrary:ChromaSDKDeleteEffect(EffectId) end
---@param device EChromaSDKDeviceEnum::Type
---@param colorParam FLinearColor
---@return FChromaSDKEffectResult
function UChromaSDKPluginBPLibrary:ChromaSDKCreateEffectStatic(device, colorParam) end
---@param device EChromaSDKDeviceEnum::Type
---@return FChromaSDKEffectResult
function UChromaSDKPluginBPLibrary:ChromaSDKCreateEffectNone(device) end
---@param Colors TArray<FChromaSDKColors>
---@return FChromaSDKEffectResult
function UChromaSDKPluginBPLibrary:ChromaSDKCreateEffectKeyboardCustom2D(Colors) end
---@param device EChromaSDKDevice2DEnum::Type
---@param Colors TArray<FChromaSDKColors>
---@return FChromaSDKEffectResult
function UChromaSDKPluginBPLibrary:ChromaSDKCreateEffectCustom2D(device, Colors) end
---@param device EChromaSDKDevice1DEnum::Type
---@param Colors TArray<FLinearColor>
---@return FChromaSDKEffectResult
function UChromaSDKPluginBPLibrary:ChromaSDKCreateEffectCustom1D(device, Colors) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:AppendAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:AppendAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Offset int32
function UChromaSDKPluginBPLibrary:AddNonZeroTargetAllKeysAllFramesOffsetName(sourceAnimationName, targetAnimationName, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:AddNonZeroTargetAllKeysAllFramesOffset(sourceAnimationId, targetAnimationId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:AddNonZeroTargetAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:AddNonZeroTargetAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:AddNonZeroAllKeysName(sourceAnimationName, targetAnimationName, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Offset int32
function UChromaSDKPluginBPLibrary:AddNonZeroAllKeysAllFramesOffsetName(sourceAnimationName, targetAnimationName, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:AddNonZeroAllKeysAllFramesOffset(sourceAnimationId, targetAnimationId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:AddNonZeroAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:AddNonZeroAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:AddNonZeroAllKeys(sourceAnimationId, targetAnimationId, frameId) end


