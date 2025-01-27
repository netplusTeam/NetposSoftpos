.class public Lcom/sleepycat/je/txn/DummyLockManager;
.super Lcom/sleepycat/je/txn/LockManager;
.source "DummyLockManager.java"


# instance fields
.field private final superiorLockManager:Lcom/sleepycat/je/txn/LockManager;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/LockManager;)V
    .locals 0
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "superiorLockManager"    # Lcom/sleepycat/je/txn/LockManager;

    .line 43
    invoke-direct {p0, p1}, Lcom/sleepycat/je/txn/LockManager;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 44
    iput-object p2, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    .line 45
    return-void
.end method


# virtual methods
.method attemptLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/txn/LockAttemptResult;
    .locals 7
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

    .line 88
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/Locker;->lockingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    .line 90
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/txn/LockManager;->attemptLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/txn/LockAttemptResult;

    move-result-object v0

    .line 89
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lcom/sleepycat/je/txn/LockAttemptResult;

    const/4 v1, 0x0

    sget-object v2, Lcom/sleepycat/je/txn/LockGrantType;->NEW:Lcom/sleepycat/je/txn/LockGrantType;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/txn/LockAttemptResult;-><init>(Lcom/sleepycat/je/txn/Lock;Lcom/sleepycat/je/txn/LockGrantType;Z)V

    return-object v0
.end method

.method demote(JLcom/sleepycat/je/txn/Locker;)V
    .locals 1
    .param p1, "lsn"    # J
    .param p3, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 145
    invoke-virtual {p3}, Lcom/sleepycat/je/txn/Locker;->lockingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/txn/LockManager;->demote(JLcom/sleepycat/je/txn/Locker;)V

    .line 150
    return-void

    .line 148
    :cond_0
    return-void
.end method

.method dumpLockTable(Lcom/sleepycat/je/utilint/StatGroup;Z)V
    .locals 1
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/txn/LockManager;->dumpLockTable(Lcom/sleepycat/je/utilint/StatGroup;Z)V

    .line 230
    return-void
.end method

.method public getOwnedLockType(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockType;
    .locals 1
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/txn/LockManager;->getOwnedLockType(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockType;

    move-result-object v0

    return-object v0
.end method

.method public getOwners(Ljava/lang/Long;)Ljava/util/Set;
    .locals 1
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

    .line 49
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/LockManager;->getOwners(Ljava/lang/Long;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getTimeoutInfo(ZLcom/sleepycat/je/txn/Locker;JLcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;Lcom/sleepycat/je/txn/Lock;JJJLcom/sleepycat/je/dbi/DatabaseImpl;Ljava/util/Set;Ljava/util/List;)Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;
    .locals 18
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 111
    .local p15, "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .local p16, "waiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/txn/Locker;->lockingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-virtual/range {v1 .. v17}, Lcom/sleepycat/je/txn/LockManager;->getTimeoutInfo(ZLcom/sleepycat/je/txn/Locker;JLcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;Lcom/sleepycat/je/txn/Lock;JJJLcom/sleepycat/je/dbi/DatabaseImpl;Ljava/util/Set;Ljava/util/List;)Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;

    move-result-object v1

    return-object v1

    .line 116
    :cond_0
    move-object/from16 v0, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getWaiters(Ljava/lang/Long;)Ljava/util/List;
    .locals 1
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

    .line 54
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/LockManager;->getWaiters(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWriteOwnerLocker(Ljava/lang/Long;)Lcom/sleepycat/je/txn/Locker;
    .locals 1
    .param p1, "lsn"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/LockManager;->getWriteOwnerLocker(Ljava/lang/Long;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    return-object v0
.end method

.method public isLockUncontended(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "lsn"    # Ljava/lang/Long;

    .line 64
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/LockManager;->isLockUncontended(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method isLocked(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "lsn"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/LockManager;->isLocked(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method isOwner(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z
    .locals 1
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "type"    # Lcom/sleepycat/je/txn/LockType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/txn/LockManager;->isOwner(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v0

    return v0
.end method

.method isWaiter(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;)Z
    .locals 1
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/txn/LockManager;->isWaiter(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;)Z

    move-result v0

    return v0
.end method

.method lookupLock(Ljava/lang/Long;)Lcom/sleepycat/je/txn/Lock;
    .locals 1
    .param p1, "lsn"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/LockManager;->lookupLock(Ljava/lang/Long;)Lcom/sleepycat/je/txn/Lock;

    move-result-object v0

    .line 77
    .local v0, "ret":Lcom/sleepycat/je/txn/Lock;
    return-object v0
.end method

.method nOwners(Ljava/lang/Long;)I
    .locals 1
    .param p1, "lsn"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/LockManager;->nOwners(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method nWaiters(Ljava/lang/Long;)I
    .locals 1
    .param p1, "lsn"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/LockManager;->nWaiters(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public ownsOrSharesLock(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;)Z
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "lsn"    # Ljava/lang/Long;

    .line 69
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/txn/LockManager;->ownsOrSharesLock(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method releaseAndFindNotifyTargets(JLcom/sleepycat/je/txn/Locker;)Ljava/util/Set;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/txn/LockManager;->releaseAndFindNotifyTargets(JLcom/sleepycat/je/txn/Locker;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public stealLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/txn/LockAttemptResult;
    .locals 1
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 218
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/Locker;->lockingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    .line 220
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/txn/LockManager;->stealLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/txn/LockAttemptResult;

    move-result-object v0

    .line 219
    return-object v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method validateOwnership(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZLjava/util/Set;Ljava/util/List;)Z
    .locals 9
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 204
    .local p6, "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .local p7, "waiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/Locker;->lockingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    move-object v0, p0

    iget-object v1, v0, Lcom/sleepycat/je/txn/DummyLockManager;->superiorLockManager:Lcom/sleepycat/je/txn/LockManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/txn/LockManager;->validateOwnership(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZLjava/util/Set;Ljava/util/List;)Z

    move-result v1

    return v1

    .line 209
    :cond_0
    move-object v0, p0

    const/4 v1, 0x1

    return v1
.end method
