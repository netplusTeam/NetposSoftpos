.class public Lcom/sleepycat/je/txn/SyncedLockManager;
.super Lcom/sleepycat/je/txn/LockManager;
.source "SyncedLockManager.java"


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 31
    invoke-direct {p0, p1}, Lcom/sleepycat/je/txn/LockManager;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 32
    return-void
.end method


# virtual methods
.method attemptLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/txn/LockAttemptResult;
    .locals 9
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "nonBlockingRequest"    # Z
    .param p5, "jumpAheadOfWaiters"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v7

    .line 92
    .local v7, "lockTableIndex":I
    iget-object v0, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v8, v0, v7

    monitor-enter v8

    .line 93
    nop

    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, v7

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/txn/SyncedLockManager;->attemptLockInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZI)Lcom/sleepycat/je/txn/LockAttemptResult;

    move-result-object v0

    monitor-exit v8

    .line 93
    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method demote(JLcom/sleepycat/je/txn/Locker;)V
    .locals 3
    .param p1, "lsn"    # J
    .param p3, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(J)I

    move-result v0

    .line 134
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 135
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->demoteInternal(JLcom/sleepycat/je/txn/Locker;I)V

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method dumpLockTable(Lcom/sleepycat/je/utilint/StatGroup;Z)V
    .locals 3
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "clear"    # Z

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->nLockTables:I

    if-ge v0, v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 224
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/sleepycat/je/txn/SyncedLockManager;->dumpLockTableInternal(Lcom/sleepycat/je/utilint/StatGroup;IZ)V

    .line 225
    monitor-exit v1

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 227
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getOwnedLockType(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockType;
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 53
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 54
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 55
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->getOwnedLockTypeInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;I)Lcom/sleepycat/je/txn/LockType;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 56
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getOwners(Ljava/lang/Long;)Ljava/util/Set;
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 37
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 38
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v2}, Lcom/sleepycat/je/txn/SyncedLockManager;->getOwnersInternal(Ljava/lang/Long;IZ)Ljava/util/Set;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 40
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getTimeoutInfo(ZLcom/sleepycat/je/txn/Locker;JLcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;Lcom/sleepycat/je/txn/Lock;JJJLcom/sleepycat/je/dbi/DatabaseImpl;Ljava/util/Set;Ljava/util/List;)Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;
    .locals 6
    .param p1, "isLockNotTxnTimeout"    # Z
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "lsn"    # J
    .param p5, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p6, "grantType"    # Lcom/sleepycat/je/txn/LockGrantType;
    .param p7, "useLock"    # Lcom/sleepycat/je/txn/Lock;
    .param p8, "timeout"    # J
    .param p10, "start"    # J
    .param p12, "now"    # J
    .param p14, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sleepycat/je/txn/Locker;",
            "J",
            "Lcom/sleepycat/je/txn/LockType;",
            "Lcom/sleepycat/je/txn/LockGrantType;",
            "Lcom/sleepycat/je/txn/Lock;",
            "JJJ",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;)",
            "Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;"
        }
    .end annotation

    .line 114
    .local p15, "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .local p16, "waiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    move-object v1, p0

    move-wide v2, p3

    invoke-virtual {p0, p3, p4}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(J)I

    move-result v4

    .line 115
    .local v4, "lockTableIndex":I
    iget-object v0, v1, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v5, v0, v4

    monitor-enter v5

    .line 116
    :try_start_0
    invoke-virtual/range {p0 .. p16}, Lcom/sleepycat/je/txn/SyncedLockManager;->getTimeoutInfoInternal(ZLcom/sleepycat/je/txn/Locker;JLcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;Lcom/sleepycat/je/txn/Lock;JJJLcom/sleepycat/je/dbi/DatabaseImpl;Ljava/util/Set;Ljava/util/List;)Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWaiters(Ljava/lang/Long;)Ljava/util/List;
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 46
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 47
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->getWaitersInternal(Ljava/lang/Long;I)Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 48
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWriteOwnerLocker(Ljava/lang/Long;)Lcom/sleepycat/je/txn/Locker;
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;

    .line 186
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 187
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 188
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->getWriteOwnerLockerInternal(Ljava/lang/Long;I)Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 189
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isLockUncontended(Ljava/lang/Long;)Z
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;

    .line 61
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 62
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 63
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->isLockUncontendedInternal(Ljava/lang/Long;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 64
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method isLocked(Ljava/lang/Long;)Z
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;

    .line 142
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 143
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 144
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->isLockedInternal(Ljava/lang/Long;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 145
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method isOwner(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "type"    # Lcom/sleepycat/je/txn/LockType;

    .line 151
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 152
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 153
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->isOwnerInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 154
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method isWaiter(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;)Z
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 160
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 161
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 162
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->isWaiterInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 163
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method lookupLock(Ljava/lang/Long;)Lcom/sleepycat/je/txn/Lock;
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;

    .line 77
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 78
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 79
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->lookupLockInternal(Ljava/lang/Long;I)Lcom/sleepycat/je/txn/Lock;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 80
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method nOwners(Ljava/lang/Long;)I
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;

    .line 178
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 179
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 180
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->nOwnersInternal(Ljava/lang/Long;I)I

    move-result v2

    monitor-exit v1

    return v2

    .line 181
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method nWaiters(Ljava/lang/Long;)I
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;

    .line 169
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 170
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 171
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->nWaitersInternal(Ljava/lang/Long;I)I

    move-result v2

    monitor-exit v1

    return v2

    .line 172
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public ownsOrSharesLock(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;)Z
    .locals 3
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "lsn"    # Ljava/lang/Long;

    .line 69
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 70
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 71
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->ownsOrSharesLockInternal(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 72
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method releaseAndFindNotifyTargets(JLcom/sleepycat/je/txn/Locker;)Ljava/util/Set;
    .locals 3
    .param p1, "lsn"    # J
    .param p3, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sleepycat/je/txn/Locker;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/Locker;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(J)I

    move-result v0

    .line 125
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 126
    nop

    .line 127
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->releaseAndFindNotifyTargetsInternal(JLcom/sleepycat/je/txn/Locker;I)Ljava/util/Set;

    move-result-object v2

    monitor-exit v1

    .line 126
    return-object v2

    .line 128
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stealLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/txn/LockAttemptResult;
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v0

    .line 215
    .local v0, "lockTableIndex":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 216
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/txn/SyncedLockManager;->stealLockInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;I)Lcom/sleepycat/je/txn/LockAttemptResult;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 217
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method validateOwnership(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZLjava/util/Set;Ljava/util/List;)Z
    .locals 13
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "getOwnersAndWaiters"    # Z
    .param p5, "flushFromWaiters"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/txn/Locker;",
            "Lcom/sleepycat/je/txn/LockType;",
            "ZZ",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;)Z"
        }
    .end annotation

    .line 200
    .local p6, "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .local p7, "waiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;->getLockTableIndex(Ljava/lang/Long;)I

    move-result v10

    .line 201
    .local v10, "lockTableIndex":I
    move-object v11, p0

    iget-object v0, v11, Lcom/sleepycat/je/txn/SyncedLockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v12, v0, v10

    monitor-enter v12

    .line 202
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move v7, v10

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    :try_start_0
    invoke-virtual/range {v1 .. v9}, Lcom/sleepycat/je/txn/SyncedLockManager;->validateOwnershipInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZILjava/util/Set;Ljava/util/List;)Z

    move-result v0

    monitor-exit v12

    return v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
