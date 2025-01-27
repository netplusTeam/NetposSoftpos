.class public Lcom/sleepycat/je/rep/txn/ReplayTxn;
.super Lcom/sleepycat/je/txn/Txn;
.source "ReplayTxn.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<",
            "Lcom/sleepycat/je/rep/txn/ReplayTxn;",
            ">;"
        }
    .end annotation
.end field

.field private dtvlsn:J

.field private endTime:J

.field private lastApplied:Lcom/sleepycat/je/utilint/VLSN;

.field private final logger:Ljava/util/logging/Logger;

.field private masterNodeId:I

.field private repGroupDbChange:Z

.field private final startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;JLcom/sleepycat/je/rep/utilint/SimpleTxnMap;Ljava/util/logging/Logger;)V
    .locals 6
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p3, "txnId"    # J
    .param p6, "logger"    # Ljava/util/logging/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            "Lcom/sleepycat/je/TransactionConfig;",
            "J",
            "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<",
            "Lcom/sleepycat/je/rep/txn/ReplayTxn;",
            ">;",
            "Ljava/util/logging/Logger;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 100
    .local p5, "activeTxns":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/txn/ReplayTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;JLjava/util/logging/Logger;)V

    .line 101
    invoke-virtual {p0, p5}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->registerWithActiveTxns(Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;JLjava/util/logging/Logger;)V
    .locals 6
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p3, "txnId"    # J
    .param p5, "logger"    # Ljava/util/logging/Logger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 114
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/txn/Txn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/log/ReplicationContext;J)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->startTime:J

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->endTime:J

    .line 66
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->lastApplied:Lcom/sleepycat/je/utilint/VLSN;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->repGroupDbChange:Z

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->dtvlsn:J

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->setImportunate(Z)V

    .line 120
    iput-object p5, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->logger:Ljava/util/logging/Logger;

    .line 121
    invoke-virtual {p2}, Lcom/sleepycat/je/TransactionConfig;->getLocalWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private countObsoleteInexact(JLcom/sleepycat/je/txn/UndoReader;)V
    .locals 7
    .param p1, "undoLsn"    # J
    .param p3, "undo"    # Lcom/sleepycat/je/txn/UndoReader;

    .line 594
    iget-object v0, p3, Lcom/sleepycat/je/txn/UndoReader;->logEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    iget-object v1, p3, Lcom/sleepycat/je/txn/UndoReader;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v1

    const/4 v4, 0x0

    iget v5, p3, Lcom/sleepycat/je/txn/UndoReader;->logEntrySize:I

    const/4 v6, 0x0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/log/LogManager;->countObsoleteNode(JLcom/sleepycat/je/log/LogEntryType;IZ)V

    .line 602
    return-void
.end method

.method private logFinest(JLcom/sleepycat/je/txn/UndoReader;Lcom/sleepycat/je/txn/TxnChain$RevertInfo;)V
    .locals 4
    .param p1, "lsn"    # J
    .param p3, "undo"    # Lcom/sleepycat/je/txn/UndoReader;
    .param p4, "revertTo"    # Lcom/sleepycat/je/txn/TxnChain$RevertInfo;

    .line 644
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "undoLsn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 646
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " revertInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 645
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 649
    :cond_0
    return-void
.end method

