.class public Lcom/sleepycat/je/rep/txn/ReadonlyTxn;
.super Lcom/sleepycat/je/txn/Txn;
.source "ReadonlyTxn.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final localWrite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/txn/Txn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/log/ReplicationContext;)V

    .line 59
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->getLocalWrite()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;->localWrite:Z

    .line 60
    return-void
.end method

.method static checkConsistency(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V
    .locals 2
    .param p0, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p1, "policy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 133
    sget-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->DETACHED:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->MASTER:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 134
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    .line 140
    :try_start_0
    invoke-interface {p1, p0}, Lcom/sleepycat/je/ReplicaConsistencyPolicy;->ensureConsistency(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/rep/MasterStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    nop

    .line 150
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lcom/sleepycat/je/rep/MasterStateException;
    return-void

    .line 141
    .end local v0    # "e":Lcom/sleepycat/je/rep/MasterStateException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1

    .line 138
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing default consistency policy"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 136
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public disallowReplicaWrite()V
    .locals 2

    .line 113
    new-instance v0, Lcom/sleepycat/je/rep/ReplicaWriteException;

    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v1, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 114
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStateChangeEvent()Lcom/sleepycat/je/rep/StateChangeEvent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/rep/ReplicaWriteException;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)V

    throw v0
.end method

.method public isLocalWrite()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;->localWrite:Z

    return v0
.end method

.method public lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;
    .locals 1
    .param p1, "lsn"    # J
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "noWait"    # Z
    .param p5, "jumpAheadOfWaiters"    # Z
    .param p6, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/LockNotAvailableException;,
            Lcom/sleepycat/je/LockConflictException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 85
    invoke-virtual {p3}, Lcom/sleepycat/je/txn/LockType;->isWriteLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->allowReplicaWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;->disallowReplicaWrite()V

    .line 88
    :cond_0
    nop

    .line 89
    invoke-super/range {p0 .. p6}, Lcom/sleepycat/je/txn/Txn;->lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method public preLogWithoutLock(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 101
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->allowReplicaWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;->disallowReplicaWrite()V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/txn/Txn;->preLogWithoutLock(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 105
    return-void
.end method

.method protected txnBeginHook(Lcom/sleepycat/je/TransactionConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/ReplicaConsistencyException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getConsistencyPolicy()Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;->checkConsistency(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V

    .line 126
    return-void
.end method
