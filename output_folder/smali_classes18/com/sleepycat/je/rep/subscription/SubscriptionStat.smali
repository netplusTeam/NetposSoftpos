.class public Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
.super Ljava/lang/Object;
.source "SubscriptionStat.java"


# instance fields
.field private highVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final maxPendingInput:Lcom/sleepycat/je/utilint/LongStat;

.field private final nMsgReceived:Lcom/sleepycat/je/utilint/LongStat;

.field private final nMsgResponded:Lcom/sleepycat/je/utilint/LongStat;

.field private final nOpsProcessed:Lcom/sleepycat/je/utilint/LongStat;

.field private final nReplayQueueOverflow:Lcom/sleepycat/je/utilint/LongStat;

.field private final nTxnAborted:Lcom/sleepycat/je/utilint/LongStat;

.field private final nTxnCommitted:Lcom/sleepycat/je/utilint/LongStat;

.field private partGenDBId:Lcom/sleepycat/je/dbi/DatabaseId;

.field private startVLSN:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method constructor <init>()V
    .locals 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->startVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->partGenDBId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 60
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string/jumbo v1, "subscription"

    const-string/jumbo v2, "subscription statistics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v0, "stats":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_N_REPLAY_QUEUE_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->nReplayQueueOverflow:Lcom/sleepycat/je/utilint/LongStat;

    .line 64
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_MSG_RECEIVED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->nMsgReceived:Lcom/sleepycat/je/utilint/LongStat;

    .line 66
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_MSG_RESPONDED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->nMsgResponded:Lcom/sleepycat/je/utilint/LongStat;

    .line 68
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_MAX_PENDING_INPUT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->maxPendingInput:Lcom/sleepycat/je/utilint/LongStat;

    .line 71
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_OPS_PROCESSED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->nOpsProcessed:Lcom/sleepycat/je/utilint/LongStat;

    .line 73
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_TXN_ABORTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->nTxnAborted:Lcom/sleepycat/je/utilint/LongStat;

    .line 75
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_TXN_COMMITTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->nTxnCommitted:Lcom/sleepycat/je/utilint/LongStat;

    .line 78
    return-void
.end method


# virtual methods
.method public declared-synchronized getHighVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->highVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 116
    .end local p0    # "this":Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxPendingInput()Lcom/sleepycat/je/utilint/LongStat;
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->maxPendingInput:Lcom/sleepycat/je/utilint/LongStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 88
    .end local p0    # "this":Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumMsgReceived()Lcom/sleepycat/je/utilint/LongStat;
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->nMsgReceived:Lcom/sleepycat/je/utilint/LongStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 96
    .end local p0    # "this":Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumMsgResponded()Lcom/sleepycat/je/utilint/LongStat;
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->nMsgResponded:Lcom/sleepycat/je/utilint/LongStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 92
    .end local p0    # "this":Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumOpsProcessed()Lcom/sleepycat/je/utilint/LongStat;
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->nOpsProcessed:Lcom/sleepycat/je/utilint/LongStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 100
    .end local p0    # "this":Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumReplayQueueOverflow()Lcom/sleepycat/je/utilint/LongStat;
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->nReplayQueueOverflow:Lcom/sleepycat/je/utilint/LongStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 84
    .end local p0    # "this":Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumTxnAborted()Lcom/sleepycat/je/utilint/LongStat;
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->nTxnAborted:Lcom/sleepycat/je/utilint/LongStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 104
    .end local p0    # "this":Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumTxnCommitted()Lcom/sleepycat/je/utilint/LongStat;
    .locals 1

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->nTxnCommitted:Lcom/sleepycat/je/utilint/LongStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 108
    .end local p0    # "this":Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPartGenDBId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->partGenDBId:Lcom/sleepycat/je/dbi/DatabaseId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 120
    .end local p0    # "this":Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->startVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 112
    .end local p0    # "this":Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHighVLSN(Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 0
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    monitor-enter p0

    .line 131
    :try_start_0
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->highVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 130
    .end local p0    # "this":Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPartGenDBId(Lcom/sleepycat/je/dbi/DatabaseId;)V
    .locals 0
    .param p1, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    monitor-enter p0

    .line 135
    :try_start_0
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->partGenDBId:Lcom/sleepycat/je/dbi/DatabaseId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 134
    .end local p0    # "this":Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    .end local p1    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStartVLSN(Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 0
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    monitor-enter p0

    .line 127
    :try_start_0
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->startVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 126
    .end local p0    # "this":Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
