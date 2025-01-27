.class public Lcom/sleepycat/je/rep/txn/MasterTxn;
.super Lcom/sleepycat/je/txn/Txn;
.source "MasterTxn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_FACTORY:Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;

.field private static factory:Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;


# instance fields
.field private commitVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private convertHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final envUUID:Ljava/util/UUID;

.field private volatile freeze:Z

.field private locked:Z

.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private needsArbiterAck:Z

.field private preLogCommitEndDeltaMs:I

.field private repWriteStartDeltaMs:I

.field private requiredAckCount:I

.field private final startMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    nop

    .line 110
    new-instance v0, Lcom/sleepycat/je/rep/txn/MasterTxn$1;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/txn/MasterTxn$1;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/txn/MasterTxn;->DEFAULT_FACTORY:Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;

    .line 139
    sput-object v0, Lcom/sleepycat/je/rep/txn/MasterTxn;->factory:Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p3, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/sleepycat/je/log/ReplicationContext;->MASTER:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/txn/Txn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/log/ReplicationContext;)V

    .line 66
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->commitVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->requiredAckCount:I

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->startMs:J

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->preLogCommitEndDeltaMs:I

    .line 91
    iput v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->repWriteStartDeltaMs:I

    .line 147
    iput-object p3, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 148
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envUUID:Ljava/util/UUID;

    .line 149
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->getLocalWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static create(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/rep/txn/MasterTxn;
    .locals 1
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p2, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 435
    sget-object v0, Lcom/sleepycat/je/rep/txn/MasterTxn;->factory:Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;

    invoke-interface {v0, p0, p1, p2}, Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;->create(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/rep/txn/MasterTxn;

    move-result-object v0

    return-object v0
.end method

.method public static createNullTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/rep/txn/MasterTxn;
    .locals 1
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p2, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 441
    sget-object v0, Lcom/sleepycat/je/rep/txn/MasterTxn;->factory:Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;

    invoke-interface {v0, p0, p1, p2}, Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;->createNullTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/rep/txn/MasterTxn;

    move-result-object v0

    return-object v0
.end method

.method public static setFactory(Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;)V
    .locals 1
    .param p0, "factory"    # Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;

    .line 451
    if-nez p0, :cond_0

    sget-object v0, Lcom/sleepycat/je/rep/txn/MasterTxn;->DEFAULT_FACTORY:Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    sput-object v0, Lcom/sleepycat/je/rep/txn/MasterTxn;->factory:Lcom/sleepycat/je/rep/txn/MasterTxn$MasterTxnFactory;

    .line 452
    return-void
.end method

.method private throwNotMaster(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;)V
    .locals 4
    .param p1, "nodeState"    # Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 280
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isReplica()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Lcom/sleepycat/je/rep/ReplicaWriteException;

    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v1, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 282
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStateChangeEvent()Lcom/sleepycat/je/rep/StateChangeEvent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/rep/ReplicaWriteException;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)V

    throw v0

    .line 284
    :cond_0
    new-instance v0, Lcom/sleepycat/je/rep/UnknownMasterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot execute write operations because this node is no longer a master"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/UnknownMasterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unfreeze()V
    .locals 1

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->freeze:Z

    .line 661
    return-void
.end method


# virtual methods
.method protected checkIfFrozen(Z)V
    .locals 1
    .param p1, "isCommit"    # Z

    .line 686
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->freeze:Z

    if-eqz v0, :cond_1

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->checkIfMaster(Lcom/sleepycat/je/txn/Locker;)V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    goto :goto_1

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    if-eqz p1, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->postLogCommitAbortHook()V

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->postLogAbortHook()V

    .line 695
    :goto_0
    throw v0

    .line 698
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_1
    :goto_1
    return-void
.end method

.method public convertToReplayTxnAndClose(Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/node/Replay;)Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .locals 13
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "replay"    # Lcom/sleepycat/je/rep/impl/node/Replay;

    .line 488
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->freeze:Z

    if-eqz v0, :cond_13

    .line 499
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transforming txn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 500
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from MasterTxn to ReplayTxn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "hookCount":I
    const/4 v1, 0x0

    .line 505
    .local v1, "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    const/4 v2, 0x1

    .line 507
    .local v2, "needToClose":Z
    const/4 v3, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 509
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->isClosed()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 510
    iget-object v4, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Txn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 511
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is closed, no tranform needed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 510
    invoke-static {p1, v4, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 513
    const/4 v2, 0x0

    .line 514
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 629
    iget-object v4, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertHook:Lcom/sleepycat/je/utilint/TestHook;

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "hookCount":I
    .local v6, "hookCount":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 631
    invoke-direct {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->unfreeze()V

    .line 633
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertHook:Lcom/sleepycat/je/utilint/TestHook;

    add-int/lit8 v4, v6, 0x1

    .end local v6    # "hookCount":I
    .local v4, "hookCount":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    if-eqz v2, :cond_0

    .line 643
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "About to close txn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 644
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getState()Lcom/sleepycat/je/Transaction$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 643
    invoke-static {p1, v0, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/rep/txn/MasterTxn;->close(Z)V

    .line 646
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Closed txn "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " state="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 647
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getState()Lcom/sleepycat/je/Transaction$State;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-static {p1, v0, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertHook:Lcom/sleepycat/je/utilint/TestHook;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "hookCount":I
    .local v3, "hookCount":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    return-object v5

    .line 649
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 633
    .end local v3    # "hookCount":I
    .restart local v4    # "hookCount":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 629
    .end local v4    # "hookCount":I
    .restart local v6    # "hookCount":I
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 522
    .end local v6    # "hookCount":I
    .restart local v0    # "hookCount":I
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getWriteLockIds()Ljava/util/Set;

    move-result-object v4

    .line 528
    .local v4, "lockedLSNs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_9

    .line 529
    iget-object v6, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Txn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " had no write locks, didn\'t create ReplayTxn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 532
    const/4 v2, 0x0

    .line 533
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 629
    iget-object v6, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertHook:Lcom/sleepycat/je/utilint/TestHook;

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "hookCount":I
    .local v7, "hookCount":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 631
    invoke-direct {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->unfreeze()V

    .line 633
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertHook:Lcom/sleepycat/je/utilint/TestHook;

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "hookCount":I
    .restart local v6    # "hookCount":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 642
    if-eqz v2, :cond_5

    .line 643
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "About to close txn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 644
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getState()Lcom/sleepycat/je/Transaction$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 643
    invoke-static {p1, v0, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/rep/txn/MasterTxn;->close(Z)V

    .line 646
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Closed txn "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " state="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 647
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getState()Lcom/sleepycat/je/Transaction$State;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-static {p1, v0, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 649
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertHook:Lcom/sleepycat/je/utilint/TestHook;

    add-int/lit8 v3, v6, 0x1

    .end local v6    # "hookCount":I
    .restart local v3    # "hookCount":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 533
    return-object v5

    .line 649
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 633
    .end local v3    # "hookCount":I
    .restart local v6    # "hookCount":I
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 629
    .end local v6    # "hookCount":I
    .restart local v7    # "hookCount":I
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 549
    .end local v7    # "hookCount":I
    .restart local v0    # "hookCount":I
    :cond_9
    :try_start_3
    new-instance v6, Lcom/sleepycat/je/rep/UnknownMasterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 550
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is no longer a master"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sleepycat/je/rep/UnknownMasterException;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0, v6}, Lcom/sleepycat/je/rep/txn/MasterTxn;->setOnlyAbortable(Lcom/sleepycat/je/OperationFailureException;)V

    .line 552
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7, v3}, Lcom/sleepycat/je/rep/impl/node/Replay;->getReplayTxn(JZ)Lcom/sleepycat/je/rep/txn/ReplayTxn;

    move-result-object v6

    move-object v1, v6

    .line 559
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 560
    .local v6, "sortedLsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 561
    iget-object v7, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Txn "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 562
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 563
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " locks to transform"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 561
    invoke-static {p1, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 571
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 573
    .local v8, "lsn":Ljava/lang/Long;
    iget-object v9, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Txn "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 574
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is transferring lock "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 573
    invoke-static {p1, v9, v10}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v1, v8}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->stealLockFromMasterTxn(Ljava/lang/Long;)V

    .line 592
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getWriteLockInfo(J)Lcom/sleepycat/je/txn/WriteLockInfo;

    move-result-object v9

    .line 593
    .local v9, "replayWLI":Lcom/sleepycat/je/txn/WriteLockInfo;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getWriteLockInfo(J)Lcom/sleepycat/je/txn/WriteLockInfo;

    move-result-object v10

    .line 594
    .local v10, "masterWLI":Lcom/sleepycat/je/txn/WriteLockInfo;
    invoke-virtual {v9, v10}, Lcom/sleepycat/je/txn/WriteLockInfo;->copyAllInfo(Lcom/sleepycat/je/txn/WriteLockInfo;)V

    .line 595
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {p0, v11, v12}, Lcom/sleepycat/je/rep/txn/MasterTxn;->removeLock(J)V

    .line 596
    .end local v8    # "lsn":Ljava/lang/Long;
    .end local v9    # "replayWLI":Lcom/sleepycat/je/txn/WriteLockInfo;
    .end local v10    # "masterWLI":Lcom/sleepycat/je/txn/WriteLockInfo;
    goto :goto_0

    .line 606
    :cond_a
    invoke-virtual {v1, p0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->copyDatabasesForConversion(Lcom/sleepycat/je/txn/Txn;)V

    .line 613
    iput-object v5, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->dbCleanupSet:Ljava/util/Set;

    .line 621
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->lastLoggedLsn:J

    .line 622
    iput-wide v7, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->firstLoggedLsn:J

    .line 625
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->clearReadLocks()I

    .line 626
    nop

    .end local v4    # "lockedLSNs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v6    # "sortedLsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 629
    iget-object v4, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertHook:Lcom/sleepycat/je/utilint/TestHook;

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "hookCount":I
    .local v5, "hookCount":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 631
    invoke-direct {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->unfreeze()V

    .line 633
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertHook:Lcom/sleepycat/je/utilint/TestHook;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "hookCount":I
    .local v4, "hookCount":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 642
    if-eqz v2, :cond_b

    .line 643
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "About to close txn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 644
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getState()Lcom/sleepycat/je/Transaction$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 643
    invoke-static {p1, v0, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/rep/txn/MasterTxn;->close(Z)V

    .line 646
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closed txn "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 647
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getState()Lcom/sleepycat/je/Transaction$State;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-static {p1, v0, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 649
    :cond_b
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertHook:Lcom/sleepycat/je/utilint/TestHook;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "hookCount":I
    .restart local v3    # "hookCount":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 652
    return-object v1

    .line 649
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 633
    .end local v3    # "hookCount":I
    .restart local v4    # "hookCount":I
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 629
    .end local v4    # "hookCount":I
    .restart local v5    # "hookCount":I
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 626
    .end local v5    # "hookCount":I
    .restart local v0    # "hookCount":I
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "hookCount":I
    .end local v1    # "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v2    # "needToClose":Z
    .end local p1    # "logger":Ljava/util/logging/Logger;
    .end local p2    # "replay":Lcom/sleepycat/je/rep/impl/node/Replay;
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 629
    .restart local v0    # "hookCount":I
    .restart local v1    # "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v2    # "needToClose":Z
    .restart local p1    # "logger":Ljava/util/logging/Logger;
    .restart local p2    # "replay":Lcom/sleepycat/je/rep/impl/node/Replay;
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertHook:Lcom/sleepycat/je/utilint/TestHook;

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "hookCount":I
    .local v6, "hookCount":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 631
    invoke-direct {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->unfreeze()V

    .line 633
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertHook:Lcom/sleepycat/je/utilint/TestHook;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "hookCount":I
    .restart local v5    # "hookCount":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 642
    if-eqz v2, :cond_f

    .line 643
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "About to close txn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 644
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getState()Lcom/sleepycat/je/Transaction$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 643
    invoke-static {p1, v0, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/rep/txn/MasterTxn;->close(Z)V

    .line 646
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Closed txn "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " state="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 647
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getState()Lcom/sleepycat/je/Transaction$State;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-static {p1, v0, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 649
    :cond_f
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertHook:Lcom/sleepycat/je/utilint/TestHook;

    add-int/lit8 v3, v5, 0x1

    .end local v5    # "hookCount":I
    .restart local v3    # "hookCount":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    throw v4

    .line 633
    .end local v3    # "hookCount":I
    .restart local v5    # "hookCount":I
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 629
    .end local v5    # "hookCount":I
    .restart local v6    # "hookCount":I
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 489
    .end local v1    # "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v2    # "needToClose":Z
    .end local v6    # "hookCount":I
    :cond_13
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Txn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 491
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be frozen when converting to replay txn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public freeze()V
    .locals 1

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->freeze:Z

    .line 657
    return-void
.end method

.method protected generateId(Lcom/sleepycat/je/txn/TxnManager;J)J
    .locals 2
    .param p1, "txnManager"    # Lcom/sleepycat/je/txn/TxnManager;
    .param p2, "ignore"    # J

    .line 181
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/TxnManager;->getNextReplicatedTxnId()J

    move-result-wide v0

    return-wide v0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getArbiterAck()Z
    .locals 1

    .line 715
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->needsArbiterAck:Z

    return v0
.end method

.method public getCommitToken()Lcom/sleepycat/je/CommitToken;
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->commitVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    new-instance v0, Lcom/sleepycat/je/CommitToken;

    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envUUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->commitVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/CommitToken;-><init>(Ljava/util/UUID;J)V

    return-object v0
.end method

.method public getCommitVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->commitVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method protected getDTVLSN()J
    .locals 2

    .line 378
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected getReplicatorNodeId()I
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    return v0
.end method

.method public getRequiredAckCount()I
    .locals 1

    .line 359
    iget v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->requiredAckCount:I

    return v0
.end method

.method public getStartMs()J
    .locals 2

    .line 382
    iget-wide v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->startMs:J

    return-wide v0
.end method

.method public isLocalWrite()Z
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isMasterTxn()Z
    .locals 1

    .line 707
    const/4 v0, 0x1

    return v0
.end method

.method public lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;
    .locals 2
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

    .line 269
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    .line 270
    .local v0, "nodeState":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isMaster()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    nop

    .line 272
    invoke-super/range {p0 .. p6}, Lcom/sleepycat/je/txn/Txn;->lockInternal(JLcom/sleepycat/je/txn/LockType;ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v1

    .line 271
    return-object v1

    .line 275
    :cond_0
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->throwNotMaster(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;)V

    .line 276
    const/4 v1, 0x0

    return-object v1
.end method

.method public lockOnce()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->locked:Z

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x0

    return v0

    .line 341
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->locked:Z

    .line 342
    return v0
.end method

.method public messageTransferMs()J
    .locals 2

    .line 397
    iget v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->repWriteStartDeltaMs:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->preLogCommitEndDeltaMs:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method protected postLogAbortHook()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 252
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->postLogAbortHook(Lcom/sleepycat/je/rep/txn/MasterTxn;)V

    .line 253
    return-void
.end method

.method protected postLogCommitAbortHook()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 246
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->postLogCommitAbortHook(Lcom/sleepycat/je/rep/txn/MasterTxn;)V

    .line 247
    return-void
.end method

.method protected postLogCommitHook(Lcom/sleepycat/je/log/LogItem;)V
    .locals 3
    .param p1, "commitItem"    # Lcom/sleepycat/je/log/LogItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 225
    iget-object v0, p1, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->commitVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 228
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    invoke-virtual {v0, p0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->postLogCommitHook(Lcom/sleepycat/je/rep/txn/MasterTxn;Lcom/sleepycat/je/log/LogItem;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v0    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    nop

    .line 232
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected preLogAbortHook()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 239
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->preLogAbortHook(Lcom/sleepycat/je/rep/txn/MasterTxn;)V

    .line 240
    return-void
.end method

.method protected preLogCommitHook()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 206
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getCommitDurability()Lcom/sleepycat/je/Durability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/Durability;->getReplicaAck()Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    move-result-object v1

    .line 207
    .local v1, "ackPolicy":Lcom/sleepycat/je/Durability$ReplicaAckPolicy;
    nop

    .line 208
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDurabilityQuorum()Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    move-result-object v2

    .line 209
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->getCurrentRequiredAckCount(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->requiredAckCount:I

    .line 217
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->preLogCommitHook(Lcom/sleepycat/je/rep/txn/MasterTxn;)V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->startMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->preLogCommitEndDeltaMs:I

    .line 219
    return-void
.end method

.method public declared-synchronized preLogWithoutLock(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 2
    .param p1, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    .line 296
    .local v0, "nodeState":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isMaster()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-super {p0, p1}, Lcom/sleepycat/je/txn/Txn;->preLogWithoutLock(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 301
    .end local p0    # "this":Lcom/sleepycat/je/rep/txn/MasterTxn;
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->throwNotMaster(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    .line 294
    .end local v0    # "nodeState":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .end local p1    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected propagatePostCommitException(Lcom/sleepycat/je/DatabaseException;)Z
    .locals 1
    .param p1, "postCommitException"    # Lcom/sleepycat/je/DatabaseException;

    .line 410
    instance-of v0, p1, Lcom/sleepycat/je/rep/InsufficientAcksException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 412
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/txn/Txn;->propagatePostCommitException(Lcom/sleepycat/je/DatabaseException;)Z

    move-result v0

    .line 410
    :goto_0
    return v0
.end method

.method public resetRequiredAckCount()V
    .locals 1

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->requiredAckCount:I

    .line 364
    return-void
.end method

.method public setArbiterAck(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 711
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->needsArbiterAck:Z

    .line 712
    return-void
.end method

.method public setConvertHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 702
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->convertHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 703
    return-void
.end method

.method public stampRepWriteTime()V
    .locals 4

    .line 386
    nop

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->startMs:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->repWriteStartDeltaMs:I

    .line 388
    return-void
.end method

.method protected txnBeginHook(Lcom/sleepycat/je/TransactionConfig;)V
    .locals 4
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 195
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->txnBeginHook(Lcom/sleepycat/je/rep/txn/MasterTxn;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    nop

    .line 199
    return-void

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v3, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public unlockOnce()Z
    .locals 2

    .line 351
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->locked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 352
    iput-boolean v1, p0, Lcom/sleepycat/je/rep/txn/MasterTxn;->locked:Z

    .line 353
    const/4 v0, 0x1

    return v0

    .line 355
    :cond_0
    return v1
.end method
