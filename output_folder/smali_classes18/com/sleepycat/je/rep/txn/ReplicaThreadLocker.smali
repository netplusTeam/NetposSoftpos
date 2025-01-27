.class public Lcom/sleepycat/je/rep/txn/ReplicaThreadLocker;
.super Lcom/sleepycat/je/txn/ThreadLocker;
.source "ReplicaThreadLocker.java"


# instance fields
.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 0
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 39
    invoke-direct {p0, p1}, Lcom/sleepycat/je/txn/ThreadLocker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 40
    iput-object p1, p0, Lcom/sleepycat/je/rep/txn/ReplicaThreadLocker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 41
    return-void
.end method


# virtual methods
.method public disallowReplicaWrite()V
    .locals 2

    .line 88
    new-instance v0, Lcom/sleepycat/je/rep/ReplicaWriteException;

    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/ReplicaThreadLocker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStateChangeEvent()Lcom/sleepycat/je/rep/StateChangeEvent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/rep/ReplicaWriteException;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)V

    throw v0
.end method

.method public lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;
    .locals 1
    .param p1, "lsn"    # J
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "noWait"    # Z
    .param p5, "jumpAheadOfWaiters"    # Z
    .param p6, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 60
    invoke-virtual {p3}, Lcom/sleepycat/je/txn/LockType;->isWriteLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->allowReplicaWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/ReplicaThreadLocker;->disallowReplicaWrite()V

    .line 63
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/sleepycat/je/txn/ThreadLocker;->lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    return-object v0
.end method

.method public newEmptyThreadLockerClone()Lcom/sleepycat/je/txn/ThreadLocker;
    .locals 2

    .line 45
    new-instance v0, Lcom/sleepycat/je/rep/txn/ReplicaThreadLocker;

    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/ReplicaThreadLocker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/txn/ReplicaThreadLocker;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    return-object v0
.end method

.method public openCursorHook(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 2
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/ReplicaConsistencyException;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplicaThreadLocker;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 103
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDefaultConsistencyPolicy()Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;->checkConsistency(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V

    .line 104
    return-void
.end method

.method public preLogWithoutLock(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 76
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->allowReplicaWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/ReplicaThreadLocker;->disallowReplicaWrite()V

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/txn/ThreadLocker;->preLogWithoutLock(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 80
    return-void
.end method
