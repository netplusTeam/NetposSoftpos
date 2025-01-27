.class public Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;
.super Ljava/lang/Object;
.source "ElectionQuorum.java"


# instance fields
.field private volatile electableGroupSizeOverride:I

.field private final logger:Ljava/util/logging/Logger;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 58
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->logger:Ljava/util/logging/Logger;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 3
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->logger:Ljava/util/logging/Logger;

    .line 46
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->ELECTABLE_GROUP_SIZE_OVERRIDE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 47
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->electableGroupSizeOverride:I

    .line 48
    iget v1, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->electableGroupSizeOverride:I

    if-lez v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Electable group size override set to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->electableGroupSizeOverride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method private getElectionQuorumSize(Lcom/sleepycat/je/rep/QuorumPolicy;)I
    .locals 3
    .param p1, "quorumPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;

    .line 120
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->electableGroupSizeOverride:I

    if-lez v0, :cond_0

    .line 121
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->electableGroupSizeOverride:I

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/rep/QuorumPolicy;->quorumSize(I)I

    move-result v0

    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    .line 129
    .local v0, "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getArbiter()Lcom/sleepycat/je/rep/arbitration/Arbiter;

    move-result-object v1

    .line 130
    .local v1, "arbiter":Lcom/sleepycat/je/rep/arbitration/Arbiter;
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/arbitration/Arbiter;->isApplicable(Lcom/sleepycat/je/rep/QuorumPolicy;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/arbitration/Arbiter;->getElectionQuorumSize(Lcom/sleepycat/je/rep/QuorumPolicy;)I

    move-result v2

    return v2

    .line 134
    :cond_1
    nop

    .line 135
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getElectableGroupSize()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sleepycat/je/rep/QuorumPolicy;->quorumSize(I)I

    move-result v2

    .line 134
    return v2
.end method


# virtual methods
.method public getElectableGroupSizeOverride()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->electableGroupSizeOverride:I

    return v0
.end method

.method public haveQuorum(Lcom/sleepycat/je/rep/QuorumPolicy;I)Z
    .locals 1
    .param p1, "quorumPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .param p2, "votes"    # I

    .line 82
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->getElectionQuorumSize(Lcom/sleepycat/je/rep/QuorumPolicy;)I

    move-result v0

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAuthoritativeMaster(Lcom/sleepycat/je/rep/stream/MasterStatus;Lcom/sleepycat/je/rep/impl/node/FeederManager;)Z
    .locals 4
    .param p1, "masterStatus"    # Lcom/sleepycat/je/rep/stream/MasterStatus;
    .param p2, "feederManager"    # Lcom/sleepycat/je/rep/impl/node/FeederManager;

    .line 99
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/MasterStatus;->isGroupMaster()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100
    return v1

    .line 103
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeReplicaCount()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sget-object v3, Lcom/sleepycat/je/rep/QuorumPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/rep/QuorumPolicy;

    .line 104
    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->getElectionQuorumSize(Lcom/sleepycat/je/rep/QuorumPolicy;)I

    move-result v3

    if-lt v0, v3, :cond_1

    move v1, v2

    .line 103
    :cond_1
    return v1
.end method

.method public nodeTypeParticipates(Lcom/sleepycat/je/rep/NodeType;)Z
    .locals 1
    .param p1, "nodeType"    # Lcom/sleepycat/je/rep/NodeType;

    .line 148
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v0

    return v0
.end method

.method public setElectableGroupSizeOverride(I)V
    .locals 4
    .param p1, "override"    # I

    .line 65
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->electableGroupSizeOverride:I

    if-eq v0, p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Electable group size override changed to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 70
    :cond_0
    iput p1, p0, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->electableGroupSizeOverride:I

    .line 71
    return-void
.end method
