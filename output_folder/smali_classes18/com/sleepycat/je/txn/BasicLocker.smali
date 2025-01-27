.class public Lcom/sleepycat/je/txn/BasicLocker;
.super Lcom/sleepycat/je/txn/Locker;
.source "BasicLocker.java"


# instance fields
.field private lockingRequired:Z

.field private ownedLock:Ljava/lang/Long;

.field private ownedLockSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 6
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 58
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/txn/Locker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZJ)V

    .line 62
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V
    .locals 6
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "noWait"    # Z

    .line 74
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/txn/Locker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZJ)V

    .line 78
    return-void
.end method

.method public static createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/sleepycat/je/txn/BasicLocker;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/txn/BasicLocker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    return-object v0
.end method

.method public static createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "noWait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/sleepycat/je/txn/BasicLocker;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/txn/BasicLocker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    return-object v0
.end method


# virtual methods
.method public addDbCleanup(Lcom/sleepycat/je/dbi/DbCleanup;)V
    .locals 1
    .param p1, "cleanup"    # Lcom/sleepycat/je/dbi/DbCleanup;

    .line 286
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0, p1}, Lcom/sleepycat/je/dbi/DbCleanup;->setStateAndExecute(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DbCleanup;)V

    .line 287
    return-void
.end method

.method protected addLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;)V
    .locals 1
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p3, "grantStatus"    # Lcom/sleepycat/je/txn/LockGrantType;

    .line 296
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLock:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLockSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 299
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    :cond_1
    return-void

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLock:Ljava/lang/Long;

    if-nez v0, :cond_3

    .line 303
    iput-object p1, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLock:Ljava/lang/Long;

    goto :goto_0

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLockSet:Ljava/util/Set;

    if-nez v0, :cond_4

    .line 306
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLockSet:Ljava/util/Set;

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLockSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    :goto_0
    return-void
.end method

.method protected checkState(Z)V
    .locals 0
    .param p1, "ignoreCalledByAbort"    # Z

    .line 100
    return-void
.end method

