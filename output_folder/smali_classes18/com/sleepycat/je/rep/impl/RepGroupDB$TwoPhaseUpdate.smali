.class abstract Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;
.super Ljava/lang/Object;
.source "RepGroupDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TwoPhaseUpdate"
.end annotation


# instance fields
.field final groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field final node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

.field private phase1Exception:Lcom/sleepycat/je/DatabaseException;

.field final quorumAck:Z

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

.field protected txn:Lcom/sleepycat/je/txn/Txn;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V
    .locals 1
    .param p2, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .param p3, "quorumAck"    # Z

    .line 1229
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->phase1Exception:Lcom/sleepycat/je/DatabaseException;

    .line 1230
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1231
    iput-boolean p3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->quorumAck:Z

    .line 1233
    :try_start_0
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$500(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getGroupDb()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    nop

    .line 1238
    return-void

    .line 1234
    :catch_0
    move-exception p1

    .line 1236
    .local p1, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    invoke-static {p1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private phase1()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1259
    const-string v0, "Phase 1 retry; for node: "

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 1260
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;

    .line 1262
    :try_start_0
    new-instance v3, Lcom/sleepycat/je/rep/txn/MasterTxn;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$500(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->quorumAck:Z

    if-eqz v5, :cond_0

    .line 1263
    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$600()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v5

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$700()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v5

    :goto_1
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    .line 1264
    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$500(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sleepycat/je/rep/txn/MasterTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;

    .line 1265
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->phase1Body()V

    .line 1266
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;

    iget-boolean v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->quorumAck:Z

    if-eqz v4, :cond_1

    .line 1267
    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$800()Lcom/sleepycat/je/Durability;

    move-result-object v4

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$900()Lcom/sleepycat/je/Durability;

    move-result-object v4

    .line 1266
    :goto_2
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/txn/Txn;->commit(Lcom/sleepycat/je/Durability;)J

    .line 1268
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;
    :try_end_0
    .catch Lcom/sleepycat/je/rep/InsufficientReplicasException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/rep/InsufficientAcksException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    nop

    .line 1269
    return-void

    .line 1308
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$1000(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$500(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phase 1 failed unexpectedly: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1302
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1300
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1303
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;

    if-eqz v2, :cond_2

    .line 1304
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 1306
    :cond_2
    nop

    .end local v1    # "i":I
    throw v0

    .line 1289
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    .restart local v1    # "i":I
    :catch_1
    move-exception v2

    .line 1291
    .local v2, "e":Lcom/sleepycat/je/LockConflictException;
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->phase1Exception:Lcom/sleepycat/je/DatabaseException;

    .line 1292
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->deadlockHandler()V

    .line 1293
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$1000(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$500(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1295
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " deadlock exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1297
    invoke-virtual {v2}, Lcom/sleepycat/je/LockConflictException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1293
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1308
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;

    if-eqz v3, :cond_3

    .line 1309
    invoke-virtual {v3}, Lcom/sleepycat/je/txn/Txn;->abort()V

    goto/16 :goto_3

    .line 1280
    .end local v2    # "e":Lcom/sleepycat/je/LockConflictException;
    :catch_2
    move-exception v2

    .line 1281
    .local v2, "e":Lcom/sleepycat/je/rep/InsufficientAcksException;
    :try_start_2
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->phase1Exception:Lcom/sleepycat/je/DatabaseException;

    .line 1283
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$1000(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$500(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1285
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " insufficient acks: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1287
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/InsufficientAcksException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1283
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1308
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;

    if-eqz v3, :cond_3

    .line 1309
    invoke-virtual {v3}, Lcom/sleepycat/je/txn/Txn;->abort()V

    goto :goto_3

    .line 1270
    .end local v2    # "e":Lcom/sleepycat/je/rep/InsufficientAcksException;
    :catch_3
    move-exception v2

    .line 1271
    .local v2, "e":Lcom/sleepycat/je/rep/InsufficientReplicasException;
    :try_start_3
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->phase1Exception:Lcom/sleepycat/je/DatabaseException;

    .line 1272
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->insufficientReplicasHandler()V

    .line 1274
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$1000(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$500(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1276
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " insufficient active replicas: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1278
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/InsufficientReplicasException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1274
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1308
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;

    if-eqz v3, :cond_3

    .line 1309
    invoke-virtual {v3}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 1259
    .end local v2    # "e":Lcom/sleepycat/je/rep/InsufficientReplicasException;
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1308
    :goto_4
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;

    if-eqz v2, :cond_4

    .line 1309
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Txn;->abort()V

    :cond_4
    throw v0

    .line 1313
    .end local v1    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$1000(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    .line 1314
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$500(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phase 1 failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->phase1Exception:Lcom/sleepycat/je/DatabaseException;

    .line 1316
    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1313
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->phase1Exception:Lcom/sleepycat/je/DatabaseException;

    throw v0
.end method

.method private phase2()V
    .locals 5

    .line 1322
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/rep/txn/MasterTxn;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$500(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$700()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$500(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/txn/MasterTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;

    .line 1323
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->phase2Body()V

    .line 1324
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->commit()J

    .line 1325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    nop

    .line 1336
    return-void

    .line 1332
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1326
    :catch_0
    move-exception v0

    .line 1327
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$1000(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$500(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected failure in Phase 2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1329
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1327
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1330
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1332
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;

    if-eqz v1, :cond_0

    .line 1333
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->abort()V

    :cond_0
    throw v0
.end method


# virtual methods
.method deadlockHandler()V
    .locals 0

    .line 1243
    return-void
.end method

.method execute()V
    .locals 4

    .line 1340
    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$1100()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 1341
    :try_start_0
    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$1100()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1342
    .local v1, "lock":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1343
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v1, v2

    .line 1344
    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$1100()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1347
    monitor-enter v1

    .line 1348
    :try_start_1
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->phase1()V

    .line 1350
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->phase2()V

    .line 1351
    monitor-exit v1

    .line 1352
    return-void

    .line 1351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1346
    .end local v1    # "lock":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method insufficientReplicasHandler()V
    .locals 0

    .line 1241
    return-void
.end method

.method abstract phase1Body()V
.end method

.method phase2Body()V
    .locals 5

    .line 1250
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->setQuorumAck(Z)V

    .line 1251
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    sget-object v3, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    .line 1252
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$000(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 1253
    .local v0, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->txn:Lcom/sleepycat/je/txn/Txn;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$200(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/rep/impl/RepNodeImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    .line 1254
    return-void
.end method
