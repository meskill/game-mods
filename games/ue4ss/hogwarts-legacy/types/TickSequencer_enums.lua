---@enum ETickSequencerBucketDelegateInit
local ETickSequencerBucketDelegateInit = {
    GameOnly = 0,
    EditorOnly = 1,
    Always = 2,
    ETickSequencerBucketDelegateInit_MAX = 3,
}

---@enum ETickSequencerGroup
local ETickSequencerGroup = {
    PreActorTick = 0,
    PrePhysics = 1,
    DuringPhysics = 2,
    PostPhysics = 3,
    PostUpdateWork = 4,
    PostActorTick = 5,
    Invalid = 6,
    ETickSequencerGroup_MAX = 7,
}

