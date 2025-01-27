.class public Lcom/sleepycat/je/txn/TxnChain;
.super Ljava/lang/Object;
.source "TxnChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/txn/TxnChain$CompareSlot;,
        Lcom/sleepycat/je/txn/TxnChain$RevertInfo;
    }
.end annotation


# instance fields
.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private lastValidVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final remainingLockedNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final revertList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sleepycat/je/txn/TxnChain$RevertInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final undoDatabases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJJLcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 9
    .param p1, "lastLoggedLsn"    # J
    .param p3, "txnId"    # J
    .param p5, "matchpoint"    # J
    .param p7, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 118
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/txn/TxnChain;-><init>(JJJLjava/util/Map;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 119
    return-void
.end method

.method public constructor <init>(JJJLjava/util/Map;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 27
    .param p1, "lastLoggedLsn"    # J
    .param p3, "txnId"    # J
    .param p5, "matchpoint"    # J
    .param p8, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 132
    .local p7, "undoDatabases":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual/range {p8 .. p8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v6

    .line 136
    .local v6, "logManager":Lcom/sleepycat/je/log/LogManager;
    iput-object v5, v1, Lcom/sleepycat/je/txn/TxnChain;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 137
    iput-object v4, v1, Lcom/sleepycat/je/txn/TxnChain;->undoDatabases:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/sleepycat/je/txn/TxnChain;->remainingLockedNodes:Ljava/util/Set;

    .line 146
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v7, v0

    .line 149
    .local v7, "recordsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/sleepycat/je/txn/TxnChain$CompareSlot;Lcom/sleepycat/je/txn/TxnChain$RevertInfo;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v1, Lcom/sleepycat/je/txn/TxnChain;->revertList:Ljava/util/LinkedList;

    .line 156
    move-wide/from16 v8, p1

    .line 159
    .local v8, "currLsn":J
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, v1, Lcom/sleepycat/je/txn/TxnChain;->lastValidVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 161
    :goto_0
    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_9

    .line 163
    nop

    .line 164
    invoke-virtual {v6, v8, v9}, Lcom/sleepycat/je/log/LogManager;->getLogEntryAllowInvisible(J)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v0

    move-object v12, v0

    .line 166
    .local v12, "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    nop

    .line 167
    invoke-virtual {v12}, Lcom/sleepycat/je/log/WholeEntry;->getEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-object v13, v0

    .line 169
    .local v13, "currLogrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/je/txn/TxnChain;->getDatabaseImpl(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    move-object v14, v0

    .line 171
    .local v14, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v14, :cond_1

    .line 173
    if-nez v4, :cond_0

    .line 187
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getUserTxn()Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getLastLsn()J

    move-result-wide v10

    move-wide v8, v10

    .line 188
    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DB missing during non-recovery rollback, dbId="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " txnId="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v5, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v7    # "recordsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/sleepycat/je/txn/TxnChain$CompareSlot;Lcom/sleepycat/je/txn/TxnChain$RevertInfo;>;"
    .end local v8    # "currLsn":J
    .end local p1    # "lastLoggedLsn":J
    .end local p3    # "txnId":J
    .end local p5    # "matchpoint":J
    .end local p7    # "undoDatabases":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local p8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    throw v0

    .line 191
    .restart local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v7    # "recordsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/sleepycat/je/txn/TxnChain$CompareSlot;Lcom/sleepycat/je/txn/TxnChain$RevertInfo;>;"
    .restart local v8    # "currLsn":J
    .restart local p1    # "lastLoggedLsn":J
    .restart local p3    # "txnId":J
    .restart local p5    # "matchpoint":J
    .restart local p7    # "undoDatabases":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local p8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_1
    invoke-virtual {v13, v14}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 199
    :try_start_1
    new-instance v0, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;

    invoke-direct {v0, v14, v13}, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;)V

    .line 201
    .local v0, "recId":Lcom/sleepycat/je/txn/TxnChain$CompareSlot;
    invoke-virtual {v7, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;

    .line 207
    .local v15, "ri":Lcom/sleepycat/je/txn/TxnChain$RevertInfo;
    if-eqz v15, :cond_5

    .line 208
    iput-wide v8, v15, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertLsn:J

    .line 209
    const/4 v10, 0x0

    iput-boolean v10, v15, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertKD:Z

    .line 210
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isDeleted()Z

    move-result v10

    iput-boolean v10, v15, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertPD:Z

    .line 212
    nop

    .line 213
    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/DatabaseImpl;->allowsKeyUpdates()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    .line 214
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v10

    goto :goto_1

    :cond_2
    move-object v10, v11

    :goto_1
    iput-object v10, v15, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertKey:[B

    .line 216
    nop

    .line 217
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isEmbeddedLN()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 218
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getData()[B

    move-result-object v11

    goto :goto_2

    :cond_3
    nop

    :goto_2
    iput-object v11, v15, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertData:[B

    .line 220
    nop

    .line 221
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isEmbeddedLN()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 222
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v10

    goto :goto_3

    :cond_4
    const-wide/16 v10, -0x1

    :goto_3
    iput-wide v10, v15, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertVLSN:J

    .line 225
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getExpiration()I

    move-result v10

    iput v10, v15, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertExpiration:I

    .line 227
    nop

    .line 228
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isExpirationInHours()Z

    move-result v10

    iput-boolean v10, v15, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertExpirationInHours:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    :cond_5
    move-wide/from16 v10, p5

    :try_start_2
    invoke-static {v8, v9, v10, v11}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v16

    if-lez v16, :cond_6

    .line 238
    new-instance v16, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;

    .line 239
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortLsn()J

    move-result-wide v18

    .line 240
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortKnownDeleted()Z

    move-result v20

    .line 241
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortKey()[B

    move-result-object v21

    .line 242
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortData()[B

    move-result-object v22

    .line 243
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortVLSN()J

    move-result-wide v23

    .line 244
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getAbortExpiration()I

    move-result v25

    .line 245
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isAbortExpirationInHours()Z

    move-result v26

    move-object/from16 v17, v16

    invoke-direct/range {v17 .. v26}, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;-><init>(JZ[B[BJIZ)V

    move-object/from16 v15, v16

    .line 247
    iget-object v4, v1, Lcom/sleepycat/je/txn/TxnChain;->revertList:Ljava/util/LinkedList;

    invoke-virtual {v4, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v7, v0, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v0

    goto :goto_4

    .line 256
    :cond_6
    if-eqz v15, :cond_7

    .line 257
    invoke-virtual {v7, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_7
    iget-object v4, v1, Lcom/sleepycat/je/txn/TxnChain;->remainingLockedNodes:Ljava/util/Set;

    move-object/from16 v16, v0

    .end local v0    # "recId":Lcom/sleepycat/je/txn/TxnChain$CompareSlot;
    .local v16, "recId":Lcom/sleepycat/je/txn/TxnChain$CompareSlot;
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, v1, Lcom/sleepycat/je/txn/TxnChain;->lastValidVLSN:Lcom/sleepycat/je/utilint/VLSN;

    if-eqz v0, :cond_8

    .line 263
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 264
    invoke-virtual {v12}, Lcom/sleepycat/je/log/WholeEntry;->getHeader()Lcom/sleepycat/je/log/LogEntryHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 265
    invoke-virtual {v12}, Lcom/sleepycat/je/log/WholeEntry;->getHeader()Lcom/sleepycat/je/log/LogEntryHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-nez v0, :cond_8

    .line 267
    invoke-virtual {v12}, Lcom/sleepycat/je/log/WholeEntry;->getHeader()Lcom/sleepycat/je/log/LogEntryHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iput-object v0, v1, Lcom/sleepycat/je/txn/TxnChain;->lastValidVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 272
    :cond_8
    :goto_4
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getUserTxn()Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getLastLsn()J

    move-result-wide v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v8, v17

    .line 275
    .end local v15    # "ri":Lcom/sleepycat/je/txn/TxnChain$RevertInfo;
    .end local v16    # "recId":Lcom/sleepycat/je/txn/TxnChain$CompareSlot;
    :try_start_3
    invoke-direct {v1, v14}, Lcom/sleepycat/je/txn/TxnChain;->releaseDatabaseImpl(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 276
    nop

    .line 277
    .end local v12    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v13    # "currLogrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v14    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    move-object/from16 v4, p7

    goto/16 :goto_0

    .line 275
    .restart local v12    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local v13    # "currLogrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .restart local v14    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-wide/from16 v10, p5

    :goto_5
    invoke-direct {v1, v14}, Lcom/sleepycat/je/txn/TxnChain;->releaseDatabaseImpl(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .end local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v7    # "recordsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/sleepycat/je/txn/TxnChain$CompareSlot;Lcom/sleepycat/je/txn/TxnChain$RevertInfo;>;"
    .end local v8    # "currLsn":J
    .end local p1    # "lastLoggedLsn":J
    .end local p3    # "txnId":J
    .end local p5    # "matchpoint":J
    .end local p7    # "undoDatabases":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local p8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    throw v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 278
    .end local v12    # "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v13    # "currLogrec":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v14    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v6    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v7    # "recordsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/sleepycat/je/txn/TxnChain$CompareSlot;Lcom/sleepycat/je/txn/TxnChain$RevertInfo;>;"
    .restart local v8    # "currLsn":J
    .restart local p1    # "lastLoggedLsn":J
    .restart local p3    # "txnId":J
    .restart local p5    # "matchpoint":J
    .restart local p7    # "undoDatabases":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local p8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    .line 283
    :cond_9
    move-wide/from16 v10, p5

    .line 284
    return-void

    .line 278
    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_6
    move-wide/from16 v10, p5

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Problem finding intermediates for txn "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " at lsn "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 282
    invoke-static {v8, v9}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 279
    invoke-static {v5, v4, v12, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->promote(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4
.end method

.method private getDatabaseImpl(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1
    .param p1, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 292
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnChain;->undoDatabases:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnChain;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    return-object v0
.end method

.method private releaseDatabaseImpl(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 301
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnChain;->undoDatabases:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnChain;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 304
    :cond_0
    return-void
.end method


# virtual methods
.method public getLastValidVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnChain;->lastValidVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getRemainingLockedNodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnChain;->remainingLockedNodes:Ljava/util/Set;

    return-object v0
.end method

.method public pop()Lcom/sleepycat/je/txn/TxnChain$RevertInfo;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnChain;->revertList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnChain;->revertList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
