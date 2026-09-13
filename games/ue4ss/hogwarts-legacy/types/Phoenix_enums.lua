---@enum ActivityTypeIDs
local ActivityTypeIDs = {
    ACTIVITY_TYPE_CLASS = 0,
    ACTIVITY_TYPE_CLUB = 1,
    ACTIVITY_TYPE_COMPANION = 2,
    ACTIVITY_TYPE_EVENT = 3,
    ACTIVITY_TYPE_EXCURSION = 4,
    ACTIVITY_TYPE_FREETIME = 5,
    ACTIVITY_TYPE_GUARD = 6,
    ACTIVITY_TYPE_INVESTIGATE = 7,
    ACTIVITY_TYPE_MEAL = 8,
    ACTIVITY_TYPE_MINGLE = 9,
    ACTIVITY_TYPE_MISSION = 10,
    ACTIVITY_TYPE_MISSIONCRITICAL = 11,
    ACTIVITY_TYPE_NURTURE = 12,
    ACTIVITY_TYPE_OCCUPATION = 13,
    ACTIVITY_TYPE_PATROL = 14,
    ACTIVITY_TYPE_PERFORMTASK = 15,
    ACTIVITY_TYPE_REST = 16,
    ACTIVITY_TYPE_SEATFILLERSTATIC = 17,
    ACTIVITY_TYPE_SELFSTUDY = 18,
    ACTIVITY_TYPE_SLEEP = 19,
    ACTIVITY_TYPE_TRANSIENTACTION = 20,
    ACTIVITY_TYPE_COUNT = 21,
    ACTIVITY_TYPE_MAX = 22,
}

---@enum AmbientChatterTopicIDs
local AmbientChatterTopicIDs = {
    VO_AMB_Academia = 0,
    VO_AMB_Boasting = 1,
    VO_AMB_COM_09_01_01_GoblinTrouble = 2,
    VO_AMB_COM_09_01_01_HamletRelieved = 3,
    VO_AMB_Common = 4,
    VO_AMB_DAS_COM_36_01_VillGoss = 5,
    VO_AMB_DAS_HeadmasterActingStrange_PolyjuiceMission = 6,
    VO_AMB_DAS_NPC_AvatarDestroyedFerdinandFrame = 7,
    VO_AMB_DAS_NPC_AvatarFoundJackdawHideout = 8,
    VO_AMB_DAS_NPC_AvatarFoundSquidGrotto = 9,
    VO_AMB_DAS_NPC_AvatarMetHeadlessHunt = 10,
    VO_AMB_DAS_NPC_AvatarReturnedFerdinand_HogsHead = 11,
    VO_AMB_DAS_NPC_AvatarReturnedFerdinand_ThreeBroomsticks = 12,
    VO_AMB_DAS_NPC_AvatarSavedHogwarts = 13,
    VO_AMB_DAS_NPC_AvatarSolvedTotemSecrets = 14,
    VO_AMB_DAS_NPC_AvatarSurvivedIntroOne = 15,
    VO_AMB_DAS_NPC_AvatarTalkDiggory = 16,
    VO_AMB_DAS_NPC_HogsHeadRumours = 17,
    VO_AMB_DAS_NPC_RestrictedSectionInvaded = 18,
    VO_AMB_DAS_NPC_RookwoodDetails = 19,
    VO_AMB_DAS_NPC_StudentRodeGraphorn = 20,
    VO_AMB_DAS_NPC_ThreeBroomstickRumours = 21,
    VO_AMB_DarkMatters = 22,
    VO_AMB_Dormitory = 23,
    VO_AMB_Embarrassment = 24,
    VO_AMB_Family = 25,
    VO_AMB_Flying = 26,
    VO_AMB_Ham_BaghAnTaigh = 27,
    VO_AMB_Ham_Brocburrow = 28,
    VO_AMB_Ham_Cragcroft = 29,
    VO_AMB_Ham_Feldcroft = 30,
    VO_AMB_Ham_Hearth = 31,
    VO_AMB_Ham_Irondale = 32,
    VO_AMB_Ham_Keenbridge = 33,
    VO_AMB_Ham_LowerHogsfield = 34,
    VO_AMB_Ham_Marunweem = 35,
    VO_AMB_Ham_PittUponFord = 36,
    VO_AMB_Ham_UpperHogsfield = 37,
    VO_AMB_Headmaster = 38,
    VO_AMB_Herbology = 39,
    VO_AMB_HfO1_01_01_DugbogPre = 40,
    VO_AMB_HfO1_01_02_DugbogPost = 41,
    VO_AMB_History = 42,
    VO_AMB_Hogsmeade = 43,
    VO_AMB_Hogwarts = 44,
    VO_AMB_Magic = 45,
    VO_AMB_Occupation = 46,
    VO_AMB_Owls = 47,
    VO_AMB_Potions = 48,
    VO_AMB_Professors = 49,
    VO_AMB_Reg_Coastline1 = 50,
    VO_AMB_Reg_Coastline2 = 51,
    VO_AMB_Reg_Coastline3 = 52,
    VO_AMB_Reg_Countryside1 = 53,
    VO_AMB_Reg_Countryside2 = 54,
    VO_AMB_Reg_Countryside3 = 55,
    VO_AMB_Society = 56,
    VO_AMB_Transfiguration = 57,
    VO_AMB_Vendors = 58,
    VO_AMB_hCO1_01_01_PoachersAndPeace = 59,
    VO_AMB_hCO2_01_01_POSTManorGossip = 60,
    VO_AMB_hCO2_01_01_PREManorGossip = 61,
    VO_AMB_hCO3_01_Graphorn_PostMount = 62,
    VO_AMB_hCO3_01_Graphorn_PreMount = 63,
    VO_AMB_hCO3_01_POSTDugbog = 64,
    VO_AMB_hCO3_01_PREDugbog = 65,
    VO_AMB_hFO1_01_01_VillagerGoss = 66,
    VO_AMB_hFO4_01_CurrAsh = 67,
    VO_AMB_hFO4_01_InsatiableSpider = 68,
    VO_AMB_hFO4_01_PostAsh = 69,
    VO_AMB_hHN1_01_01_CentaursNearby = 70,
    VO_AMB_hHN1_01_01_HelenAlive = 71,
    VO_AMB_hHN1_01_01_HelenDead = 72,
    VO_AMB_hHN1_01_01_RiverTrollAlive = 73,
    VO_AMB_hHN1_01_01_RiverTrollDead = 74,
    VO_AMB_hHN1_01_01_TunnelTrollAlive = 75,
    VO_AMB_hHN1_01_01_TunnelTrollDead = 76,
    VO_AMB_hHN2_01_01_VillageGoss = 77,
    VO_AMB_hHN3_01_01_VillagerGoss = 78,
    VO_AMB_hHN3_01_CatrinPRE = 79,
    VO_AMB_hHN3_02_CatrinPOST = 80,
    VO_AMB_hHN3_02_PergitPRE = 81,
    VO_AMB_hHS1_01 = 82,
    VO_AMB_hHS2_01_EVL_02 = 83,
    VO_AMB_hHS2_01_EVL_03 = 84,
    VO_AMB_hHS2_01_PostGoblin1 = 85,
    VO_AMB_hHS2_01_PreGoblin1 = 86,
    VO_AMB_hSW1_01_01_POSTTroll = 87,
    VO_AMB_hSW1_01_01_PRETroll = 88,
    VO_AMB_COUNT = 89,
    VO_AMB_MAX = 90,
}

---@enum AnimationTypeToFetch
local AnimationTypeToFetch = {
    ANIMFETCH_UNKNOWN = 0,
    ANIMFETCH_ENTER = 1,
    ANIMFETCH_EXIT = 2,
    ANIMFETCH_MAX = 3,
}

---@enum AttackCollisionType
local AttackCollisionType = {
    LeftHandWeapon = 0,
    RightHandWeapon = 1,
    BodyCapsule = 2,
    LeftAndRight = 3,
    All = 4,
    AttackCollisionType_MAX = 5,
}

---@enum AvaAudioDialogueFlags
local AvaAudioDialogueFlags = {
    DLGFLAG_None = 0,
    DLGFLAG_FromConversation = 1,
    DLGFLAG_StartPaused = 2,
    DLGFLAG_DontDispatchLipsyncMessage = 4,
    DLGFLAG_NoQueuingLimits = 8,
    DLGFLAG_SuppressSubtitles = 16,
    DLGFLAG_NonSpatialized = 32,
    DLGFLAG_UseCinematicPolyphony = 64,
    DLGFLAG_MouthLipsyncOnly = 128,
    DLGFLAG_MAX = 129,
}

---@enum BannerUpdateType
local BannerUpdateType = {
    BANNER_UPDATE_NEW_MISSION = 0,
    BANNER_UPDATE_MISSION_AVAILABLE = 1,
    BANNER_UPDATE_MISSION_COMPLETE = 2,
    BANNER_UPDATE_MISSION_ENDED = 3,
    BANNER_UPDATE_MISSION_FAILED = 4,
    BANNER_UPDATE_NEW_STEP = 5,
    BANNER_UPDATE_STEP_COMPLETE = 6,
    BANNER_UPDATE_STEP_UPDATED = 7,
    BANNER_UPDATE_STEP_REDISPLAY = 8,
    BANNER_UPDATE_NO_FOCUS_MISSION = 9,
    BANNER_UPDATE_STEP_JOURNAL_UPDATED = 10,
    BANNER_UPDATE_STEP_WAYPOINT = 11,
    BANNER_UPDATE_SHOWMISSIONCOMPLETEUI = 12,
    BANNER_UPDATE_NONE = 13,
    BANNER_UPDATE_COUNT = 14,
    BANNER_UPDATE_MAX = 15,
}

---@enum ChooseAttackFlags
local ChooseAttackFlags = {
    UseFallbackRange = 0,
    IgnoreSelectCooldown = 1,
    ResetFailed = 2,
    IgnoreSelectRanges = 3,
    IgnoreOptRanges = 4,
    IgnoreMinAttackAngle = 5,
    TargetOffNav = 6,
    HighTier = 7,
    MedTier = 8,
    LowTier = 9,
    AnyTier = 10,
    IgnoreSelectWeights = 11,
    Count = 12,
    ChooseAttackFlags_MAX = 13,
}

---@enum CollisionTypeIDs
local CollisionTypeIDs = {
    STATION_COLLISION_GROUND = 0,
    STATION_COLLISION_MOVING = 1,
    STATION_COLLISION_SEATED = 2,
    STATION_COLLISION_STANDING = 3,
    STATION_COLLISION_STANDINGNOFORWARD = 4,
    STATION_COLLISION_STANDINGNOFORWARD2P = 5,
    STATION_COLLISION_STANDINGNOREVERSE = 6,
    STATION_COLLISION_STANDINGWITHPROP = 7,
    STATION_COLLISION_COUNT = 8,
    STATION_COLLISION_MAX = 9,
}

---@enum EAOEMultiFXState
local EAOEMultiFXState = {
    Announce = 0,
    Warning = 1,
    Explode = 2,
    Expired = 3,
    AnnounceStart = 4,
    AnnounceLoop = 5,
    WarningStart = 6,
    WarningLoop = 7,
    Impact = 8,
    ImpactStart = 9,
    ImpactEnd = 10,
    EAOEMultiFXState_MAX = 11,
}

---@enum EAbilityTaskScratchPadCondition
local EAbilityTaskScratchPadCondition = {
    None = 0,
    Hit = 1,
    HitTarget = 2,
    HitGround = 3,
    IsBurning = 4,
    IsCharred = 5,
    HasTarget = 6,
    IsDead = 7,
    TriggerTransition = 8,
    RandomDuration = 9,
    RandomDurationTransition = 10,
    ApparateAttackCount = 11,
    HideLocSelected = 12,
    JumpSplineDone = 13,
    SplineSpawnAdvance = 14,
    Suspended = 15,
    Hovering = 16,
    HasWeapon = 17,
    AttackCustomFlag = 18,
    TasIsAlert = 19,
    TasIsAttack = 20,
    IsSwimming = 21,
    EAbilityTaskScratchPadCondition_MAX = 22,
}

---@enum EAblAbilityEnemyMoveVelocitySource
local EAblAbilityEnemyMoveVelocitySource = {
    External = 0,
    Fall = 1,
    CustomForward = 2,
    CustomBackward = 3,
    Custom = 4,
    Jump = 5,
    Continued = 6,
    Slide = 7,
    EAblAbilityEnemyMoveVelocitySource_MAX = 8,
}

---@enum EAblAddLinearImpulseDirectionType
local EAblAddLinearImpulseDirectionType = {
    Global = 0,
    Local = 1,
    ImpactDirection = 2,
    EAblAddLinearImpulseDirectionType_MAX = 3,
}

---@enum EAblCameraStackContextOperation
local EAblCameraStackContextOperation = {
    Ignore = 0,
    AddContext = 1,
    RemoveContext = 2,
    EAblCameraStackContextOperation_MAX = 3,
}

---@enum EAblCollisionBranchDetectionType
local EAblCollisionBranchDetectionType = {
    MoveDirectionDotHitNormal = 0,
    MoveDirectionDotUpVector = 1,
    HitNormalDotUpVector = 2,
    EAblCollisionBranchDetectionType_MAX = 3,
}

---@enum EAblGaitSpeed
local EAblGaitSpeed = {
    Stopped = 0,
    SlowWalk = 1,
    Walk = 2,
    Jog = 3,
    Sprint = 4,
    EAblGaitSpeed_MAX = 5,
}

---@enum EAblMoveTaskBallisticDestinationSource
local EAblMoveTaskBallisticDestinationSource = {
    Stratchpad = 0,
    FromTarget = 1,
    ToTarget = 2,
    ToLoc = 3,
    ToParamLoc = 4,
    EAblMoveTaskBallisticDestinationSource_MAX = 5,
}

---@enum EAblMoveTaskVelocitySource
local EAblMoveTaskVelocitySource = {
    Stratchpad = 0,
    Fall = 1,
    Custom = 2,
    Ballistic = 3,
    EAblMoveTaskVelocitySource_MAX = 4,
}

---@enum EAblNPCTurnToTaskDestination
local EAblNPCTurnToTaskDestination = {
    Self = 0,
    Owner = 1,
    Instigator = 2,
    TargetActor = 3,
    Camera = 4,
    NpcReactionImpactDirection = 5,
    AlignToParent = 6,
    NpcReactionTargetActor = 7,
    NpcReactionTargetLocation = 8,
    ImpactDirectionFwdBwd = 9,
    ImpactDirectionFwdBwdLftRgt = 10,
    ImpactDirectionFwdBwdInv = 11,
    NpcReactVelDir = 12,
    NpcReactVelDirInv = 13,
    JumpLanding = 14,
    EnemyTarget = 15,
    EAblNPCTurnToTaskDestination_MAX = 16,
}

---@enum EAblNpcCollisionDetectionType
local EAblNpcCollisionDetectionType = {
    MoveDirectionDotHitNormal = 0,
    MoveDirectionDotUpVector = 1,
    HitNormalDotUpVector = 2,
    EAblNpcCollisionDetectionType_MAX = 3,
}

---@enum EAblNpcPopupDirection
local EAblNpcPopupDirection = {
    Forward = 0,
    Backward = 1,
    Left = 2,
    Right = 3,
    EAblNpcPopupDirection_MAX = 4,
}

---@enum EAblNpcReactCapsuleImpulseVelocitySource
local EAblNpcReactCapsuleImpulseVelocitySource = {
    ReactionDataVelocity = 0,
    ReactorBackwards = 1,
    ReactorFowards = 2,
    ReactorLeft = 3,
    ReactorRight = 4,
    InstigatorTowards = 5,
    InstigatorAway = 6,
    InstigatorLeft = 7,
    InstigatorRight = 8,
    ImpactDirectionTowards = 9,
    ImpactDirectionAway = 10,
    ImpactDirectionLeft = 11,
    ImpactDirectionRight = 12,
    TargetActorTowards = 13,
    TargetActorAway = 14,
    TargetActorLeft = 15,
    TargetActorRight = 16,
    ReactionDataDirection = 17,
    EAblNpcReactCapsuleImpulseVelocitySource_MAX = 18,
}

---@enum EAblNpcReactMoveToDestinationType
local EAblNpcReactMoveToDestinationType = {
    CustomGlobal = 0,
    CustomLocal = 1,
    ReactionTargetLocation = 2,
    ReactionInstigator = 3,
    EAblNpcReactMoveToDestinationType_MAX = 4,
}

---@enum EAblNpcReactMoveToSpeedType
local EAblNpcReactMoveToSpeedType = {
    Custom = 0,
    ReactionVelocityMagnitude = 1,
    TimeCurve = 2,
    DistancetoDestinationCurve = 3,
    PositionCurve = 4,
    EAblNpcReactMoveToSpeedType_MAX = 5,
}

---@enum EAblNpcReactPopupTaskType
local EAblNpcReactPopupTaskType = {
    ReactionInitialVelocity = 0,
    ReactionInitialDirection = 1,
    DirectionToInstigator = 2,
    ImpactDirection = 3,
    DirectionToTargetActor = 4,
    EAblNpcReactPopupTaskType_MAX = 5,
}

---@enum EAccessibilityAudioCueEventType
local EAccessibilityAudioCueEventType = {
    ACCESSIBILITY_EVENT_TYPE_INTERACT = 0,
    ACCESSIBILITY_EVENT_TYPE_FOOTSTEPS = 1,
    ACCESSIBILITY_EVENT_TYPE_SPELLCASTER = 2,
    ACCESSIBILITY_EVENT_TYPE_ALERT = 3,
    ACCESSIBILITY_EVENT_TYPE_BEAST_ROAR = 4,
    ACCESSIBILITY_EVENT_TYPE_DESTRUCTIBLE = 5,
    ACCESSIBILITY_EVENT_TYPE_RUNNING_WATER = 6,
    ACCESSIBILITY_EVENT_TYPE_DOOR_OPENCLOSE = 7,
    ACCESSIBILITY_EVENT_TYPE_SHOW_NEGATIVE_INTERACTIONS = 8,
    ACCESSIBILITY_EVENT_TYPE_BROOM = 9,
    ACCESSIBILITY_EVENT_TYPE_LOOT = 10,
    ACCESSIBILITY_EVENT_TYPE_BEAST_AWARE = 11,
    ACCESSIBILITY_EVENT_TYPE_HIT = 12,
    ACCESSIBILITY_EVENT_TYPE_AMBIENT_CONVERSATION = 13,
    ACCESSIBILITY_EVENT_TYPE_STEALTH_DETECTED = 14,
    ACCESSIBILITY_EVENT_TYPE_REVELIO_BELL = 15,
    ACCESSIBILITY_EVENT_TYPE_NONE = 16,
    ACCESSIBILITY_EVENT_TYPE_MAX = 17,
}

---@enum EAccessibilityAudioCueMode
local EAccessibilityAudioCueMode = {
    ACCESSIBILITY_EVENT_MODE_ONE_SHOT = 0,
    ACCESSIBILITY_EVENT_MODE_ENTER = 1,
    ACCESSIBILITY_EVENT_MODE_LEAVE = 2,
    ACCESSIBILITY_EVENT_MODE_MAX = 3,
}

---@enum EAccessibilityColorRemapMode
local EAccessibilityColorRemapMode = {
    Invalid = 0,
    Initialize = 1,
    None = 2,
    Deuteranope = 3,
    Protanope = 4,
    Tritanope = 5,
    EAccessibilityColorRemapMode_MAX = 6,
}

---@enum EAccountLinkStatus
local EAccountLinkStatus = {
    NoOnlineConnection = 0,
    LocalOnlyProfile = 1,
    NoLink = 2,
    WBPNLoggedIn = 3,
    WBPNCompleted = 4,
    WWIDLinked = 5,
    EAccountLinkStatus_MAX = 6,
}

---@enum EAcknowledgementRuleType
local EAcknowledgementRuleType = {
    Time = 0,
    Event = 1,
    Ambient = 2,
    COUNT = 3,
    EAcknowledgementRuleType_MAX = 4,
}

---@enum EAcknowledgementSpeakerType
local EAcknowledgementSpeakerType = {
    ANY = 0,
    COMPANION = 1,
    DEEK = 2,
    ENEMY = 3,
    NONENEMY = 4,
    NONE = 5,
    PLAYER = 6,
    VENDOR = 7,
    COUNT = 8,
    EAcknowledgementSpeakerType_MAX = 9,
}

---@enum EActionsCompleteBehaviour
local EActionsCompleteBehaviour = {
    None = 0,
    Dismount = 1,
    MoveToNewSpline = 2,
    EActionsCompleteBehaviour_MAX = 3,
}

---@enum EActivityTypeBits
local EActivityTypeBits = {
    ACTIVITY_BIT_NONE = 0,
    ACTIVITY_BIT_MISSION = 1,
    ACTIVITY_BIT_MISSION_CRITICAL = 2,
    ACTIVITY_BIT_EXCURSION = 4,
    ACTIVITY_BIT_HOBO = 8,
    ACTIVITY_BIT_INVESTIGATION = 16,
    ACTIVITY_BIT_PERFORM_TASK = 32,
    ACTIVITY_BIT_PERFORM_TASK_MOVETOLOCATION = 64,
    ACTIVITY_BIT_PERFORM_TASK_MOVETOSTATION = 128,
    ACTIVITY_BIT_PERFORM_TASK_WAITFORPLAYER = 256,
    ACTIVITY_BIT_PERFORM_TASK_CUSTOMNOLOCATIONTASK = 512,
    ACTIVITY_BIT_PERFORM_TASK_CUSTOMLOCATIONTASK = 1024,
    ACTIVITY_BIT_PERFORM_TASK_TELEPORTTOSTATION = 2048,
    ACTIVITY_BIT_PERFORM_TASK_TELEPORTCURTAINDOWN = 4096,
    ACTIVITY_BIT_PERFORM_TASK_FOLLOWACTOR = 8192,
    ACTIVITY_BIT_PERFORM_TASK_WAITFORTIME = 16384,
    ACTIVITY_BIT_PERFORM_TASK_NOP = 32768,
    ACTIVITY_BIT_HAIL = 65536,
    ACTIVITY_BIT_CLASS = 131072,
    ACTIVITY_BIT_PERFORM_TASK_APPARATEOUT = 262144,
    ACTIVITY_BIT_PERFORM_TASK_FOLLOWSCRIPTEDSPLINE = 524288,
    ACTIVITY_BIT_PERFORM_TASK_FOLLOWSPLINE = 1048576,
    ACTIVITY_BIT_WANDER_AND_VANISH = 2097152,
    ACTIVITY_BIT_PERFORM_TASK_APPARATE = 16777216,
    ACTIVITY_BIT_WALK_AWAY_AND_RECYCLE = 4194304,
    ACTIVITY_BIT_OWNS_SITE_LOCATION = 8388608,
    ACTIVITY_BIT_MAX = 16777217,
}

---@enum EActor_LoadDBProcessingType
local EActor_LoadDBProcessingType = {
    LoadProcessingType_None = 0,
    LoadProcessingType_NPC = 1,
    LoadProcessingType_ObjectState = 2,
    LoadProcessingType_MAX = 3,
}

---@enum EAdditiveBodyState
local EAdditiveBodyState = {
    None = 0,
    Reacting = 1,
    EAdditiveBodyState_MAX = 2,
}

---@enum EAlohomoraLevel
local EAlohomoraLevel = {
    Nothing = 0,
    Level_1 = 1,
    Level_2 = 2,
    Level_3 = 3,
    EAlohomoraLevel_MAX = 4,
}

---@enum EAmbientCreatureSpawnVolumePriority
local EAmbientCreatureSpawnVolumePriority = {
    Base = 0,
    Override = 1,
    EAmbientCreatureSpawnVolumePriority_MAX = 2,
}

---@enum EAmbientCreatureSpawnVolumeType
local EAmbientCreatureSpawnVolumeType = {
    Spawn = 0,
    Exclude = 1,
    SuppressAndExclude = 2,
    EAmbientCreatureSpawnVolumeType_MAX = 3,
}

---@enum EAncientMagicEffectType
local EAncientMagicEffectType = {
    None = 0,
    Discover = 1,
    Nova = 2,
    Test = 3,
    EAncientMagicEffectType_MAX = 4,
}

---@enum EAncientMagicHotSpotCameraType
local EAncientMagicHotSpotCameraType = {
    None = 0,
    OrbitClose = 1,
    OrbitFar = 2,
    PullBack = 3,
    EAncientMagicHotSpotCameraType_MAX = 4,
}

---@enum EAnimateLightColorIntensityBlend
local EAnimateLightColorIntensityBlend = {
    Replace = 0,
    Multiply = 1,
    Additive = 2,
    EAnimateLightColorIntensityBlend_MAX = 3,
}

---@enum EAntiAliasingMode
local EAntiAliasingMode = {
    TAA_Low = 0,
    TAA_High = 1,
    Nvidia_DLAA = 2,
    EAntiAliasingMode_MAX = 3,
}

---@enum EAsyncAssetLoadState
local EAsyncAssetLoadState = {
    ASSETLOAD_NOT_REQUESTED = 0,
    ASSETLOAD_IN_PROGRESS = 1,
    ASSETLOAD_COMPLETED = 2,
    ASSETLOAD_MAX_STATES = 3,
    ASSETLOAD_MAX = 4,
}

---@enum EAttackState
local EAttackState = {
    None = 0,
    AttackCombo1 = 1,
    AttackCombo2 = 2,
    AttackCombo3 = 3,
    AttackCombo4 = 4,
    AttackCombo5 = 5,
    AttackFinisher1 = 6,
    AttackFinisher2 = 7,
    AttackFinisher3 = 8,
    AttackAOESpell = 9,
    AttackAOEArrestoMomentum = 10,
    AttackAOEDepulso = 11,
    AttackAOEExpectoPatronum = 12,
    AttackAOEExpulso = 13,
    AttackAOEIncendio = 14,
    AttackAOELevioso = 15,
    AttackAOELumos = 16,
    AttackAOEReparo = 17,
    EAttackState_MAX = 18,
}

---@enum EAutoSaveReason
local EAutoSaveReason = {
    AUTO_SAVE_UNKNOWN = 0,
    AUTO_SAVE_MISSION = 1,
    AUTO_SAVE_TIMER = 2,
    AUTO_SAVE_ALWAYS = 3,
    AUTO_SAVE_GAME_MODE_START_PLAY = 4,
    AUTO_SAVE_INTRO = 5,
    AUTO_SAVE_BACKGROUNDED = 6,
    AUTO_SAVE_TEST = 7,
    AUTO_SAVE_MAX = 8,
}

---@enum EAvatarPresetType
local EAvatarPresetType = {
    EYEBROWCOLOR = 0,
    EYEBROWSHAPE = 1,
    EYECOLOR = 2,
    FACEMARKING0 = 3,
    FACEMARKING1 = 4,
    FACEMARKING2 = 5,
    FACEMARKING3 = 6,
    MAKEUP_LIP = 7,
    MAKEUP_EYELINER = 8,
    MAKEUP_EYESHADOW = 9,
    MAKEUP_BLUSH = 10,
    HAIRCOLOR = 11,
    HAIRSTYLE = 12,
    HEADSTYLE = 13,
    SKINCOLOR = 14,
    EAvatarPresetType_MAX = 15,
}

---@enum EBallisticTaskDestinationSource
local EBallisticTaskDestinationSource = {
    Stratchpad = 0,
    FromTarget = 1,
    ToTarget = 2,
    ToLoc = 3,
    ToParamLoc = 4,
    EBallisticTaskDestinationSource_MAX = 5,
}

---@enum EBannerPromoStatus
local EBannerPromoStatus = {
    NotReady = 0,
    Ready = 1,
    Unavailable = 2,
    EBannerPromoStatus_MAX = 3,
}

---@enum EBarrelRollDirection
local EBarrelRollDirection = {
    Left = 0,
    Right = 1,
    EBarrelRollDirection_MAX = 2,
}

---@enum EBaseCharFocusInterestPriority
local EBaseCharFocusInterestPriority = {
    StationBehavior = 0,
    CombatBehavior = 1,
    ScriptedBehavior = 2,
    EBaseCharFocusInterestPriority_MAX = 3,
}

---@enum EBasicLightType
local EBasicLightType = {
    Point = 0,
    Spot = 1,
    Rect = 2,
    EBasicLightType_MAX = 3,
}

---@enum EBasicMobilityMode
local EBasicMobilityMode = {
    Normal = 0,
    Crouching = 1,
    Stealth = 2,
    EBasicMobilityMode_MAX = 3,
}

---@enum EBeaconDisplayPriority
local EBeaconDisplayPriority = {
    BEACON_DISPLAY_PRIORITY_LOW = 0,
    BEACON_DISPLAY_PRIORITY_MEDIUM = 1,
    BEACON_DISPLAY_PRIORITY_HIGH = 2,
    BEACON_DISPLAY_PRIORITY_HIGHEST = 3,
    BEACON_DISPLAY_PRIORITY_MAX = 4,
}

---@enum EBeaconFlags
local EBeaconFlags = {
    BEACON_FLAG_NONE = 0,
    BEACON_FLAG_HIDEINACTIVE = 1,
    BEACON_FLAG_SHOWINWORLD = 2,
    BEACON_FLAG_FORCESTATIC = 4,
    BEACON_FLAG_FORCEINACTIVE = 8,
    BEACON_FLAG_ALWAYSCOMPASS = 16,
    BEACON_FLAG_HIDEDISTANCEONHUD = 32,
    BEACON_FLAG_DONTLOCKONHUD = 64,
    BEACON_FLAG_HIDEFROMMAP = 128,
    BEACON_FLAG_ALL = 255,
    BEACON_FLAG_MAX = 256,
}

---@enum EBeaconFunctionalTypes
local EBeaconFunctionalTypes = {
    BEACON_TYPE_STATIC = 0,
    BEACON_TYPE_DYNAMIC = 1,
    BEACON_TYPE_DISCOVERABLE = 2,
    BEACON_TYPE_ROAMING = 3,
    BEACON_TYPE_MAX = 4,
}

---@enum EBeaconState
local EBeaconState = {
    BEACONSTATE_NONE = 0,
    BEACONSTATE_HIDDEN_BY_FOG_OF_WAR = 1,
    BEACONSTATE_UNDISCOVERED_HIDDEN = 2,
    BEACONSTATE_UNDISCOVERED = 3,
    BEACONSTATE_DISCOVERED = 4,
    BEACONSTATE_DISCOVERED_INCOMPLETE = 5,
    BEACONSTATE_DISCOVERED_LOCKED = 6,
    BEACONSTATE_DISCOVERED_UNLOCKED = 7,
    BEACONSTATE_FAST_TRAVEL_LOCKED = 8,
    BEACONSTATE_FAST_TRAVEL_UNLOCKED = 9,
    BEACONSTATE_HANDLED_AT_RUNTIME = 10,
    BEACONSTATE_COMPLETED = 11,
    BEACONSTATE_MISSION_LEVEL_NOT_ENOUGH = 12,
    BEACONSTATE_VENDOR_ACTIVE = 13,
    BEACONSTATE_VENDOR_INACTIVE = 14,
    BEACONSTATE_ICON_STACK = 15,
    BEACONSTATE_MAX = 16,
}

---@enum EBeaconSubType
local EBeaconSubType = {
    BEACONSUBTYPE_NONE = 0,
    BEACONSUBTYPE_CHEST_DEFAULT = 1,
    BEACONSUBTYPE_CHEST_TRACKED = 2,
    BEACONSUBTYPE_CHEST_LOOTABLE = 3,
    BEACONSUBTYPE_BEASTDEN_DIRICAWL = 4,
    BEACONSUBTYPE_BEASTDEN_FWOOPER = 5,
    BEACONSUBTYPE_BEASTDEN_GIANTPURPLETOAD = 6,
    BEACONSUBTYPE_BEASTDEN_GRAPHORN = 7,
    BEACONSUBTYPE_BEASTDEN_HIPPOGRIFF = 8,
    BEACONSUBTYPE_BEASTDEN_JOBBERKNOLL = 9,
    BEACONSUBTYPE_BEASTDEN_KNEAZLE = 10,
    BEACONSUBTYPE_BEASTDEN_MOONCALF = 11,
    BEACONSUBTYPE_BEASTDEN_NIFFLER = 12,
    BEACONSUBTYPE_BEASTDEN_PUFFSKEIN = 13,
    BEACONSUBTYPE_BEASTDEN_THESTRAL = 14,
    BEACONSUBTYPE_BEASTDEN_UNICORN = 15,
    BEACONSUBTYPE_COMBATCHALLENGE_PLAYSTATION = 16,
    BEACONSUBTYPE_MAX = 17,
}

---@enum EBeaconType
local EBeaconType = {
    BEACONTYPE_NONE = 0,
    BEACONTYPE_HAMLET = 1,
    BEACONTYPE_HOGWARTS = 2,
    BEACONTYPE_HOGSMEADE = 3,
    BEACONTYPE_MAINMISSION = 4,
    BEACONTYPE_SIDEMISSION = 5,
    BEACONTYPE_MISSIONAREA = 6,
    BEACONTYPE_ACTIVEMISSION = 7,
    BEACONTYPE_MISSIONRELATIONSHIP = 8,
    BEACONTYPE_WAYMARKER = 9,
    BEACONTYPE_DUNGEON = 10,
    BEACONTYPE_DUNGEONEXIT = 11,
    BEACONTYPE_BANDITCAMPLARGE = 12,
    BEACONTYPE_BANDITCAMPMEDIUM = 13,
    BEACONTYPE_BANDITCAMPSMALL = 14,
    BEACONTYPE_BANDITCAMPEXSMALL = 15,
    BEACONTYPE_TENT = 16,
    BEACONTYPE_TREASUREVAULT = 17,
    BEACONTYPE_BEASTDEN = 18,
    BEACONTYPE_SPIDERDEN = 19,
    BEACONTYPE_TROLLDEN = 20,
    BEACONTYPE_MAGICALCREATURE = 21,
    BEACONTYPE_ENEMY = 22,
    BEACONTYPE_NAMEDENEMY = 23,
    BEACONTYPE_FINDLOCATION = 24,
    BEACONTYPE_FINDPLAYER = 25,
    BEACONTYPE_LOCATIONS = 26,
    BEACONTYPE_LOCATIONSHOGSMEADE = 27,
    BEACONTYPE_ITEMS = 28,
    BEACONTYPE_CHARACTER = 29,
    BEACONTYPE_FASTTRAVEL = 30,
    BEACONTYPE_FASTTRAVELHOGWARTS = 31,
    BEACONTYPE_FORAGABLE = 32,
    BEACONTYPE_GLADE = 33,
    BEACONTYPE_SPHINXPUZZLE = 34,
    BEACONTYPE_PERCEPTIONCONE = 35,
    BEACONTYPE_PLAYERMARKER = 36,
    BEACONTYPE_REGION = 37,
    BEACONTYPE_REGIONENTRANCE = 38,
    BEACONTYPE_REGIONHOGWARTS = 39,
    BEACONTYPE_ANCIENTMAGIC = 40,
    BEACONTYPE_ASTRONOMY = 41,
    BEACONTYPE_DEMIGUISE = 42,
    BEACONTYPE_RUIN = 43,
    BEACONTYPE_BOTHY = 44,
    BEACONTYPE_COMBATCHALLENGE = 45,
    BEACONTYPE_TREASURECHEST = 46,
    BEACONTYPE_TREASURECHEST_SMALL = 47,
    BEACONTYPE_ALOHOMORALOCK = 48,
    BEACONTYPE_KNOWLEDGEITEM = 49,
    BEACONTYPE_IGNORE = 50,
    BEACONTYPE_PLANT = 51,
    BEACONTYPE_COMPANION = 52,
    BEACONTYPE_LOCATED_ITEM = 53,
    BEACONTYPE_SUBREGION = 54,
    BEACONTYPE_HOGWARTS_FT_OVERRIDE = 55,
    BEACONTYPE_BROOMPLATFORM = 56,
    BEACONTYPE_BROOMRACERING = 57,
    BEACONTYPE_KNOWLEDGE_ENEMY = 58,
    BEACONTYPE_AUTHORITY_FIGURE = 59,
    BEACONTYPE_MISSIONASSIGNMENT = 60,
    BEACONTYPE_VENDOR = 61,
    BEACONTYPE_SPEECHBUBBLE = 62,
    BEACONTYPE_CONVERSATIONBUBBLE = 63,
    BEACONTYPE_DUGBOGDEN = 64,
    BEACONTYPE_INFERIDEN = 65,
    BEACONTYPE_WOLVESDEN = 66,
    BEACONTYPE_DEEK = 67,
    BEACONTYPE_HOGWARTS_EXIT = 68,
    BEACONTYPE_NAMEDENEMYLOCATION = 69,
    BEACONTYPE_BROOMRACE = 70,
    BEACONTYPE_HEDGEMAZE = 71,
    BEACONTYPE_BALLOONS = 72,
    BEACONTYPE_BUTTERFLIES = 73,
    BEACONTYPE_ROLLUP = 74,
    BEACONTYPE_LOSTPAGES = 75,
    BEACONTYPE_ICONSTACK = 76,
    BEACONTYPE_TRAVELVENDOR = 77,
    BEACONTYPE_INVALID = 78,
    BEACONTYPE_MAX = 79,
}

---@enum EBlockNavMeshOverride
local EBlockNavMeshOverride = {
    AllowOverride = 0,
    UseValueAsIs = 1,
    EBlockNavMeshOverride_MAX = 2,
}

---@enum EBlockTiming
local EBlockTiming = {
    Block_Normal = 0,
    Block_Perfect = 1,
    Block_MAX = 2,
}

---@enum EBoneTargetType
local EBoneTargetType = {
    None = 0,
    Default = 1,
    Biped = 2,
    Dugbog = 3,
    Spider = 4,
    Wolf = 5,
    Dragon = 6,
    EBoneTargetType_MAX = 7,
}

---@enum EBonySkeletonEvent
local EBonySkeletonEvent = {
    SkeletonVisible = 0,
    NonSkeletonHidden = 1,
    EBonySkeletonEvent_MAX = 2,
}

---@enum EBoolClothInteractorValueType
local EBoolClothInteractorValueType = {
    DEFAULT = 0,
    SET = 1,
    EBoolClothInteractorValueType_MAX = 2,
}

---@enum EBool_PlayerHouse
local EBool_PlayerHouse = {
    Gryffindor = 0,
    Hufflepuff = 1,
    Ravenclaw = 2,
    Slytherin = 3,
    EBool_MAX = 4,
}

---@enum EBossStates
local EBossStates = {
    BS_None = 0,
    BS_Phase1 = 1,
    BS_Phase2 = 2,
    BS_Phase3 = 3,
    BS_Defeated = 4,
    BS_Victory = 5,
    BS_Finished = 6,
    BS_MAX = 7,
}

---@enum EBreakableState
local EBreakableState = {
    Inactive = 0,
    Unbroken = 1,
    Broken = 2,
    EBreakableState_MAX = 3,
}

---@enum EBrewingState
local EBrewingState = {
    None = 0,
    Brewing = 1,
    Brewed = 2,
    EBrewingState_MAX = 3,
}

---@enum EBroomDismountType
local EBroomDismountType = {
    DiveDismount = 0,
    GroundDismount = 1,
    InstantDismount = 2,
    EBroomDismountType_MAX = 3,
}

---@enum EBroomEnemyState
local EBroomEnemyState = {
    None = 0,
    Follow = 1,
    Lead = 2,
    LeadChangePosition = 3,
    Wait = 4,
    EBroomEnemyState_MAX = 5,
}

---@enum EBroomMountErrorMessages
local EBroomMountErrorMessages = {
    Error_BroomDisabled = 0,
    Error_InsideNoMountingZone = 1,
    Error_InsideNoMountingArea = 2,
    Error_SpeedBoostUnavailable = 3,
    Error_SpeedBoostOnCooldown = 4,
    Error_InsufficientSpawnArea = 5,
    Error_MAX = 6,
}

---@enum EBroomMountType
local EBroomMountType = {
    FromIdleMount = 0,
    FromWalkMount = 1,
    FromJogMount = 2,
    FromSwimming = 3,
    FromFalling = 4,
    InstantMount = 5,
    EBroomMountType_MAX = 6,
}

---@enum EBroomNoFlyControl
local EBroomNoFlyControl = {
    NOFLY_Default = 0,
    NOFLY_PUSH = 1,
    NOFLY_180 = 2,
    NOFLY_TELEPORT = 3,
    NOFLY_SLOWDOWN = 4,
    NOFLY_HUG = 5,
    NOFLY_NONE = 6,
    NOFLY_COUNT = 7,
    NOFLY_MAX = 8,
}

---@enum EBulletinBoardType
local EBulletinBoardType = {
    BULLETIN_BOARD_TYPE_HOGWARTS = 0,
    BULLETIN_BOARD_TYPE_HOGSMEADE = 1,
    BULLETIN_BOARD_TYPE_ROOKWOOD_THIEF = 2,
    BULLETIN_BOARD_TYPE_ROOKWOOD_POACHER = 3,
    BULLETIN_BOARD_TYPE_MAX = 4,
}

---@enum ECLothInteractorValueType
local ECLothInteractorValueType = {
    DEFAULT = 0,
    SET = 1,
    SCALE = 2,
    OFFSET = 3,
    ECLothInteractorValueType_MAX = 4,
}

---@enum ECWCState
local ECWCState = {
    None = 0,
    CWCStart = 1,
    CWCUpdated = 2,
    ECWCState_MAX = 3,
}

---@enum ECabbage_Mobility
local ECabbage_Mobility = {
    Spawn = 0,
    Attack = 1,
    Bounce = 2,
    Idle = 3,
    Slide = 4,
    ECabbage_MAX = 5,
}

---@enum ECameraStackAnimationSelection
local ECameraStackAnimationSelection = {
    Random = 0,
    ClosestToCameraRotation = 1,
    LeftOrRight = 2,
    ECameraStackAnimationSelection_MAX = 3,
}

---@enum ECaptureState
local ECaptureState = {
    None = 0,
    PreStart = 1,
    Progressing = 2,
    Succeeding = 3,
    Succeeded = 4,
    Cancelling = 5,
    Cancelled = 6,
    Interrupted = 7,
    Failing = 8,
    ECaptureState_MAX = 9,
}

---@enum ECapturedFrameStat
local ECapturedFrameStat = {
    Frame = 0,
    Game = 1,
    Render = 2,
    Gpu = 3,
    Cpu = 4,
    Count = 5,
    ECapturedFrameStat_MAX = 6,
}

---@enum ECategoryGenerationType
local ECategoryGenerationType = {
    Normal = 0,
    RelativeToPlayerLevel = 1,
    ECategoryGenerationType_MAX = 2,
}

---@enum ECharacterDeathType
local ECharacterDeathType = {
    Default = 0,
    SplatteringHighFallDeath = 1,
    Spell = 2,
    Custom = 3,
    ECharacterDeathType_MAX = 4,
}

---@enum ECharacterOptionsCollisionResponse
local ECharacterOptionsCollisionResponse = {
    DoNotSetCollisionResponse = 0,
    Ignore = 1,
    Block = 2,
    Overlap = 3,
    ECharacterOptionsCollisionResponse_MAX = 4,
}

---@enum ECharacterShutdownPriority
local ECharacterShutdownPriority = {
    Lowest = 0,
    PreventStrike = 1,
    InStation = 2,
    NPCOptimization = 3,
    NPCTeleport = 4,
    InCinematic = 5,
    InFinisher = 6,
    SpecialClearAndPrevent = 7,
    SpecialSpawning = 8,
    NonRender = 9,
    FleshCache = 10,
    ECharacterShutdownPriority_MAX = 11,
}

---@enum ECharacterUROPriority
local ECharacterUROPriority = {
    Lowest = 0,
    Lower = 1,
    High = 2,
    Highest = 3,
    Reaction = 4,
    Cinematic = 5,
    ECharacterUROPriority_MAX = 6,
}

---@enum ECirclingDirection
local ECirclingDirection = {
    Clockwise = 0,
    Anticlockwise = 1,
    Random = 2,
    Closest = 3,
    ECirclingDirection_MAX = 4,
}

---@enum ECollisionResolutionTaskType
local ECollisionResolutionTaskType = {
    PushCharacters = 0,
    ECollisionResolutionTaskType_MAX = 1,
}

---@enum ECollisionResponsePriority
local ECollisionResponsePriority = {
    Normal = 0,
    InStation = 1,
    CollisionResponse = 2,
    PerformTask = 3,
    Blueprint = 4,
    Cinematic = 5,
    Hidden = 6,
    ECollisionResponsePriority_MAX = 7,
}

---@enum ECombatAdditivePriority
local ECombatAdditivePriority = {
    None = 0,
    LowestPriority = 1,
    UpperBodyIdle = 2,
    FullBodyUsage = 3,
    UpperBodyUsage = 4,
    Cinematic = 5,
    HighestPriority = 6,
    ECombatAdditivePriority_MAX = 7,
}

---@enum ECombatAdditiveState
local ECombatAdditiveState = {
    None = 0,
    Inactive = 1,
    Active = 2,
    ECombatAdditiveState_MAX = 3,
}

---@enum ECombatParryType
local ECombatParryType = {
    CPT_Parry = 0,
    CPT_Dodge = 1,
    CPT_MAX = 2,
}

---@enum EComboType
local EComboType = {
    None = 0,
    Hit_Light = 1,
    Hit_Parry = 2,
    Hit_Heavy = 3,
    Hit_Heavy_2_Plus = 4,
    Hit_Depulso_Oppugno = 5,
    Hit_SendTarget = 6,
    Hit_Finisher = 7,
    ProtegoImpact = 8,
    EComboType_MAX = 9,
}

---@enum ECompanionVO
local ECompanionVO = {
    JoinAvatar = 0,
    FollowAvatarAgain = 1,
    WaitforAvatar = 2,
    AvatarDismisses = 3,
    HealsPlayer = 4,
    PlayerDying = 5,
    PlayerHealsCompanion = 6,
    ScheduleConflictDismiss = 7,
    Reject = 8,
    Stealth = 9,
    Dying = 10,
    PlayerHit = 11,
    PlayerHitDismissWarning = 12,
    Num = 13,
    ECompanionVO_MAX = 14,
}

---@enum EConjurationContext
local EConjurationContext = {
    None = 0,
    Sanctuary = 1,
    Biome_Coastal = 2,
    Biome_Forest = 3,
    Biome_Grassland = 4,
    Biome_Swamp = 5,
    Biome_Tundra = 6,
    DevCustomRoom = 7,
    EConjurationContext_MAX = 8,
}

---@enum EConjurationSpawnState
local EConjurationSpawnState = {
    None = 0,
    Spawned = 1,
    SpawnIn = 2,
    SpawnOut = 3,
    EConjurationSpawnState_MAX = 4,
}

---@enum EContainerSelectionType
local EContainerSelectionType = {
    RandomByWeight = 0,
    InOrderByWeight = 1,
    EContainerSelectionType_MAX = 2,
}

---@enum EContextTaskOperationType
local EContextTaskOperationType = {
    SetAndClear = 0,
    ClearAndSet = 1,
    Set = 2,
    Clear = 3,
    EContextTaskOperationType_MAX = 4,
}

---@enum EControlBehaviors
local EControlBehaviors = {
    None = 0,
    Cinematic = 1,
    Station = 2,
    EControlBehaviors_MAX = 3,
}

---@enum EConversationCameraFilterType
local EConversationCameraFilterType = {
    Disable = 0,
    FirstConversationCameraShot = 1,
    LastConversationCameraShot = 2,
    EndingCameraShotWithChoices = 3,
    EndingCameraShotBeforeEmbedded = 4,
    CameraShotDuringPause = 5,
    AllCameraShots = 6,
    EConversationCameraFilterType_MAX = 7,
}

---@enum EConversationImport
local EConversationImport = {
    ImportFromArticy = 0,
    DoNotImportFromArticy = 1,
    EConversationImport_MAX = 2,
}

---@enum EConversationTransformType
local EConversationTransformType = {
    Initial = 0,
    InitialAvatarRoot = 1,
    FinalInteractionActorRoot = 2,
    Final = 3,
    EConversationTransformType_MAX = 4,
}

---@enum EConversationType
local EConversationType = {
    Vendor = 0,
    Greeting = 1,
    Critical = 2,
    VendorUpdate = 3,
    Update = 4,
    Standard = 5,
    VO = 6,
    EConversationType_MAX = 7,
}

---@enum ECreatorUpdateState
local ECreatorUpdateState = {
    UpdateSuccess = 0,
    UpdateFail = 1,
    UpdateCurrent = 2,
    UpdateDBFail = 3,
    ECreatorUpdateState_MAX = 4,
}

---@enum ECreatureAIInitialState
local ECreatureAIInitialState = {
    Auto = 0,
    Idle = 1,
    Stationary = 2,
    FollowPath = 3,
    RelaxNearSpawnLocation = 4,
    SpawnOnDen = 5,
    PostGrowUp = 6,
    InCage = 7,
    StationaryGrazing = 8,
    ECreatureAIInitialState_MAX = 9,
}

---@enum ECreatureAIState
local ECreatureAIState = {
    UtilitySelection = 0,
    SpawnOnDen = 1,
    FollowActor = 2,
    PostGrowUp = 3,
    Dead = 4,
    Wander_DEPRECATED = 5,
    NearDeathKneeling = 6,
    InCage = 7,
    CustomAbility = 8,
    Mounted = 9,
    Cinematic = 10,
    ScheduledEntityMode = 11,
    ECreatureAIState_MAX = 12,
}

---@enum ECreatureCageAnimation
local ECreatureCageAnimation = {
    Idle = 0,
    Alert = 1,
    Wounded = 2,
    ECreatureCageAnimation_MAX = 3,
}

---@enum ECreatureCombatDebugBehaviorType
local ECreatureCombatDebugBehaviorType = {
    None = 0,
    Exclude = 1,
    Forced = 2,
    ECreatureCombatDebugBehaviorType_MAX = 3,
}

---@enum ECreatureCombatDebugDisplayType
local ECreatureCombatDebugDisplayType = {
    None = 0,
    WhenActive = 1,
    Always = 2,
    ECreatureCombatDebugDisplayType_MAX = 3,
}

---@enum ECreatureDataProviderValueRangeType
local ECreatureDataProviderValueRangeType = {
    Min = 0,
    Max = 1,
    Random = 2,
}

---@enum ECreatureFeedFloatingState
local ECreatureFeedFloatingState = {
    Static = 0,
    FreeFloating = 1,
    FloatingToTargetTransform = 2,
    AttachedToTransform = 3,
    ECreatureFeedFloatingState_MAX = 4,
}

---@enum ECreatureFeedState
local ECreatureFeedState = {
    Inactive = 0,
    Thrown = 1,
    MoveToCreature = 2,
    Eating = 3,
    Vanishing = 4,
    ECreatureFeedState_MAX = 5,
}

---@enum ECreatureFeedingStationSlotVisualState
local ECreatureFeedingStationSlotVisualState = {
    Empty = 0,
    Filling = 1,
    Full = 2,
    Emptying = 3,
    Dispensing = 4,
    ECreatureFeedingStationSlotVisualState_MAX = 5,
}

---@enum ECreatureFleeFlyingOption
local ECreatureFleeFlyingOption = {
    DontFly = 0,
    TakeoffImmediately = 1,
    TakeoffFromSprint = 2,
    ECreatureFleeFlyingOption_MAX = 3,
}

---@enum ECreatureFlightState
local ECreatureFlightState = {
    NotFlying = 0,
    Flying = 1,
    ECreatureFlightState_MAX = 2,
}

---@enum ECreatureGroupCoordinationTagTypesToRemove
local ECreatureGroupCoordinationTagTypesToRemove = {
    RemoveActors = 0,
    RemoveLocations = 1,
    ECreatureGroupCoordinationTagTypesToRemove_MAX = 2,
}

---@enum ECreatureIdleOverrideState
local ECreatureIdleOverrideState = {
    None = 0,
    Stationary = 1,
    FollowPath = 2,
    RelaxNearSpawnLocation = 3,
    StationaryGrazing = 4,
    ECreatureIdleOverrideState_MAX = 5,
}

---@enum ECreatureImpactSize
local ECreatureImpactSize = {
    Large = 0,
    Medium = 1,
    Small = 2,
    Num = 3,
    ECreatureImpactSize_MAX = 4,
}

---@enum ECreatureInteraction
local ECreatureInteraction = {
    None = 0,
    Pet = 1,
    Play = 2,
    ECreatureInteraction_MAX = 3,
}

---@enum ECreatureLandingType
local ECreatureLandingType = {
    None = 0,
    Standing = 1,
    Gallop = 2,
    Trot = 3,
    FromHover = 4,
    Num = 5,
    ECreatureLandingType_MAX = 6,
}

---@enum ECreatureLookAtBehaviorMode
local ECreatureLookAtBehaviorMode = {
    Disabled = 0,
    Perception = 1,
    LookAround = 2,
    ForcedTarget = 3,
    ECreatureLookAtBehaviorMode_MAX = 4,
}

---@enum ECreatureMountErrorMessages
local ECreatureMountErrorMessages = {
    Error_GraphornDisabled = 0,
    Error_HippogriffDisabled = 1,
    Error_TakeOffUnavailable = 2,
    Error_ChargeUnavailable = 3,
    Error_ChargeOnCooldown = 4,
    Error_InsufficientSpawnArea = 5,
    Error_MountDeathCooldown = 6,
    Error_InsideNoTakeOffZone = 7,
    Error_InsideNoLandZone = 8,
    Error_InsideNoMountingZone = 9,
    Error_InsideNoMountingArea = 10,
    Error_MAX = 11,
}

---@enum ECreatureMoveToSpeedSetting
local ECreatureMoveToSpeedSetting = {
    SetSpeed = 0,
    KeepPreviousSpeed = 1,
    DistanceAdaptiveSpeed = 2,
    ECreatureMoveToSpeedSetting_MAX = 3,
}

---@enum ECreatureMovementSpeed
local ECreatureMovementSpeed = {
    Stop = 0,
    Walk = 1,
    Jog = 2,
    Sprint = 3,
    Num = 4,
    ECreatureMovementSpeed_MAX = 5,
}

---@enum ECreatureNavLinkType
local ECreatureNavLinkType = {
    None = 0,
    Jump = 1,
    ECreatureNavLinkType_MAX = 2,
}

---@enum ECreatureNavMeshTurnDirection
local ECreatureNavMeshTurnDirection = {
    Left = 0,
    Right = 1,
    ECreatureNavMeshTurnDirection_MAX = 2,
}

---@enum ECreatureNeed
local ECreatureNeed = {
    Fed = 0,
    InteractedWith = 1,
    Count = 2,
    ECreatureNeed_MAX = 3,
}

---@enum ECreaturePathEndMode
local ECreaturePathEndMode = {
    Stop = 0,
    KeepSpeed = 1,
    ECreaturePathEndMode_MAX = 2,
}

---@enum ECreaturePerceptionVolumeType
local ECreaturePerceptionVolumeType = {
    AlwaysPerceiveInside = 0,
    KeepPerceptionInside = 1,
    ECreaturePerceptionVolumeType_MAX = 2,
}

---@enum ECreaturePettingBrushFloatingState
local ECreaturePettingBrushFloatingState = {
    FreeFloating = 0,
    FloatingToTargetTransform = 1,
    AttachedToTransform = 2,
    ECreaturePettingBrushFloatingState_MAX = 3,
}

---@enum ECreaturePregnancyState
local ECreaturePregnancyState = {
    NotPregnant = 0,
    Gestation = 1,
    Incubation = 2,
    ECreaturePregnancyState_MAX = 3,
}

---@enum ECreatureStance
local ECreatureStance = {
    Standing = 0,
    Sitting = 1,
    LyingDown = 2,
    Sleeping = 3,
    Flying = 4,
    ECreatureStance_MAX = 5,
}

---@enum ECreatureStartingIdleBehavior
local ECreatureStartingIdleBehavior = {
    Explore = 0,
    Forage = 1,
    Rest = 2,
    ECreatureStartingIdleBehavior_MAX = 3,
}

---@enum ECreatureStoppingMode
local ECreatureStoppingMode = {
    Standard = 0,
    Rapid = 1,
    Num = 2,
    ECreatureStoppingMode_MAX = 3,
}

---@enum ECreatureTakeoffType
local ECreatureTakeoffType = {
    None = 0,
    Standing = 1,
    Gallop = 2,
    ECreatureTakeoffType_MAX = 3,
}

---@enum ECreatureTargetPredictionLookAheadOption
local ECreatureTargetPredictionLookAheadOption = {
    FromServiceActivation = 0,
    Fixed = 1,
    ECreatureTargetPredictionLookAheadOption_MAX = 2,
}

---@enum ECreatureTargetPredictionStraightLineReachableOption
local ECreatureTargetPredictionStraightLineReachableOption = {
    FromCurrentLocation = 0,
    FromInitialLocation = 1,
    ECreatureTargetPredictionStraightLineReachableOption_MAX = 2,
}

---@enum ECreditEntryType
local ECreditEntryType = {
    Header1 = 0,
    Header2 = 1,
    Header3 = 2,
    Header4 = 3,
    Line = 4,
    Multiline = 5,
    Image = 6,
    Spacer = 7,
    ECreditEntryType_MAX = 8,
}

---@enum ECruiseSpeed
local ECruiseSpeed = {
    FastestMotion = 0,
    SlowestMotion = 1,
    AverageSpeed = 2,
    SpecifiedCruisingSpeed = 3,
    ECruiseSpeed_MAX = 4,
}

---@enum ECursorControlTypes
local ECursorControlTypes = {
    CURSOR_CONTROL_AUTO = 0,
    CURSOR_CONTROL_GAMEPAD = 1,
    CURSOR_CONTROL_MOUSE = 2,
    CURSOR_CONTROL_MAX = 3,
}

---@enum EDecalOrientation
local EDecalOrientation = {
    Random = 0,
    Zero = 1,
    InstigatorToTarget = 2,
    TargetToInstigator = 3,
    EDecalOrientation_MAX = 4,
}

---@enum EDeflectionType
local EDeflectionType = {
    Deflect_Block = 0,
    Deflect_Back = 1,
    Deflect_Object = 2,
    Deflect_Enemy = 3,
    Deflect_Random = 4,
    Deflect_MAX = 5,
}

---@enum EDesiredDeltaOperator
local EDesiredDeltaOperator = {
    And = 0,
    Or = 1,
    StrafeRules = 2,
    EDesiredDeltaOperator_MAX = 3,
}

---@enum EDesiredDeltaSourceDirection
local EDesiredDeltaSourceDirection = {
    FacingDirection = 0,
    DesiredDirection = 1,
    Facing = 2,
    LookAt = 3,
    AimAt = 4,
    StrafeDirection = 5,
    VelocityDirection = 6,
    EDesiredDeltaSourceDirection_MAX = 7,
}

---@enum EDesiredDeltaTargetTracker
local EDesiredDeltaTargetTracker = {
    DesiredDirection = 0,
    LastDesiredDirection = 1,
    Facing = 2,
    LookAt = 3,
    AimAt = 4,
    StrafeDirection = 5,
    VelocityDirection = 6,
    BufferedDesiredDirection = 7,
    EDesiredDeltaTargetTracker_MAX = 8,
}

---@enum EDevilsSnareState
local EDevilsSnareState = {
    Hidden = 0,
    Idle = 1,
    Recoiling = 2,
    Regrowing = 3,
    Grabbing = 4,
    EDevilsSnareState_MAX = 5,
}

---@enum EDifficulty
local EDifficulty = {
    Story = 0,
    Easy = 1,
    Medium = 2,
    Hard = 3,
    EDifficulty_MAX = 4,
}

---@enum EDifficultyScale_Type
local EDifficultyScale_Type = {
    None = 0,
    TicketCooldownAdjustment = 1,
    DamageAdjustment = 2,
    HealthAdjustment = 3,
    ParryDodgeAdjustment = 4,
    PerfectParryAdjustment = 5,
    ProtegoDeflectCount = 6,
    ProtegoDecayRate = 7,
    ProtegoDamageAdjustment = 8,
    ProtegoCooldownTime = 9,
    EDifficultyScale_MAX = 10,
}

---@enum EDirectionType
local EDirectionType = {
    ImpactDirection = 0,
    CalculatedWorldDirection = 1,
    EDirectionType_MAX = 2,
}

---@enum EDisbandPriority
local EDisbandPriority = {
    LowestPriority = 0,
    PathUpdatePriority = 1,
    JoinFailurePriority = 2,
    ForcedRemovePriority = 3,
    RemoveSplinePriority = 4,
    EDisbandPriority_MAX = 5,
}

---@enum EDisciplineType
local EDisciplineType = {
    NONE = 0,
    Arithmancy = 1,
    Astronomy = 2,
    Beasts = 3,
    Charms = 4,
    DarkArts = 5,
    DefenceAgainstTheDarkArts = 6,
    Divination = 7,
    Flying = 8,
    Herbology = 9,
    HistoryOfMagic = 10,
    Infiltrator = 11,
    Potions = 12,
    Socialite = 13,
    Transfiguration = 14,
    ALL_DISCIPLINES = 15,
    EDisciplineType_MAX = 16,
}

---@enum EDisillusionmentAwareness
local EDisillusionmentAwareness = {
    Normal = 0,
    Heightened = 1,
    FullyAware = 2,
    EDisillusionmentAwareness_MAX = 3,
}

---@enum EDistTypeToTarget
local EDistTypeToTarget = {
    None = 0,
    Attack = 1,
    Pressure = 2,
    Far = 3,
    Count = 4,
    EDistTypeToTarget_MAX = 5,
}

---@enum EDodgeState
local EDodgeState = {
    None = 0,
    DodgeForward = 1,
    DodgeLeft = 2,
    DodgeRight = 3,
    DodgeBackward = 4,
    EDodgeState_MAX = 5,
}

---@enum EDoorCurveAdjustment
local EDoorCurveAdjustment = {
    NoAdjustment = 0,
    Invert = 1,
    Reverse = 2,
    EDoorCurveAdjustment_MAX = 3,
}

---@enum EDoorFastTravelType
local EDoorFastTravelType = {
    NotUsingFastTravel = 0,
    TravelToOtherSideOfDoor = 1,
    TravelToNamedLocation = 2,
    TravelToDifferentNamedLocationBasedOnSide = 3,
    EDoorFastTravelType_MAX = 4,
}

---@enum EDoorLockLevel
local EDoorLockLevel = {
    Unlocked = 0,
    Level_1 = 1,
    Level_2 = 2,
    Level_3 = 3,
    NeedsKeyToUnlock = 4,
    ChildLock = 5,
    EDoorLockLevel_MAX = 6,
}

---@enum EDoorState
local EDoorState = {
    Locked = 0,
    Unlocked = 1,
    Open = 2,
    OpenEvenIfStreaming = 3,
    Sealed = 4,
    EDoorState_MAX = 5,
}

---@enum EDuelTechniqueCategory
local EDuelTechniqueCategory = {
    CommonMechanicMastery = 0,
    EnvironmentalOpportunities = 1,
    SpecialEnemyOpportunities = 2,
    SpecialToolSpellEncouragement = 3,
    SpellCombos = 4,
    TalentRequired = 5,
    EDuelTechniqueCategory_MAX = 6,
}

---@enum EDuelTechniqueDepulsoActorType
local EDuelTechniqueDepulsoActorType = {
    Any = 0,
    EnvironmentObstacles = 1,
    Enemies = 2,
    EDuelTechniqueDepulsoActorType_MAX = 3,
}

---@enum EDuelTechniqueDifficulty
local EDuelTechniqueDifficulty = {
    Easy = 0,
    Medium = 1,
    Hard = 2,
    EDuelTechniqueDifficulty_MAX = 3,
}

---@enum EDuelTechniqueFirstState
local EDuelTechniqueFirstState = {
    None = 0,
    Frozen = 1,
    OnFire = 2,
    InAir = 3,
    Transformed = 4,
    EDuelTechniqueFirstState_MAX = 5,
}

---@enum EDuelTechniqueRequirementFunction
local EDuelTechniqueRequirementFunction = {
    All = 0,
    AnyOne = 1,
    AnyTwo = 2,
    FirstPlusAnyOne = 3,
    EDuelTechniqueRequirementFunction_MAX = 4,
}

---@enum EDuelTechniqueRules
local EDuelTechniqueRules = {
    ListEncounterRule = 0,
    IncompleteRule = 1,
    NumTimesSeenRule = 2,
    TechniqueWeightRule = 3,
    DifficultyRule = 4,
    SpellCategoryRule = 5,
    ItemRule = 6,
    EnvironmentObstacleRule = 7,
    DTCategoriesRule = 8,
    EquippedSpellsRule = 9,
    EDuelTechniqueRules_MAX = 10,
}

---@enum EDuelTechniqueSubtype
local EDuelTechniqueSubtype = {
    Damage = 0,
    Reaction = 1,
    Depulso = 2,
    TimedEncounter = 3,
    Combo = 4,
    CustomEvent = 5,
    KillAllEnemies = 6,
    Deflect = 7,
    Oppugno = 8,
    SpellEffect = 9,
    TimedJuggle = 10,
    ComboCount = 11,
    SpellEffectMultiple = 12,
    ImperiusKill = 13,
    NoHealthItem = 14,
    EDuelTechniqueSubtype_MAX = 15,
}

---@enum EDynamicObjectLoadState
local EDynamicObjectLoadState = {
    None = 0,
    Loading = 1,
    Loaded = 2,
    Unloaded = 3,
    NotInRegistry = 4,
    NotInAssetMap = 5,
    EDynamicObjectLoadState_MAX = 6,
}

---@enum EDynamicObjectSpawnerState
local EDynamicObjectSpawnerState = {
    Inactive = 0,
    Active = 1,
    Spawning = 2,
    Dormant = 3,
    EDynamicObjectSpawnerState_MAX = 4,
}

---@enum EDynamicObjectVolumeDiscoveryType
local EDynamicObjectVolumeDiscoveryType = {
    Default = 0,
    ActionDOV = 1,
    EDynamicObjectVolumeDiscoveryType_MAX = 2,
}

---@enum EDynamicObjectVolumeSpawnDistributionType
local EDynamicObjectVolumeSpawnDistributionType = {
    Uniform = 0,
    UniformWithShuffle = 1,
    VolumeDistribution = 2,
    VolumeDistributionWithShuffle = 3,
    EDynamicObjectVolumeSpawnDistributionType_MAX = 4,
}

---@enum EDynamicObjectVolumeSpawnerState
local EDynamicObjectVolumeSpawnerState = {
    Inactive = 0,
    GatheringData = 1,
    Loading = 2,
    Active = 3,
    Spawning = 4,
    Culling = 5,
    Dormant = 6,
    EDynamicObjectVolumeSpawnerState_MAX = 7,
}

---@enum EDynamicObjectVolumeState
local EDynamicObjectVolumeState = {
    Inactive = 0,
    Active = 1,
    EDynamicObjectVolumeState_MAX = 2,
}

---@enum EDynamicObstacleShape
local EDynamicObstacleShape = {
    SHAPE_NONE = 0,
    SHAPE_BOX = 1,
    SHAPE_CAPSULE = 2,
    SHAPE_SPHERE = 3,
    SHAPE_MAX = 4,
}

---@enum EEEnemyAISizeCategory
local EEEnemyAISizeCategory = {
    None = 0,
    Tiny = 1,
    Small = 2,
    Medium = 3,
    Large = 4,
    Huge = 5,
    Gigantic = 6,
    EEEnemyAISizeCategory_MAX = 7,
}

---@enum EEasingFunction
local EEasingFunction = {
    EF_None = 0,
    EF_Back_In = 1,
    EF_Back_Out = 2,
    EF_Back_InOut = 3,
    EF_Bounce_In = 4,
    EF_Bounce_Out = 5,
    EF_Bounce_InOut = 6,
    EF_Circ_In = 7,
    EF_Circ_Out = 8,
    EF_Circ_InOut = 9,
    EF_Cubic_In = 10,
    EF_Cubic_Out = 11,
    EF_Cubic_InOut = 12,
    EF_Elastic_In = 13,
    EF_Elastic_Out = 14,
    EF_Elastic_InOut = 15,
    EF_Expo_In = 16,
    EF_Expo_Out = 17,
    EF_Expo_InOut = 18,
    EF_Linear_In = 19,
    EF_Linear_Out = 20,
    EF_Linear_InOut = 21,
    EF_Quad_In = 22,
    EF_Quad_Out = 23,
    EF_Quad_InOut = 24,
    EF_Quart_In = 25,
    EF_Quart_Out = 26,
    EF_Quart_InOut = 27,
    EF_Quint_In = 28,
    EF_Quint_Out = 29,
    EF_Quint_InOut = 30,
    EF_MAX = 31,
}

---@enum EEdgeState
local EEdgeState = {
    None = 0,
    FirmlyOnGround = 1,
    EdgeBlocked = 2,
    SlightlyOverEdge = 3,
    FullyPastEdge = 4,
    MovingBackToEdge = 5,
    EEdgeState_MAX = 6,
}

---@enum EEmberTrickAxis
local EEmberTrickAxis = {
    XAxis = 0,
    YAxis = 1,
    ZAxis = 2,
    EEmberTrickAxis_MAX = 3,
}

---@enum EEmberTrickRotation
local EEmberTrickRotation = {
    Yaw = 0,
    Pitch = 1,
    Roll = 2,
    EEmberTrickRotation_MAX = 3,
}

---@enum EEmissiveAdaptationOverrideState
local EEmissiveAdaptationOverrideState = {
    Begin = 0,
    BlendIn = 1,
    One = 2,
    BlendOut = 3,
    Complete = 4,
    EEmissiveAdaptationOverrideState_MAX = 5,
}

---@enum EEncounterDuelTechniqueOverrideType
local EEncounterDuelTechniqueOverrideType = {
    AlwaysSelectIfValid = 0,
    AlwaysSelectEvenIfInvalid = 1,
    PreferStronglyToSelect = 2,
    PreferLooselyToSelect = 3,
    PreferLooselyToAvoid = 4,
    PreferStronglyToAvoid = 5,
    NeverSelect = 6,
    EEncounterDuelTechniqueOverrideType_MAX = 7,
}

---@enum EEncounterEndReason
local EEncounterEndReason = {
    NoCombatVolume_NoAggro = 0,
    CombatVolume_Escaped = 1,
    CombatVolume_Completed = 2,
    EEncounterEndReason_MAX = 3,
}

---@enum EEnemyAIAction
local EEnemyAIAction = {
    None = 0,
    BecomeAware = 1,
    LoseAware = 2,
    LosingTarget = 3,
    DEPRECATED_SeekingWeapon = 4,
    Lumos = 5,
    StoreActiveWeapon = 6,
    ActivateRequiredWeapon = 7,
    ActivateDeferredRequiredWeapon = 8,
    Spawn = 9,
    Dodge = 10,
    DodgeExecute = 11,
    ActivateApperate_DEPRECATED = 12,
    ApperateReappear_DEPRECATED = 13,
    PickupWeapon = 14,
    RespawnWeapon = 15,
    React = 16,
    Dying = 17,
    Dead = 18,
    Destroy = 19,
    Taunt = 20,
    TauntAttack = 21,
    SpellReact = 22,
    FaceTarget = 23,
    FaceLastKnownTarget = 24,
    FaceLoc = 25,
    FaceActor = 26,
    Shuffle = 27,
    Attack = 28,
    AttackStoreWeapon = 29,
    FleeExit = 30,
    Scared = 31,
    FaceWeapon = 32,
    FaceEventLoc = 33,
    Jump = 34,
    Eat_DEPRECATED = 35,
    NurtureInteract_DEPRECATED = 36,
    GameEvent = 37,
    ScheduledEntity = 38,
    Climb = 39,
    TauntDeath = 40,
    Protego = 41,
    SecondaryAttack = 42,
    MoveStop = 43,
    WarnAway = 44,
    ClimbLadder = 45,
    IdleBreak = 46,
    BecomeAlert = 47,
    LoseAlert = 48,
    AlertInvestigate = 49,
    AttachWeapon = 50,
    DetachWeapon = 51,
    HealAttack = 52,
    ReparoAttack_Deprecated = 53,
    ApparateAttack = 54,
    Apparate = 55,
    FlitToLoc_DEPRECATED = 56,
    Disillusionment = 57,
    Vault = 58,
    SidekickAttack = 59,
    RespawnAndAcquireWeapon = 60,
    Flourish = 61,
    ProtegoStart = 62,
    Flying = 63,
    StartDrained = 64,
    Drained = 65,
    StopDrained = 66,
    CustomSpell = 67,
    SubAttackWait = 68,
    SubAttackDesync = 69,
    SubAttackPre = 70,
    SubAttackAttack = 71,
    AlertWait = 72,
    ActivateStoredWeapon = 73,
    WanderIdle = 74,
    AlertLook = 75,
    SubAttackAttackSplit = 76,
    AlertFace = 77,
    AlertIdle = 78,
    SwimToShore = 79,
    Outside = 80,
    TooCloseNPC = 81,
    JumpSpline = 82,
    JumpSplineStart = 83,
    JumpSplineLand = 84,
    Block = 85,
    SubAttackAttackCounter = 86,
    SubAttackAttackApparate = 87,
    SubAttackApparateCounter = 88,
    WaitForRelease = 89,
    PreMoveStart = 90,
    BackOnNav = 91,
    ShuffleStart = 92,
    ActivateHiddenWeapon = 93,
    RecoverWeapon = 94,
    InvestigateStart = 95,
    InvestigateMove = 96,
    InvestigateIdle = 97,
    InvestigateStop = 98,
    SpellEffectStart = 99,
    SpellEffectStop = 100,
    ChargeStart = 101,
    AwareTurnAround = 102,
    AwarePause = 103,
    Count = 104,
    EEnemyAIAction_MAX = 105,
}

---@enum EEnemyAIActionDoneReason
local EEnemyAIActionDoneReason = {
    Stop = 0,
    Abort = 1,
    EEnemyAIActionDoneReason_MAX = 2,
}

---@enum EEnemyAIAnimState
local EEnemyAIAnimState = {
    Idle = 0,
    IdleReady = 1,
    Moving = 2,
    Spawn = 3,
    Attack = 4,
    BecomeAware = 5,
    LoseAware = 6,
    ActivateStoredWeapon = 7,
    StoreActiveWeapon = 8,
    PickupWeaponFloor = 9,
    PickupWeaponWall = 10,
    PickupWeapon = 11,
    DodgeLeft = 12,
    DodgeRight = 13,
    Dodge = 14,
    Disappear_DEPRECATED = 15,
    Reappear_DEPRECATED = 16,
    Taunt = 17,
    Land = 18,
    TurnInPlace = 19,
    Shuffle = 20,
    FleeExit = 21,
    MovingRunTo = 22,
    React = 23,
    NurtureInteract_DEPRECATED = 24,
    Eat_DEPRECATED = 25,
    Jump = 26,
    Dead = 27,
    Climb = 28,
    IdleBreak = 29,
    BecomeAlert = 30,
    LoseAlert = 31,
    Apparate = 32,
    Flourish = 33,
    Flying = 34,
    StartDrained = 35,
    StopDrained = 36,
    Drained = 37,
    AlertWait = 38,
    AlertLook = 39,
    JumpSpline = 40,
    EEnemyAIAnimState_MAX = 41,
}

---@enum EEnemyAIAnimTransState
local EEnemyAIAnimTransState = {
    None = 0,
    IdleStart = 1,
    IdleBlended = 2,
    LocomotionStart = 3,
    LocomotionBlended = 4,
    EEnemyAIAnimTransState_MAX = 5,
}

---@enum EEnemyAIAttackState
local EEnemyAIAttackState = {
    None = 0,
    Attack = 1,
    Pressure = 2,
    Withdraw = 3,
    StayPut = 4,
    CloseDistance = 5,
    Cover = 6,
    SeekWeapon = 7,
    Evade = 8,
    Follow = 9,
    InOut = 10,
    Reposition = 11,
    SeekTarget = 12,
    BackOnNav = 13,
    LeadPlayer = 14,
    TooClose = 15,
    SwimToShore = 16,
    Standby = 17,
    Duel = 18,
    TooCloseTeammate = 19,
    Companion = 20,
    Count = 21,
    EEnemyAIAttackState_MAX = 22,
}

---@enum EEnemyAIAttackStateType
local EEnemyAIAttackStateType = {
    None = 0,
    Attack_0 = 1,
    Pressure_0 = 2,
    Withdraw_0 = 3,
    Count = 4,
    EEnemyAIAttackStateType_MAX = 5,
}

---@enum EEnemyAIDodgeState
local EEnemyAIDodgeState = {
    None = 0,
    DodgeLeft = 1,
    DodgeRight = 2,
    RollLeft = 3,
    RollRight = 4,
    SlideLeft = 5,
    SlideRight = 6,
    Duck = 7,
    ApparateToLocation = 8,
    EEnemyAIDodgeState_MAX = 9,
}

---@enum EEnemyAISpawnType
local EEnemyAISpawnType = {
    None = 0,
    EEnemyAISpawnType_MAX = 1,
}

---@enum EEnemyAIState
local EEnemyAIState = {
    None = 0,
    Wander = 1,
    Attack = 2,
    FollowPath = 3,
    Stationary = 4,
    Dead = 5,
    Deprecated_Reacting = 6,
    DEPRECATED_Scared = 7,
    Flee = 8,
    FollowPlayer = 9,
    ScheduledEntity = 10,
    Sidekick = 11,
    OnFire = 12,
    Resurrecting = 13,
    FollowSpline = 14,
    Investigate = 15,
    EEnemyAIState_MAX = 16,
}

---@enum EEnemyAISupportedActions
local EEnemyAISupportedActions = {
    React = 0,
    Spawn = 1,
    Attack = 2,
    BecomeAware = 3,
    LoseAware = 4,
    ActivateStoredWeapon = 5,
    StoreActiveWeapon = 6,
    PickupWeaponFloor = 7,
    PickupWeaponWall = 8,
    DodgeLeft = 9,
    DodgeRight = 10,
    Disappear = 11,
    Reappear = 12,
    Taunt = 13,
    FleeExit = 14,
    InvestigateAlert = 15,
    EEnemyAISupportedActions_MAX = 16,
}

---@enum EEnemyAITargetPerceiveState
local EEnemyAITargetPerceiveState = {
    None = 0,
    Gather = 1,
    Evaluate = 2,
    EEnemyAITargetPerceiveState_MAX = 3,
}

---@enum EEnemyAIWeaponState
local EEnemyAIWeaponState = {
    None = 0,
    Active = 1,
    Claimed = 2,
    Stored = 3,
    Munition = 4,
    EEnemyAIWeaponState_MAX = 5,
}

---@enum EEnemyAIWeapon_Event
local EEnemyAIWeapon_Event = {
    None = 0,
    TombProtectorMeteor_Choose = 1,
    TombProtectorMeteor_Break = 2,
    TombProtectorMeteor_Throw = 3,
    EEnemyAIWeapon_MAX = 4,
}

---@enum EEnemyBuffTypeEnum
local EEnemyBuffTypeEnum = {
    EBC_Health = 0,
    EBC_WeaponRespawn = 1,
    EBC_Random = 2,
    EBC_MAX = 3,
}

---@enum EEnemyGoblinAISpawnType
local EEnemyGoblinAISpawnType = {
    None = 0,
    EEnemyGoblinAISpawnType_MAX = 1,
}

---@enum EEnemyHoverTaskMode
local EEnemyHoverTaskMode = {
    Start = 0,
    Hover = 1,
    Land = 2,
    EEnemyHoverTaskMode_MAX = 3,
}

---@enum EEnemyMoveEndType
local EEnemyMoveEndType = {
    MoveEnd_Slide = 0,
    MoveEnd_MAX = 1,
}

---@enum EEnemyMovementState
local EEnemyMovementState = {
    Stop = 0,
    Walk = 1,
    Jog = 2,
    Gallop = 3,
    Num = 4,
    EEnemyMovementState_MAX = 5,
}

---@enum EEnemyRequirementProperty
local EEnemyRequirementProperty = {
    None = 0,
    Juggleable = 1,
    Freezable = 2,
    Burnable = 3,
    Transformable = 4,
    Blockable = 5,
    Unshielded = 6,
    EEnemyRequirementProperty_MAX = 7,
}

---@enum EEnemyShieldBreaker
local EEnemyShieldBreaker = {
    None = 0,
    TypeA_Breaker = 1,
    TypeB_Breaker = 2,
    TypeC_Breaker = 3,
    EEnemyShieldBreaker_MAX = 4,
}

---@enum EEnemySpiderAISpawnType
local EEnemySpiderAISpawnType = {
    None = 0,
    UpFromGround = 1,
    FallFromSky = 2,
    DescentOnWeb = 3,
    WakeUp = 4,
    Tumble = 5,
    TumbleAndDie = 6,
    EEnemySpiderAISpawnType_MAX = 7,
}

---@enum EEnemySplineSpawnEffectType
local EEnemySplineSpawnEffectType = {
    None = 0,
    Faction = 1,
    Shield = 2,
    Num = 3,
    EEnemySplineSpawnEffectType_MAX = 4,
}

---@enum EEnemyTakeAKneeAction
local EEnemyTakeAKneeAction = {
    None = 0,
    Defeat = 1,
    Advance = 2,
    Num = 3,
    EEnemyTakeAKneeAction_MAX = 4,
}

---@enum EEnemyWeaponEquip
local EEnemyWeaponEquip = {
    None = 0,
    Stored = 1,
    Hidden = 2,
    EEnemyWeaponEquip_MAX = 3,
}

---@enum EEnemyWeaponTypeEnum
local EEnemyWeaponTypeEnum = {
    ESW_Default = 0,
    ESW_Bola = 1,
    ESW_Sword = 2,
    ESW_Axe = 3,
    ESW_Hammer = 4,
    ESW_Mace = 5,
    ESW_Spear = 6,
    ESW_Katar = 7,
    ESW_Shield = 8,
    ESW_DarkWizardWand = 9,
    ESW_Dagger = 10,
    ESW_Meteor = 11,
    ESW_MeteorPiece = 12,
    ESW_Crossbow = 13,
    ESW_MAX = 14,
}

---@enum EEnemy_Ability
local EEnemy_Ability = {
    Idle = 0,
    Move = 1,
    Attack = 2,
    Dodge = 3,
    Weapon_DEPRECATED = 4,
    Shuffle = 5,
    TurnInPlace = 6,
    Taunt = 7,
    MoveStop = 8,
    BecomeAware = 9,
    LoseAware = 10,
    PickupWeapon = 11,
    Apparate = 12,
    Reaction = 13,
    StoreWeapon = 14,
    EquipWeapon = 15,
    Spawn = 16,
    Jump = 17,
    Eat_DEPRECATED = 18,
    Flee = 19,
    Dead = 20,
    NurtureInteract_DEPRECATED = 21,
    MoveStart = 22,
    GameEvent = 23,
    Climb = 24,
    Protego = 25,
    SecondaryAttack = 26,
    IdleBreak = 27,
    BecomeAlert = 28,
    LoseAlert = 29,
    HealAttack = 30,
    LosingTarget = 31,
    PreAttack = 32,
    Disillusionment = 33,
    None = 34,
    Lumos = 35,
    Custom = 36,
    ReparoAttack_Deprecated = 37,
    Vault = 38,
    MoveTransition = 39,
    Flourish = 40,
    Flying = 41,
    FollowSpline = 42,
    FollowSplineIdle = 43,
    StartDrained = 44,
    StopDrained = 45,
    Drained = 46,
    AlertWait = 47,
    WanderIdle = 48,
    AlertLook = 49,
    AttackSplit = 50,
    AlertFace = 51,
    JumpSpline = 52,
    MovePivot = 53,
    AttackCounter = 54,
    PreMoveStart = 55,
    RecoverWeapon = 56,
    InvestigateStart = 57,
    InvestigateMove = 58,
    InvestigateIdle = 59,
    InvestigateStop = 60,
    ChargeStart = 61,
    Count = 62,
    EEnemy_MAX = 63,
}

---@enum EEnemy_AbilityChannelContext
local EEnemy_AbilityChannelContext = {
    HasWeapon = 0,
    HasShield = 1,
    Unaware = 2,
    Alert = 3,
    Attack = 4,
    IsBlind = 5,
    IsInjured = 6,
    EEnemy_MAX = 7,
}

---@enum EEnemy_AbilityEvent
local EEnemy_AbilityEvent = {
    None = 0,
    FireWand = 1,
    FireWandRandomly = 2,
    DoProtego = 3,
    EndSpellCast = 4,
    DodgeFinished = 5,
    ApparateOut = 6,
    ApparateIn = 7,
    WeaponEquip = 8,
    WeaponStore = 9,
    WeaponPickup = 10,
    BeginVulnerable = 11,
    EndVulnerable = 12,
    BeginInvincible = 13,
    EndInvincible = 14,
    FireSpit = 15,
    BroadcastPendingAttack = 16,
    BeginNoInterrupt = 17,
    EndNoInterrupt = 18,
    Destroy = 19,
    SecondaryAttack = 20,
    DropAllWeapons = 21,
    ThreatStart = 22,
    ThreatEnd = 23,
    ThrowWeapon = 24,
    AttachWeapon = 25,
    DetachWeapon = 26,
    HideCharacter = 27,
    ShowCharacter = 28,
    DoAOECast = 29,
    AttachTransientWeapon = 30,
    DetachTransientWeapon = 31,
    ThrowTransientWeapon = 32,
    FireHeal = 33,
    AttackApparateIn = 34,
    AttackApparateOut = 35,
    WeaponsBuff_DEPRECATED = 36,
    BeginStomp = 37,
    ThrowMeteor = 38,
    GetMeteor = 39,
    HealBuff_DEPRECATED = 40,
    FireDisillusionment = 41,
    ChooseMeteor = 42,
    Disarm = 43,
    Freeze = 44,
    FreezeIfNotReleased = 45,
    ProtegoHide = 46,
    ProtegoShow = 47,
    RespawnAndAcquireWeapon = 48,
    BeginFadeOut = 49,
    BeginFadeIn = 50,
    FireReparo = 51,
    StartSpawn = 52,
    StartAllSpawns = 53,
    RaiseDead = 54,
    AnimagusMorph = 55,
    BuffTeam = 56,
    ProtegoStarted = 57,
    SummonReinforcements = 58,
    ActivateNearestActionDOV = 59,
    FireChannelingSpell = 60,
    StopChannelingSpell = 61,
    FireCustomSpell = 62,
    RagdollReaction = 63,
    StopAllAdditive = 64,
    StartTurnAssist = 65,
    StopTurnAssist = 66,
    FireHeavy = 67,
    AttackEndEarlySplit = 68,
    FindHideLoc = 69,
    AttackApparateAttack = 70,
    JumpSpline = 71,
    WeaponPowerup_DEPRECATED = 72,
    WindowOfOpportunityStart = 73,
    WindowOfOpportunityStop = 74,
    FireAOE = 75,
    TriggerWarning = 76,
    TriggerExplode = 77,
    WandLostDone = 78,
    WandGrabWand = 79,
    WandPickupDone = 80,
    WandRecoveredDone = 81,
    FireCombo = 82,
    ForceUnBlockableStart = 83,
    ForceUnBlockableStop = 84,
    NpcDamageBuff = 85,
    HideWeapon = 86,
    ShowWeapon = 87,
    ApparateRecoverWeapon = 88,
    TriggerAnnounceLoop = 89,
    TriggerWarningStart = 90,
    TriggerWarningLoop = 91,
    TriggerImpact = 92,
    TriggerImpactEnd = 93,
    AOEArresto = 94,
    ClearReflectionSpawn = 95,
    StartMorphToWolf = 96,
    EndMorphToWolf = 97,
    StartMorphToMage = 98,
    EndMorphToMage = 99,
    SetSpawnIneligible = 100,
    EnableHealthBar = 101,
    AOEHeartbeat = 102,
    EEnemy_MAX = 103,
}

---@enum EEnemy_Abort
local EEnemy_Abort = {
    None = 0,
    AUS = 1,
    Move = 2,
    Idle = 3,
    MoveCollision = 4,
    MoveCorridor = 5,
    Count = 6,
    EEnemy_MAX = 7,
}

---@enum EEnemy_AlertState
local EEnemy_AlertState = {
    None = 0,
    AlertStart = 1,
    Face = 2,
    Idle = 3,
    Move = 4,
    StoreWeapon = 5,
    LoseTarget = 6,
    EEnemy_MAX = 7,
}

---@enum EEnemy_AnimMainState
local EEnemy_AnimMainState = {
    None = 0,
    React = 1,
    Abort = 2,
    Dead = 3,
    EEnemy_MAX = 4,
}

---@enum EEnemy_AttackApparateMode
local EEnemy_AttackApparateMode = {
    None = 0,
    Target = 1,
    Player = 2,
    Self = 3,
    Location = 4,
    Custom = 5,
    EEnemy_MAX = 6,
}

---@enum EEnemy_AttackChoiceSource
local EEnemy_AttackChoiceSource = {
    Normal = 0,
    Interrupt = 1,
    Split = 2,
    PreAttack = 3,
    EEnemy_MAX = 4,
}

---@enum EEnemy_AttackDataSource
local EEnemy_AttackDataSource = {
    Choose = 0,
    Attack = 1,
    Count = 2,
    EEnemy_MAX = 3,
}

---@enum EEnemy_AttackExecuteType
local EEnemy_AttackExecuteType = {
    None = 0,
    Default = 1,
    RunTo = 2,
    DeferredEquip = 3,
    EEnemy_MAX = 4,
}

---@enum EEnemy_AttackLocSource
local EEnemy_AttackLocSource = {
    None = 0,
    PieCut = 1,
    Evade = 2,
    Reposition = 3,
    Close = 4,
    SeekWeapon = 5,
    Cover = 6,
    Flee = 7,
    Follow = 8,
    Direct = 9,
    InOut = 10,
    Sidekick = 11,
    Around = 12,
    Retreat = 13,
    SeekTarget = 14,
    LeadPlayer = 15,
    BackOnNav = 16,
    TooClose = 17,
    SwimToShore = 18,
    Standby = 19,
    Duel = 20,
    Alert = 21,
    Outside = 22,
    Companion = 23,
    Combat = 24,
    RecoverWeapon = 25,
    POI = 26,
    Count = 27,
    EEnemy_MAX = 28,
}

---@enum EEnemy_AttackResetSource
local EEnemy_AttackResetSource = {
    Normal = 0,
    AttackSplit = 1,
    EEnemy_MAX = 2,
}

---@enum EEnemy_AttackScoreTypeLevel
local EEnemy_AttackScoreTypeLevel = {
    Unset = 0,
    VeryLow = 1,
    Low = 2,
    Medium = 3,
    High = 4,
    VeryHigh = 5,
    EEnemy_MAX = 6,
}

---@enum EEnemy_AttackSource
local EEnemy_AttackSource = {
    Normal = 0,
    Split = 1,
    Counter = 2,
    EEnemy_MAX = 3,
}

---@enum EEnemy_AttackSpecificDataType
local EEnemy_AttackSpecificDataType = {
    None = 0,
    Ballistic = 1,
    Flourish = 2,
    RunTo = 3,
    Apparate = 4,
    EEnemy_MAX = 5,
}

---@enum EEnemy_AttackThreatHoming
local EEnemy_AttackThreatHoming = {
    Unset = 0,
    Stop = 1,
    Stopped = 2,
    EEnemy_MAX = 3,
}

---@enum EEnemy_AttackThreatState
local EEnemy_AttackThreatState = {
    None = 0,
    Inactive = 1,
    Active_Blockable = 2,
    Active_Unblockable = 3,
    PreAttack = 4,
    EEnemy_MAX = 5,
}

---@enum EEnemy_AttackThreatTracking
local EEnemy_AttackThreatTracking = {
    None = 0,
    Windup = 1,
    Fired = 2,
    Parried = 3,
    ParriedFired = 4,
    EEnemy_MAX = 5,
}

---@enum EEnemy_AttackThreatType
local EEnemy_AttackThreatType = {
    None = 0,
    Melee = 1,
    Munition = 2,
    Weapon = 3,
    Ranged = 4,
    Buf = 5,
    Spawn = 6,
    Custom = 7,
    Ballistic = 8,
    RunTo = 9,
    EEnemy_MAX = 10,
}

---@enum EEnemy_AttackTier
local EEnemy_AttackTier = {
    High = 0,
    Med = 1,
    Low = 2,
    None = 3,
    EEnemy_MAX = 4,
}

---@enum EEnemy_AttackType
local EEnemy_AttackType = {
    None = 0,
    Ranged = 1,
    Melee = 2,
    Buf = 3,
    Spawn = 4,
    Custom = 5,
    Ballistic = 6,
    RunTo = 7,
    EEnemy_MAX = 8,
}

---@enum EEnemy_AttackUpdateState
local EEnemy_AttackUpdateState = {
    None = 0,
    Init = 1,
    Moving = 2,
    Paused = 3,
    StartFace = 4,
    Face = 5,
    StopMove = 6,
    StoppingMove = 7,
    Taunt = 8,
    Shuffle = 9,
    Attack = 10,
    TauntAttack = 11,
    Cover = 12,
    StartReady = 13,
    PickupWeapon = 14,
    StoreActiveWeapon = 15,
    FaceWeapon = 16,
    Ready = 17,
    Apperate = 18,
    CheckRetreat = 19,
    FaceLoc = 20,
    Stunned = 21,
    Jump = 22,
    IdleBreak = 23,
    StartMove = 24,
    UpdateMove = 25,
    StartAttack = 26,
    StartRetreat = 27,
    StopRetreat = 28,
    Retreating = 29,
    StoppingRetreat = 30,
    Flourish = 31,
    Protego = 32,
    StartDrained = 33,
    Drained = 34,
    StopDrained = 35,
    Equip = 36,
    CounterAttack = 37,
    StartMoveWait = 38,
    Count = 39,
    EEnemy_MAX = 40,
}

---@enum EEnemy_AttackingState
local EEnemy_AttackingState = {
    None = 0,
    Init = 1,
    Move = 2,
    Execute = 3,
    Reset = 4,
    Finished = 5,
    EEnemy_MAX = 6,
}

---@enum EEnemy_BBKey
local EEnemy_BBKey = {
    None = 0,
    Spawn = 1,
    Dodge = 2,
    BecomeAware = 3,
    LoseAware = 4,
    LosingTarget = 5,
    DEPRECATED_SeekingWeapon = 6,
    Lumos = 7,
    React = 8,
    StoreActiveWeapon = 9,
    ActivateWeapon = 10,
    Scared = 11,
    Investigate = 12,
    Jump = 13,
    Abort = 14,
    GameEvent = 15,
    DEPRECATED_ScheduledEntity = 16,
    Climb = 17,
    Protego = 18,
    SecondaryAttack = 19,
    ClimbLadder = 20,
    BecomeAlert = 21,
    LoseAlert = 22,
    HealAttack = 23,
    InvestigateAlert = 24,
    Disillusionment = 25,
    ReparoAttack = 26,
    Vault = 27,
    CustomPause = 28,
    SidekickAttack = 29,
    ProtegoStart = 30,
    Alert = 31,
    SwimToShore = 32,
    Outside = 33,
    TooCloseToNPC = 34,
    JumpSpline = 35,
    BackOnNav = 36,
    RecoverWeapon = 37,
    Aggro = 38,
    TASTreeState = 39,
    SpellEffect = 40,
    AwareTurnAround = 41,
    AwarePause = 42,
    EEnemy_MAX = 43,
}

---@enum EEnemy_BuffType_DEPRECATED
local EEnemy_BuffType_DEPRECATED = {
    None_DEPRECATED = 0,
    Health_DEPRECATED = 1,
    WeaponRespawn_DEPRECATED = 2,
    WeaponPowerup_DEPRECATED = 3,
    EEnemy_BuffType_MAX = 4,
}

---@enum EEnemy_CharacterState
local EEnemy_CharacterState = {
    Wander = 0,
    Stationary = 1,
    StationaryUntilAware = 2,
    FollowPath = 3,
    StationaryUntilReleased = 4,
    FollowSpline = 5,
    None = 6,
    EEnemy_MAX = 7,
}

---@enum EEnemy_Context
local EEnemy_Context = {
    HighHealth = 0,
    LowHealth = 1,
    SuccessfulAttack = 2,
    TargetDead = 3,
    LowEnergy = 4,
    TeammateSuccessfulAttack = 5,
    EEnemy_MAX = 6,
}

---@enum EEnemy_ContextMatch
local EEnemy_ContextMatch = {
    Any = 0,
    All = 1,
    EEnemy_MAX = 2,
}

---@enum EEnemy_IdleType
local EEnemy_IdleType = {
    None = 0,
    Taunt = 1,
    Shuffle = 2,
    IdleBreak = 3,
    Idle = 4,
    Count = 5,
    EEnemy_MAX = 6,
}

---@enum EEnemy_InitTreeTimeoutAction
local EEnemy_InitTreeTimeoutAction = {
    FailNoEnter = 0,
    EnterWithReset = 1,
    EnterNoReset = 2,
    EEnemy_MAX = 3,
}

---@enum EEnemy_InvestigateState
local EEnemy_InvestigateState = {
    None = 0,
    Start = 1,
    Move = 2,
    Investigate = 3,
    Stop = 4,
    DrawWeapon = 5,
    Pause = 6,
    EEnemy_MAX = 7,
}

---@enum EEnemy_LOSChannelSet
local EEnemy_LOSChannelSet = {
    All = 0,
    Static = 1,
    StaticAndDynamic = 2,
    EEnemy_MAX = 3,
}

---@enum EEnemy_LOSConeRadiusSource
local EEnemy_LOSConeRadiusSource = {
    CapsuleHalf = 0,
    Custom = 1,
    EEnemy_MAX = 2,
}

---@enum EEnemy_LOSHeightOffsetSource
local EEnemy_LOSHeightOffsetSource = {
    CapsuleHalf = 0,
    Custom = 1,
    EEnemy_MAX = 2,
}

---@enum EEnemy_LOSType
local EEnemy_LOSType = {
    Line = 0,
    Cone = 1,
    SweptSphere = 2,
    EEnemy_MAX = 3,
}

---@enum EEnemy_LimitAttackOnTarget
local EEnemy_LimitAttackOnTarget = {
    None = 0,
    AttackStart = 1,
    WindowStart = 2,
    ReleaseStart = 3,
    RunToStart = 4,
    EEnemy_MAX = 5,
}

---@enum EEnemy_ParryButtonPressed
local EEnemy_ParryButtonPressed = {
    None = 0,
    Parry = 1,
    DodgeBlock = 2,
    EEnemy_MAX = 3,
}

---@enum EEnemy_ParryClosure
local EEnemy_ParryClosure = {
    None = 0,
    Success = 1,
    Fail = 2,
    Neutral = 3,
    EEnemy_MAX = 4,
}

---@enum EEnemy_ParryCounterStepDirection
local EEnemy_ParryCounterStepDirection = {
    Default = 0,
    Forwards = 1,
    Backwards = 2,
    EEnemy_MAX = 3,
}

---@enum EEnemy_ParryCounterStyle
local EEnemy_ParryCounterStyle = {
    Default = 0,
    Direct = 1,
    Downward = 2,
    Upward = 3,
    EEnemy_MAX = 4,
}

---@enum EEnemy_ParryCounterType
local EEnemy_ParryCounterType = {
    Default = 0,
    None = 1,
    EEnemy_MAX = 2,
}

---@enum EEnemy_ParryDodgeStyle
local EEnemy_ParryDodgeStyle = {
    RollAway = 0,
    RollPerpendicular = 1,
    RollTowards = 2,
    DodgeAway = 3,
    DodgePerpendicular = 4,
    DodgeTowards = 5,
    EEnemy_MAX = 6,
}

---@enum EEnemy_ParryMunitionType
local EEnemy_ParryMunitionType = {
    None = 0,
    Weapon = 1,
    Spell = 2,
    Ballistic = 3,
    Melee = 4,
    Custom = 5,
    External = 6,
    RunTo = 7,
    EEnemy_MAX = 8,
}

---@enum EEnemy_ParryResponseType
local EEnemy_ParryResponseType = {
    Default = 0,
    Massive = 1,
    Heavy = 2,
    Sustained = 3,
    EEnemy_MAX = 4,
}

---@enum EEnemy_ParryRunToType
local EEnemy_ParryRunToType = {
    LeadInAndRelease = 0,
    ReleaseImmediately = 1,
    EEnemy_MAX = 2,
}

---@enum EEnemy_ParryType
local EEnemy_ParryType = {
    None = 0,
    Melee = 1,
    Ranged = 2,
    Ballistic = 3,
    Animation = 4,
    Custom = 5,
    RunTo = 6,
    EEnemy_MAX = 7,
}

---@enum EEnemy_ParryWindowStage
local EEnemy_ParryWindowStage = {
    None = 0,
    LeadIn = 1,
    Release = 2,
    EEnemy_MAX = 3,
}

---@enum EEnemy_ParryWindowState
local EEnemy_ParryWindowState = {
    None = 0,
    PreStart = 1,
    Active = 2,
    Parry = 3,
    Fired = 4,
    Aborted = 5,
    EEnemy_MAX = 6,
}

---@enum EEnemy_ParryWindowType
local EEnemy_ParryWindowType = {
    None = 0,
    Single = 1,
    Dual = 2,
    EEnemy_MAX = 3,
}

---@enum EEnemy_PartialState
local EEnemy_PartialState = {
    None = 0,
    WandActive = 1,
    ShieldActive = 2,
    EEnemy_MAX = 3,
}

---@enum EEnemy_ProtegoDeflection
local EEnemy_ProtegoDeflection = {
    None = 0,
    DeflectBlock = 1,
    DeflectRandom = 2,
    DeflectTarget = 3,
    DeflectBack = 4,
    DeflectDeflect = 5,
    DeflectCounter = 6,
    EEnemy_MAX = 7,
}

---@enum EEnemy_ProtegoLevel
local EEnemy_ProtegoLevel = {
    None = 0,
    TypeA = 1,
    TypeB = 2,
    TypeC = 3,
    TypeD = 4,
    TypePhysical_Deprecated = 5,
    TypeProfessor_Deprecated = 6,
    TypeDuelOpponent = 7,
    TypeStudent_Deprecated = 8,
    TypeTownie_Deprecated = 9,
    TypeBoss_Deprecated = 10,
    TypeBoss_Harlow = 11,
    TypeBoss_Oppugno = 12,
    TypeBoss_AncientMagic = 13,
    TypeBoss_Solomon = 14,
    EEnemy_MAX = 15,
}

---@enum EEnemy_SelectCooldownType
local EEnemy_SelectCooldownType = {
    Immediate = 0,
    Increment = 1,
    EEnemy_MAX = 2,
}

---@enum EEnemy_Shuffle
local EEnemy_Shuffle = {
    Forward = 0,
    Left45 = 1,
    Left90 = 2,
    Left135 = 3,
    Back = 4,
    Right135 = 5,
    Right90 = 6,
    Right45 = 7,
    EEnemy_MAX = 8,
}

---@enum EEnemy_StimulusType
local EEnemy_StimulusType = {
    None = 0,
    FinisherAnticipate = 1,
    FinisherAware = 2,
    FinisherReact = 3,
    EEnemy_MAX = 4,
}

---@enum EEnemy_TASTreeState
local EEnemy_TASTreeState = {
    None = 0,
    AlertStart_W2Y = 1,
    AggroStart_Y2R = 2,
    EquipWeapon_Y2R = 3,
    StoreWeapon_R2Y = 4,
    AggroLost_R2Y = 5,
    AlertLost_Y2W = 6,
    EEnemy_MAX = 7,
}

---@enum EEnemy_TagContainer
local EEnemy_TagContainer = {
    Shuffle = 0,
    Taunt = 1,
    Spawn = 2,
    IdleBreak = 3,
    Flourish = 4,
    None = 5,
    BecomeAware = 6,
    JumpSpline = 7,
    Count = 8,
    EEnemy_MAX = 9,
}

---@enum EEnemy_TargetQuadrant
local EEnemy_TargetQuadrant = {
    None = 0,
    LeftForward = 1,
    RightForward = 2,
    LeftBack = 3,
    RightBack = 4,
    Block = 5,
    EEnemy_MAX = 6,
}

---@enum EEnemy_TargetType
local EEnemy_TargetType = {
    None = 0,
    Attack = 1,
    Flee = 2,
    EEnemy_MAX = 3,
}

---@enum EEnemy_TicketScoreType
local EEnemy_TicketScoreType = {
    Allowed = 0,
    HasTicket = 1,
    NotAllowed = 2,
    EEnemy_MAX = 3,
}

---@enum EEnemy_Transition
local EEnemy_Transition = {
    None = 0,
    LosingTarget = 1,
    StoreActiveWeapon = 2,
    Wander = 3,
    Stationary = 4,
    KilledTarget = 5,
    EEnemy_MAX = 6,
}

---@enum EEnemy_WeaponLifetime
local EEnemy_WeaponLifetime = {
    None = 0,
    Throw = 1,
    Drop = 2,
    Protego = 3,
    EEnemy_MAX = 4,
}

---@enum EEnemy_WeaponRecoveryState
local EEnemy_WeaponRecoveryState = {
    None = 0,
    WaitForActionToStart = 1,
    StartRecovery = 2,
    MoveToLocation = 3,
    PickupWeapon = 4,
    FinalizeRecovery = 5,
    Done = 6,
    EEnemy_MAX = 7,
}

---@enum EEnemy_WeaponReleaseType
local EEnemy_WeaponReleaseType = {
    DisarmWeapon = 0,
    DisarmShield = 1,
    DropWeapon = 2,
    DropShield = 3,
    ThrowWeapon = 4,
    ThrowTransientWeapon = 5,
    DeathDisarmWeapon = 6,
    DisarmWeaponForRecovery = 7,
    EEnemy_MAX = 8,
}

---@enum EEnemy_WeaponSource
local EEnemy_WeaponSource = {
    None = 0,
    Active = 1,
    Stored = 2,
    Pickup = 3,
    Transient = 4,
    Required = 5,
    EEnemy_MAX = 6,
}

---@enum EEnterExitAnimVariants
local EEnterExitAnimVariants = {
    ENTEREXITANIM_HUMAN_A = 0,
    ENTEREXITANIM_HUMAN_F = 1,
    ENTEREXITANIM_HUMAN_M = 2,
    ENTEREXITANIM_CHILD_F = 3,
    ENTEREXITANIM_CHILD_M = 4,
    ENTEREXITANIM_DEATHMINION_A = 5,
    ENTEREXITANIM_ELF_A = 6,
    ENTEREXITANIM_GOBLIN_A = 7,
    ENTEREXITANIM_TROLL_A = 8,
    ENTEREXITANIM_MAX = 9,
}

---@enum EEnvironmentObstacle
local EEnvironmentObstacle = {
    Throwable = 0,
    RedBarrel = 1,
    SendTarget = 2,
    ENUM_MAX = 3,
    EEnvironmentObstacle_MAX = 4,
}

---@enum EExpiryTypes
local EExpiryTypes = {
    ALL = 0,
    LootDrop = 1,
    Infirmary = 2,
    Count = 3,
    EExpiryTypes_MAX = 4,
}

---@enum EFT_FromType
local EFT_FromType = {
    EFT_FromType_Normal = 0,
    EFT_FromType_Map = 1,
    EFT_FromType_Door = 2,
    EFT_FromType_Mission = 3,
    EFT_FromType_Floo = 4,
    EFT_FromType_CrimeScene = 5,
    EFT_FromType_SceneAction = 6,
    EFT_FromType_MAX = 7,
}

---@enum EFT_TravelType
local EFT_TravelType = {
    NormalFastTravelOnly = 0,
    UseFastTravelCVar = 1,
    UnloadFastTravelOnly = 2,
    EFT_MAX = 3,
}

---@enum EFXAutoTriggerSeason
local EFXAutoTriggerSeason = {
    Fall = 0,
    Winter = 1,
    Spring = 2,
    Summer = 3,
    EFXAutoTriggerSeason_MAX = 4,
}

---@enum EFXAutoTriggerZLocation
local EFXAutoTriggerZLocation = {
    Bottom = 0,
    Center = 1,
    Top = 2,
    EFXAutoTriggerZLocation_MAX = 3,
}

---@enum EFXAutoTriggerZType
local EFXAutoTriggerZType = {
    Visual = 0,
    Collision = 1,
    EFXAutoTriggerZType_MAX = 2,
}

---@enum EFXPostProcessingDuplicateAction
local EFXPostProcessingDuplicateAction = {
    Abort = 0,
    Replace = 1,
    RunAnyway = 2,
    EFXPostProcessingDuplicateAction_MAX = 3,
}

---@enum EFXUpdatePostProcessingCurveParameter
local EFXUpdatePostProcessingCurveParameter = {
    None = 0,
    BlendWeight = 1,
    AllBlendablesWeight = 2,
    Blendable0Weight = 3,
    Blendable1Weight = 4,
    Blendable2Weight = 5,
    Blendable3Weight = 6,
    EFXUpdatePostProcessingCurveParameter_MAX = 7,
}

---@enum EFXUpdatePostProcessingParameter
local EFXUpdatePostProcessingParameter = {
    None = 0,
    BlendWeight = 1,
    AllBlendablesWeight = 2,
    Blendable0Weight = 3,
    Blendable1Weight = 4,
    Blendable2Weight = 5,
    Blendable3Weight = 6,
    BlendInTime = 7,
    BlendOutTime = 8,
    DefaultBlendOutTime = 9,
    EFXUpdatePostProcessingParameter_MAX = 10,
}

---@enum EFacialAnimType
local EFacialAnimType = {
    FACIAL_ANIM_NONE = 0,
    FACIAL_ANIM_TALK = 1,
    FACIAL_ANIM_EAT = 2,
    FACIAL_ANIM_DRINK = 3,
    FACIAL_ANIM_LAUGH = 4,
    FACIAL_ANIM_CHEER = 5,
    FACIAL_ANIM_SLEEP = 6,
    FACIAL_ANIM_BUMPED = 7,
    FACIAL_ANIM_LISTEN = 8,
    FACIAL_ANIM_THINK = 9,
    FACIAL_ANIM_MAX = 10,
}

---@enum EFactRarity
local EFactRarity = {
    F_Common = 0,
    F_Uncommon = 1,
    F_Rare = 2,
    F_Mythic = 3,
    F_MAX = 4,
}

---@enum EFactSheetType
local EFactSheetType = {
    Person = 0,
    Beast = 1,
    Plant = 2,
    Potion = 3,
    EFactSheetType_MAX = 4,
}

---@enum EFactsheetButtonState
local EFactsheetButtonState = {
    FS_NONE = 0,
    FS_UNKNOWN = 1,
    FS_QUERY = 2,
    FS_REDIRECT = 3,
    FS_KNOWN = 4,
    FS_MAX = 5,
}

---@enum EFactsheetItemType
local EFactsheetItemType = {
    FACTSHEET_ITEM_TYPE_UNKNOWN = 0,
    FACTSHEET_ITEM_TYPE_PERSON = 1,
    FACTSHEET_ITEM_TYPE_MAX = 2,
}

---@enum EFadeState
local EFadeState = {
    FadingIn = 0,
    FadingOut = 1,
    EFadeState_MAX = 2,
}

---@enum EFeatureInstallState
local EFeatureInstallState = {
    NotSupported = 0,
    NotInstalled = 1,
    PartiallyInstalled = 2,
    Installing = 3,
    Installed = 4,
    EFeatureInstallState_MAX = 5,
}

---@enum EFeedbackAnim
local EFeedbackAnim = {
    ANIM_PULSE = 0,
    ANIM_ROTATE_CL = 1,
    ANIM_ROTATE_CCL = 2,
    ANIM_BACK_AND_FORTH = 3,
    ANIM_NONE = 4,
    ANIM_MAX = 5,
}

---@enum EFieldGuideExitReasons
local EFieldGuideExitReasons = {
    FIELD_GUIDE_EXIT_REASON_NONE = 0,
    FIELD_GUIDE_EXIT_REASON_BACK_TO_GAME = 1,
    FIELD_GUIDE_EXIT_REASON_BACK_TO_GAME_FROM_MAP = 2,
    FIELD_GUIDE_EXIT_REASON_LOAD_GAME = 3,
    FIELD_GUIDE_EXIT_REASON_RESTART_FROM_LAST_SAVE = 4,
    FIELD_GUIDE_EXIT_REASON_EXIT_TO_MAIN = 5,
    FIELD_GUIDE_EXIT_REASON_EXIT_TO_MAIN_GAME_OVER = 6,
    FIELD_GUIDE_EXIT_REASON_QUIT_GAME = 7,
    FIELD_GUIDE_EXIT_REASON_FAST_TRAVEL_FROM_MAP = 8,
    FIELD_GUIDE_EXIT_REASON_HOVER_DRONE = 9,
    FIELD_GUIDE_EXIT_REASON_FAST_TRAVEL_FROM_IMGUI = 10,
    FIELD_GUIDE_EXIT_REASON_ABANDON_QUEST_FROM_QUEST_LOG = 11,
    FIELD_GUIDE_EXIT_REASON_ABANDON_QUEST_FROM_GAME_OVER = 12,
    FIELD_GUIDE_EXIT_REASON_PHOTOMODE_ENABLED = 13,
    FIELD_GUIDE_EXIT_REASON_MAX = 14,
}

---@enum EFieldGuideExitStates
local EFieldGuideExitStates = {
    FIELD_GUIDE_EXIT_STATE_NONE = 0,
    FIELD_GUIDE_EXIT_STATE_FADING_IN = 1,
    FIELD_GUIDE_EXIT_STATE_FADING_OUT = 2,
    FIELD_GUIDE_EXIT_STATE_SPIN_ON_BLANK = 3,
    FIELD_GUIDE_EXIT_STATE_DELAY = 4,
    FIELD_GUIDE_EXIT_STATE_UNLOAD_FIELD_GUIDE = 5,
    FIELD_GUIDE_EXIT_STATE_NO_FADE = 6,
    FIELD_GUIDE_EXIT_STATE_RESTART_FROM_LAST_SAVE = 7,
    FIELD_GUIDE_EXIT_STATE_LOAD_GAME = 8,
    FIELD_GUIDE_EXIT_STATE_EXIT_TO_MAIN = 9,
    FIELD_GUIDE_EXIT_STATE_EXIT_TO_MAIN_GAME_OVER = 10,
    FIELD_GUIDE_EXIT_STATE_HOVER_DRONE = 11,
    FIELD_GUIDE_EXIT_STATE_FAST_TRAVEL_FROM_MAP = 12,
    FIELD_GUIDE_EXIT_STATE_FAST_TRAVEL_FROM_IMGUI = 13,
    FIELD_GUIDE_EXIT_STATE_ABANDON_QUEST_FROM_QUEST_LOG = 14,
    FIELD_GUIDE_EXIT_STATE_ABANDON_QUEST_FROM_GAME_OVER = 15,
    FIELD_GUIDE_EXIT_STATE_HOLD_FADE = 16,
    FIELD_GUIDE_EXIT_STATE_PHOTOMODE_ENABLED = 17,
    FIELD_GUIDE_EXIT_STATE_MAX = 18,
}

---@enum EFightClubIntroTypes
local EFightClubIntroTypes = {
    FC_InitiateMatch = 0,
    FC_AdeptMatch = 1,
    FC_ChampionsMatch = 2,
    FC_MAX = 3,
}

---@enum EFightClubResultsTypes
local EFightClubResultsTypes = {
    FC_Win = 0,
    FC_Lose = 1,
    FC_MAX = 2,
}

---@enum EFlammableEnum
local EFlammableEnum = {
    FE_INFLAMMABLE = 0,
    FE_FLAMMABLE = 1,
    FE_USE_MPD = 2,
    FE_MAX = 3,
}

---@enum EFlockPersonalityAxis
local EFlockPersonalityAxis = {
    FPA_PITCH = 0,
    FPA_YAW = 1,
    FPA_ROLL = 2,
    FPA_PITCHORYAW = 3,
    FPA_PITCHORROLL = 4,
    FPA_YAWORROLL = 5,
    FPA_RANDOM = 6,
    FPA_MAX = 7,
}

---@enum EFlyingBroomHitObjectType
local EFlyingBroomHitObjectType = {
    Unknown = 0,
    Creature = 1,
    Character = 2,
    CharacterOnBroom = 3,
    NoMount = 4,
    EFlyingBroomHitObjectType_MAX = 5,
}

---@enum EFlyingBroomState
local EFlyingBroomState = {
    None = 0,
    Flying = 1,
    Strafe = 2,
    BarrelRollLft = 3,
    BarrelRollRht = 4,
    AimMode = 5,
    AftView = 6,
    CombatMode = 7,
    Boosting = 8,
    Turbo = 9,
    React = 10,
    EFlyingBroomState_MAX = 11,
}

---@enum EFlyingStairState
local EFlyingStairState = {
    Unbuilt = 0,
    Building = 1,
    Built = 2,
    Demolishing = 3,
    FlagForDemolishing = 4,
    EFlyingStairState_MAX = 5,
}

---@enum EFocusTriggerInterest
local EFocusTriggerInterest = {
    FOCUSTRIGGER_INTEREST_LOOK = 0,
    FOCUSTRIGGER_INTEREST_ACTION = 1,
    FOCUSTRIGGER_INTEREST_COUNT = 2,
    FOCUSTRIGGER_INTEREST_MAX = 3,
}

---@enum EFocusTriggerType
local EFocusTriggerType = {
    FOCUSTRIGGER_TYPE_OPENWORLD = 0,
    FOCUSTRIGGER_TYPE_NPC = 1,
    FOCUSTRIGGER_TYPE_PLAYER = 2,
    FOCUSTRIGGER_TYPE_WORLDEVENT = 3,
    FOCUSTRIGGER_TYPE_COUNT = 4,
    FOCUSTRIGGER_TYPE_MAX = 5,
}

---@enum EFootprintTypes
local EFootprintTypes = {
    None = 0,
    Human = 1,
    Goblin = 2,
    Troll = 3,
    EFootprintTypes_MAX = 4,
}

---@enum EForageableState
local EForageableState = {
    Inactive = 0,
    Idle = 1,
    Collected = 2,
    EForageableState_MAX = 3,
}

---@enum EForbiddenAreaSetting
local EForbiddenAreaSetting = {
    All = 0,
    Male = 1,
    Female = 2,
    SpecificNPC = 3,
    EForbiddenAreaSetting_MAX = 4,
}

---@enum EForceRenderSettingsPhase
local EForceRenderSettingsPhase = {
    Startup = 0,
    BeginPlay = 1,
    EndPlay = 2,
    EForceRenderSettingsPhase_MAX = 3,
}

---@enum EForceRenderSettingsScope
local EForceRenderSettingsScope = {
    OnPlay = 0,
    OnPlayCooked = 1,
    OnPlayInEditor = 2,
    OnEditorStartup = 3,
    OnEndPlay = 4,
    Always = 5,
    EForceRenderSettingsScope_MAX = 6,
}

---@enum EForcedNavigationMode
local EForcedNavigationMode = {
    None = 0,
    FreezeNavigation = 1,
    AsyncPathNavigation = 2,
    EForcedNavigationMode_MAX = 3,
}

---@enum EForcedShutDownMode
local EForcedShutDownMode = {
    None = 0,
    NoForcedShutDownAllowed = 1,
    ForcedHiddenRenderShutdDown = 2,
    ForcedRenderShutDown = 3,
    ForcedHiddenFleshCacheShutDown = 4,
    ForcedFleshCacheShutDown = 5,
    ForcedAllowRenderShutDown = 6,
    EForcedShutDownMode_MAX = 7,
}

---@enum EForcedShutDownPriority
local EForcedShutDownPriority = {
    None = 0,
    ConversationPriority = 1,
    StationPriority = 2,
    CinematicPriority = 3,
    HideTriggerPriority = 4,
    SceneRigPriority = 5,
    VisibilityActionPriority = 6,
    EForcedShutDownPriority_MAX = 7,
}

---@enum EFrameGenerationMode
local EFrameGenerationMode = {
    Off = 0,
    Nvidia_DLSSG = 1,
    Intel_XeFG = 2,
    AMD_FFXFI = 3,
    EFrameGenerationMode_MAX = 4,
}

---@enum EFullBodyState
local EFullBodyState = {
    None = 0,
    Moving = 1,
    Combat = 2,
    FlooPowder = 3,
    PortKey = 4,
    Sprinting = 5,
    Jumping = 6,
    FireSpell = 7,
    Blocking = 8,
    Parrying = 9,
    Climbing = 10,
    ClimbingLadder = 11,
    Falling = 12,
    Dodging = 13,
    Reacting = 14,
    Teleporting = 15,
    Harvesting = 16,
    PlantSeed = 17,
    StationInteract = 18,
    PickupBucket = 19,
    PutDownBucket = 20,
    SpreadFeed = 21,
    AncientMagic = 22,
    StartCatchCarry = 23,
    CatchCarry = 24,
    StartCarry = 25,
    EndCarry = 26,
    Swimming = 27,
    ButtSliding = 28,
    OpeningChest = 29,
    Cinematic = 30,
    DodgeDucking = 31,
    ShadowBlinking = 32,
    EFullBodyState_MAX = 33,
}

---@enum EGameEventLocation
local EGameEventLocation = {
    None = 0,
    Caster = 1,
    Impact = 2,
    Target = 3,
    Destination = 4,
    EGameEventLocation_MAX = 5,
}

---@enum EGameEvent_Intensity
local EGameEvent_Intensity = {
    None = 0,
    White = 1,
    Yellow = 2,
    Red = 3,
    EGameEvent_MAX = 4,
}

---@enum EGamepadTextInputResult
local EGamepadTextInputResult = {
    Unsupported = 0,
    AlreadyOpen = 1,
    UtilsAPIFailed = 2,
    FieldToLong = 3,
    DialogFailed = 4,
    StringInvalid = 5,
    DialogClosed = 6,
    EGamepadTextInputResult_MAX = 7,
}

---@enum EGamepadType
local EGamepadType = {
    Gamepad_XboxOne = 0,
    Gamepad_PS4 = 1,
    Gamepad_PS5 = 2,
    Gamepad_Switch = 3,
    Gamepad_Steam = 4,
    Gamepad_Misc = 0,
    Gamepad_MAX = 5,
}

---@enum EGameplayMechanics
local EGameplayMechanics = {
    Move = 0,
    Jump = 1,
    DodgeRoll = 2,
    Protego = 3,
    LightCast = 4,
    HeavyCast = 5,
    Revelio = 6,
    MapHelp = 7,
    ItemMenu = 8,
    AimMode = 9,
    Finishers = 10,
    Oppugno = 11,
    AutoTarget = 12,
    EGameplayMechanics_MAX = 13,
}

---@enum EGearHouseID
local EGearHouseID = {
    HOUSE_GRYFFINDOR = 0,
    HOUSE_HUFFLEPUFF = 1,
    HOUSE_RAVENCLAW = 2,
    HOUSE_SLYTHERIN = 3,
    HOUSE_MAX = 4,
}

---@enum EGearRarityOption
local EGearRarityOption = {
    NONE = 0,
    BASIC = 1,
    COMMON = 2,
    EPIC = 4,
    LEGENDARY = 8,
    RARE = 16,
    EGearRarityOption_MAX = 17,
}

---@enum EGearSlotIDEnum
local EGearSlotIDEnum = {
    HEAD = 0,
    OUTFIT = 1,
    BACK = 2,
    NECK = 3,
    HAND = 4,
    FACE = 5,
    Num = 6,
    EGearSlotIDEnum_MAX = 7,
}

---@enum EGenderPronoun
local EGenderPronoun = {
    GENDER_WIZARD = 0,
    GENDER_WITCH = 1,
    GENDER_MAX = 2,
}

---@enum EGenderVoice
local EGenderVoice = {
    VOICE_MALE = 0,
    VOICE_FEMALE = 1,
    VOICE_MAX = 2,
}

---@enum EGlobalLightingSimpleFogZMode
local EGlobalLightingSimpleFogZMode = {
    OffsetOnly = 0,
    OffsetIsAbsolute = 1,
    CameraZ = 2,
    PlayerZ = 3,
    SceneRigTransform = 4,
    WorldBase = 5,
    EGlobalLightingSimpleFogZMode_MAX = 6,
}

---@enum EGoalStatusFlags
local EGoalStatusFlags = {
    STATUS_FLAG_NONE = 0,
    STATUS_FLAG_INTRANSIT = 1,
    STATUS_FLAG_STATION_REQUIRED = 2,
    STATUS_FLAG_INTERRUPTED = 4,
    STATUS_FLAG_COMPLETE = 8,
    STATUS_FLAG_DYNAMIC_IN_PROGRESS = 16,
    STATUS_FLAG_FAST_TRAVEL = 32,
    STATUS_FLAG_ENTER_COMPLETE_CALLBACK = 64,
    STATUS_FLAG_EXIT_COMPLETE_CALLBACK = 128,
    STATUS_FLAG_MAX = 129,
}

---@enum EGroundSwarmMemberState
local EGroundSwarmMemberState = {
    Frozen = 0,
    Freefalling = 1,
    OnSurface = 2,
    Burrowing = 3,
    DeathLeap = 4,
    Dead = 5,
    EGroundSwarmMemberState_MAX = 6,
}

---@enum EGroundSwarmingCurlNoiseMode
local EGroundSwarmingCurlNoiseMode = {
    None = 0,
    Simple2D = 1,
    Faux3D = 2,
    Local2D = 3,
    Expensive3D = 4,
    EGroundSwarmingCurlNoiseMode_MAX = 5,
}

---@enum EGroundSwarmingEventType
local EGroundSwarmingEventType = {
    FirstTargetHit = 0,
    TargetThresholdReached = 1,
    TimedOutMissedThreshold = 2,
    MarkForDeath = 3,
    EGroundSwarmingEventType_MAX = 4,
}

---@enum EGroundSwarmingExitType
local EGroundSwarmingExitType = {
    Burrow = 0,
    Poof = 1,
    EGroundSwarmingExitType_MAX = 2,
}

---@enum EGroundSwarmingExternalForceType
local EGroundSwarmingExternalForceType = {
    Forward = 0,
    Up = 1,
    Right = 2,
    Radial = 3,
    RadialTangentUp = 4,
    CurlNoise = 5,
    EGroundSwarmingExternalForceType_MAX = 6,
}

---@enum EGroundSwarmingFocusType
local EGroundSwarmingFocusType = {
    Undefined = 0,
    Actor = 1,
    SceneComponent = 2,
    Fixed = 3,
    EGroundSwarmingFocusType_MAX = 4,
}

---@enum EGroundSwarmingFocusTypeHint
local EGroundSwarmingFocusTypeHint = {
    None = 0,
    Swarm = 1,
    Target = 2,
    Player = 3,
    EGroundSwarmingFocusTypeHint_MAX = 4,
}

---@enum EGroundSwarmingForceModifierType
local EGroundSwarmingForceModifierType = {
    Follow = 0,
    Separation = 1,
    SeparationDistance = 2,
    Alignment = 3,
    Cohesion = 4,
    MaxSpeed = 5,
    CurlNoiseScale = 6,
    Velocity = 7,
    EGroundSwarmingForceModifierType_MAX = 8,
}

---@enum EGroundSwarmingKillEventDeathLeapCollisionType
local EGroundSwarmingKillEventDeathLeapCollisionType = {
    None = 0,
    Simple = 1,
    Complex = 2,
    EGroundSwarmingKillEventDeathLeapCollisionType_MAX = 3,
}

---@enum EGroundSwarmingKillEventType
local EGroundSwarmingKillEventType = {
    None = 0,
    HitKillBox = 1,
    HitTarget = 2,
    Poof = 3,
    StartBurrow = 4,
    EGroundSwarmingKillEventType_MAX = 5,
}

---@enum EHarvestState
local EHarvestState = {
    PullFail = 0,
    PullSucceed = 1,
    PickFail = 2,
    PickSucceed = 3,
    EHarvestState_MAX = 4,
}

---@enum EHeadTrackingPriority
local EHeadTrackingPriority = {
    None = 0,
    LowestPriority = 1,
    UpperBodyAlert = 2,
    FullBodyUsage = 3,
    FullBodySpecialUsage = 4,
    UpperBodyUsage = 5,
    UpperBodySpecialUsage = 6,
    Cinematic = 7,
    HighestPriority = 8,
    EHeadTrackingPriority_MAX = 9,
}

---@enum EHeadTrackingState
local EHeadTrackingState = {
    None = 0,
    Disallow = 1,
    Allow = 2,
    AllowHeadOnly = 3,
    Allow360 = 4,
    AllowHeadOnly360 = 5,
    EHeadTrackingState_MAX = 6,
}

---@enum EHelperState
local EHelperState = {
    IDLE = 0,
    START = 1,
    DEPLOY = 2,
    DEPLOY_TURN = 3,
    RUN = 4,
    ATTRACT = 5,
    POP_OUT = 6,
    END = 7,
    EHelperState_MAX = 8,
}

---@enum EHerbGrowthState
local EHerbGrowthState = {
    None = 0,
    Growing = 1,
    Grown = 2,
    Harvested = 3,
    Regrowing = 4,
    EHerbGrowthState_MAX = 5,
}

---@enum EHerbologyPotionType
local EHerbologyPotionType = {
    None = 0,
    AppliedDuringGrowth = 1,
    EHerbologyPotionType_MAX = 2,
}

---@enum EHermesMessageAdvancedDynamicPayloadType
local EHermesMessageAdvancedDynamicPayloadType = {
    None = 0,
    Name = 1,
    Boolean = 2,
    Integer = 3,
    Scalar = 4,
    EHermesMessageAdvancedDynamicPayloadType_MAX = 5,
}

---@enum EHiddenTeleportAttackStep
local EHiddenTeleportAttackStep = {
    ChooseAttackLocation = 0,
    Teleport = 1,
    Hide = 2,
    EHiddenTeleportAttackStep_MAX = 3,
}

---@enum EHideFlags
local EHideFlags = {
    All = 0,
    All_Tier1 = 1,
    All_Tier3 = 2,
    SplineWalkers = 3,
    SeatFillers = 4,
    Creatures = 5,
    All_Tier4 = 6,
    Companions = 7,
    Enemies = 8,
    Players = 9,
    Ghosts = 10,
    PhotoModeHideable = 11,
    EHideFlags_MAX = 12,
}

---@enum EHighContrastDistanceType
local EHighContrastDistanceType = {
    Item = 0,
    Door = 1,
    Creature = 2,
    Mount = 3,
    Characters = 4,
    Infinity = 5,
    EHighContrastDistanceType_MAX = 6,
}

---@enum EHighContrastGameplayMarkup
local EHighContrastGameplayMarkup = {
    None = 0,
    Player = 1,
    Companion = 2,
    FriendlyNPC = 3,
    EnemyNPC = 4,
    Item = 5,
    Creature = 6,
    Mount = 7,
    RevelioItem = 8,
    RevelioImportant = 9,
    RevelioEnemy = 10,
    ShieldPurple = 11,
    ShieldOrange = 12,
    ShieldRed = 13,
    ShieldWhite = 14,
    ShieldBlue = 15,
    EHighContrastGameplayMarkup_MAX = 16,
}

---@enum EHighContrastGameplayNPCHint
local EHighContrastGameplayNPCHint = {
    Enemy = 0,
    Companion = 1,
    Friendly = 2,
    EHighContrastGameplayNPCHint_MAX = 3,
}

---@enum EHighContrastGameplayNPCType
local EHighContrastGameplayNPCType = {
    Player = 0,
    LeadNPC = 1,
    Companion = 2,
    Friendly = 3,
    Enemy = 4,
    EHighContrastGameplayNPCType_MAX = 5,
}

---@enum EHintConditionResult
local EHintConditionResult = {
    ConditionFalse = 0,
    ConditionTrue = 1,
    ConditionReset = 2,
    EHintConditionResult_MAX = 3,
}

---@enum EHogwartsNavmeshID
local EHogwartsNavmeshID = {
    Hogwarts_Navmesh_A = 0,
    Hogwarts_Navmesh_B = 1,
    Hogwarts_Navmesh_Count = 2,
    Hogwarts_Navmesh_MAX = 3,
}

---@enum EHomeworkType
local EHomeworkType = {
    HOMEWORK_TYPE_SPELL_CAST = 0,
    HOMEWORK_TYPE_SPELL_SUCCESS = 1,
    HOMEWORK_TYPE_POTION = 2,
    HOMEWORK_TYPE_POTION_CONSUMED = 3,
    HOMEWORK_TYPE_SANCTUARY_USE = 4,
    HOMEWORK_TYPE_PLANT = 5,
    HOMEWORK_TYPE_BEAST = 6,
    HOMEWORK_TYPE_COMPANION_MINUTES = 7,
    HOMEWORK_TYPE_BROOM = 8,
    HOMEWORK_TYPE_COMBAT = 9,
    HOMEWORK_TYPE_COLLECT = 10,
    HOMEWORK_TYPE_INVESTIGATE = 11,
    HOMEWORK_TYPE_MISC = 12,
    HOMEWORK_TYPE_CONJURATION = 13,
    HOMEWORK_TYPE_COUNT = 14,
    HOMEWORK_TYPE_MAX = 15,
}

---@enum EHoodPosition
local EHoodPosition = {
    Unset = 0,
    UP = 1,
    DOWN = 2,
    EHoodPosition_MAX = 3,
}

---@enum EIconButtonState
local EIconButtonState = {
    BS_Enabled = 0,
    BS_Disabled = 1,
    BS_Missing = 2,
    BS_NonExistant = 3,
    BS_MAX = 4,
}

---@enum EImpactTypes
local EImpactTypes = {
    None = 0,
    BroomFlight = 1,
    Default = 2,
    ExitWater = 3,
    Explosion = 4,
    Fire = 5,
    Flesh = 6,
    FloatingInWater = 7,
    Footfall = 8,
    Ice = 9,
    Lift = 10,
    Metal = 11,
    Slide = 12,
    SpellDefault = 13,
    SpellDamage = 14,
    SpellDamageLarge = 15,
    Stone = 16,
    Water = 17,
    Wood = 18,
    EImpactTypes_MAX = 19,
}

---@enum EInfirmaryPriority
local EInfirmaryPriority = {
    Systemic = 0,
    WorldEvent = 1,
    Mission = 2,
    Count = 3,
    EInfirmaryPriority_MAX = 4,
}

---@enum EInputDeviceUsed
local EInputDeviceUsed = {
    None = 0,
    KeyBoard_Mouse = 1,
    Gamepad = 2,
    EInputDeviceUsed_MAX = 3,
}

---@enum EInstallFeatures
local EInstallFeatures = {
    FullGame = 0,
    SonyContent = 1,
    HighDefTextures = 2,
    LanguagePack_EN = 3,
    LanguagePack_DE = 4,
    LanguagePack_ES = 5,
    LanguagePack_ESMX = 6,
    LanguagePack_FR = 7,
    LanguagePack_IT = 8,
    LanguagePack_JA = 9,
    LanguagePack_PT = 10,
    Count = 11,
    EInstallFeatures_MAX = 12,
}

---@enum EInstallManagerState
local EInstallManagerState = {
    Idle = 0,
    Installing = 1,
    InstallAvailable = 2,
    EInstallManagerState_MAX = 3,
}

---@enum EInstancedTrailMemberRotationConstraint
local EInstancedTrailMemberRotationConstraint = {
    ITMRC_NONE = 0,
    ITMRC_WHOLE = 1,
    ITMRC_HALF = 2,
    ITMRC_MAX = 3,
}

---@enum EInteractOffsetRules
local EInteractOffsetRules = {
    None = 0,
    PlayerToTarget = 1,
    TargetToPlayer = 2,
    TargetAxis = 3,
    TargetPlane = 4,
    EInteractOffsetRules_MAX = 5,
}

---@enum EInteractSensePriority
local EInteractSensePriority = {
    Lowest = 0,
    NPC = 1,
    Conversation = 2,
    ActiveCinematic = 3,
    PerformTask = 4,
    HideTrigger = 5,
    ScheduleTimeWindow = 6,
    Highest = 7,
    EInteractSensePriority_MAX = 8,
}

---@enum EInteractTurnToFaceRules
local EInteractTurnToFaceRules = {
    None = 0,
    PlayerToTarget = 1,
    TargetToPlayer = 2,
    TargetAxis = 3,
    EInteractTurnToFaceRules_MAX = 4,
}

---@enum EInteractUseTargetAxis
local EInteractUseTargetAxis = {
    XAxis = 0,
    YAxis = 1,
    ZAxis = 2,
    NegXAxis = 3,
    NegYAxis = 4,
    NegZAxis = 5,
    EInteractUseTargetAxis_MAX = 6,
}

---@enum EInteractUseTargetTracker
local EInteractUseTargetTracker = {
    FaceTracker = 0,
    AimAtTracker = 1,
    LookAtTracker = 2,
    EInteractUseTargetTracker_MAX = 3,
}

---@enum EInteractiveAction
local EInteractiveAction = {
    None = 0,
    Interact = 1,
    Auto = 2,
    Lock = 3,
    Unlock = 4,
    Freeze = 5,
    Thaw = 6,
    Wet = 7,
    Dry = 8,
    StartFire = 9,
    ExtinguishFire = 10,
    IncreaseScale = 11,
    DecreaseScale = 12,
    IncreaseScaleRestore = 13,
    DecreaseScaleRestore = 14,
    Highlight = 15,
    Unhighlight = 16,
    Invisible = 17,
    Visible = 18,
    Immobilized = 19,
    Mobilized = 20,
    Damage = 21,
    Destroy = 22,
    Cut = 23,
    Repair = 24,
    Stun = 25,
    Grown = 26,
    EInteractiveAction_MAX = 27,
}

---@enum EInteractiveState
local EInteractiveState = {
    Normal = 0,
    Any = 1,
    Locked = 2,
    Unlocked = 3,
    Open = 4,
    Closed = 5,
    Frozen = 6,
    Wet = 7,
    OnFire = 8,
    Invisible = 9,
    Immobilized = 10,
    ScaleIncreased = 11,
    ScaledDecreased = 12,
    MassIncreased = 13,
    MassDecreased = 14,
    Undamaged = 15,
    Damage_1 = 16,
    Damage_2 = 17,
    Damage_3 = 18,
    Destroyed = 19,
    Cut = 20,
    Custom_1 = 21,
    Custom_2 = 22,
    Custom_3 = 23,
    Custom_4 = 24,
    Custom_5 = 25,
    Custom_6 = 26,
    Custom_7 = 27,
    Custom_8 = 28,
    Custom_9 = 29,
    Failed = 30,
    Highlighted = 31,
    Dead = 32,
    Unsolved = 33,
    Solved = 34,
    Harvested = 35,
    StateCount = 36,
    None = 255,
    EInteractiveState_MAX = 256,
}

---@enum EIntroCheckpoint
local EIntroCheckpoint = {
    CP0 = 0,
    CP1 = 1,
    CP2 = 2,
    CP3 = 3,
    CP4 = 4,
    CP5 = 5,
    CP6 = 6,
    CP7 = 7,
    CP8 = 8,
    CP9 = 9,
    EIntroCheckpoint_MAX = 10,
}

---@enum EInventoryChangeReason
local EInventoryChangeReason = {
    INVENTORY_CHANGE_REASON_GENERIC = 0,
    INVENTORY_CHANGE_REASON_SOLD = 1,
    INVENTORY_CHANGE_REASON_STOLEN = 2,
    INVENTORY_CHANGE_REASON_PLANTED = 3,
    INVENTORY_CHANGE_REASON_CONSOLE_DEBUG = 4,
    INVENTORY_CHANGE_REASON_POPULATE_VENDOR = 5,
    INVENTORY_CHANGE_REASON_TRANSFERRED = 6,
    INVENTORY_CHANGE_REASON_DROPPED = 7,
    INVENTORY_CHANGE_REASON_GIFTED = 8,
    INVENTORY_CHANGE_REASON_ACTIVITY = 9,
    INVENTORY_CHANGE_REASON_CURRICULUM = 10,
    INVENTORY_CHANGE_REASON_LOOT = 11,
    INVENTORY_CHANGE_REASON_MAIL = 12,
    INVENTORY_CHANGE_REASON_MISSION = 13,
    INVENTORY_CHANGE_REASON_CREATURES = 14,
    INVENTORY_CHANGE_REASON_CRIME = 15,
    INVENTORY_CHANGE_REASON_HERBOLOGY = 16,
    INVENTORY_CHANGE_REASON_POTION_BREW = 17,
    INVENTORY_CHANGE_REASON_CONVERTER = 18,
    INVENTORY_CHANGE_REASON_CONJURATION = 19,
    INVENTORY_CHANGE_REASON_USED = 20,
    INVENTORY_CHANGE_REASON_FORAGED = 21,
    INVENTORY_CHANGE_REASON_PURCHASE = 22,
    INVENTORY_CHANGE_REASON_GEAR_TRANSFER = 23,
    INVENTORY_CHANGE_REASON_MAX = 24,
}

---@enum EInventoryObjectSpawnType
local EInventoryObjectSpawnType = {
    InventoryObjectInLevel = 0,
    InventoryObjectDropped = 1,
    InventoryObjectSpawner = 2,
    EInventoryObjectSpawnType_MAX = 3,
}

---@enum EInventoryObjectType
local EInventoryObjectType = {
    INVENTORY_OBJECT_TYPE_STANDARD = 0,
    INVENTORY_OBJECT_TYPE_BEAST = 1,
    INVENTORY_OBJECT_TYPE_NAMED_BEAST = 2,
    INVENTORY_OBJECT_TYPE_MAX = 3,
}

---@enum EInventoryQuality
local EInventoryQuality = {
    DUMMY = 0,
    NoQuality = 3,
    CountQuality = 1,
    EInventoryQuality_MAX = 4,
}

---@enum EInventorySortType
local EInventorySortType = {
    Inventory_Sort_Type = 0,
    Inventory_Sort_Newest = 1,
    Inventory_Sort_Value = 2,
    Inventory_Sort_Alphabetical = 3,
    Inventory_Sort_Count = 4,
    Inventory_Sort_MAX = 5,
}

---@enum EInventoryTabCategory
local EInventoryTabCategory = {
    DefaultInventory = 0,
    QuestItems = 1,
    EInventoryTabCategory_MAX = 2,
}

---@enum EItemConversionState
local EItemConversionState = {
    Available = 0,
    Converting = 1,
    Converted = 2,
    Pending = 3,
    EItemConversionState_MAX = 4,
}

---@enum EJumpControlType
local EJumpControlType = {
    Velocity = 0,
    Speed = 1,
    EJumpControlType_MAX = 2,
}

---@enum EJumpType
local EJumpType = {
    StrafeJump = 0,
    ShortJump = 1,
    LongJump = 2,
    SprintJump = 3,
    EJumpType_MAX = 4,
}

---@enum EKeyLayout
local EKeyLayout = {
    QWERTY = 0,
    QWERTZ = 1,
    AZERTY = 2,
    QWERTY_AZERTY = 3,
    EKeyLayout_MAX = 4,
}

---@enum EKnowledgeAction
local EKnowledgeAction = {
    AstronomyAltar = 0,
    BeastCaptured = 1,
    BreedingAssigned = 2,
    BrewPotion = 3,
    CalloutReference = 4,
    Collect = 5,
    Conjure = 6,
    ConversationReference = 7,
    ConversationReward = 8,
    CraftTrait = 9,
    Damaged = 10,
    DemiguiseStatue = 11,
    Discover = 12,
    DuelTechniqueCompleted = 13,
    GatherBeastByproduct = 14,
    GatherPlant = 15,
    HappinessFromFeed = 16,
    HappinessFromPetting = 17,
    HappinessFromPlaying = 18,
    Interact = 19,
    Investigation = 20,
    Killed = 21,
    Mission = 22,
    MissionDayOne = 23,
    MissionJumbo = 24,
    MissionLarge = 25,
    MissionMedium = 26,
    MissionSmall = 27,
    Perceived = 28,
    Received = 29,
    SocialConversation = 30,
    SocialGiveGift = 31,
    SpellCast = 32,
    TutorialUnlock = 33,
    UseFertilizer = 34,
    NamedEnemyKilled = 35,
    HouseChestOpened = 36,
    GoldChestOpened = 37,
    AncientMagicHotSpot = 38,
    MerlinTrialCompleted = 39,
    RecipeLearned = 40,
    UpgradeStats = 41,
    EKnowledgeAction_MAX = 42,
}

---@enum EKnowledgeApplicability
local EKnowledgeApplicability = {
    Always = 0,
    OnlyIfUnknown = 1,
    EKnowledgeApplicability_MAX = 2,
}

---@enum EKnowledgeLevel
local EKnowledgeLevel = {
    Unknown = 0,
    Level0 = 1,
    Level1 = 2,
    Level2 = 3,
    Level3 = 4,
    Level4 = 5,
    Level5 = 6,
    Completed = 7,
    Secret = 8,
    Unspecified = 9,
    EKnowledgeLevel_MAX = 10,
}

---@enum EKnowledgeTurnInType
local EKnowledgeTurnInType = {
    SingleKnowledge = 0,
    ScholarSpell = 1,
    Location = 2,
    Student = 3,
    EKnowledgeTurnInType_MAX = 4,
}

---@enum ELeftArmPriority
local ELeftArmPriority = {
    None = 0,
    LowestPriority = 1,
    UpperBodyIdle = 2,
    UpperBodyFlourish = 3,
    FullBodyUsage = 4,
    UpperBodyUsage = 5,
    Cinematic = 6,
    HighestPriority = 7,
    ELeftArmPriority_MAX = 8,
}

---@enum ELeftArmState
local ELeftArmState = {
    None = 0,
    EquipItem = 1,
    HoldItem = 2,
    PlayExecuteMotion = 3,
    PlayHandOnlyMotion = 4,
    AllowMotionTakeover = 5,
    StopMotionOnly = 6,
    StopMotionAndHideItem = 7,
    HideItem = 8,
    ELeftArmState_MAX = 9,
}

---@enum ELevelComparison
local ELevelComparison = {
    None = 0,
    MinimumDifference = 1,
    MaximumDifference = 2,
    WithinRangedOf = 3,
    OutsideRangeOf = 4,
    ELevelComparison_MAX = 5,
}

---@enum ELightClippingPlanesFilterType
local ELightClippingPlanesFilterType = {
    None = 0,
    OnlyNonInverted = 1,
    OnlyInverted = 2,
    ELightClippingPlanesFilterType_MAX = 3,
}

---@enum ELightClippingVolumeFilterType
local ELightClippingVolumeFilterType = {
    None = 0,
    OnlyInside = 1,
    OnlyOutside = 2,
    ELightClippingVolumeFilterType_MAX = 3,
}

---@enum ELineRule_LayeredAnimationLipSyncIntensityType
local ELineRule_LayeredAnimationLipSyncIntensityType = {
    LowToHigh = 0,
    High = 1,
    MediumToHigh = 2,
    Medium = 3,
    LowToMedium = 4,
    Low = 5,
    ELineRule_MAX = 6,
}

---@enum ELineRule_LayeredAnimationStartFromType
local ELineRule_LayeredAnimationStartFromType = {
    DialogueLineStart = 0,
    LipsyncPause = 1,
    LipsyncMe = 2,
    LipsyncYou = 3,
    LipsyncQuickly = 4,
    LipsyncAffirmative = 5,
    LipsyncNegative = 6,
    LipsyncHere = 7,
    LipsyncThere = 8,
    LipsyncSuperlative = 9,
    LipsyncGreet = 10,
    LipsyncLaugh = 11,
    LipsyncThink = 12,
    ToneChanges = 13,
    ToneLowToHigh = 14,
    ToneHighToLow = 15,
    ELineRule_MAX = 16,
}

---@enum ELineRule_LayeredAnimationType
local ELineRule_LayeredAnimationType = {
    OnlyWhenSpeaking = 0,
    OnlyWhenNotSpeaking = 1,
    Whenever = 2,
    ELineRule_MAX = 3,
}

---@enum ELineTraceTestActorCollisionChannel
local ELineTraceTestActorCollisionChannel = {
    WorldStatic = 0,
    WorldDynamic = 1,
    Pawn = 2,
    Visibility = 3,
    Camera = 4,
    PhysicsBody = 5,
    Vehicle = 6,
    Destructible = 7,
    ShallowWater = 8,
    SphereTracer = 9,
    LedgeTrace = 10,
    Spell = 11,
    Station = 12,
    DeepWater = 13,
    Weapon = 14,
    WebbedObject = 15,
    Audio_Volume = 16,
    GameVolume = 17,
    FootIK = 18,
    PlayerOnly = 19,
    FluidSim = 20,
    MapTrace = 21,
    InteractBlocker = 22,
    NavMarkup = 23,
    Station_Static = 24,
    AimConeCheck = 25,
    EdgeCheck = 26,
    ELineTraceTestActorCollisionChannel_MAX = 27,
}

---@enum ELineTraceTestActorObjectTypeQuery
local ELineTraceTestActorObjectTypeQuery = {
    WorldStatic = 0,
    WorldDynamic = 1,
    Pawn = 2,
    PhysicsBody = 3,
    Vehicle = 4,
    Destructible = 5,
    ShallowWater = 6,
    SphereTracer = 7,
    Spell = 8,
    Station = 9,
    DeepWater = 10,
    Weapon = 11,
    WebbedObject = 12,
    Audio_Volume = 13,
    GameVolume = 14,
    PlayerOnly = 15,
    FluidSim = 16,
    NavMarkup = 17,
    Station_Static = 18,
    ELineTraceTestActorObjectTypeQuery_MAX = 19,
}

---@enum ELineTraceTestActorQueryMobilityType
local ELineTraceTestActorQueryMobilityType = {
    Any = 0,
    Static = 1,
    Dynamic = 2,
    ELineTraceTestActorQueryMobilityType_MAX = 3,
}

---@enum ELineTraceTestActorTraceType
local ELineTraceTestActorTraceType = {
    Channel = 0,
    ObjectType = 1,
    Profile = 2,
    ELineTraceTestActorTraceType_MAX = 3,
}

---@enum ELoadingScreenLocation
local ELoadingScreenLocation = {
    LSL_None = 0,
    LSL_Frontend = 1,
    LSL_Overland = 2,
    LSL_Hogwarts = 3,
    LSL_Hogsmeade = 4,
    LSL_Sanctuary = 5,
    LSL_Dungeon = 6,
    LSL_MAX = 7,
}

---@enum ELocatorState
local ELocatorState = {
    WaitingToSpawn = 0,
    FailedToSpawn = 1,
    ActiveEvent = 2,
    StreamWithLevel = 3,
    Completed = 4,
    ELocatorState_MAX = 5,
}

---@enum ELockDifficulty
local ELockDifficulty = {
    Level_1 = 0,
    Level_2 = 1,
    Level_3 = 2,
    NeedsKey = 3,
    ELockDifficulty_MAX = 4,
}

---@enum ELockLevel
local ELockLevel = {
    LockLevel1 = 0,
    LockLevel2 = 1,
    LockLevel3 = 2,
    ELockLevel_MAX = 3,
}

---@enum ELockOnReticleType
local ELockOnReticleType = {
    None = 0,
    LockedOn = 1,
    AimMode = 2,
    Both = 3,
    Retaliate = 4,
    ELockOnReticleType_MAX = 5,
}

---@enum ELockStates
local ELockStates = {
    Unlocked = 0,
    Locked = 1,
    LastLockState = 2,
    ELockStates_MAX = 3,
}

---@enum ELoginResponse
local ELoginResponse = {
    SuccessNoWWID = 0,
    SuccessAndWWID = 1,
    Incomplete = 2,
    SilentFailure = 3,
    Invalid = 4,
    Failure = 5,
    ELoginResponse_MAX = 6,
}

---@enum ELowLatencyMode
local ELowLatencyMode = {
    Off = 0,
    Nvidia_Reflex_LowLatency = 1,
    Nvidia_Reflex_LowLatencyWithBoost = 2,
    Intel_XeLL_LowLatency = 3,
    AMD_AntiLag_On = 4,
    Nvidia_Reflex_Min = 1,
    Nvidia_Reflex_Max = 2,
    Intel_XeLL_Min = 3,
    Intel_XeLL_Max = 3,
    AMD_AntiLag_Min = 4,
    AMD_AntiLag_Max = 4,
    ELowLatencyMode_MAX = 5,
}

---@enum ELumosContactShadows
local ELumosContactShadows = {
    None = 0,
    WorldSpace = 1,
    DepthUnits = 2,
    ELumosContactShadows_MAX = 3,
}

---@enum ELumosLightingScenario
local ELumosLightingScenario = {
    Legacy = 0,
    CheapSpot = 1,
    SanderRework = 2,
    ELumosLightingScenario_MAX = 3,
}

---@enum ELumosLightingScenarioMask
local ELumosLightingScenarioMask = {
    Legacy = 0,
    CheapSpot = 1,
    SanderRework = 2,
    ELumosLightingScenarioMask_MAX = 3,
}

---@enum EMailState
local EMailState = {
    MAIL_STATE_PENDING = 0,
    MAIL_STATE_ACTIVE = 1,
    MAIL_STATE_ARCHIVED = 2,
    MAIL_STATE_DELETED_BUT_NEEDED_BY_MISSION = 3,
    MAIL_STATE_MAX = 4,
}

---@enum EMailType
local EMailType = {
    MAIL_TYPE_LETTER = 0,
    MAIL_TYPE_BULLETIN_BOARD_POST = 1,
    MAIL_TYPE_HOGSMEADE_POST = 2,
    MAIL_TYPE_THIEF_POST = 3,
    MAIL_TYPE_POACHER_POST = 4,
    MAIL_TYPE_SHOP_POST = 5,
    MAIL_TYPE_POSTER = 6,
    MAIL_TYPE_COUNT = 7,
    MAIL_TYPE_MAX = 8,
}

---@enum EManagedNPCHeadTrackingPriority
local EManagedNPCHeadTrackingPriority = {
    Lowest = 0,
    PointOfInterest = 1,
    PerformTask = 2,
    AttackTarget = 3,
    Highest = 4,
    Forced = 5,
    EManagedNPCHeadTrackingPriority_MAX = 6,
}

---@enum EMap3DState
local EMap3DState = {
    IDLE = 0,
    START = 1,
    DISCOVER = 2,
    TRANSITION_TO_GROUP = 3,
    GROUP = 4,
    TRANSITION_TO_SINGLE = 5,
    SINGLE = 6,
    TRANSITION_TO_CASTLE = 7,
    CASTLE = 8,
    FASTTRAVEL = 9,
    EMap3DState_MAX = 10,
}

---@enum EMapFadeState
local EMapFadeState = {
    MAP_FADE_STATE_IDLE = 0,
    MAP_FADE_STATE_FADING_OUT = 1,
    MAP_FADE_STATE_FADING_IN = 2,
    MAP_FADE_STATE_FADING_TRANSITION = 3,
    MAP_FADE_STATE_ZOOMING_IN = 4,
    MAP_FADE_STATE_ZOOMING_OUT = 5,
    MAP_FADE_STATE_FADED_OUT = 6,
    MAP_FADE_SCREEN_WIDGET_IN = 7,
    MAP_FADE_SCREEN_WIDGET_OUT = 8,
    MAP_FADE_TENT_FADING_OUT = 9,
    MAP_FADE_TENT_FADING_IN = 10,
    MAP_FADE_TENT_WAITING = 11,
    MAP_WIDGET_STATE_FADING_OUT = 12,
    MAP_WIDGET_STATE_FADING_IN = 13,
    MAP_FADE_STATE_PULSE = 14,
    MAP_MAX = 15,
}

---@enum EMapFilterTypes
local EMapFilterTypes = {
    MAP_FILTER_TYPE_NONE = 0,
    MAP_FILTER_TYPE_GENERAL = 1,
    MAP_FILTER_TYPE_BEASTS = 2,
    MAP_FILTER_TYPE_PLANTS = 3,
    MAP_FILTER_TYPE_MAX = 4,
}

---@enum EMapIconAnimationBinding
local EMapIconAnimationBinding = {
    MAP_ICON_ANIMATION_BINDING_TRANSLATION = 0,
    MAP_ICON_ANIMATION_BINDING_SCALE = 1,
    MAP_ICON_ANIMATION_BINDING_MAX = 2,
}

---@enum EMapIconAnimationLoopType
local EMapIconAnimationLoopType = {
    MAP_ICON_ANIMATION_LOOP_TYPE_ONE_SHOT = 0,
    MAP_ICON_ANIMATION_LOOP_TYPE_LOOPING = 1,
    MAP_ICON_ANIMATION_LOOP_TYPE_BOUNCE = 2,
    MAP_ICON_ANIMATION_LOOP_TYPE_MAX = 3,
}

---@enum EMapIconAnimationSetType
local EMapIconAnimationSetType = {
    MAP_ICON_ANIMATION_SET_TYPE_APPEND = 0,
    MAP_ICON_ANIMATION_SET_TYPE_DIRECT = 1,
    MAP_ICON_ANIMATION_SET_TYPE_LERP = 2,
    MAP_ICON_ANIMATION_SET_TYPE_MAX = 3,
}

---@enum EMapIconAnimationStopType
local EMapIconAnimationStopType = {
    MAP_ICON_ANIMATION_STOP_TYPE_ALL = 0,
    MAP_ICON_ANIMATION_STOP_TYPE_POSITION_ONLY = 1,
    MAP_ICON_ANIMATION_STOP_TYPE_SCALE_ONLY = 2,
    MAP_ICON_ANIMATION_STOP_TYPE_MAX = 3,
}

---@enum EMapIconInstanceTextureType
local EMapIconInstanceTextureType = {
    MAP_ICON_INSTANCE_TEXTURE_TYPE_TEXTURE = 0,
    MAP_ICON_INSTANCE_TEXTURE_TYPE_DOT = 1,
    MAP_ICON_INSTANCE_TEXTURE_TYPE_DIAMOND = 2,
    MAP_ICON_INSTANCE_TEXTURE_TYPE_QUESTIONMARK = 3,
    MAP_ICON_INSTANCE_TEXTURE_TYPE_ALTERNATE = 4,
    MAP_ICON_INSTANCE_TEXTURE_TYPE_INVALID = 5,
    MAP_ICON_INSTANCE_TEXTURE_TYPE_MAX = 6,
}

---@enum EMapIconState
local EMapIconState = {
    MAP_ICON_STATE_HOVER = 0,
    MAP_ICON_STATE_FT_PULSE = 1,
    MAP_ICON_STATE_PLAYER_BOUNCE = 2,
    MAP_ICON_STATE_NEWLY_DISCOVERED = 3,
    MAP_ICON_STATE_NEAREST_FT = 4,
    MAP_ICON_STATE_STOP_ANIMATION = 5,
    MAP_ICON_STATE_STOP_ANIMATION_POSITION_ONLY = 6,
    MAP_ICON_STATE_STOP_ANIMATION_SCALE_ONLY = 7,
    MAP_ICON_STATE_IDLE = 8,
    MAP_ICON_STATE_INVALID = 9,
    MAP_ICON_STATE_MAX = 10,
}

---@enum EMapInstanceIconType
local EMapInstanceIconType = {
    MAP_INSTANCE_ICON_TYPE_NONE = 0,
    MAP_INSTANCE_ICON_TYPE_ICON = 1,
    MAP_INSTANCE_ICON_TYPE_PERCEPTION = 2,
    MAP_INSTANCE_ICON_TYPE_AREA_BEACON_CIRCLE = 3,
    MAP_INSTANCE_ICON_TYPE_AREA_BEACON_ICON = 4,
    MAP_INSTANCE_ICON_TYPE_AREA_BEACON_OUTLINE = 5,
    MAP_INSTANCE_ICON_TYPE_PATH = 6,
    MAP_INSTANCE_ICON_TYPE_AUTHORITY = 7,
    MAP_INSTANCE_ICON_TYPE_ACCESSIBILITY_AUDIO_CUE = 9,
    MAP_INSTANCE_ICON_TYPE_ACCESSIBILITY_EFFECT = 9,
    MAP_INSTANCE_ICON_TYPE_ENEMY = 10,
    MAP_INSTANCE_ICON_TYPE_MAX = 11,
}

---@enum EMapLocTypes
local EMapLocTypes = {
    MAP_LOC_KEY_NONE = 0,
    MAP_LOC_KEY_ZOOM = 1,
    MAP_LOC_KEY_NEXT_MAP = 2,
    MAP_LOC_KEY_TRACK_QUEST = 3,
    MAP_LOC_KEY_UNTRACK_QUEST = 4,
    MAP_LOC_KEY_SET_WAYPOINT = 5,
    MAP_LOC_KEY_UNSET_WAYPOINT = 6,
    MAP_LOC_KEY_TRAVEL = 7,
    MAP_LOC_KEY_TRAVEL_CLOSEST = 8,
    MAP_LOC_KEY_BACK = 9,
    MAP_LOC_KEY_SELECT = 10,
    MAP_LOC_KEY_MOVE_CAMERA = 11,
    MAP_LOC_KEY_FILTER = 12,
    MAP_LOC_KEY_ROTATE = 13,
    MAP_LOC_GOTO_QUEST_LOG = 14,
    MAP_LOC_GOTO_QUEST_LOG_MNK = 15,
    MAP_LOC_KEY_FAST_TRAVEL_LIST_DO_FAST_TRAVEL = 16,
    MAP_LOC_KEY_FAST_TRAVEL_LIST_DO_SELECT_REGION = 17,
    MAP_LOC_KEY_WAIT = 18,
    MAP_LOC_KEY_TRAVEL_MOUSE_KBD = 19,
    MAP_LOC_KEY_ROTATE_MOUSE_KBD = 20,
    MAP_LOC_KEY_FAST_TRAVEL_LIST_DO_FAST_TRAVEL_MOUSE_KBD = 21,
    MAP_LOC_MAX = 22,
}

---@enum EMapPlayerHouseTypes
local EMapPlayerHouseTypes = {
    MAP_PLAYER_HOUSE_GRYFFINDOR = 0,
    MAP_PLAYER_HOUSE_SLYTHERIN = 1,
    MAP_PLAYER_HOUSE_HUFFLEPUFF = 2,
    MAP_PLAYER_HOUSE_RAVENCLAW = 3,
    MAP_PLAYER_HOUSE_MAX = 4,
}

---@enum EMapPostFadeState
local EMapPostFadeState = {
    MAP_POST_FADE_STATE_NONE = 0,
    MAP_POST_FADE_STATE_NEW_MAP = 1,
    MAP_POST_FADE_STATE_CLOSE = 2,
    MAP_POST_FADE_STATE_MAX = 3,
}

---@enum EMapRegionType
local EMapRegionType = {
    MAP_REGION_TYPE_UNDEFINED = 0,
    MAP_REGION_TYPE_ROOM = 1,
    MAP_REGION_TYPE_FLOOR = 2,
    MAP_REGION_TYPE_STAIRS = 3,
    MAP_REGION_TYPE_TOWER = 4,
    MAP_REGION_TYPE_COUNT = 5,
    MAP_REGION_TYPE_MAX = 6,
}

---@enum EMapScreenFXType
local EMapScreenFXType = {
    MAP_FX_TYPE_NONE = 0,
    MAP_FX_TYPE_ALL = 1,
    MAP_FX_TYPE_ACTIVE = 2,
    MAP_FX_TYPE_INACTIVE = 3,
    MAP_FX_TYPE_MAX = 4,
}

---@enum EMapScreenMouseButtonID
local EMapScreenMouseButtonID = {
    MOUSE_BUTTON_LEFT = 0,
    MOUSE_BUTTON_RIGHT = 1,
    MOUSE_BUTTON_WHEEL = 2,
    MOUSE_BUTTON_MAX = 3,
}

---@enum EMapStackedIconState
local EMapStackedIconState = {
    MAP_STACKED_ICON_STATE_NONE = 0,
    MAP_STACKED_ICON_STATE_IS_HOVERED = 1,
    MAP_STACKED_ICON_STATE_TRIGGER_CHOOSER = 2,
    MAP_STACKED_ICON_STATE_ANIMATE_CHOOSER = 3,
    MAP_STACKED_ICON_STATE_ANIMATE_CHOOSER_REVERSE = 4,
    MAP_STACKED_ICON_STATE_IN_CHOOSER = 5,
    MAP_STACKED_ICON_STATE_MAX = 6,
}

---@enum EMapToolTipTypes
local EMapToolTipTypes = {
    MAP_TOOL_TIP_TYPE_UNSET = 0,
    MAP_TOOL_TIP_TYPE_DUNGEON = 1,
    MAP_TOOL_TIP_TYPE_FAST_TRAVEL = 2,
    MAP_TOOL_TIP_TYPE_CASTLE = 3,
    MAP_TOOL_TIP_TYPE_HAMLET = 4,
    MAP_TOOL_TIP_TYPE_BANDIT_CAMP = 5,
    MAP_TOOL_TIP_TYPE_WAY_MARKER = 6,
    MAP_TOOL_TIP_TYPE_PLAYER_MARKER = 7,
    MAP_TOOL_TIP_TYPE_FILTER_REGION = 8,
    MAP_TOOL_TIP_TYPE_HOGWARTS = 9,
    MAP_TOOL_TIP_TYPE_HOGSMEADE = 10,
    MAP_TOOL_TIP_TYPE_ENEMY_LOCATION = 11,
    MAP_TOOL_TIP_TYPE_MISSION = 12,
    MAP_TOOL_TIP_TYPE_STACK = 13,
    MAP_TOOL_TIP_TYPE_MAX = 14,
}

---@enum EMapTransitionStyle
local EMapTransitionStyle = {
    Short = 0,
    Long = 1,
    EMapTransitionStyle_MAX = 2,
}

---@enum EMapTypes
local EMapTypes = {
    MAP_TYPE_NONE = 0,
    MAP_TYPE_OVERLAND = 1,
    MAP_TYPE_DUNGEON = 2,
    MAP_TYPE_HOGWARTS = 3,
    MAP_TYPE_HOGSMEADE = 4,
    MAP_TYPE_SANCTUARY = 5,
    MAP_TYPE_TENT = 6,
    MAP_TYPE_TUTORIAL = 7,
    MAP_TYPE_MAX = 8,
}

---@enum EMapZoomTypes
local EMapZoomTypes = {
    MAP_TOOL_TIP_TYPE_INVALID = 0,
    MAP_TOOL_TIP_TYPE_TIER1 = 1,
    MAP_TOOL_TIP_TYPE_TIER2 = 2,
    MAP_TOOL_TIP_TYPE_TIER3 = 3,
    MAP_TOOL_TIP_TYPE_TIER4 = 4,
    MAP_TOOL_TIP_TYPE_TIER5 = 5,
    MAP_TOOL_TIP_TYPE_MAX = 6,
}

---@enum EMarkupType
local EMarkupType = {
    NONE = 0,
    ACCIO_IMPULSE_SCALE = 1,
    ACCIO_TRANSITION_TO_WINGARDIUM = 2,
    ACCIO_INTERACT_ON = 3,
    ACCIO_INVULNERABLE_TIME = 4,
    ACCIO_HOVER_HEIGHT_OFFSET = 5,
    SET_ARRESTO_TIME_DILATION = 6,
    ARRESTO_DURATION = 7,
    BUMP_SOUND_THRESHOLD_OVERRIDE = 8,
    COLLISION_ADDITIONAL_CHARACTER_DAMAGE = 9,
    COLLISION_DAMAGE_SCALE = 10,
    COLLISION_DAMAGE_RECEIVED_SCALE = 11,
    CONFUNDO_DURATION = 12,
    CRUCIO_DURATION = 13,
    DEPULSO_IMPULSE_SCALE = 14,
    DEPULSO_LAUNCH_ANGLE = 15,
    DEPULSO_GUARANTEE_DESTROYED = 16,
    DESCENDO_DAMAGE_DELAY = 17,
    DIRECTIONAL_DESTRUCTION_FORCE_ADDITION = 18,
    DIRECTIONAL_DESTRUCTION_FORCE_SCALE = 19,
    RADIAL_DESTRUCTION_FORCE_ADDITION = 20,
    FALL_DAMAGE_MAXIMUM_PERCENT = 21,
    FIRE_DAMAGE_DELAY = 22,
    FIRE_DAMAGE_DELAY_CRITICAL = 23,
    FIRE_DEATH_IMPACT_INHIBITOR = 24,
    FIRE_INITIAL_RADIUS = 25,
    FIRE_FINAL_RADIUS = 26,
    PERK_LOW_HEALTH_PERFORM_FINISHER = 27,
    GLACIUS_DURATION = 28,
    HEALTH_MINIMUM = 29,
    IMPERIO_DURATION = 30,
    LEVIOSO_HOVER_HEIGHT_ADJ = 31,
    LEVIOSO_IGNORE_MASS_LIMIT = 32,
    LEVIOSO_NO_ROTATION = 33,
    LEVIOSO_ROTATION_PITCH = 34,
    LEVIOSO_ROTATION_ROLL = 35,
    LEVIOSO_ROTATION_YAW = 36,
    LEVIOSO_DURATION = 37,
    OPPUGNO_USE_PROJECTILE_REPLACEMENT = 38,
    PETRIFICUS_DURATION = 39,
    PROVIDES_COVER = 40,
    PUSH_FORWARD_VECTOR_X = 41,
    PUSH_FORWARD_VECTOR_Y = 42,
    PUSH_FORWARD_VECTOR_Z = 43,
    PUSH_IMPULSE_SCALE = 44,
    PROTEGO_PERFECT_DAMAGE_SCALE = 45,
    REVELIO_DEPTH_OVERRIDE = 46,
    REVELIO_DISTANCE_OVERRIDE = 47,
    REVELIO_HILIGHT_AS_ENEMY = 48,
    REVELIO_HIDDEN_IGNORE_NEAR_CHECK = 49,
    REVELIO_HIDDEN_IGNORE_LOOKAT_CHECK = 50,
    REVELIO_HIDDEN_DISABLED = 51,
    REVELIO_THRU_WALLS = 52,
    REPAIR_TARGETABLE = 53,
    REPAIR_AUTO_DESTROY_COMPONENT = 54,
    STUPEFY_STUN_TIME = 55,
    SPELLS_USE_CENTER_FOR_BEAM_TARGET_FX = 56,
    SPELLS_USE_CENTER_FOR_IMPACT_FX = 57,
    TARGETING_WEIGHT = 58,
    TARGETING_RADIUS = 59,
    TARGETING_TOP_OFFSET = 60,
    TARGETING_BOTTOM_OFFSET = 61,
    TARGETING_ALLOW_STENCIL = 62,
    TARGETING_IGNORE_LOS = 63,
    TARGETING_COMBAT_MODE = 64,
    TRANSFORMATION_DURATION = 65,
    TRANSFORMATION_ZERO_ORIENTATION = 66,
    TRANSFORMATION_APPLY_FORCE = 67,
    VELOCITY_TRACKER_DURATION_SCALE = 68,
    WINGARDIUM_HOLD_AT_END_TIME = 69,
    WINGARDIUM_IGNORE_MASS_LIMIT = 70,
    WINGARDIUM_ONLY_AFFECT_HIT_COMPONENT = 71,
    WINGARDIUM_OVERRIDE_FACE_CAMERA = 72,
    WINGARDIUM_OVERRIDE_DPAD_LEFT = 73,
    WINGARDIUM_OVERRIDE_DPAD_RIGHT = 74,
    WINGARDIUM_INITIALLY_FACE_TARGET = 75,
    WINGARDIUM_BOUNDS_SCALE = 76,
    WINGARDIUM_BOUNDS_MAX = 77,
    WINGARDIUM_ANGULAR_IMPULSE_SCALE = 78,
    WINGARDIUM_LINEAR_IMPULSE_SCALE = 79,
    EMarkupType_MAX = 80,
}

---@enum EMaskContainerType
local EMaskContainerType = {
    Masked = 0,
    Unmasked = 1,
    EMaskContainerType_MAX = 2,
}

---@enum EMenuReaderInterruptType
local EMenuReaderInterruptType = {
    InterruptAll = 0,
    InterruptSelf = 1,
    InterruptSpecifiedOwner = 2,
    InterruptNone = 3,
    EMenuReaderInterruptType_MAX = 4,
}

---@enum EMiniMapIconSize
local EMiniMapIconSize = {
    MINIMAP_ICONSIZE_SMALL = 0,
    MINIMAP_ICONSIZE_NORMAL = 1,
    MINIMAP_ICONSIZE_LARGE = 2,
    MINIMAP_ICONSIZE_MAX = 3,
}

---@enum EMiniMapLevels
local EMiniMapLevels = {
    MINI_MAP_LEVEL_OVERLAND = 0,
    MINI_MAP_LEVEL_HOGWARTS = 1,
    MINI_MAP_LEVEL_HOGSMEADE = 2,
    MINI_MAP_LEVEL_DUNGEON = 3,
    MINI_MAP_LEVEL_TUTORIAL = 4,
    MINI_MAP_LEVEL_SANCTUARY = 5,
    MINI_MAP_LEVEL_TENTS = 6,
    MINI_MAP_LEVEL_NONE = 7,
    MINI_MAP_LEVEL_MAX = 8,
}

---@enum EMiniMapSizeOption
local EMiniMapSizeOption = {
    MINIMAP_SIZE_OFF = 0,
    MINIMAP_SIZE_SMALL = 1,
    MINIMAP_SIZE_NORMAL = 2,
    MINIMAP_SIZE_LARGE = 3,
    MINIMAP_SIZE_MAX = 4,
}

---@enum EMiniMapTextureQuadrant
local EMiniMapTextureQuadrant = {
    MINIMAP_TEXTURE_QUADRANT_LEFT = 0,
    MINIMAP_TEXTURE_QUADRANT_RIGHT = 1,
    MINIMAP_TEXTURE_QUADRANT_TOP = 2,
    MINIMAP_TEXTURE_QUADRANT_BOTTOM = 3,
    MINIMAP_TEXTURE_QUADRANT_TOP_RIGHT = 4,
    MINIMAP_TEXTURE_QUADRANT_BOTTOM_LEFT = 5,
    MINIMAP_TEXTURE_QUADRANT_TOP_LEFT = 6,
    MINIMAP_TEXTURE_QUADRANT_BOTTOM_RIGHT = 7,
    MINIMAP_TEXTURE_QUADRANT_MAX = 8,
}

---@enum EMinimalLockState
local EMinimalLockState = {
    Unlocked = 0,
    Locked = 1,
    EMinimalLockState_MAX = 2,
}

---@enum EMinimapInstanceIconFlags
local EMinimapInstanceIconFlags = {
    MAP_INSTANCE_ICON_FLAG_ICON = 0,
    MAP_INSTANCE_ICON_FLAG_UP_ARROW = 2,
    MAP_INSTANCE_ICON_FLAG_DOWN_ARROW = 4,
    MAP_INSTANCE_ICON_FLAG_HIGHLIGHT = 8,
    MAP_INSTANCE_ICON_FLAG_MAX = 9,
}

---@enum EMissionComplete
local EMissionComplete = {
    Complete = 0,
    NotComplete = 1,
    EMissionComplete_MAX = 2,
}

---@enum EMissionLine
local EMissionLine = {
    Main = 0,
    Side = 1,
    Assignment = 2,
    Relationship = 3,
    Utility = 4,
    Skip = 5,
    DevelopmentOnly = 6,
    EMissionLine_MAX = 7,
}

---@enum EMissionStatus
local EMissionStatus = {
    PreActive = 0,
    Activating = 1,
    Active = 2,
    PostActive = 3,
    Complete = 4,
    Failed = 5,
    Invalid = 6,
    Count = 7,
    EMissionStatus_MAX = 8,
}

---@enum EMissionTabType
local EMissionTabType = {
    TABTYPE_ALL = 0,
    TABTYPE_MAIN = 1,
    TABTYPE_SIDE = 2,
    TABTYPE_ASSIGNMENT = 3,
    TABTYPE_RELATIONSHIP = 4,
    TABTYPE_COMPLETE = 5,
    TABTYPE_MAX = 6,
}

---@enum EMobilityState
local EMobilityState = {
    None = 0,
    Combat = 1,
    Stealth = 2,
    FlyingBroom = 3,
    EMobilityState_MAX = 4,
}

---@enum EMountCombatChargeState
local EMountCombatChargeState = {
    Inactive = 0,
    IntoTransition = 1,
    ChargeLoop = 2,
    OutOfTransition = 3,
    EMountCombatChargeState_MAX = 4,
}

---@enum EMountErrorMessages
local EMountErrorMessages = {
    Error_EnteringNoFlyZone = 0,
    Error_EnteringNoGroundZone = 1,
    Error_EnteringNoMountsZone = 2,
    Error_InsideNoDismountZone = 3,
    Error_SpeedUpUnavailable = 4,
    Error_LandingUnavailable = 5,
    Error_MAX = 6,
}

---@enum EMountFlyingGait
local EMountFlyingGait = {
    Stop = 0,
    Hover = 1,
    Slow = 2,
    Fast = 3,
    Num = 4,
    EMountFlyingGait_MAX = 5,
}

---@enum EMountFlyingSpeedLimit
local EMountFlyingSpeedLimit = {
    Hover = 0,
    Slow = 1,
    EMountFlyingSpeedLimit_MAX = 2,
}

---@enum EMountGroundSpeedLimit
local EMountGroundSpeedLimit = {
    Walk = 0,
    Jog = 1,
    EMountGroundSpeedLimit_MAX = 2,
}

---@enum EMountMovementState
local EMountMovementState = {
    Ground = 0,
    Flying = 1,
    Takeoff = 2,
    Landing = 3,
    EMountMovementState_MAX = 4,
}

---@enum EMountTransitionAnimState
local EMountTransitionAnimState = {
    Wait = 0,
    Mount_Start = 1,
    Mount_Cancel = 2,
    Mount_Standing = 3,
    Mount_Trot = 4,
    Dismount_Standing_Start = 5,
    Dismount_Trot_Start = 6,
    Dismount_Standing = 7,
    Dismount_Trot = 8,
    Dismount_End = 9,
    Dismount_Knockdown = 10,
    EMountTransitionAnimState_MAX = 11,
}

---@enum EMountTypes
local EMountTypes = {
    Broom_Flying = 0,
    Broom_Ground = 1,
    Graphorn_Ground = 2,
    Hippogriff_Flying = 3,
    Hippogriff_Ground = 4,
    Niffler_Ground = 5,
    Avatar_Ground = 6,
    EMountTypes_MAX = 7,
}

---@enum EMounted_AIState
local EMounted_AIState = {
    Stationary = 0,
    MovingToPathNode = 1,
    WaitingAtPathNode = 2,
    FinishWaitingAtPathNode = 3,
    MovingToSpline = 4,
    FollowingSpline = 5,
    EMounted_MAX = 6,
}

---@enum EMoveDirectionRule
local EMoveDirectionRule = {
    ForwardVector = 0,
    DesiredDirection = 1,
    FacingTracker = 2,
    ForwardVector_NEGATED = 3,
    DesiredDirection_NEGATED = 4,
    FacingTracker_NEGATED = 5,
    EMoveDirectionRule_MAX = 6,
}

---@enum EMoveInterpRule
local EMoveInterpRule = {
    NoInterp = 0,
    Interp = 1,
    InterpConstant = 2,
    EMoveInterpRule_MAX = 3,
}

---@enum EMoveMaxSpeedRule
local EMoveMaxSpeedRule = {
    StartingSpeed = 0,
    DesiredSpeed = 1,
    FixedSpeed = 2,
    EMoveMaxSpeedRule_MAX = 3,
}

---@enum EMoveMinSpeedRule
local EMoveMinSpeedRule = {
    ZeroSpeed = 0,
    StartingSpeed = 1,
    FixedSpeed = 2,
    EMoveMinSpeedRule_MAX = 3,
}

---@enum EMultiFXActor
local EMultiFXActor = {
    Target = 0,
    Instigator = 1,
    Player = 2,
    EMultiFXActor_MAX = 3,
}

---@enum EMultiFXBeamSource
local EMultiFXBeamSource = {
    Target = 0,
    Instigator = 1,
    BeamSourceProperty = 2,
    EMultiFXBeamSource_MAX = 3,
}

---@enum EMultiFXCompare
local EMultiFXCompare = {
    Equal = 0,
    NotEqual = 1,
    GreatherThan = 2,
    GreaterThanEqual = 3,
    LessThan = 4,
    LessThanEqual = 5,
    EMultiFXCompare_MAX = 6,
}

---@enum EMultiFXLoc
local EMultiFXLoc = {
    Location = 0,
    Location_Attached = 1,
    Location_ObjectOrient = 2,
    Location_ObjectOrient_Attached = 3,
    Location_ZeroOrient = 4,
    Location_ZeroOrient_Attached = 5,
    ObjectCenterLoc = 6,
    ObjectCenterLoc_Attached = 7,
    ObjectCenterLoc_ObjectOrient = 8,
    ObjectCenterLoc_ObjectOrient_Attached = 9,
    ObjectCenterLoc_ZeroOrient = 10,
    ObjectCenterLoc_ZeroOrient_Attached = 11,
    ObjectBottomLoc = 12,
    ObjectBottomLoc_Attached = 13,
    ObjectBottomLoc_ObjectOrient = 14,
    ObjectBottomLoc_ObjectOrient_Attached = 15,
    ObjectBottomLoc_ZeroOrient = 16,
    ObjectBottomLoc_ZeroOrient_Attached = 17,
    ObjectAnchorLoc = 18,
    ObjectAnchorLoc_Attached = 19,
    ObjectAnchorLoc_ObjectOrient = 20,
    ObjectAnchorLoc_ObjectOrient_Attached = 21,
    ObjectAnchorLoc_ZeroOrient = 22,
    ObjectAnchorLoc_ZeroOrient_Attached = 23,
    BoneLocation = 24,
    BoneLocation_Attached = 25,
    GroundBelowLoc = 26,
    GroundBelowLoc_ObjectOrient = 27,
    GroundBelowLoc_ZeroOrient = 28,
    GroundBelowLoc_NormalOrient = 29,
    GroundBelowCenterLoc = 30,
    GroundBelowCenterLoc_ObjectOrient = 31,
    GroundBelowCenterLoc_ZeroOrient = 32,
    GroundBelowCenterLoc_NormalOrient = 33,
    Wandtip_Attached = 34,
    EMultiFXLoc_MAX = 35,
}

---@enum EMultiFXLocation
local EMultiFXLocation = {
    DefaultLoc = 0,
    AnchorLoc = 1,
    ObjectCenterLoc = 2,
    ObjectTopLoc = 3,
    ObjectBottomLoc = 4,
    ObjectFrontLoc = 5,
    ObjectBackLoc = 6,
    ObjectRightLoc = 7,
    ObjectLeftLoc = 8,
    GroundBelowLoc = 9,
    ComponentCenterLoc = 10,
    ComponentTopLoc = 11,
    ComponentBottomLoc = 12,
    ComponentFrontLoc = 13,
    ComponentBackLoc = 14,
    ComponentRightLoc = 15,
    ComponentLeftLoc = 16,
    WandtipLoc = 17,
    ImpactPoint = 18,
    TargetPoint = 19,
    BoneLoc = 20,
    MeshPointNearestInstigator = 21,
    ActorPointNearestInstigator = 22,
    MeshPointNearestLoc = 23,
    ActorPointNearestLoc = 24,
    WaterSurfaceLoc = 25,
    WeaponLoc = 26,
    ProjectileLoc = 27,
    EMultiFXLocation_MAX = 28,
}

---@enum EMultiFXOrientation
local EMultiFXOrientation = {
    AnchorOrient = 0,
    ZeroOrient = 1,
    WandtipOrient = 2,
    GroundOrient = 3,
    InvertOrient = 4,
    InstigatorOrient = 5,
    ImpactPointOrient = 6,
    TargetPointOrient = 7,
    TowardInstigator = 8,
    InstigatorToTarget = 9,
    ZeroPitch = 10,
    ZeroRoll = 11,
    ZeroYaw = 12,
    VelocityOrient = 13,
    WeaponOrient = 14,
    EMultiFXOrientation_MAX = 15,
}

---@enum EMultiFXPropertyOwner
local EMultiFXPropertyOwner = {
    FX = 0,
    Target = 1,
    Instigator = 2,
    EMultiFXPropertyOwner_MAX = 3,
}

---@enum EMultiFXRepeat
local EMultiFXRepeat = {
    Restart = 0,
    Ignore = 1,
    RestartInstigator = 2,
    IgnoreInstigator = 3,
    EMultiFXRepeat_MAX = 4,
}

---@enum EMultiFXSpell
local EMultiFXSpell = {
    UpgradedMechanic = 0,
    EMultiFXSpell_MAX = 1,
}

---@enum EMultiFXState
local EMultiFXState = {
    Attacking = 0,
    Arresto = 1,
    BrokenOrDead = 2,
    CombatCursed = 3,
    Confundo = 4,
    Disillusioned = 5,
    Dodging = 6,
    Frozen = 7,
    InWater = 8,
    Imperius = 9,
    Invulnerable = 10,
    Levioso = 11,
    OnFire = 12,
    Petrificus = 13,
    Reacting = 14,
    Revealed = 15,
    RevealsThruWalls = 16,
    Transformed = 17,
    Vulnerable = 18,
    EMultiFXState_MAX = 19,
}

---@enum EMultiFXUse
local EMultiFXUse = {
    Target = 0,
    Instigator = 1,
    TargetCharacter = 2,
    InstigatorCharacter = 3,
    EMultiFXUse_MAX = 4,
}

---@enum EMultiFXVectorExtension
local EMultiFXVectorExtension = {
    Size = 0,
    SizeXY = 1,
    SizeZ = 2,
    X = 3,
    Y = 4,
    Z = 5,
    EMultiFXVectorExtension_MAX = 6,
}

---@enum EMultiPlusRepeat
local EMultiPlusRepeat = {
    Standard = 0,
    Restart = 1,
    Ignore = 2,
    EMultiPlusRepeat_MAX = 3,
}

---@enum EMultiplierType
local EMultiplierType = {
    MultiplyByAxis = 0,
    MultiplyByValue = 1,
    MultiplyByCustomValue = 2,
    EMultiplierType_MAX = 3,
}

---@enum EMurmurationValueType
local EMurmurationValueType = {
    Absolute = 0,
    Relative = 1,
    EMurmurationValueType_MAX = 2,
}

---@enum ENPCRagdollMode
local ENPCRagdollMode = {
    NoRagdoll = 0,
    FullRagdoll = 1,
    RecoverFromRagdoll = 2,
    ActiveRagdoll = 3,
    ENPCRagdollMode_MAX = 4,
}

---@enum ENPCSense_EnemyTargetEval
local ENPCSense_EnemyTargetEval = {
    Aware = 0,
    Attacking = 1,
    Alert = 2,
    ENPCSense_MAX = 3,
}

---@enum ENPC_AbilityChannel
local ENPC_AbilityChannel = {
    FullBody = 0,
    FullBodyAdditive = 1,
    PartialBody1 = 2,
    EmoPartial = 3,
    Facial = 4,
    PartialBody = 5,
    RightArmPartial = 6,
    BlindHead = 7,
    BlindArm = 8,
    Injured = 9,
    Right = 10,
    RightArmPartial2 = 11,
    LeftArmPartial = 12,
    ENPC_MAX = 13,
}

---@enum ENPC_AlertPointOfInterest
local ENPC_AlertPointOfInterest = {
    None = 0,
    Target = 1,
    TeammateTarget = 2,
    TeammateDeath = 3,
    TeammateDamage = 4,
    Sound = 5,
    TeammateDead = 6,
    Distraction = 7,
    CombatPlant = 8,
    ENPC_MAX = 9,
}

---@enum ENPC_AttackSelectionConditions
local ENPC_AttackSelectionConditions = {
    LongDistBump = 0,
    ShortDistBump = 1,
    ShieldBreaker = 2,
    CrowdControlEffect = 3,
    DamagePotential = 4,
    CurseApplier = 5,
    JuggleStarter = 6,
    JuggleContinuer = 7,
    JuggleEnder = 8,
    LargeCharacterInterrupter = 9,
    AOE = 10,
    Fire = 11,
    StupefyAdvancer = 12,
    StupefyEnder = 13,
    PlantPriorityBump = 14,
    Count = 15,
    ENPC_MAX = 16,
}

---@enum ENPC_AudioState
local ENPC_AudioState = {
    None = 0,
    Unaware = 1,
    Alerted = 2,
    Attacking = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_BlendSpaceCoordinates
local ENPC_BlendSpaceCoordinates = {
    Cartesian = 0,
    Polar = 1,
    Anim = 2,
    MoveTurn = 3,
    Standard = 4,
    ENPC_MAX = 5,
}

---@enum ENPC_BlendspaceAngle
local ENPC_BlendspaceAngle = {
    Forward = 0,
    Left45 = 1,
    Left90 = 2,
    Left135 = 3,
    Left180 = 4,
    Right180 = 5,
    Right135 = 6,
    Right90 = 7,
    Right45 = 8,
    ENPC_MAX = 9,
}

---@enum ENPC_CombatThreatLevel
local ENPC_CombatThreatLevel = {
    Combat_ThreatLevel_None = 0,
    Combat_ThreatLevel_Low = 1,
    Combat_ThreatLevel_Medium = 2,
    Combat_ThreatLevel_High = 3,
    Combat_ThreatLevel_Extreme = 4,
    Combat_ThreatLevel_Boss = 5,
    Combat_ThreatLevel_Count = 6,
    Combat_ThreatLevel_MAX = 7,
}

---@enum ENPC_CrouchContext
local ENPC_CrouchContext = {
    InCrouchVolume = 0,
    OnCrouchNavArea = 1,
    CompanionCrouch = 2,
    ENPC_MAX = 3,
}

---@enum ENPC_DilateSource
local ENPC_DilateSource = {
    None = 0,
    Recovery = 1,
    Param = 2,
    Time = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_DissolveType
local ENPC_DissolveType = {
    Dissolve_None = 0,
    Dissolve_Normal = 1,
    Dissovle_HighDamage = 2,
    Dissovle_Impact = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_EvadeMobilityType
local ENPC_EvadeMobilityType = {
    None = 0,
    Slow = 1,
    Medium = 2,
    Fast = 3,
    Count = 4,
    ENPC_MAX = 5,
}

---@enum ENPC_Event
local ENPC_Event = {
    None = 0,
    TransientWeaponActivate = 1,
    TransientWeaponDeactivate = 2,
    TombProtectorMeteor_Choose = 3,
    TombProtectorMeteor_Break = 4,
    TombProtectorMeteor_Throw = 5,
    ENPC_MAX = 6,
}

---@enum ENPC_FireContext
local ENPC_FireContext = {
    None = 0,
    Charred = 1,
    OnFire = 2,
    ENPC_MAX = 3,
}

---@enum ENPC_FollowSplineDirection
local ENPC_FollowSplineDirection = {
    Forward = 0,
    Reverse = 1,
    ENPC_MAX = 2,
}

---@enum ENPC_FollowSplineEndAction
local ENPC_FollowSplineEndAction = {
    None = 0,
    Loop = 1,
    Bounce = 2,
    Done = 3,
    Die = 4,
    DoneNoReact = 5,
    Deactivate = 6,
    ENPC_MAX = 7,
}

---@enum ENPC_FollowSplineMoveState
local ENPC_FollowSplineMoveState = {
    Normal = 0,
    Scurry = 1,
    Volume = 2,
    ENPC_MAX = 3,
}

---@enum ENPC_FollowSplineScurryState
local ENPC_FollowSplineScurryState = {
    Interval = 0,
    Proximity = 1,
    ENPC_MAX = 2,
}

---@enum ENPC_FollowSplineState
local ENPC_FollowSplineState = {
    None = 0,
    Inactive = 1,
    Spline = 2,
    Idle = 3,
    Volume = 4,
    ENPC_MAX = 5,
}

---@enum ENPC_GameAttackState
local ENPC_GameAttackState = {
    None = 0,
    RunThrough = 1,
    ENPC_MAX = 2,
}

---@enum ENPC_GameContext
local ENPC_GameContext = {
    None = 0,
    Swim = 1,
    OnSlope = 2,
    OnStairs = 3,
    Crouching = 4,
    Flying = 5,
    Stealth = 6,
    CCState = 7,
    KnockedDown = 8,
    Levitated = 9,
    ENPC_MAX = 10,
}

---@enum ENPC_GameState
local ENPC_GameState = {
    None = 0,
    Wander = 1,
    Attack = 2,
    FollowPath = 3,
    Flee = 4,
    ScheduledEntity = 5,
    Alert = 6,
    FollowPlayer = 7,
    Close = 8,
    RunTo = 9,
    Retreat = 10,
    RetreatSplit = 11,
    FollowSpline = 12,
    ENPC_MAX = 13,
}

---@enum ENPC_GameSubState
local ENPC_GameSubState = {
    None = 0,
    Outside = 1,
    SwimToShore = 2,
    TooClose = 3,
    BackOnNav = 4,
    RecoverWeapon = 5,
    Investigate = 6,
    ENPC_MAX = 7,
}

---@enum ENPC_HitDirection
local ENPC_HitDirection = {
    None = 0,
    Front = 1,
    Left = 2,
    Right = 3,
    Back = 4,
    ENPC_MAX = 5,
}

---@enum ENPC_JumpSplineDirection
local ENPC_JumpSplineDirection = {
    Forward = 0,
    Reverse = 1,
    ENPC_MAX = 2,
}

---@enum ENPC_LOSCheckType
local ENPC_LOSCheckType = {
    None = 0,
    AttackLocToTarget = 1,
    EnemyToTarget = 2,
    ENPC_MAX = 3,
}

---@enum ENPC_LOSHeightOffsetSource
local ENPC_LOSHeightOffsetSource = {
    Ground = 0,
    Loc = 1,
    ENPC_MAX = 2,
}

---@enum ENPC_LOSParamType
local ENPC_LOSParamType = {
    None = 0,
    Perception = 1,
    Attack = 2,
    Waypoint = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_LOSUserType
local ENPC_LOSUserType = {
    None = 0,
    EnemyToTarget = 1,
    AttackLocToTarget = 2,
    Shuffle = 3,
    Waypoint = 4,
    Retreat = 5,
    BackOnNav = 6,
    ENPC_MAX = 7,
}

---@enum ENPC_LosingTargetType
local ENPC_LosingTargetType = {
    None = 0,
    Seek = 1,
    Death = 2,
    Default = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_ManagerType
local ENPC_ManagerType = {
    None = 0,
    Enemy = 1,
    Student = 2,
    Companion = 3,
    Sidekick = 4,
    Dead = 5,
    Leader = 6,
    Duel = 7,
    AuthorityFig = 8,
    ENPC_MAX = 9,
}

---@enum ENPC_Mobility
local ENPC_Mobility = {
    None = 0,
    Default = 1,
    Attack = 2,
    Pressure = 3,
    Far = 4,
    RunTo = 5,
    Wander = 6,
    Scared = 7,
    Flee = 8,
    Cover = 9,
    Close = 10,
    Evade = 11,
    SeekWeapon = 12,
    Dynamic = 13,
    DynamicTarget = 14,
    DynamicSprint = 15,
    ScheduledEntity = 16,
    FollowPlayer = 17,
    Swim = 18,
    Crouch = 19,
    OnFire = 20,
    Charred = 21,
    Crouching = 22,
    UpStairs = 23,
    DownStairs = 24,
    UpSlope = 25,
    DownSlope = 26,
    Retreat = 27,
    RunToNear = 28,
    RetreatSplit = 29,
    CombatWalk = 30,
    CombatJog = 31,
    CombatRun = 32,
    CharredRunTo = 33,
    TooClose = 34,
    Alert = 35,
    Outside = 36,
    Stealth = 37,
    BackOnNav = 38,
    Charge = 39,
    RecoverWeapon = 40,
    PointOfInterest = 41,
    Override = 42,
    Count = 43,
    ENPC_MAX = 44,
}

---@enum ENPC_MobilityChoiceSource
local ENPC_MobilityChoiceSource = {
    Distance = 0,
    ENPC_MAX = 1,
}

---@enum ENPC_MobilityTurnAssistStartMode
local ENPC_MobilityTurnAssistStartMode = {
    None = 0,
    Immediate = 1,
    FromAnim = 2,
    Delayed = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_MoveAttemptStatus
local ENPC_MoveAttemptStatus = {
    None = 0,
    Success = 1,
    NoNavData = 2,
    NoSafeNavPoint = 3,
    StartBlocked = 4,
    UpdateBlocked = 5,
    AbruptHeadingChange = 6,
    HeadingOffscreen = 7,
    WillEnterCorridor = 8,
    PassTooCloseToTarget = 9,
    NoPath = 10,
    ConstrainLocFailed = 11,
    NoGroundFound = 12,
    ENPC_MAX = 13,
}

---@enum ENPC_MoveDataState
local ENPC_MoveDataState = {
    Normal = 0,
    Attack = 1,
    ENPC_MAX = 2,
}

---@enum ENPC_MoveState
local ENPC_MoveState = {
    Loop = 0,
    Start = 1,
    Stop = 2,
    LoopTurn = 3,
    FollowSpline = 4,
    TurnInPlace = 5,
    Pivot = 6,
    Count = 7,
    ENPC_MAX = 8,
}

---@enum ENPC_MoveTurnTo
local ENPC_MoveTurnTo = {
    None = 0,
    MoveDir = 1,
    Target = 2,
    Weapon = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_NavAttackReachableState
local ENPC_NavAttackReachableState = {
    NotNeeded = 0,
    Unreachable = 1,
    Reachable = 2,
    StraightLineReachable = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_NavState
local ENPC_NavState = {
    Unknown = 0,
    On = 1,
    Off = 2,
    ENPC_MAX = 3,
}

---@enum ENPC_PathSpec
local ENPC_PathSpec = {
    None = 0,
    Ground = 1,
    Water = 2,
    GroundAndWater = 3,
    Custom = 4,
    ENPC_MAX = 5,
}

---@enum ENPC_PerceptionEventResponseType
local ENPC_PerceptionEventResponseType = {
    Normal = 0,
    Distraction = 1,
    ENPC_MAX = 2,
}

---@enum ENPC_PerceptionEventType
local ENPC_PerceptionEventType = {
    None = 0,
    Damage = 1,
    Death = 2,
    Sound = 3,
    Engaged = 4,
    Dead = 5,
    StealthDeath = 6,
    Collided = 7,
    MunitionHit = 8,
    MunitionFire = 9,
    Footfall = 10,
    CombatPlant = 11,
    ENPC_MAX = 12,
}

---@enum ENPC_PerceptionUpdate
local ENPC_PerceptionUpdate = {
    Target = 0,
    Weapon_DEPRECATED = 1,
    CrimeScene_DEPRECATED = 2,
    GameEvent = 3,
    Default = 4,
    ENPC_MAX = 5,
}

---@enum ENPC_PhysicsBallisticToTargetTaskMode
local ENPC_PhysicsBallisticToTargetTaskMode = {
    Start = 0,
    Update = 1,
    StartAndUpdate = 2,
    Reset = 3,
    StartUpdateAndReset = 4,
    ENPC_MAX = 5,
}

---@enum ENPC_PhysicsBallisticType
local ENPC_PhysicsBallisticType = {
    Target = 0,
    JumpTarget = 1,
    NamedPoint = 2,
    MoveGoal = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_PlayerProtectionState
local ENPC_PlayerProtectionState = {
    NormalAttackProtection = 0,
    FullAttackProtection = 1,
    VulnerableNoProtection = 2,
    FlyingProtection = 3,
    SwimmingProtection = 4,
    ENPC_MAX = 5,
}

---@enum ENPC_PlayerRelTargetTracking
local ENPC_PlayerRelTargetTracking = {
    None = 0,
    Aware = 1,
    Alert = 2,
    Aggro = 3,
    Combat = 4,
    ENPC_MAX = 5,
}

---@enum ENPC_PlayerRelTargetTrackingType
local ENPC_PlayerRelTargetTrackingType = {
    None = 0,
    Range = 1,
    Forced = 2,
    Player = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_QBUpdate
local ENPC_QBUpdate = {
    PieCut = 0,
    Direct = 1,
    Close = 2,
    Evade = 3,
    Follow = 4,
    InOut = 5,
    SeekWeapon = 6,
    Cover = 7,
    Ticket = 8,
    Reposition = 9,
    Sidekick = 10,
    TombProtector = 11,
    Around = 12,
    SeekTarget = 13,
    BackOnNav = 14,
    LeadPlayer = 15,
    TooClose = 16,
    SwimToShore = 17,
    Standby = 18,
    Duel = 19,
    Alert = 20,
    Companion = 21,
    Combat = 22,
    RecoverWeapon = 23,
    POI = 24,
    ENPC_MAX = 25,
}

---@enum ENPC_QBUpdateEvent
local ENPC_QBUpdateEvent = {
    Ticket = 0,
    MoveChance = 1,
    MoveStop = 2,
    MoveStart = 3,
    Attacked = 4,
    ENPC_MAX = 5,
}

---@enum ENPC_QBUpdateProcessingType
local ENPC_QBUpdateProcessingType = {
    NPCList = 0,
    QBAttackData = 1,
    Both = 2,
    Custom = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_SecondaryCollisionResponse
local ENPC_SecondaryCollisionResponse = {
    None = 0,
    Attack = 1,
    PushAway = 2,
    ENPC_MAX = 3,
}

---@enum ENPC_SelectionStates
local ENPC_SelectionStates = {
    None = 0,
    Arrested = 1,
    Attacking = 2,
    Confounded = 3,
    Crucioed = 4,
    Cursed = 5,
    DistanceHigh = 6,
    DistanceMed = 7,
    DistanceLow = 8,
    Enchanted = 9,
    Enraged = 10,
    Flying = 11,
    Frozen = 12,
    HealthHigh = 13,
    HealthMed = 14,
    HealthLow = 15,
    HealthCritical = 16,
    Imperiused = 17,
    InAir = 18,
    InCCReaction = 19,
    InKnockDown = 20,
    InRadiusHigh = 21,
    InRadiusMed = 22,
    InRadiusLow = 23,
    InRagDoll = 24,
    InReaction = 25,
    InReactionMax = 26,
    InReactionLong = 27,
    InReactionMed = 28,
    InReactionShort = 29,
    IsInferi = 30,
    IsSpider = 31,
    IsSpiderCrit = 32,
    LargeCharacter = 33,
    Levitated = 34,
    NotCursed = 35,
    NotInReaction = 36,
    OnFire = 37,
    OnGround = 38,
    Petrified = 39,
    RemainingHigh = 40,
    RemainingMed = 41,
    RemainingLow = 42,
    Shielding = 43,
    Stupefy1 = 44,
    Stupefy2 = 45,
    Stupefy3 = 46,
    Stupefy4 = 47,
    Swimming = 48,
    ThreatMax = 49,
    ThreatHigh = 50,
    ThreatMed = 51,
    ThreatLow = 52,
    HitsTaken = 53,
    TimeSinceLastAction = 54,
    RecentlyAttackedByPlayer = 55,
    HighLightedByPlayer = 56,
    RecentlyAttackedPlayer = 57,
    InNearDeathKneeling = 58,
    SpiderOnFire = 59,
    InferiusOnFire = 60,
    InferiusKamikaze = 61,
    Count = 62,
    ENPC_MAX = 63,
}

---@enum ENPC_SetStateNext
local ENPC_SetStateNext = {
    None = 0,
    TargetLost = 1,
    PostSpawn = 2,
    TargetSuccess = 3,
    ReactionDone = 4,
    LosingTarget = 5,
    ConfundoDone = 6,
    ENPC_MAX = 7,
}

---@enum ENPC_ShowUIPerceptionCone
local ENPC_ShowUIPerceptionCone = {
    Normal = 0,
    Disillusionment = 1,
    Invisible = 2,
    ENPC_MAX = 3,
}

---@enum ENPC_ShowUIPerceptionIndicatorMode
local ENPC_ShowUIPerceptionIndicatorMode = {
    Progression = 0,
    AggroOnly = 1,
    ENPC_MAX = 2,
}

---@enum ENPC_ShutdownState
local ENPC_ShutdownState = {
    None = 0,
    Execution = 1,
    Rendering = 2,
    Disabled = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_SidekickUpdateState
local ENPC_SidekickUpdateState = {
    None = 0,
    Hover = 1,
    StopMove = 2,
    StoppingMove = 3,
    StartMove = 4,
    UpdateMove = 5,
    Moving = 6,
    ENPC_MAX = 7,
}

---@enum ENPC_Spawn
local ENPC_Spawn = {
    None = 0,
    Default = 1,
    Birth = 2,
    BurrowUp = 3,
    Descend = 4,
    Apparate = 5,
    Death = 6,
    Smoke = 7,
    CrackWall = 8,
    CrackFloor = 9,
    CrackStanding = 10,
    OnBack = 11,
    GroundOnFront = 12,
    GroundOnBack = 13,
    BurstOut = 14,
    Fall = 15,
    WallStepDown = 16,
    Freeze = 17,
    Petrified = 18,
    JumpDown = 19,
    Animagus = 20,
    Spline = 21,
    Hidden = 22,
    Asleep = 23,
    SplineSmoke = 24,
    JumpSpline = 25,
    Climb = 26,
    AncientMagic = 27,
    Reflection = 28,
    InkySmoke = 29,
    FromStone = 30,
    SlowStand = 31,
    BossSpawn = 32,
    WipeIn = 33,
    ENPC_MAX = 34,
}

---@enum ENPC_SpawnState
local ENPC_SpawnState = {
    None = 0,
    Spawning = 1,
    SpawnFinshed = 2,
    ENPC_MAX = 3,
}

---@enum ENPC_Split
local ENPC_Split = {
    None = 0,
    Attack = 1,
    PostAttack = 2,
    CounterAttack = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_StairsSlopeContext
local ENPC_StairsSlopeContext = {
    None = 0,
    GoingUp = 1,
    GoingDown = 2,
    ENPC_MAX = 3,
}

---@enum ENPC_StopReason
local ENPC_StopReason = {
    None = 0,
    StopMove = 1,
    MovementStop = 2,
    OnPathFinished = 3,
    PathFollowingComp_OnPathFinished = 4,
    MovementComponent_StopActiveMovement = 5,
    CanAttackChoose_StopReqPriorToAttack = 6,
    CanAttackRequest_StopReqPriorToAttack = 7,
    ENPC_MAX = 8,
}

---@enum ENPC_StopReasonAUS
local ENPC_StopReasonAUS = {
    AUSStartMove_PathFinished = 0,
    AUSStartMove_MoveData_bStopMove = 1,
    AUSStartMove_RequestTimeout = 2,
    AUSUpdateMove_PathFinished = 3,
    AUSUpdateMove_MoveData_bStopMove = 4,
    AUSUpdateMove_RequestTimeout = 5,
    AUSUpdateMove_CanMoveUpdateStopOrAttack = 6,
    AUSMoving_SidekickUpdateStateUpdate = 7,
    AUSMoving_PathFininshed = 8,
    AUSMoving_bStopMove = 9,
    AUSMoving_NotMoving = 10,
    AUSMoving_AtPathDest = 11,
    AUSMoving_AUSAbortPending = 12,
    AUSMoving_MoveAbortPending = 13,
    AUSMoving_AbruptDirectionChange = 14,
    AUSMoving_AbortAttackDistance = 15,
    AUSMoving_AtPendingDest = 16,
    AUSMoving_CanMoveUpdateStopOrAttack = 17,
    AUSMoving_CantAttackFromDest = 18,
    AUSPaused = 19,
    ENPC_MAX = 20,
}

---@enum ENPC_StopReasonMove
local ENPC_StopReasonMove = {
    MoveData_RequestStop = 0,
    MoveData_ResetRequestStop = 1,
    MoveData_PathFinished = 2,
    UpdateInfo_MoveCorridor = 3,
    UpdateInfo_MoveCollision = 4,
    UpdateMove_AwayFromWaypoint = 5,
    UpdateMove_NotProgressingWaypoint = 6,
    UpdateMove_NotProgressingDestination = 7,
    UpdateMove_UpdateBlocked = 8,
    UpdateMove_WillEnterCorridor = 9,
    SetMoveWaypoint_StartBlocked = 10,
    SetMoveWaypoint_ConstrainLocFailed = 11,
    SetMoveWaypoint_AbruptHeadingChange = 12,
    SetMoveWaypoint_HeadingOffscreen = 13,
    SetMoveWaypoint_NoGroundFound = 14,
    MoveWaypointCheck_NotProgressingDestination = 15,
    MoveWaypointCheck_NotProgressingWaypoint = 16,
    MoveWaypointCheck_AwayFromWaypoint = 17,
    MoveCheck_LOSNotClear = 18,
    MoveCheck_WillEnterCorridor = 19,
    MoveCheck_TooCloseToTarget = 20,
    MoveCheck_TooCloseToTeammates = 21,
    MoveCheck_TooFarHeadingDistance = 22,
    MoveCheck_EnergyDrained = 23,
    ENPC_MAX = 24,
}

---@enum ENPC_TargetAwareState
local ENPC_TargetAwareState = {
    None = 0,
    Unaware = 1,
    Aware = 2,
    Alert = 3,
    Attack = 4,
    ENPC_MAX = 5,
}

---@enum ENPC_TargetDirection
local ENPC_TargetDirection = {
    Forward = 0,
    Back = 1,
    Left = 2,
    Right = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_TargetPerceptionIntent
local ENPC_TargetPerceptionIntent = {
    None = 0,
    AsEnemy = 1,
    AsScheduledEntity = 2,
    ENPC_MAX = 3,
}

---@enum ENPC_TargetPerceptionType
local ENPC_TargetPerceptionType = {
    None = 0,
    Attack = 1,
    CrimeScene = 2,
    Notify = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_TargetSelectionScore
local ENPC_TargetSelectionScore = {
    Distance = 0,
    MaintainTarget = 1,
    StayIn = 2,
    CognitionPriority = 3,
    LargeCharacter = 4,
    NumAttacking = 5,
    RecentlyAttackedBy = 6,
    RecentlyAttackedByPlayer = 7,
    HighlightedByPlayer = 8,
    Attacking = 9,
    RecentlyAttackedPlayer = 10,
    RecentlyAttackedTarget = 11,
    Reacting = 12,
    InCCReaction = 13,
    InRagDoll = 14,
    InAir = 15,
    InCriticalHealth = 16,
    InNearDeathKneeling = 17,
    ShieldsOn = 18,
    Level = 19,
    Health = 20,
    Threat = 21,
    SpiderOnFire = 22,
    InferiusOnFire = 23,
    InferiusKamikaze = 24,
    Leader = 25,
    Perk = 26,
    IneligibleToChange = 27,
    Count = 28,
    ENPC_MAX = 29,
}

---@enum ENPC_TargetSelectionWeightData
local ENPC_TargetSelectionWeightData = {
    DistNearWeight = 0,
    DistFarWeight = 1,
    DistNear = 2,
    DistFar = 3,
    MaintainTargetWeight = 4,
    MaintainTargetFalloff = 5,
    TargetWeight = 6,
    LargeCharacterWeight = 7,
    NumAttackingMultWeight = 8,
    StayInWeight = 9,
    RecentlyAttackedByWeight = 10,
    RecentlyAttackedByFalloff = 11,
    RecentlyAttackedByPlayerWeight = 12,
    RecentlyAttackedByPlayerFalloff = 13,
    HighlightedByPlayerWeight = 14,
    AttackingWeight = 15,
    RecentlyAttackedTargetWeight = 16,
    RecentlyAttackedTargetFalloff = 17,
    RecentlyAttackedPlayerWeight = 18,
    RecentlyAttackedPlayerFalloff = 19,
    ReactingIncMultWeight = 20,
    ReactingTimePeak = 21,
    ReactingDecMultWeight = 22,
    InCCReactionWeight = 23,
    InKnockDownWeight = 24,
    InRagDollWeight = 25,
    InAirWeight = 26,
    InCriticalHealthWeight = 27,
    InNearDeathKneelingWeight = 28,
    ShielsOnWeight = 29,
    LevelMultWeight = 30,
    LevelMinWeight = 31,
    LevelMaxWeight = 32,
    HealthMultWeight = 33,
    HealthMinWeight = 34,
    HealthMaxWeight = 35,
    ThreatMultWeight = 36,
    ThreatMinWeight = 37,
    ThreatMaxWeight = 38,
    SpiderOnFireWeight = 39,
    InferiusOnFireWeight = 40,
    InferiusKamikazeWeight = 41,
    Count = 42,
    ENPC_MAX = 43,
}

---@enum ENPC_Tether
local ENPC_Tether = {
    None = 0,
    Spawn = 1,
    Player = 2,
    Location = 3,
    WanderStartLocation = 4,
    Actor = 5,
    ENPC_MAX = 6,
}

---@enum ENPC_ThreatLevel
local ENPC_ThreatLevel = {
    None = 0,
    ThreatLow = 1,
    ThreatMedium = 2,
    ThreatHigh = 3,
    ThreatMax = 4,
    ENPC_MAX = 5,
}

---@enum ENPC_TurnAssist
local ENPC_TurnAssist = {
    None = 0,
    Default = 1,
    Mobility = 2,
    MobilityStop = 3,
    TurnInPlace = 4,
    MobilityStart = 5,
    Attack = 6,
    Stomp = 7,
    RunAt = 8,
    Shuffle = 9,
    Taunt = 10,
    IdleBreak = 11,
    AttackReset = 12,
    TargetRelative = 13,
    AlertPointOfInterest = 14,
    AttackClose = 15,
    ENPC_MAX = 16,
}

---@enum ENPC_TurnAssistCurve
local ENPC_TurnAssistCurve = {
    Main = 0,
    Time = 1,
    Speed = 2,
    ENPC_MAX = 3,
}

---@enum ENPC_TurnAssistState
local ENPC_TurnAssistState = {
    None = 0,
    Target = 1,
    PathLoc = 2,
    Loc = 3,
    Weapon = 4,
    ENPC_MAX = 5,
}

---@enum ENPC_TurnAssistType
local ENPC_TurnAssistType = {
    None = 0,
    Fixed = 1,
    Target = 2,
    Instigator = 3,
    Player = 4,
    TargetRelative = 5,
    ExternalMode = 6,
    TargetTracker = 7,
    MovementDirection = 8,
    ENPC_MAX = 9,
}

---@enum ENPC_Type
local ENPC_Type = {
    None = 0,
    Enemy = 1,
    Student = 2,
    Creature = 3,
    ENPC_MAX = 4,
}

---@enum ENPC_WaterResponse
local ENPC_WaterResponse = {
    Die = 0,
    TeleportToShore = 1,
    SwimToShore = 2,
    SwimAndAttack = 3,
    ENPC_MAX = 4,
}

---@enum ENavAreaFlag
local ENavAreaFlag = {
    Default = 0,
    Jump = 1,
    Vertical = 2,
    Fall = 3,
    ENavAreaFlag_MAX = 4,
}

---@enum ENiagraPropertyTarget
local ENiagraPropertyTarget = {
    Target = 0,
    Instigator = 1,
    ENiagraPropertyTarget_MAX = 2,
}

---@enum ENiagraWaterRippleCurveProperty
local ENiagraWaterRippleCurveProperty = {
    TargetMass = 0,
    TargetVelocity = 1,
    TargetVelocityZ = 2,
    InstigatorMass = 3,
    InstigatorVelocity = 4,
    InstigatorVelocityZ = 5,
    ImpactMass = 6,
    ImpactVelocity = 7,
    ImpactMomentum = 8,
    ENiagraWaterRippleCurveProperty_MAX = 9,
}

---@enum ENoMountZoneError
local ENoMountZoneError = {
    Error_OutOfBounds = 0,
    Error_NoFlyZone = 1,
    Error_NoMountZone = 2,
    Error_LeavingRaceTrack = 3,
    Error_LeavingArea = 4,
    Error_AbandoningRace = 5,
    Error_MAX = 6,
}

---@enum ENoMountZoneVersion
local ENoMountZoneVersion = {
    NoVersion = 0,
    UniqueNameFix = 1,
    GroundShieldVFX = 2,
    LatestVersion = 2,
    ENoMountZoneVersion_MAX = 3,
}

---@enum ENoiseSize
local ENoiseSize = {
    NoNoise = 0,
    SmallNoise = 1,
    MediumNoise = 2,
    LargeNoise = 3,
    HugeNoise = 4,
    UseSize = 5,
    ENoiseSize_MAX = 6,
}

---@enum ENotificationCategory
local ENotificationCategory = {
    NotificationCategory_Celebration = 0,
    NotificationCategory_CelebrationMed = 1,
    NotificationCategory_MissionBanner = 2,
    NotificationCategory_MissionStep = 3,
    NotificationCategory_LevelUp = 4,
    NotificationCategory_Pickups = 5,
    NotificationCategory_Knowledge = 6,
    NotificationCategory_OwlMail = 7,
    NotificationCategory_XP = 8,
    NotificationCategory_SmallText = 9,
    NotificationCategory_All = 10,
    NotificationCategory_MAX = 11,
}

---@enum ENpcAbilityBranchType
local ENpcAbilityBranchType = {
    Dead = 0,
    ENpcAbilityBranchType_MAX = 1,
}

---@enum ENpcMoveDirectionType
local ENpcMoveDirectionType = {
    Global = 0,
    Local = 1,
    ENpcMoveDirectionType_MAX = 2,
}

---@enum ENpcReactFlyToLocationOption
local ENpcReactFlyToLocationOption = {
    ReactionInstigatorLocation = 0,
    ReactionTargetLocation = 1,
    ENpcReactFlyToLocationOption_MAX = 2,
}

---@enum EObjectArchitectVfxWorldLocalType
local EObjectArchitectVfxWorldLocalType = {
    WorldSpace = 0,
    LocalSpace = 1,
    EObjectArchitectVfxWorldLocalType_MAX = 2,
}

---@enum EObjectPropertyType
local EObjectPropertyType = {
    Animate = 0,
    Inanimate = 1,
    Plant = 2,
    Dead = 3,
    Water = 4,
    EObjectPropertyType_MAX = 5,
}

---@enum EObjectSizeClass
local EObjectSizeClass = {
    XXS = 0,
    XS = 1,
    S = 2,
    M = 3,
    L = 4,
    XL = 5,
    XXL = 6,
    AutoGenerate = 7,
    EObjectSizeClass_MAX = 8,
}

---@enum EObjectStateBranchCondition
local EObjectStateBranchCondition = {
    IsDead = 0,
    IsDazed = 1,
    IsWoundedKneeling = 2,
    EObjectStateBranchCondition_MAX = 3,
}

---@enum EOcclusionOption
local EOcclusionOption = {
    OcclusionOff = 0,
    OcclusionOnceOnPost = 1,
    OcclusionTick = 2,
    EOcclusionOption_MAX = 3,
}

---@enum EOcclusionTestMethod
local EOcclusionTestMethod = {
    PrimaryOcclusionOnly = 0,
    HulaHoop_4 = 1,
    FacingPortal_8 = 2,
    EdgeOnPortal_12 = 3,
    EOcclusionTestMethod_MAX = 4,
}

---@enum EOpenDoorAnimState
local EOpenDoorAnimState = {
    LeftHand = 0,
    RightHand = 1,
    BothHands = 2,
    EOpenDoorAnimState_MAX = 3,
}

---@enum EOpenDoorDirection
local EOpenDoorDirection = {
    AwayFromPlayer = 0,
    Clockwise = 1,
    CounterClockwise = 2,
    EOpenDoorDirection_MAX = 3,
}

---@enum EOpportunityType
local EOpportunityType = {
    DarkWizardSteal = 0,
    EOpportunityType_MAX = 1,
}

---@enum EOppugnoState
local EOppugnoState = {
    Inactive = 0,
    Wait = 1,
    Pull = 2,
    Hold = 3,
    ThrowWait = 4,
    Throw = 5,
    EndWait = 6,
    End = 7,
    EOppugnoState_MAX = 8,
}

---@enum EOrientToSlerpType
local EOrientToSlerpType = {
    Snap = 0,
    Velocity = 1,
    Filter = 2,
    Freeze = 3,
    EOrientToSlerpType_MAX = 4,
}

---@enum EOverrideNPCStateOnFinish
local EOverrideNPCStateOnFinish = {
    None = 0,
    Idle = 1,
    Move = 2,
    Attack = 3,
    Disengage = 4,
    Dead = 5,
    Destroy = 6,
    Custom = 7,
    EOverrideNPCStateOnFinish_MAX = 8,
}

---@enum EPIMTypes
local EPIMTypes = {
    PressAccept = 0,
    PressAndHoldAccept = 1,
    JoystickClockwise = 2,
    JoystickCounterClockwise = 3,
    JoystickSmileyFace = 4,
    JoystickWaggleLeftRight = 5,
    JoystickLeft = 6,
    JoystickRight = 7,
    JoystickUp = 8,
    JoystickDown = 9,
    TelescopeFocus = 10,
    SpellCast = 11,
    PressWildcardAction = 12,
    EPIMTypes_MAX = 13,
}

---@enum EParryState
local EParryState = {
    None = 0,
    Swipe1 = 1,
    Swipe2 = 2,
    RightToLeft_Down = 3,
    LeftToRight_Up = 4,
    RightToLeft_Up = 5,
    LeftToRight_Down = 6,
    EParryState_MAX = 7,
}

---@enum EPartialBodyState
local EPartialBodyState = {
    None = 0,
    Protego = 1,
    SpellCombo = 2,
    WandEquip = 3,
    SpellFinisher = 4,
    Carry = 5,
    PickupSighted = 6,
    PickupCollect = 7,
    LootCollect = 8,
    StationInteract = 9,
    AttackAnticipation = 10,
    UseInventoryItem = 11,
    WandEquipped = 12,
    BlockedByWall = 13,
    ChannelSpell = 14,
    Cinematic = 15,
    Lumos = 16,
    WandUnEquip = 17,
    Waving = 18,
    EPartialBodyState_MAX = 19,
}

---@enum EPathNodeSpeed
local EPathNodeSpeed = {
    Stopped = 0,
    SlowWalk = 1,
    Walk = 2,
    Jog = 3,
    Sprint = 4,
    Custom = 5,
    EPathNodeSpeed_MAX = 6,
}

---@enum EPathTargetType
local EPathTargetType = {
    PATH_TARGET_NONE = 0,
    PATH_TARGET_STATIC = 1,
    PATH_TARGET_DYNAMIC = 2,
    PATH_TARGET_BEACON = 3,
    PATH_TARGET_WAYPOINT = 4,
    PATH_TARGET_MAX = 5,
}

---@enum EPauseMenuPage
local EPauseMenuPage = {
    PAGE_INVENTORY = 0,
    PAGE_CHARACTER = 1,
    PAGE_TALENTS = 2,
    PAGE_QUESTS = 3,
    PAGE_MAP = 4,
    PAGE_MAIL = 5,
    PAGE_COLLECTIONS = 6,
    PAGE_CHALLENGES = 7,
    PAGE_SETTINGS = 8,
    PAGE_MAX = 9,
}

---@enum EPerceptionPointEvaluateSource
local EPerceptionPointEvaluateSource = {
    None = 0,
    Enemy = 1,
    Target = 2,
    EPerceptionPointEvaluateSource_MAX = 3,
}

---@enum EPerformTaskCombatMode
local EPerformTaskCombatMode = {
    Normal = 0,
    Protector = 1,
    Custom = 2,
    DuelOpponent = 3,
    FightClubOpponent = 4,
    Aggressor = 5,
    GroupAggressor = 6,
    EPerformTaskCombatMode_MAX = 7,
}

---@enum EPerformTaskContainerType
local EPerformTaskContainerType = {
    LeadingPlayer = 0,
    EnemyPatrol = 1,
    Custom = 2,
    EPerformTaskContainerType_MAX = 3,
}

---@enum EPerformTaskFinishAction
local EPerformTaskFinishAction = {
    ReturnToActivity = 0,
    StopAndWait = 1,
    ContinueTaskWhenCancelled = 2,
    EPerformTaskFinishAction_MAX = 3,
}

---@enum EPerformTaskHogwarsExpressSettings
local EPerformTaskHogwarsExpressSettings = {
    Activate = 0,
    Deactivate = 1,
    EPerformTaskHogwarsExpressSettings_MAX = 2,
}

---@enum EPerformTaskSceneRigSetting
local EPerformTaskSceneRigSetting = {
    Play = 0,
    Stop = 1,
    Persistent = 2,
    EPerformTaskSceneRigSetting_MAX = 3,
}

---@enum EPerformTaskSetting
local EPerformTaskSetting = {
    Set = 0,
    Clear = 1,
    EPerformTaskSetting_MAX = 2,
}

---@enum EPerformTaskSpeedMode
local EPerformTaskSpeedMode = {
    Stopped = 0,
    SlowWalk = 1,
    Walk = 2,
    Jog = 3,
    MaxSpeedMode = 4,
    EPerformTaskSpeedMode_MAX = 5,
}

---@enum EPerformTaskSplineTypes
local EPerformTaskSplineTypes = {
    SlowWalk = 0,
    Walk = 1,
    Jog = 2,
    EPerformTaskSplineTypes_MAX = 3,
}

---@enum EPerformTasksChannelingSpell
local EPerformTasksChannelingSpell = {
    Lumos = 0,
    Protego = 1,
    Disillusionment = 2,
    EPerformTasksChannelingSpell_MAX = 3,
}

---@enum EPerformTasksSpell
local EPerformTasksSpell = {
    Reparo = 0,
    Confringo = 1,
    Custom = 2,
    EPerformTasksSpell_MAX = 3,
}

---@enum EPerkState
local EPerkState = {
    PERK_UNAVAILABLE = 0,
    PERK_AVAILABLE = 1,
    PERK_PURCHASED = 2,
    PERK_UPGRADE_UNAVAILABLE = 3,
    PERK_MAX = 4,
}

---@enum EPhoenixControlMode
local EPhoenixControlMode = {
    Player = 0,
    HoverDrone = 1,
    MAX = 2,
}

---@enum EPhoenixScalabilityCategory
local EPhoenixScalabilityCategory = {
    ViewDistance = 0,
    AntiAliasing = 1,
    Shadow = 2,
    PostProcess = 3,
    Texture = 4,
    Effects = 5,
    Foliage = 6,
    Shading = 7,
    Volumetrics = 8,
    Sky = 9,
    Population = 10,
    EPhoenixScalabilityCategory_MAX = 11,
}

---@enum EPhoenixScalabilityLevel
local EPhoenixScalabilityLevel = {
    Low = 0,
    Medium = 1,
    High = 2,
    Epic = 3,
    Cinematic = 4,
    EPhoenixScalabilityLevel_MAX = 5,
}

---@enum EPhoenixScalabilityPlatform
local EPhoenixScalabilityPlatform = {
    Unknown = 0,
    PC = 1,
    PS4 = 2,
    PS5 = 3,
    Switch = 4,
    XBoxOne = 5,
    XSX = 6,
    EPhoenixScalabilityPlatform_MAX = 7,
}

---@enum EPhysicalReactionTaskAction
local EPhysicalReactionTaskAction = {
    StartImpactReaction = 0,
    StartReaction = 1,
    HoverStart = 2,
    HoverEnd = 3,
    NoAction = 4,
    EPhysicalReactionTaskAction_MAX = 5,
}

---@enum EPhysicsSimLevelType
local EPhysicsSimLevelType = {
    Attacks = 0,
    Flying = 1,
    LODs = 2,
    Mechanics = 3,
    Misc = 4,
    Mounts = 5,
    Reactions = 6,
    Stations = 7,
    ClothAnimCurves = 8,
    EPhysicsSimLevelType_MAX = 9,
}

---@enum EPlatforms
local EPlatforms = {
    Platform_Switch = 1,
    Platform_LastGen = 2,
    Platform_NextGen = 4,
    Platform_PC = 8,
    Platform_MAX = 9,
}

---@enum EPlayForcedConversation_ConversationInitializationTime
local EPlayForcedConversation_ConversationInitializationTime = {
    WhenCreatingState = 0,
    WhenEnteringAction = 1,
    EPlayForcedConversation_MAX = 2,
}

---@enum EPlayerPerceptionEnableDisable
local EPlayerPerceptionEnableDisable = {
    Ignore = 0,
    Enable = 1,
    Disable = 2,
    EPlayerPerceptionEnableDisable_MAX = 3,
}

---@enum EPointOfInterestState
local EPointOfInterestState = {
    Found = 0,
    Known = 1,
    Hidden = 2,
    EPointOfInterestState_MAX = 3,
}

---@enum EPortraitPaintingEntitySource
local EPortraitPaintingEntitySource = {
    Unresolved = 0,
    FleshCacheCallback = 1,
    CustomizableCharacterCallBack = 2,
    CustomizableCharacterScan = 3,
    PopulationManager = 4,
    EPortraitPaintingEntitySource_MAX = 5,
}

---@enum EPostDeathCleanupEffect
local EPostDeathCleanupEffect = {
    Dissolve = 0,
    Fade = 1,
    Destroy = 2,
    None = 3,
    EPostDeathCleanupEffect_MAX = 4,
}

---@enum EPostDeathCleanupMode
local EPostDeathCleanupMode = {
    TriggerOnMaximumReached = 0,
    TriggerOnTimer = 1,
    None = 2,
    EPostDeathCleanupMode_MAX = 3,
}

---@enum EPostDeathSortingMode
local EPostDeathSortingMode = {
    FirstInFirstOut = 0,
    ClosestToPlayerFirst = 1,
    FarthestFromPlayerFirst = 2,
    None = 3,
    EPostDeathSortingMode_MAX = 4,
}

---@enum EPostDeathState
local EPostDeathState = {
    Enabled = 0,
    Disabled = 1,
    EPostDeathState_MAX = 2,
}

---@enum EPrerequisiteType
local EPrerequisiteType = {
    None = 0,
    Disable_On_MissionStatus = 1,
    Enable_On_MissionStatus = 2,
    Disable_On_ProgressionLock = 3,
    Enable_On_ProgressionLock = 4,
    EPrerequisiteType_MAX = 5,
}

---@enum EProductionStatus
local EProductionStatus = {
    IN_DEVELOPMENT = 0,
    FUNCTIONAL = 1,
    SHIPPABLE = 2,
    CUT = 3,
    EProductionStatus_MAX = 4,
}

---@enum EProgressLockRewardType
local EProgressLockRewardType = {
    PROGRESS_LOCK_REWARD_TYPE_UNKNOWN = 0,
    PROGRESS_LOCK_REWARD_TYPE_SPELL = 1,
    PROGRESS_LOCK_REWARD_TYPE_MAX = 2,
}

---@enum EQuadrupedSpineChainType
local EQuadrupedSpineChainType = {
    Neck = 0,
    Spine = 1,
    Tail = 2,
    Invalid = 3,
    EQuadrupedSpineChainType_MAX = 4,
}

---@enum ERPGAbilityTag
local ERPGAbilityTag = {
    AccioUpgrade = 0,
    ArrestoMomentumUpgrade = 1,
    AvadaKedavraUpgrade = 2,
    BombardaAOE = 3,
    BombardaCooldown = 4,
    ConfringoProjectiles = 5,
    ConfundoTeammates = 6,
    CrucioHeals = 7,
    CrucioUpgrade = 8,
    DepulsoBounce = 9,
    DepulsoUpgrade = 10,
    DescendoAOE = 11,
    DiffindoUnblockable = 12,
    DiffindoUpgrade = 13,
    DisillusionmentMarking = 14,
    ExpelliarmusSpecialDisarm = 15,
    ExpelliarmusUpgrade = 16,
    FiendFyreUpgrade = 17,
    FlipendoCharged = 18,
    FlipendoUpgrade = 19,
    GlaciusAOE = 20,
    ImperiusAllyDamage = 21,
    IncendioProjectiles = 22,
    IncendioUpgrade = 23,
    LeviosoCharged = 24,
    LeviosoUpgrade = 25,
    LumosSpark = 26,
    OppugnoCharacters = 27,
    OppugnoUpgrade = 28,
    ParryUpgrade = 29,
    ProtegoAOE = 30,
    ProtegoDamageIncrease = 31,
    ProtegoPerfectUnblockable = 32,
    ProtegoPerfectReturn = 33,
    ProtegoFocus = 34,
    RevelioOccluded = 35,
    StupefyUpgrade = 36,
    StupefyPopup = 37,
    StupefyRicochet = 38,
    StupefyElderWand = 39,
    StealthTakedownUpgrade = 40,
    TransformationUpgrade = 41,
    CursedParry = 42,
    CompanionInfiltrationStealth = 43,
    AdditionalCompanion = 44,
    CompanionImmortal = 45,
    CanCriticalDamage = 46,
    ForceCritical = 47,
    LastKillWasShadowTakedown = 48,
    UI_Show_IncomingAttacks = 49,
    UI_Show_Beasts = 50,
    UI_Show_Forageables = 51,
    UI_Show_LawEnforcement = 52,
    Status_WellRested = 53,
    Status_Notorious = 54,
    Status_Renown = 55,
    Status_Infamous = 56,
    DeadlyToken = 57,
    KeepDeadlyToken = 58,
    MomentumToken = 59,
    TacticianToken = 60,
    RadiantAura = 61,
    DADA_Tactician3 = 62,
    DADA_Tactician4 = 63,
    IncreasedCursedAllyDamage = 64,
    DuelistProbing = 65,
    BreakBlockUnaware = 66,
    ShieldBreaker = 67,
    DA_UnlockTime = 68,
    DA_PickPocket1 = 69,
    DA_PickPocket2 = 70,
    DA_CanSellStolenItems = 71,
    DA_ShowObjectsValue = 72,
    Potion_Effect_Edurus = 73,
    Potion_Effect_Beautification = 74,
    Potion_Effect_Maxima = 75,
    Potion_Upgrade_EdurusRock = 76,
    Potion_Upgrade_TwisterMixtureUpgrade = 77,
    Potion_Upgrade_Thunderbrew = 78,
    HerbCapIncrease_1 = 79,
    HerbCapIncrease_2 = 80,
    HerbCapIncrease_3 = 81,
    CabbagePullAggro = 82,
    CabbageGroupBreaksShield = 83,
    VenomousTentaculaWeaken = 84,
    VenomousTentaculaAttackStupifyTarget = 85,
    MandrakeScreamIgnoreCompanions = 86,
    RecallPlantsAfterCombat = 87,
    SwapLowestHealthPlant = 88,
    VenomousTentaculaCanBite = 89,
    CabbagePerformDeathAttack = 90,
    MandrakeImpactAOE = 91,
    MarkLocks = 92,
    Beasts_AoeRecall = 93,
    Beasts_RecallBuff = 94,
    Beasts_BreakShield = 95,
    HighlightSneakOScopes = 96,
    StupefyDistraction = 97,
    ImprovedPolyjuice = 98,
    SHADOW_Blink1 = 99,
    SHADOW_Blink2 = 100,
    INF_Swift = 101,
    INF_Swifter = 102,
    Curses = 103,
    DAC_CurseBreak = 104,
    Talent_Core_OppugnoQuick = 105,
    Talent_Core_DodgeAM = 106,
    Talent_Core_DodgeFast = 107,
    Talent_Core_StupefyStun = 108,
    Talent_Infil_PetrificusTotalus = 109,
    Talent_Curse_CurseLong = 110,
    Talent_Sanc_Mandrake = 111,
    Talent_Sanc_Cabbage = 112,
    Talent_Sanc_Venomous = 113,
    Talent_Sanc_Maxima = 114,
    Talent_Sanc_Invisibility = 115,
    Talent_Sanc_AMPotion = 116,
    NumTags = 117,
    ERPGAbilityTag_MAX = 118,
}

---@enum ERPGEffect
local ERPGEffect = {
    None = 0,
    Damage_CriticalHit = 1,
    Potions_DoubleEffective = 2,
    ERPGEffect_MAX = 3,
}

---@enum ERPGModInputTags
local ERPGModInputTags = {
    XPLevel = 0,
    ItemEffectiveness = 1,
    OffenseStat = 2,
    DefenseStat = 3,
    CooldownStat = 4,
    StatDamageMultiplier = 5,
    StatDamageReduction = 6,
    StatCooldownReduction = 7,
    LastHealAmount = 8,
    PotionEffectCounter = 9,
    ComboFocusMultiplier = 10,
    NumTags = 11,
    ERPGModInputTags_MAX = 12,
}

---@enum ERTReflectionsBehaviorMode
local ERTReflectionsBehaviorMode = {
    NoBehavior = 0,
    OutsideHogwarts = 1,
    InsideHogwarts = 2,
    ERTReflectionsBehaviorMode_MAX = 3,
}

---@enum ERaceType
local ERaceType = {
    TimeTrial = 0,
    RingSequence = 1,
    ERaceType_MAX = 2,
}

---@enum ERagdollDrivingSetting
local ERagdollDrivingSetting = {
    KeepCurrent = 0,
    AlwaysOverride = 1,
    SetIfStronger = 2,
    SetIfWeaker = 3,
    SetIfAlreadyInFullRagdoll = 4,
    SetIfNotAlreadyInFullRagdoll = 5,
    ERagdollDrivingSetting_MAX = 6,
}

---@enum EReactionLocationSyncPointType
local EReactionLocationSyncPointType = {
    Instigator = 0,
    TargetPosition = 1,
    EReactionLocationSyncPointType_MAX = 2,
}

---@enum EReactionPlayMultiFxTaskType
local EReactionPlayMultiFxTaskType = {
    UseImpactLocationAndDirectionInverse = 0,
    UseImpactDirectionInverseOnly = 1,
    EReactionPlayMultiFxTaskType_MAX = 2,
}

---@enum EReactionRotationSyncPointType
local EReactionRotationSyncPointType = {
    Instigator = 0,
    InstigatorInverse = 1,
    EReactionRotationSyncPointType_MAX = 2,
}

---@enum EReactionState
local EReactionState = {
    None = 0,
    HitLegsLeft = 1,
    HitLegsRight = 2,
    DeathFront = 3,
    DeathLeft = 4,
    DeathRight = 5,
    DeathBack = 6,
    HitHeadDownFront = 7,
    HitHeadDownLeft = 8,
    HitHeadDownRight = 9,
    HitHeadFront = 10,
    HitHeadLeft = 11,
    HitHeadRight = 12,
    HitHeadUpFront = 13,
    HitHeadUpLeft = 14,
    HitHeadUpRight = 15,
    HitTorsoFront = 16,
    HitTorsoLeft = 17,
    HitTorsoRight = 18,
    KnockDownFront = 19,
    KnockDownLeft = 20,
    KnockDownRight = 21,
    EReactionState_MAX = 22,
}

---@enum ERegionType
local ERegionType = {
    InvalidRegion = 0,
    HogwartsInitialRegion = 1,
    NorthSwamp = 2,
    ForbiddenForestRegion = 3,
    HogsmeadeRegion = 4,
    MouthOfForbiddenForestRegion = 5,
    HogwartsRegion = 6,
    HogwartsValleyRegion = 7,
    WestHogwartsRegion = 8,
    SouthSwampRegion = 9,
    CoastLakeRegion = 10,
    CoastArmRegion = 11,
    HelmsdaleAreaRegion = 12,
    SouthCoastRegion = 13,
    NorthCoastRegion = 14,
    CoastlineEntrance = 15,
    PittUponFordSubregion = 16,
    SanBakarsTowerSubregion = 17,
    AVMOutlookSubRegion = 18,
    UpperHogsfieldSubregion = 19,
    HSTCastleSubregion = 20,
    HearthSubgregion = 21,
    LowerHogsfieldSubregion = 22,
    BrocburrowSubregion = 23,
    KeenbridgeSubregion = 24,
    AllSaintsCastleSubregion = 25,
    ChepstowCastleSubregion = 26,
    FeldcroftSubregion = 27,
    IrondaleSubregion = 28,
    JerpointCastleSubregion = 29,
    SpookyForestSubregion = 30,
    MarunweemSubregion = 31,
    EvilGoblinCanyonSubregion = 32,
    HalkirkSubregion = 33,
    RookwoodManorSubregion = 34,
    HelmsdaleSubregion = 35,
    ArbroathCastleSubregion = 36,
    HogsmeadeStationSubregion = 37,
    SpireAreaSubregion = 38,
    FearglasCastleSubregion = 39,
    PoidsearRuinSubregion = 40,
    HogwartsSouth_FlightHeightModifier_01 = 41,
    HogwartsSouth_FlightHeightModifier_02 = 42,
    HogwartsSouth_FlightHeightModifier_03 = 43,
    HogwartsSouth_FlightHeightModifier_04 = 44,
    HogwartsSouth_FlightHeightModifier_05 = 45,
    HogwartsSouth_FlightHeightModifier_06 = 46,
    HogwartsSouth_FlightHeightModifier_07 = 47,
    HogwartsSouth_FlightHeightModifier_08 = 48,
    HogwartsSouth_FlightHeightModifier_09 = 49,
    HogwartsSouth_FlightHeightModifier_10 = 50,
    HogwartsSouth_FlightHeightModifier_11 = 51,
    HogwartsSouth_FlightHeightModifier_12 = 52,
    HogwartsSouth_FlightHeightModifier_13 = 53,
    HogwartsSouth_FlightHeightModifier_14 = 54,
    HogwartsSouth_FlightHeightModifier_15 = 55,
    HogwartsNorth_FlightHeightModifier_01 = 56,
    HogwartsNorth_FlightHeightModifier_02 = 57,
    HogwartsNorth_FlightHeightModifier_03 = 58,
    HogwartsNorth_FlightHeightModifier_04 = 59,
    HogwartsNorth_FlightHeightModifier_05 = 60,
    HogwartsNorth_FlightHeightModifier_06 = 61,
    HogwartsNorth_FlightHeightModifier_07 = 62,
    HogwartsNorth_FlightHeightModifier_08 = 63,
    HogwartsNorth_FlightHeightModifier_09 = 64,
    HogwartsNorth_FlightHeightModifier_10 = 65,
    HogwartsNorth_FlightHeightModifier_11 = 66,
    HogwartsNorth_FlightHeightModifier_12 = 67,
    HogwartsNorth_FlightHeightModifier_13 = 68,
    HogwartsNorth_FlightHeightModifier_14 = 69,
    HogwartsNorth_FlightHeightModifier_15 = 70,
    Coast_FlightHeightModifier_01 = 71,
    Coast_FlightHeightModifier_02 = 72,
    Coast_FlightHeightModifier_03 = 73,
    Coast_FlightHeightModifier_04 = 74,
    Coast_FlightHeightModifier_05 = 75,
    Coast_FlightHeightModifier_06 = 76,
    Coast_FlightHeightModifier_07 = 77,
    Coast_FlightHeightModifier_08 = 78,
    Coast_FlightHeightModifier_09 = 79,
    Coast_FlightHeightModifier_10 = 80,
    Coast_FlightHeightModifier_11 = 81,
    Coast_FlightHeightModifier_12 = 82,
    Coast_FlightHeightModifier_13 = 83,
    Coast_FlightHeightModifier_14 = 84,
    Coast_FlightHeightModifier_15 = 85,
    HogwartsBounds = 86,
    HogsmeadeBounds = 87,
    HogwartsCastleBounds = 88,
    CoastBounds = 89,
    HogwartsLake = 90,
    Dungeon = 91,
    MapBounds = 92,
    MaxRegions = 93,
    ERegionType_MAX = 94,
}

---@enum ERespawnReason
local ERespawnReason = {
    None = 0,
    RespawnedFromDeath = 1,
    RespawnedFromFailure = 2,
    TraveledToDungeon = 3,
    TraveledFromDungeon = 4,
    FastTraveled = 5,
    StartedNewDay = 6,
    JogIntoScene = 7,
    WalkIntoScene = 8,
    IntrusionCaught = 9,
    DeathlyHallowsSpawn = 10,
    FastTraveledViaMission = 11,
    ERespawnReason_MAX = 12,
}

---@enum EReticuleState
local EReticuleState = {
    RS_Unlocked = 0,
    RS_Locked = 1,
    RS_FinisherActive = 2,
    RS_FinisherFreeze = 3,
    RS_Fire = 4,
    RS_Idle = 5,
    RS_MAX = 6,
}

---@enum ERightArmPriority
local ERightArmPriority = {
    None = 0,
    LowestPriority = 1,
    UpperBodyIdle = 2,
    UpperBodyAlert = 3,
    UpperBodyAnticipation = 4,
    ChannelSpell = 5,
    UpperBodyFlourish = 6,
    FullBodyUnderLumos = 7,
    Lumos = 8,
    FullBodyUsage = 9,
    UpperBodyUsage = 10,
    WandCastFail = 11,
    FullBodyAbleAbility = 12,
    UpperBodyAbleAbility = 13,
    Cinematic = 14,
    HighestPriority = 15,
    ERightArmPriority_MAX = 16,
}

---@enum ERightArmState
local ERightArmState = {
    None = 0,
    EquipItem = 1,
    UnEquipItem = 2,
    HoldItem = 3,
    PlayExecuteMotion = 4,
    PlayHandOnlyMotion = 5,
    AllowMotionTakeover = 6,
    StopMotionOnly = 7,
    StopMotionAndHideItem = 8,
    HideItem = 9,
    TargetSighted = 10,
    PlayAlertedMotion = 11,
    PlayHeavyAniticipationMotion = 12,
    Optional_PlayHandOnlyMotion = 13,
    StartLumos = 14,
    Channeling = 15,
    Transfiguration = 16,
    WandCastFailed = 17,
    ERightArmState_MAX = 18,
}

---@enum ERootMotModDesiredSpeed
local ERootMotModDesiredSpeed = {
    UseProvided = 0,
    GetFromAnimInstance = 1,
    ERootMotModDesiredSpeed_MAX = 2,
}

---@enum ERootMotionModTargetType
local ERootMotionModTargetType = {
    FaceTracker = 0,
    AimAtTracker = 1,
    LookAtTracker = 2,
    ERootMotionModTargetType_MAX = 3,
}

---@enum ERootMotionModTurnAssistMethod
local ERootMotionModTurnAssistMethod = {
    UseCurve = 0,
    UseCustomInterp = 1,
    UseDampedSpring = 2,
    ERootMotionModTurnAssistMethod_MAX = 3,
}

---@enum ERootMotionModTurnAssistUseDirection
local ERootMotionModTurnAssistUseDirection = {
    FacingTarget_OR_DesiredDirection = 0,
    FallLine = 1,
    DesiredDirectionOnly = 2,
    JumpStartVelocityOnly = 3,
    FallLineWithinRange = 4,
    ERootMotionModTurnAssistUseDirection_MAX = 5,
}

---@enum ESBlockedByWallAnimState
local ESBlockedByWallAnimState = {
    None = 0,
    BothHandsOut = 1,
    RightHandOut = 2,
    LeftHandOut = 3,
    ESBlockedByWallAnimState_MAX = 4,
}

---@enum ESEAllowBTShutdownPriority
local ESEAllowBTShutdownPriority = {
    LowestPriority = 0,
    SeatFillerPriority = 1,
    HighestPriority = 2,
    ESEAllowBTShutdownPriority_MAX = 3,
}

---@enum ESEEnsureHighLODPriority
local ESEEnsureHighLODPriority = {
    Companion = 0,
    PassiveCinematic = 1,
    ActiveCinematic = 2,
    PerformTask = 3,
    Creature = 4,
    AuthorityFigure = 5,
    SeatFiller = 6,
    BroomFlight = 7,
    Apparate = 8,
    ApparateNow = 9,
    ESEEnsureHighLODPriority_MAX = 10,
}

---@enum ESEPrecacheFleshPriority
local ESEPrecacheFleshPriority = {
    CachedPriority = 0,
    BluePrintPriority = 1,
    PerformTaskPriority = 2,
    CompanionPriority = 3,
    MissionPriority = 4,
    ConversationPriority = 5,
    CinematicPriority = 6,
    ESEPrecacheFleshPriority_MAX = 7,
}

---@enum ESMeshWidgetParticleEmitterType
local ESMeshWidgetParticleEmitterType = {
    Continuous = 0,
    Explode = 1,
    ESMeshWidgetParticleEmitterType_MAX = 2,
}

---@enum ESanctuaryIdentity
local ESanctuaryIdentity = {
    Default = 0,
    Potioneer = 1,
    Herbologist = 2,
    Magizoologist = 3,
    DarkWizard = 4,
    NUM = 5,
    ESanctuaryIdentity_MAX = 6,
}

---@enum ESanctuaryMiniMapType
local ESanctuaryMiniMapType = {
    MINIMAP_TYPE_NONE = 0,
    MINIMAP_TYPE_HUB = 1,
    MINIMAP_TYPE_GRASSLAND = 2,
    MINIMAP_TYPE_FOREST = 3,
    MINIMAP_TYPE_COAST = 4,
    MINIMAP_TYPE_SWAMP = 5,
    MINIMAP_TYPE_STUDY = 6,
    MINIMAP_TYPE_MAX = 7,
}

---@enum ESaveBlockReason
local ESaveBlockReason = {
    BLOCK_SAVE_UNKNOWN = 0,
    BLOCK_SAVE_PERFORMTASK = 1,
    BLOCK_SAVE_COMBAT = 2,
    BLOCK_SAVE_TUTORIAL = 3,
    BLOCK_SAVE_CINEMATIC = 4,
    BLOCK_SAVE_CONVERSATION = 5,
    BLOCK_SAVE_MOUNT = 6,
    BLOCK_SAVE_EXCLUSIVE_MISSION = 7,
    BLOCK_SAVE_DUNGEON = 8,
    BLOCK_SAVE_MAX = 9,
}

---@enum ESceneActionAdaptationAffect
local ESceneActionAdaptationAffect = {
    Bloom = 0,
    AutoExposure = 1,
    Luminance = 2,
    ESceneActionAdaptationAffect_MAX = 3,
}

---@enum ESceneActionAdaptationSoftDisableMethod
local ESceneActionAdaptationSoftDisableMethod = {
    MinExposure = 0,
    AverageMinMaxExposure = 1,
    Zero = 2,
    NegativeTwenty = 3,
    ESceneActionAdaptationSoftDisableMethod_MAX = 4,
}

---@enum ESceneAction_CreatureFlyingOption
local ESceneAction_CreatureFlyingOption = {
    StopFlying = 0,
    StartFlying = 1,
    ESceneAction_MAX = 2,
}

---@enum ESceneRigCategory
local ESceneRigCategory = {
    None = 0,
    Cinematic = 1,
    Conversation = 2,
    ConversationAmbient = 3,
    Station = 4,
    GhostStory = 5,
    Weather = 6,
    Vignette = 7,
    DialogueOnly = 8,
    Mission = 9,
    WowMoment = 10,
    PIM = 11,
    ESceneRigCategory_MAX = 12,
}

---@enum ESceneRigRenderingCuts
local ESceneRigRenderingCuts = {
    Camera = 0,
    Exposure = 1,
    PreExposure = 2,
    Fog = 3,
    SkyLight = 4,
    AudioListener = 5,
    ESceneRigRenderingCuts_MAX = 6,
}

---@enum EScheduleEnableDisable
local EScheduleEnableDisable = {
    Ignore = 0,
    Enable = 1,
    DisableAndAbandonStations = 2,
    DisableButStayInStation = 3,
    EScheduleEnableDisable_MAX = 4,
}

---@enum EScheduleEntryType
local EScheduleEntryType = {
    type_static = 0,
    type_dynamic = 1,
    type_MAX = 2,
}

---@enum ESchedulingPriority
local ESchedulingPriority = {
    ScheduledEntityPriority = 0,
    BluePrintPriority = 1,
    CompanionPriority = 2,
    NonCombatPriority = 3,
    NPCPriority = 4,
    EnemyPriority = 5,
    CinematicPriority = 6,
    SystemPriority = 7,
    TransientAction = 8,
    ShutdownPriority = 9,
    ForcedShutdownPriority = 10,
    ESchedulingPriority_MAX = 11,
}

---@enum EScrollingWidgetMode
local EScrollingWidgetMode = {
    SCROLLING_WIDGET_MODE_NONE = 0,
    SCROLLING_WIDGET_MODE_ALWAYS_ON = 1,
    SCROLLING_WIDGET_MODE_ON_HOVER = 2,
    SCROLLING_WIDGET_MODE_IF_TRUNCATED = 3,
    SCROLLING_WIDGET_MODE_MAX = 4,
}

---@enum EScrollingWidgetTypes
local EScrollingWidgetTypes = {
    SCROLLING_WIDGET_TYPE_NONE = 0,
    SCROLLING_WIDGET_TYPE_LEFT_TO_RIGHT = 1,
    SCROLLING_WIDGET_TYPE_RIGHT_TO_LEFT = 2,
    SCROLLING_WIDGET_TYPE_MAX = 3,
}

---@enum ESeasonOverride
local ESeasonOverride = {
    SO_NONE = 0,
    SO_SPRING = 1,
    SO_FALL = 2,
    SO_WINTER = 3,
    SO_SUMMER = 4,
    SO_MAX = 5,
}

---@enum ESexType
local ESexType = {
    type_male = 0,
    type_female = 1,
    type_MAX = 2,
}

---@enum ESfxOcclusion
local ESfxOcclusion = {
    NoOcclusion_0 = 0,
    Single_1 = 1,
    HulaHoop_8 = 2,
    FacingPortal_16 = 3,
    EdgeOnPortal_24 = 4,
    ESfxOcclusion_MAX = 5,
}

---@enum ESimpleTopologyType
local ESimpleTopologyType = {
    Init = 0,
    PendingCompute = 1,
    Surface = 2,
    Interior = 3,
    EmptySpace = 4,
    Error = 5,
    ESimpleTopologyType_MAX = 6,
}

---@enum ESlaveToSplineUpdateMode
local ESlaveToSplineUpdateMode = {
    Wrap = 0,
    PingPong = 1,
    Once = 2,
    Manual = 3,
    ESlaveToSplineUpdateMode_MAX = 4,
}

---@enum ESocialCallOutDisplayChannel
local ESocialCallOutDisplayChannel = {
    SocialCapitalMovement = 0,
    StationSelection = 1,
    ScheduledGoal = 2,
    Name = 3,
    TravelGoalSite = 4,
    NUM_CHANNELS = 5,
    ESocialCallOutDisplayChannel_MAX = 6,
}

---@enum ESocialCallOutDisplayMode
local ESocialCallOutDisplayMode = {
    None = 0,
    Name = 1,
    Stations = 2,
    SocialCapital = 3,
    Schedule = 4,
    All = 5,
    Travel = 6,
    ESocialCallOutDisplayMode_MAX = 7,
}

---@enum ESocialResponseContext
local ESocialResponseContext = {
    None = 0,
    InTransit = 1,
    InStation = 2,
    ESocialResponseContext_MAX = 3,
}

---@enum ESpawnAOE
local ESpawnAOE = {
    SuccessfulHit = 0,
    FailedHit = 1,
    Blocked = 2,
    Deflected = 3,
    FizzledOut = 4,
    ESpawnAOE_MAX = 5,
}

---@enum ESpawnAreaEnum
local ESpawnAreaEnum = {
    SPAWN_RING = 0,
    SPAWN_SPHERE = 1,
    SPAWN_SPHERE_FALLOFF = 2,
    SPAWN_MAX = 3,
}

---@enum ESpawnCameraActorType
local ESpawnCameraActorType = {
    StackCamera = 0,
    DefaultCamera = 1,
    ESpawnCameraActorType_MAX = 2,
}

---@enum ESpawnedStationTypes
local ESpawnedStationTypes = {
    SPAWNED_STATION_TYPE_NONE = 0,
    SPAWNED_STATION_TYPE_WALKBY = 1,
    SPAWNED_STATION_TYPE_STOPCHAT = 2,
    SPAWNED_STATION_TYPE_MOVING_R = 3,
    SPAWNED_STATION_TYPE_MOVING_LR = 4,
    SPAWNED_STATION_TYPE_COUNT = 5,
    SPAWNED_STATION_TYPE_MAX = 6,
}

---@enum ESpeedInclusivity
local ESpeedInclusivity = {
    Inclusive = 0,
    InclusiveMinOnly = 1,
    InclusiveMaxOnly = 2,
    NotInclusive = 3,
    ESpeedInclusivity_MAX = 4,
}

---@enum ESpeedOverridePriority
local ESpeedOverridePriority = {
    ScheduledEntityPriority = 0,
    SplineWalkerPriority = 1,
    PerformTaskPriority = 2,
    PerformTaskForAIPriority = 3,
    GhostStoryPriority = 4,
    CrimeSystemPriority = 5,
    ForcedNavigationPriority = 6,
    WalkToStationPriority = 7,
    ApparatePriority = 8,
    ESpeedOverridePriority_MAX = 9,
}

---@enum ESpeedType
local ESpeedType = {
    DesiredSpeed = 0,
    AverageSpeed = 1,
    ActualSpeed = 2,
    LastDesiredSpeed = 3,
    BufferedDesiredSpeed = 4,
    ESpeedType_MAX = 5,
}

---@enum ESpellButton
local ESpellButton = {
    SPELL_TOP = 0,
    SPELL_BOTTOM = 1,
    SPELL_LEFT = 2,
    SPELL_RIGHT = 3,
    SPELL_MAX = 4,
}

---@enum ESpellCategory
local ESpellCategory = {
    None = 0,
    CC = 1,
    Forceful = 2,
    Heavy = 3,
    Tool = 4,
    Sanctuary = 5,
    DarkArts = 6,
    ESpellCategory_MAX = 7,
}

---@enum ESpellDirection
local ESpellDirection = {
    SpellDir_North = 0,
    SpellDir_NorthEast = 1,
    SpellDir_East = 2,
    SpellDir_SouthEast = 3,
    SpellDir_South = 4,
    SpellDir_SouthWest = 5,
    SpellDir_West = 6,
    SpellDir_NorthWest = 7,
    SpellDir_MAX = 8,
}

---@enum ESpellState
local ESpellState = {
    Cast = 0,
    Success = 1,
    Charged = 2,
    Channeling = 3,
    Other = 4,
    ESpellState_MAX = 5,
}

---@enum ESpellUpgrades
local ESpellUpgrades = {
    UpgradedMechanic = 0,
    Maxima = 1,
    IncrementLimitedCount = 2,
    AffectCharacters = 3,
    Unblockable = 4,
    BreakBlockUnaware = 5,
    BreakBlockPygmyPerk = 6,
    Curse = 7,
    WeakenNonLiftable = 8,
    Popup = 9,
    Projectiles = 10,
    IncreasedCharacterDuration = 11,
    AOE = 12,
    PerfectProtegoUnblockable = 13,
    ProtegoAOE = 14,
    ProtegoDamage = 15,
    ProtegoFocusGain = 16,
    CrucioHeals = 17,
    ImperiusAllyDamage = 18,
    BombardaCooldown = 19,
    ESpellUpgrades_MAX = 20,
}

---@enum ESpiderTypeEnum
local ESpiderTypeEnum = {
    ST_Woodlouse = 0,
    ST_Venomous = 1,
    ST_Luminous = 2,
    ST_MAX = 3,
}

---@enum EStartVecMethod
local EStartVecMethod = {
    None = 0,
    ReferenceVector = 1,
    RandomAngleOwnerForward = 2,
    RandomAngleToTarget = 3,
    EStartVecMethod_MAX = 4,
}

---@enum EStationBreakableStates
local EStationBreakableStates = {
    Unbroken = 0,
    Broken = 1,
    Protected = 2,
    EStationBreakableStates_MAX = 3,
}

---@enum EStationDataType
local EStationDataType = {
    TYPE_OWNED = 0,
    TYPE_MANAGED = 1,
    TYPE_SITE = 2,
    TYPE_SPAWNED = 3,
    TYPE_PLAYER = 4,
    TYPE_PORTAL = 5,
    TYPE_FLUID = 6,
    TYPE_MAX = 7,
}

---@enum EStationExitCallBack
local EStationExitCallBack = {
    InteractionCompleteCallback = 0,
    StartApparateCallback = 1,
    DestructionCallback = 2,
    DoNothingCallback = 3,
    DoNothingCallbackAndClear = 4,
    EStationExitCallBack_MAX = 5,
}

---@enum EStationInteraction
local EStationInteraction = {
    STATION_INTERACTION_CURRENT_NONE = 0,
    STATION_INTERACTION_CURRENT_ENTERING = 1,
    STATION_INTERACTION_CURRENT_INSIDE = 2,
    STATION_INTERACTION_CURRENT_EXITING = 3,
    STATION_INTERACTION_DESIRED_NONE = 4,
    STATION_INTERACTION_DESIRED_ENTER = 5,
    STATION_INTERACTION_DESIRED_ENTER_NOW = 6,
    STATION_INTERACTION_DESIRED_EXIT = 7,
    STATION_INTERACTION_DESIRED_EXITNOW = 8,
    STATION_INTERACTION_DESIRED_AUTO_EXIT = 9,
    STATION_INTERACTION_MAIL_START = 10,
    STATION_INTERACTION_MAIL_END = 11,
    STATION_INTERACTION_MISSION_START = 12,
    STATION_INTERACTION_MISSION_END = 13,
    STATION_INTERACTION_MAX = 14,
}

---@enum EStationMode
local EStationMode = {
    FullBody = 0,
    PartialBody = 1,
    EStationMode_MAX = 2,
}

---@enum EStationPlayerInteractionPermissions
local EStationPlayerInteractionPermissions = {
    PIP_NEVER = 0,
    PIP_WHEN_OCCUPIED = 1,
    PIP_CONDITIONAL = 2,
    PIP_ALWAYS = 3,
    PIP_MAX = 4,
}

---@enum EStationSelectionMethod
local EStationSelectionMethod = {
    EQS_SELECT_CLOSEST = 0,
    EQS_SELECT_FARTHEST = 1,
    EQS_SELECT_RANDOM = 2,
    EQS_SELECT_ALL = 3,
    EQS_SELECT_MAX = 4,
}

---@enum EStationSetupFlags
local EStationSetupFlags = {
    DisallowParentProps = 0,
    Breakable = 1,
    NeedsServiceProvider = 2,
    EStationSetupFlags_MAX = 3,
}

---@enum EStationSetupHouseAndGender
local EStationSetupHouseAndGender = {
    Random = 0,
    Female = 1,
    Male = 2,
    Gryffindor = 3,
    Slytherin = 4,
    Ravenclaw = 5,
    Hufflepuff = 6,
    EStationSetupHouseAndGender_MAX = 7,
}

---@enum EStationSnapConnectionsToGround
local EStationSnapConnectionsToGround = {
    SCTG_UNKNOWN = 0,
    SCTG_NO = 1,
    SCTG_YES = 2,
    SCTG_MAX = 3,
}

---@enum EStationState
local EStationState = {
    None = 0,
    EnterStation = 1,
    InStation = 2,
    ExitStation = 3,
    EStationState_MAX = 4,
}

---@enum EStationStoryContent_ClipType
local EStationStoryContent_ClipType = {
    Enter = 0,
    TransitionIn = 1,
    Idle = 2,
    TransitionOut = 3,
    Exit = 4,
    EStationStoryContent_MAX = 5,
}

---@enum EStolenType
local EStolenType = {
    STOLEN_TYPE_DONT_CARE = 0,
    STOLEN_TYPE_STOLEN = 1,
    STOLEN_TYPE_NOT_STOLEN = 2,
    STOLEN_TYPE_MAX = 3,
}

---@enum EStoryEavesdropState
local EStoryEavesdropState = {
    EAV_STATE_NONE = 0,
    EAV_STATE_NOT_STARTED = 1,
    EAV_STATE_PLAYING = 2,
    EAV_STATE_FINISHED = 3,
    EAV_STATE_COUNT = 4,
    EAV_STATE_MAX = 5,
}

---@enum EStoryGraphCondition_PlayerHouse
local EStoryGraphCondition_PlayerHouse = {
    Gryffindor = 0,
    Hufflepuff = 1,
    Ravenclaw = 2,
    Slytherin = 3,
    EStoryGraphCondition_MAX = 4,
}

---@enum EStreamingBehaviorMode
local EStreamingBehaviorMode = {
    Loading = 0,
    Flight = 1,
    Gameplay = 2,
    EStreamingBehaviorMode_MAX = 3,
}

---@enum EStreamingBehaviorTactic
local EStreamingBehaviorTactic = {
    Balanced = 0,
    PrioritizeUnloads = 1,
    PrioritizeLoads = 2,
    EStreamingBehaviorTactic_MAX = 3,
}

---@enum EStreamingPlaceholderPriority
local EStreamingPlaceholderPriority = {
    HardLoad = 0,
    High = 1,
    Normal = 2,
    EStreamingPlaceholderPriority_MAX = 3,
}

---@enum ESubLevelID
local ESubLevelID = {
    None = 0,
    SUB_Sanctum_Tech = 1,
    SubLevel_Count = 2,
    ESubLevelID_MAX = 3,
}

---@enum ESubjectType
local ESubjectType = {
    Class = 0,
    Club = 1,
    ExtraCurricular = 2,
    Nurture = 3,
    SelfStudy = 4,
    ESubjectType_MAX = 5,
}

---@enum ESynchronizeMethod
local ESynchronizeMethod = {
    Synchronize_None = 0,
    Synchronize_Location = 1,
    Synchronize_Schedule = 2,
    Synchronize_LocationAndSchedule = 3,
    Synchronize_ReleaseCustomT3 = 4,
    Synchronize_MAX = 5,
}

---@enum ESystemicCompanion
local ESystemicCompanion = {
    NoCompanion = 0,
    Sebastian = 1,
    Natsai = 2,
    Poppy = 3,
    ESystemicCompanion_MAX = 4,
}

---@enum ETagOperation
local ETagOperation = {
    Add = 0,
    Remove = 1,
    ETagOperation_MAX = 2,
}

---@enum ETargetOrientation
local ETargetOrientation = {
    AnyDirection = 0,
    TargetAxis = 1,
    TargetDirection = 2,
    ETargetOrientation_MAX = 3,
}

---@enum ETargetingMode
local ETargetingMode = {
    None = 0,
    AutoTarget = 1,
    LockOn = 2,
    ETargetingMode_MAX = 3,
}

---@enum ETaskType
local ETaskType = {
    EvalAchievement = 0,
    EvalAddBeacon = 1,
    EvalBlueprint = 2,
    EvalBranchStall = 3,
    EvalCanAddToInventory = 4,
    EvalCharacterMovement = 5,
    EvalConversationResult = 6,
    EvalCurtainRaised = 7,
    EvalDelay = 8,
    EvalDelayOnce = 9,
    EvalDeliverTo = 10,
    EvalDeliverToObject = 11,
    EvalEncounterComplete = 12,
    EvalEnterWorld = 13,
    EvalFakeTaskObjective = 14,
    EvalForcedConversationAllowed = 15,
    EvalGainedKnowledge = 16,
    EvalGameNotPaused = 17,
    EvalGamePlatform = 18,
    EvalGear = 19,
    EvalHouseStatus = 20,
    EvalInteractedWith = 21,
    EvalInteractedWithMissionEntryPoint = 22,
    EvalInventory = 23,
    EvalKills = 24,
    EvalLock = 25,
    EvalLootDropLooted = 26,
    EvalMissionAccepted = 27,
    EvalMissionComplete = 28,
    EvalMissionEntryPointAvailable = 29,
    EvalNamedCreatureState = 30,
    EvalNever = 31,
    EvalNPCState = 32,
    EvalOnDemandGreeting = 33,
    EvalPerformTasksDone = 34,
    EvalPlayerDeath = 35,
    EvalProximity = 36,
    EvalPurchasedProduct = 37,
    EvalReadMail = 38,
    EvalSpellDiamond = 39,
    EvalStat = 40,
    EvalStoryGraphEvent = 41,
    EvalSyncConversationTimeChange = 42,
    EvalTalkTo = 43,
    EvalTaskProgress = 44,
    EvalTriggerAndWaitForStoryGraphEvent = 45,
    EvalWaitForStreaming = 46,
    EvalWaitForTutorial = 47,
    EvalWaitUntilNextDay = 48,
    EvalWaitUntilTimeRange = 49,
    EvalWakeInOwnBed = 50,
    ActivateMission = 51,
    ActivateT3Moment = 52,
    AddAmbientCallout = 53,
    AddScheduleOverride = 54,
    AddToInventory = 55,
    AdjustInventoryByContainer = 56,
    AggroNPC = 57,
    AssignSpellToSpellDiamond = 58,
    AutoSave = 59,
    BeginExclusive = 60,
    ChangeUpdateConversation = 61,
    CheckFieldGuide = 62,
    ClearBranchEvalStepByName = 63,
    ClearBranchEvalSteps = 64,
    ClearRespawnLocationOverride = 65,
    ClearSeasonOverride = 66,
    CompleteMission = 67,
    CopyLock = 68,
    DisableMissionEntryPoint = 69,
    DiscoverMission = 70,
    DoNothing = 71,
    EnableMissionEntryPoint = 72,
    EndExclusive = 73,
    EndPerformTasks = 74,
    FadeIn = 75,
    FadeOut = 76,
    FastTravel = 77,
    ForceAutoSave = 78,
    ForceConversation = 79,
    ForcedCompanionAllowedArea = 80,
    GotoStep = 81,
    GrantKnowledge = 82,
    InitializeSceneRig = 83,
    InitializeStoryGraphEvent = 84,
    InitializeTutorial = 85,
    KeepCurtainLowered = 86,
    KillMission = 87,
    LoadMissionSublevel = 88,
    LoadTransientSublevel = 89,
    LowerCurtain = 90,
    PauseNotificationCategory = 91,
    PerformTasks = 92,
    PlayDialogue = 93,
    PlayRepeatingSceneRig = 94,
    PlaySceneRig = 95,
    PlayT3SceneRig = 96,
    PlayTutorial = 97,
    PostAkEventByName = 98,
    PrintText = 99,
    ProtectNPC = 100,
    RaiseCurtain = 101,
    RefreshVendorStock = 102,
    RegisterVendorConversation = 103,
    RememberInventory = 104,
    RemoveAmbientCallout = 105,
    RemoveCriticalNPC = 106,
    RemoveFromInventory = 107,
    RemoveScheduleOverride = 108,
    RemoveUpdateConversation = 109,
    ReplaceScheduleOverride = 110,
    ResetStoryGraph = 111,
    RestoreInventory = 112,
    ResumeNotificationCategory = 113,
    RunSpecialCaseCode = 114,
    SaveInventory = 115,
    SendMail = 116,
    SendMessageFloat = 117,
    SendMessageInt = 118,
    SendMessageNone = 119,
    SendMessageString = 120,
    SetAbandonRespawn = 121,
    SetConditionalReward = 122,
    SetCurrentTime = 123,
    SetDebugCompleteTeleport = 124,
    SetDialogueGatePattern = 125,
    SetDoorState = 126,
    SetForcedCompanionStatus = 127,
    SetGameFeature = 128,
    SetHoboSchedule = 129,
    SetLock = 130,
    SetNamedCreatureCanReturnToWild = 131,
    SetNPCState = 132,
    SetNPCWorld = 133,
    SetQuestActiveJournal = 134,
    SetQuestAvailableJournal = 135,
    SetQuestCompleteJournal = 136,
    SetRespawnLocationOverride = 137,
    SetSchedule = 138,
    SetSeason = 139,
    SetSeasonOverride = 140,
    SetSpellDiamondState = 141,
    SetStat = 142,
    SetSystemicCompanionStatus = 143,
    SetTimePasses = 144,
    SetWeatherSequence = 145,
    ShowMissionCompleteUI = 146,
    StartBroomRace = 147,
    StopRepeatingSceneRig = 148,
    StopSceneRig = 149,
    TrackMission = 150,
    TriggerStoryGraphEvent = 151,
    UnloadMissionSublevel = 152,
    UnregisterVendorConversation = 153,
    UpdateAchievement = 154,
    ETaskType_MAX = 155,
}

---@enum ETask_TargetTrackerType
local ETask_TargetTrackerType = {
    None = 0,
    Face = 1,
    LookAt = 2,
    AimAt = 3,
    ETask_MAX = 4,
}

---@enum ETask_TargetType
local ETask_TargetType = {
    None = 0,
    Location = 1,
    Actor = 2,
    DesiredDirection = 3,
    CognitionTarget = 4,
    FwdLoop = 5,
    ETask_MAX = 6,
}

---@enum ETier4Type
local ETier4Type = {
    T4Student = 0,
    T4Townsperson = 1,
    T4DarkWizard = 2,
    T4Goblin = 3,
    T4_Max = 4,
    ETier4Type_MAX = 5,
}

---@enum ETileState
local ETileState = {
    None = 0,
    Near = 1,
    Mid = 2,
    Far = 3,
    ETileState_MAX = 4,
}

---@enum ETimedAbilityRetriggerBehaviour
local ETimedAbilityRetriggerBehaviour = {
    Restart = 0,
    Delay_IgnoreActive = 1,
    Delay_ExtendActive = 2,
    Ignore = 3,
    ETimedAbilityRetriggerBehaviour_MAX = 4,
}

---@enum ETimedAbilityUnit
local ETimedAbilityUnit = {
    Weeks = 0,
    Days = 1,
    Hours = 2,
    Minutes = 3,
    Seconds = 4,
    RealSeconds = 5,
    ETimedAbilityUnit_MAX = 6,
}

---@enum ETrackingVolumeType
local ETrackingVolumeType = {
    None = 0,
    RandomEncounter = 1,
    EncounterExclusion = 2,
    Perception = 3,
    ForceAction = 4,
    ETrackingVolumeType_MAX = 5,
}

---@enum ETrainSplineDirection
local ETrainSplineDirection = {
    INCREMENTING_NORTH = 0,
    INCREMENTING_SOUTH = 1,
    INCREMENTING_MAX = 2,
}

---@enum ETrainType
local ETrainType = {
    TRAIN_ENGINE = 0,
    TRAIN_COAL = 1,
    TRAIN_CARRIAGE = 2,
    MAX = 3,
}

---@enum ETransfigurationActionFlags
local ETransfigurationActionFlags = {
    DUMMY = 0,
    Conjuration = 1,
    Transformation = 2,
    Levitation = 4,
    Vanishment = 8,
    Colovaria = 16,
    Scaling = 32,
    Rotation = 64,
    ETransfigurationActionFlags_MAX = 65,
}

---@enum ETransfigurationInitialColor
local ETransfigurationInitialColor = {
    Default = 0,
    AlwaysDefaultColor = 1,
    FromPlayersHouse = 2,
    ETransfigurationInitialColor_MAX = 3,
}

---@enum ETransfigurationPlacementError
local ETransfigurationPlacementError = {
    NoError = 0,
    NotOnSurface = 1,
    NotInPlayableSpace = 2,
    SpaceOccupied = 3,
    ETransfigurationPlacementError_MAX = 4,
}

---@enum ETransfigurationSnapping
local ETransfigurationSnapping = {
    NoSnapping = 0,
    ConjurationSurface = 1,
    Fixed = 2,
    PowerpointSnapping = 3,
    WallSnapping = 4,
    ETransfigurationSnapping_MAX = 5,
}

---@enum ETransfigurationUnlockType
local ETransfigurationUnlockType = {
    Unknown = 0,
    UnknownCurrentlyUnlocked = 1,
    AlwaysUnlocked = 2,
    Vendor = 3,
    CurriculumReward = 4,
    MissionReward = 5,
    Challenge = 6,
    LootDrop = 7,
    Product = 8,
    ETransfigurationUnlockType_MAX = 9,
}

---@enum ETransformFunction
local ETransformFunction = {
    NoTransformFunction = 0,
    TransformLinear = 1,
    TransformSine = 2,
    ETransformFunction_MAX = 3,
}

---@enum ETransformProperty
local ETransformProperty = {
    TP_Translation = 0,
    TP_Scale = 1,
    TP_Shear = 2,
    TP_Angle = 3,
    TP_MAX = 4,
}

---@enum ETransformationScale
local ETransformationScale = {
    Small = 0,
    Default = 1,
    Large = 2,
    ETransformationScale_MAX = 3,
}

---@enum ETrollSwingDirection
local ETrollSwingDirection = {
    Forehand = 0,
    Backhand = 1,
    None = 2,
    ETrollSwingDirection_MAX = 3,
}

---@enum ETurnAssistUseDirection
local ETurnAssistUseDirection = {
    FacingTarget_OR_DesiredDirection = 0,
    FallLine = 1,
    DesiredDirectionOnly = 2,
    JumpStartVelocityOnly = 3,
    FallLineWithinRange = 4,
    ETurnAssistUseDirection_MAX = 5,
}

---@enum ETurnInType
local ETurnInType = {
    None = 0,
    Item = 1,
    Knowledge = 2,
    Lock = 3,
    ETurnInType_MAX = 4,
}

---@enum ETutorialPersistence
local ETutorialPersistence = {
    Tutorial_Persistence_Restart = 0,
    Tutorial_Persistence_Ignore = 1,
    Tutorial_Persistence_MAX = 2,
}

---@enum ETutorialPosition
local ETutorialPosition = {
    Tutorial_TopLeft = 0,
    Tutorial_TopCenter = 1,
    Tutorial_TopRight = 2,
    Tutorial_MiddleLeft = 3,
    Tutorial_MiddleCenter = 4,
    Tutorial_MiddleRight = 5,
    Tutorial_BottomLeft = 6,
    Tutorial_BottomCenter = 7,
    Tutorial_BottomRight = 8,
    Tutorial_CustomLocation = 9,
    Tutorial_MAX = 10,
}

---@enum ETutorialState
local ETutorialState = {
    TS_Queued = 0,
    TS_Loading = 1,
    TS_Active = 2,
    TS_MAX = 3,
}

---@enum ETutorialTransparency
local ETutorialTransparency = {
    Tutorial_Transparency_Translucent = 0,
    Tutorial_Transparency_Opaque = 1,
    Tutorial_Transparency_MAX = 2,
}

---@enum EUIAsyncLoadPriority
local EUIAsyncLoadPriority = {
    LoadingPriority_Low = 0,
    LoadingPriority_Normal = 1,
    LoadingPriority_AboveNormal = 2,
    LoadingPriority_High = 3,
    LoadingPriority_Critical = 4,
    LoadingPriority_MAX = 5,
}

---@enum EUIDisplayMode
local EUIDisplayMode = {
    UI_Viewing = 0,
    UI_Selling = 1,
    UI_Gifting = 2,
    UI_Finding = 3,
    UI_Transfer = 4,
    UI_AddAction = 5,
    UI_Curriculum = 6,
    UI_None = 7,
    UI_MAX = 8,
}

---@enum EUIFactsheetMode
local EUIFactsheetMode = {
    UI_Compendium = 0,
    UI_Book = 1,
    UI_Person = 2,
    UI_MAX = 3,
}

---@enum EUIGameOverReason
local EUIGameOverReason = {
    GameOver_Death = 0,
    GameOver_Azkaban = 1,
    GameOver_MissionFailed = 2,
    GameOver_None = 3,
    GameOver_MAX = 4,
}

---@enum EUIHealthBarType
local EUIHealthBarType = {
    HBT_Normal = 0,
    HBT_Boss = 1,
    HBT_Named = 2,
    HBT_Student = 3,
    HBT_None = 4,
    HBT_Count = 5,
    HBT_MAX = 6,
}

---@enum EUIPlatformInputDevice
local EUIPlatformInputDevice = {
    UIPID_PS4 = 0,
    UIPID_XBOne = 1,
    UIPID_PS5 = 2,
    UIPID_XSX = 3,
    UIPID_Switch = 4,
    UIPID_PC = 5,
    UIPID_MAX = 6,
}

---@enum EUIPopupPriority
local EUIPopupPriority = {
    UIPP_Normal = 0,
    UIPP_Important = 1,
    UIPP_Critical = 2,
    UIPP_MAX = 3,
}

---@enum EUIQActionBarType
local EUIQActionBarType = {
    QuickAction_Spells = 0,
    QuickAction_Inventory = 1,
    QuickAction_None = 2,
    QuickAction_MAX = 3,
}

---@enum EUIScreenType
local EUIScreenType = {
    UIST_Screen = 0,
    UIST_NonModalTutorial = 1,
    UIST_ModalTutorial = 2,
    UIST_Popup = 3,
    UIST_MAX = 4,
}

---@enum EUnlockFailedReason
local EUnlockFailedReason = {
    KeyNotFound = 0,
    AlohomoraLevelNotMet = 1,
    EUnlockFailedReason_MAX = 2,
}

---@enum EUpscaleBrand
local EUpscaleBrand = {
    None = 0,
    DLSS = 1,
    FSR = 2,
    NIS = 3,
    FSR2 = 4,
    XeSS = 5,
    FSR3 = 6,
    EUpscaleBrand_MAX = 7,
}

---@enum EUpscaleMode
local EUpscaleMode = {
    None = 0,
    DLSS_Off = 1,
    DLSS_Auto = 2,
    DLSS_UltraPerformance = 3,
    DLSS_Performance = 4,
    DLSS_Balanced = 5,
    DLSS_Quality = 6,
    DLSS_UltraQuality = 7,
    AMD_FSR_Performance = 8,
    AMD_FSR_Balanced = 9,
    AMD_FSR_Quality = 10,
    AMD_FSR_UltraQuality = 11,
    NIS_Performance = 12,
    NIS_Balanced = 13,
    NIS_Quality = 14,
    NIS_UltraQuality = 15,
    AMD_FSR2_UltraPerformance = 16,
    AMD_FSR2_Performance = 17,
    AMD_FSR2_Balanced = 18,
    AMD_FSR2_Quality = 19,
    Intel_XeSS_UltraPerformance = 20,
    Intel_XeSS_Performance = 21,
    Intel_XeSS_Balanced = 22,
    Intel_XeSS_Quality = 23,
    Intel_XeSS_UltraQuality = 24,
    Intel_XeSS_UltraQualityPlus = 25,
    AMD_FSR3_UltraPerformance = 26,
    AMD_FSR3_Performance = 27,
    AMD_FSR3_Balanced = 28,
    AMD_FSR3_Quality = 29,
    DLSS_Min = 1,
    DLSS_Max = 7,
    AMD_FSR_Min = 8,
    AMD_FSR_Max = 11,
    NIS_Min = 12,
    NIS_Max = 15,
    AMD_FSR2_Min = 16,
    AMD_FSR2_Max = 19,
    Intel_XeSS_Min = 20,
    Intel_XeSS_Max = 25,
    AMD_FSR3_Min = 26,
    AMD_FSR3_Max = 29,
    EUpscaleMode_MAX = 30,
}

---@enum EUseTargetTracker
local EUseTargetTracker = {
    Facing = 0,
    LookAt = 1,
    AimAt = 2,
    EUseTargetTracker_MAX = 3,
}

---@enum EVCType
local EVCType = {
    ITEM = 0,
    LOCK = 1,
    UNKNOWN = 2,
    EVCType_MAX = 3,
}

---@enum EValueComparison
local EValueComparison = {
    Less = 0,
    LessEqual = 1,
    Equal = 2,
    GreaterEqual = 3,
    Greater = 4,
    NotEqual = 5,
    EValueComparison_MAX = 6,
}

---@enum EVanishmentEventType
local EVanishmentEventType = {
    Instant = 0,
    LeftToRight = 1,
    RightToLeft = 2,
    TopToBottom = 3,
    HorizontallyOutward = 4,
    EVanishmentEventType_MAX = 5,
}

---@enum EVariantGenerationType
local EVariantGenerationType = {
    NOTRAITS = 0,
    FULLTRAITS = 1,
    ONETRAIT = 2,
    EVariantGenerationType_MAX = 3,
}

---@enum EVisibilityTimeWindowState
local EVisibilityTimeWindowState = {
    WithinTimeWindow = 0,
    OutSideTimeWindow = 1,
    WithinTimeWindowSpawn = 2,
    EVisibilityTimeWindowState_MAX = 3,
}

---@enum EVoiceOverCompanionSelection
local EVoiceOverCompanionSelection = {
    ForcedOrAnySystemic = 0,
    AnyCompanion = 1,
    PrimaryCompanion = 2,
    ForcedCompanion = 3,
    SystemicCompanion = 4,
    EVoiceOverCompanionSelection_MAX = 5,
}

---@enum EVoiceOverConditions
local EVoiceOverConditions = {
    Default = 0,
    ForcePlaying = 1,
    EVoiceOverConditions_MAX = 2,
}

---@enum EVolumeLoadIdentifier
local EVolumeLoadIdentifier = {
    OutsideOnly = 0,
    NearHogwarts = 1,
    NearHogsmeade = 2,
    OverlandBig = 3,
    OverlandMedium = 4,
    OverlandSmall = 5,
    InsideLoaded = 6,
    LastItem = 7,
    EVolumeLoadIdentifier_MAX = 8,
}

---@enum EVolumeType
local EVolumeType = {
    None = 0,
    Box = 1,
    EVolumeType_MAX = 2,
}

---@enum EWandCastCommand
local EWandCastCommand = {
    None = 0,
    FromDodgeDirectional = 1,
    MeleeDirectional = 2,
    LightDirectional = 3,
    LightDirectionalTooClose = 4,
    HeavyDirectional = 5,
    SpecificTag = 6,
    SpecificTagTooClose = 7,
    StealthDirectional = 8,
    EWandCastCommand_MAX = 9,
}

---@enum EWandComboType
local EWandComboType = {
    Light = 0,
    Heavy = 1,
    LightOrCasual = 2,
    EWandComboType_MAX = 3,
}

---@enum EWandLinkInputType
local EWandLinkInputType = {
    LeftShoulderButton = 0,
    RightShoulderButton = 1,
    LeftTriggerButton = 2,
    RightTriggerButton = 3,
    LeftAndRightShoulderButton = 4,
    LeftAndRightTriggerButton = 5,
    RandomWingButton = 6,
    LeftFaceButton = 7,
    TopFaceButton = 8,
    RightFaceButton = 9,
    BottomFaceButton = 10,
    RandomFaceButton = 11,
    EWandLinkInputType_MAX = 12,
}

---@enum EWandLinkMiniGameType
local EWandLinkMiniGameType = {
    StickAndButton = 0,
    ButtonMash = 1,
    NewButtonMash = 2,
    EWandLinkMiniGameType_MAX = 3,
}

---@enum EWandLinkResult
local EWandLinkResult = {
    LethalExplode = 0,
    NonLethalGetup = 1,
    NonLethalProne = 2,
    HarlowEnd = 3,
    EWandLinkResult_MAX = 4,
}

---@enum EWandLinkState
local EWandLinkState = {
    None = 0,
    Start = 1,
    Defend = 2,
    ProtagonistSurge = 3,
    AntagonistSurge = 4,
    EWandLinkState_MAX = 5,
}

---@enum EWaterVfx
local EWaterVfx = {
    EnterWater = 0,
    Floating = 1,
    ExitWater = 2,
    Count = 3,
    EWaterVfx_MAX = 4,
}

---@enum EWeaponAttachmentTransformRules
local EWeaponAttachmentTransformRules = {
    SnapToTargetNotIncludingScale = 0,
    SnapToTargetIncludingScale = 1,
    KeepRelativeTransform = 2,
    KeepWorldTransform = 3,
    EWeaponAttachmentTransformRules_MAX = 4,
}

---@enum EWidgetType
local EWidgetType = {
    WT_Social = 0,
    WT_Enemy = 1,
    WT_Creature = 2,
    WT_Blip = 3,
    WT_Interact = 4,
    WT_Climb = 5,
    WT_SocialBlip = 6,
    WT_None = 7,
    WT_MAX = 8,
}

---@enum EWingardiumState
local EWingardiumState = {
    Inactive = 0,
    Rise = 1,
    MoveObject = 2,
    End = 3,
    EWingardiumState_MAX = 4,
}

---@enum EWorldFXRulesMoonPhase
local EWorldFXRulesMoonPhase = {
    NewMoon = 0,
    WaxingCrescent = 1,
    FirstQuarter = 2,
    WaxingGibbous = 3,
    FullMoon = 4,
    WaningGibbous = 5,
    LastQuarter = 6,
    WaningCrescent = 7,
    EWorldFXRulesMoonPhase_MAX = 8,
}

---@enum E_Goal
local E_Goal = {
    None = 0,
    Current = 1,
    Future = 2,
    E_MAX = 3,
}

---@enum EablEnemy_DragonMobilityType
local EablEnemy_DragonMobilityType = {
    Hover = 0,
    Jump = 1,
    EablEnemy_MAX = 2,
}

---@enum EablNPC_FixedSource
local EablNPC_FixedSource = {
    Param = 0,
    External = 1,
    EablNPC_MAX = 2,
}

---@enum EnemyApparateActor_Movement
local EnemyApparateActor_Movement = {
    ToLoc = 0,
    ToTarget = 1,
    EnemyApparateActor_MAX = 2,
}

---@enum Enemy_AttackProgreesionType
local Enemy_AttackProgreesionType = {
    None = 0,
    Stupefy = 1,
    Count = 2,
    Enemy_MAX = 3,
}

---@enum Enemy_AttackSearchDistType
local Enemy_AttackSearchDistType = {
    Average = 0,
    Close = 1,
    Far = 2,
    Enemy_MAX = 3,
}

---@enum Enemy_CanAttackAbortStatus
local Enemy_CanAttackAbortStatus = {
    NullAttackData = 0,
    AttackEventAlreadyStarted = 1,
    AttackEventReset = 2,
    VerifyAttack = 3,
    CorridorCheck = 4,
    VerifyAttackTicket = 5,
    LimitAttackOnTargetLocked = 6,
    Enemy_MAX = 7,
}

---@enum Enemy_CanAttackReqStatus
local Enemy_CanAttackReqStatus = {
    NoTarget = 0,
    TargetReacting = 1,
    BreakActive = 2,
    InvalidAUSForTurnScore = 3,
    InvalidTAS = 4,
    InsideAttackCorridor = 5,
    InAttackExecuteRetreatDist = 6,
    InvalidAttackState = 7,
    LOSPathToTargetNotClear = 8,
    TeammateToTargetNotClear = 9,
    TeammatePathToTargetNotClear = 10,
    NotInterruptible = 11,
    NotFacing = 12,
    NoAttackData = 13,
    TargetNotNavReachable = 14,
    InAttackExecuteCooldown = 15,
    InTicketCooldown = 16,
    WaitingOnTicket = 17,
    NotInRange = 18,
    EnergyDrained = 19,
    ProtegoStartWait = 20,
    RetaliateActive = 21,
    InWater = 22,
    TargetInWater = 23,
    HeightDifference = 24,
    ParryTargetCurrentWindow = 25,
    LimitAttackOnTarget = 26,
    Suspended = 27,
    ForceMove = 28,
    AlreadyHoldsTicket = 29,
    NoTicketAvailable = 30,
    TargetHasParryWindowAlready = 31,
    Enemy_MAX = 32,
}

---@enum Enemy_CanMoveStatus
local Enemy_CanMoveStatus = {
    Stationary = 0,
    NotValidTASForAttacking = 1,
    NonInterruptible = 2,
    WaitInNotInRange = 3,
    CannotApproachNotInRangeOrWaiting = 4,
    CannotApproach = 5,
    InvalidSelectionRange = 6,
    ImmediateOnlyNotInRange = 7,
    ImmediateOnly = 8,
    CannotAttackFromGoalLoc = 9,
    ThresholdNotMet = 10,
    RadiusNotMet = 11,
    CannotMoveInRange = 12,
    CannotRetreat = 13,
    AttackCorridor = 14,
    FailedDestination = 15,
    ForceFace = 16,
    MoveReqNotMet = 17,
    AlreadyAtGoal = 18,
    EnergyDrained = 19,
    StayPut = 20,
    NavMeshNotFound = 21,
    NavPathFailed = 22,
    Enemy_MAX = 23,
}

---@enum Enemy_MorphStatus
local Enemy_MorphStatus = {
    None = 0,
    MorphingToWolf = 1,
    MorphingToMage = 2,
    Enemy_MAX = 3,
}

---@enum Enemy_TASTargetState
local Enemy_TASTargetState = {
    TrackingTarget = 0,
    TrackingPlayer = 1,
    LosingPlayer = 2,
    NotTracking = 3,
    Enemy_MAX = 4,
}

---@enum FBoneParticleAction
local FBoneParticleAction = {
    Activate = 0,
    Deactivate = 1,
    Destroy = 2,
    FBoneParticleAction_MAX = 3,
}

---@enum FBoneSwarmProjectionType
local FBoneSwarmProjectionType = {
    UseCone = 0,
    SphereDistribution = 1,
    TotalRandom = 2,
    FBoneSwarmProjectionType_MAX = 3,
}

---@enum FBoneSwarmShowType
local FBoneSwarmShowType = {
    Manual = 0,
    EvenDistribution = 1,
    Random = 2,
    AllAtOnce = 3,
    FBoneSwarmShowType_MAX = 4,
}

---@enum FCharacterBoneProjectionMotionType
local FCharacterBoneProjectionMotionType = {
    Stationary = 0,
    SphericalProjection = 1,
    CapsuleProjection = 2,
    Crawling = 3,
    FCharacterBoneProjectionMotionType_MAX = 4,
}

---@enum ForceSpeed
local ForceSpeed = {
    ForceStop = 0,
    Normal = 1,
    ForceSpeed_MAX = 2,
}

---@enum GearStatType
local GearStatType = {
    None = -1,
    Offense = 0,
    Defense = 1,
    Cooldown = 2,
    GearStatType_MAX = 3,
}

---@enum HitTrackerTypes
local HitTrackerTypes = {
    Irrelevant = 0,
    NonConsecutiveDifferent = 1,
    NonConsecutiveSame = 2,
    ConsecutiveSame = 3,
    ConsecutiveDifferent = 4,
    HitTrackerTypes_MAX = 5,
}

---@enum HouseIds
local HouseIds = {
    HOUSE_GRYFFINDOR = 0,
    HOUSE_HUFFLEPUFF = 1,
    HOUSE_RAVENCLAW = 2,
    HOUSE_SLYTHERIN = 3,
    HOUSE_UNAFFILIATED = 4,
    HOUSE_COUNT = 5,
    HOUSE_MAX = 6,
}

---@enum LookAtType
local LookAtType = {
    Player = 0,
    SpellTarget = 1,
    Both = 2,
    LookAtType_MAX = 3,
}

---@enum MissionRewardType
local MissionRewardType = {
    MISSION_REWARD_TYPE_CONTAINER = 0,
    MISSION_REWARD_TYPE_ITEM = 1,
    MISSION_REWARD_TYPE_KNOWLEDGE = 2,
    MISSION_REWARD_TYPE_SPELL = 3,
    MISSION_REWARD_TYPE_MAX = 4,
}

---@enum MissionStatus
local MissionStatus = {
    MISSION_STATUS_PREACTIVE = 0,
    MISSION_STATUS_ACTIVATING = 1,
    MISSION_STATUS_ACTIVE = 2,
    MISSION_STATUS_POSTACTIVE = 3,
    MISSION_STATUS_COMPLETE = 4,
    MISSION_STATUS_FAILED = 5,
    MISSION_STATUS_INVALID = 6,
    MISSION_STATUS_MAX = 7,
}

---@enum NPC_GameChangerState
local NPC_GameChangerState = {
    GameChanger_None = 0,
    GameChanger_ReplicaMaster = 1,
    GameChanger_Replicant = 2,
    GameChanger_Animagus_Character = 3,
    GameChanger_Animagus_Loading = 4,
    GameChanger_Animagus_Creature = 5,
    GameChanger_Animagus_Unloading = 6,
    GameChanger_Animagus_Form_Loading = 7,
    GameChanger_Animagus_Form = 8,
    GameChanger_Animagus_Form_Unloading = 9,
    GameChanger_Summoned_Form = 10,
    GameChanger_SummoningDead = 11,
    GameChanger_MAX = 12,
}

---@enum NPC_ParryCounterrState
local NPC_ParryCounterrState = {
    ParryCounterNone = 0,
    ParryCounterFirst = 1,
    ParryCounterSecond = 2,
    ParryCounterThird = 3,
    ParryCounterFourth = 4,
    ParryCounterFifth = 5,
    ParryCounterBreak = 6,
    NPC_MAX = 7,
}

---@enum NPC_TargetAwareStateRateSource
local NPC_TargetAwareStateRateSource = {
    EnterAware = 0,
    ExitAware = 1,
    EnterAlert = 2,
    ExitAlert = 3,
    NPC_MAX = 4,
}

---@enum PropClassIDs
local PropClassIDs = {
    PROP_CLASS_BED = 0,
    PROP_CLASS_BENCH = 1,
    PROP_CLASS_CHAIR = 2,
    PROP_CLASS_CUSTOM = 3,
    PROP_CLASS_DESK = 4,
    PROP_CLASS_DYNAMIC = 5,
    PROP_CLASS_GROUND = 6,
    PROP_CLASS_INTERACTION = 7,
    PROP_CLASS_LOCATION = 8,
    PROP_CLASS_NONE = 9,
    PROP_CLASS_OCCUPATION = 10,
    PROP_CLASS_STAIRS = 11,
    PROP_CLASS_STAND = 12,
    PROP_CLASS_TABLE = 13,
    PROP_CLASS_COUNT = 14,
    PROP_CLASS_MAX = 15,
}

---@enum PropTypeIDs
local PropTypeIDs = {
    PROP_TYPE_BED = 0,
    PROP_TYPE_BENCH2P = 1,
    PROP_TYPE_BENCH2X2P = 2,
    PROP_TYPE_BESPOKE = 3,
    PROP_TYPE_BOOKSHELF = 4,
    PROP_TYPE_BROWSINGSHELF = 5,
    PROP_TYPE_CANDYDISPAYCASE = 6,
    PROP_TYPE_CHAIR1P = 7,
    PROP_TYPE_CHAIR1X1P = 8,
    PROP_TYPE_CHEST = 9,
    PROP_TYPE_CLEANSHELVES = 10,
    PROP_TYPE_COUCH = 11,
    PROP_TYPE_COUCH2P = 12,
    PROP_TYPE_COUCH2X2P = 13,
    PROP_TYPE_COUCH3P = 14,
    PROP_TYPE_DESK1X1P = 15,
    PROP_TYPE_DESK2P = 16,
    PROP_TYPE_DRESSER = 17,
    PROP_TYPE_DRINKTEA = 18,
    PROP_TYPE_FIRESIDE = 19,
    PROP_TYPE_FIRESIDEBENCH2P = 20,
    PROP_TYPE_FLUID = 21,
    PROP_TYPE_GLOBE = 22,
    PROP_TYPE_GREATHALLTABLE = 23,
    PROP_TYPE_GREATHALLTABLEENDCAP = 24,
    PROP_TYPE_GREATHALLTABLESHORT6P = 25,
    PROP_TYPE_GROUNDSIT = 26,
    PROP_TYPE_GUARD = 27,
    PROP_TYPE_HERBOLOGY = 28,
    PROP_TYPE_INVESTIGATE = 29,
    PROP_TYPE_JOB = 30,
    PROP_TYPE_LOUNGECHAIR = 31,
    PROP_TYPE_MAILINTERACTION = 32,
    PROP_TYPE_MISSIONINTERACTION = 33,
    PROP_TYPE_NONE = 34,
    PROP_TYPE_OCCUPATION = 35,
    PROP_TYPE_OFFICEDESK = 36,
    PROP_TYPE_PATROL = 37,
    PROP_TYPE_POTION = 38,
    PROP_TYPE_RAILING1P = 39,
    PROP_TYPE_RAILING1X3P = 40,
    PROP_TYPE_REGISTER = 41,
    PROP_TYPE_SERVICE = 42,
    PROP_TYPE_STAIRS1P = 43,
    PROP_TYPE_STAIRSSIT = 44,
    PROP_TYPE_STAIRSSIT2P = 45,
    PROP_TYPE_STAND1P = 46,
    PROP_TYPE_STAND1X1P = 47,
    PROP_TYPE_STAND1X2P = 48,
    PROP_TYPE_STAND1X3P = 49,
    PROP_TYPE_STAND2P = 50,
    PROP_TYPE_STAND4P = 51,
    PROP_TYPE_STANDINQUE = 52,
    PROP_TYPE_STOOLTALL = 53,
    PROP_TYPE_STUDYDESK = 54,
    PROP_TYPE_TABLE1P = 55,
    PROP_TYPE_TABLE2P = 56,
    PROP_TYPE_TABLE3P = 57,
    PROP_TYPE_TABLE4P = 58,
    PROP_TYPE_TABLE8P = 59,
    PROP_TYPE_TAKINGNOTES = 60,
    PROP_TYPE_TEACHAIR = 61,
    PROP_TYPE_TEADRINKING = 62,
    PROP_TYPE_TELESCOPE = 63,
    PROP_TYPE_VENDOR = 64,
    PROP_TYPE_WALL1X3P = 65,
    PROP_TYPE_WALLSIT = 66,
    PROP_TYPE_WARDROBE = 67,
    PROP_TYPE_WINDOWSHOP = 68,
    PROP_TYPE_COUNT = 69,
    PROP_TYPE_MAX = 70,
}

---@enum SceneRigStoryState
local SceneRigStoryState = {
    STORY_NEW = 0,
    STORY_QUEUED = 1,
    STORY_MARKED_FOR_TRANSITION = 2,
    STORY_TRANSITIONING_OUT = 3,
    STORY_ACTIVE = 4,
    STORY_READY_TO_TRANSITION = 5,
    STORY_ENDED = 6,
    STORY_DELETE = 7,
    STORY_STATE_COUNT = 8,
    STORY_MAX = 9,
}

---@enum SkeletonTypeIDs
local SkeletonTypeIDs = {
    SK_TYPE_ADULTFEMALE = 0,
    SK_TYPE_ADULTMALE = 1,
    SK_TYPE_CHILDFEMALE = 2,
    SK_TYPE_CHILDMALE = 3,
    SK_TYPE_DEATHMINION = 4,
    SK_TYPE_ELFANY = 5,
    SK_TYPE_GOBLINANY = 6,
    SK_TYPE_TROLLANY = 7,
    SK_TYPE_UNKNOWN = 8,
    SK_TYPE_COUNT = 9,
    SK_TYPE_MAX = 10,
}

---@enum SocialActionObserverTypes
local SocialActionObserverTypes = {
    OBSERVER_TYPE_SOCIALACTIONHEARSAY = 0,
    OBSERVER_TYPE_SOCIALACTIONTARGET = 1,
    OBSERVER_TYPE_SOCIALACTIONWITNESS = 2,
    OBSERVER_TYPE_COUNT = 3,
    OBSERVER_TYPE_MAX = 4,
}

---@enum SocialActionTypes
local SocialActionTypes = {
    SOCIAL_ACTION_ACCIO = 0,
    SOCIAL_ACTION_ACCIOMAXIMA = 1,
    SOCIAL_ACTION_AGUAMENTI = 2,
    SOCIAL_ACTION_AGUAMENTIMAXIMA = 3,
    SOCIAL_ACTION_ALOHOMORA = 4,
    SOCIAL_ACTION_ANIMAGUSFORM = 5,
    SOCIAL_ACTION_APOLOGIZE = 6,
    SOCIAL_ACTION_APPARITION = 7,
    SOCIAL_ACTION_ARRESTOMOMENTUM = 8,
    SOCIAL_ACTION_ARRESTOMOMENTUMMAXIMA = 9,
    SOCIAL_ACTION_ATTENDCLASSCLOWN = 10,
    SOCIAL_ACTION_ATTENDCLASSPILFER = 11,
    SOCIAL_ACTION_ATTENDCLASSSLEEP = 12,
    SOCIAL_ACTION_ATTENDCLASSSTUDY = 13,
    SOCIAL_ACTION_ATTENDCLASSTALK = 14,
    SOCIAL_ACTION_ATTENDCLUBPARTICIPATE = 15,
    SOCIAL_ACTION_ATTENDCLUBTALK = 16,
    SOCIAL_ACTION_AVADAKEDAVRA = 17,
    SOCIAL_ACTION_BATBOGEY = 18,
    SOCIAL_ACTION_BORED = 19,
    SOCIAL_ACTION_BROOD = 20,
    SOCIAL_ACTION_BULLYING = 21,
    SOCIAL_ACTION_BULLYINTERVENE = 22,
    SOCIAL_ACTION_CAPTURING = 23,
    SOCIAL_ACTION_CHEERING = 24,
    SOCIAL_ACTION_COLLISION = 25,
    SOCIAL_ACTION_COLOVARIA = 26,
    SOCIAL_ACTION_COMPLIMENT = 27,
    SOCIAL_ACTION_CONFRINGO = 28,
    SOCIAL_ACTION_CONFRINGOMAXIMA = 29,
    SOCIAL_ACTION_CONFUNDO = 30,
    SOCIAL_ACTION_CONJURATION = 31,
    SOCIAL_ACTION_CRIMEPERPIDENTIFIED = 32,
    SOCIAL_ACTION_CRIMERESPONSEAPPROVE = 33,
    SOCIAL_ACTION_CRIMERESPONSEBECKON = 34,
    SOCIAL_ACTION_CRIMERESPONSECOMPLAIN = 35,
    SOCIAL_ACTION_CRIMERESPONSECOWER = 36,
    SOCIAL_ACTION_CRIMERESPONSEFLEE = 37,
    SOCIAL_ACTION_CRIMERESPONSEINVESTIGATE = 38,
    SOCIAL_ACTION_CRIMERESPONSELAUGH = 39,
    SOCIAL_ACTION_CRIMERESPONSEOBSERVE = 40,
    SOCIAL_ACTION_CRIMERESPONSEREPORT = 41,
    SOCIAL_ACTION_CRIMERESPONSERETALIATE = 42,
    SOCIAL_ACTION_CRIMERESPONSESCOLD = 43,
    SOCIAL_ACTION_CRIMERESPONSESHOCK = 44,
    SOCIAL_ACTION_CRIMESCENEDISCOVERED = 45,
    SOCIAL_ACTION_DEBATE = 46,
    SOCIAL_ACTION_DEPULSO = 47,
    SOCIAL_ACTION_DEPULSOMAXIMA = 48,
    SOCIAL_ACTION_DEPULSOMT = 49,
    SOCIAL_ACTION_DESCENDO = 50,
    SOCIAL_ACTION_DIFFINDO = 51,
    SOCIAL_ACTION_DISILLUSIONMENT = 52,
    SOCIAL_ACTION_DRINK = 53,
    SOCIAL_ACTION_DRUNK = 54,
    SOCIAL_ACTION_EAT = 55,
    SOCIAL_ACTION_ENGORGIO = 56,
    SOCIAL_ACTION_EPISKEY = 57,
    SOCIAL_ACTION_EXPECTOPATRONUM = 58,
    SOCIAL_ACTION_EXPECTOPATRONUMMAXIMA = 59,
    SOCIAL_ACTION_EXPELLIARMUS = 60,
    SOCIAL_ACTION_EXPULSO = 61,
    SOCIAL_ACTION_EXPULSOMAXIMA = 62,
    SOCIAL_ACTION_EXTORTION = 63,
    SOCIAL_ACTION_EXTORTIONHIGH = 64,
    SOCIAL_ACTION_FAVORREQUESTED = 65,
    SOCIAL_ACTION_FIENDFYRE = 66,
    SOCIAL_ACTION_FINISHERBLACKPARTICLEEXPLODE = 67,
    SOCIAL_ACTION_FINISHERCRYSTALSHATTER = 68,
    SOCIAL_ACTION_FINISHERDEEPFREEZE = 69,
    SOCIAL_ACTION_FINISHERFIERYSEND = 70,
    SOCIAL_ACTION_FINISHERFLASHSEND = 71,
    SOCIAL_ACTION_FINISHERPETRIFICUSTOTALUS = 72,
    SOCIAL_ACTION_FINISHERSCARABBURST = 73,
    SOCIAL_ACTION_FINISHERSPIDERBURST = 74,
    SOCIAL_ACTION_FINISHERSUPERSLAMS = 75,
    SOCIAL_ACTION_FINITE = 76,
    SOCIAL_ACTION_FLIPENDO = 77,
    SOCIAL_ACTION_FRIENDLYCONVERSATION = 78,
    SOCIAL_ACTION_GIVEGIFTGENERAL = 79,
    SOCIAL_ACTION_GIVEGIFTROMANTIC = 80,
    SOCIAL_ACTION_GLACIUS = 81,
    SOCIAL_ACTION_GLACIUSMAXIMA = 82,
    SOCIAL_ACTION_GOSSIP = 83,
    SOCIAL_ACTION_GREET = 84,
    SOCIAL_ACTION_HAIL = 85,
    SOCIAL_ACTION_HERBOLOGYHERBHARVESTED = 86,
    SOCIAL_ACTION_HERBOLOGYHERBPLANTED = 87,
    SOCIAL_ACTION_HORSEPLAY = 88,
    SOCIAL_ACTION_HOUSEARMORDESTROYED = 89,
    SOCIAL_ACTION_HOUSEARMORREPAIRED = 90,
    SOCIAL_ACTION_HOUSEPOINTSGAINED = 91,
    SOCIAL_ACTION_HOUSEPOINTSLOST = 92,
    SOCIAL_ACTION_IMPERIUS = 93,
    SOCIAL_ACTION_INCARCEROUS = 94,
    SOCIAL_ACTION_INCENDIO = 95,
    SOCIAL_ACTION_INCENDIOMAXIMA = 96,
    SOCIAL_ACTION_INSTANTSCALPING = 97,
    SOCIAL_ACTION_INTIMIDATE = 98,
    SOCIAL_ACTION_INTRUSIONHIGH = 99,
    SOCIAL_ACTION_INTRUSIONINPROGRESSHIGH = 100,
    SOCIAL_ACTION_INTRUSIONINPROGRESSLOW = 101,
    SOCIAL_ACTION_INTRUSIONINPROGRESSMEDIUM = 102,
    SOCIAL_ACTION_INTRUSIONLOW = 103,
    SOCIAL_ACTION_INTRUSIONMEDIUM = 104,
    SOCIAL_ACTION_INTRUSIONTRIVIAL = 105,
    SOCIAL_ACTION_INVESTIGATE = 106,
    SOCIAL_ACTION_LEVIOSO = 107,
    SOCIAL_ACTION_LEVIOSOMAXIMA = 108,
    SOCIAL_ACTION_LUMOS = 109,
    SOCIAL_ACTION_LUMOSMAXIMA = 110,
    SOCIAL_ACTION_MEALTIMECHAT = 111,
    SOCIAL_ACTION_MEALTIMESOCIALIZE = 112,
    SOCIAL_ACTION_MEALTIMESTASH = 113,
    SOCIAL_ACTION_MISSIONACK = 114,
    SOCIAL_ACTION_MISSIONGOSSIP = 115,
    SOCIAL_ACTION_MOCK = 116,
    SOCIAL_ACTION_NAP = 117,
    SOCIAL_ACTION_OBLIVIATE = 118,
    SOCIAL_ACTION_OBSERVE = 119,
    SOCIAL_ACTION_OCCUPATIONMAJOR = 120,
    SOCIAL_ACTION_OCCUPATIONMINOR = 121,
    SOCIAL_ACTION_OCCUPATIONPRIMARY = 122,
    SOCIAL_ACTION_OCCUPATIONSLACKING = 123,
    SOCIAL_ACTION_OPPUGNO = 124,
    SOCIAL_ACTION_OPPUGNOMT = 125,
    SOCIAL_ACTION_PHYSICSTRIVIAL = 126,
    SOCIAL_ACTION_PICKPOCKETHIGH = 127,
    SOCIAL_ACTION_PICKPOCKETINPROGRESSHIGH = 128,
    SOCIAL_ACTION_PICKPOCKETINPROGRESSLOW = 129,
    SOCIAL_ACTION_PICKPOCKETINPROGRESSMEDIUM = 130,
    SOCIAL_ACTION_PICKPOCKETLOW = 131,
    SOCIAL_ACTION_PICKPOCKETMEDIUM = 132,
    SOCIAL_ACTION_PIERTOTUMLOCOMOTOR = 133,
    SOCIAL_ACTION_PLAYERCHAT = 134,
    SOCIAL_ACTION_PROTEGO = 135,
    SOCIAL_ACTION_PROXYCHAT = 136,
    SOCIAL_ACTION_REDUCIO = 137,
    SOCIAL_ACTION_REPARO = 138,
    SOCIAL_ACTION_REPAROMAXIMA = 139,
    SOCIAL_ACTION_REVELIO = 140,
    SOCIAL_ACTION_ROMANTICCONVERSATION = 141,
    SOCIAL_ACTION_SINGLEBUTSOCIAL = 142,
    SOCIAL_ACTION_SLEEP = 143,
    SOCIAL_ACTION_SPELLRESPONSE = 144,
    SOCIAL_ACTION_SPOTOTEA = 145,
    SOCIAL_ACTION_STATIONSPECIFIC = 146,
    SOCIAL_ACTION_STUDY = 147,
    SOCIAL_ACTION_STUPEFY = 148,
    SOCIAL_ACTION_SWEEPING = 149,
    SOCIAL_ACTION_TABOOGAMEOVER = 150,
    SOCIAL_ACTION_TABOOHIGH = 151,
    SOCIAL_ACTION_TABOOMEDIUM = 152,
    SOCIAL_ACTION_TARANTALLEGRA = 153,
    SOCIAL_ACTION_THEFTHIGH = 154,
    SOCIAL_ACTION_THEFTINPROGRESSHIGH = 155,
    SOCIAL_ACTION_THEFTINPROGRESSLOW = 156,
    SOCIAL_ACTION_THEFTINPROGRESSMEDIUM = 157,
    SOCIAL_ACTION_THEFTLOW = 158,
    SOCIAL_ACTION_THEFTMEDIUM = 159,
    SOCIAL_ACTION_TRANSFORMATION = 160,
    SOCIAL_ACTION_TRANSFORMATIONOVERLAND = 161,
    SOCIAL_ACTION_TRIPJINX = 162,
    SOCIAL_ACTION_UNAVAILABLE = 163,
    SOCIAL_ACTION_UNIFIEDTRANSFORMATION = 164,
    SOCIAL_ACTION_VANISHMENT = 165,
    SOCIAL_ACTION_VIOLENCEGAMEOVER = 166,
    SOCIAL_ACTION_VIOLENCEHIGH = 167,
    SOCIAL_ACTION_VIOLENCELOW = 168,
    SOCIAL_ACTION_VIOLENCEMEDIUM = 169,
    SOCIAL_ACTION_VIOLENCETRIVIAL = 170,
    SOCIAL_ACTION_WE_LOOSESNITCH = 171,
    SOCIAL_ACTION_WE_RAINONME = 172,
    SOCIAL_ACTION_WE_SPECIALDELIVERY = 173,
    SOCIAL_ACTION_WE_SUPERSMASH = 174,
    SOCIAL_ACTION_WINDOWSHOPPING = 175,
    SOCIAL_ACTION_WINGARDIUM = 176,
    SOCIAL_ACTION_WINGARDIUMMAXIMA = 177,
    SOCIAL_ACTION_COUNT = 178,
    SOCIAL_ACTION_MAX = 179,
}

---@enum SocialCapitalChangeReasons
local SocialCapitalChangeReasons = {
    SOCAP_CHANGE_DEBUG = 0,
    SOCAP_CHANGE_MISSION = 1,
    SOCAP_CHANGE_KNOWLEDGE = 2,
    SOCAP_CHANGE_SOCIALACTION = 3,
    SOCAP_CHANGE_SOCIALSTATUS = 4,
    SOCAP_CHANGE_CONVERSATION = 5,
    SOCAP_CHANGE_FACTIONSTATUS = 6,
    SOCAP_CHANGE_COUNT = 7,
    SOCAP_CHANGE_MAX = 8,
}

---@enum SocialCapitalStatusIDs
local SocialCapitalStatusIDs = {
    SOCIALCAPITAL_STATUS_STRANGER = 0,
    SOCIALCAPITAL_STATUS_HATE = 1,
    SOCIALCAPITAL_STATUS_DISLIKE = 2,
    SOCIALCAPITAL_STATUS_INDIFFERENT = 3,
    SOCIALCAPITAL_STATUS_FAMILIAR = 4,
    SOCIALCAPITAL_STATUS_CORDIAL = 5,
    SOCIALCAPITAL_STATUS_FRIENDLY = 6,
    SOCIALCAPITAL_STATUS_COMPANION = 7,
    SOCIALCAPITAL_STATUS_COUNT = 8,
    SOCIALCAPITAL_STATUS_MAX = 9,
}

---@enum SocialConnectionIDs
local SocialConnectionIDs = {
    SOCIALCONNECTION_STATUS_ENEMY = 0,
    SOCIALCONNECTION_STATUS_RIVAL = 1,
    SOCIALCONNECTION_STATUS_SELF = 2,
    SOCIALCONNECTION_STATUS_FRIEND = 3,
    SOCIALCONNECTION_STATUS_FAMILY = 4,
    SOCIALCONNECTION_STATUS_LOVEINTEREST = 5,
    SOCIALCONNECTION_STATUS_BESTFRIEND = 6,
    SOCIALCONNECTION_STATUS_COUNT = 7,
    SOCIALCONNECTION_STATUS_MAX = 8,
}

---@enum SocialHeritageStatusIDs
local SocialHeritageStatusIDs = {
    SOCIAL_HERITAGE_STATUS_HALFBLOOD = 0,
    SOCIAL_HERITAGE_STATUS_MUGGLEBORN = 1,
    SOCIAL_HERITAGE_STATUS_PUREBLOOD = 2,
    SOCIAL_HERITAGE_STATUS_SQUIB = 3,
    SOCIAL_HERITAGE_STATUS_COUNT = 4,
    SOCIAL_HERITAGE_STATUS_MAX = 5,
}

---@enum SocialInteractionDisplayStatusIDs
local SocialInteractionDisplayStatusIDs = {
    SOCIAL_INTERACTION_DISPLAY_STATUS_AVAILABLE = 0,
    SOCIAL_INTERACTION_DISPLAY_STATUS_HIDDEN = 1,
    SOCIAL_INTERACTION_DISPLAY_STATUS_LOCKED_ASKEDFORFAVOR = 2,
    SOCIAL_INTERACTION_DISPLAY_STATUS_LOCKED_BEINGEXTORTED = 3,
    SOCIAL_INTERACTION_DISPLAY_STATUS_LOCKED_CRIMECITATIONS = 4,
    SOCIAL_INTERACTION_DISPLAY_STATUS_LOCKED_ITEM = 5,
    SOCIAL_INTERACTION_DISPLAY_STATUS_LOCKED_KNOWLEDGE = 6,
    SOCIAL_INTERACTION_DISPLAY_STATUS_LOCKED_LOCK = 7,
    SOCIAL_INTERACTION_DISPLAY_STATUS_LOCKED_MISSION = 8,
    SOCIAL_INTERACTION_DISPLAY_STATUS_LOCKED_SOCAP = 9,
    SOCIAL_INTERACTION_DISPLAY_STATUS_COUNT = 10,
    SOCIAL_INTERACTION_DISPLAY_STATUS_MAX = 11,
}

---@enum SocialInteractionTypeIDs
local SocialInteractionTypeIDs = {
    SOCIAL_INTERACTION_TYPE_ICON_INTERACTTYPE_COMPANION = 0,
    SOCIAL_INTERACTION_TYPE_ICON_INTERACTTYPE_CURRICULUM = 1,
    SOCIAL_INTERACTION_TYPE_ICON_INTERACTTYPE_EXIT = 2,
    SOCIAL_INTERACTION_TYPE_ICON_INTERACTTYPE_EXTORT = 3,
    SOCIAL_INTERACTION_TYPE_ICON_INTERACTTYPE_FACTSHEET = 4,
    SOCIAL_INTERACTION_TYPE_ICON_INTERACTTYPE_FAVOR = 5,
    SOCIAL_INTERACTION_TYPE_ICON_INTERACTTYPE_GIFT = 6,
    SOCIAL_INTERACTION_TYPE_ICON_INTERACTTYPE_MISSION = 7,
    SOCIAL_INTERACTION_TYPE_ICON_INTERACTTYPE_RELATIONSHIP = 8,
    SOCIAL_INTERACTION_TYPE_ICON_INTERACTTYPE_SANCEXPANSION = 9,
    SOCIAL_INTERACTION_TYPE_ICON_INTERACTTYPE_SCAVENGERHUNT = 10,
    SOCIAL_INTERACTION_TYPE_ICON_INTERACTTYPE_TEAGUEINVENTORY = 11,
    SOCIAL_INTERACTION_TYPE_ICON_INTERACTTYPE_VENDOR = 12,
    SOCIAL_INTERACTION_TYPE_NONE = 13,
    SOCIAL_INTERACTION_TYPE_COUNT = 14,
    SOCIAL_INTERACTION_TYPE_MAX = 15,
}

---@enum SocialSemanticIDs
local SocialSemanticIDs = {
    SOCIAL_SEMANTIC_ALARM = 0,
    SOCIAL_SEMANTIC_AMUSEMENT = 1,
    SOCIAL_SEMANTIC_ANGRY = 2,
    SOCIAL_SEMANTIC_ANGUISH = 3,
    SOCIAL_SEMANTIC_ANNOYANCE = 4,
    SOCIAL_SEMANTIC_ANTICIPATION = 5,
    SOCIAL_SEMANTIC_ANXIETY = 6,
    SOCIAL_SEMANTIC_CONFUSED = 7,
    SOCIAL_SEMANTIC_DEAD = 8,
    SOCIAL_SEMANTIC_DEFAULT = 9,
    SOCIAL_SEMANTIC_DELIGHT = 10,
    SOCIAL_SEMANTIC_DISGUST = 11,
    SOCIAL_SEMANTIC_ENCUMBEREDFORWEATHER = 12,
    SOCIAL_SEMANTIC_ENCUMBEREDONEHANDED = 13,
    SOCIAL_SEMANTIC_ENCUMBEREDTWOHANDED = 14,
    SOCIAL_SEMANTIC_FEAR = 15,
    SOCIAL_SEMANTIC_HAPPY = 16,
    SOCIAL_SEMANTIC_IMPRESSED = 17,
    SOCIAL_SEMANTIC_NEUTRAL = 18,
    SOCIAL_SEMANTIC_PACIFY = 19,
    SOCIAL_SEMANTIC_SAD = 20,
    SOCIAL_SEMANTIC_SICK = 21,
    SOCIAL_SEMANTIC_SLEEP = 22,
    SOCIAL_SEMANTIC_SURPRISE = 23,
    SOCIAL_SEMANTIC_TRUST = 24,
    SOCIAL_SEMANTIC_VALOR = 25,
    SOCIAL_SEMANTIC_CENTAURS = 26,
    SOCIAL_SEMANTIC_COASTALREGION = 27,
    SOCIAL_SEMANTIC_FORBIDDENREACHES = 28,
    SOCIAL_SEMANTIC_GRYFFINDOR = 29,
    SOCIAL_SEMANTIC_HOGSMEADE = 30,
    SOCIAL_SEMANTIC_HUFFLEPUFF = 31,
    SOCIAL_SEMANTIC_MIDLANDS = 32,
    SOCIAL_SEMANTIC_RAVENCLAW = 33,
    SOCIAL_SEMANTIC_ROOKWOODEXTORTIONISTS = 34,
    SOCIAL_SEMANTIC_ROOKWOODPOACHERS = 35,
    SOCIAL_SEMANTIC_ROOKWOODTHIEVES = 36,
    SOCIAL_SEMANTIC_SLYTHERIN = 37,
    SOCIAL_SEMANTIC_WETLANDS = 38,
    SOCIAL_SEMANTIC_BEASTS = 39,
    SOCIAL_SEMANTIC_DADA = 40,
    SOCIAL_SEMANTIC_DARKARTS = 41,
    SOCIAL_SEMANTIC_HERBOLOGY = 42,
    SOCIAL_SEMANTIC_INFILTRATOR = 43,
    SOCIAL_SEMANTIC_SOCIALITE = 44,
    SOCIAL_SEMANTIC_ARITHMANCY = 45,
    SOCIAL_SEMANTIC_ARTAPPRECIATION = 46,
    SOCIAL_SEMANTIC_ASTRONOMY = 47,
    SOCIAL_SEMANTIC_CHARMS = 48,
    SOCIAL_SEMANTIC_DIVINATION = 49,
    SOCIAL_SEMANTIC_DUELING = 50,
    SOCIAL_SEMANTIC_HISTORY = 51,
    SOCIAL_SEMANTIC_MUGGLESTUDIES = 52,
    SOCIAL_SEMANTIC_MUSIC = 53,
    SOCIAL_SEMANTIC_POTIONS = 54,
    SOCIAL_SEMANTIC_QUIDDITCH = 55,
    SOCIAL_SEMANTIC_SANGUINECIRCLE = 56,
    SOCIAL_SEMANTIC_SCHOLAR = 57,
    SOCIAL_SEMANTIC_TRANSFIGURATION = 58,
    SOCIAL_SEMANTIC_TRICKSTERS = 59,
    SOCIAL_SEMANTIC_COURAGE = 60,
    SOCIAL_SEMANTIC_EMPATHY = 61,
    SOCIAL_SEMANTIC_HUMOR = 62,
    SOCIAL_SEMANTIC_SOCIAL = 63,
    SOCIAL_SEMANTIC_TRADITIONAL = 64,
    SOCIAL_SEMANTIC_HASTITUDE = 65,
    SOCIAL_SEMANTIC_LAWFULNESS = 66,
    SOCIAL_SEMANTIC_COUNT = 67,
    SOCIAL_SEMANTIC_MAX = 68,
}

---@enum SocialSemanticTypeIDs
local SocialSemanticTypeIDs = {
    SOCIAL_SEMANTIC_TYPE_DEPRECATED = 0,
    SOCIAL_SEMANTIC_TYPE_EMOTION = 1,
    SOCIAL_SEMANTIC_TYPE_FACTION = 2,
    SOCIAL_SEMANTIC_TYPE_IDENTITY = 3,
    SOCIAL_SEMANTIC_TYPE_INTEREST = 4,
    SOCIAL_SEMANTIC_TYPE_PERSONALITY = 5,
    SOCIAL_SEMANTIC_TYPE_TRAIT = 6,
    SOCIAL_SEMANTIC_TYPE_COUNT = 7,
    SOCIAL_SEMANTIC_TYPE_MAX = 8,
}

---@enum StoryParticipantState
local StoryParticipantState = {
    PARTICIPANT_ADDED = 0,
    PARTICIPANT_ARRIVED = 1,
    PARTICIPANT_ENTERED = 2,
    PARTICIPANT_EXITING = 3,
    PARTICIPANT_KICKED = 4,
    PARTICIPANT_EXITED = 5,
    PARTICIPANT_MAX = 6,
}

---@enum StoryType
local StoryType = {
    STATION_STORY = 0,
    GHOST_STORY = 1,
    StoryType_MAX = 2,
}

---@enum TaskType
local TaskType = {
    TASK_TYPE_EVALACHIEVEMENT = 0,
    TASK_TYPE_EVALADDBEACON = 1,
    TASK_TYPE_EVALBLUEPRINT = 2,
    TASK_TYPE_EVALBRANCHSTALL = 3,
    TASK_TYPE_EVALCANADDTOINVENTORY = 4,
    TASK_TYPE_EVALCHARACTERMOVEMENT = 5,
    TASK_TYPE_EVALCONVERSATIONRESULT = 6,
    TASK_TYPE_EVALCURTAINRAISED = 7,
    TASK_TYPE_EVALDELAY = 8,
    TASK_TYPE_EVALDELAYONCE = 9,
    TASK_TYPE_EVALDELIVERTO = 10,
    TASK_TYPE_EVALDELIVERTOOBJECT = 11,
    TASK_TYPE_EVALENCOUNTERCOMPLETE = 12,
    TASK_TYPE_EVALENTERWORLD = 13,
    TASK_TYPE_EVALFAKETASKOBJECTIVE = 14,
    TASK_TYPE_EVALFORCEDCONVERSATIONALLOWED = 15,
    TASK_TYPE_EVALGAINEDKNOWLEDGE = 16,
    TASK_TYPE_EVALGAMENOTPAUSED = 17,
    TASK_TYPE_EVALGAMEPLATFORM = 18,
    TASK_TYPE_EVALGEAR = 19,
    TASK_TYPE_EVALHOUSESTATUS = 20,
    TASK_TYPE_EVALINTERACTEDWITH = 21,
    TASK_TYPE_EVALINTERACTEDWITHMISSIONENTRYPOINT = 22,
    TASK_TYPE_EVALINVENTORY = 23,
    TASK_TYPE_EVALKILLS = 24,
    TASK_TYPE_EVALLOCK = 25,
    TASK_TYPE_EVALLOOTDROPLOOTED = 26,
    TASK_TYPE_EVALMISSIONACCEPTED = 27,
    TASK_TYPE_EVALMISSIONCOMPLETE = 28,
    TASK_TYPE_EVALMISSIONENTRYPOINTAVAILABLE = 29,
    TASK_TYPE_EVALNAMEDCREATURESTATE = 30,
    TASK_TYPE_EVALNEVER = 31,
    TASK_TYPE_EVALNPCSTATE = 32,
    TASK_TYPE_EVALONDEMANDGREETING = 33,
    TASK_TYPE_EVALPERFORMTASKSDONE = 34,
    TASK_TYPE_EVALPLAYERDEATH = 35,
    TASK_TYPE_EVALPROXIMITY = 36,
    TASK_TYPE_EVALPURCHASEDPRODUCT = 37,
    TASK_TYPE_EVALREADMAIL = 38,
    TASK_TYPE_EVALSPELLDIAMOND = 39,
    TASK_TYPE_EVALSTAT = 40,
    TASK_TYPE_EVALSTORYGRAPHEVENT = 41,
    TASK_TYPE_EVALSYNCCONVERSATIONTIMECHANGE = 42,
    TASK_TYPE_EVALTALKTO = 43,
    TASK_TYPE_EVALTASKPROGRESS = 44,
    TASK_TYPE_EVALTRIGGERANDWAITFORSTORYGRAPHEVENT = 45,
    TASK_TYPE_EVALWAITFORSTREAMING = 46,
    TASK_TYPE_EVALWAITFORTUTORIAL = 47,
    TASK_TYPE_EVALWAITUNTILNEXTDAY = 48,
    TASK_TYPE_EVALWAITUNTILTIMERANGE = 49,
    TASK_TYPE_EVALWAKEINOWNBED = 50,
    TASK_TYPE_ACTIVATEMISSION = 51,
    TASK_TYPE_ACTIVATET3MOMENT = 52,
    TASK_TYPE_ADDAMBIENTCALLOUT = 53,
    TASK_TYPE_ADDSCHEDULEOVERRIDE = 54,
    TASK_TYPE_ADDTOINVENTORY = 55,
    TASK_TYPE_ADJUSTINVENTORYBYCONTAINER = 56,
    TASK_TYPE_AGGRONPC = 57,
    TASK_TYPE_ASSIGNSPELLTOSPELLDIAMOND = 58,
    TASK_TYPE_AUTOSAVE = 59,
    TASK_TYPE_BEGINEXCLUSIVE = 60,
    TASK_TYPE_CHANGEUPDATECONVERSATION = 61,
    TASK_TYPE_CHECKFIELDGUIDE = 62,
    TASK_TYPE_CLEARBRANCHEVALSTEPBYNAME = 63,
    TASK_TYPE_CLEARBRANCHEVALSTEPS = 64,
    TASK_TYPE_CLEARRESPAWNLOCATIONOVERRIDE = 65,
    TASK_TYPE_CLEARSEASONOVERRIDE = 66,
    TASK_TYPE_COMPLETEMISSION = 67,
    TASK_TYPE_COPYLOCK = 68,
    TASK_TYPE_DISABLEMISSIONENTRYPOINT = 69,
    TASK_TYPE_DISCOVERMISSION = 70,
    TASK_TYPE_DONOTHING = 71,
    TASK_TYPE_ENABLEMISSIONENTRYPOINT = 72,
    TASK_TYPE_ENDEXCLUSIVE = 73,
    TASK_TYPE_ENDPERFORMTASKS = 74,
    TASK_TYPE_FADEIN = 75,
    TASK_TYPE_FADEOUT = 76,
    TASK_TYPE_FASTTRAVEL = 77,
    TASK_TYPE_FORCEAUTOSAVE = 78,
    TASK_TYPE_FORCECONVERSATION = 79,
    TASK_TYPE_FORCEDCOMPANIONALLOWEDAREA = 80,
    TASK_TYPE_GOTOSTEP = 81,
    TASK_TYPE_GRANTKNOWLEDGE = 82,
    TASK_TYPE_INITIALIZESCENERIG = 83,
    TASK_TYPE_INITIALIZESTORYGRAPHEVENT = 84,
    TASK_TYPE_INITIALIZETUTORIAL = 85,
    TASK_TYPE_KEEPCURTAINLOWERED = 86,
    TASK_TYPE_KILLMISSION = 87,
    TASK_TYPE_LOADMISSIONSUBLEVEL = 88,
    TASK_TYPE_LOADTRANSIENTSUBLEVEL = 89,
    TASK_TYPE_LOWERCURTAIN = 90,
    TASK_TYPE_PAUSENOTIFICATIONCATEGORY = 91,
    TASK_TYPE_PERFORMTASKS = 92,
    TASK_TYPE_PLAYDIALOGUE = 93,
    TASK_TYPE_PLAYREPEATINGSCENERIG = 94,
    TASK_TYPE_PLAYSCENERIG = 95,
    TASK_TYPE_PLAYT3SCENERIG = 96,
    TASK_TYPE_PLAYTUTORIAL = 97,
    TASK_TYPE_POSTAKEVENTBYNAME = 98,
    TASK_TYPE_PRINTTEXT = 99,
    TASK_TYPE_PROTECTNPC = 100,
    TASK_TYPE_RAISECURTAIN = 101,
    TASK_TYPE_REFRESHVENDORSTOCK = 102,
    TASK_TYPE_REGISTERVENDORCONVERSATION = 103,
    TASK_TYPE_REMEMBERINVENTORY = 104,
    TASK_TYPE_REMOVEAMBIENTCALLOUT = 105,
    TASK_TYPE_REMOVECRITICALNPC = 106,
    TASK_TYPE_REMOVEFROMINVENTORY = 107,
    TASK_TYPE_REMOVESCHEDULEOVERRIDE = 108,
    TASK_TYPE_REMOVEUPDATECONVERSATION = 109,
    TASK_TYPE_REPLACESCHEDULEOVERRIDE = 110,
    TASK_TYPE_RESETSTORYGRAPH = 111,
    TASK_TYPE_RESTOREINVENTORY = 112,
    TASK_TYPE_RESUMENOTIFICATIONCATEGORY = 113,
    TASK_TYPE_RUNSPECIALCASECODE = 114,
    TASK_TYPE_SAVEINVENTORY = 115,
    TASK_TYPE_SENDMAIL = 116,
    TASK_TYPE_SENDMESSAGEFLOAT = 117,
    TASK_TYPE_SENDMESSAGEINT = 118,
    TASK_TYPE_SENDMESSAGENONE = 119,
    TASK_TYPE_SENDMESSAGESTRING = 120,
    TASK_TYPE_SETABANDONRESPAWN = 121,
    TASK_TYPE_SETCONDITIONALREWARD = 122,
    TASK_TYPE_SETCURRENTTIME = 123,
    TASK_TYPE_SETDEBUGCOMPLETETELEPORT = 124,
    TASK_TYPE_SETDIALOGUEGATEPATTERN = 125,
    TASK_TYPE_SETDOORSTATE = 126,
    TASK_TYPE_SETFORCEDCOMPANIONSTATUS = 127,
    TASK_TYPE_SETGAMEFEATURE = 128,
    TASK_TYPE_SETHOBOSCHEDULE = 129,
    TASK_TYPE_SETLOCK = 130,
    TASK_TYPE_SETNAMEDCREATURECANRETURNTOWILD = 131,
    TASK_TYPE_SETNPCSTATE = 132,
    TASK_TYPE_SETNPCWORLD = 133,
    TASK_TYPE_SETQUESTACTIVEJOURNAL = 134,
    TASK_TYPE_SETQUESTAVAILABLEJOURNAL = 135,
    TASK_TYPE_SETQUESTCOMPLETEJOURNAL = 136,
    TASK_TYPE_SETRESPAWNLOCATIONOVERRIDE = 137,
    TASK_TYPE_SETSCHEDULE = 138,
    TASK_TYPE_SETSEASON = 139,
    TASK_TYPE_SETSEASONOVERRIDE = 140,
    TASK_TYPE_SETSPELLDIAMONDSTATE = 141,
    TASK_TYPE_SETSTAT = 142,
    TASK_TYPE_SETSYSTEMICCOMPANIONSTATUS = 143,
    TASK_TYPE_SETTIMEPASSES = 144,
    TASK_TYPE_SETWEATHERSEQUENCE = 145,
    TASK_TYPE_SHOWMISSIONCOMPLETEUI = 146,
    TASK_TYPE_STARTBROOMRACE = 147,
    TASK_TYPE_STOPREPEATINGSCENERIG = 148,
    TASK_TYPE_STOPSCENERIG = 149,
    TASK_TYPE_TRACKMISSION = 150,
    TASK_TYPE_TRIGGERSTORYGRAPHEVENT = 151,
    TASK_TYPE_UNLOADMISSIONSUBLEVEL = 152,
    TASK_TYPE_UNREGISTERVENDORCONVERSATION = 153,
    TASK_TYPE_UPDATEACHIEVEMENT = 154,
    TASK_TYPE_MAX = 155,
}

---@enum UIActionModes
local UIActionModes = {
    UI_ACTIONMODE_ADVENTURE = 0,
    UI_ACTIONMODE_SANCTUARY = 1,
    UI_ACTIONMODE_COUNT = 2,
    UI_ACTIONMODE_MAX = 3,
}

---@enum UIHUDGroups
local UIHUDGroups = {
    UI_HUDGROUP_ACTIONRING = 0,
    UI_HUDGROUP_ANCIENTMAGICHUD = 1,
    UI_HUDGROUP_AUTOSAVE = 2,
    UI_HUDGROUP_BEACONS = 3,
    UI_HUDGROUP_BEASTCAPTURE = 4,
    UI_HUDGROUP_BOSSHEALTHMETER = 5,
    UI_HUDGROUP_BREWINGHUD = 6,
    UI_HUDGROUP_BROOMHUD = 7,
    UI_HUDGROUP_CALLOUTS = 8,
    UI_HUDGROUP_CHALLENGEHUD = 9,
    UI_HUDGROUP_CHALLENGEUNLOCK = 10,
    UI_HUDGROUP_COMBATBREAKOUT = 11,
    UI_HUDGROUP_COMBATPARRY = 12,
    UI_HUDGROUP_COMBOHELPER = 13,
    UI_HUDGROUP_COMBOHUD = 14,
    UI_HUDGROUP_COMPANIONLEVELNOTIFICATION = 15,
    UI_HUDGROUP_CREATURENURTURINGHUD = 16,
    UI_HUDGROUP_DAMAGEINDICATORPANEL = 17,
    UI_HUDGROUP_DUELTECHNIQUES = 18,
    UI_HUDGROUP_ERRORMESSAGE = 19,
    UI_HUDGROUP_FASTTRAVELUNLOCK = 20,
    UI_HUDGROUP_FIGHTCLUBHUD = 21,
    UI_HUDGROUP_FINISHERMETER = 22,
    UI_HUDGROUP_HINTHUD = 23,
    UI_HUDGROUP_INTERACTION = 24,
    UI_HUDGROUP_LOCKONRETICLE = 25,
    UI_HUDGROUP_LOOKATWIDGET = 26,
    UI_HUDGROUP_MINIMAP = 27,
    UI_HUDGROUP_MISSIONBANNER = 28,
    UI_HUDGROUP_MOUNTHUD = 29,
    UI_HUDGROUP_NPCHEALTHMETER = 30,
    UI_HUDGROUP_NEWZONENOTIFICATION = 31,
    UI_HUDGROUP_NODISMOUNTICON = 32,
    UI_HUDGROUP_NOFLYHUD = 33,
    UI_HUDGROUP_NOTIFICATIONPANEL = 34,
    UI_HUDGROUP_OUTOFAREANOTIFICATION = 35,
    UI_HUDGROUP_OWLMAILNOTIFICATION = 36,
    UI_HUDGROUP_PCACTIONRING = 37,
    UI_HUDGROUP_QUICKHEALTHACTIONS = 38,
    UI_HUDGROUP_QUICKITEMHUD = 39,
    UI_HUDGROUP_RETICLES = 40,
    UI_HUDGROUP_SILVERITEMNOTIFICATION = 41,
    UI_HUDGROUP_SPECIALITEMNOTIFICATION = 42,
    UI_HUDGROUP_TEXTNOTIFICATIONPANEL = 43,
    UI_HUDGROUP_UNREADMAILICON = 44,
    UI_HUDGROUP_VASECOUNTER = 45,
    UI_HUDGROUP_WANTEDHUD = 46,
    UI_HUDGROUP_XPMETER = 47,
    UI_HUDGROUP_COUNT = 48,
    UI_HUDGROUP_MAX = 49,
}

---@enum USceneAction_ResetClothSim_ClothingTeleportMode
local USceneAction_ResetClothSim_ClothingTeleportMode = {
    Teleport = 0,
    TeleportAndReset = 1,
    USceneAction_ResetClothSim_MAX = 2,
}

---@enum UablResetReset_ClothingTeleportMode
local UablResetReset_ClothingTeleportMode = {
    Teleport = 0,
    TeleportAndReset = 1,
    UablResetReset_MAX = 2,
}

