.class public Lcom/sleepycat/je/SecondaryDatabase;
.super Lcom/sleepycat/je/Database;
.source "SecondaryDatabase.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile isFullyPopulated:Z

.field private final primaryDatabase:Lcom/sleepycat/je/Database;

.field private secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    nop

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/SecondaryDatabase;->EMPTY_SET:Ljava/util/Set;

    .line 140
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/SecondaryConfig;Lcom/sleepycat/je/Database;)V
    .locals 4
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "secConfig"    # Lcom/sleepycat/je/SecondaryConfig;
    .param p3, "primaryDatabase"    # Lcom/sleepycat/je/Database;

    .line 156
    invoke-direct {p0, p1}, Lcom/sleepycat/je/Database;-><init>(Lcom/sleepycat/je/Environment;)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->isFullyPopulated:Z

    .line 157
    iput-object p3, p0, Lcom/sleepycat/je/SecondaryDatabase;->primaryDatabase:Lcom/sleepycat/je/Database;

    .line 158
    const-string v0, "Exactly one must be non-null: PrimaryDatabase or SecondaryAssociation"

    if-nez p3, :cond_2

    .line 159
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getSecondaryAssociation()Lcom/sleepycat/je/SecondaryAssociation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getAllowPopulate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AllowPopulate must be false when a SecondaryAssociation is configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_2
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getSecondaryAssociation()Lcom/sleepycat/je/SecondaryAssociation;

    move-result-object v1

    if-nez v1, :cond_11

    .line 175
    invoke-virtual {p3}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 176
    iget-object v0, p3, Lcom/sleepycat/je/Database;->configuration:Lcom/sleepycat/je/DatabaseConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getSortedDuplicates()Z

    move-result v0

    if-nez v0, :cond_10

    .line 181
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 182
    invoke-virtual {p3}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    if-ne v0, v1, :cond_f

    .line 187
    iget-object v0, p3, Lcom/sleepycat/je/Database;->configuration:Lcom/sleepycat/je/DatabaseConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    .line 188
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getKeyCreator()Lcom/sleepycat/je/SecondaryKeyCreator;

    move-result-object v0

    if-nez v0, :cond_4

    .line 189
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getMultiKeyCreator()Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 190
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SecondaryConfig.getKeyCreator()/getMultiKeyCreator() may be null only if the primary database is read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getKeyCreator()Lcom/sleepycat/je/SecondaryKeyCreator;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 196
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getMultiKeyCreator()Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 197
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "secConfig.getKeyCreator() and getMultiKeyCreator() may not both be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_6
    :goto_1
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyNullifier()Lcom/sleepycat/je/ForeignKeyNullifier;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 202
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getForeignMultiKeyNullifier()Lcom/sleepycat/je/ForeignMultiKeyNullifier;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 203
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "secConfig.getForeignKeyNullifier() and getForeignMultiKeyNullifier() may not both be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_8
    :goto_2
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyDeleteAction()Lcom/sleepycat/je/ForeignKeyDeleteAction;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/ForeignKeyDeleteAction;->NULLIFY:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    if-ne v0, v1, :cond_a

    .line 209
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyNullifier()Lcom/sleepycat/je/ForeignKeyNullifier;

    move-result-object v0

    if-nez v0, :cond_a

    .line 210
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getForeignMultiKeyNullifier()Lcom/sleepycat/je/ForeignMultiKeyNullifier;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 211
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ForeignKeyNullifier or ForeignMultiKeyNullifier must be non-null when ForeignKeyDeleteAction is NULLIFY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_a
    :goto_3
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyNullifier()Lcom/sleepycat/je/ForeignKeyNullifier;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 216
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getMultiKeyCreator()Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_4

    .line 217
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ForeignKeyNullifier may not be used with SecondaryMultiKeyCreator -- use ForeignMultiKeyNullifier instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_c
    :goto_4
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyDatabase()Lcom/sleepycat/je/Database;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 223
    invoke-virtual {p2}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyDatabase()Lcom/sleepycat/je/Database;

    move-result-object v0

    .line 224
    .local v0, "foreignDb":Lcom/sleepycat/je/Database;
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_5

    .line 225
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicates must not be allowed for a foreign key  database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    .end local v0    # "foreignDb":Lcom/sleepycat/je/Database;
    :cond_e
    :goto_5
    return-void

    .line 183
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary and secondary databases must be in the same environment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicates not allowed for a primary database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    invoke-virtual {p3}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkReadable()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 3

    .line 1817
    invoke-virtual {p0}, Lcom/sleepycat/je/SecondaryDatabase;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1818
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    iget-boolean v1, p0, Lcom/sleepycat/je/SecondaryDatabase;->isFullyPopulated:Z

    if-eqz v1, :cond_0

    .line 1822
    return-object v0

    .line 1819
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Incremental population is currently enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private deleteKey(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;J)V
    .locals 18
    .param p1, "secCursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "priDb"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "priCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p4, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "oldSecKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p7, "oldExpirationTime"    # J

    .line 1457
    sget-object v3, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    sget-object v5, Lcom/sleepycat/je/dbi/SearchMode;->BOTH:Lcom/sleepycat/je/dbi/SearchMode;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    move-object/from16 v4, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/Cursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1461
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v0, :cond_0

    .line 1462
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getRepContext()Lcom/sleepycat/je/log/ReplicationContext;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    invoke-virtual {v2, v1, v3}, Lcom/sleepycat/je/Cursor;->deleteInternal(Lcom/sleepycat/je/log/ReplicationContext;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    .line 1463
    return-void

    .line 1466
    :cond_0
    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v1, p0

    iget-boolean v4, v1, Lcom/sleepycat/je/SecondaryDatabase;->isFullyPopulated:Z

    if-eqz v4, :cond_2

    .line 1467
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    .line 1468
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTtlClockTolerance()I

    move-result v5

    int-to-long v5, v5

    .line 1467
    move-wide/from16 v14, p7

    invoke-virtual {v4, v14, v15, v5, v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->expiresWithin(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1470
    :cond_1
    new-instance v17, Lcom/sleepycat/je/SecondaryIntegrityException;

    .line 1471
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Cursor;->getCursorImpl()Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v6

    .line 1474
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1475
    invoke-static/range {p3 .. p3}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLsn(Lcom/sleepycat/je/dbi/CursorImpl;)J

    move-result-wide v12

    .line 1476
    move-object/from16 v11, p2

    move-object/from16 v10, p4

    invoke-static {v11, v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionStatus(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v16

    const-string v7, "Secondary is corrupt: the primary record contains a key that is not present in the secondary"

    move-object/from16 v4, v17

    move-object/from16 v5, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-wide/from16 v14, p7

    invoke-direct/range {v4 .. v16}, Lcom/sleepycat/je/SecondaryIntegrityException;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V

    throw v17

    .line 1478
    :cond_2
    :goto_0
    return-void
.end method

.method private deleteObsoletePrimaryKeysInternal(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;I)Z
    .locals 9
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "batchSize"    # I

    .line 548
    sget-object v7, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    .line 550
    .local v7, "scanMode":Lcom/sleepycat/je/LockMode;
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 552
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/Cursor;->position(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .local v0, "searchResult":Lcom/sleepycat/je/OperationResult;
    goto :goto_0

    .line 555
    .end local v0    # "searchResult":Lcom/sleepycat/je/OperationResult;
    :cond_0
    const/4 v4, 0x0

    sget-object v5, Lcom/sleepycat/je/dbi/SearchMode;->BOTH_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/Cursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v8

    .line 557
    .local v8, "searchResult":Lcom/sleepycat/je/OperationResult;
    if-nez v8, :cond_1

    .line 558
    const/4 v4, 0x0

    sget-object v5, Lcom/sleepycat/je/dbi/SearchMode;->SET_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/Cursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .end local v8    # "searchResult":Lcom/sleepycat/je/OperationResult;
    .restart local v0    # "searchResult":Lcom/sleepycat/je/OperationResult;
    goto :goto_0

    .line 557
    .end local v0    # "searchResult":Lcom/sleepycat/je/OperationResult;
    .restart local v8    # "searchResult":Lcom/sleepycat/je/OperationResult;
    :cond_1
    move-object v0, v8

    .line 562
    .end local v8    # "searchResult":Lcom/sleepycat/je/OperationResult;
    .restart local v0    # "searchResult":Lcom/sleepycat/je/OperationResult;
    :goto_0
    const/4 v1, 0x0

    move-object v6, v0

    .line 563
    .end local v0    # "searchResult":Lcom/sleepycat/je/OperationResult;
    .local v1, "nProcessed":I
    .local v6, "searchResult":Lcom/sleepycat/je/OperationResult;
    :goto_1
    if-eqz v6, :cond_4

    .line 564
    if-lt v1, p4, :cond_2

    .line 565
    const/4 v0, 0x1

    return v0

    .line 567
    :cond_2
    add-int/lit8 v8, v1, 0x1

    .line 568
    .end local v1    # "nProcessed":I
    .local v8, "nProcessed":I
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->secAssoc:Lcom/sleepycat/je/SecondaryAssociation;

    invoke-interface {v0, p3}, Lcom/sleepycat/je/SecondaryAssociation;->getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;

    move-result-object v0

    if-nez v0, :cond_3

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sleepycat/je/SecondaryDatabase;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getRepContext()Lcom/sleepycat/je/log/ReplicationContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/Cursor;->deleteNoNotify(Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    .line 571
    :cond_3
    const/4 v4, 0x0

    sget-object v5, Lcom/sleepycat/je/dbi/GetMode;->NEXT:Lcom/sleepycat/je/dbi/GetMode;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/Cursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v6

    move v1, v8

    goto :goto_1

    .line 574
    .end local v8    # "nProcessed":I
    .restart local v1    # "nProcessed":I
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private init(Lcom/sleepycat/je/txn/Locker;)V
    .locals 29
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 287
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "SecondaryDatabase open"

    invoke-virtual {v15, v0, v1}, Lcom/sleepycat/je/SecondaryDatabase;->trace(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setKnownSecondary()V

    .line 290
    iget-object v0, v15, Lcom/sleepycat/je/SecondaryDatabase;->configuration:Lcom/sleepycat/je/DatabaseConfig;

    check-cast v0, Lcom/sleepycat/je/SecondaryConfig;

    iput-object v0, v15, Lcom/sleepycat/je/SecondaryDatabase;->secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;

    .line 292
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyDatabase()Lcom/sleepycat/je/Database;

    move-result-object v14

    .line 293
    .local v14, "foreignDb":Lcom/sleepycat/je/Database;
    if-eqz v14, :cond_0

    .line 294
    iget-object v0, v14, Lcom/sleepycat/je/Database;->foreignKeySecondaries:Ljava/util/Collection;

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_0
    iget-object v0, v15, Lcom/sleepycat/je/SecondaryDatabase;->secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getAllowPopulate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    return-void

    .line 301
    :cond_1
    const/4 v1, 0x0

    .line 302
    .local v1, "secCursor":Lcom/sleepycat/je/Cursor;
    const/4 v2, 0x0

    .line 304
    .local v2, "priCursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/Cursor;

    const/4 v3, 0x0

    invoke-direct {v0, v15, v13, v3}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v16, v0

    .line 306
    .end local v1    # "secCursor":Lcom/sleepycat/je/Cursor;
    .local v16, "secCursor":Lcom/sleepycat/je/Cursor;
    :try_start_1
    new-instance v17, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct/range {v17 .. v17}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 307
    .local v17, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v18, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct/range {v18 .. v18}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 309
    .local v18, "data":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v19, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v16 .. v21}, Lcom/sleepycat/je/Cursor;->position(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 312
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v0, :cond_3

    .line 337
    nop

    .line 338
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/Cursor;->close()V

    .line 340
    if-eqz v2, :cond_2

    .line 341
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    .line 313
    :cond_2
    return-void

    .line 317
    :cond_3
    :try_start_2
    new-instance v1, Lcom/sleepycat/je/Cursor;

    iget-object v4, v15, Lcom/sleepycat/je/SecondaryDatabase;->primaryDatabase:Lcom/sleepycat/je/Database;

    invoke-direct {v1, v4, v13, v3}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v19, v1

    .line 319
    .end local v2    # "priCursor":Lcom/sleepycat/je/Cursor;
    .local v19, "priCursor":Lcom/sleepycat/je/Cursor;
    :try_start_3
    sget-object v22, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v20, v17

    move-object/from16 v21, v18

    invoke-virtual/range {v19 .. v24}, Lcom/sleepycat/je/Cursor;->position(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    move-object v0, v1

    .line 322
    :goto_0
    if-eqz v0, :cond_4

    .line 324
    iget-object v1, v15, Lcom/sleepycat/je/SecondaryDatabase;->primaryDatabase:Lcom/sleepycat/je/Database;

    .line 325
    invoke-virtual {v1}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    .line 326
    invoke-virtual/range {v19 .. v19}, Lcom/sleepycat/je/Cursor;->getCursorImpl()Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 329
    invoke-virtual {v0}, Lcom/sleepycat/je/OperationResult;->getExpirationTime()J

    move-result-wide v10

    const/4 v12, 0x0

    .line 331
    invoke-virtual {v0}, Lcom/sleepycat/je/OperationResult;->getExpirationTime()J

    move-result-wide v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    move-object/from16 v22, v14

    .end local v14    # "foreignDb":Lcom/sleepycat/je/Database;
    .local v22, "foreignDb":Lcom/sleepycat/je/Database;
    move-wide/from16 v13, v20

    :try_start_4
    invoke-virtual/range {v1 .. v14}, Lcom/sleepycat/je/SecondaryDatabase;->updateSecondary(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;JZJ)I

    .line 333
    sget-object v26, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    const/16 v27, 0x0

    sget-object v28, Lcom/sleepycat/je/dbi/GetMode;->NEXT:Lcom/sleepycat/je/dbi/GetMode;

    move-object/from16 v23, v19

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    invoke-virtual/range {v23 .. v28}, Lcom/sleepycat/je/Cursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    move-object/from16 v13, p1

    move-object/from16 v14, v22

    goto :goto_0

    .line 337
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v17    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v18    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_0
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    goto :goto_1

    .line 322
    .end local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v0    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v14    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v17    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v18    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :cond_4
    move-object/from16 v22, v14

    .line 337
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v14    # "foreignDb":Lcom/sleepycat/je/Database;
    .end local v17    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v18    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    nop

    .line 338
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/Cursor;->close()V

    .line 340
    nop

    .line 341
    invoke-virtual/range {v19 .. v19}, Lcom/sleepycat/je/Cursor;->close()V

    .line 344
    return-void

    .line 337
    .end local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v14    # "foreignDb":Lcom/sleepycat/je/Database;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v14

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    .end local v14    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    goto :goto_1

    .end local v19    # "priCursor":Lcom/sleepycat/je/Cursor;
    .end local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v2    # "priCursor":Lcom/sleepycat/je/Cursor;
    .restart local v14    # "foreignDb":Lcom/sleepycat/je/Database;
    :catchall_2
    move-exception v0

    move-object/from16 v22, v14

    move-object/from16 v1, v16

    .end local v14    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    goto :goto_1

    .end local v16    # "secCursor":Lcom/sleepycat/je/Cursor;
    .end local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v1    # "secCursor":Lcom/sleepycat/je/Cursor;
    .restart local v14    # "foreignDb":Lcom/sleepycat/je/Database;
    :catchall_3
    move-exception v0

    move-object/from16 v22, v14

    .end local v14    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    :goto_1
    if-eqz v1, :cond_5

    .line 338
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 340
    :cond_5
    if-eqz v2, :cond_6

    .line 341
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private insertKey(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;IZJ)V
    .locals 23
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p3, "priDb"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p4, "priCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p5, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "newSecKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p7, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p8, "expiration"    # I
    .param p9, "expirationInHours"    # Z
    .param p10, "oldExpirationTime"    # J

    .line 1495
    move-object/from16 v14, p0

    move-object/from16 v15, p3

    move-object/from16 v13, p5

    iget-object v0, v14, Lcom/sleepycat/je/SecondaryDatabase;->secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;

    .line 1496
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyDatabase()Lcom/sleepycat/je/Database;

    move-result-object v12

    .line 1498
    .local v12, "foreignDb":Lcom/sleepycat/je/Database;
    if-eqz v12, :cond_1

    .line 1500
    new-instance v0, Lcom/sleepycat/je/Cursor;

    const/4 v1, 0x0

    move-object/from16 v10, p1

    invoke-direct {v0, v12, v10, v1}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V

    move-object/from16 v16, v0

    .line 1503
    .local v16, "foreignCursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    new-instance v18, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct/range {v18 .. v18}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1505
    .local v18, "tmpData":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v19, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    sget-object v21, Lcom/sleepycat/je/dbi/SearchMode;->SET:Lcom/sleepycat/je/dbi/SearchMode;

    const/16 v22, 0x1

    move-object/from16 v17, p6

    move-object/from16 v20, p7

    invoke-virtual/range {v16 .. v22}, Lcom/sleepycat/je/Cursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1509
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v0, :cond_0

    .line 1520
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v18    # "tmpData":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/Cursor;->close()V

    move-object/from16 v22, v12

    goto :goto_2

    .line 1510
    .restart local v0    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v18    # "tmpData":Lcom/sleepycat/je/DatabaseEntry;
    :cond_0
    :try_start_1
    new-instance v17, Lcom/sleepycat/je/ForeignConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Secondary "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1512
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " foreign key not allowed: it is not present in the foreign database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1515
    invoke-virtual {v12}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1516
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1517
    invoke-static/range {p4 .. p4}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLsn(Lcom/sleepycat/je/dbi/CursorImpl;)J

    move-result-wide v8

    .line 1518
    invoke-static {v15, v13}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionStatus(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    move-wide/from16 v10, p10

    move-object/from16 v22, v12

    .end local v12    # "foreignDb":Lcom/sleepycat/je/Database;
    .local v22, "foreignDb":Lcom/sleepycat/je/Database;
    move-object/from16 v12, v19

    :try_start_2
    invoke-direct/range {v1 .. v12}, Lcom/sleepycat/je/ForeignConstraintException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V

    .end local v16    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .end local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p3    # "priDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local p5    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p6    # "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p7    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p8    # "expiration":I
    .end local p9    # "expirationInHours":Z
    .end local p10    # "oldExpirationTime":J
    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1500
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v18    # "tmpData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v16    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .restart local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p3    # "priDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local p5    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p6    # "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p7    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p8    # "expiration":I
    .restart local p9    # "expirationInHours":Z
    .restart local p10    # "oldExpirationTime":J
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    .end local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v12    # "foreignDb":Lcom/sleepycat/je/Database;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v12

    move-object v1, v0

    .end local v12    # "foreignDb":Lcom/sleepycat/je/Database;
    .end local v16    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p3    # "priDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local p5    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p6    # "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p7    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p8    # "expiration":I
    .end local p9    # "expirationInHours":Z
    .end local p10    # "oldExpirationTime":J
    :goto_0
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1520
    .restart local v16    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .restart local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p3    # "priDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p4    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local p5    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p6    # "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p7    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p8    # "expiration":I
    .restart local p9    # "expirationInHours":Z
    .restart local p10    # "oldExpirationTime":J
    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    .line 1498
    .end local v16    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .end local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v12    # "foreignDb":Lcom/sleepycat/je/Database;
    :cond_1
    move-object/from16 v22, v12

    .line 1523
    .end local v12    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v22    # "foreignDb":Lcom/sleepycat/je/Database;
    :goto_2
    new-instance v0, Lcom/sleepycat/je/dbi/ExpirationInfo;

    const/4 v1, 0x0

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct {v0, v11, v12, v1}, Lcom/sleepycat/je/dbi/ExpirationInfo;-><init>(IZZ)V

    move-object/from16 v20, v0

    .line 1527
    .local v20, "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    iget-object v0, v14, Lcom/sleepycat/je/SecondaryDatabase;->configuration:Lcom/sleepycat/je/DatabaseConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getSortedDuplicates()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1529
    sget-object v21, Lcom/sleepycat/je/dbi/PutMode;->NO_DUP_DATA:Lcom/sleepycat/je/dbi/PutMode;

    move-object/from16 v16, p2

    move-object/from16 v17, p6

    move-object/from16 v18, p5

    move-object/from16 v19, p7

    invoke-virtual/range {v16 .. v21}, Lcom/sleepycat/je/Cursor;->putInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1532
    .restart local v0    # "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_3

    iget-boolean v1, v14, Lcom/sleepycat/je/SecondaryDatabase;->isFullyPopulated:Z

    if-nez v1, :cond_2

    goto :goto_3

    .line 1533
    :cond_2
    new-instance v16, Lcom/sleepycat/je/SecondaryIntegrityException;

    .line 1535
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1536
    invoke-static/range {p4 .. p4}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLsn(Lcom/sleepycat/je/dbi/CursorImpl;)J

    move-result-wide v9

    .line 1537
    invoke-static {v15, v13}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionStatus(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v17

    const-string v4, "Secondary/primary record already present"

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    move-wide/from16 v11, p10

    move-object/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/sleepycat/je/SecondaryIntegrityException;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V

    throw v16

    .line 1539
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_3
    :goto_3
    goto :goto_4

    .line 1540
    :cond_4
    sget-object v6, Lcom/sleepycat/je/dbi/PutMode;->NO_OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, v20

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/Cursor;->putInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1543
    .restart local v0    # "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_6

    iget-boolean v1, v14, Lcom/sleepycat/je/SecondaryDatabase;->isFullyPopulated:Z

    if-nez v1, :cond_5

    goto :goto_4

    .line 1544
    :cond_5
    new-instance v13, Lcom/sleepycat/je/UniqueConstraintException;

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1547
    invoke-static/range {p4 .. p4}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLsn(Lcom/sleepycat/je/dbi/CursorImpl;)J

    move-result-wide v8

    .line 1548
    move-object/from16 v12, p5

    invoke-static {v15, v12}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionStatus(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v16

    const-string v3, "Unique secondary key is already present"

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    move-wide/from16 v10, p10

    move-object/from16 v12, v16

    invoke-direct/range {v1 .. v12}, Lcom/sleepycat/je/UniqueConstraintException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V

    throw v13

    .line 1551
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_6
    :goto_4
    return-void
.end method

.method static needOldDataForDelete(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/SecondaryDatabase;",
            ">;)Z"
        }
    .end annotation

    .line 1768
    .local p0, "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1769
    return v0

    .line 1771
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/SecondaryDatabase;

    .line 1772
    .local v2, "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    iget-object v3, v2, Lcom/sleepycat/je/SecondaryDatabase;->secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;

    invoke-virtual {v3}, Lcom/sleepycat/je/SecondaryConfig;->getExtractFromPrimaryKeyOnly()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1773
    const/4 v0, 0x1

    return v0

    .line 1775
    .end local v2    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    :cond_1
    goto :goto_0

    .line 1776
    :cond_2
    return v0
.end method

.method static needOldDataForUpdate(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/SecondaryDatabase;",
            ">;)Z"
        }
    .end annotation

    .line 1749
    .local p0, "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1750
    return v0

    .line 1752
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/SecondaryDatabase;

    .line 1753
    .local v2, "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    invoke-virtual {v2}, Lcom/sleepycat/je/SecondaryDatabase;->updateMayChangeSecondary()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1754
    const/4 v0, 0x1

    return v0

    .line 1756
    .end local v2    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    :cond_1
    goto :goto_0

    .line 1757
    :cond_2
    return v0
.end method

.method static notAllowedException()Ljava/lang/UnsupportedOperationException;
    .locals 2

    .line 1827
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not allowed on a secondary"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private updateExpiration(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;IZJ)V
    .locals 21
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "priDb"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "priCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p4, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "secKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p7, "expiration"    # I
    .param p8, "expirationInHours"    # Z
    .param p9, "oldExpirationTime"    # J

    .line 1569
    move-object/from16 v13, p0

    new-instance v0, Lcom/sleepycat/je/dbi/ExpirationInfo;

    const/4 v1, 0x1

    move/from16 v15, p7

    move/from16 v14, p8

    invoke-direct {v0, v15, v14, v1}, Lcom/sleepycat/je/dbi/ExpirationInfo;-><init>(IZZ)V

    move-object/from16 v18, v0

    .line 1572
    .local v18, "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v12

    .line 1574
    .local v12, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    iget-boolean v0, v13, Lcom/sleepycat/je/SecondaryDatabase;->isFullyPopulated:Z

    if-eqz v0, :cond_3

    .line 1576
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTtlClockTolerance()I

    move-result v0

    int-to-long v0, v0

    .line 1575
    move-wide/from16 v10, p9

    invoke-virtual {v12, v10, v11, v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->expiresWithin(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1578
    sget-object v4, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    iget-object v0, v13, Lcom/sleepycat/je/SecondaryDatabase;->configuration:Lcom/sleepycat/je/DatabaseConfig;

    .line 1580
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getSortedDuplicates()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/dbi/SearchMode;->BOTH:Lcom/sleepycat/je/dbi/SearchMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/dbi/SearchMode;->SET:Lcom/sleepycat/je/dbi/SearchMode;

    :goto_0
    move-object v6, v0

    const/4 v7, 0x0

    .line 1578
    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/Cursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v16

    .line 1583
    .local v16, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v16, :cond_1

    .line 1593
    sget-object v0, Lcom/sleepycat/je/dbi/PutMode;->CURRENT:Lcom/sleepycat/je/dbi/PutMode;

    .line 1594
    .end local v16    # "result":Lcom/sleepycat/je/OperationResult;
    .local v0, "putMode":Lcom/sleepycat/je/dbi/PutMode;
    move-object/from16 v20, v12

    goto :goto_2

    .line 1584
    .end local v0    # "putMode":Lcom/sleepycat/je/dbi/PutMode;
    .restart local v16    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_1
    new-instance v17, Lcom/sleepycat/je/SecondaryIntegrityException;

    .line 1585
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Cursor;->getCursorImpl()Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    .line 1588
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1589
    invoke-static/range {p3 .. p3}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLsn(Lcom/sleepycat/je/dbi/CursorImpl;)J

    move-result-wide v8

    .line 1590
    move-object/from16 v7, p2

    move-object/from16 v6, p4

    invoke-static {v7, v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionStatus(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v19

    const-string v3, "Secondary is corrupt: the primary record contains a key that is not present in the secondary"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-wide/from16 v10, p9

    move-object/from16 v20, v12

    .end local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v20, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    move-object/from16 v12, v19

    invoke-direct/range {v0 .. v12}, Lcom/sleepycat/je/SecondaryIntegrityException;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V

    throw v17

    .line 1575
    .end local v16    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v20    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_2
    move-object/from16 v20, v12

    .end local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v20    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    goto :goto_1

    .line 1574
    .end local v20    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_3
    move-object/from16 v20, v12

    .line 1595
    .end local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v20    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :goto_1
    sget-object v0, Lcom/sleepycat/je/dbi/PutMode;->OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    .line 1598
    .restart local v0    # "putMode":Lcom/sleepycat/je/dbi/PutMode;
    :goto_2
    move-object/from16 v14, p1

    move-object/from16 v15, p5

    move-object/from16 v16, p4

    move-object/from16 v17, p6

    move-object/from16 v19, v0

    invoke-virtual/range {v14 .. v19}, Lcom/sleepycat/je/Cursor;->putInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;)Lcom/sleepycat/je/OperationResult;

    .line 1599
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 368
    :try_start_0
    invoke-super {p0}, Lcom/sleepycat/je/Database;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    .line 367
    .end local p0    # "this":Lcom/sleepycat/je/SecondaryDatabase;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 22
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "options"    # Lcom/sleepycat/je/WriteOptions;

    .line 732
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->checkReadable()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v9

    .line 735
    .local v9, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "SecondaryDatabase.delete"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/SecondaryDatabase;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V

    .line 737
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 738
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/WriteOptions;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v6, v1

    .line 740
    .local v6, "cacheMode":Lcom/sleepycat/je/CacheMode;
    iget-object v1, v8, Lcom/sleepycat/je/SecondaryDatabase;->envHandle:Lcom/sleepycat/je/Environment;

    .line 743
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v2

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->isTransactional()Z

    move-result v3

    .line 745
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v4

    .line 740
    move-object/from16 v7, p1

    invoke-static {v1, v7, v2, v3, v4}, Lcom/sleepycat/je/txn/LockerFactory;->getWritableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;ZZZ)Lcom/sleepycat/je/txn/Locker;

    move-result-object v5

    .line 747
    .local v5, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v1, 0x0

    .line 749
    .local v1, "commitResult":Lcom/sleepycat/je/OperationResult;
    const/16 v17, 0x1

    const/16 v18, 0x0

    :try_start_0
    invoke-virtual {v5}, Lcom/sleepycat/je/txn/Locker;->isSerializableIsolation()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-eqz v2, :cond_1

    :try_start_1
    sget-object v2, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 829
    :catchall_0
    move-exception v0

    move-object v4, v5

    move-object/from16 v21, v6

    goto/16 :goto_a

    .line 825
    :catch_0
    move-exception v0

    move-object v4, v5

    move-object/from16 v21, v6

    goto/16 :goto_9

    .line 749
    :cond_1
    :try_start_2
    sget-object v2, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    :goto_1
    move-object v4, v2

    .line 753
    .local v4, "lockMode":Lcom/sleepycat/je/LockMode;
    new-instance v2, Lcom/sleepycat/je/Cursor;

    invoke-direct {v2, v8, v5, v0}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object v3, v2

    .line 756
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_3
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->excludeFromOpStats()V

    .line 760
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 762
    .local v2, "pKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v15, Lcom/sleepycat/je/dbi/SearchMode;->SET:Lcom/sleepycat/je/dbi/SearchMode;

    const/16 v16, 0x0

    move-object v10, v3

    move-object/from16 v11, p2

    move-object v12, v2

    move-object v13, v4

    move-object v14, v6

    invoke-virtual/range {v10 .. v16}, Lcom/sleepycat/je/Cursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v10

    move-object/from16 v16, v10

    .line 770
    .local v16, "searchResult":Lcom/sleepycat/je/OperationResult;
    :goto_2
    if-eqz v16, :cond_7

    .line 771
    invoke-virtual {v8, v2}, Lcom/sleepycat/je/SecondaryDatabase;->getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object v15, v10

    .line 773
    .local v15, "primaryDb":Lcom/sleepycat/je/Database;
    if-nez v15, :cond_2

    .line 776
    nop

    .line 777
    :try_start_4
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getRepContext()Lcom/sleepycat/je/log/ReplicationContext;

    move-result-object v10

    .line 776
    invoke-virtual {v3, v0, v10}, Lcom/sleepycat/je/Cursor;->deleteNoNotify(Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v19, v2

    move-object v14, v3

    move-object/from16 v20, v4

    move-object v13, v5

    move-object/from16 v21, v6

    goto/16 :goto_4

    .line 753
    .end local v2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v16    # "searchResult":Lcom/sleepycat/je/OperationResult;
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v20, v4

    move-object v4, v5

    move-object/from16 v21, v6

    move-object v5, v3

    goto/16 :goto_7

    .line 780
    .restart local v2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "primaryDb":Lcom/sleepycat/je/Database;
    .restart local v16    # "searchResult":Lcom/sleepycat/je/OperationResult;
    :cond_2
    :try_start_5
    invoke-virtual {v15, v5, v2, v6}, Lcom/sleepycat/je/Database;->deleteInternal(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 783
    .end local v1    # "commitResult":Lcom/sleepycat/je/OperationResult;
    .local v10, "commitResult":Lcom/sleepycat/je/OperationResult;
    if-nez v10, :cond_6

    .line 784
    :try_start_6
    sget-object v1, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    if-eq v4, v1, :cond_4

    .line 793
    sget-object v1, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v3, v1, v0}, Lcom/sleepycat/je/Cursor;->checkCurrent(Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v19, v2

    move-object v14, v3

    move-object/from16 v20, v4

    move-object v13, v5

    move-object/from16 v21, v6

    goto/16 :goto_3

    .line 797
    :cond_3
    nop

    .line 799
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/OperationResult;->getExpirationTime()J

    move-result-wide v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 797
    move-object/from16 v1, p0

    move-object/from16 v19, v2

    .end local v2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v19, "pKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object v2, v5

    move-object v14, v3

    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursor":Lcom/sleepycat/je/Cursor;
    move-object v3, v15

    move-object/from16 v20, v4

    .end local v4    # "lockMode":Lcom/sleepycat/je/LockMode;
    .local v20, "lockMode":Lcom/sleepycat/je/LockMode;
    move-object/from16 v4, p2

    move-object v13, v5

    .end local v5    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v13, "locker":Lcom/sleepycat/je/txn/Locker;
    move-object/from16 v5, v19

    move-object/from16 v21, v6

    .end local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .local v21, "cacheMode":Lcom/sleepycat/je/CacheMode;
    move-wide v6, v11

    :try_start_7
    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/SecondaryDatabase;->secondaryRefersToMissingPrimaryKey(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;J)Lcom/sleepycat/je/SecondaryIntegrityException;

    move-result-object v0

    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v10    # "commitResult":Lcom/sleepycat/je/OperationResult;
    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v20    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "options":Lcom/sleepycat/je/WriteOptions;
    throw v0

    .line 802
    .end local v19    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v4    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v5    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v10    # "commitResult":Lcom/sleepycat/je/OperationResult;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "options":Lcom/sleepycat/je/WriteOptions;
    :cond_4
    move-object/from16 v19, v2

    move-object v14, v3

    move-object/from16 v20, v4

    move-object v13, v5

    move-object/from16 v21, v6

    .end local v2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v4    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v5    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v19    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    iget-object v1, v14, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/CursorImpl;->isProbablyExpired()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 805
    :cond_5
    nop

    .line 807
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/OperationResult;->getExpirationTime()J

    move-result-wide v6

    .line 805
    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v15

    move-object/from16 v4, p2

    move-object/from16 v5, v19

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/SecondaryDatabase;->secondaryRefersToMissingPrimaryKey(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;J)Lcom/sleepycat/je/SecondaryIntegrityException;

    move-result-object v0

    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v10    # "commitResult":Lcom/sleepycat/je/OperationResult;
    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v20    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "options":Lcom/sleepycat/je/WriteOptions;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 753
    .end local v15    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v16    # "searchResult":Lcom/sleepycat/je/OperationResult;
    .end local v19    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v10    # "commitResult":Lcom/sleepycat/je/OperationResult;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v20    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "options":Lcom/sleepycat/je/WriteOptions;
    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v1, v10

    move-object v4, v13

    move-object v5, v14

    goto/16 :goto_7

    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v20    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v4    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v5    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_3
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object v2, v0

    move-object v4, v5

    move-object v1, v10

    move-object v5, v3

    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v4    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v5    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v20    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    goto/16 :goto_7

    .line 783
    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v20    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local v2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v4    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v5    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local v15    # "primaryDb":Lcom/sleepycat/je/Database;
    .restart local v16    # "searchResult":Lcom/sleepycat/je/OperationResult;
    :cond_6
    move-object/from16 v19, v2

    move-object v14, v3

    move-object/from16 v20, v4

    move-object v13, v5

    move-object/from16 v21, v6

    .line 813
    .end local v2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v4    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v5    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v19    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :goto_3
    move-object v1, v10

    .end local v10    # "commitResult":Lcom/sleepycat/je/OperationResult;
    .restart local v1    # "commitResult":Lcom/sleepycat/je/OperationResult;
    :goto_4
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 815
    const/4 v2, 0x0

    sget-object v3, Lcom/sleepycat/je/dbi/GetMode;->NEXT_DUP:Lcom/sleepycat/je/dbi/GetMode;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v10, v14

    move-object/from16 v11, p2

    move-object/from16 v12, v19

    move-object v4, v13

    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v4, "locker":Lcom/sleepycat/je/txn/Locker;
    move-object/from16 v13, v20

    move-object v5, v14

    .end local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v5, "cursor":Lcom/sleepycat/je/Cursor;
    move-object v14, v2

    move-object v2, v15

    .end local v15    # "primaryDb":Lcom/sleepycat/je/Database;
    .local v2, "primaryDb":Lcom/sleepycat/je/Database;
    move-object v15, v3

    :try_start_9
    invoke-virtual/range {v10 .. v15}, Lcom/sleepycat/je/Cursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3

    move-object/from16 v16, v3

    .line 817
    .end local v2    # "primaryDb":Lcom/sleepycat/je/Database;
    move-object/from16 v7, p1

    move-object v3, v5

    move-object/from16 v2, v19

    move-object/from16 v6, v21

    move-object v5, v4

    move-object/from16 v4, v20

    goto/16 :goto_2

    .line 753
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v16    # "searchResult":Lcom/sleepycat/je/OperationResult;
    .end local v19    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_4
    move-exception v0

    move-object v4, v13

    move-object v5, v14

    move-object v2, v0

    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    goto :goto_7

    .line 819
    .end local v20    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .local v2, "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v4, "lockMode":Lcom/sleepycat/je/LockMode;
    .local v5, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local v16    # "searchResult":Lcom/sleepycat/je/OperationResult;
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object v4, v5

    move-object/from16 v21, v6

    move-object v5, v3

    .end local v2    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .local v4, "locker":Lcom/sleepycat/je/txn/Locker;
    .local v5, "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v19    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    if-nez v1, :cond_8

    .line 820
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incDeleteFailOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_5

    .line 753
    .end local v16    # "searchResult":Lcom/sleepycat/je/OperationResult;
    .end local v19    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_5
    move-exception v0

    move-object v2, v0

    goto :goto_7

    .line 823
    .restart local v16    # "searchResult":Lcom/sleepycat/je/OperationResult;
    .restart local v19    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    :cond_8
    :goto_5
    nop

    .line 824
    :try_start_a
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 829
    if-eqz v1, :cond_9

    move/from16 v0, v17

    goto :goto_6

    :cond_9
    move/from16 v0, v18

    :goto_6
    invoke-virtual {v4, v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 823
    return-object v1

    .line 753
    .end local v16    # "searchResult":Lcom/sleepycat/je/OperationResult;
    .end local v19    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v4, "lockMode":Lcom/sleepycat/je/LockMode;
    .local v5, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_6
    move-exception v0

    move-object/from16 v20, v4

    move-object v4, v5

    move-object/from16 v21, v6

    move-object v5, v3

    move-object v2, v0

    .end local v1    # "commitResult":Lcom/sleepycat/je/OperationResult;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v4    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v5    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "options":Lcom/sleepycat/je/WriteOptions;
    :goto_7
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 824
    .restart local v1    # "commitResult":Lcom/sleepycat/je/OperationResult;
    .local v4, "locker":Lcom/sleepycat/je/txn/Locker;
    .local v5, "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v20    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "options":Lcom/sleepycat/je/WriteOptions;
    :catchall_7
    move-exception v0

    move-object v3, v0

    :try_start_c
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception v0

    move-object v6, v0

    :try_start_d
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "commitResult":Lcom/sleepycat/je/OperationResult;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "options":Lcom/sleepycat/je/WriteOptions;
    :goto_8
    throw v3
    :try_end_d
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 825
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v20    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v1    # "commitResult":Lcom/sleepycat/je/OperationResult;
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "options":Lcom/sleepycat/je/WriteOptions;
    :catch_1
    move-exception v0

    goto :goto_9

    .line 829
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .local v5, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_9
    move-exception v0

    move-object v4, v5

    move-object/from16 v21, v6

    .end local v5    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    goto :goto_a

    .line 825
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local v5    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catch_2
    move-exception v0

    move-object v4, v5

    move-object/from16 v21, v6

    .line 826
    .end local v5    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .local v0, "E":Ljava/lang/Error;
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :goto_9
    :try_start_e
    iget-object v2, v8, Lcom/sleepycat/je/SecondaryDatabase;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 827
    nop

    .end local v1    # "commitResult":Lcom/sleepycat/je/OperationResult;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "options":Lcom/sleepycat/je/WriteOptions;
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 829
    .end local v0    # "E":Ljava/lang/Error;
    .restart local v1    # "commitResult":Lcom/sleepycat/je/OperationResult;
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v9    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v21    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "options":Lcom/sleepycat/je/WriteOptions;
    :catchall_a
    move-exception v0

    :goto_a
    if-eqz v1, :cond_a

    move/from16 v2, v17

    goto :goto_b

    :cond_a
    move/from16 v2, v18

    :goto_b
    invoke-virtual {v4, v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    throw v0
.end method

.method public delete(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 854
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/SecondaryDatabase;->delete(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 855
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public deleteObsoletePrimaryKeys(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;I)Z
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "batchSize"    # I

    .line 506
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/SecondaryDatabase;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 507
    const-string v0, "key"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullDbt(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;Z)V

    .line 508
    if-lez p3, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/sleepycat/je/SecondaryDatabase;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 513
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "deleteObsoletePrimaryKeys"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/je/SecondaryDatabase;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V

    .line 516
    iget-object v2, p0, Lcom/sleepycat/je/SecondaryDatabase;->envHandle:Lcom/sleepycat/je/Environment;

    .line 517
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v3

    .line 518
    invoke-virtual {p0}, Lcom/sleepycat/je/SecondaryDatabase;->isTransactional()Z

    move-result v4

    .line 519
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v5

    .line 516
    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v4, v5}, Lcom/sleepycat/je/txn/LockerFactory;->getWritableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;ZZZ)Lcom/sleepycat/je/txn/Locker;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .local v2, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_1
    new-instance v3, Lcom/sleepycat/je/Cursor;

    invoke-direct {v3, p0, v2, v6}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 523
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_2
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/sleepycat/je/SecondaryDatabase;->deleteObsoletePrimaryKeysInternal(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;I)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 525
    .local v4, "result":Z
    :try_start_3
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 526
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 527
    return v4

    .line 522
    .end local v4    # "result":Z
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v4

    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "batchSize":I
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 525
    .restart local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "batchSize":I
    :catchall_1
    move-exception v5

    :try_start_5
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v6

    :try_start_6
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "batchSize":I
    :goto_0
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 528
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "batchSize":I
    :catchall_3
    move-exception v3

    .line 529
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 530
    nop

    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "batchSize":I
    throw v3

    .line 509
    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "batchSize":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "batchSize must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "batchSize":I
    throw v0
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_0

    .line 532
    .restart local p1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "batchSize":I
    :catch_0
    move-exception v0

    .line 533
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/SecondaryDatabase;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 534
    throw v0
.end method

.method public endIncrementalPopulation()V
    .locals 1

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->isFullyPopulated:Z

    .line 437
    return-void
.end method

.method public get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 17
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "getType"    # Lcom/sleepycat/je/Get;
    .param p6, "options"    # Lcom/sleepycat/je/ReadOptions;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 961
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 962
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->checkReadable()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 964
    if-nez p6, :cond_0

    .line 965
    sget-object v0, Lcom/sleepycat/je/Cursor;->DEFAULT_READ_OPTIONS:Lcom/sleepycat/je/ReadOptions;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v0

    .end local p6    # "options":Lcom/sleepycat/je/ReadOptions;
    .local v0, "options":Lcom/sleepycat/je/ReadOptions;
    goto :goto_0

    .line 964
    .end local v0    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local p6    # "options":Lcom/sleepycat/je/ReadOptions;
    :cond_0
    move-object/from16 v11, p6

    .line 968
    .end local p6    # "options":Lcom/sleepycat/je/ReadOptions;
    .local v11, "options":Lcom/sleepycat/je/ReadOptions;
    :goto_0
    :try_start_1
    invoke-virtual {v11}, Lcom/sleepycat/je/ReadOptions;->getLockMode()Lcom/sleepycat/je/LockMode;

    move-result-object v0

    .line 970
    .local v0, "lockMode":Lcom/sleepycat/je/LockMode;
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "SecondaryDatabase.get"

    .line 971
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    .line 970
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/SecondaryDatabase;->trace(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V

    .line 974
    invoke-virtual {v9, v10, v0}, Lcom/sleepycat/je/SecondaryDatabase;->checkLockModeWithoutTxn(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/LockMode;)V

    .line 978
    sget-object v1, Lcom/sleepycat/je/LockMode;->READ_COMMITTED:Lcom/sleepycat/je/LockMode;

    if-ne v0, v1, :cond_1

    .line 979
    sget-object v1, Lcom/sleepycat/je/SecondaryDatabase;->READ_COMMITTED_CURSOR_CONFIG:Lcom/sleepycat/je/CursorConfig;

    .line 980
    .local v1, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    const/4 v0, 0x0

    move-object v8, v0

    move-object v12, v1

    goto :goto_1

    .line 982
    .end local v1    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    :cond_1
    sget-object v1, Lcom/sleepycat/je/SecondaryDatabase;->DEFAULT_CURSOR_CONFIG:Lcom/sleepycat/je/CursorConfig;

    move-object v8, v0

    move-object v12, v1

    .line 985
    .end local v0    # "lockMode":Lcom/sleepycat/je/LockMode;
    .local v8, "lockMode":Lcom/sleepycat/je/LockMode;
    .local v12, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    :goto_1
    const/4 v13, 0x0

    .line 987
    .local v13, "result":Lcom/sleepycat/je/OperationResult;
    nop

    .line 988
    invoke-virtual {v12}, Lcom/sleepycat/je/CursorConfig;->getReadCommitted()Z

    move-result v0

    .line 987
    invoke-static {v9, v10, v0}, Lcom/sleepycat/je/txn/LockerFactory;->getReadableLocker(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Transaction;Z)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    move-object v14, v0

    .line 991
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v15, 0x1

    const/16 v16, 0x0

    :try_start_2
    new-instance v1, Lcom/sleepycat/je/SecondaryCursor;

    invoke-direct {v1, v9, v14, v12}, Lcom/sleepycat/je/SecondaryCursor;-><init>(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 994
    .local v1, "cursor":Lcom/sleepycat/je/SecondaryCursor;
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v11

    move-object v7, v8

    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/SecondaryCursor;->getInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v13, v0

    .line 996
    :try_start_4
    invoke-virtual {v1}, Lcom/sleepycat/je/SecondaryCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 998
    .end local v1    # "cursor":Lcom/sleepycat/je/SecondaryCursor;
    if-eqz v13, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v15, v16

    :goto_2
    :try_start_5
    invoke-virtual {v14, v15}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_0

    .line 999
    nop

    .line 1001
    return-object v13

    .line 991
    .restart local v1    # "cursor":Lcom/sleepycat/je/SecondaryCursor;
    :catchall_0
    move-exception v0

    move-object v2, v0

    .end local v1    # "cursor":Lcom/sleepycat/je/SecondaryCursor;
    .end local v8    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .end local v12    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .end local v13    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v14    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p5    # "getType":Lcom/sleepycat/je/Get;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 996
    .restart local v1    # "cursor":Lcom/sleepycat/je/SecondaryCursor;
    .restart local v8    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local v12    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .restart local v13    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v14    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p5    # "getType":Lcom/sleepycat/je/Get;
    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v1}, Lcom/sleepycat/je/SecondaryCursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v8    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .end local v12    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .end local v13    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v14    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p5    # "getType":Lcom/sleepycat/je/Get;
    :goto_3
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 998
    .end local v1    # "cursor":Lcom/sleepycat/je/SecondaryCursor;
    .restart local v8    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local v12    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .restart local v13    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v14    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p5    # "getType":Lcom/sleepycat/je/Get;
    :catchall_3
    move-exception v0

    if-eqz v13, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v15, v16

    :goto_4
    :try_start_9
    invoke-virtual {v14, v15}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .end local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p5    # "getType":Lcom/sleepycat/je/Get;
    throw v0
    :try_end_9
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_0

    .line 1003
    .end local v8    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v12    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .end local v13    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v14    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "pKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p5    # "getType":Lcom/sleepycat/je/Get;
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local p6    # "options":Lcom/sleepycat/je/ReadOptions;
    :catch_1
    move-exception v0

    move-object/from16 v11, p6

    .line 1004
    .end local p6    # "options":Lcom/sleepycat/je/ReadOptions;
    .local v0, "E":Ljava/lang/Error;
    .restart local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    :goto_5
    iget-object v1, v9, Lcom/sleepycat/je/SecondaryDatabase;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 1005
    throw v0
.end method

.method public get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 7
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "getType"    # Lcom/sleepycat/je/Get;
    .param p5, "options"    # Lcom/sleepycat/je/ReadOptions;

    .line 875
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/SecondaryDatabase;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 7
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1074
    sget-object v5, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    .line 1076
    invoke-static {p5}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v6

    .line 1074
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/SecondaryDatabase;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1078
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1023
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryDatabase;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/sleepycat/je/DatabaseConfig;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/sleepycat/je/SecondaryDatabase;->getConfig()Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/sleepycat/je/SecondaryConfig;
    .locals 1

    .line 650
    invoke-super {p0}, Lcom/sleepycat/je/Database;->getConfig()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/SecondaryConfig;

    return-object v0
.end method

.method getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;
    .locals 3
    .param p1, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1799
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->secAssoc:Lcom/sleepycat/je/SecondaryAssociation;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/SecondaryAssociation;->getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1803
    .local v0, "priDb":Lcom/sleepycat/je/Database;
    nop

    .line 1804
    if-nez v0, :cond_0

    .line 1805
    const/4 v1, 0x0

    return-object v1

    .line 1807
    :cond_0
    iget-object v1, v0, Lcom/sleepycat/je/Database;->secAssoc:Lcom/sleepycat/je/SecondaryAssociation;

    iget-object v2, p0, Lcom/sleepycat/je/SecondaryDatabase;->secAssoc:Lcom/sleepycat/je/SecondaryAssociation;

    if-ne v1, v2, :cond_1

    .line 1813
    return-object v0

    .line 1808
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Primary and secondary have different SecondaryAssociation instances. Remember to configure the SecondaryAssociation on the primary database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1800
    .end local v0    # "priDb":Lcom/sleepycat/je/Database;
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Exception from SecondaryAssociation.getPrimary"

    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public getPrimaryDatabase()Lcom/sleepycat/je/Database;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->primaryDatabase:Lcom/sleepycat/je/Database;

    return-object v0
.end method

.method getPrivateSecondaryConfig()Lcom/sleepycat/je/SecondaryConfig;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;

    return-object v0
.end method

.method public getSearchBoth(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 7
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1142
    sget-object v5, Lcom/sleepycat/je/Get;->SEARCH_BOTH:Lcom/sleepycat/je/Get;

    .line 1144
    invoke-static {p5}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v6

    .line 1142
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/SecondaryDatabase;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1146
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getSearchBoth(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1093
    invoke-static {}, Lcom/sleepycat/je/SecondaryDatabase;->notAllowedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getSecondaryConfig()Lcom/sleepycat/je/SecondaryConfig;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/sleepycat/je/SecondaryDatabase;->getConfig()Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryDatabases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/SecondaryDatabase;",
            ">;"
        }
    .end annotation

    .line 622
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method hasSecondaryOrForeignKeyAssociations()Z
    .locals 1

    .line 1782
    const/4 v0, 0x0

    return v0
.end method

.method initExisting(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)V
    .locals 4
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p4, "databaseName"    # Ljava/lang/String;
    .param p5, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 260
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->primaryDatabase:Lcom/sleepycat/je/Database;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->findPrimaryDatabase()Lcom/sleepycat/je/Database;

    move-result-object v0

    .line 262
    .local v0, "otherPriDb":Lcom/sleepycat/je/Database;
    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/SecondaryDatabase;->primaryDatabase:Lcom/sleepycat/je/Database;

    .line 264
    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Secondary already associated with different primary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    .end local v0    # "otherPriDb":Lcom/sleepycat/je/Database;
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/sleepycat/je/Database;->initExisting(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)V

    .line 272
    invoke-direct {p0, p2}, Lcom/sleepycat/je/SecondaryDatabase;->init(Lcom/sleepycat/je/txn/Locker;)V

    .line 273
    return-void
.end method

.method initNew(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "databaseName"    # Ljava/lang/String;
    .param p4, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 241
    nop

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Database;->initNew(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 243
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-direct {p0, p2}, Lcom/sleepycat/je/SecondaryDatabase;->init(Lcom/sleepycat/je/txn/Locker;)V

    .line 244
    return-object v0
.end method

.method public isIncrementalPopulationEnabled()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->isFullyPopulated:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public join([Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/JoinConfig;)Lcom/sleepycat/je/JoinCursor;
    .locals 1
    .param p1, "cursors"    # [Lcom/sleepycat/je/Cursor;
    .param p2, "config"    # Lcom/sleepycat/je/JoinConfig;

    .line 1209
    invoke-static {}, Lcom/sleepycat/je/SecondaryDatabase;->notAllowedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method makeSecondaryAssociation()Lcom/sleepycat/je/SecondaryAssociation;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->primaryDatabase:Lcom/sleepycat/je/Database;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, v0, Lcom/sleepycat/je/Database;->simpleAssocSecondaries:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->primaryDatabase:Lcom/sleepycat/je/Database;

    iget-object v0, v0, Lcom/sleepycat/je/Database;->secAssoc:Lcom/sleepycat/je/SecondaryAssociation;

    return-object v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->configuration:Lcom/sleepycat/je/DatabaseConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getSecondaryAssociation()Lcom/sleepycat/je/SecondaryAssociation;

    move-result-object v0

    return-object v0
.end method

.method newDbcInstance(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;

    .line 706
    new-instance v0, Lcom/sleepycat/je/SecondaryCursor;

    invoke-direct {v0, p0, p1, p2}, Lcom/sleepycat/je/SecondaryCursor;-><init>(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)V

    return-object v0
.end method

.method onForeignKeyDelete(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;)V
    .locals 28
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "secKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 1611
    move-object/from16 v8, p0

    move-object/from16 v6, p1

    iget-object v0, v8, Lcom/sleepycat/je/SecondaryDatabase;->secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;

    .line 1612
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyDeleteAction()Lcom/sleepycat/je/ForeignKeyDeleteAction;

    move-result-object v7

    .line 1615
    .local v7, "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    sget-object v0, Lcom/sleepycat/je/ForeignKeyDeleteAction;->ABORT:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    if-ne v7, v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    :goto_0
    move-object/from16 v24, v0

    .line 1624
    .local v24, "lockMode":Lcom/sleepycat/je/LockMode;
    new-instance v0, Lcom/sleepycat/je/Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v6, v1}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V

    move-object v5, v0

    .line 1626
    .local v5, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v4, v0

    .line 1628
    .local v4, "priKey":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v26, Lcom/sleepycat/je/dbi/SearchMode;->SET:Lcom/sleepycat/je/dbi/SearchMode;

    const/16 v27, 0x1

    move-object/from16 v21, v5

    move-object/from16 v22, p2

    move-object/from16 v23, v4

    move-object/from16 v25, p3

    invoke-virtual/range {v21 .. v27}, Lcom/sleepycat/je/Cursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    move-object/from16 v21, v0

    .line 1631
    .local v21, "secResult":Lcom/sleepycat/je/OperationResult;
    :goto_1
    if-eqz v21, :cond_d

    .line 1633
    sget-object v0, Lcom/sleepycat/je/ForeignKeyDeleteAction;->ABORT:Lcom/sleepycat/je/ForeignKeyDeleteAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    if-ne v7, v0, :cond_2

    .line 1639
    :try_start_1
    invoke-virtual {v8, v4}, Lcom/sleepycat/je/SecondaryDatabase;->getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;

    move-result-object v0

    .line 1640
    .local v0, "primaryDb":Lcom/sleepycat/je/Database;
    if-eqz v0, :cond_1

    .line 1641
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    const-string v1, "unknown"

    :goto_2
    move-object v13, v1

    .line 1643
    .local v13, "priDbName":Ljava/lang/String;
    new-instance v1, Lcom/sleepycat/je/DeleteConstraintException;

    const-string v11, "Secondary refers to a deleted foreign key"

    .line 1645
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/SecondaryDatabase;->getDatabaseName()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v16, -0x1

    .line 1646
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/OperationResult;->getExpirationTime()J

    move-result-wide v18

    const/16 v20, 0x0

    move-object v9, v1

    move-object/from16 v10, p1

    move-object/from16 v14, p2

    move-object v15, v4

    invoke-direct/range {v9 .. v20}, Lcom/sleepycat/je/DeleteConstraintException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V

    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .end local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1624
    .end local v0    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v4    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v13    # "priDbName":Ljava/lang/String;
    .end local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_0
    move-exception v0

    move-object/from16 v3, p2

    move-object v1, v0

    move-object/from16 v17, v5

    move-object/from16 v16, v7

    goto/16 :goto_b

    .line 1648
    .restart local v4    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    :cond_2
    :try_start_2
    sget-object v0, Lcom/sleepycat/je/ForeignKeyDeleteAction;->CASCADE:Lcom/sleepycat/je/ForeignKeyDeleteAction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    if-ne v7, v0, :cond_6

    .line 1653
    :try_start_3
    invoke-virtual {v8, v4}, Lcom/sleepycat/je/SecondaryDatabase;->getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;

    move-result-object v0

    .line 1654
    .restart local v0    # "primaryDb":Lcom/sleepycat/je/Database;
    if-eqz v0, :cond_5

    .line 1656
    nop

    .line 1657
    move-object/from16 v15, p3

    invoke-virtual {v0, v6, v4, v15}, Lcom/sleepycat/je/Database;->deleteInternal(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v2

    move-object v9, v2

    .line 1660
    .local v9, "priResult":Lcom/sleepycat/je/OperationResult;
    if-nez v9, :cond_4

    iget-object v2, v5, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 1661
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->isProbablyExpired()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v14, v4

    move-object v13, v5

    move-object v12, v6

    move-object v15, v7

    goto :goto_3

    .line 1663
    :cond_3
    nop

    .line 1665
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/OperationResult;->getExpirationTime()J

    move-result-wide v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1663
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v0

    move-object v14, v4

    .end local v4    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v14, "priKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v4, p2

    move-object v13, v5

    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    move-object v5, v14

    move-object v12, v6

    move-object v15, v7

    .end local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .local v15, "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    move-wide v6, v10

    :try_start_4
    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/SecondaryDatabase;->secondaryRefersToMissingPrimaryKey(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;J)Lcom/sleepycat/je/SecondaryIntegrityException;

    move-result-object v1

    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v15    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .end local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1624
    .end local v0    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v9    # "priResult":Lcom/sleepycat/je/OperationResult;
    .end local v14    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    .restart local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v15    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_1
    move-exception v0

    move-object/from16 v3, p2

    move-object v1, v0

    move-object/from16 v17, v13

    move-object/from16 v16, v15

    goto/16 :goto_b

    .line 1660
    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v15    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v0    # "primaryDb":Lcom/sleepycat/je/Database;
    .restart local v4    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v9    # "priResult":Lcom/sleepycat/je/OperationResult;
    .restart local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    :cond_4
    move-object v14, v4

    move-object v13, v5

    move-object v12, v6

    move-object v15, v7

    .end local v4    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v14    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    goto :goto_3

    .line 1654
    .end local v9    # "priResult":Lcom/sleepycat/je/OperationResult;
    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v14    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v4    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    :cond_5
    move-object v14, v4

    move-object v13, v5

    move-object v12, v6

    move-object v15, v7

    .line 1669
    .end local v0    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v4    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v14    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    :goto_3
    move-object/from16 v3, p2

    move-object/from16 v17, v13

    move-object/from16 v16, v15

    move-object v15, v14

    goto/16 :goto_a

    .line 1624
    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v14    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .end local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    :catchall_2
    move-exception v0

    move-object v12, v6

    move-object/from16 v3, p2

    move-object v1, v0

    move-object/from16 v17, v5

    move-object/from16 v16, v7

    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v15    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    goto/16 :goto_b

    .line 1669
    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v15    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v4    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    :cond_6
    move-object v14, v4

    move-object v13, v5

    move-object v12, v6

    move-object v15, v7

    .end local v4    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v14    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    :try_start_5
    sget-object v0, Lcom/sleepycat/je/ForeignKeyDeleteAction;->NULLIFY:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    if-ne v15, v0, :cond_c

    .line 1675
    invoke-virtual {v8, v14}, Lcom/sleepycat/je/SecondaryDatabase;->getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;

    move-result-object v0

    move-object v6, v0

    .line 1676
    .local v6, "primaryDb":Lcom/sleepycat/je/Database;
    if-eqz v6, :cond_b

    .line 1678
    new-instance v0, Lcom/sleepycat/je/Cursor;

    invoke-direct {v0, v6, v12, v1}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    move-object v7, v0

    .line 1681
    .local v7, "priCursor":Lcom/sleepycat/je/Cursor;
    :try_start_6
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1683
    .local v0, "data":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v2, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    sget-object v3, Lcom/sleepycat/je/dbi/SearchMode;->SET:Lcom/sleepycat/je/dbi/SearchMode;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    const/4 v4, 0x1

    move-object v9, v7

    move-object v10, v14

    move-object v11, v0

    move-object v12, v2

    move-object v5, v13

    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    move-object/from16 v13, p3

    move-object v2, v14

    .end local v14    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v2, "priKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object v14, v3

    move-object/from16 v16, v15

    .end local v15    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .local v16, "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    move v15, v4

    :try_start_7
    invoke-virtual/range {v9 .. v15}, Lcom/sleepycat/je/Cursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-object v9, v3

    .line 1687
    .restart local v9    # "priResult":Lcom/sleepycat/je/OperationResult;
    if-nez v9, :cond_8

    .line 1688
    :try_start_8
    iget-object v3, v5, Lcom/sleepycat/je/Cursor;->cursorImpl:Lcom/sleepycat/je/dbi/CursorImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/CursorImpl;->isProbablyExpired()Z

    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v3, :cond_7

    .line 1714
    :try_start_9
    invoke-virtual {v7}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1631
    .end local v0    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v7    # "priCursor":Lcom/sleepycat/je/Cursor;
    .end local v9    # "priResult":Lcom/sleepycat/je/OperationResult;
    move-object/from16 v6, p1

    move-object v4, v2

    move-object/from16 v7, v16

    goto/16 :goto_1

    .line 1624
    .end local v2    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    :catchall_3
    move-exception v0

    move-object/from16 v3, p2

    move-object v1, v0

    move-object/from16 v17, v5

    goto/16 :goto_b

    .line 1689
    .restart local v0    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v6    # "primaryDb":Lcom/sleepycat/je/Database;
    .restart local v7    # "priCursor":Lcom/sleepycat/je/Cursor;
    .restart local v9    # "priResult":Lcom/sleepycat/je/OperationResult;
    .restart local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    :cond_7
    nop

    .line 1691
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/OperationResult;->getExpirationTime()J

    move-result-wide v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1689
    move-object/from16 v1, p0

    move-object v15, v2

    .end local v2    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v15, "priKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v2, p1

    move-object v3, v6

    move-object/from16 v4, p2

    move-object/from16 v17, v5

    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v17, "cursor":Lcom/sleepycat/je/Cursor;
    move-object v5, v15

    move-object v12, v6

    move-object v13, v7

    .end local v6    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v7    # "priCursor":Lcom/sleepycat/je/Cursor;
    .local v12, "primaryDb":Lcom/sleepycat/je/Database;
    .local v13, "priCursor":Lcom/sleepycat/je/Cursor;
    move-wide v6, v10

    :try_start_b
    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/SecondaryDatabase;->secondaryRefersToMissingPrimaryKey(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;J)Lcom/sleepycat/je/SecondaryIntegrityException;

    move-result-object v1

    .end local v12    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v13    # "priCursor":Lcom/sleepycat/je/Cursor;
    .end local v15    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .end local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    .end local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v1

    .line 1678
    .end local v0    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v9    # "priResult":Lcom/sleepycat/je/OperationResult;
    .restart local v2    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v6    # "primaryDb":Lcom/sleepycat/je/Database;
    .restart local v7    # "priCursor":Lcom/sleepycat/je/Cursor;
    .restart local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    .restart local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_4
    move-exception v0

    move-object v15, v2

    move-object/from16 v17, v5

    move-object v12, v6

    move-object v13, v7

    move-object/from16 v3, p2

    goto :goto_6

    .line 1696
    .restart local v0    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v9    # "priResult":Lcom/sleepycat/je/OperationResult;
    :cond_8
    move-object v15, v2

    move-object/from16 v17, v5

    move-object v12, v6

    move-object v13, v7

    .end local v2    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v6    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v7    # "priCursor":Lcom/sleepycat/je/Cursor;
    .restart local v12    # "primaryDb":Lcom/sleepycat/je/Database;
    .restart local v13    # "priCursor":Lcom/sleepycat/je/Cursor;
    .restart local v15    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    iget-object v2, v8, Lcom/sleepycat/je/SecondaryDatabase;->secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;

    .line 1697
    invoke-virtual {v2}, Lcom/sleepycat/je/SecondaryConfig;->getForeignMultiKeyNullifier()Lcom/sleepycat/je/ForeignMultiKeyNullifier;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1699
    .local v2, "multiNullifier":Lcom/sleepycat/je/ForeignMultiKeyNullifier;
    if-eqz v2, :cond_9

    .line 1701
    move-object/from16 v3, p2

    :try_start_c
    invoke-interface {v2, v8, v15, v0, v3}, Lcom/sleepycat/je/ForeignMultiKeyNullifier;->nullifyForeignKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1704
    invoke-virtual {v13, v0}, Lcom/sleepycat/je/Cursor;->putCurrent(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    goto :goto_4

    .line 1707
    :cond_9
    move-object/from16 v3, p2

    iget-object v4, v8, Lcom/sleepycat/je/SecondaryDatabase;->secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;

    .line 1708
    invoke-virtual {v4}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyNullifier()Lcom/sleepycat/je/ForeignKeyNullifier;

    move-result-object v4

    .line 1710
    .local v4, "nullifier":Lcom/sleepycat/je/ForeignKeyNullifier;
    invoke-interface {v4, v8, v0}, Lcom/sleepycat/je/ForeignKeyNullifier;->nullifyForeignKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1711
    invoke-virtual {v13, v0}, Lcom/sleepycat/je/Cursor;->putCurrent(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1714
    .end local v0    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "multiNullifier":Lcom/sleepycat/je/ForeignMultiKeyNullifier;
    .end local v4    # "nullifier":Lcom/sleepycat/je/ForeignKeyNullifier;
    .end local v9    # "priResult":Lcom/sleepycat/je/OperationResult;
    :cond_a
    :goto_4
    :try_start_d
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto :goto_9

    .line 1678
    :catchall_5
    move-exception v0

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v3, p2

    :goto_5
    move-object v1, v0

    goto :goto_7

    .end local v12    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v13    # "priCursor":Lcom/sleepycat/je/Cursor;
    .end local v15    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v2, "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v6    # "primaryDb":Lcom/sleepycat/je/Database;
    .restart local v7    # "priCursor":Lcom/sleepycat/je/Cursor;
    :catchall_7
    move-exception v0

    move-object/from16 v3, p2

    move-object v15, v2

    move-object/from16 v17, v5

    move-object v12, v6

    move-object v13, v7

    :goto_6
    move-object v1, v0

    .end local v2    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v6    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v7    # "priCursor":Lcom/sleepycat/je/Cursor;
    .restart local v12    # "primaryDb":Lcom/sleepycat/je/Database;
    .restart local v13    # "priCursor":Lcom/sleepycat/je/Cursor;
    .restart local v15    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    goto :goto_7

    .end local v12    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .end local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v6    # "primaryDb":Lcom/sleepycat/je/Database;
    .restart local v7    # "priCursor":Lcom/sleepycat/je/Cursor;
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v14    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v15, "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    :catchall_8
    move-exception v0

    move-object/from16 v3, p2

    move-object v12, v6

    move-object/from16 v17, v13

    move-object/from16 v16, v15

    move-object v13, v7

    move-object v15, v14

    move-object v1, v0

    .end local v6    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v7    # "priCursor":Lcom/sleepycat/je/Cursor;
    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v14    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .end local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    .end local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :goto_7
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 1714
    .restart local v12    # "primaryDb":Lcom/sleepycat/je/Database;
    .local v13, "priCursor":Lcom/sleepycat/je/Cursor;
    .local v15, "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    .restart local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_9
    move-exception v0

    move-object v2, v0

    :try_start_f
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto :goto_8

    :catchall_a
    move-exception v0

    move-object v4, v0

    :try_start_10
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .end local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :goto_8
    throw v2

    .line 1676
    .end local v12    # "primaryDb":Lcom/sleepycat/je/Database;
    .restart local v6    # "primaryDb":Lcom/sleepycat/je/Database;
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v14    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v15, "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :cond_b
    move-object/from16 v3, p2

    move-object v12, v6

    move-object/from16 v17, v13

    move-object/from16 v16, v15

    move-object v15, v14

    .line 1716
    .end local v6    # "primaryDb":Lcom/sleepycat/je/Database;
    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v14    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v15, "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    :goto_9
    nop

    .line 1721
    :goto_a
    sget-object v12, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    sget-object v14, Lcom/sleepycat/je/dbi/GetMode;->NEXT_DUP:Lcom/sleepycat/je/dbi/GetMode;

    move-object/from16 v9, v17

    move-object/from16 v10, p2

    move-object v11, v15

    move-object/from16 v13, p3

    invoke-virtual/range {v9 .. v14}, Lcom/sleepycat/je/Cursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    move-object/from16 v21, v0

    move-object/from16 v6, p1

    move-object v4, v15

    move-object/from16 v7, v16

    move-object/from16 v5, v17

    goto/16 :goto_1

    .line 1718
    .end local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .end local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v14    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v15, "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    :cond_c
    move-object/from16 v3, p2

    move-object/from16 v17, v13

    move-object/from16 v16, v15

    move-object v15, v14

    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v14    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v15, "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .end local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 1624
    .end local v15    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    .restart local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_b
    move-exception v0

    move-object v1, v0

    goto :goto_b

    .end local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .end local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v15, "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    :catchall_c
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v17, v13

    move-object/from16 v16, v15

    move-object v1, v0

    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v15    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    goto :goto_b

    .line 1631
    .end local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .end local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v4, "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v7, "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    :cond_d
    move-object/from16 v3, p2

    move-object v15, v4

    move-object/from16 v17, v5

    move-object/from16 v16, v7

    .line 1725
    .end local v4    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .end local v21    # "secResult":Lcom/sleepycat/je/OperationResult;
    .restart local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1726
    .end local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    return-void

    .line 1624
    .end local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    :catchall_d
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v17, v5

    move-object/from16 v16, v7

    move-object v1, v0

    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v7    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .end local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :goto_b
    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    .line 1725
    .restart local v16    # "deleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .restart local v17    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v24    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_e
    move-exception v0

    move-object v2, v0

    :try_start_12
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    goto :goto_c

    :catchall_f
    move-exception v0

    move-object v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v2
.end method

.method public bridge synthetic openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;
    .locals 0

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/SecondaryDatabase;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/SecondaryCursor;

    move-result-object p1

    return-object p1
.end method

.method public openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/SecondaryCursor;
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;

    .line 696
    invoke-direct {p0}, Lcom/sleepycat/je/SecondaryDatabase;->checkReadable()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 697
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/SecondaryCursor;

    return-object v0
.end method

.method public openSecondaryCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/SecondaryCursor;
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;

    .line 687
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/SecondaryDatabase;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/SecondaryCursor;

    move-result-object v0

    return-object v0
.end method

.method public populateSecondaries(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 585
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not allowed on a secondary"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public populateSecondaries(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JLcom/sleepycat/je/CacheMode;)V
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "expirationTime"    # J
    .param p6, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 598
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not allowed on a secondary"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "putType"    # Lcom/sleepycat/je/Put;
    .param p5, "options"    # Lcom/sleepycat/je/WriteOptions;

    .line 1163
    invoke-static {}, Lcom/sleepycat/je/SecondaryDatabase;->notAllowedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public put(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1175
    invoke-static {}, Lcom/sleepycat/je/SecondaryDatabase;->notAllowedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public putNoDupData(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1199
    invoke-static {}, Lcom/sleepycat/je/SecondaryDatabase;->notAllowedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public putNoOverwrite(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1187
    invoke-static {}, Lcom/sleepycat/je/SecondaryDatabase;->notAllowedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method removeReferringAssociations()V
    .locals 2

    .line 373
    invoke-super {p0}, Lcom/sleepycat/je/Database;->removeReferringAssociations()V

    .line 374
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->primaryDatabase:Lcom/sleepycat/je/Database;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, v0, Lcom/sleepycat/je/Database;->simpleAssocSecondaries:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyDatabase()Lcom/sleepycat/je/Database;

    move-result-object v0

    .line 379
    .local v0, "foreignDb":Lcom/sleepycat/je/Database;
    if-eqz v0, :cond_1

    .line 380
    iget-object v1, v0, Lcom/sleepycat/je/Database;->foreignKeySecondaries:Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 383
    .end local v0    # "foreignDb":Lcom/sleepycat/je/Database;
    :cond_1
    return-void
.end method

.method public startIncrementalPopulation()V
    .locals 1

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->isFullyPopulated:Z

    .line 422
    return-void
.end method

.method trace(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 1837
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1839
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/SecondaryDatabase;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    const-string v1, " primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/SecondaryDatabase;->primaryDatabase:Lcom/sleepycat/je/Database;

    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    iget-object v1, p0, Lcom/sleepycat/je/SecondaryDatabase;->logger:Ljava/util/logging/Logger;

    .line 1844
    invoke-virtual {p0}, Lcom/sleepycat/je/SecondaryDatabase;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1843
    invoke-static {v1, v2, p1, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1846
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method updateMayChangeSecondary()Z
    .locals 1

    .line 1737
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getImmutableSecondaryKey()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/SecondaryDatabase;->secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;

    .line 1738
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getExtractFromPrimaryKeyOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1737
    :goto_0
    return v0
.end method

.method updateSecondary(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;JZJ)I
    .locals 27
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "secCursor"    # Lcom/sleepycat/je/Cursor;
    .param p3, "priDb"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p4, "priCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p5, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "oldData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p7, "newData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p8, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p9, "expirationTime"    # J
    .param p11, "expirationUpdated"    # Z
    .param p12, "oldExpirationTime"    # J

    .line 1269
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 1270
    invoke-static/range {p9 .. p10}, Lcom/sleepycat/je/dbi/TTL;->isSystemTimeInHours(J)Z

    move-result v10

    .line 1272
    .local v10, "expirationInHours":Z
    nop

    .line 1273
    move-wide/from16 v8, p9

    invoke-static {v8, v9, v10}, Lcom/sleepycat/je/dbi/TTL;->systemTimeToExpiration(JZ)I

    move-result v16

    .line 1275
    .local v16, "expiration":I
    iget-object v0, v13, Lcom/sleepycat/je/SecondaryDatabase;->secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getKeyCreator()Lcom/sleepycat/je/SecondaryKeyCreator;

    move-result-object v7

    .line 1277
    .local v7, "keyCreator":Lcom/sleepycat/je/SecondaryKeyCreator;
    iget-object v0, v13, Lcom/sleepycat/je/SecondaryDatabase;->secondaryConfig:Lcom/sleepycat/je/SecondaryConfig;

    .line 1278
    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getMultiKeyCreator()Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    move-result-object v6

    .line 1280
    .local v6, "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    const/4 v0, 0x1

    const/16 v17, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move/from16 v1, v17

    :goto_0
    move/from16 v18, v1

    .line 1282
    .local v18, "localCursor":Z
    const/4 v1, 0x0

    if-eqz v7, :cond_15

    .line 1284
    if-nez v6, :cond_14

    .line 1287
    const/4 v2, 0x0

    .line 1288
    .local v2, "oldSecKey":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v3, 0x0

    .line 1290
    .local v3, "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    if-nez v11, :cond_2

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v2

    goto :goto_2

    .line 1291
    :cond_2
    :goto_1
    new-instance v4, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v4}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v2, v4

    .line 1292
    invoke-interface {v7, v13, v15, v11, v2}, Lcom/sleepycat/je/SecondaryKeyCreator;->createSecondaryKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1294
    const/4 v2, 0x0

    move-object v5, v2

    goto :goto_2

    .line 1292
    :cond_3
    move-object v5, v2

    .line 1298
    .end local v2    # "oldSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v5, "oldSecKey":Lcom/sleepycat/je/DatabaseEntry;
    :goto_2
    if-eqz v12, :cond_5

    .line 1299
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v3, v2

    .line 1300
    invoke-interface {v7, v13, v15, v12, v3}, Lcom/sleepycat/je/SecondaryKeyCreator;->createSecondaryKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1302
    const/4 v3, 0x0

    move-object v4, v3

    goto :goto_3

    .line 1300
    :cond_4
    move-object v4, v3

    goto :goto_3

    .line 1298
    :cond_5
    move-object v4, v3

    .line 1307
    .end local v3    # "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    :goto_3
    if-eqz v5, :cond_6

    .line 1308
    invoke-virtual {v5, v4}, Lcom/sleepycat/je/DatabaseEntry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v0

    goto :goto_4

    :cond_6
    move/from16 v2, v17

    :goto_4
    move/from16 v19, v2

    .line 1311
    .local v19, "doDelete":Z
    if-eqz v4, :cond_7

    .line 1312
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/DatabaseEntry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_5

    :cond_7
    move/from16 v2, v17

    :goto_5
    move/from16 v20, v2

    .line 1315
    .local v20, "doInsert":Z
    if-eqz p11, :cond_8

    if-eqz v4, :cond_8

    if-nez v20, :cond_8

    move v2, v0

    goto :goto_6

    :cond_8
    move/from16 v2, v17

    :goto_6
    move/from16 v21, v2

    .line 1318
    .local v21, "doUpdate":Z
    if-nez v19, :cond_a

    if-nez v20, :cond_a

    if-eqz v21, :cond_9

    goto :goto_7

    :cond_9
    move-object/from16 v22, p2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object v14, v6

    move-object/from16 v25, v7

    move/from16 v26, v10

    move-object v13, v11

    move-object v15, v12

    goto/16 :goto_d

    .line 1319
    :cond_a
    :goto_7
    if-eqz v18, :cond_b

    .line 1320
    new-instance v2, Lcom/sleepycat/je/Cursor;

    invoke-direct {v2, v13, v14, v1}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V

    move-object v1, v2

    move-object/from16 v22, v1

    .end local p2    # "secCursor":Lcom/sleepycat/je/Cursor;
    .local v1, "secCursor":Lcom/sleepycat/je/Cursor;
    goto :goto_8

    .line 1319
    .end local v1    # "secCursor":Lcom/sleepycat/je/Cursor;
    .restart local p2    # "secCursor":Lcom/sleepycat/je/Cursor;
    :cond_b
    move-object/from16 v22, p2

    .line 1323
    .end local p2    # "secCursor":Lcom/sleepycat/je/Cursor;
    .local v22, "secCursor":Lcom/sleepycat/je/Cursor;
    :goto_8
    if-eqz v19, :cond_c

    .line 1324
    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    move-object/from16 v23, v4

    .end local v4    # "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v23, "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v4, p4

    move-object/from16 v24, v5

    .end local v5    # "oldSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v24, "oldSecKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v5, p5

    move-object v14, v6

    .end local v6    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .local v14, "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    move-object/from16 v6, v24

    move-object/from16 v25, v7

    .end local v7    # "keyCreator":Lcom/sleepycat/je/SecondaryKeyCreator;
    .local v25, "keyCreator":Lcom/sleepycat/je/SecondaryKeyCreator;
    move-object/from16 v7, p8

    move-wide/from16 v8, p12

    :try_start_0
    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/je/SecondaryDatabase;->deleteKey(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    .line 1341
    :catchall_0
    move-exception v0

    move/from16 v26, v10

    move-object v13, v11

    move-object v15, v12

    goto :goto_b

    .line 1323
    .end local v14    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .end local v23    # "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "oldSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v25    # "keyCreator":Lcom/sleepycat/je/SecondaryKeyCreator;
    .restart local v4    # "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v5    # "oldSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v6    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .restart local v7    # "keyCreator":Lcom/sleepycat/je/SecondaryKeyCreator;
    :cond_c
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object v14, v6

    move-object/from16 v25, v7

    .line 1328
    .end local v4    # "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "oldSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .end local v7    # "keyCreator":Lcom/sleepycat/je/SecondaryKeyCreator;
    .restart local v14    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .restart local v23    # "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v24    # "oldSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v25    # "keyCreator":Lcom/sleepycat/je/SecondaryKeyCreator;
    :goto_9
    if-eqz v20, :cond_d

    .line 1329
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, v23

    move-object/from16 v8, p8

    move/from16 v9, v16

    move/from16 v26, v10

    .end local v10    # "expirationInHours":Z
    .local v26, "expirationInHours":Z
    move-object v13, v11

    move-object v15, v12

    move-wide/from16 v11, p12

    :try_start_1
    invoke-direct/range {v1 .. v12}, Lcom/sleepycat/je/SecondaryDatabase;->insertKey(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;IZJ)V

    goto :goto_a

    .line 1341
    :catchall_1
    move-exception v0

    goto :goto_b

    .line 1328
    .end local v26    # "expirationInHours":Z
    .restart local v10    # "expirationInHours":Z
    :cond_d
    move/from16 v26, v10

    move-object v13, v11

    move-object v15, v12

    .line 1334
    .end local v10    # "expirationInHours":Z
    .restart local v26    # "expirationInHours":Z
    :goto_a
    if-eqz v21, :cond_f

    .line 1335
    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, v24

    move-object/from16 v7, p8

    move/from16 v8, v16

    move/from16 v9, v26

    move-wide/from16 v10, p12

    invoke-direct/range {v1 .. v11}, Lcom/sleepycat/je/SecondaryDatabase;->updateExpiration(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;IZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_c

    .line 1341
    :goto_b
    if-eqz v18, :cond_e

    .line 1342
    invoke-virtual/range {v22 .. v22}, Lcom/sleepycat/je/Cursor;->close()V

    :cond_e
    throw v0

    .line 1341
    :cond_f
    :goto_c
    if-eqz v18, :cond_10

    .line 1342
    invoke-virtual/range {v22 .. v22}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1346
    :cond_10
    :goto_d
    if-eqz v19, :cond_11

    move v1, v0

    goto :goto_e

    :cond_11
    move/from16 v1, v17

    :goto_e
    if-eqz v20, :cond_12

    move v2, v0

    goto :goto_f

    :cond_12
    move/from16 v2, v17

    :goto_f
    add-int/2addr v1, v2

    if-eqz v21, :cond_13

    goto :goto_10

    :cond_13
    move/from16 v0, v17

    :goto_10
    add-int/2addr v1, v0

    return v1

    .line 1284
    .end local v14    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .end local v19    # "doDelete":Z
    .end local v20    # "doInsert":Z
    .end local v21    # "doUpdate":Z
    .end local v22    # "secCursor":Lcom/sleepycat/je/Cursor;
    .end local v23    # "newSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "oldSecKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v25    # "keyCreator":Lcom/sleepycat/je/SecondaryKeyCreator;
    .end local v26    # "expirationInHours":Z
    .restart local v6    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .restart local v7    # "keyCreator":Lcom/sleepycat/je/SecondaryKeyCreator;
    .restart local v10    # "expirationInHours":Z
    .restart local p2    # "secCursor":Lcom/sleepycat/je/Cursor;
    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1351
    :cond_15
    move-object v14, v6

    move-object/from16 v25, v7

    move/from16 v26, v10

    move-object v13, v11

    move-object v15, v12

    .end local v6    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .end local v7    # "keyCreator":Lcom/sleepycat/je/SecondaryKeyCreator;
    .end local v10    # "expirationInHours":Z
    .restart local v14    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .restart local v25    # "keyCreator":Lcom/sleepycat/je/SecondaryKeyCreator;
    .restart local v26    # "expirationInHours":Z
    if-eqz v14, :cond_26

    .line 1361
    if-nez v13, :cond_16

    if-eqz v15, :cond_16

    .line 1362
    sget-object v0, Lcom/sleepycat/je/SecondaryDatabase;->EMPTY_SET:Ljava/util/Set;

    move-object v10, v0

    move-object v11, v13

    move-object v12, v15

    move-object/from16 v13, p0

    move-object/from16 v15, p5

    .local v0, "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    goto :goto_11

    .line 1364
    .end local v0    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :cond_16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1365
    .restart local v0    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    move-object v11, v13

    move-object v12, v15

    move-object/from16 v13, p0

    move-object/from16 v15, p5

    invoke-interface {v14, v13, v15, v11, v0}, Lcom/sleepycat/je/SecondaryMultiKeyCreator;->createSecondaryKeys(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Set;)V

    move-object v10, v0

    .line 1369
    .end local v0    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .local v10, "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :goto_11
    if-nez v12, :cond_17

    .line 1370
    sget-object v0, Lcom/sleepycat/je/SecondaryDatabase;->EMPTY_SET:Ljava/util/Set;

    move-object v8, v0

    .local v0, "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    goto :goto_12

    .line 1372
    .end local v0    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :cond_17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1373
    .restart local v0    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    invoke-interface {v14, v13, v15, v12, v0}, Lcom/sleepycat/je/SecondaryMultiKeyCreator;->createSecondaryKeys(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Set;)V

    move-object v8, v0

    .line 1382
    .end local v0    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .local v8, "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :goto_12
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1383
    sget-object v0, Lcom/sleepycat/je/SecondaryDatabase;->EMPTY_SET:Ljava/util/Set;

    move-object/from16 v17, v0

    .local v0, "toDelete":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    goto :goto_13

    .line 1385
    .end local v0    # "toDelete":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :cond_18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1386
    .restart local v0    # "toDelete":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    invoke-interface {v0, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-object/from16 v17, v0

    .line 1390
    .end local v0    # "toDelete":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .local v17, "toDelete":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :goto_13
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1391
    sget-object v0, Lcom/sleepycat/je/SecondaryDatabase;->EMPTY_SET:Ljava/util/Set;

    move-object/from16 v19, v0

    .local v0, "toInsert":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    goto :goto_14

    .line 1393
    .end local v0    # "toInsert":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :cond_19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1394
    .restart local v0    # "toInsert":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    invoke-interface {v0, v10}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-object/from16 v19, v0

    .line 1398
    .end local v0    # "toInsert":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .local v19, "toInsert":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :goto_14
    if-eqz p11, :cond_1b

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_15

    .line 1401
    :cond_1a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1402
    .local v0, "toUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    invoke-interface {v0, v10}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-object/from16 v20, v0

    goto :goto_16

    .line 1399
    .end local v0    # "toUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :cond_1b
    :goto_15
    sget-object v0, Lcom/sleepycat/je/SecondaryDatabase;->EMPTY_SET:Ljava/util/Set;

    move-object/from16 v20, v0

    .line 1405
    .local v20, "toUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :goto_16
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1406
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1407
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_17

    :cond_1c
    move-object/from16 v22, p2

    move-object/from16 v23, v8

    move-object/from16 v24, v10

    move-object/from16 v21, v14

    move-object/from16 v14, p1

    goto/16 :goto_1e

    .line 1409
    :cond_1d
    :goto_17
    if-eqz v18, :cond_1e

    .line 1410
    new-instance v0, Lcom/sleepycat/je/Cursor;

    move-object/from16 v21, v14

    move-object/from16 v14, p1

    .end local v14    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .local v21, "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    invoke-direct {v0, v13, v14, v1}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V

    move-object/from16 v22, v0

    .end local p2    # "secCursor":Lcom/sleepycat/je/Cursor;
    .local v0, "secCursor":Lcom/sleepycat/je/Cursor;
    goto :goto_18

    .line 1409
    .end local v0    # "secCursor":Lcom/sleepycat/je/Cursor;
    .end local v21    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .restart local v14    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .restart local p2    # "secCursor":Lcom/sleepycat/je/Cursor;
    :cond_1e
    move-object/from16 v21, v14

    move-object/from16 v14, p1

    .end local v14    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .restart local v21    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    move-object/from16 v22, p2

    .line 1413
    .end local p2    # "secCursor":Lcom/sleepycat/je/Cursor;
    .restart local v22    # "secCursor":Lcom/sleepycat/je/Cursor;
    :goto_18
    :try_start_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-nez v0, :cond_20

    .line 1414
    :try_start_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/sleepycat/je/DatabaseEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1415
    .local v6, "secKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p8

    move-object/from16 v23, v8

    .end local v8    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .local v23, "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    move-wide/from16 v8, p12

    :try_start_4
    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/je/SecondaryDatabase;->deleteKey(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1418
    .end local v6    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v8, v23

    goto :goto_19

    .line 1437
    :catchall_2
    move-exception v0

    move-object/from16 v24, v10

    goto/16 :goto_1f

    .line 1414
    .end local v23    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v8    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :cond_1f
    move-object/from16 v23, v8

    .end local v8    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v23    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    goto :goto_1a

    .line 1437
    .end local v23    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v8    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v10

    .end local v8    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v23    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    goto/16 :goto_1f

    .line 1413
    .end local v23    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v8    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :cond_20
    move-object/from16 v23, v8

    .line 1420
    .end local v8    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v23    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :goto_1a
    :try_start_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1421
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/sleepycat/je/DatabaseEntry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1422
    .local v7, "secKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p8

    move/from16 v9, v16

    move-object/from16 v24, v10

    .end local v10    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .local v24, "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    move/from16 v10, v26

    move-wide/from16 v11, p12

    :try_start_6
    invoke-direct/range {v1 .. v12}, Lcom/sleepycat/je/SecondaryDatabase;->insertKey(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;IZJ)V

    .line 1426
    .end local v7    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v10, v24

    goto :goto_1b

    .line 1421
    .end local v24    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v10    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :cond_21
    move-object/from16 v24, v10

    .end local v10    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v24    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    goto :goto_1c

    .line 1420
    .end local v24    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v10    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :cond_22
    move-object/from16 v24, v10

    .line 1428
    .end local v10    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v24    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :goto_1c
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1429
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/sleepycat/je/DatabaseEntry;

    .line 1430
    .restart local v6    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p8

    move/from16 v8, v16

    move/from16 v9, v26

    move-wide/from16 v10, p12

    invoke-direct/range {v1 .. v11}, Lcom/sleepycat/je/SecondaryDatabase;->updateExpiration(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;IZJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1434
    .end local v6    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_1d

    .line 1437
    :cond_23
    if-eqz v18, :cond_24

    .line 1438
    invoke-virtual/range {v22 .. v22}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1442
    :cond_24
    :goto_1e
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1437
    :catchall_4
    move-exception v0

    goto :goto_1f

    .end local v24    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v10    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v24, v10

    .end local v10    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v24    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    goto :goto_1f

    .end local v23    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .end local v24    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v8    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v10    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :catchall_6
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v24, v10

    .end local v8    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .end local v10    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v23    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v24    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :goto_1f
    if-eqz v18, :cond_25

    .line 1438
    invoke-virtual/range {v22 .. v22}, Lcom/sleepycat/je/Cursor;->close()V

    :cond_25
    throw v0

    .line 1352
    .end local v17    # "toDelete":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .end local v19    # "toInsert":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .end local v20    # "toUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .end local v21    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .end local v22    # "secCursor":Lcom/sleepycat/je/Cursor;
    .end local v23    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .end local v24    # "oldKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v14    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .restart local p2    # "secCursor":Lcom/sleepycat/je/Cursor;
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SecondaryConfig.getKeyCreator()/getMultiKeyCreator() may be null only if the primary database is read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
