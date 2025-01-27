.class public Lcom/sleepycat/je/rep/arbitration/Arbiter;
.super Ljava/lang/Object;
.source "Arbiter.java"


# instance fields
.field private volatile active:Z

.field private final logger:Ljava/util/logging/Logger;

.field private final provider:Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 1
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 57
    new-instance v0, Lcom/sleepycat/je/rep/arbitration/DesignatedPrimaryProvider;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/arbitration/DesignatedPrimaryProvider;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->provider:Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->logger:Ljava/util/logging/Logger;

    .line 59
    return-void
.end method


# virtual methods
.method public declared-synchronized activateArbitration()Z
    .locals 1

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->provider:Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;->attemptActivation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->active:Z

    goto :goto_0

    .line 71
    .end local p0    # "this":Lcom/sleepycat/je/rep/arbitration/Arbiter;
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->active:Z

    .line 73
    :goto_0
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public activationPossible()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->provider:Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;->activationPossible()Z

    move-result v0

    return v0
.end method

.method public endArbitration()V
    .locals 3

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->active:Z

    if-nez v0, :cond_0

    .line 84
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->provider:Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;->endArbitration()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->active:Z

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v2, "Arbitration is inactivated"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 92
    return-void

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAckCount(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)I
    .locals 1
    .param p1, "ackPolicy"    # Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 138
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->provider:Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;->getAckCount(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)I

    move-result v0

    return v0
.end method

.method public getElectionQuorumSize(Lcom/sleepycat/je/rep/QuorumPolicy;)I
    .locals 1
    .param p1, "quorumPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;

    .line 130
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->provider:Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;->getElectionQuorumSize(Lcom/sleepycat/je/rep/QuorumPolicy;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized isActive()Z
    .locals 1

    monitor-enter p0

    .line 165
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 165
    .end local p0    # "this":Lcom/sleepycat/je/rep/arbitration/Arbiter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApplicable(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)Z
    .locals 1
    .param p1, "ackPolicy"    # Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 121
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->active:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isApplicable(Lcom/sleepycat/je/rep/QuorumPolicy;)Z
    .locals 1
    .param p1, "quorumPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;

    .line 113
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->active:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/rep/QuorumPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/rep/QuorumPolicy;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/rep/QuorumPolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized processConfigChange(Lcom/sleepycat/je/rep/ReplicationMutableConfig;)V
    .locals 1
    .param p1, "newConfig"    # Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 153
    monitor-exit p0

    return-void

    .line 156
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbitration/Arbiter;->provider:Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/rep/arbitration/ArbiterProvider;->shouldEndArbitration(Lcom/sleepycat/je/rep/ReplicationMutableConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbitration/Arbiter;->endArbitration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .end local p0    # "this":Lcom/sleepycat/je/rep/arbitration/Arbiter;
    :cond_1
    monitor-exit p0

    return-void

    .line 151
    .end local p1    # "newConfig":Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