.method public collectStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 341
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Locker lock counts"

    const-string v2, "Read and write locks held by this locker"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .local v0, "stats":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_READ_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 346
    .local v1, "nReadLocks":Lcom/sleepycat/je/utilint/IntStat;
    new-instance v2, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v3, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WRITE_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v0, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 348
    .local v2, "nWriteLocks":Lcom/sleepycat/je/utilint/IntStat;
    iget-object v3, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLock:Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 349
    iget-object v3, p0, Lcom/sleepycat/je/txn/BasicLocker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    iget-object v4, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLock:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/txn/LockManager;->lookupLock(Ljava/lang/Long;)Lcom/sleepycat/je/txn/Lock;

    move-result-object v3

    .line 350
    .local v3, "l":Lcom/sleepycat/je/txn/Lock;
    if-eqz v3, :cond_1

    .line 351
    invoke-interface {v3, p0}, Lcom/sleepycat/je/txn/Lock;->isOwnedWriteLock(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 358
    .end local v3    # "l":Lcom/sleepycat/je/txn/Lock;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLockSet:Ljava/util/Set;

    if-eqz v3, :cond_4

    .line 359
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 360
    .local v4, "nid":Ljava/lang/Long;
    iget-object v5, p0, Lcom/sleepycat/je/txn/BasicLocker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v5, v4}, Lcom/sleepycat/je/txn/LockManager;->lookupLock(Ljava/lang/Long;)Lcom/sleepycat/je/txn/Lock;

    move-result-object v5

    .line 361
    .local v5, "l":Lcom/sleepycat/je/txn/Lock;
    if-eqz v5, :cond_3

    .line 362
    invoke-interface {v5, p0}, Lcom/sleepycat/je/txn/Lock;->isOwnedWriteLock(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 363
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    goto :goto_2

    .line 365
    :cond_2
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 368
    .end local v4    # "nid":Ljava/lang/Long;
    .end local v5    # "l":Lcom/sleepycat/je/txn/Lock;
    :cond_3
    :goto_2
    goto :goto_1

    .line 370
    :cond_4
    return-object v0
.end method

.method protected generateId(Lcom/sleepycat/je/txn/TxnManager;J)J
    .locals 2
    .param p1, "txnManager"    # Lcom/sleepycat/je/txn/TxnManager;
    .param p2, "ignore"    # J

    .line 94
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTxnLocker()Lcom/sleepycat/je/txn/Txn;
    .locals 1

    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWriteLockInfo(J)Lcom/sleepycat/je/txn/WriteLockInfo;
    .locals 1
    .param p1, "lsn"    # J

    .line 281
    sget-object v0, Lcom/sleepycat/je/txn/WriteLockInfo;->basicWriteLockInfo:Lcom/sleepycat/je/txn/WriteLockInfo;

    return-object v0
.end method

.method public getWriteOwnerLocker(J)Lcom/sleepycat/je/txn/Locker;
    .locals 2
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/LockManager;->getWriteOwnerLocker(Ljava/lang/Long;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    return-object v0
.end method

.method public isReadCommittedIsolation()Z
    .locals 1

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public isSerializableIsolation()Z
    .locals 1

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method protected lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;
    .locals 15
    .param p1, "lsn"    # J
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "noWait"    # Z
    .param p5, "jumpAheadOfWaiters"    # Z
    .param p6, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 111
    move-object v11, p0

    monitor-enter p0

    .line 112
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/BasicLocker;->checkState(Z)V

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    const-wide/16 v1, 0x0

    .line 116
    .local v1, "timeout":J
    if-nez p4, :cond_0

    iget-boolean v3, v11, Lcom/sleepycat/je/txn/BasicLocker;->defaultNoWait:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    move v12, v0

    .line 117
    .local v12, "useNoWait":Z
    if-nez v12, :cond_2

    .line 118
    monitor-enter p0

    .line 119
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/BasicLocker;->getLockTimeout()J

    move-result-wide v3

    move-wide v1, v3

    .line 120
    monitor-exit p0

    move-wide v13, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 117
    :cond_2
    move-wide v13, v1

    .line 124
    .end local v1    # "timeout":J
    .local v13, "timeout":J
    :goto_0
    iget-object v1, v11, Lcom/sleepycat/je/txn/BasicLocker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    .line 125
    move-wide/from16 v2, p1

    move-object v4, p0

    move-object/from16 v5, p3

    move-wide v6, v13

    move v8, v12

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcom/sleepycat/je/txn/LockManager;->lock(JLcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;JZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v0

    .line 128
    .local v0, "grant":Lcom/sleepycat/je/txn/LockGrantType;
    new-instance v1, Lcom/sleepycat/je/txn/LockResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/txn/LockResult;-><init>(Lcom/sleepycat/je/txn/LockGrantType;Lcom/sleepycat/je/txn/WriteLockInfo;)V

    return-object v1

    .line 113
    .end local v0    # "grant":Lcom/sleepycat/je/txn/LockGrantType;
    .end local v12    # "useNoWait":Z
    .end local v13    # "timeout":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public lockingRequired()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->lockingRequired:Z

    return v0
.end method

.method moveWriteToReadLock(JLcom/sleepycat/je/txn/Lock;)V
    .locals 0
    .param p1, "lsn"    # J
    .param p3, "lock"    # Lcom/sleepycat/je/txn/Lock;

    .line 331
    return-void
.end method

.method public newNonTxnLocker()Lcom/sleepycat/je/txn/Locker;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 191
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public nonTxnOperationEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd(Z)V

    .line 236
    return-void
.end method

.method public operationEnd(Z)V
    .locals 0
    .param p1, "operationOK"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/BasicLocker;->releaseNonTxnLocks()V

    .line 248
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/BasicLocker;->close()V

    .line 249
    return-void
.end method

.method public preLogWithoutLock(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p1, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 133
    return-void
.end method

.method public registerCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 1
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 257
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->isInternalDbCursor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->lockingRequired:Z

    .line 258
    return-void
.end method

.method public declared-synchronized releaseNonTxnLocks()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLock:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    iget-object v1, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLock:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/sleepycat/je/txn/LockManager;->release(JLcom/sleepycat/je/txn/Locker;)Z

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLock:Ljava/lang/Long;

    .line 211
    .end local p0    # "this":Lcom/sleepycat/je/txn/BasicLocker;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLockSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 212
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 213
    .local v1, "nid":Ljava/lang/Long;
    iget-object v2, p0, Lcom/sleepycat/je/txn/BasicLocker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p0}, Lcom/sleepycat/je/txn/LockManager;->release(JLcom/sleepycat/je/txn/Locker;)Z

    .line 214
    nop

    .end local v1    # "nid":Ljava/lang/Long;
    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLockSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->deleteInfo:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->deleteInfo:Ljava/util/Map;

    .line 222
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v1, p0, Lcom/sleepycat/je/txn/BasicLocker;->deleteInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addToCompressorQueue(Ljava/util/Collection;)V

    .line 224
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->deleteInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_3
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeLock(J)V
    .locals 2
    .param p1, "lsn"    # J

    .line 317
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLock:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLock:Ljava/lang/Long;

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/BasicLocker;->ownedLockSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 321
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 323
    :cond_1
    :goto_0
    return-void
.end method

.method public unRegisterCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 0
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 265
    return-void
.end method
