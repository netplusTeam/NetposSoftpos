.class public Lcom/sleepycat/je/txn/ThreadLocker;
.super Lcom/sleepycat/je/txn/BasicLocker;
.source "ThreadLocker.java"


# instance fields
.field private allowMultithreadedAccess:Z


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 41
    invoke-direct {p0, p1}, Lcom/sleepycat/je/txn/BasicLocker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 42
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThreadLocker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/txn/LockManager;->registerThreadLocker(Lcom/sleepycat/je/txn/ThreadLocker;)V

    .line 43
    return-void
.end method

.method public static createThreadLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/ThreadLocker;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "replicated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->createRepThreadLocker()Lcom/sleepycat/je/txn/ThreadLocker;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sleepycat/je/txn/ThreadLocker;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/txn/ThreadLocker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 49
    :goto_0
    return-object v0
.end method


# virtual methods
.method public checkPreempted(Lcom/sleepycat/je/txn/Locker;)V
    .locals 2
    .param p1, "allowPreemptedLocker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/OperationFailureException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThreadLocker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    iget-object v1, p0, Lcom/sleepycat/je/txn/ThreadLocker;->thread:Ljava/lang/Thread;

    .line 68
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/LockManager;->getThreadLockers(Ljava/lang/Thread;)Ljava/util/Iterator;

    move-result-object v0

    .line 69
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/ThreadLocker;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/ThreadLocker;

    .line 71
    .local v1, "locker":Lcom/sleepycat/je/txn/ThreadLocker;
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/txn/ThreadLocker;->throwIfPreempted(Lcom/sleepycat/je/txn/Locker;)V

    .line 72
    .end local v1    # "locker":Lcom/sleepycat/je/txn/ThreadLocker;
    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method protected declared-synchronized checkState(Z)V
    .locals 3
    .param p1, "ignoreCalledByAbort"    # Z

    monitor-enter p0

    .line 101
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/ThreadLocker;->allowMultithreadedAccess:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/txn/ThreadLocker;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-transactional Cursors may not be used in multiple threads; Cursor was created in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/txn/ThreadLocker;->thread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but used in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local p0    # "this":Lcom/sleepycat/je/txn/ThreadLocker;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    .end local p1    # "ignoreCalledByAbort":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method close()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/sleepycat/je/txn/BasicLocker;->close()V

    .line 57
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThreadLocker;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/txn/LockManager;->unregisterThreadLocker(Lcom/sleepycat/je/txn/ThreadLocker;)V

    .line 58
    return-void
.end method

.method public declared-synchronized lockAfterLsnChange(JJLcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 2
    .param p1, "oldLsn"    # J
    .param p3, "newLsn"    # J
    .param p5, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    monitor-enter p0

    .line 84
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/ThreadLocker;->allowMultithreadedAccess:Z

    .line 85
    .local v0, "oldVal":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/txn/ThreadLocker;->allowMultithreadedAccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :try_start_1
    invoke-super/range {p0 .. p5}, Lcom/sleepycat/je/txn/BasicLocker;->lockAfterLsnChange(JJLcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    iput-boolean v0, p0, Lcom/sleepycat/je/txn/ThreadLocker;->allowMultithreadedAccess:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    nop

    .line 91
    monitor-exit p0

    return-void

    .line 89
    .end local p0    # "this":Lcom/sleepycat/je/txn/ThreadLocker;
    :catchall_0
    move-exception v1

    :try_start_3
    iput-boolean v0, p0, Lcom/sleepycat/je/txn/ThreadLocker;->allowMultithreadedAccess:Z

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    .end local v0    # "oldVal":Z
    .end local p1    # "oldLsn":J
    .end local p3    # "newLsn":J
    .end local p5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public newEmptyThreadLockerClone()Lcom/sleepycat/je/txn/ThreadLocker;
    .locals 2

    .line 122
    new-instance v0, Lcom/sleepycat/je/txn/ThreadLocker;

    iget-object v1, p0, Lcom/sleepycat/je/txn/ThreadLocker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/txn/ThreadLocker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    return-object v0
.end method

.method public newNonTxnLocker()Lcom/sleepycat/je/txn/Locker;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/ThreadLocker;->checkState(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/ThreadLocker;->newEmptyThreadLockerClone()Lcom/sleepycat/je/txn/ThreadLocker;

    move-result-object v0

    return-object v0
.end method

.method public sharesLocksWith(Lcom/sleepycat/je/txn/Locker;)Z
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/txn/Locker;

    .line 133
    invoke-super {p0, p1}, Lcom/sleepycat/je/txn/BasicLocker;->sharesLocksWith(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 134
    return v1

    .line 135
    :cond_0
    instance-of v0, p1, Lcom/sleepycat/je/txn/ThreadLocker;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/sleepycat/je/txn/ThreadLocker;->thread:Ljava/lang/Thread;

    iget-object v3, p1, Lcom/sleepycat/je/txn/Locker;->thread:Ljava/lang/Thread;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 138
    :cond_2
    return v2
.end method
