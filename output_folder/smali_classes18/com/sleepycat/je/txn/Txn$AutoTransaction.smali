.class Lcom/sleepycat/je/txn/Txn$AutoTransaction;
.super Lcom/sleepycat/je/Transaction;
.source "Txn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/txn/Txn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoTransaction"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/txn/Txn;)V
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/txn/Txn;

    .line 2352
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Txn;->getEnvironmentImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInternalEnvHandle()Lcom/sleepycat/je/Environment;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/Transaction;-><init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Txn;)V

    .line 2353
    return-void
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 2390
    :try_start_0
    const-string v0, "abort() not permitted on an auto transaction"

    .line 2391
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2392
    monitor-exit p0

    return-void

    .line 2389
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn$AutoTransaction;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 2359
    :try_start_0
    const-string v0, "commit() not permitted on an auto transaction"

    .line 2360
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2361
    monitor-exit p0

    return-void

    .line 2358
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn$AutoTransaction;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commit(Lcom/sleepycat/je/Durability;)V
    .locals 1
    .param p1, "durability"    # Lcom/sleepycat/je/Durability;

    monitor-enter p0

    .line 2366
    :try_start_0
    const-string v0, "commit() not permitted on an auto transaction"

    .line 2367
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2368
    monitor-exit p0

    return-void

    .line 2365
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn$AutoTransaction;
    .end local p1    # "durability":Lcom/sleepycat/je/Durability;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized commitNoSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 2374
    :try_start_0
    const-string v0, "commit() not permitted on an auto transaction"

    .line 2375
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2376
    monitor-exit p0

    return-void

    .line 2373
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn$AutoTransaction;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commitWriteNoSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 2382
    :try_start_0
    const-string v0, "commit() not permitted on an auto transaction"

    .line 2383
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2384
    monitor-exit p0

    return-void

    .line 2381
    .end local p0    # "this":Lcom/sleepycat/je/txn/Txn$AutoTransaction;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
