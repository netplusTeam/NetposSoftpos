.class Lcom/sleepycat/je/log/FSyncManager;
.super Ljava/lang/Object;
.source "FSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;
    }
.end annotation


# instance fields
.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private flushHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mgrMutex:Ljava/lang/Object;

.field private final nFSyncRequests:Lcom/sleepycat/je/utilint/LongStat;

.field private final nFSyncs:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final nRequests:Lcom/sleepycat/je/utilint/LongStat;

.field private final nTimeouts:Lcom/sleepycat/je/utilint/LongStat;

.field private nextFSyncWaiters:Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;

.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;

.field private final timeout:J

.field private volatile workInProgress:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FSYNC_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/FSyncManager;->timeout:J

    .line 120
    iput-object p1, p0, Lcom/sleepycat/je/log/FSyncManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 122
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/log/FSyncManager;->mgrMutex:Ljava/lang/Object;

    .line 123
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sleepycat/je/log/FSyncManager;->workInProgress:Z

    .line 124
    new-instance v2, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;

    invoke-direct {v2, v0, v1, p1}, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;-><init>(JLcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v2, p0, Lcom/sleepycat/je/log/FSyncManager;->nextFSyncWaiters:Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;

    .line 126
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "FSyncManager"

    const-string v2, "FSyncManager statistics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/log/FSyncManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 128
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_FSYNC_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/log/FSyncManager;->nFSyncRequests:Lcom/sleepycat/je/utilint/LongStat;

    .line 129
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/log/FSyncManager;->nFSyncs:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 130
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_TIMEOUTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/log/FSyncManager;->nTimeouts:Lcom/sleepycat/je/utilint/LongStat;

    .line 131
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_N_GROUP_COMMIT_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/log/FSyncManager;->nRequests:Lcom/sleepycat/je/utilint/LongStat;

    .line 132
    return-void
.end method


# virtual methods
.method protected executeFSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/sleepycat/je/log/FSyncManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->syncLogEnd()V

    .line 320
    return-void
.end method

.method flushAndSync(Z)V
    .locals 11
    .param p1, "fsyncRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "doWork":Z
    const/4 v1, 0x0

    .line 170
    .local v1, "isLeader":Z
    const/4 v2, 0x0

    .line 171
    .local v2, "needToWait":Z
    const/4 v3, 0x0

    .line 174
    .local v3, "inProgressGroup":Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;
    iget-object v4, p0, Lcom/sleepycat/je/log/FSyncManager;->mgrMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 175
    :try_start_0
    iget-object v5, p0, Lcom/sleepycat/je/log/FSyncManager;->nRequests:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v5}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget-object v5, p0, Lcom/sleepycat/je/log/FSyncManager;->nFSyncRequests:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v5}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 179
    :cond_0
    iget-object v5, p0, Lcom/sleepycat/je/log/FSyncManager;->nextFSyncWaiters:Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;

    .line 180
    .local v5, "myGroup":Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;
    invoke-virtual {v5, p1}, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->setDoFsync(Z)V

    .line 183
    iget-boolean v6, p0, Lcom/sleepycat/je/log/FSyncManager;->workInProgress:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 184
    const/4 v2, 0x1

    goto :goto_0

    .line 186
    :cond_1
    const/4 v1, 0x1

    .line 187
    const/4 v0, 0x1

    .line 188
    iput-boolean v7, p0, Lcom/sleepycat/je/log/FSyncManager;->workInProgress:Z

    .line 189
    iget-object v6, p0, Lcom/sleepycat/je/log/FSyncManager;->nextFSyncWaiters:Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;

    move-object v3, v6

    .line 190
    new-instance v6, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;

    iget-wide v8, p0, Lcom/sleepycat/je/log/FSyncManager;->timeout:J

    iget-object v10, p0, Lcom/sleepycat/je/log/FSyncManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v6, v8, v9, v10}, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;-><init>(JLcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v6, p0, Lcom/sleepycat/je/log/FSyncManager;->nextFSyncWaiters:Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;

    .line 192
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 194
    if-eqz v2, :cond_4

    .line 205
    invoke-virtual {v5}, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->waitForEvent()I

    move-result v4

    .line 207
    .local v4, "waitStatus":I
    sget v6, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->DO_LEADER_FSYNC:I

    if-ne v4, v6, :cond_3

    .line 208
    iget-object v6, p0, Lcom/sleepycat/je/log/FSyncManager;->mgrMutex:Ljava/lang/Object;

    monitor-enter v6

    .line 217
    :try_start_1
    iget-boolean v8, p0, Lcom/sleepycat/je/log/FSyncManager;->workInProgress:Z

    if-eqz v8, :cond_2

    .line 223
    const/4 v0, 0x1

    goto :goto_1

    .line 225
    :cond_2
    const/4 v1, 0x1

    .line 226
    const/4 v0, 0x1

    .line 227
    iput-boolean v7, p0, Lcom/sleepycat/je/log/FSyncManager;->workInProgress:Z

    .line 228
    move-object v3, v5

    .line 229
    new-instance v7, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;

    iget-wide v8, p0, Lcom/sleepycat/je/log/FSyncManager;->timeout:J

    iget-object v10, p0, Lcom/sleepycat/je/log/FSyncManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v7, v8, v9, v10}, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;-><init>(JLcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v7, p0, Lcom/sleepycat/je/log/FSyncManager;->nextFSyncWaiters:Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;

    .line 231
    :goto_1
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 232
    :cond_3
    sget v6, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->DO_TIMEOUT_FSYNC:I

    if-ne v4, v6, :cond_4

    .line 233
    const/4 v6, 0x1

    .line 234
    .end local v0    # "doWork":Z
    .local v6, "doWork":Z
    iget-object v7, p0, Lcom/sleepycat/je/log/FSyncManager;->mgrMutex:Ljava/lang/Object;

    monitor-enter v7

    .line 235
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/je/log/FSyncManager;->nTimeouts:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 236
    monitor-exit v7

    move v0, v6

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 240
    .end local v4    # "waitStatus":I
    .end local v6    # "doWork":Z
    .restart local v0    # "doWork":Z
    :cond_4
    :goto_2
    if-eqz v0, :cond_8

    .line 259
    invoke-virtual {v5}, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->getDoFsync()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 260
    iget-object v4, p0, Lcom/sleepycat/je/log/FSyncManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogManager;->flushBeforeSync()V

    goto :goto_3

    .line 262
    :cond_5
    iget-object v4, p0, Lcom/sleepycat/je/log/FSyncManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogManager;->flushNoSync()V

    .line 265
    :goto_3
    iget-object v4, p0, Lcom/sleepycat/je/log/FSyncManager;->flushHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v4}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    .line 268
    invoke-virtual {v5}, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->getDoFsync()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 269
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FSyncManager;->executeFSync()V

    .line 270
    iget-object v4, p0, Lcom/sleepycat/je/log/FSyncManager;->nFSyncs:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 273
    :cond_6
    iget-object v4, p0, Lcom/sleepycat/je/log/FSyncManager;->mgrMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 274
    if-eqz v1, :cond_7

    .line 280
    :try_start_3
    invoke-virtual {v3}, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->wakeupAll()V

    .line 286
    iget-object v6, p0, Lcom/sleepycat/je/log/FSyncManager;->nextFSyncWaiters:Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;

    invoke-virtual {v6}, Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;->wakeupOne()V

    .line 287
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sleepycat/je/log/FSyncManager;->workInProgress:Z

    .line 289
    :cond_7
    monitor-exit v4

    goto :goto_4

    :catchall_2
    move-exception v6

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v6

    .line 291
    :cond_8
    :goto_4
    return-void

    .line 192
    .end local v5    # "myGroup":Lcom/sleepycat/je/log/FSyncManager$FSyncGroup;
    :catchall_3
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v5
.end method

.method getNFSyncRequests()J
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/sleepycat/je/log/FSyncManager;->nFSyncRequests:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method getNFSyncs()J
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/sleepycat/je/log/FSyncManager;->nFSyncs:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->get()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method getNTimeouts()J
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/sleepycat/je/log/FSyncManager;->nTimeouts:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 309
    iget-object v0, p0, Lcom/sleepycat/je/log/FSyncManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method public setFlushLogHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/sleepycat/je/log/FSyncManager;->flushHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 325
    return-void
.end method
