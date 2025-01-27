.class public abstract Lcom/sleepycat/je/txn/Locker;
.super Ljava/lang/Object;
.source "Locker.java"


# instance fields
.field public afterWaiterHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private closingLocker:Lcom/sleepycat/je/txn/Locker;

.field defaultNoWait:Z

.field deleteInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/tree/BINReference;",
            ">;"
        }
    .end annotation
.end field

.field protected envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field protected id:J

.field private isOpen:Z

.field protected lockManager:Lcom/sleepycat/je/txn/LockManager;

.field private lockTimeoutMillis:J

.field private preemptable:Z

.field private preemptedCause:Ljava/lang/RuntimeException;

.field private readUncommittedDefault:Z

.field protected thread:Ljava/lang/Thread;

.field private txnStartMillis:J

.field private txnTimeoutMillis:J

.field private waiterThreadId:J

.field private waitingFor:Ljava/lang/Long;

.field private waitingForType:Lcom/sleepycat/je/txn/LockType;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/Locker;->isOpen:Z

    .line 93
    iput-boolean v0, p0, Lcom/sleepycat/je/txn/Locker;->preemptable:Z

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/Locker;->defaultNoWait:Z

    .line 153
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZJ)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readUncommittedDefault"    # Z
    .param p3, "noWait"    # Z
    .param p4, "mandatedId"    # J

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/Locker;->isOpen:Z

    .line 93
    iput-boolean v0, p0, Lcom/sleepycat/je/txn/Locker;->preemptable:Z

    .line 124
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    .line 125
    .local v0, "txnManager":Lcom/sleepycat/je/txn/TxnManager;
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnManager;->getLockManager()Lcom/sleepycat/je/txn/LockManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/txn/Locker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    .line 126
    invoke-virtual {p0, v0, p4, p5}, Lcom/sleepycat/je/txn/Locker;->generateId(Lcom/sleepycat/je/txn/TxnManager;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/txn/Locker;->id:J

    .line 127
    iput-object p1, p0, Lcom/sleepycat/je/txn/Locker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 128
    iput-boolean p2, p0, Lcom/sleepycat/je/txn/Locker;->readUncommittedDefault:Z

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/txn/Locker;->waitingFor:Ljava/lang/Long;

    .line 130
    iput-object v1, p0, Lcom/sleepycat/je/txn/Locker;->waitingForType:Lcom/sleepycat/je/txn/LockType;

    .line 131
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sleepycat/je/txn/Locker;->waiterThreadId:J

    .line 134
    iput-boolean p3, p0, Lcom/sleepycat/je/txn/Locker;->defaultNoWait:Z

    .line 135
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Locker;->getInitialLockTimeout()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/txn/Locker;->lockTimeoutMillis:J

    .line 138
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnTimeout()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/txn/Locker;->txnTimeoutMillis:J

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/txn/Locker;->txnStartMillis:J

    .line 143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/txn/Locker;->thread:Ljava/lang/Thread;

    .line 146
    return-void
.end method


# virtual methods
.method addBuddy(Lcom/sleepycat/je/txn/BuddyLocker;)V
    .locals 0
    .param p1, "buddy"    # Lcom/sleepycat/je/txn/BuddyLocker;

    .line 691
    return-void
.end method

.method public abstract addDbCleanup(Lcom/sleepycat/je/dbi/DbCleanup;)V
.end method

.method public addDeleteInfo(Lcom/sleepycat/je/tree/BIN;)V
    .locals 3
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 815
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->shouldLogDelta()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    return-void

    .line 819
    :cond_0
    monitor-enter p0

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/Locker;->deleteInfo:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 822
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/txn/Locker;->deleteInfo:Ljava/util/Map;

    .line 824
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 825
    .local v0, "nodeId":Ljava/lang/Long;
    iget-object v1, p0, Lcom/sleepycat/je/txn/Locker;->deleteInfo:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 826
    monitor-exit p0

    return-void

    .line 828
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/txn/Locker;->deleteInfo:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->createReference()Lcom/sleepycat/je/tree/BINReference;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    nop

    .end local v0    # "nodeId":Ljava/lang/Long;
    monitor-exit p0

    .line 830
    return-void

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract addLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public addOpenedDatabase(Lcom/sleepycat/je/Database;)V
    .locals 0
    .param p1, "dbHandle"    # Lcom/sleepycat/je/Database;

    .line 763
    return-void
.end method

.method public allowReleaseLockAfterLsnChange()Z
    .locals 1

    .line 769
    const/4 v0, 0x0

    return v0
.end method

.method public checkPreempted(Lcom/sleepycat/je/txn/Locker;)V
    .locals 0
    .param p1, "allowPreemptedLocker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/OperationFailureException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/Locker;->throwIfPreempted(Lcom/sleepycat/je/txn/Locker;)V

    .line 343
    return-void
.end method

.method protected abstract checkState(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method clearWaitingFor()V
    .locals 2

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/txn/Locker;->waitingFor:Ljava/lang/Long;

    .line 258
    iput-object v0, p0, Lcom/sleepycat/je/txn/Locker;->waitingForType:Lcom/sleepycat/je/txn/LockType;

    .line 259
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/txn/Locker;->waiterThreadId:J

    .line 260
    return-void
.end method

.method close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/Locker;->isOpen:Z

    .line 745
    return-void
.end method

.method public abstract collectStats()Lcom/sleepycat/je/utilint/StatGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public demoteLock(J)V
    .locals 1
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/sleepycat/je/txn/Locker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1, p2, p0}, Lcom/sleepycat/je/txn/LockManager;->demote(JLcom/sleepycat/je/txn/Locker;)V

    .line 561
    return-void
.end method

.method public disallowReplicaWrite()V
    .locals 0

    .line 615
    return-void
.end method

.method public dumpLockTable()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/sleepycat/je/txn/Locker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockManager;->dump()V

    .line 925
    return-void
.end method

.method protected abstract generateId(Lcom/sleepycat/je/txn/TxnManager;J)J
.end method

.method getBuddy()Lcom/sleepycat/je/txn/Locker;
    .locals 1

    .line 650
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultNoWait()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/Locker;->defaultNoWait:Z

    return v0
.end method

.method public getEnvironment()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sleepycat/je/txn/Locker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Locker;->id:J

    return-wide v0
.end method

.method public getImportunate()Z
    .locals 1

    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method protected getInitialLockTimeout()J
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/sleepycat/je/txn/Locker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLockTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getLockTimeout()J
    .locals 2

    monitor-enter p0

    .line 196
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Locker;->lockTimeoutMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 196
    .end local p0    # "this":Lcom/sleepycat/je/txn/Locker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreemptable()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/Locker;->preemptable:Z

    return v0
.end method

.method public getTransaction()Lcom/sleepycat/je/Transaction;
    .locals 1

    .line 643
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTxnLocker()Lcom/sleepycat/je/txn/Txn;
.end method

.method getTxnStartMillis()J
    .locals 2

    .line 894
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Locker;->txnStartMillis:J

    return-wide v0
.end method

.method public declared-synchronized getTxnTimeout()J
    .locals 2

    monitor-enter p0

    .line 890
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Locker;->txnTimeoutMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 890
    .end local p0    # "this":Lcom/sleepycat/je/txn/Locker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getWaiterThreadId()J
    .locals 2

    .line 271
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Locker;->waiterThreadId:J

    return-wide v0
.end method

.method getWaitingFor()Ljava/lang/Long;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/sleepycat/je/txn/Locker;->waitingFor:Ljava/lang/Long;

    return-object v0
.end method

.method getWaitingForType()Lcom/sleepycat/je/txn/LockType;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/sleepycat/je/txn/Locker;->waitingForType:Lcom/sleepycat/je/txn/LockType;

    return-object v0
.end method

.method public abstract getWriteLockInfo(J)Lcom/sleepycat/je/txn/WriteLockInfo;
.end method

.method public isLocalWrite()Z
    .locals 1

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method final isPreempted()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/sleepycat/je/txn/Locker;->preemptedCause:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isReadCommittedIsolation()Z
.end method

.method public isReadOnly()Z
    .locals 1

    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public isReadUncommittedDefault()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/Locker;->readUncommittedDefault:Z

    return v0
.end method

.method public isReplicated()Z
    .locals 2

    .line 412
    iget-wide v0, p0, Lcom/sleepycat/je/txn/Locker;->id:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/txn/TxnManager;->isReplicatedTxn(J)Z

    move-result v0

    return v0
.end method

.method public isRolledBack()Z
    .locals 1

    .line 901
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSerializableIsolation()Z
.end method

.method public isTimedOut()Z
    .locals 6

    .line 871
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Locker;->getTxnTimeout()J

    move-result-wide v0

    .line 872
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/je/txn/Locker;->txnStartMillis:J

    sub-long/2addr v2, v4

    .line 874
    .local v2, "diff":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 875
    const/4 v4, 0x1

    return v4

    .line 878
    .end local v2    # "diff":J
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public abstract isTransactional()Z
.end method

.method public isValid()Z
    .locals 1

    .line 756
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/Locker;->isOpen:Z

    return v0
.end method

.method public lock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;
    .locals 7
    .param p1, "lsn"    # J
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "noWait"    # Z
    .param p5, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/LockNotAvailableException;,
            Lcom/sleepycat/je/LockConflictException;
        }
    .end annotation

    .line 495
    nop

    .line 496
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/txn/Locker;->lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    .line 498
    .local v0, "result":Lcom/sleepycat/je/txn/LockResult;
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v1, v2, :cond_0

    .line 503
    iget-object v1, p0, Lcom/sleepycat/je/txn/Locker;->closingLocker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/txn/Locker;->checkPreempted(Lcom/sleepycat/je/txn/Locker;)V

    .line 504
    return-object v0

    .line 500
    :cond_0
    new-instance v1, Lcom/sleepycat/je/LockNotAvailableException;

    const-string v2, "Non-blocking lock was denied."

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/je/LockNotAvailableException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized lockAfterLsnChange(JJLcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 7
    .param p1, "oldLsn"    # J
    .param p3, "newLsn"    # J
    .param p5, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    monitor-enter p0

    .line 579
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Locker;->isValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 581
    monitor-exit p0

    return-void

    .line 584
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/txn/Locker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sleepycat/je/txn/LockManager;->getOwnedLockType(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockType;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    .local v0, "lockType":Lcom/sleepycat/je/txn/LockType;
    if-nez v0, :cond_1

    .line 587
    monitor-exit p0

    return-void

    .line 590
    :cond_1
    const/4 v5, 0x0

    .line 591
    move-object v1, p0

    move-wide v2, p3

    move-object v4, v0

    move-object v6, p5

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/txn/Locker;->nonBlockingLock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v1

    .line 593
    .local v1, "lockResult":Lcom/sleepycat/je/txn/LockResult;
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v2, v3, :cond_2

    .line 600
    monitor-exit p0

    return-void

    .line 594
    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No contention is possible on new LSN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 596
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old LSN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 597
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LockType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 578
    .end local v0    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .end local v1    # "lockResult":Lcom/sleepycat/je/txn/LockResult;
    .end local p0    # "this":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "oldLsn":J
    .end local p3    # "newLsn":J
    .end local p5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method abstract lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/LockConflictException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract lockingRequired()Z
.end method

.method abstract moveWriteToReadLock(JLcom/sleepycat/je/txn/Lock;)V
.end method

.method public abstract newNonTxnLocker()Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public nonBlockingLock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;
    .locals 7
    .param p1, "lsn"    # J
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "jumpAheadOfWaiters"    # Z
    .param p5, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 530
    nop

    .line 531
    const/4 v4, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/txn/Locker;->lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    .line 532
    .local v0, "result":Lcom/sleepycat/je/txn/LockResult;
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v1, v2, :cond_0

    .line 533
    iget-object v1, p0, Lcom/sleepycat/je/txn/Locker;->closingLocker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/txn/Locker;->checkPreempted(Lcom/sleepycat/je/txn/Locker;)V

    .line 535
    :cond_0
    return-object v0
.end method

.method public abstract nonTxnOperationEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public openCursorHook(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 398
    return-void
.end method

.method public final operationEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 713
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 714
    return-void
.end method

.method public final operationEnd(Lcom/sleepycat/je/OperationStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/sleepycat/je/OperationStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 722
    sget-object v0, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 723
    return-void
.end method

.method public abstract operationEnd(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract preLogWithoutLock(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
.end method

.method public abstract registerCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V
.end method

.method public declared-synchronized releaseLock(J)Z
    .locals 1
    .param p1, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/Locker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1, p2, p0}, Lcom/sleepycat/je/txn/LockManager;->release(JLcom/sleepycat/je/txn/Locker;)Z

    move-result v0

    .line 546
    .local v0, "ret":Z
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/txn/Locker;->removeLock(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return v0

    .line 544
    .end local v0    # "ret":Z
    .end local p0    # "this":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "lsn":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract releaseNonTxnLocks()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method removeBuddy(Lcom/sleepycat/je/txn/BuddyLocker;)V
    .locals 0
    .param p1, "buddy"    # Lcom/sleepycat/je/txn/BuddyLocker;

    .line 698
    return-void
.end method

.method abstract removeLock(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method setAllowMultithreadedAccess(Z)Z
    .locals 1
    .param p1, "allow"    # Z

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public setClosingLocker(Lcom/sleepycat/je/txn/Locker;)V
    .locals 0
    .param p1, "closingLocker"    # Lcom/sleepycat/je/txn/Locker;

    .line 378
    iput-object p1, p0, Lcom/sleepycat/je/txn/Locker;->closingLocker:Lcom/sleepycat/je/txn/Locker;

    .line 379
    return-void
.end method

.method public setDefaultNoWait(Z)V
    .locals 0
    .param p1, "noWait"    # Z

    .line 186
    iput-boolean p1, p0, Lcom/sleepycat/je/txn/Locker;->defaultNoWait:Z

    .line 187
    return-void
.end method

.method public setImportunate(Z)V
    .locals 0
    .param p1, "importunate"    # Z

    .line 287
    return-void
.end method

.method public declared-synchronized setLockTimeout(J)V
    .locals 6
    .param p1, "timeout"    # J

    monitor-enter p0

    .line 210
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 213
    long-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    :try_start_0
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 218
    iput-wide p1, p0, Lcom/sleepycat/je/txn/Locker;->lockTimeoutMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 214
    .end local p0    # "this":Lcom/sleepycat/je/txn/Locker;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the timeout value cannot be greater than 2^32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    .end local p1    # "timeout":J
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 211
    .restart local p1    # "timeout":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the timeout value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .end local p1    # "timeout":J
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setOnlyAbortable(Lcom/sleepycat/je/OperationFailureException;)V
    .locals 0
    .param p1, "cause"    # Lcom/sleepycat/je/OperationFailureException;

    .line 280
    return-void
.end method

.method public setPreemptable(Z)V
    .locals 0
    .param p1, "preemptable"    # Z

    .line 300
    iput-boolean p1, p0, Lcom/sleepycat/je/txn/Locker;->preemptable:Z

    .line 301
    return-void
.end method

.method public setPreempted()V
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Lock was preempted by the replication replayer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/txn/Locker;->preemptedCause:Ljava/lang/RuntimeException;

    .line 322
    return-void
.end method

.method public declared-synchronized setTxnTimeout(J)V
    .locals 6
    .param p1, "timeout"    # J

    monitor-enter p0

    .line 231
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 234
    long-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    :try_start_0
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 239
    iput-wide p1, p0, Lcom/sleepycat/je/txn/Locker;->txnTimeoutMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 235
    .end local p0    # "this":Lcom/sleepycat/je/txn/Locker;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the timeout value cannot be greater than 2^32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    .end local p1    # "timeout":J
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 232
    .restart local p1    # "timeout":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the timeout value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .end local p1    # "timeout":J
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method setWaitingFor(Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;)V
    .locals 2
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "type"    # Lcom/sleepycat/je/txn/LockType;

    .line 251
    iput-object p1, p0, Lcom/sleepycat/je/txn/Locker;->waitingFor:Ljava/lang/Long;

    .line 252
    iput-object p2, p0, Lcom/sleepycat/je/txn/Locker;->waitingForType:Lcom/sleepycat/je/txn/LockType;

    .line 253
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/txn/Locker;->waiterThreadId:J

    .line 254
    return-void
.end method

.method public sharesLocksWith(Lcom/sleepycat/je/txn/Locker;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/txn/Locker;

    .line 704
    const/4 v0, 0x0

    return v0
.end method

.method final throwIfPreempted(Lcom/sleepycat/je/txn/Locker;)V
    .locals 2
    .param p1, "allowPreemptedLocker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/OperationFailureException;
        }
    .end annotation

    .line 355
    if-eq p0, p1, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/txn/Locker;->preemptedCause:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/Locker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1, p0, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->createLockPreemptedException(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Throwable;)Lcom/sleepycat/je/OperationFailureException;

    move-result-object v0

    throw v0

    .line 359
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 910
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "className":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/txn/Locker;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/txn/Locker;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_0

    .line 914
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 913
    return-object v1
.end method

.method public abstract unRegisterCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V
.end method
