.class public Lcom/sleepycat/je/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/Transaction$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private commitToken:Lcom/sleepycat/je/CommitToken;

.field private final env:Lcom/sleepycat/je/Environment;

.field private finalState:Lcom/sleepycat/je/Transaction$State;

.field private final id:J

.field private name:Ljava/lang/String;

.field private txn:Lcom/sleepycat/je/txn/Txn;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 55
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Txn;)V
    .locals 2
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "txn"    # Lcom/sleepycat/je/txn/Txn;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/Transaction;->commitToken:Lcom/sleepycat/je/CommitToken;

    .line 142
    iput-object v0, p0, Lcom/sleepycat/je/Transaction;->finalState:Lcom/sleepycat/je/Transaction$State;

    .line 156
    iput-object p1, p0, Lcom/sleepycat/je/Transaction;->env:Lcom/sleepycat/je/Environment;

    .line 157
    iput-object p2, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    .line 158
    invoke-virtual {p2, p0}, Lcom/sleepycat/je/txn/Txn;->setTransaction(Lcom/sleepycat/je/Transaction;)V

    .line 164
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/Transaction;->id:J

    .line 165
    return-void
.end method

.method private checkEnv()V
    .locals 3

    .line 893
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 894
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V

    .line 900
    return-void

    .line 895
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The environment has been closed. This transaction is no longer usable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private doCommit(Lcom/sleepycat/je/Durability;Z)V
    .locals 2
    .param p1, "durability"    # Lcom/sleepycat/je/Durability;
    .param p2, "explicitSync"    # Z

    .line 603
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/Transaction;->checkEnv()V

    .line 604
    invoke-virtual {p0}, Lcom/sleepycat/je/Transaction;->checkOpen()V

    .line 605
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/Environment;->removeReferringHandle(Lcom/sleepycat/je/Transaction;)V

    .line 606
    if-eqz p2, :cond_1

    .line 608
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getExplicitDurabilityConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mixed use of deprecated durability API for the transaction commit with the new durability API for TransactionConfig or MutableEnvironmentConfig"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "durability":Lcom/sleepycat/je/Durability;
    .end local p2    # "explicitSync":Z
    throw v0

    .line 614
    .restart local p1    # "durability":Lcom/sleepycat/je/Durability;
    .restart local p2    # "explicitSync":Z
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getExplicitSyncConfigured()Z

    move-result v0

    if-nez v0, :cond_2

    .line 621
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/Txn;->commit(Lcom/sleepycat/je/Durability;)J

    .line 622
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getCommitToken()Lcom/sleepycat/je/CommitToken;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Transaction;->commitToken:Lcom/sleepycat/je/CommitToken;

    .line 624
    invoke-direct {p0}, Lcom/sleepycat/je/Transaction;->setTxnNull()V

    .line 628
    nop

    .line 629
    return-void

    .line 616
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mixed use of new durability API for the transaction commit with deprecated durability API for TransactionConfig or MutableEnvironmentConfig"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "durability":Lcom/sleepycat/je/Durability;
    .end local p2    # "explicitSync":Z
    throw v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .restart local p1    # "durability":Lcom/sleepycat/je/Durability;
    .restart local p2    # "explicitSync":Z
    :catch_0
    move-exception v0

    .line 626
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Transaction;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 627
    throw v0
.end method