.method private undoWrites(JLjava/util/List;)V
    .locals 12
    .param p1, "matchpointLsn"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 503
    .local p3, "rollbackLsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Lcom/sleepycat/je/tree/TreeLocation;

    invoke-direct {v2}, Lcom/sleepycat/je/tree/TreeLocation;-><init>()V

    .line 504
    .local v2, "location":Lcom/sleepycat/je/tree/TreeLocation;
    iget-wide v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->lastLoggedLsn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 506
    .local v0, "undoLsn":Ljava/lang/Long;
    new-instance v1, Lcom/sleepycat/je/txn/TxnChain;

    .line 507
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->id:J

    iget-object v10, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->undoDatabases:Ljava/util/Map;

    iget-object v11, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-object v3, v1

    move-wide v8, p1

    invoke-direct/range {v3 .. v11}, Lcom/sleepycat/je/txn/TxnChain;-><init>(JJJLjava/util/Map;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    move-object v8, v1

    move-object v9, v0

    .line 510
    .end local v0    # "undoLsn":Ljava/lang/Long;
    .local v8, "chain":Lcom/sleepycat/je/txn/TxnChain;
    .local v9, "undoLsn":Ljava/lang/Long;
    :goto_0
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-lez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 514
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->undoDatabases:Ljava/util/Map;

    invoke-static {v0, v3, v4, v1}, Lcom/sleepycat/je/txn/UndoReader;->create(Lcom/sleepycat/je/dbi/EnvironmentImpl;JLjava/util/Map;)Lcom/sleepycat/je/txn/UndoReader;

    move-result-object v0

    move-object v10, v0

    .line 516
    .local v10, "undo":Lcom/sleepycat/je/txn/UndoReader;
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/TxnChain;->pop()Lcom/sleepycat/je/txn/TxnChain$RevertInfo;

    move-result-object v0

    move-object v11, v0

    .line 518
    .local v11, "revertTo":Lcom/sleepycat/je/txn/TxnChain$RevertInfo;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v10, v11}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->logFinest(JLcom/sleepycat/je/txn/UndoReader;Lcom/sleepycat/je/txn/TxnChain$RevertInfo;)V

    .line 525
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    iget-object v3, v10, Lcom/sleepycat/je/txn/UndoReader;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v4, v10, Lcom/sleepycat/je/txn/UndoReader;->logEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 527
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 525
    move-object v7, v11

    invoke-static/range {v0 .. v7}, Lcom/sleepycat/je/recovery/RecoveryManager;->rollbackUndo(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;JLcom/sleepycat/je/txn/TxnChain$RevertInfo;)V

    .line 529
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v10}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->countObsoleteInexact(JLcom/sleepycat/je/txn/UndoReader;)V

    .line 530
    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, v10, Lcom/sleepycat/je/txn/UndoReader;->logEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getUserTxn()Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getLastLsn()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v9, v0

    .line 537
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->lastLoggedLsn:J

    .line 538
    .end local v10    # "undo":Lcom/sleepycat/je/txn/UndoReader;
    .end local v11    # "revertTo":Lcom/sleepycat/je/txn/TxnChain$RevertInfo;
    goto :goto_0

    .line 544
    :cond_0
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/TxnChain;->getLastValidVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->lastApplied:Lcom/sleepycat/je/utilint/VLSN;

    .line 545
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->updateLoggedForTxn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    iput-wide v3, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->firstLoggedLsn:J
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :cond_1
    nop

    .line 559
    iget-wide v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->lastLoggedLsn:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->setDbCleanupState(Z)V

    .line 573
    :cond_2
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/TxnChain;->getRemainingLockedNodes()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->clearWriteLocks(Ljava/util/Set;)V

    .line 574
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Txn undo for LSN="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 556
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 549
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 550
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For LSN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 552
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 550
    const-string v4, "Txn"

    const-string/jumbo v5, "undo"

    invoke-static {v1, v4, v5, v3, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    throw v0
.end method

.method private validateDTVLSN(Lcom/sleepycat/je/utilint/VLSN;J)J
    .locals 3
    .param p1, "txnVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "checkDTVLSN"    # J

    .line 179
    if-eqz p1, :cond_1

    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/VLSN;->isNull(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTVLSN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 190
    return-wide p2

    .line 193
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_3

    .line 198
    return-wide p2

    .line 194
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTVLSN(vlsn)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > vlsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abort(Lcom/sleepycat/je/log/ReplicationContext;IJ)J
    .locals 4
    .param p1, "clientRepContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .param p2, "abortMasterNodeId"    # I
    .param p3, "abortDTVLSN"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 286
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->setRepContext(Lcom/sleepycat/je/log/ReplicationContext;)V

    .line 287
    invoke-virtual {p1}, Lcom/sleepycat/je/log/ReplicationContext;->getClientVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->validateDTVLSN(Lcom/sleepycat/je/utilint/VLSN;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->dtvlsn:J

    .line 294
    iput p2, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->masterNodeId:I

    .line 295
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sleepycat/je/txn/Txn;->abort(Z)J

    move-result-wide v0

    .line 296
    .local v0, "lsn":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->endTime:J

    .line 298
    return-wide v0
.end method

.method public abort(Z)J
    .locals 1
    .param p1, "forceFlush"    # Z

    .line 272
    nop

    .line 273
    const-string v0, "Replay Txn abort semantics require use of internal abort api"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public abort()V
    .locals 1

    .line 266
    nop

    .line 267
    const-string v0, "Replay Txn abort semantics require use of internal abort api"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public cleanup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->releaseWriteLocks()V

    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->close(Z)V

    .line 333
    return-void
.end method

.method public close(Z)V
    .locals 4
    .param p1, "isCommit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 316
    invoke-super {p0, p1}, Lcom/sleepycat/je/txn/Txn;->close(Z)V

    .line 318
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->remove(J)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    .line 320
    .local v0, "removed":Lcom/sleepycat/je/txn/Txn;
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "txn was not in map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 321
    invoke-static {}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 323
    .end local v0    # "removed":Lcom/sleepycat/je/txn/Txn;
    :cond_1
    :goto_0
    return-void
.end method

.method public commit()J
    .locals 1

    .line 254
    nop

    .line 255
    const-string v0, "Replay Txn abort semantics require use of internal commit api"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public commit(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/log/ReplicationContext;IJ)J
    .locals 5
    .param p1, "syncPolicy"    # Lcom/sleepycat/je/Durability$SyncPolicy;
    .param p2, "clientRepContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .param p3, "commitMasterNodeId"    # I
    .param p4, "commitDTVLSN"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commit called for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 224
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->setRepContext(Lcom/sleepycat/je/log/ReplicationContext;)V

    .line 226
    nop

    .line 227
    invoke-virtual {p2}, Lcom/sleepycat/je/log/ReplicationContext;->getClientVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->validateDTVLSN(Lcom/sleepycat/je/utilint/VLSN;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->dtvlsn:J

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "durability":Lcom/sleepycat/je/Durability;
    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-ne p1, v1, :cond_1

    .line 230
    sget-object v0, Lcom/sleepycat/je/Durability;->COMMIT_SYNC:Lcom/sleepycat/je/Durability;

    goto :goto_0

    .line 231
    :cond_1
    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-ne p1, v1, :cond_2

    .line 232
    sget-object v0, Lcom/sleepycat/je/Durability;->COMMIT_NO_SYNC:Lcom/sleepycat/je/Durability;

    goto :goto_0

    .line 233
    :cond_2
    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->WRITE_NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-ne p1, v1, :cond_3

    .line 234
    sget-object v0, Lcom/sleepycat/je/Durability;->COMMIT_WRITE_NO_SYNC:Lcom/sleepycat/je/Durability;

    .line 245
    :goto_0
    iput p3, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->masterNodeId:I

    .line 246
    invoke-super {p0, v0}, Lcom/sleepycat/je/txn/Txn;->commit(Lcom/sleepycat/je/Durability;)J

    move-result-wide v1

    .line 247
    .local v1, "lsn":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->endTime:J

    .line 249
    return-wide v1

    .line 236
    .end local v1    # "lsn":J
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public commit(Lcom/sleepycat/je/Durability;)J
    .locals 1
    .param p1, "durability"    # Lcom/sleepycat/je/Durability;

    .line 260
    nop

    .line 261
    const-string v0, "Replay Txn abort semantics require use of internal commit api"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public copyDatabasesForConversion(Lcom/sleepycat/je/txn/Txn;)V
    .locals 2
    .param p1, "masterTxn"    # Lcom/sleepycat/je/txn/Txn;

    .line 669
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Txn;->getUndoDatabases()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->undoDatabases:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->undoDatabases:Ljava/util/Map;

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->undoDatabases:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Txn;->getUndoDatabases()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 676
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Txn;->getDbCleanupSet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 677
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->dbCleanupSet:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 678
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->dbCleanupSet:Ljava/util/Set;

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->dbCleanupSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Txn;->getDbCleanupSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 682
    :cond_3
    return-void
.end method

.method public elapsedTime()J
    .locals 4

    .line 611
    iget-wide v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->endTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iget-wide v2, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected generateId(Lcom/sleepycat/je/txn/TxnManager;J)J
    .locals 0
    .param p1, "txnManager"    # Lcom/sleepycat/je/txn/TxnManager;
    .param p2, "mandatedId"    # J

    .line 160
    return-wide p2
.end method

.method protected getDTVLSN()J
    .locals 2

    .line 278
    iget-wide v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->dtvlsn:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .line 622
    iget-wide v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->endTime:J

    return-wide v0
.end method

.method protected getInitialLockTimeout()J
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getReplayTxnTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRepGroupDbChange()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->repGroupDbChange:Z

    return v0
.end method

.method protected getReplicatorNodeId()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->masterNodeId:I

    return v0
.end method

.method public isLocalWrite()Z
    .locals 1

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public noteRepGroupDbChange()V
    .locals 1

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->repGroupDbChange:Z

    .line 145
    return-void
.end method

.method public registerWithActiveTxns(Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<",
            "Lcom/sleepycat/je/rep/txn/ReplayTxn;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p1, "newActiveTxns":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    if-nez v0, :cond_0

    .line 149
    iput-object p1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    .line 150
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->put(Lcom/sleepycat/je/txn/Txn;)V

    .line 151
    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public rollback(J)Ljava/util/Collection;
    .locals 5
    .param p1, "matchpointLsn"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v0, "rollbackLsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Partial Rollback of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 395
    monitor-enter p0

    .line 396
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->checkState(Z)V

    .line 399
    iget-wide v1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->lastLoggedLsn:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 400
    monitor-exit p0

    return-object v0

    .line 407
    :cond_0
    iget-wide v1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->lastLoggedLsn:J

    invoke-static {v1, v2, p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v1

    if-gtz v1, :cond_1

    .line 408
    monitor-exit p0

    return-object v0

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->setRollback()V

    .line 412
    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->undoWrites(JLjava/util/List;)V

    .line 413
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 419
    iget-wide v1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->lastLoggedLsn:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 428
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->cleanupDatabaseImpls(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->close(Z)V

    .line 431
    goto :goto_0

    .line 430
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->close(Z)V

    throw v2

    .line 439
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->openedDatabaseHandles:Ljava/util/Set;

    if-nez v1, :cond_3

    .line 449
    return-object v0

    .line 440
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replay Txn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 441
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has a openedDatabaseHandles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 413
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setLastAppliedVLSN(Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 3
    .param p1, "justApplied"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 626
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->lastApplied:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-lez v0, :cond_0

    .line 631
    iput-object p1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->lastApplied:Lcom/sleepycat/je/utilint/VLSN;

    .line 632
    return-void

    .line 627
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Txn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 628
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " attempted VLSN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " txnLastApplied = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->lastApplied:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public setRepContext(Lcom/sleepycat/je/log/ReplicationContext;)V
    .locals 0
    .param p1, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 639
    iput-object p1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 640
    return-void
.end method

.method public stealLockFromMasterTxn(Ljava/lang/Long;)V
    .locals 5
    .param p1, "lsn"    # Ljava/lang/Long;

    .line 693
    iget-object v0, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    sget-object v1, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    .line 694
    invoke-virtual {v0, p1, p0, v1}, Lcom/sleepycat/je/txn/LockManager;->stealLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/txn/LockAttemptResult;

    move-result-object v0

    .line 700
    .local v0, "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    iget-boolean v1, v0, Lcom/sleepycat/je/txn/LockAttemptResult;->success:Z

    if-eqz v1, :cond_0

    .line 709
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    iget-object v3, v0, Lcom/sleepycat/je/txn/LockAttemptResult;->lockGrant:Lcom/sleepycat/je/txn/LockGrantType;

    invoke-virtual {p0, v1, v2, v3}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->addLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;)V

    .line 710
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->addLogInfo(J)V

    .line 711
    return-void

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transferring from master to replica state, txn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 704
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was unable to transfer lock for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 705
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lock grant type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sleepycat/je/txn/LockAttemptResult;->lockGrant:Lcom/sleepycat/je/txn/LockGrantType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 702
    invoke-static {v1, v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<ReplayTxn id=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/sleepycat/je/rep/txn/ReplayTxn;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 655
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-super {p0}, Lcom/sleepycat/je/txn/Txn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected updateLoggedForTxn()Z
    .locals 1

    .line 309
    const/4 v0, 0x1

    return v0
.end method
