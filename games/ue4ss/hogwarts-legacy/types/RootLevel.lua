---@meta

---@class ARootLevel_C : ALevelScriptActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FrontendLevel ULevelStreamingDynamic
---@field GlobalSkyLevel ULevelStreamingDynamic
---@field IntroRootLevel ULevelStreamingDynamic
---@field AvatarCreatorLevel ULevelStreamingDynamic
---@field LondonLevel ULevelStreamingDynamic
---@field bPrintDebugStrings boolean
---@field FirstTimeFlowWidget UUI_BP_FirstTimeFlow_C
---@field NewCharClickedHandle FHermesBPDelegateHandle
---@field AvatarFinalizedHandle FHermesBPDelegateHandle
---@field PSOScreenWidget UUI_BP_PSO_FS_C
---@field bMapSystemInitialized boolean
---@field bPSOsLoaded boolean
---@field BeaconsLoadedHandle FHermesBPDelegateHandle
local ARootLevel_C = {}

function ARootLevel_C:ShowPSOLoadScreen() end
function ARootLevel_C:ShowNewCharacter() end
function ARootLevel_C:ResumePSOCaching() end
function ARootLevel_C:LoadRequestedSaveGame() end
---@param bIsLoadingFromRestart boolean
function ARootLevel_C:IsLoadingFromRestart(bIsLoadingFromRestart) end
function ARootLevel_C:ShowLondonLevel() end
function ARootLevel_C:UnloadLondonLevel() end
function ARootLevel_C:LoadLondonLevel() end
function ARootLevel_C:UnloadGlobalSky() end
function ARootLevel_C:ShowGlobalSky() end
---@param bShow boolean
function ARootLevel_C:LoadGlobalSky(bShow) end
function ARootLevel_C:ShowAvatarCreatorLevel() end
function ARootLevel_C:UnloadAvatarCreatorLevel() end
---@param bShow boolean
function ARootLevel_C:LoadAvatarCreatorLevel(bShow) end
function ARootLevel_C:UnloadFrontEnd() end
function ARootLevel_C:LoadFrontend() end
---@return boolean
function ARootLevel_C:IsLoadGame() end
---@param bShow boolean
function ARootLevel_C:ShowPlayer(bShow) end
---@param bVisible boolean
---@param RemovingState boolean
function ARootLevel_C:SetHUDVisibility(bVisible, RemovingState) end
---@param Array TArray<ULevelStreamingDynamic>
---@param bAllLoaded boolean
function ARootLevel_C:AreAllSublevelsVisible(Array, bAllLoaded) end
---@param Array TArray<ULevelStreamingDynamic>
---@param bAllLoaded boolean
function ARootLevel_C:AreAllSublevelsLoaded(Array, bAllLoaded) end
function ARootLevel_C:LoadIntroRoot() end
---@param String FString
---@param Color FLinearColor
function ARootLevel_C:PrintString(String, Color) end
function ARootLevel_C:CurtainRaised_E8EC53644D53D2AAF6BC15BCA37C5F16() end
function ARootLevel_C:CurtainRaised_719B12A84487D57F5F2C03BDBFDB81B0() end
function ARootLevel_C:CurtainRaised_8E9B3FCE44434535ED1F4898D20AE4A3() end
function ARootLevel_C:Complete_18ACD14D4D2AE081A6E8B095185A9E32() end
function ARootLevel_C:Complete_2AA0D30B40366D78C9EF3CA710BE16FC() end
function ARootLevel_C:CurtainRaised_B0AA608842C141D688E142948D6B420A() end
function ARootLevel_C:CurtainRaised_221FAF4A49C5DE0CDD169185CB092566() end
function ARootLevel_C:CurtainRaised_308763E043A510A6360585929689F005() end
function ARootLevel_C:CurtainRaised_0AB342D049A49891F07D05A20BF48471() end
function ARootLevel_C:CurtainRaised_FA8189904516377DEADA4289AAFE6B4A() end
function ARootLevel_C:ReceiveBeginPlay() end
function ARootLevel_C:OnFrontEndLoaded() end
---@param Caller UObject
function ARootLevel_C:AvatarFinalized(Caller) end
function ARootLevel_C:OnFirstTimeFlowWidgetComplete() end
---@param Caller UObject
function ARootLevel_C:PlayPortkeyLanding(Caller) end
function ARootLevel_C:OnAvCreatorLevelLoaded() end
function ARootLevel_C:OnAvCreatorLevelShown() end
---@param Caller UObject
function ARootLevel_C:CarriageRideComplete(Caller) end
---@param EndPlayReason EEndPlayReason::Type
function ARootLevel_C:ReceiveEndPlay(EndPlayReason) end
---@param PopupScreen UPopupScreen
---@param CompletionActionIndex int32
function ARootLevel_C:PopupClosedEvent_Event_0(PopupScreen, CompletionActionIndex) end
function ARootLevel_C:OnIntroRootLoaded() end
function ARootLevel_C:OnIntroRootShown() end
---@param Caller UObject
function ARootLevel_C:GringottsCP2Ready(Caller) end
---@param Caller UObject
function ARootLevel_C:VoidCP3Ready(Caller) end
function ARootLevel_C:OnFrontendHidden() end
function ARootLevel_C:OnLondonLevelLoaded() end
function ARootLevel_C:OnLondonLevelShown() end
---@param bCanBackOut boolean
function ARootLevel_C:TransitionToAvatarCreator(bCanBackOut) end
function ARootLevel_C:OnFrontEndShown() end
---@param Caller UObject
function ARootLevel_C:NewCharacterClicked(Caller) end
---@param Caller UObject
function ARootLevel_C:CancelAvatarCreator(Caller) end
---@param Caller UObject
function ARootLevel_C:VoidCP4Ready(Caller) end
---@param Caller UObject
function ARootLevel_C:VoidCP5Ready(Caller) end
---@param bFromLoad boolean
function ARootLevel_C:GoToLondon(bFromLoad) end
---@param bResult boolean
ARootLevel_C['OnAllCrossGenSaveData transferred'] = function(self, bResult) end
---@param Caller UObject
function ARootLevel_C:VoidCP6Ready(Caller) end
function ARootLevel_C:PSOScreenComplete() end
---@param Caller UObject
function ARootLevel_C:OverlandBeaconsLoaded(Caller) end
---@param EntryPoint int32
function ARootLevel_C:ExecuteUbergraph_RootLevel(EntryPoint) end