.method private setTxnNull()V
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getState()Lcom/sleepycat/je/Transaction$State;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Transaction;->finalState:Lcom/sleepycat/je/Transaction$State;

    .line 935
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    .line 936
    return-void
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 209
    monitor-exit p0

    return-void

    .line 217
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sleepycat/je/Transaction;->checkEnv()V

    .line 219
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/Environment;->removeReferringHandle(Lcom/sleepycat/je/Transaction;)V

    .line 220
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 223
    invoke-direct {p0}, Lcom/sleepycat/je/Transaction;->setTxnNull()V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    nop

    .line 228
    monitor-exit p0

    return-void

    .line 207
    .end local p0    # "this":Lcom/sleepycat/je/Transaction;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "E":Ljava/lang/Error;
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/Transaction;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 226
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    .end local v0    # "E":Ljava/lang/Error;
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method checkOpen()V
    .locals 4

    .line 906
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    return-void

    .line 907
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/Transaction;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 334
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/Transaction;->checkEnv()V

    .line 335
    invoke-virtual {p0}, Lcom/sleepycat/je/Transaction;->checkOpen()V

    .line 336
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/Environment;->removeReferringHandle(Lcom/sleepycat/je/Transaction;)V

    .line 337
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->commit()J

    .line 338
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getCommitToken()Lcom/sleepycat/je/CommitToken;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Transaction;->commitToken:Lcom/sleepycat/je/CommitToken;

    .line 340
    invoke-direct {p0}, Lcom/sleepycat/je/Transaction;->setTxnNull()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    nop

    .line 345
    monitor-exit p0

    return-void

    .line 333
    .end local p0    # "this":Lcom/sleepycat/je/Transaction;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "E":Ljava/lang/Error;
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/Transaction;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 343
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    .end local v0    # "E":Ljava/lang/Error;
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commit(Lcom/sleepycat/je/Durability;)V
    .locals 1
    .param p1, "durability"    # Lcom/sleepycat/je/Durability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 401
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/Transaction;->doCommit(Lcom/sleepycat/je/Durability;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    .line 400
    .end local p0    # "this":Lcom/sleepycat/je/Transaction;
    .end local p1    # "durability":Lcom/sleepycat/je/Durability;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized commitNoSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 519
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/Durability;->COMMIT_NO_SYNC:Lcom/sleepycat/je/Durability;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/Transaction;->doCommit(Lcom/sleepycat/je/Durability;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    .line 518
    .end local p0    # "this":Lcom/sleepycat/je/Transaction;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commitSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 460
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/Durability;->COMMIT_SYNC:Lcom/sleepycat/je/Durability;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/Transaction;->doCommit(Lcom/sleepycat/je/Durability;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 459
    .end local p0    # "this":Lcom/sleepycat/je/Transaction;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commitWriteNoSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 580
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/Durability;->COMMIT_WRITE_NO_SYNC:Lcom/sleepycat/je/Durability;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/Transaction;->doCommit(Lcom/sleepycat/je/Durability;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    monitor-exit p0

    return-void

    .line 579
    .end local p0    # "this":Lcom/sleepycat/je/Transaction;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 828
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 829
    return v0

    .line 832
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/je/Transaction;

    if-nez v1, :cond_1

    .line 833
    return v0

    .line 836
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/Transaction;

    iget-wide v1, v1, Lcom/sleepycat/je/Transaction;->id:J

    iget-wide v3, p0, Lcom/sleepycat/je/Transaction;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 837
    const/4 v0, 0x1

    return v0

    .line 840
    :cond_2
    return v0
.end method

.method public getCommitToken()Lcom/sleepycat/je/CommitToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->commitToken:Lcom/sleepycat/je/CommitToken;

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is still in progress and a commit token is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getEnvironment()Lcom/sleepycat/je/Environment;
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->env:Lcom/sleepycat/je/Environment;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 236
    iget-wide v0, p0, Lcom/sleepycat/je/Transaction;->id:J

    return-wide v0
.end method

.method public getLockTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentFailureException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 740
    invoke-direct {p0}, Lcom/sleepycat/je/Transaction;->checkEnv()V

    .line 741
    invoke-virtual {p0}, Lcom/sleepycat/je/Transaction;->checkOpen()V

    .line 742
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getLockTimeout()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0, p1}, Lcom/sleepycat/je/utilint/PropUtil;->millisToDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method getLocker()Lcom/sleepycat/je/txn/Locker;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 866
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    if-eqz v0, :cond_0

    .line 871
    return-object v0

    .line 867
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/Transaction;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been closed and is no longer usable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrepared()Z
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getPrepared()Z

    move-result v0

    return v0
.end method

.method public getState()Lcom/sleepycat/je/Transaction$State;
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    if-eqz v0, :cond_1

    .line 945
    iget-object v1, p0, Lcom/sleepycat/je/Transaction;->finalState:Lcom/sleepycat/je/Transaction$State;

    if-nez v1, :cond_0

    .line 946
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getState()Lcom/sleepycat/je/Transaction$State;

    move-result-object v0

    return-object v0

    .line 945
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->finalState:Lcom/sleepycat/je/Transaction$State;

    if-eqz v0, :cond_2

    .line 949
    return-object v0

    .line 948
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getTxn()Lcom/sleepycat/je/txn/Txn;
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    return-object v0
.end method

.method public getTxnTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentFailureException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 658
    invoke-direct {p0}, Lcom/sleepycat/je/Transaction;->checkEnv()V

    .line 659
    invoke-virtual {p0}, Lcom/sleepycat/je/Transaction;->checkOpen()V

    .line 660
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getTxnTimeout()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0, p1}, Lcom/sleepycat/je/utilint/PropUtil;->millisToDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 819
    iget-wide v0, p0, Lcom/sleepycat/je/Transaction;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 924
    :goto_0
    return v0
.end method

.method public setLockTimeout(J)V
    .locals 1
    .param p1, "timeOut"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 792
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/Transaction;->setLockTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 793
    return-void
.end method

.method public setLockTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "timeOut"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 775
    invoke-direct {p0}, Lcom/sleepycat/je/Transaction;->checkEnv()V

    .line 776
    invoke-virtual {p0}, Lcom/sleepycat/je/Transaction;->checkOpen()V

    .line 777
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-static {p1, p2, p3}, Lcom/sleepycat/je/utilint/PropUtil;->durationToMillis(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/txn/Txn;->setLockTimeout(J)V

    .line 778
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 801
    iput-object p1, p0, Lcom/sleepycat/je/Transaction;->name:Ljava/lang/String;

    .line 802
    return-void
.end method

.method public setTxnTimeout(J)V
    .locals 1
    .param p1, "timeOut"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 713
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/Transaction;->setTxnTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 714
    return-void
.end method

.method public setTxnTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "timeOut"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 696
    invoke-direct {p0}, Lcom/sleepycat/je/Transaction;->checkEnv()V

    .line 697
    invoke-virtual {p0}, Lcom/sleepycat/je/Transaction;->checkOpen()V

    .line 698
    iget-object v0, p0, Lcom/sleepycat/je/Transaction;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-static {p1, p2, p3}, Lcom/sleepycat/je/utilint/PropUtil;->durationToMillis(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/txn/Txn;->setTxnTimeout(J)V

    .line 699
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<Transaction id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    iget-wide v1, p0, Lcom/sleepycat/je/Transaction;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    iget-object v1, p0, Lcom/sleepycat/je/Transaction;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 849
    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    iget-object v1, p0, Lcom/sleepycat/je/Transaction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
