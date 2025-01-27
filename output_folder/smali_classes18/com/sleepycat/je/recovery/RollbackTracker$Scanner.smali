.class abstract Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;
.super Ljava/lang/Object;
.source "RollbackTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/recovery/RollbackTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Scanner"
.end annotation


# instance fields
.field target:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

.field final synthetic this$0:Lcom/sleepycat/je/recovery/RollbackTracker;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/recovery/RollbackTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 448
    iput-object p1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;->this$0:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method needsRollback()Z
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;->target:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    if-nez v0, :cond_0

    .line 525
    const/4 v0, 0x0

    return v0

    .line 528
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->beforeCheckpointStart()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method abstract positionAndCheck(JJ)Z
.end method

.method public rollback(Ljava/lang/Long;Lcom/sleepycat/je/log/LNFileReader;Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;)V
    .locals 16
    .param p1, "txnId"    # Ljava/lang/Long;
    .param p2, "reader"    # Lcom/sleepycat/je/log/LNFileReader;
    .param p3, "tracker"    # Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;

    .line 476
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;->target:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->beforeCheckpointStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    return-void

    .line 480
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v10

    .line 482
    .local v10, "undoLsn":J
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;->this$0:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-static {v0}, Lcom/sleepycat/je/recovery/RollbackTracker;->access$000(Lcom/sleepycat/je/recovery/RollbackTracker;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v12

    .line 484
    .local v12, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    move-object/from16 v13, p2

    invoke-static {v13, v12}, Lcom/sleepycat/je/txn/UndoReader;->createForRecovery(Lcom/sleepycat/je/log/LNFileReader;Lcom/sleepycat/je/dbi/DbTree;)Lcom/sleepycat/je/txn/UndoReader;

    move-result-object v14

    .line 486
    .local v14, "undo":Lcom/sleepycat/je/txn/UndoReader;
    if-nez v14, :cond_1

    .line 488
    return-void

    .line 492
    :cond_1
    iget-object v2, v1, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;->target:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, v1, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;->this$0:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-static {v0}, Lcom/sleepycat/je/recovery/RollbackTracker;->access$000(Lcom/sleepycat/je/recovery/RollbackTracker;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    move-wide v5, v10

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->getChain(JJLcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/TxnChain;

    move-result-object v15

    .line 495
    .local v15, "chain":Lcom/sleepycat/je/txn/TxnChain;
    :try_start_0
    invoke-virtual {v15}, Lcom/sleepycat/je/txn/TxnChain;->pop()Lcom/sleepycat/je/txn/TxnChain$RevertInfo;

    move-result-object v9

    .line 501
    .local v9, "revertTo":Lcom/sleepycat/je/txn/TxnChain$RevertInfo;
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;->this$0:Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 502
    invoke-static {v0}, Lcom/sleepycat/je/recovery/RollbackTracker;->access$000(Lcom/sleepycat/je/recovery/RollbackTracker;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v4, Lcom/sleepycat/je/tree/TreeLocation;

    invoke-direct {v4}, Lcom/sleepycat/je/tree/TreeLocation;-><init>()V

    iget-object v5, v14, Lcom/sleepycat/je/txn/UndoReader;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v6, v14, Lcom/sleepycat/je/txn/UndoReader;->logEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 501
    move-wide v7, v10

    invoke-static/range {v2 .. v9}, Lcom/sleepycat/je/recovery/RecoveryManager;->rollbackUndo(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/je/tree/TreeLocation;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;JLcom/sleepycat/je/txn/TxnChain$RevertInfo;)V

    .line 505
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;->target:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->hasRollbackEnd()Z

    move-result v0

    if-nez v0, :cond_2

    .line 511
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/log/LNFileReader;->isInvisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 512
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;->this$0:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-static {v0}, Lcom/sleepycat/je/recovery/RollbackTracker;->access$100(Lcom/sleepycat/je/recovery/RollbackTracker;)Ljava/util/List;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    .end local v9    # "revertTo":Lcom/sleepycat/je/txn/TxnChain$RevertInfo;
    :cond_2
    iget-object v0, v14, Lcom/sleepycat/je/txn/UndoReader;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v12, v0}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 517
    nop

    .line 519
    iget-object v0, v1, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;->this$0:Lcom/sleepycat/je/recovery/RollbackTracker;

    move-object/from16 v2, p3

    invoke-static {v0, v10, v11, v14, v2}, Lcom/sleepycat/je/recovery/RollbackTracker;->access$200(Lcom/sleepycat/je/recovery/RollbackTracker;JLcom/sleepycat/je/txn/UndoReader;Lcom/sleepycat/je/cleaner/RecoveryUtilizationTracker;)V

    .line 520
    return-void

    .line 516
    :catchall_0
    move-exception v0

    move-object/from16 v2, p3

    iget-object v3, v14, Lcom/sleepycat/je/txn/UndoReader;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v12, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v0
.end method
