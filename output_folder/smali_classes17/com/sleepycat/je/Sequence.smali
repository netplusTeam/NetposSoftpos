.class public Lcom/sleepycat/je/Sequence;
.super Ljava/lang/Object;
.source "Sequence.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CURRENT_VERSION:B = 0x1t

.field private static final FLAG_INCR:B = 0x1t

.field private static final FLAG_OVER:B = 0x4t

.field private static final FLAG_WRAP:B = 0x2t

.field private static final MAX_DATA_SIZE:I = 0x32


# instance fields
.field private autoCommitConfig:Lcom/sleepycat/je/TransactionConfig;

.field private cacheLast:J

.field private final cacheSize:I

.field private cacheValue:J

.field private final db:Lcom/sleepycat/je/Database;

.field private increment:Z

.field private final key:Lcom/sleepycat/je/DatabaseEntry;

.field private final logger:Ljava/util/logging/Logger;

.field private nCachedGets:I

.field private nGets:I

.field private overflow:Z

.field private rangeMax:J

.field private rangeMin:J

.field private storedValue:J

.field private wrapAllowed:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/SequenceConfig;)V
    .locals 19
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p2, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "config"    # Lcom/sleepycat/je/SequenceConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/SequenceNotFoundException;,
            Lcom/sleepycat/je/SequenceExistsException;
        }
    .end annotation

    .line 99
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-nez v0, :cond_13

    .line 107
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/SequenceConfig;->DEFAULT:Lcom/sleepycat/je/SequenceConfig;

    :goto_0
    move-object v4, v0

    .line 110
    .local v4, "useConfig":Lcom/sleepycat/je/SequenceConfig;
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getRangeMin()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getRangeMax()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_12

    .line 115
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getInitialValue()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getRangeMax()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gtz v0, :cond_11

    .line 116
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getInitialValue()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getRangeMin()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_10

    .line 121
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getRangeMin()J

    move-result-wide v5

    .line 122
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getRangeMax()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getCacheSize()I

    move-result v0

    int-to-long v9, v0

    sub-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-gtz v0, :cond_f

    .line 127
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getAutoCommitNoSync()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 128
    nop

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/DbInternal;->getDefaultTxnConfig(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/TransactionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/TransactionConfig;->clone()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v0

    iput-object v0, v1, Lcom/sleepycat/je/Sequence;->autoCommitConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 130
    sget-object v6, Lcom/sleepycat/je/Durability;->COMMIT_NO_SYNC:Lcom/sleepycat/je/Durability;

    invoke-virtual {v0, v6}, Lcom/sleepycat/je/TransactionConfig;->overrideDurability(Lcom/sleepycat/je/Durability;)V

    goto :goto_1

    .line 133
    :cond_1
    iput-object v5, v1, Lcom/sleepycat/je/Sequence;->autoCommitConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 136
    :goto_1
    iput-object v2, v1, Lcom/sleepycat/je/Sequence;->db:Lcom/sleepycat/je/Database;

    .line 137
    invoke-direct {v1, v3}, Lcom/sleepycat/je/Sequence;->copyEntry(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    iput-object v0, v1, Lcom/sleepycat/je/Sequence;->key:Lcom/sleepycat/je/DatabaseEntry;

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, v1, Lcom/sleepycat/je/Sequence;->logger:Ljava/util/logging/Logger;

    .line 141
    const/4 v6, 0x0

    .line 142
    .local v6, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v7, 0x0

    .line 143
    .local v7, "cursor":Lcom/sleepycat/je/Cursor;
    sget-object v8, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    .line 145
    .local v8, "status":Lcom/sleepycat/je/OperationStatus;
    const/4 v0, 0x0

    move-object/from16 v15, p2

    :try_start_0
    invoke-static {v2, v15, v0}, Lcom/sleepycat/je/txn/LockerFactory;->getReadableLocker(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Transaction;Z)Lcom/sleepycat/je/txn/Locker;

    move-result-object v9

    move-object v6, v9

    .line 148
    new-instance v9, Lcom/sleepycat/je/Cursor;

    invoke-direct {v9, v2, v6, v5}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V

    move-object v7, v9

    .line 150
    invoke-direct {v1, v7, v5}, Lcom/sleepycat/je/Sequence;->readData(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/LockMode;)Z

    move-result v9

    move/from16 v16, v9

    .line 151
    .local v16, "sequenceExists":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getConfig()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v9

    const/16 v17, 0x1

    if-eqz v9, :cond_3

    .line 152
    invoke-virtual {v6}, Lcom/sleepycat/je/txn/Locker;->isTransactional()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v9

    invoke-static {v9}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v9

    .line 154
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    move v9, v0

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v9, v17

    :goto_3
    move/from16 v18, v9

    .line 156
    .local v18, "isWritableLocker":Z
    if-eqz v16, :cond_5

    .line 157
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getAllowCreate()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 158
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getExclusiveCreate()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_4

    .line 159
    :cond_4
    new-instance v0, Lcom/sleepycat/je/SequenceExistsException;

    const-string v5, "ExclusiveCreate=true and the sequence record already exists."

    invoke-direct {v0, v5}, Lcom/sleepycat/je/SequenceExistsException;-><init>(Ljava/lang/String;)V

    .end local v4    # "useConfig":Lcom/sleepycat/je/SequenceConfig;
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v7    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v8    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local p1    # "db":Lcom/sleepycat/je/Database;
    .end local p2    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "config":Lcom/sleepycat/je/SequenceConfig;
    throw v0

    .line 164
    .restart local v4    # "useConfig":Lcom/sleepycat/je/SequenceConfig;
    .restart local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v7    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v8    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local p1    # "db":Lcom/sleepycat/je/Database;
    .restart local p2    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "config":Lcom/sleepycat/je/SequenceConfig;
    :cond_5
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getAllowCreate()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 165
    if-nez v18, :cond_6

    .line 166
    nop

    .line 167
    invoke-virtual {v7}, Lcom/sleepycat/je/Cursor;->close()V

    .line 169
    sget-object v9, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    invoke-virtual {v6, v9}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Lcom/sleepycat/je/OperationStatus;)V

    .line 171
    nop

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v9

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v11

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->isTransactional()Z

    move-result v12

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v13

    iget-object v14, v1, Lcom/sleepycat/je/Sequence;->autoCommitConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 172
    move-object/from16 v10, p2

    invoke-static/range {v9 .. v14}, Lcom/sleepycat/je/txn/LockerFactory;->getWritableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;ZZZLcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v9

    move-object v6, v9

    .line 178
    new-instance v9, Lcom/sleepycat/je/Cursor;

    invoke-direct {v9, v2, v6, v5}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V

    move-object v7, v9

    .line 182
    :cond_6
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getRangeMin()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/sleepycat/je/Sequence;->rangeMin:J

    .line 183
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getRangeMax()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/sleepycat/je/Sequence;->rangeMax:J

    .line 184
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getDecrement()Z

    move-result v9

    if-nez v9, :cond_7

    move/from16 v0, v17

    :cond_7
    iput-boolean v0, v1, Lcom/sleepycat/je/Sequence;->increment:Z

    .line 185
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getWrap()Z

    move-result v0

    iput-boolean v0, v1, Lcom/sleepycat/je/Sequence;->wrapAllowed:Z

    .line 186
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getInitialValue()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/sleepycat/je/Sequence;->storedValue:J

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/Sequence;->makeData()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Lcom/sleepycat/je/Cursor;->putNoOverwrite(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    move-object v8, v0

    .line 195
    invoke-direct {v1, v7, v5}, Lcom/sleepycat/je/Sequence;->readData(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/LockMode;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 200
    sget-object v0, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    .line 208
    .end local v16    # "sequenceExists":Z
    .end local v18    # "isWritableLocker":Z
    :cond_8
    :goto_4
    nop

    .line 209
    invoke-virtual {v7}, Lcom/sleepycat/je/Cursor;->close()V

    .line 211
    if-eqz v6, :cond_9

    .line 212
    invoke-virtual {v6, v8}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Lcom/sleepycat/je/OperationStatus;)V

    .line 220
    :cond_9
    invoke-virtual {v4}, Lcom/sleepycat/je/SequenceConfig;->getCacheSize()I

    move-result v0

    iput v0, v1, Lcom/sleepycat/je/Sequence;->cacheSize:I

    .line 221
    iget-wide v9, v1, Lcom/sleepycat/je/Sequence;->storedValue:J

    iput-wide v9, v1, Lcom/sleepycat/je/Sequence;->cacheValue:J

    .line 222
    iget-boolean v0, v1, Lcom/sleepycat/je/Sequence;->increment:Z

    const-wide/16 v11, 0x1

    if-eqz v0, :cond_a

    sub-long/2addr v9, v11

    goto :goto_5

    :cond_a
    add-long/2addr v9, v11

    :goto_5
    iput-wide v9, v1, Lcom/sleepycat/je/Sequence;->cacheLast:J

    .line 223
    return-void

    .line 197
    .restart local v16    # "sequenceExists":Z
    .restart local v18    # "isWritableLocker":Z
    :cond_b
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Sequence record removed during openSequence."

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "useConfig":Lcom/sleepycat/je/SequenceConfig;
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v7    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v8    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local p1    # "db":Lcom/sleepycat/je/Database;
    .end local p2    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "config":Lcom/sleepycat/je/SequenceConfig;
    throw v0

    .line 202
    .restart local v4    # "useConfig":Lcom/sleepycat/je/SequenceConfig;
    .restart local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v7    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v8    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local p1    # "db":Lcom/sleepycat/je/Database;
    .restart local p2    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "config":Lcom/sleepycat/je/SequenceConfig;
    :cond_c
    new-instance v0, Lcom/sleepycat/je/SequenceNotFoundException;

    const-string v5, "AllowCreate=false and the sequence record does not exist."

    invoke-direct {v0, v5}, Lcom/sleepycat/je/SequenceNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v4    # "useConfig":Lcom/sleepycat/je/SequenceConfig;
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v7    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v8    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local p1    # "db":Lcom/sleepycat/je/Database;
    .end local p2    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "config":Lcom/sleepycat/je/SequenceConfig;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    .end local v16    # "sequenceExists":Z
    .end local v18    # "isWritableLocker":Z
    .restart local v4    # "useConfig":Lcom/sleepycat/je/SequenceConfig;
    .restart local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v7    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v8    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local p1    # "db":Lcom/sleepycat/je/Database;
    .restart local p2    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "config":Lcom/sleepycat/je/SequenceConfig;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_d

    .line 209
    invoke-virtual {v7}, Lcom/sleepycat/je/Cursor;->close()V

    .line 211
    :cond_d
    if-eqz v6, :cond_e

    .line 212
    invoke-virtual {v6, v8}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Lcom/sleepycat/je/OperationStatus;)V

    :cond_e
    throw v0

    .line 123
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v7    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v8    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_f
    move-object/from16 v15, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "The cache size is larger than the sequence range"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_10
    move-object/from16 v15, p2

    goto :goto_6

    .line 115
    :cond_11
    move-object/from16 v15, p2

    .line 117
    :goto_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Initial sequence value is out of range"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_12
    move-object/from16 v15, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Minimum sequence value must be less than the maximum"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    .end local v4    # "useConfig":Lcom/sleepycat/je/SequenceConfig;
    :cond_13
    move-object/from16 v15, p2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Sequences not supported in databases configured for duplicates"

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copyEntry(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;
    .locals 6
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 600
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v0

    .line 602
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 603
    sget-object v1, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    .local v1, "data":[B
    goto :goto_0

    .line 605
    .end local v1    # "data":[B
    :cond_0
    new-array v1, v0, [B

    .line 606
    .restart local v1    # "data":[B
    nop

    .line 607
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v3

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    :goto_0
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    return-object v2
.end method

.method private makeData()Lcom/sleepycat/je/DatabaseEntry;
    .locals 6

    .line 572
    const/16 v0, 0x32

    new-array v0, v0, [B

    .line 573
    .local v0, "data":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 575
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 576
    .local v2, "flags":B
    iget-boolean v3, p0, Lcom/sleepycat/je/Sequence;->increment:Z

    if-eqz v3, :cond_0

    .line 577
    or-int/lit8 v3, v2, 0x1

    int-to-byte v2, v3

    .line 579
    :cond_0
    iget-boolean v3, p0, Lcom/sleepycat/je/Sequence;->wrapAllowed:Z

    if-eqz v3, :cond_1

    .line 580
    or-int/lit8 v3, v2, 0x2

    int-to-byte v2, v3

    .line 582
    :cond_1
    iget-boolean v3, p0, Lcom/sleepycat/je/Sequence;->overflow:Z

    if-eqz v3, :cond_2

    .line 583
    or-int/lit8 v3, v2, 0x4

    int-to-byte v2, v3

    .line 586
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 587
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 588
    iget-wide v3, p0, Lcom/sleepycat/je/Sequence;->rangeMin:J

    invoke-static {v1, v3, v4}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 589
    iget-wide v3, p0, Lcom/sleepycat/je/Sequence;->rangeMax:J

    invoke-static {v1, v3, v4}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 590
    iget-wide v3, p0, Lcom/sleepycat/je/Sequence;->storedValue:J

    invoke-static {v1, v3, v4}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 592
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>([BII)V

    return-object v3
.end method

.method private readData(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/LockMode;)Z
    .locals 10
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 545
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 546
    .local v0, "data":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/je/Sequence;->key:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {p1, v1, v0, p2}, Lcom/sleepycat/je/Cursor;->getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 547
    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 548
    return v3

    .line 550
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 553
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 554
    .local v4, "version":B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 555
    .local v5, "flags":B
    const/4 v6, 0x1

    if-ge v4, v6, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v3

    .line 556
    .local v7, "unpacked":Z
    :goto_0
    invoke-static {v2, v7}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sleepycat/je/Sequence;->rangeMin:J

    .line 557
    invoke-static {v2, v7}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sleepycat/je/Sequence;->rangeMax:J

    .line 558
    invoke-static {v2, v7}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sleepycat/je/Sequence;->storedValue:J

    .line 560
    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_2

    move v8, v6

    goto :goto_1

    :cond_2
    move v8, v3

    :goto_1
    iput-boolean v8, p0, Lcom/sleepycat/je/Sequence;->increment:Z

    .line 561
    and-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_2
    iput-boolean v8, p0, Lcom/sleepycat/je/Sequence;->wrapAllowed:Z

    .line 562
    and-int/lit8 v8, v5, 0x4

    if-eqz v8, :cond_4

    move v3, v6

    :cond_4
    iput-boolean v3, p0, Lcom/sleepycat/je/Sequence;->overflow:Z

    .line 564
    return v6
.end method

.method private readDataRequired(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/LockMode;)V
    .locals 2
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 531
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/Sequence;->readData(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/LockMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    return-void

    .line 532
    :cond_0
    new-instance v0, Lcom/sleepycat/je/SequenceIntegrityException;

    const-string v1, "The sequence record has been deleted while it is open."

    invoke-direct {v0, v1}, Lcom/sleepycat/je/SequenceIntegrityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 245
    return-void
.end method

.method public declared-synchronized get(Lcom/sleepycat/je/Transaction;I)J
    .locals 16
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    monitor-enter p0

    .line 298
    if-lez v2, :cond_13

    .line 302
    :try_start_0
    iget-wide v3, v1, Lcom/sleepycat/je/Sequence;->rangeMin:J

    iget-wide v5, v1, Lcom/sleepycat/je/Sequence;->rangeMax:J

    int-to-long v7, v2

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gtz v0, :cond_12

    .line 308
    const/4 v0, 0x1

    .line 309
    .local v0, "cached":Z
    const/4 v3, 0x0

    .line 316
    .local v3, "wrapped":Z
    iget-boolean v4, v1, Lcom/sleepycat/je/Sequence;->increment:Z

    const-wide/16 v5, 0x1

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    int-to-long v8, v2

    iget-wide v10, v1, Lcom/sleepycat/je/Sequence;->cacheLast:J

    iget-wide v12, v1, Lcom/sleepycat/je/Sequence;->cacheValue:J

    sub-long/2addr v10, v12

    add-long/2addr v10, v5

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    .end local p0    # "this":Lcom/sleepycat/je/Sequence;
    :cond_0
    if-nez v4, :cond_e

    int-to-long v8, v2

    iget-wide v10, v1, Lcom/sleepycat/je/Sequence;->cacheValue:J

    iget-wide v12, v1, Lcom/sleepycat/je/Sequence;->cacheLast:J

    sub-long/2addr v10, v12

    add-long/2addr v10, v5

    cmp-long v4, v8, v10

    if-lez v4, :cond_e

    .line 319
    :cond_1
    const/4 v4, 0x0

    .line 326
    .end local v0    # "cached":Z
    .local v4, "cached":Z
    iget v0, v1, Lcom/sleepycat/je/Sequence;->cacheSize:I

    if-le v2, v0, :cond_2

    move v0, v2

    :cond_2
    move v5, v0

    .line 329
    .local v5, "adjust":I
    const/4 v6, 0x0

    .line 330
    .local v6, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v8, 0x0

    .line 331
    .local v8, "cursor":Lcom/sleepycat/je/Cursor;
    sget-object v0, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, v0

    .line 333
    .local v9, "status":Lcom/sleepycat/je/OperationStatus;
    :try_start_1
    iget-object v0, v1, Lcom/sleepycat/je/Sequence;->db:Lcom/sleepycat/je/Database;

    .line 334
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v10

    iget-object v0, v1, Lcom/sleepycat/je/Sequence;->db:Lcom/sleepycat/je/Database;

    .line 336
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v12

    iget-object v0, v1, Lcom/sleepycat/je/Sequence;->db:Lcom/sleepycat/je/Database;

    .line 337
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->isTransactional()Z

    move-result v13

    iget-object v0, v1, Lcom/sleepycat/je/Sequence;->db:Lcom/sleepycat/je/Database;

    .line 338
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v14

    iget-object v15, v1, Lcom/sleepycat/je/Sequence;->autoCommitConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 334
    move-object/from16 v11, p1

    invoke-static/range {v10 .. v15}, Lcom/sleepycat/je/txn/LockerFactory;->getWritableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;ZZZLcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    move-object v6, v0

    .line 342
    new-instance v0, Lcom/sleepycat/je/Cursor;

    iget-object v10, v1, Lcom/sleepycat/je/Sequence;->db:Lcom/sleepycat/je/Database;

    const/4 v11, 0x0

    invoke-direct {v0, v10, v6, v11}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V

    move-object v8, v0

    .line 345
    sget-object v0, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    invoke-direct {v1, v8, v0}, Lcom/sleepycat/je/Sequence;->readDataRequired(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/LockMode;)V

    .line 348
    iget-boolean v0, v1, Lcom/sleepycat/je/Sequence;->overflow:Z

    if-nez v0, :cond_b

    .line 360
    iget-boolean v0, v1, Lcom/sleepycat/je/Sequence;->increment:Z

    if-eqz v0, :cond_3

    .line 362
    iget-wide v10, v1, Lcom/sleepycat/je/Sequence;->rangeMax:J

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v10, v1, Lcom/sleepycat/je/Sequence;->storedValue:J

    .line 363
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .local v0, "availBig":Ljava/math/BigInteger;
    goto :goto_0

    .line 366
    .end local v0    # "availBig":Ljava/math/BigInteger;
    :cond_3
    iget-wide v10, v1, Lcom/sleepycat/je/Sequence;->storedValue:J

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v10, v1, Lcom/sleepycat/je/Sequence;->rangeMin:J

    .line 367
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 370
    .restart local v0    # "availBig":Ljava/math/BigInteger;
    :goto_0
    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_7

    .line 372
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    long-to-int v10, v10

    .line 373
    .local v10, "availInt":I
    if-ge v10, v2, :cond_6

    .line 374
    iget-boolean v11, v1, Lcom/sleepycat/je/Sequence;->wrapAllowed:Z

    if-eqz v11, :cond_5

    .line 376
    iget-boolean v11, v1, Lcom/sleepycat/je/Sequence;->increment:Z

    if-eqz v11, :cond_4

    iget-wide v11, v1, Lcom/sleepycat/je/Sequence;->rangeMin:J

    goto :goto_1

    :cond_4
    iget-wide v11, v1, Lcom/sleepycat/je/Sequence;->rangeMax:J

    :goto_1
    iput-wide v11, v1, Lcom/sleepycat/je/Sequence;->storedValue:J

    .line 377
    const/4 v3, 0x1

    goto :goto_2

    .line 380
    :cond_5
    iput-boolean v7, v1, Lcom/sleepycat/je/Sequence;->overflow:Z

    .line 381
    const/4 v5, 0x0

    goto :goto_2

    .line 390
    :cond_6
    move v5, v10

    .line 395
    .end local v10    # "availInt":I
    :cond_7
    :goto_2
    iget-boolean v10, v1, Lcom/sleepycat/je/Sequence;->increment:Z

    if-nez v10, :cond_8

    .line 396
    neg-int v5, v5

    .line 400
    :cond_8
    iget-wide v10, v1, Lcom/sleepycat/je/Sequence;->storedValue:J

    int-to-long v12, v5

    add-long/2addr v10, v12

    iput-wide v10, v1, Lcom/sleepycat/je/Sequence;->storedValue:J

    .line 403
    iget-object v10, v1, Lcom/sleepycat/je/Sequence;->key:Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/Sequence;->makeData()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    .line 404
    sget-object v10, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v10

    .line 406
    .end local v0    # "availBig":Ljava/math/BigInteger;
    nop

    .line 407
    :try_start_2
    invoke-virtual {v8}, Lcom/sleepycat/je/Cursor;->close()V

    .line 409
    if-eqz v6, :cond_9

    .line 410
    invoke-virtual {v6, v9}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Lcom/sleepycat/je/OperationStatus;)V

    .line 415
    :cond_9
    iget-wide v10, v1, Lcom/sleepycat/je/Sequence;->storedValue:J

    int-to-long v12, v5

    sub-long v12, v10, v12

    iput-wide v12, v1, Lcom/sleepycat/je/Sequence;->cacheValue:J

    .line 416
    iget-boolean v0, v1, Lcom/sleepycat/je/Sequence;->increment:Z

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    goto :goto_3

    :cond_a
    move v0, v7

    :goto_3
    int-to-long v12, v0

    add-long/2addr v10, v12

    iput-wide v10, v1, Lcom/sleepycat/je/Sequence;->cacheLast:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v4

    goto :goto_4

    .line 349
    :cond_b
    :try_start_3
    new-instance v0, Lcom/sleepycat/je/SequenceOverflowException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sequence overflow "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, v1, Lcom/sleepycat/je/Sequence;->storedValue:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/sleepycat/je/SequenceOverflowException;-><init>(Ljava/lang/String;)V

    .end local v3    # "wrapped":Z
    .end local v4    # "cached":Z
    .end local v5    # "adjust":I
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v8    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v9    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "delta":I
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 406
    .restart local v3    # "wrapped":Z
    .restart local v4    # "cached":Z
    .restart local v5    # "adjust":I
    .restart local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v8    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v9    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "delta":I
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_c

    .line 407
    :try_start_4
    invoke-virtual {v8}, Lcom/sleepycat/je/Cursor;->close()V

    .line 409
    :cond_c
    if-eqz v6, :cond_d

    .line 410
    invoke-virtual {v6, v9}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Lcom/sleepycat/je/OperationStatus;)V

    :cond_d
    throw v0

    .line 420
    .end local v4    # "cached":Z
    .end local v5    # "adjust":I
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v8    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v9    # "status":Lcom/sleepycat/je/OperationStatus;
    .local v0, "cached":Z
    :cond_e
    :goto_4
    iget-wide v4, v1, Lcom/sleepycat/je/Sequence;->cacheValue:J

    move-wide v8, v4

    .line 421
    .local v8, "retVal":J
    iget-boolean v6, v1, Lcom/sleepycat/je/Sequence;->increment:Z

    if-eqz v6, :cond_f

    .line 422
    int-to-long v10, v2

    add-long/2addr v4, v10

    iput-wide v4, v1, Lcom/sleepycat/je/Sequence;->cacheValue:J

    goto :goto_5

    .line 424
    :cond_f
    int-to-long v10, v2

    sub-long/2addr v4, v10

    iput-wide v4, v1, Lcom/sleepycat/je/Sequence;->cacheValue:J

    .line 428
    :goto_5
    iget v4, v1, Lcom/sleepycat/je/Sequence;->nGets:I

    add-int/2addr v4, v7

    iput v4, v1, Lcom/sleepycat/je/Sequence;->nGets:I

    .line 429
    if-eqz v0, :cond_10

    .line 430
    iget v4, v1, Lcom/sleepycat/je/Sequence;->nCachedGets:I

    add-int/2addr v4, v7

    iput v4, v1, Lcom/sleepycat/je/Sequence;->nCachedGets:I

    .line 434
    :cond_10
    iget-object v4, v1, Lcom/sleepycat/je/Sequence;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 435
    iget-object v4, v1, Lcom/sleepycat/je/Sequence;->logger:Ljava/util/logging/Logger;

    iget-object v5, v1, Lcom/sleepycat/je/Sequence;->db:Lcom/sleepycat/je/Database;

    .line 436
    invoke-virtual {v5}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/Environment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sequence.get value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cached="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wrapped="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 435
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 441
    :cond_11
    monitor-exit p0

    return-wide v8

    .line 303
    .end local v0    # "cached":Z
    .end local v3    # "wrapped":Z
    .end local v8    # "retVal":J
    :cond_12
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Sequence delta is larger than the range"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "delta":I
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 299
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "delta":I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Sequence delta must be greater than zero"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 297
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "delta":I
    :goto_6
    monitor-exit p0

    throw v0
.end method

.method public getDatabase()Lcom/sleepycat/je/Database;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/sleepycat/je/Sequence;->db:Lcom/sleepycat/je/Database;

    return-object v0
.end method

.method public getKey()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/sleepycat/je/Sequence;->key:Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/Sequence;->copyEntry(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    return-object v0
.end method

.method public getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/SequenceStats;
    .locals 5
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 484
    if-nez p1, :cond_0

    .line 485
    sget-object p1, Lcom/sleepycat/je/StatsConfig;->DEFAULT:Lcom/sleepycat/je/StatsConfig;

    .line 488
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getFast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/sleepycat/je/Sequence;->db:Lcom/sleepycat/je/Database;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    .line 497
    .local v0, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    sget-object v1, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/Sequence;->readDataRequired(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/LockMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->close()V

    .line 500
    goto :goto_0

    .line 499
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->close()V

    throw v1

    .line 503
    .end local v0    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_1
    :goto_0
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Sequence"

    const-string v2, "Sequence statistics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .local v0, "stats":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_GETS:Lcom/sleepycat/je/utilint/StatDefinition;

    iget v3, p0, Lcom/sleepycat/je/Sequence;->nGets:I

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 506
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_CACHED_GETS:Lcom/sleepycat/je/utilint/StatDefinition;

    iget v3, p0, Lcom/sleepycat/je/Sequence;->nCachedGets:I

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 507
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_CACHE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    iget v3, p0, Lcom/sleepycat/je/Sequence;->cacheSize:I

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 508
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_STORED_VALUE:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v3, p0, Lcom/sleepycat/je/Sequence;->storedValue:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 509
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_CACHE_VALUE:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v3, p0, Lcom/sleepycat/je/Sequence;->cacheValue:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 510
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_CACHE_LAST:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v3, p0, Lcom/sleepycat/je/Sequence;->cacheLast:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 511
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_RANGE_MIN:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v3, p0, Lcom/sleepycat/je/Sequence;->rangeMin:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 512
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_RANGE_MAX:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v3, p0, Lcom/sleepycat/je/Sequence;->rangeMax:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 514
    new-instance v1, Lcom/sleepycat/je/SequenceStats;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/SequenceStats;-><init>(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 516
    .local v1, "seqStats":Lcom/sleepycat/je/SequenceStats;
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 517
    const/4 v2, 0x0

    iput v2, p0, Lcom/sleepycat/je/Sequence;->nGets:I

    .line 518
    iput v2, p0, Lcom/sleepycat/je/Sequence;->nCachedGets:I

    .line 521
    :cond_2
    return-object v1
.end method
