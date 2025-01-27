.class public Lcom/sleepycat/je/rep/arbitration/DesignatedPrimaryProvider;
.super Ljava/lang/Object;
.source "DesignatedPrimaryProvider.java"

# interfaces
.implements Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;


# instance fields
.field private final logger:Ljava/util/logging/Logger;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 1
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbitration/DesignatedPrimaryProvider;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbitration/DesignatedPrimaryProvider;->logger:Ljava/util/logging/Logger;

    .line 46
    return-void
.end method

.method private checkDesignatedPrimary()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbitration/DesignatedPrimaryProvider;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->isDesignatedPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/arbitration/DesignatedPrimaryProvider;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 99
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getElectableGroupSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0
.end method


# virtual methods
.method public activationPossible()Z
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbitration/DesignatedPrimaryProvider;->checkDesignatedPrimary()Z

    move-result v0

    return v0
.end method

.method public attemptActivation()Z
    .locals 3

    .line 62
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbitration/DesignatedPrimaryProvider;->checkDesignatedPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbitration/DesignatedPrimaryProvider;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbitration/DesignatedPrimaryProvider;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v2, "Primary activated; quorum is one."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbitration/DesignatedPrimaryProvider;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbitration/DesignatedPrimaryProvider;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v2, "Attempted unsuccessfully to activate designated primary"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public endArbitration()V
    .locals 0

    .line 90
    return-void
.end method

.method public getAckCount(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)I
    .locals 1
    .param p1, "ackPolicy"    # Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getElectionQuorumSize(Lcom/sleepycat/je/rep/QuorumPolicy;)I
    .locals 1
    .param p1, "quorumPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public shouldEndArbitration(Lcom/sleepycat/je/rep/ReplicationMutableConfig;)Z
    .locals 1
    .param p1, "newConfig"    # Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 127
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->getDesignatedPrimary()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
