.class public Lcom/sleepycat/je/dbi/CursorImpl;
.super Ljava/lang/Object;
.source "CursorImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/CursorImpl$WithCursor;,
        Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CURSOR_CLOSED:B = 0x3t

.field private static final CURSOR_INITIALIZED:B = 0x2t

.field private static final CURSOR_NOT_INITIALIZED:B = 0x1t

.field private static final DEBUG:Z = false

.field public static final EXACT_KEY:I = 0x2

.field public static final FOUND:I = 0x1

.field public static final FOUND_LAST:I = 0x4

.field private static final TRACE_DELETE:Ljava/lang/String; = "Delete"

.field private static final TRACE_INSERT:Ljava/lang/String; = "Ins:"

.field private static final TRACE_MOD:Ljava/lang/String; = "Mod:"

.field private static lastAllocatedId:J


# instance fields
.field private allowEviction:Z

.field private volatile bin:Lcom/sleepycat/je/tree/BIN;

.field private cacheMode:Lcom/sleepycat/je/CacheMode;

.field private currentRecordVersion:Lcom/sleepycat/je/dbi/RecordVersion;

.field private final dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private volatile index:I

.field private final isSecondaryCursor:Z

.field private locker:Lcom/sleepycat/je/txn/Locker;

.field private nSecWrites:I

.field private priStorageSize:I

.field private priorBIN:Lcom/sleepycat/je/tree/BIN;

.field private final retainNonTxnLocks:Z

.field private status:B

.field private storageSize:I

.field private testHook:Lcom/sleepycat/je/utilint/TestHook;

.field private final thisId:I

.field private treeStatsAccumulatorTL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    nop

    .line 87
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sleepycat/je/dbi/CursorImpl;->lastAllocatedId:J

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V
    .locals 2
    .param p1, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 147
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;ZZ)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;ZZ)V
    .locals 2
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "retainNonTxnLocks"    # Z
    .param p4, "isSecondaryCursor"    # Z

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-static {}, Lcom/sleepycat/je/dbi/CursorImpl;->getNextCursorId()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->thisId:I

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 191
    iput-boolean p3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->retainNonTxnLocks:Z

    .line 192
    iput-boolean p4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->isSecondaryCursor:Z

    .line 195
    iput-object p1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 196
    iput-object p2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    .line 197
    invoke-virtual {p2, p0}, Lcom/sleepycat/je/txn/Locker;->registerCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 204
    sget-object v0, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    iput-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 206
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->status:B

    .line 214
    return-void
.end method

.method private assertCursorState(ZZ)Z
    .locals 5
    .param p1, "mustBeInitialized"    # Z
    .param p2, "mustNotBeInitialized"    # Z

    .line 3783
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/dbi/CursorImpl;->checkCursorState(ZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3784
    return v0

    .line 3785
    :catch_0
    move-exception v1

    .line 3786
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->dumpToString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private checkAlreadyLatched(Z)Z
    .locals 1
    .param p1, "isLatched"    # Z

    .line 4116
    if-eqz p1, :cond_0

    .line 4117
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v0, :cond_0

    .line 4118
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    return v0

    .line 4121
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private clear()V
    .locals 2

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 627
    const/4 v1, -0x1

    iput v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 628
    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->status:B

    .line 629
    iput-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->currentRecordVersion:Lcom/sleepycat/je/dbi/RecordVersion;

    .line 630
    const/4 v1, 0x0

    iput v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->storageSize:I

    .line 631
    iput v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->priStorageSize:I

    .line 632
    iput v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->nSecWrites:I

    .line 633
    iput-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->priorBIN:Lcom/sleepycat/je/tree/BIN;

    .line 634
    return-void
.end method

.method private evictBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/CacheMode;)V
    .locals 1
    .param p1, "binToEvict"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 859
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/evictor/Evictor;->doCacheModeEvict(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;)J

    .line 860
    return-void
.end method

.method private evictLN(ZZ)V
    .locals 2
    .param p1, "isLatched"    # Z
    .param p2, "ifFetchedCold"    # Z

    .line 874
    if-nez p1, :cond_0

    .line 875
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 877
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-ltz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v1, p2}, Lcom/sleepycat/je/tree/BIN;->evictLN(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    :cond_1
    if-nez p1, :cond_2

    .line 882
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 885
    :cond_2
    return-void

    .line 881
    :catchall_0
    move-exception v0

    if-nez p1, :cond_3

    .line 882
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    :cond_3
    throw v0
.end method

.method public static getCurrentLsn(Lcom/sleepycat/je/dbi/CursorImpl;)J
    .locals 2
    .param p0, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 460
    if-nez p0, :cond_0

    .line 461
    const-wide/16 v0, -0x1

    return-wide v0

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 465
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLsn()J

    move-result-wide v0

    .line 466
    .local v0, "lsn":J
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 468
    return-wide v0
.end method

.method private static getNextCursorId()J
    .locals 4

    .line 262
    sget-wide v0, Lcom/sleepycat/je/dbi/CursorImpl;->lastAllocatedId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/sleepycat/je/dbi/CursorImpl;->lastAllocatedId:J

    return-wide v0
.end method

.method private getTreeStatsAccumulator()Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .locals 1

    .line 334
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getThreadLocalReferenceCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->maybeInitTreeStatsAccumulator()V

    .line 336
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->treeStatsAccumulatorTL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;

    return-object v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private insertRecordInternal([BLcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/dbi/ExpirationInfo;ZLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/utilint/Pair;
    .locals 33
    .param p1, "key"    # [B
    .param p2, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p3, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;
    .param p4, "blindInsertion"    # Z
    .param p5, "returnNewData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sleepycat/je/tree/LN;",
            "Lcom/sleepycat/je/dbi/ExpirationInfo;",
            "Z",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/log/ReplicationContext;",
            ")",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;",
            "Lcom/sleepycat/je/OperationResult;",
            ">;"
        }
    .end annotation

    .line 1321
    move-object/from16 v7, p0

    move-object/from16 v6, p2

    move-object/from16 v4, p5

    iget-object v0, v7, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v23

    .line 1322
    .local v23, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    iget-object v0, v7, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v5

    .line 1324
    .local v5, "tree":Lcom/sleepycat/je/tree/Tree;
    const/4 v0, 0x0

    .line 1332
    .local v0, "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->shouldEmbedLN([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v1

    .line 1334
    .local v1, "data":[B
    const/4 v2, 0x1

    move-object/from16 v24, v1

    move/from16 v25, v2

    .local v2, "newEmbeddedLN":Z
    goto :goto_0

    .line 1336
    .end local v1    # "data":[B
    .end local v2    # "newEmbeddedLN":Z
    :cond_0
    const/4 v2, 0x0

    .line 1337
    .restart local v2    # "newEmbeddedLN":Z
    const/4 v1, 0x0

    move-object/from16 v24, v1

    move/from16 v25, v2

    .line 1340
    .end local v2    # "newEmbeddedLN":Z
    .local v24, "data":[B
    .local v25, "newEmbeddedLN":Z
    :goto_0
    if-nez p3, :cond_1

    .line 1341
    sget-object v1, Lcom/sleepycat/je/dbi/ExpirationInfo;->DEFAULT:Lcom/sleepycat/je/dbi/ExpirationInfo;

    move-object v3, v1

    .end local p3    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .local v1, "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    goto :goto_1

    .line 1340
    .end local v1    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .restart local p3    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    :cond_1
    move-object/from16 v3, p3

    .line 1358
    .end local p3    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .local v3, "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v5, v2, v1}, Lcom/sleepycat/je/tree/Tree;->findBinForInsert([BLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    iput-object v1, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1371
    iget-object v1, v7, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    iget-object v8, v7, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1, v8}, Lcom/sleepycat/je/txn/Locker;->preLogWithoutLock(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1385
    iget-object v8, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    const-wide/16 v12, -0x1

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move-object/from16 v11, v24

    move/from16 v14, p4

    invoke-virtual/range {v8 .. v14}, Lcom/sleepycat/je/tree/BIN;->insertEntry1(Lcom/sleepycat/je/tree/Node;[B[BJZ)I

    move-result v1

    .line 1388
    .local v1, "insertIndex":I
    const/high16 v8, 0x20000

    and-int/2addr v8, v1

    const/4 v15, 0x0

    if-nez v8, :cond_4

    .line 1394
    const/4 v8, 0x1

    .line 1396
    .local v8, "isSlotReuse":Z
    invoke-virtual {v7, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->setIndex(I)V

    .line 1397
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->addCursor()V

    .line 1398
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->setInitialized()V

    .line 1406
    sget-object v9, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v7, v9, v10, v11}, Lcom/sleepycat/je/dbi/CursorImpl;->lockLN(Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    move-result-object v0

    .line 1408
    if-eqz v0, :cond_3

    .line 1410
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->recordExists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1411
    new-instance v9, Lcom/sleepycat/je/utilint/Pair;

    invoke-direct {v9, v0, v15}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9

    .line 1418
    :cond_2
    invoke-static {v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$000(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)J

    move-result-wide v9

    .line 1419
    .local v9, "currLsn":J
    iget-object v11, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v12, v7, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v11, v12}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v11

    .line 1428
    .local v11, "currEmbeddedLN":Z
    iget-object v12, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v13, v7, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v12, v13}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->prepareForUpdate(Lcom/sleepycat/je/tree/BIN;I)Lcom/sleepycat/je/txn/WriteLockInfo;

    move-result-object v12

    move-object v14, v0

    move/from16 v26, v8

    move-wide/from16 v27, v9

    move/from16 v29, v11

    move-object/from16 v30, v12

    .local v12, "wli":Lcom/sleepycat/je/txn/WriteLockInfo;
    goto :goto_2

    .line 1408
    .end local v9    # "currLsn":J
    .end local v11    # "currEmbeddedLN":Z
    .end local v12    # "wli":Lcom/sleepycat/je/txn/WriteLockInfo;
    :cond_3
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1435
    .end local v8    # "isSlotReuse":Z
    :cond_4
    const/4 v8, 0x0

    .line 1436
    .restart local v8    # "isSlotReuse":Z
    move/from16 v11, v25

    .line 1437
    .restart local v11    # "currEmbeddedLN":Z
    const-wide/16 v9, -0x1

    .line 1439
    .restart local v9    # "currLsn":J
    const v12, -0x20001

    and-int/2addr v12, v1

    invoke-virtual {v7, v12}, Lcom/sleepycat/je/dbi/CursorImpl;->setIndex(I)V

    .line 1440
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->addCursor()V

    .line 1441
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->setInitialized()V

    .line 1444
    iget-object v12, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-static {v12}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->prepareForInsert(Lcom/sleepycat/je/tree/BIN;)Lcom/sleepycat/je/txn/WriteLockInfo;

    move-result-object v12

    move-object v14, v0

    move/from16 v26, v8

    move-wide/from16 v27, v9

    move/from16 v29, v11

    move-object/from16 v30, v12

    .line 1452
    .end local v0    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .end local v8    # "isSlotReuse":Z
    .end local v9    # "currLsn":J
    .end local v11    # "currEmbeddedLN":Z
    .local v14, "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .local v26, "isSlotReuse":Z
    .local v27, "currLsn":J
    .local v29, "currEmbeddedLN":Z
    .local v30, "wli":Lcom/sleepycat/je/txn/WriteLockInfo;
    :goto_2
    const/16 v31, 0x0

    .line 1454
    .local v31, "logItem":Lcom/sleepycat/je/log/LogItem;
    :try_start_0
    iget-object v10, v7, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v11, v7, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    iget v0, v3, Lcom/sleepycat/je/dbi/ExpirationInfo;->expiration:I

    iget-boolean v13, v3, Lcom/sleepycat/je/dbi/ExpirationInfo;->expirationInHours:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v8, p2

    move-object/from16 v9, v23

    move-object/from16 v12, v30

    move/from16 v16, v13

    move/from16 v13, v25

    move-object/from16 v32, v5

    move-object v5, v14

    .end local v14    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .local v5, "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .local v32, "tree":Lcom/sleepycat/je/tree/Tree;
    move-object/from16 v14, p1

    move/from16 p3, v1

    move-object v1, v15

    .end local v1    # "insertIndex":I
    .local p3, "insertIndex":I
    move v15, v0

    move/from16 v17, v29

    move-wide/from16 v18, v27

    move-object/from16 v22, p6

    :try_start_1
    invoke-virtual/range {v8 .. v22}, Lcom/sleepycat/je/tree/LN;->optionalLog(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/WriteLockInfo;Z[BIZZJIZLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1461
    .end local v31    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .local v0, "logItem":Lcom/sleepycat/je/log/LogItem;
    if-nez v0, :cond_5

    if-nez v26, :cond_5

    .line 1471
    iget-object v8, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v9, v7, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v8, v9}, Lcom/sleepycat/je/tree/BIN;->setKnownDeletedAndEvictLN(I)V

    .line 1475
    :cond_5
    if-eqz v0, :cond_a

    .line 1477
    if-nez v5, :cond_6

    .line 1482
    iget-object v10, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v11, v7, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-wide v12, v0, Lcom/sleepycat/je/log/LogItem;->lsn:J

    .line 1483
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v14

    iget v8, v0, Lcom/sleepycat/je/log/LogItem;->size:I

    .line 1482
    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Lcom/sleepycat/je/tree/BIN;->updateEntry(IJJI)V

    .line 1486
    iget-object v8, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v9, v7, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget v10, v3, Lcom/sleepycat/je/dbi/ExpirationInfo;->expiration:I

    iget-boolean v11, v3, Lcom/sleepycat/je/dbi/ExpirationInfo;->expirationInHours:Z

    invoke-virtual {v8, v9, v10, v11}, Lcom/sleepycat/je/tree/BIN;->setExpiration(IIZ)V

    .line 1504
    iget-object v8, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v9, v7, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v8, v9}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v8

    if-ne v8, v6, :cond_7

    .line 1505
    iget-object v8, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v6, v8}, Lcom/sleepycat/je/tree/LN;->addExtraMarshaledMemorySize(Lcom/sleepycat/je/tree/BIN;)V

    goto :goto_3

    .line 1516
    :cond_6
    iget-object v8, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v9, v7, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-wide v11, v0, Lcom/sleepycat/je/log/LogItem;->lsn:J

    iget v13, v0, Lcom/sleepycat/je/log/LogItem;->size:I

    iget v15, v3, Lcom/sleepycat/je/dbi/ExpirationInfo;->expiration:I

    iget-boolean v14, v3, Lcom/sleepycat/je/dbi/ExpirationInfo;->expirationInHours:Z

    move-object/from16 v10, p2

    move/from16 v17, v14

    move-object/from16 v14, p1

    move/from16 v16, v15

    move-object/from16 v15, v24

    invoke-virtual/range {v8 .. v17}, Lcom/sleepycat/je/tree/BIN;->insertRecord(ILcom/sleepycat/je/tree/LN;JI[B[BIZ)V

    .line 1521
    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    .line 1522
    invoke-virtual {v4, v1}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1523
    invoke-virtual {v6, v4}, Lcom/sleepycat/je/tree/LN;->setEntry(Lcom/sleepycat/je/DatabaseEntry;)V

    .line 1527
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->setInitialized()V

    .line 1530
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v8

    iget-object v1, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v10, v7, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v10}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sleepycat/je/dbi/CursorImpl;->setCurrentVersion(JJ)V

    .line 1531
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->setStorageSize()V

    .line 1538
    iget-object v1, v7, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v7, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1539
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v8, v7, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 1540
    invoke-virtual {v1, v8}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1541
    iget-object v1, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v8, v7, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v8}, Lcom/sleepycat/je/tree/BIN;->evictLN(I)V

    .line 1544
    :cond_9
    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    iget-object v9, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget-wide v10, v0, Lcom/sleepycat/je/log/LogItem;->lsn:J

    iget v12, v7, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    move/from16 v13, p3

    .end local p3    # "insertIndex":I
    .local v13, "insertIndex":I
    move-object/from16 v1, p0

    move-object v2, v8

    move-object v8, v3

    .end local v3    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .local v8, "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    move-object v3, v9

    move-object v14, v5

    move-object/from16 v9, v32

    .end local v5    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .end local v32    # "tree":Lcom/sleepycat/je/tree/Tree;
    .local v9, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v14    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    move-wide v4, v10

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/dbi/CursorImpl;->traceInsert(Ljava/util/logging/Level;Lcom/sleepycat/je/tree/BIN;JI)V

    .line 1546
    new-instance v1, Lcom/sleepycat/je/utilint/Pair;

    iget v2, v8, Lcom/sleepycat/je/dbi/ExpirationInfo;->expiration:I

    iget-boolean v3, v8, Lcom/sleepycat/je/dbi/ExpirationInfo;->expirationInHours:Z

    .line 1548
    invoke-static {v2, v3}, Lcom/sleepycat/je/DbInternal;->makeResult(IZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v2

    invoke-direct {v1, v14, v2}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1546
    return-object v1

    .line 1475
    .end local v8    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .end local v9    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v13    # "insertIndex":I
    .end local v14    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .restart local v3    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .restart local v5    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .restart local v32    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local p3    # "insertIndex":I
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1461
    .end local v0    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .restart local v31    # "logItem":Lcom/sleepycat/je/log/LogItem;
    :catchall_0
    move-exception v0

    move/from16 v13, p3

    move-object v8, v3

    move-object v14, v5

    move-object/from16 v9, v32

    .end local v3    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .end local v5    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .end local v32    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local p3    # "insertIndex":I
    .restart local v8    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .restart local v9    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v13    # "insertIndex":I
    .restart local v14    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    goto :goto_4

    .end local v8    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .end local v9    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v13    # "insertIndex":I
    .restart local v1    # "insertIndex":I
    .restart local v3    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .local v5, "tree":Lcom/sleepycat/je/tree/Tree;
    :catchall_1
    move-exception v0

    move v13, v1

    move-object v8, v3

    move-object v9, v5

    .end local v1    # "insertIndex":I
    .end local v3    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .end local v5    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v8    # "expInfo":Lcom/sleepycat/je/dbi/ExpirationInfo;
    .restart local v9    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v13    # "insertIndex":I
    :goto_4
    if-nez v31, :cond_b

    if-nez v26, :cond_b

    .line 1471
    iget-object v1, v7, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v2, v7, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/BIN;->setKnownDeletedAndEvictLN(I)V

    :cond_b
    throw v0
.end method

.method public static lockAfterLsnChange(Lcom/sleepycat/je/dbi/DatabaseImpl;JJLcom/sleepycat/je/txn/Locker;)V
    .locals 12
    .param p0, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "oldLsn"    # J
    .param p3, "newLsn"    # J
    .param p5, "excludeLocker"    # Lcom/sleepycat/je/txn/Locker;

    .line 3737
    move-object/from16 v0, p5

    .line 3738
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/txn/TxnManager;->getLockManager()Lcom/sleepycat/je/txn/LockManager;

    move-result-object v1

    .line 3740
    .local v1, "lockManager":Lcom/sleepycat/je/txn/LockManager;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/txn/LockManager;->getOwners(Ljava/lang/Long;)Ljava/util/Set;

    move-result-object v2

    .line 3741
    .local v2, "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    if-nez v2, :cond_0

    .line 3742
    return-void

    .line 3745
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/txn/LockInfo;

    .line 3746
    .local v4, "lockInfo":Lcom/sleepycat/je/txn/LockInfo;
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v11

    .line 3747
    .local v11, "locker":Lcom/sleepycat/je/txn/Locker;
    if-eq v11, v0, :cond_1

    .line 3748
    move-object v5, v11

    move-wide v6, p1

    move-wide v8, p3

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Lcom/sleepycat/je/txn/Locker;->lockAfterLsnChange(JJLcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3750
    .end local v4    # "lockInfo":Lcom/sleepycat/je/txn/LockInfo;
    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    :cond_1
    goto :goto_0

    .line 3752
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/txn/LockInfo;

    .line 3753
    .restart local v4    # "lockInfo":Lcom/sleepycat/je/txn/LockInfo;
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v5

    .line 3754
    .local v5, "locker":Lcom/sleepycat/je/txn/Locker;
    if-eq v5, v0, :cond_4

    .line 3755
    invoke-virtual {v5}, Lcom/sleepycat/je/txn/Locker;->allowReleaseLockAfterLsnChange()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3756
    move-wide v6, p1

    invoke-virtual {v5, p1, p2}, Lcom/sleepycat/je/txn/Locker;->releaseLock(J)Z

    goto :goto_2

    .line 3755
    :cond_3
    move-wide v6, p1

    goto :goto_2

    .line 3754
    :cond_4
    move-wide v6, p1

    .line 3758
    .end local v4    # "lockInfo":Lcom/sleepycat/je/txn/LockInfo;
    .end local v5    # "locker":Lcom/sleepycat/je/txn/Locker;
    :goto_2
    goto :goto_1

    .line 3759
    :cond_5
    move-wide v6, p1

    return-void
.end method

.method private lockLN(Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .locals 17
    .param p1, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p2, "allowUncontended"    # Z
    .param p3, "noWait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/LockConflictException;
        }
    .end annotation

    .line 3566
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    .line 3568
    .local v2, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    nop

    .line 3569
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnManager;->getLockManager()Lcom/sleepycat/je/txn/LockManager;

    move-result-object v3

    .line 3571
    .local v3, "lockManager":Lcom/sleepycat/je/txn/LockManager;
    new-instance v0, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    invoke-direct {v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;-><init>()V

    move-object v4, v0

    .line 3572
    .local v4, "standing":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v5, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v5}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$002(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;J)J

    .line 3575
    invoke-static {v4}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$000(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    const/4 v5, 0x1

    if-nez v0, :cond_1

    .line 3576
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v6, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v6}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3577
    invoke-static {v4, v5}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$202(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Z)Z

    .line 3578
    return-object v4

    .line 3576
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3582
    :cond_1
    sget-object v0, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    move-object/from16 v6, p1

    if-ne v6, v0, :cond_2

    .line 3583
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v5, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v5}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v0

    invoke-static {v4, v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$202(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Z)Z

    .line 3584
    return-object v4

    .line 3592
    :cond_2
    if-eqz p2, :cond_4

    invoke-static {v4}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$000(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/txn/LockManager;->isLockUncontended(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3593
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/dbi/CursorImpl;->verifyPendingDeleted(Lcom/sleepycat/je/txn/LockType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3594
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    iget-object v5, v1, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, v5}, Lcom/sleepycat/je/txn/Locker;->preLogWithoutLock(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3595
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v5, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v5}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v0

    invoke-static {v4, v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$202(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Z)Z

    .line 3596
    return-object v4

    .line 3593
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3603
    :cond_4
    const/4 v0, 0x0

    .line 3604
    .local v0, "wasLockedAndExpiresSoon":Z
    iget-object v9, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v10, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v9, v10}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v15

    .line 3605
    .local v15, "prevExpiration":I
    iget-object v9, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v9}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v14

    .line 3607
    .local v14, "prevExpirationInHours":Z
    iget-object v9, v1, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 3609
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTtlMaxTxnTime()I

    move-result v9

    int-to-long v9, v9

    .line 3607
    invoke-virtual {v2, v15, v14, v9, v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->expiresWithin(IZJ)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3611
    iget-object v9, v1, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    invoke-static {v4}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$000(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/sleepycat/je/txn/LockManager;->ownsOrSharesLock(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3612
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_0

    .line 3625
    :cond_5
    move/from16 v16, v0

    .end local v0    # "wasLockedAndExpiresSoon":Z
    .local v16, "wasLockedAndExpiresSoon":Z
    :goto_0
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->getDefaultNoWait()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3627
    :try_start_0
    iget-object v9, v1, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    .line 3628
    invoke-static {v4}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$000(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)J

    move-result-wide v10

    const/4 v13, 0x1

    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_0
    .catch Lcom/sleepycat/je/LockNotAvailableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3627
    move-object/from16 v12, p1

    move v5, v14

    .end local v14    # "prevExpirationInHours":Z
    .local v5, "prevExpirationInHours":Z
    move-object v14, v0

    :try_start_1
    invoke-virtual/range {v9 .. v14}, Lcom/sleepycat/je/txn/Locker;->lock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$102(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Lcom/sleepycat/je/txn/LockResult;)Lcom/sleepycat/je/txn/LockResult;
    :try_end_1
    .catch Lcom/sleepycat/je/LockNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3637
    goto :goto_3

    .line 3634
    :catch_0
    move-exception v0

    goto :goto_1

    .line 3630
    :catch_1
    move-exception v0

    goto :goto_2

    .line 3634
    .end local v5    # "prevExpirationInHours":Z
    .restart local v14    # "prevExpirationInHours":Z
    :catch_2
    move-exception v0

    move v5, v14

    .line 3635
    .end local v14    # "prevExpirationInHours":Z
    .local v0, "e":Lcom/sleepycat/je/LockConflictException;
    .restart local v5    # "prevExpirationInHours":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 3636
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v7

    throw v7

    .line 3630
    .end local v0    # "e":Lcom/sleepycat/je/LockConflictException;
    .end local v5    # "prevExpirationInHours":Z
    .restart local v14    # "prevExpirationInHours":Z
    :catch_3
    move-exception v0

    move v5, v14

    .line 3631
    .end local v14    # "prevExpirationInHours":Z
    .local v0, "e":Lcom/sleepycat/je/LockNotAvailableException;
    .restart local v5    # "prevExpirationInHours":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 3632
    throw v0

    .line 3639
    .end local v0    # "e":Lcom/sleepycat/je/LockNotAvailableException;
    .end local v5    # "prevExpirationInHours":Z
    .restart local v14    # "prevExpirationInHours":Z
    :cond_6
    move v5, v14

    .end local v14    # "prevExpirationInHours":Z
    .restart local v5    # "prevExpirationInHours":Z
    iget-object v9, v1, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    .line 3640
    invoke-static {v4}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$000(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)J

    move-result-wide v10

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 3639
    move-object/from16 v12, p1

    invoke-virtual/range {v9 .. v14}, Lcom/sleepycat/je/txn/Locker;->nonBlockingLock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$102(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Lcom/sleepycat/je/txn/LockResult;)Lcom/sleepycat/je/txn/LockResult;

    .line 3644
    :goto_3
    invoke-static {v4}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$100(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v0

    sget-object v9, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v0, v9, :cond_9

    .line 3647
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/dbi/CursorImpl;->verifyPendingDeleted(Lcom/sleepycat/je/txn/LockType;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3649
    if-eqz v16, :cond_7

    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v7, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 3650
    invoke-virtual {v0, v7}, Lcom/sleepycat/je/tree/BIN;->isDeleted(I)Z

    move-result v0

    goto :goto_4

    :cond_7
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v7, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v7}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v0

    .line 3649
    :goto_4
    invoke-static {v4, v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$202(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Z)Z

    .line 3652
    return-object v4

    .line 3647
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3655
    :cond_9
    if-eqz p3, :cond_b

    .line 3658
    if-eqz v16, :cond_a

    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v7, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 3659
    invoke-virtual {v0, v7}, Lcom/sleepycat/je/tree/BIN;->isDeleted(I)Z

    move-result v0

    goto :goto_5

    :cond_a
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v7, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v7}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v0

    .line 3658
    :goto_5
    invoke-static {v4, v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$202(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Z)Z

    .line 3661
    return-object v4

    .line 3672
    :cond_b
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 3674
    iget-object v9, v1, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    .line 3675
    invoke-static {v4}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$000(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)J

    move-result-wide v10

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 3674
    move-object/from16 v12, p1

    invoke-virtual/range {v9 .. v14}, Lcom/sleepycat/je/txn/Locker;->lock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$102(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Lcom/sleepycat/je/txn/LockResult;)Lcom/sleepycat/je/txn/LockResult;

    .line 3677
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 3680
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v9, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v9}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v9

    .line 3681
    .local v9, "newLsn":J
    invoke-static {v4}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$000(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)J

    move-result-wide v11

    cmp-long v0, v11, v9

    if-nez v0, :cond_10

    .line 3687
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v7, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v7}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v0

    if-ne v15, v0, :cond_c

    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 3688
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v0

    if-eq v5, v0, :cond_d

    .line 3689
    :cond_c
    const/16 v16, 0x0

    .line 3692
    :cond_d
    if-eqz v16, :cond_e

    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v7, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 3693
    invoke-virtual {v0, v7}, Lcom/sleepycat/je/tree/BIN;->isDeleted(I)Z

    move-result v0

    goto :goto_7

    :cond_e
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v7, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v7}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v0

    .line 3692
    :goto_7
    invoke-static {v4, v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$202(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Z)Z

    .line 3695
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/dbi/CursorImpl;->verifyPendingDeleted(Lcom/sleepycat/je/txn/LockType;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3696
    return-object v4

    .line 3695
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3700
    :cond_10
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/dbi/CursorImpl;->revertLock(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)V

    .line 3701
    invoke-static {v4, v9, v10}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$002(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;J)J

    .line 3704
    cmp-long v0, v9, v7

    if-nez v0, :cond_12

    .line 3705
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v7, v1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v7}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3706
    const/4 v0, 0x1

    invoke-static {v4, v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$202(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Z)Z

    .line 3707
    return-object v4

    .line 3705
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3704
    :cond_12
    const/4 v0, 0x1

    .line 3709
    .end local v9    # "newLsn":J
    goto :goto_6
.end method

.method private lockLNAndCheckDefunct(Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .locals 5
    .param p1, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p2, "dirtyReadAll"    # Z
    .param p3, "dataRequested"    # Z

    .line 2174
    if-eqz p2, :cond_1

    sget-object v0, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2175
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2177
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/CursorImpl;->lockLN(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    move-result-object v0

    .line 2179
    .local v0, "standing":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->recordExists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2180
    return-object v0

    .line 2185
    :cond_4
    sget-object v1, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    .line 2186
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->revertLock(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)V

    .line 2192
    return-object v2

    .line 2197
    :cond_5
    if-nez p2, :cond_6

    .line 2199
    return-object v2

    .line 2211
    :cond_6
    sget-object v1, Lcom/sleepycat/je/txn/LockType;->READ:Lcom/sleepycat/je/txn/LockType;

    const/4 v3, 0x0

    xor-int/lit8 v4, p3, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/sleepycat/je/dbi/CursorImpl;->lockLN(Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    move-result-object v0

    .line 2215
    invoke-static {v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$100(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v1

    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v1, v3, :cond_8

    .line 2223
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->recordExists()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2224
    return-object v0

    .line 2223
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2228
    :cond_8
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->revertLock(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)V

    .line 2230
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->recordExists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2235
    return-object v0

    .line 2242
    :cond_9
    return-object v2
.end method

.method private maybeInitTreeStatsAccumulator()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->treeStatsAccumulatorTL:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->treeStatsAccumulatorTL:Ljava/lang/ThreadLocal;

    .line 331
    :cond_0
    return-void
.end method

.method private performCacheModeBINEviction(Lcom/sleepycat/je/tree/BIN;)V
    .locals 2
    .param p1, "binToEvict"    # Lcom/sleepycat/je/tree/BIN;

    .line 838
    sget-object v0, Lcom/sleepycat/je/dbi/CursorImpl$1;->$SwitchMap$com$sleepycat$je$CacheMode:[I

    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1}, Lcom/sleepycat/je/CacheMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 849
    goto :goto_1

    .line 844
    :pswitch_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getFetchedCold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->evictBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/CacheMode;)V

    goto :goto_0

    .line 840
    :pswitch_1
    sget-object v0, Lcom/sleepycat/je/CacheMode;->EVICT_BIN:Lcom/sleepycat/je/CacheMode;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->evictBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/CacheMode;)V

    .line 841
    nop

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 849
    :goto_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private performCacheModeEviction(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 5
    .param p1, "newCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 782
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    sget-object v1, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    sget-object v1, Lcom/sleepycat/je/CacheMode;->KEEP_HOT:Lcom/sleepycat/je/CacheMode;

    if-ne v0, v1, :cond_0

    goto :goto_3

    .line 790
    :cond_0
    if-eqz p1, :cond_4

    .line 791
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget-object v1, p1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 792
    .local v0, "movedOffBin":Z
    :goto_0
    if-nez v0, :cond_3

    iget v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget v4, p1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-eq v1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    :goto_1
    move v1, v2

    .local v1, "movedOffLn":Z
    goto :goto_2

    .line 794
    .end local v0    # "movedOffBin":Z
    .end local v1    # "movedOffLn":Z
    :cond_4
    const/4 v0, 0x1

    .line 795
    .restart local v0    # "movedOffBin":Z
    const/4 v1, 0x1

    .line 798
    .restart local v1    # "movedOffLn":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 799
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->performCacheModeLNEviction()V

    .line 803
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    sget-object v3, Lcom/sleepycat/je/CacheMode;->EVICT_LN:Lcom/sleepycat/je/CacheMode;

    if-ne v2, v3, :cond_6

    .line 804
    return-void

    .line 807
    :cond_6
    if-eqz v0, :cond_7

    .line 808
    iget-object v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-direct {p0, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->performCacheModeBINEviction(Lcom/sleepycat/je/tree/BIN;)V

    .line 810
    :cond_7
    return-void

    .line 784
    .end local v0    # "movedOffBin":Z
    .end local v1    # "movedOffLn":Z
    :cond_8
    :goto_3
    return-void
.end method

.method private performCacheModeLNEviction()V
    .locals 2

    .line 818
    sget-object v0, Lcom/sleepycat/je/dbi/CursorImpl$1;->$SwitchMap$com$sleepycat$je$CacheMode:[I

    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1}, Lcom/sleepycat/je/CacheMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 828
    goto :goto_1

    .line 825
    :pswitch_0
    invoke-direct {p0, v1, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->evictLN(ZZ)V

    .line 826
    goto :goto_0

    .line 821
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->evictLN(ZZ)V

    .line 822
    nop

    .line 830
    :goto_0
    return-void

    .line 828
    :goto_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private performPriorBINEviction()V
    .locals 3

    .line 700
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->priorBIN:Lcom/sleepycat/je/tree/BIN;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->priorBIN:Lcom/sleepycat/je/tree/BIN;

    .line 709
    .local v0, "binToEvict":Lcom/sleepycat/je/tree/BIN;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->priorBIN:Lcom/sleepycat/je/tree/BIN;

    .line 712
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    sget-object v2, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    sget-object v2, Lcom/sleepycat/je/CacheMode;->KEEP_HOT:Lcom/sleepycat/je/CacheMode;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    sget-object v2, Lcom/sleepycat/je/CacheMode;->EVICT_LN:Lcom/sleepycat/je/CacheMode;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 718
    :cond_1
    sget-object v1, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 720
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->performCacheModeBINEviction(Lcom/sleepycat/je/tree/BIN;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->releaseLatchIfOwner()V

    .line 723
    nop

    .line 724
    return-void

    .line 722
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->releaseLatchIfOwner()V

    throw v1

    .line 715
    :cond_2
    :goto_0
    return-void

    .line 701
    .end local v0    # "binToEvict":Lcom/sleepycat/je/tree/BIN;
    :cond_3
    :goto_1
    return-void
.end method

.method private releaseNonTxnLocks()V
    .locals 1

    .line 637
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->retainNonTxnLocks:Z

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->releaseNonTxnLocks()V

    .line 640
    :cond_0
    return-void
.end method

.method private removeCursorAndPerformCacheEviction(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 1
    .param p1, "newCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 674
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->performPriorBINEviction()V

    .line 676
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 678
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-nez v0, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->clear()V

    .line 680
    return-void

    .line 685
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/tree/BIN;->removeCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 686
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/CursorImpl;->performCacheModeEviction(Lcom/sleepycat/je/dbi/CursorImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 689
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->clear()V

    .line 690
    nop

    .line 691
    return-void

    .line 688
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 689
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->clear()V

    throw v0
.end method

.method private revertLock(JLcom/sleepycat/je/txn/LockResult;)V
    .locals 2
    .param p1, "lsn"    # J
    .param p3, "lockResult"    # Lcom/sleepycat/je/txn/LockResult;

    .line 3877
    invoke-virtual {p3}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v0

    .line 3879
    .local v0, "lockStatus":Lcom/sleepycat/je/txn/LockGrantType;
    sget-object v1, Lcom/sleepycat/je/txn/LockGrantType;->NEW:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_NEW:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3882
    :cond_0
    sget-object v1, Lcom/sleepycat/je/txn/LockGrantType;->PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v0, v1, :cond_3

    .line 3884
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/txn/Locker;->demoteLock(J)V

    goto :goto_1

    .line 3881
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/txn/Locker;->releaseLock(J)Z

    .line 3886
    :cond_3
    :goto_1
    return-void
.end method

.method private setCurrentVersion(JJ)V
    .locals 1
    .param p1, "vlsn"    # J
    .param p3, "lsn"    # J

    .line 2433
    new-instance v0, Lcom/sleepycat/je/dbi/RecordVersion;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sleepycat/je/dbi/RecordVersion;-><init>(JJ)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->currentRecordVersion:Lcom/sleepycat/je/dbi/RecordVersion;

    .line 2434
    return-void
.end method

.method private setInitialized()V
    .locals 1

    .line 533
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->status:B

    .line 534
    return-void
.end method

.method private setPosition(Lcom/sleepycat/je/tree/BIN;I)V
    .locals 1
    .param p1, "newBin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "newIndex"    # I

    .line 438
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eq v0, p1, :cond_1

    .line 439
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 441
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/tree/BIN;->removeCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 442
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 444
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/CursorImpl;->setBIN(Lcom/sleepycat/je/tree/BIN;)V

    .line 445
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->addCursor()V

    .line 447
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/dbi/CursorImpl;->setIndex(I)V

    .line 448
    return-void
.end method

.method private setStorageSize()V
    .locals 2

    .line 2468
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-static {v0, v1}, Lcom/sleepycat/je/tree/StorageSize;->getStorageSize(Lcom/sleepycat/je/tree/BIN;I)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->storageSize:I

    .line 2469
    return-void
.end method

.method private shouldEmbedLN([B)Z
    .locals 2
    .param p1, "data"    # [B

    .line 889
    array-length v0, p1

    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMaxEmbeddedLN()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 890
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 891
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbType;->isInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 889
    :goto_0
    return v0
.end method

.method private skipEntries(ZJLcom/sleepycat/je/dbi/RangeConstraint;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/tree/BIN;IJ)J
    .locals 4
    .param p1, "forward"    # Z
    .param p2, "maxCount"    # J
    .param p4, "rangeConstraint"    # Lcom/sleepycat/je/dbi/RangeConstraint;
    .param p5, "finalPositionCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p6, "curBin"    # Lcom/sleepycat/je/tree/BIN;
    .param p7, "curIndex"    # I
    .param p8, "count"    # J

    .line 3118
    invoke-virtual {p6}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3120
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3122
    .local v0, "incr":I
    :goto_0
    add-int v1, p7, v0

    .line 3123
    .local v1, "i":I
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p6}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_2

    :cond_1
    if-gez v1, :cond_2

    .line 3124
    nop

    .line 3138
    .end local v1    # "i":I
    :goto_2
    return-wide p8

    .line 3126
    .restart local v1    # "i":I
    :cond_2
    if-eqz p4, :cond_3

    .line 3127
    invoke-virtual {p6, v1}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v2

    invoke-interface {p4, v2}, Lcom/sleepycat/je/dbi/RangeConstraint;->inBounds([B)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3128
    neg-long v2, p8

    return-wide v2

    .line 3130
    :cond_3
    invoke-virtual {p6, v1}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3131
    const-wide/16 v2, 0x1

    add-long/2addr p8, v2

    .line 3132
    invoke-direct {p5, p6, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->setPosition(Lcom/sleepycat/je/tree/BIN;I)V

    .line 3133
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_4

    cmp-long v2, p8, p2

    if-ltz v2, :cond_4

    .line 3134
    neg-long v2, p8

    return-wide v2

    .line 3122
    :cond_4
    add-int/2addr v1, v0

    goto :goto_1

    .line 3118
    .end local v0    # "incr":I
    .end local v1    # "i":I
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private skipInternal(ZJLcom/sleepycat/je/dbi/RangeConstraint;Lcom/sleepycat/je/dbi/CursorImpl;)J
    .locals 27
    .param p1, "forward"    # Z
    .param p2, "maxCount"    # J
    .param p4, "rangeConstraint"    # Lcom/sleepycat/je/dbi/RangeConstraint;
    .param p5, "finalPositionCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 2939
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v12

    .line 2941
    .local v12, "tree":Lcom/sleepycat/je/tree/Tree;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 2943
    const/4 v0, 0x0

    .line 2944
    .local v0, "parent":Lcom/sleepycat/je/tree/IN;
    const/4 v1, 0x0

    .line 2945
    .local v1, "prevBin":Lcom/sleepycat/je/tree/BIN;
    iget-object v2, v11, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 2946
    .local v2, "curBin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v3

    .line 2947
    .local v3, "curIndex":I
    const-wide/16 v4, 0x0

    .line 2948
    .local v4, "count":J
    const/4 v13, 0x0

    move-object v14, v0

    move-object v15, v1

    move-object v9, v2

    move/from16 v16, v3

    move-wide/from16 v17, v4

    .line 2952
    .end local v0    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v1    # "prevBin":Lcom/sleepycat/je/tree/BIN;
    .end local v2    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "curIndex":I
    .end local v4    # "count":J
    .local v9, "curBin":Lcom/sleepycat/je/tree/BIN;
    .local v13, "success":Z
    .local v14, "parent":Lcom/sleepycat/je/tree/IN;
    .local v15, "prevBin":Lcom/sleepycat/je/tree/BIN;
    .local v16, "curIndex":I
    .local v17, "count":J
    :goto_0
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v9, v10}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 2955
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v9

    move/from16 v8, v16

    move-object/from16 v19, v9

    move/from16 v20, v10

    .end local v9    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .local v19, "curBin":Lcom/sleepycat/je/tree/BIN;
    move-wide/from16 v9, v17

    :try_start_1
    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/dbi/CursorImpl;->skipEntries(ZJLcom/sleepycat/je/dbi/RangeConstraint;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/tree/BIN;IJ)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    move-wide v1, v0

    .line 2959
    .end local v17    # "count":J
    .local v1, "count":J
    const-wide/16 v17, 0x0

    cmp-long v0, v1, v17

    if-gez v0, :cond_4

    .line 2960
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2961
    const/4 v0, 0x1

    .line 2962
    .end local v13    # "success":Z
    .local v0, "success":Z
    neg-long v3, v1

    .line 3088
    move-object/from16 v5, v19

    .end local v19    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .local v5, "curBin":Lcom/sleepycat/je/tree/BIN;
    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    .line 3089
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatchIfOwner()V

    .line 3091
    :cond_0
    if-eqz v15, :cond_1

    if-nez v0, :cond_1

    .line 3092
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/BIN;->releaseLatchIfOwner()V

    .line 3094
    :cond_1
    if-eqz v14, :cond_2

    if-nez v0, :cond_2

    .line 3095
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 3098
    :cond_2
    sget-boolean v6, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v6, :cond_3

    .line 3099
    invoke-static/range {v20 .. v20}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 2962
    :cond_3
    return-wide v3

    .line 3088
    .end local v0    # "success":Z
    .end local v5    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v13    # "success":Z
    .restart local v19    # "curBin":Lcom/sleepycat/je/tree/BIN;
    :catchall_0
    move-exception v0

    move-object/from16 v5, v19

    move-wide/from16 v17, v1

    move-object v9, v5

    move/from16 v25, v13

    move/from16 v26, v20

    .end local v19    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v5    # "curBin":Lcom/sleepycat/je/tree/BIN;
    goto/16 :goto_d

    .line 2970
    .end local v5    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v19    # "curBin":Lcom/sleepycat/je/tree/BIN;
    :cond_4
    move-object/from16 v5, v19

    .line 2971
    .end local v19    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v5    # "curBin":Lcom/sleepycat/je/tree/BIN;
    :try_start_3
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    const/4 v3, 0x1

    if-nez v0, :cond_5

    .line 2972
    :try_start_4
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->getIdentifierKey()[B

    move-result-object v0

    move/from16 v9, v20

    goto :goto_1

    .line 3088
    :catchall_1
    move-exception v0

    move-wide/from16 v17, v1

    move-object v9, v5

    move/from16 v25, v13

    move/from16 v26, v20

    goto/16 :goto_d

    .line 2972
    :cond_5
    if-eqz p1, :cond_6

    .line 2974
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v5, v0}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v9, v20

    goto :goto_1

    :cond_6
    nop

    .line 2975
    move/from16 v9, v20

    :try_start_5
    invoke-virtual {v5, v9}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v0

    :goto_1
    nop

    .line 2977
    .local v0, "idKey":[B
    sget-object v4, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v12, v5, v9, v3, v4}, Lcom/sleepycat/je/tree/Tree;->getParentINForChildIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/SearchResult;

    move-result-object v4

    move-object v10, v4

    .line 2981
    .local v10, "result":Lcom/sleepycat/je/tree/SearchResult;
    iget-object v4, v10, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    move-object v14, v4

    .line 2983
    iget-boolean v4, v10, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-eqz v4, :cond_1d

    .line 2995
    invoke-virtual {v14, v0, v9, v9}, Lcom/sleepycat/je/tree/IN;->findEntry([BZZ)I

    move-result v4

    .line 2997
    .local v4, "parentIndex":I
    sget-object v6, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v14, v4, v6}, Lcom/sleepycat/je/tree/IN;->fetchIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/tree/BIN;

    move-object v5, v6

    .line 2998
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->latch()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    .line 3000
    const/4 v8, -0x1

    if-eqz p1, :cond_8

    .line 3001
    :try_start_6
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    sub-int/2addr v6, v3

    if-ge v4, v6, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v26, v9

    move-object/from16 v23, v10

    move/from16 v25, v13

    move v13, v8

    goto/16 :goto_9

    .line 3088
    .end local v0    # "idKey":[B
    .end local v4    # "parentIndex":I
    .end local v10    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :catchall_2
    move-exception v0

    move-wide/from16 v17, v1

    move/from16 v26, v9

    move/from16 v25, v13

    move-object v9, v5

    goto/16 :goto_d

    .line 3001
    .restart local v0    # "idKey":[B
    .restart local v4    # "parentIndex":I
    .restart local v10    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :cond_8
    if-lez v4, :cond_14

    .line 3008
    :goto_2
    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v3, v8

    :goto_3
    move/from16 v19, v3

    .line 3010
    .local v19, "incr":I
    add-int v4, v4, v19

    move-wide/from16 v20, v1

    move-object v1, v15

    move v15, v4

    .line 3012
    .end local v4    # "parentIndex":I
    .local v1, "prevBin":Lcom/sleepycat/je/tree/BIN;
    .local v15, "parentIndex":I
    .local v20, "count":J
    :goto_4
    move-object v1, v5

    .line 3013
    const/4 v2, 0x0

    .line 3016
    .end local v5    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v2    # "curBin":Lcom/sleepycat/je/tree/BIN;
    if-eqz p1, :cond_a

    .line 3017
    :try_start_7
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v3

    if-lt v15, v3, :cond_b

    goto :goto_5

    .line 3088
    .end local v0    # "idKey":[B
    .end local v10    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v15    # "parentIndex":I
    .end local v19    # "incr":I
    :catchall_3
    move-exception v0

    move-object v15, v1

    move/from16 v26, v9

    move/from16 v25, v13

    move-wide/from16 v17, v20

    move-object v9, v2

    goto/16 :goto_d

    .line 3017
    .restart local v0    # "idKey":[B
    .restart local v10    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v15    # "parentIndex":I
    .restart local v19    # "incr":I
    :cond_a
    if-gez v15, :cond_b

    .line 3019
    :goto_5
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 3020
    move/from16 v26, v9

    move-object/from16 v23, v10

    move/from16 v25, v13

    move v13, v8

    goto/16 :goto_8

    .line 3030
    :cond_b
    :try_start_8
    invoke-virtual {v14, v15}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/BIN;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    move-object v7, v3

    .line 3032
    .end local v2    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .local v7, "curBin":Lcom/sleepycat/je/tree/BIN;
    if-eqz v7, :cond_13

    :try_start_9
    sget-object v2, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    .line 3033
    invoke-virtual {v7, v2}, Lcom/sleepycat/je/tree/BIN;->latchNoWait(Lcom/sleepycat/je/CacheMode;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v24, v7

    move/from16 v26, v9

    move-object/from16 v23, v10

    move/from16 v25, v13

    move v13, v8

    goto/16 :goto_7

    .line 3039
    :cond_c
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 3040
    const/16 v22, 0x0

    .line 3043
    .end local v1    # "prevBin":Lcom/sleepycat/je/tree/BIN;
    .local v22, "prevBin":Lcom/sleepycat/je/tree/BIN;
    :try_start_a
    invoke-direct {v11, v7, v8}, Lcom/sleepycat/je/dbi/CursorImpl;->setPosition(Lcom/sleepycat/je/tree/BIN;I)V

    .line 3045
    invoke-virtual {v7, v9}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Z)V

    .line 3048
    if-eqz p1, :cond_d

    move/from16 v23, v8

    goto :goto_6

    .line 3051
    :cond_d
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move/from16 v23, v1

    .line 3048
    :goto_6
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v24, v7

    .end local v7    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .local v24, "curBin":Lcom/sleepycat/je/tree/BIN;
    move/from16 v25, v13

    move v13, v8

    .end local v13    # "success":Z
    .local v25, "success":Z
    move/from16 v8, v23

    move/from16 v26, v9

    move-object/from16 v23, v10

    .end local v10    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .local v23, "result":Lcom/sleepycat/je/tree/SearchResult;
    move-wide/from16 v9, v20

    :try_start_b
    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/dbi/CursorImpl;->skipEntries(ZJLcom/sleepycat/je/dbi/RangeConstraint;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/tree/BIN;IJ)J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 3053
    .end local v20    # "count":J
    .local v1, "count":J
    cmp-long v3, v1, v17

    if-gez v3, :cond_12

    .line 3054
    :try_start_c
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3055
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 3056
    const/4 v3, 0x1

    .line 3057
    .end local v25    # "success":Z
    .local v3, "success":Z
    neg-long v4, v1

    .line 3088
    if-eqz v24, :cond_e

    if-nez v3, :cond_e

    .line 3089
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/tree/BIN;->releaseLatchIfOwner()V

    .line 3091
    :cond_e
    if-eqz v22, :cond_f

    if-nez v3, :cond_f

    .line 3092
    invoke-virtual/range {v22 .. v22}, Lcom/sleepycat/je/tree/BIN;->releaseLatchIfOwner()V

    .line 3094
    :cond_f
    if-eqz v14, :cond_10

    if-nez v3, :cond_10

    .line 3095
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 3098
    :cond_10
    sget-boolean v6, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v6, :cond_11

    .line 3099
    invoke-static/range {v26 .. v26}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 3057
    :cond_11
    return-wide v4

    .line 3088
    .end local v0    # "idKey":[B
    .end local v3    # "success":Z
    .end local v15    # "parentIndex":I
    .end local v19    # "incr":I
    .end local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v25    # "success":Z
    :catchall_4
    move-exception v0

    move-wide/from16 v17, v1

    move-object/from16 v15, v22

    move-object/from16 v9, v24

    goto/16 :goto_d

    .line 3010
    .restart local v0    # "idKey":[B
    .restart local v15    # "parentIndex":I
    .restart local v19    # "incr":I
    .restart local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :cond_12
    add-int v15, v15, v19

    move-wide/from16 v20, v1

    move v8, v13

    move-object/from16 v1, v22

    move-object/from16 v10, v23

    move-object/from16 v5, v24

    move/from16 v13, v25

    move/from16 v9, v26

    goto/16 :goto_4

    .line 3088
    .end local v0    # "idKey":[B
    .end local v1    # "count":J
    .end local v15    # "parentIndex":I
    .end local v19    # "incr":I
    .end local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v20    # "count":J
    :catchall_5
    move-exception v0

    move-wide/from16 v17, v20

    move-object/from16 v15, v22

    move-object/from16 v9, v24

    goto/16 :goto_d

    .end local v24    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v25    # "success":Z
    .restart local v7    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v13    # "success":Z
    :catchall_6
    move-exception v0

    move-object/from16 v24, v7

    move/from16 v26, v9

    move/from16 v25, v13

    move-wide/from16 v17, v20

    move-object/from16 v15, v22

    move-object/from16 v9, v24

    .end local v7    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v13    # "success":Z
    .restart local v24    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v25    # "success":Z
    goto/16 :goto_d

    .end local v22    # "prevBin":Lcom/sleepycat/je/tree/BIN;
    .end local v24    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v25    # "success":Z
    .local v1, "prevBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v7    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v13    # "success":Z
    :catchall_7
    move-exception v0

    move-object/from16 v24, v7

    move/from16 v26, v9

    move/from16 v25, v13

    move-object v15, v1

    move-wide/from16 v17, v20

    move-object/from16 v9, v24

    .end local v7    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v13    # "success":Z
    .restart local v24    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v25    # "success":Z
    goto/16 :goto_d

    .line 3032
    .end local v24    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v25    # "success":Z
    .restart local v0    # "idKey":[B
    .restart local v7    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v10    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v13    # "success":Z
    .restart local v15    # "parentIndex":I
    .restart local v19    # "incr":I
    :cond_13
    move-object/from16 v24, v7

    move/from16 v26, v9

    move-object/from16 v23, v10

    move/from16 v25, v13

    move v13, v8

    .line 3034
    .end local v7    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v10    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v13    # "success":Z
    .restart local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v24    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v25    # "success":Z
    :goto_7
    :try_start_d
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 3035
    move-object/from16 v2, v24

    .line 3060
    .end local v19    # "incr":I
    .end local v24    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v2    # "curBin":Lcom/sleepycat/je/tree/BIN;
    :goto_8
    move-object v9, v2

    move v4, v15

    move-wide/from16 v17, v20

    move-object v15, v1

    goto :goto_a

    .line 3088
    .end local v0    # "idKey":[B
    .end local v2    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v15    # "parentIndex":I
    .end local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v24    # "curBin":Lcom/sleepycat/je/tree/BIN;
    :catchall_8
    move-exception v0

    move-object v15, v1

    move-wide/from16 v17, v20

    move-object/from16 v9, v24

    goto/16 :goto_d

    .end local v24    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v25    # "success":Z
    .restart local v2    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v13    # "success":Z
    :catchall_9
    move-exception v0

    move/from16 v26, v9

    move/from16 v25, v13

    move-object v15, v1

    move-object v9, v2

    move-wide/from16 v17, v20

    .end local v13    # "success":Z
    .restart local v25    # "success":Z
    goto/16 :goto_d

    .line 3001
    .end local v2    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v20    # "count":J
    .end local v25    # "success":Z
    .restart local v0    # "idKey":[B
    .local v1, "count":J
    .restart local v4    # "parentIndex":I
    .restart local v5    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v10    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v13    # "success":Z
    .local v15, "prevBin":Lcom/sleepycat/je/tree/BIN;
    :cond_14
    move/from16 v26, v9

    move-object/from16 v23, v10

    move/from16 v25, v13

    move v13, v8

    .line 3062
    .end local v10    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v13    # "success":Z
    .restart local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v25    # "success":Z
    :goto_9
    :try_start_e
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 3063
    move-object v3, v5

    move-wide/from16 v17, v1

    move-object v15, v3

    move-object v9, v5

    .line 3070
    .end local v1    # "count":J
    .end local v5    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v9    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v17    # "count":J
    :goto_a
    if-eqz p1, :cond_15

    :try_start_f
    sget-object v1, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    .line 3071
    invoke-virtual {v12, v15, v1}, Lcom/sleepycat/je/tree/Tree;->getNextBin(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    goto :goto_b

    :cond_15
    sget-object v1, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    .line 3072
    invoke-virtual {v12, v15, v1}, Lcom/sleepycat/je/tree/Tree;->getPrevBin(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    :goto_b
    move-object v9, v1

    .line 3074
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/BIN;->isLatchOwner()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-nez v1, :cond_1c

    .line 3076
    if-nez v9, :cond_1a

    .line 3077
    const/4 v1, 0x1

    .line 3078
    .end local v25    # "success":Z
    .local v1, "success":Z
    nop

    .line 3088
    if-eqz v9, :cond_16

    if-nez v1, :cond_16

    .line 3089
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/BIN;->releaseLatchIfOwner()V

    .line 3091
    :cond_16
    if-eqz v15, :cond_17

    if-nez v1, :cond_17

    .line 3092
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/BIN;->releaseLatchIfOwner()V

    .line 3094
    :cond_17
    if-eqz v14, :cond_18

    if-nez v1, :cond_18

    .line 3095
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 3098
    :cond_18
    sget-boolean v2, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v2, :cond_19

    .line 3099
    invoke-static/range {v26 .. v26}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 3078
    :cond_19
    return-wide v17

    .line 3081
    .end local v1    # "success":Z
    .restart local v25    # "success":Z
    :cond_1a
    const/4 v15, 0x0

    .line 3082
    if-eqz p1, :cond_1b

    move v8, v13

    goto :goto_c

    :cond_1b
    :try_start_10
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v8

    :goto_c
    move/from16 v16, v8

    .line 3085
    invoke-direct {v11, v9, v13}, Lcom/sleepycat/je/dbi/CursorImpl;->setPosition(Lcom/sleepycat/je/tree/BIN;I)V

    .line 3086
    .end local v0    # "idKey":[B
    .end local v4    # "parentIndex":I
    .end local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    move/from16 v13, v25

    goto/16 :goto_0

    .line 3074
    .restart local v0    # "idKey":[B
    .restart local v4    # "parentIndex":I
    .restart local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    :cond_1c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v9    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v12    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v14    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v15    # "prevBin":Lcom/sleepycat/je/tree/BIN;
    .end local v16    # "curIndex":I
    .end local v17    # "count":J
    .end local v25    # "success":Z
    .end local p1    # "forward":Z
    .end local p2    # "maxCount":J
    .end local p4    # "rangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    .end local p5    # "finalPositionCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 3088
    .end local v0    # "idKey":[B
    .end local v4    # "parentIndex":I
    .end local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v9    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v12    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v14    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v15    # "prevBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v16    # "curIndex":I
    .restart local v17    # "count":J
    .restart local v25    # "success":Z
    .restart local p1    # "forward":Z
    .restart local p2    # "maxCount":J
    .restart local p4    # "rangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    .restart local p5    # "finalPositionCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_a
    move-exception v0

    goto :goto_d

    .line 2984
    .end local v9    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v17    # "count":J
    .end local v25    # "success":Z
    .restart local v0    # "idKey":[B
    .local v1, "count":J
    .restart local v5    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v10    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v13    # "success":Z
    :cond_1d
    move/from16 v26, v9

    move-object/from16 v23, v10

    move/from16 v25, v13

    .end local v10    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local v13    # "success":Z
    .restart local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v25    # "success":Z
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get parent of BIN id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2986
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2987
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2984
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local v1    # "count":J
    .end local v5    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v12    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v14    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local v15    # "prevBin":Lcom/sleepycat/je/tree/BIN;
    .end local v16    # "curIndex":I
    .end local v25    # "success":Z
    .end local p1    # "forward":Z
    .end local p2    # "maxCount":J
    .end local p4    # "rangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    .end local p5    # "finalPositionCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 3088
    .end local v0    # "idKey":[B
    .end local v23    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local v1    # "count":J
    .restart local v5    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v12    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v14    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local v15    # "prevBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v16    # "curIndex":I
    .restart local v25    # "success":Z
    .restart local p1    # "forward":Z
    .restart local p2    # "maxCount":J
    .restart local p4    # "rangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    .restart local p5    # "finalPositionCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_b
    move-exception v0

    move-wide/from16 v17, v1

    move-object v9, v5

    goto :goto_d

    .end local v25    # "success":Z
    .restart local v13    # "success":Z
    :catchall_c
    move-exception v0

    move/from16 v26, v9

    move/from16 v25, v13

    move-wide/from16 v17, v1

    move-object v9, v5

    .end local v13    # "success":Z
    .restart local v25    # "success":Z
    goto :goto_d

    .end local v25    # "success":Z
    .restart local v13    # "success":Z
    :catchall_d
    move-exception v0

    move/from16 v25, v13

    move/from16 v26, v20

    move-wide/from16 v17, v1

    move-object v9, v5

    .end local v13    # "success":Z
    .restart local v25    # "success":Z
    goto :goto_d

    .end local v1    # "count":J
    .end local v5    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v25    # "success":Z
    .restart local v13    # "success":Z
    .restart local v17    # "count":J
    .local v19, "curBin":Lcom/sleepycat/je/tree/BIN;
    :catchall_e
    move-exception v0

    move/from16 v25, v13

    move-object/from16 v5, v19

    move/from16 v26, v20

    move-object v9, v5

    .end local v13    # "success":Z
    .end local v19    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v5    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v25    # "success":Z
    goto :goto_d

    .end local v5    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .end local v25    # "success":Z
    .restart local v9    # "curBin":Lcom/sleepycat/je/tree/BIN;
    .restart local v13    # "success":Z
    :catchall_f
    move-exception v0

    move-object v5, v9

    move/from16 v26, v10

    move/from16 v25, v13

    .end local v13    # "success":Z
    .restart local v25    # "success":Z
    :goto_d
    if-eqz v9, :cond_1e

    if-nez v25, :cond_1e

    .line 3089
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/BIN;->releaseLatchIfOwner()V

    .line 3091
    :cond_1e
    if-eqz v15, :cond_1f

    if-nez v25, :cond_1f

    .line 3092
    invoke-virtual {v15}, Lcom/sleepycat/je/tree/BIN;->releaseLatchIfOwner()V

    .line 3094
    :cond_1f
    if-eqz v14, :cond_20

    if-nez v25, :cond_20

    .line 3095
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    .line 3098
    :cond_20
    sget-boolean v1, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v1, :cond_21

    .line 3099
    invoke-static/range {v26 .. v26}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    :cond_21
    throw v0
.end method

.method private statusToString(B)Ljava/lang/String;
    .locals 2
    .param p1, "status"    # B

    .line 4015
    packed-switch p1, :pswitch_data_0

    .line 4023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4021
    :pswitch_0
    const-string v0, "CURSOR_CLOSED"

    return-object v0

    .line 4019
    :pswitch_1
    const-string v0, "CURSOR_INITIALIZED"

    return-object v0

    .line 4017
    :pswitch_2
    const-string v0, "CURSOR_NOT_INITIALIZED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/tree/BIN;IJJ)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "changeType"    # Ljava/lang/String;
    .param p3, "theBin"    # Lcom/sleepycat/je/tree/BIN;
    .param p4, "lnIndex"    # I
    .param p5, "oldLsn"    # J
    .param p7, "newLsn"    # J

    .line 4064
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 4065
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4067
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4068
    const-string v2, " bin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4069
    invoke-virtual {p3}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4070
    const-string v2, " lnIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4071
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4072
    const-string v2, " oldLnLsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4073
    invoke-static {p5, p6}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4074
    const-string v2, " newLnLsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4075
    invoke-static {p7, p8}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4077
    nop

    .line 4078
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, p1, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 4080
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private traceInsert(Ljava/util/logging/Level;Lcom/sleepycat/je/tree/BIN;JI)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "insertingBin"    # Lcom/sleepycat/je/tree/BIN;
    .param p3, "lnLsn"    # J
    .param p5, "index"    # I

    .line 4093
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 4094
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4096
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Ins:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4097
    const-string v2, " bin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4098
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4099
    const-string v2, " lnLsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4100
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4101
    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4102
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4104
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    .line 4105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4104
    invoke-static {v2, v0, p1, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 4107
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static traverseDbWithCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/CursorImpl$WithCursor;)V
    .locals 18
    .param p0, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p2, "allowEviction"    # Z
    .param p3, "withCursor"    # Lcom/sleepycat/je/dbi/CursorImpl$WithCursor;

    .line 3940
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v9, v0

    .line 3941
    .local v9, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v10, v0

    .line 3942
    .local v10, "data":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v1, 0x0

    .line 3943
    .local v1, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v2, 0x0

    .line 3946
    .local v2, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 3948
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-static {v0}, Lcom/sleepycat/je/txn/LockerFactory;->getInternalReadOperationLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v11, v3

    .line 3950
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v11, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_1
    new-instance v1, Lcom/sleepycat/je/dbi/CursorImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v12, p0

    :try_start_2
    invoke-direct {v1, v12, v11}, Lcom/sleepycat/je/dbi/CursorImpl;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v13, v1

    .line 3951
    .end local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v13, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    move/from16 v14, p2

    :try_start_3
    invoke-virtual {v13, v14}, Lcom/sleepycat/je/dbi/CursorImpl;->setAllowEviction(Z)V

    .line 3953
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->positionFirstOrLast(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3955
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, v13

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 3959
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    const/4 v2, 0x0

    move-object v15, v1

    .line 3960
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .local v2, "done":Z
    .local v15, "result":Lcom/sleepycat/je/OperationResult;
    :goto_0
    if-nez v2, :cond_4

    .line 3967
    if-eqz v15, :cond_0

    .line 3968
    move-object/from16 v8, p3

    invoke-interface {v8, v13, v9, v10}, Lcom/sleepycat/je/dbi/CursorImpl$WithCursor;->withCursor(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3969
    const/4 v1, 0x1

    move/from16 v16, v1

    .end local v2    # "done":Z
    .local v1, "done":Z
    goto :goto_1

    .line 3967
    .end local v1    # "done":Z
    .restart local v2    # "done":Z
    :cond_0
    move-object/from16 v8, p3

    .line 3973
    :cond_1
    move/from16 v16, v2

    .end local v2    # "done":Z
    .local v16, "done":Z
    :goto_1
    if-nez v16, :cond_3

    .line 3974
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object v1, v13

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v4, p1

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v15, v1

    .line 3979
    if-nez v15, :cond_2

    .line 3980
    const/4 v2, 0x1

    .end local v16    # "done":Z
    .restart local v2    # "done":Z
    goto :goto_0

    .line 3979
    .end local v2    # "done":Z
    .restart local v16    # "done":Z
    :cond_2
    move/from16 v2, v16

    goto :goto_0

    .line 3973
    :cond_3
    move/from16 v2, v16

    goto :goto_0

    .line 3986
    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v15    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v16    # "done":Z
    :cond_4
    nop

    .line 3987
    invoke-virtual {v13}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 3988
    invoke-virtual {v13}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 3990
    if-eqz v11, :cond_5

    .line 3991
    invoke-virtual {v11}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 3994
    :cond_5
    return-void

    .line 3986
    :catchall_0
    move-exception v0

    move-object v1, v11

    move-object v2, v13

    goto :goto_3

    .end local v13    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v2, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v12, p0

    :goto_2
    move/from16 v14, p2

    move-object v1, v11

    goto :goto_3

    .end local v11    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v1, "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_3
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v14, p2

    :goto_3
    if-eqz v2, :cond_6

    .line 3987
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 3988
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 3990
    :cond_6
    if-eqz v1, :cond_7

    .line 3991
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    :cond_7
    throw v0
.end method

.method private updateRecordInternal([BLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 40
    .param p1, "key"    # [B
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;
    .param p4, "returnOldData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "returnNewData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "lockStanding"    # Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .param p7, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 1574
    move-object/from16 v9, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->recordExists()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1576
    iget-object v0, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    .line 1577
    .local v4, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    iget-object v0, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v3

    .line 1579
    .local v3, "dbType":Lcom/sleepycat/je/dbi/DbType;
    invoke-static/range {p6 .. p6}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$000(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)J

    move-result-wide v25

    .line 1580
    .local v25, "currLsn":J
    const-wide/16 v0, -0x1

    cmp-long v0, v25, v0

    if-eqz v0, :cond_17

    .line 1581
    iget-object v0, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSize(I)I

    move-result v27

    .line 1582
    .local v27, "currLoggedSize":I
    iget-object v0, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v2

    .line 1585
    .local v2, "currKey":[B
    iget-object v0, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v28

    .line 1604
    .local v28, "currEmbeddedLN":Z
    const/4 v0, 0x0

    if-nez v5, :cond_3

    .line 1605
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v27, :cond_0

    if-nez v28, :cond_0

    .line 1608
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v1

    iget-object v10, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1, v10}, Lcom/sleepycat/je/cleaner/Cleaner;->getFetchObsoleteSize(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1609
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DbType;->mayCreateUpdatedLN()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1619
    :cond_1
    iget-object v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v10, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v11, v9, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v10, v11}, Lcom/sleepycat/je/tree/BIN;->getLN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;

    move-result-object v1

    .line 1620
    .local v1, "ln":Lcom/sleepycat/je/tree/LN;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v10

    goto :goto_0

    :cond_2
    move-object v10, v0

    :goto_0
    move-object v15, v10

    .local v10, "currData":[B
    goto :goto_3

    .line 1611
    .end local v1    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v10    # "currData":[B
    :cond_3
    :goto_1
    if-eqz v28, :cond_4

    .line 1612
    iget-object v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v10, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v10}, Lcom/sleepycat/je/tree/BIN;->getData(I)[B

    move-result-object v10

    .line 1613
    .restart local v10    # "currData":[B
    iget-object v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v11, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v12, v9, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v11, v12}, Lcom/sleepycat/je/tree/BIN;->getLN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;

    move-result-object v1

    move-object v15, v10

    .restart local v1    # "ln":Lcom/sleepycat/je/tree/LN;
    goto :goto_3

    .line 1615
    .end local v1    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v10    # "currData":[B
    :cond_4
    iget-object v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v10, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v11, v9, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v10, v11}, Lcom/sleepycat/je/tree/BIN;->fetchLN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;

    move-result-object v1

    .line 1616
    .restart local v1    # "ln":Lcom/sleepycat/je/tree/LN;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v10

    goto :goto_2

    :cond_5
    move-object v10, v0

    :goto_2
    move-object v15, v10

    .line 1624
    .local v15, "currData":[B
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1625
    if-nez v15, :cond_6

    .line 1627
    return-object v0

    .line 1629
    :cond_6
    move-object/from16 v14, p2

    invoke-static {v14, v15}, Lcom/sleepycat/je/tree/LN;->resolvePartialEntry(Lcom/sleepycat/je/DatabaseEntry;[B)[B

    move-result-object v10

    move-object v13, v10

    .local v10, "newData":[B
    goto :goto_4

    .line 1631
    .end local v10    # "newData":[B
    :cond_7
    move-object/from16 v14, p2

    invoke-static/range {p2 .. p2}, Lcom/sleepycat/je/tree/LN;->copyEntryData(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v10

    move-object v13, v10

    .line 1638
    .local v13, "newData":[B
    :goto_4
    if-eqz v7, :cond_9

    iget-object v10, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1640
    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v10

    .line 1639
    invoke-static {v2, v7, v10}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v10

    if-nez v10, :cond_8

    goto :goto_5

    .line 1641
    :cond_8
    new-instance v0, Lcom/sleepycat/je/DuplicateDataException;

    const-string v10, "Can\'t replace a duplicate with new data that is not equal to the existing data according to the duplicate  comparator."

    invoke-direct {v0, v10}, Lcom/sleepycat/je/DuplicateDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1647
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    if-eqz v15, :cond_a

    .line 1648
    invoke-virtual {v5, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1649
    invoke-static {v5, v15}, Lcom/sleepycat/je/tree/LN;->setEntry(Lcom/sleepycat/je/DatabaseEntry;[B)V

    .line 1652
    :cond_a
    invoke-direct {v9, v13}, Lcom/sleepycat/je/dbi/CursorImpl;->shouldEmbedLN([B)Z

    move-result v29

    .line 1656
    .local v29, "newEmbeddedLN":Z
    if-eqz v1, :cond_b

    .line 1657
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/LN;->getMemorySizeIncludedByParent()J

    move-result-wide v10

    .line 1658
    .local v10, "oldLNMemSize":J
    invoke-virtual {v1, v13}, Lcom/sleepycat/je/tree/LN;->modify([B)V

    move-wide/from16 v30, v10

    goto :goto_6

    .line 1660
    .end local v10    # "oldLNMemSize":J
    :cond_b
    const-wide/16 v10, 0x0

    .line 1661
    .restart local v10    # "oldLNMemSize":J
    invoke-virtual {v3, v4, v13}, Lcom/sleepycat/je/dbi/DbType;->createUpdatedLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/LN;

    move-result-object v1

    move-wide/from16 v30, v10

    .line 1664
    .end local v10    # "oldLNMemSize":J
    .local v30, "oldLNMemSize":J
    :goto_6
    iget-object v10, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v11, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v10, v11}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v12

    .line 1665
    .local v12, "oldExpiration":I
    iget-object v10, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v10}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v11

    .line 1667
    .local v11, "oldExpirationInHours":Z
    if-eqz v8, :cond_c

    .line 1668
    nop

    .line 1669
    move-object/from16 v32, v1

    .end local v1    # "ln":Lcom/sleepycat/je/tree/LN;
    .local v32, "ln":Lcom/sleepycat/je/tree/LN;
    invoke-static {v12, v11}, Lcom/sleepycat/je/dbi/TTL;->expirationToSystemTime(IZ)J

    move-result-wide v0

    .line 1668
    invoke-virtual {v8, v0, v1}, Lcom/sleepycat/je/dbi/ExpirationInfo;->setOldExpirationTime(J)V

    goto :goto_7

    .line 1667
    .end local v32    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v1    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_c
    move-object/from16 v32, v1

    .line 1676
    .end local v1    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v32    # "ln":Lcom/sleepycat/je/tree/LN;
    :goto_7
    const/4 v0, 0x1

    if-eqz v8, :cond_f

    iget-boolean v1, v8, Lcom/sleepycat/je/dbi/ExpirationInfo;->updateExpiration:Z

    if-eqz v1, :cond_f

    .line 1677
    iget v1, v8, Lcom/sleepycat/je/dbi/ExpirationInfo;->expiration:I

    if-ne v1, v12, :cond_d

    iget-boolean v1, v8, Lcom/sleepycat/je/dbi/ExpirationInfo;->expirationInHours:Z

    if-eq v1, v11, :cond_e

    .line 1679
    :cond_d
    invoke-virtual {v8, v0}, Lcom/sleepycat/je/dbi/ExpirationInfo;->setExpirationUpdated(Z)V

    .line 1681
    :cond_e
    iget v1, v8, Lcom/sleepycat/je/dbi/ExpirationInfo;->expiration:I

    .line 1682
    .local v1, "expiration":I
    iget-boolean v10, v8, Lcom/sleepycat/je/dbi/ExpirationInfo;->expirationInHours:Z

    .local v10, "expirationInHours":Z
    goto :goto_8

    .line 1684
    .end local v1    # "expiration":I
    .end local v10    # "expirationInHours":Z
    :cond_f
    move v1, v12

    .line 1685
    .restart local v1    # "expiration":I
    move v10, v11

    .line 1695
    .restart local v10    # "expirationInHours":Z
    :goto_8
    iget-object v0, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    move-object/from16 v33, v2

    .end local v2    # "currKey":[B
    .local v33, "currKey":[B
    iget v2, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    move-object/from16 v8, p6

    invoke-virtual {v8, v0, v2}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->prepareForUpdate(Lcom/sleepycat/je/tree/BIN;I)Lcom/sleepycat/je/txn/WriteLockInfo;

    move-result-object v34

    .line 1698
    .local v34, "wli":Lcom/sleepycat/je/txn/WriteLockInfo;
    iget-object v0, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v2, v9, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    if-eqz v7, :cond_10

    move-object/from16 v16, v7

    goto :goto_9

    :cond_10
    move-object/from16 v16, v33

    :goto_9
    const/16 v23, 0x0

    move/from16 v35, v10

    .end local v10    # "expirationInHours":Z
    .local v35, "expirationInHours":Z
    move-object/from16 v10, v32

    move/from16 v36, v11

    .end local v11    # "oldExpirationInHours":Z
    .local v36, "oldExpirationInHours":Z
    move-object v11, v4

    move/from16 v37, v12

    .end local v12    # "oldExpiration":I
    .local v37, "oldExpiration":I
    move-object v12, v0

    move-object/from16 v38, v13

    .end local v13    # "newData":[B
    .local v38, "newData":[B
    move-object v13, v2

    move-object/from16 v14, v34

    move-object/from16 v39, v15

    .end local v15    # "currData":[B
    .local v39, "currData":[B
    move/from16 v15, v29

    move/from16 v17, v1

    move/from16 v18, v35

    move/from16 v19, v28

    move-wide/from16 v20, v25

    move/from16 v22, v27

    move-object/from16 v24, p7

    invoke-virtual/range {v10 .. v24}, Lcom/sleepycat/je/tree/LN;->optionalLog(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/WriteLockInfo;Z[BIZZJIZLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v2

    .line 1706
    .local v2, "logItem":Lcom/sleepycat/je/log/LogItem;
    if-eqz v6, :cond_11

    .line 1707
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1708
    move-object/from16 v0, v32

    .end local v32    # "ln":Lcom/sleepycat/je/tree/LN;
    .local v0, "ln":Lcom/sleepycat/je/tree/LN;
    invoke-virtual {v0, v6}, Lcom/sleepycat/je/tree/LN;->setEntry(Lcom/sleepycat/je/DatabaseEntry;)V

    goto :goto_a

    .line 1706
    .end local v0    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v32    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_11
    move-object/from16 v0, v32

    .line 1714
    .end local v32    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v0    # "ln":Lcom/sleepycat/je/tree/LN;
    :goto_a
    iget-object v10, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v11, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-wide v14, v2, Lcom/sleepycat/je/log/LogItem;->lsn:J

    .line 1715
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v16

    iget v12, v2, Lcom/sleepycat/je/log/LogItem;->size:I

    if-eqz v29, :cond_12

    move-object/from16 v20, v38

    goto :goto_b

    :cond_12
    const/16 v20, 0x0

    .line 1714
    :goto_b
    move/from16 v18, v12

    move-wide/from16 v12, v30

    move-object/from16 v19, p1

    move/from16 v21, v1

    move/from16 v22, v35

    invoke-virtual/range {v10 .. v22}, Lcom/sleepycat/je/tree/BIN;->updateRecord(IJJJI[B[BIZ)V

    .line 1733
    iget-object v10, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1734
    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v10

    if-nez v10, :cond_14

    iget-object v10, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1735
    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v10

    if-nez v10, :cond_13

    if-nez v29, :cond_13

    goto :goto_c

    :cond_13
    const/4 v10, 0x0

    goto :goto_d

    :cond_14
    :goto_c
    const/4 v10, 0x1

    .line 1737
    .local v10, "shouldCache":Z
    :goto_d
    iget-object v11, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v12, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v11, v12}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v11

    if-nez v11, :cond_15

    .line 1738
    if-eqz v10, :cond_16

    .line 1739
    iget-object v11, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v12, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v0, v13}, Lcom/sleepycat/je/tree/BIN;->attachNode(ILcom/sleepycat/je/tree/Node;[B)V

    goto :goto_e

    .line 1742
    :cond_15
    if-nez v10, :cond_16

    .line 1743
    iget-object v11, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v12, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v11, v12}, Lcom/sleepycat/je/tree/BIN;->evictLN(I)V

    .line 1748
    :cond_16
    :goto_e
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v11

    iget-wide v13, v2, Lcom/sleepycat/je/log/LogItem;->lsn:J

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/sleepycat/je/dbi/CursorImpl;->setCurrentVersion(JJ)V

    .line 1749
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->setStorageSize()V

    .line 1751
    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    iget-object v12, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v13, v9, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-wide v14, v2, Lcom/sleepycat/je/log/LogItem;->lsn:J

    const-string v16, "Mod:"

    move-object/from16 v17, v0

    .end local v0    # "ln":Lcom/sleepycat/je/tree/LN;
    .local v17, "ln":Lcom/sleepycat/je/tree/LN;
    move-object/from16 v0, p0

    move v9, v1

    .end local v1    # "expiration":I
    .local v9, "expiration":I
    move-object v1, v11

    move-object/from16 v18, v2

    move-object/from16 v11, v33

    .end local v2    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .end local v33    # "currKey":[B
    .local v11, "currKey":[B
    .local v18, "logItem":Lcom/sleepycat/je/log/LogItem;
    move-object/from16 v2, v16

    move-object/from16 v16, v3

    .end local v3    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .local v16, "dbType":Lcom/sleepycat/je/dbi/DbType;
    move-object v3, v12

    move-object v12, v4

    .end local v4    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v12, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    move v4, v13

    move-wide/from16 v5, v25

    move-wide v7, v14

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/dbi/CursorImpl;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/tree/BIN;IJJ)V

    .line 1753
    move/from16 v0, v35

    .end local v35    # "expirationInHours":Z
    .local v0, "expirationInHours":Z
    invoke-static {v9, v0}, Lcom/sleepycat/je/DbInternal;->makeUpdateResult(IZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    return-object v1

    .line 1580
    .end local v0    # "expirationInHours":Z
    .end local v9    # "expiration":I
    .end local v10    # "shouldCache":Z
    .end local v11    # "currKey":[B
    .end local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v16    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .end local v17    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v18    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .end local v27    # "currLoggedSize":I
    .end local v28    # "currEmbeddedLN":Z
    .end local v29    # "newEmbeddedLN":Z
    .end local v30    # "oldLNMemSize":J
    .end local v34    # "wli":Lcom/sleepycat/je/txn/WriteLockInfo;
    .end local v36    # "oldExpirationInHours":Z
    .end local v37    # "oldExpiration":I
    .end local v38    # "newData":[B
    .end local v39    # "currData":[B
    .restart local v3    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .restart local v4    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1574
    .end local v3    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .end local v4    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v25    # "currLsn":J
    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private verifyCursor(Lcom/sleepycat/je/tree/BIN;)V
    .locals 4
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 3766
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getCursorSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3772
    return-void

    .line 3767
    :cond_0
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 3768
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_STATE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v3, "BIN cursorSet is inconsistent"

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v0
.end method

.method private verifyPendingDeleted(Lcom/sleepycat/je/txn/LockType;)Z
    .locals 7
    .param p1, "lockType"    # Lcom/sleepycat/je/txn/LockType;

    .line 3834
    sget-object v0, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 3835
    return v1

    .line 3839
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-gez v0, :cond_1

    goto :goto_0

    .line 3844
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/LN;

    .line 3845
    .local v0, "ln":Lcom/sleepycat/je/tree/LN;
    if-nez v0, :cond_2

    .line 3846
    return v1

    .line 3854
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v2

    .line 3855
    .local v2, "kd":Z
    iget-object v3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/tree/BIN;->isEntryPendingDeleted(I)Z

    move-result v3

    .line 3856
    .local v3, "pd":Z
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v4

    .line 3857
    .local v4, "lnDeleted":Z
    if-eqz v4, :cond_3

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    :cond_3
    if-nez v4, :cond_5

    if-nez v3, :cond_5

    .line 3860
    :cond_4
    return v1

    .line 3857
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted state mismatch LNDeleted = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PD = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " KD = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 3840
    .end local v0    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v2    # "kd":Z
    .end local v3    # "pd":Z
    .end local v4    # "lnDeleted":Z
    :cond_6
    :goto_0
    return v1
.end method


# virtual methods
.method addCursor()V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->addCursor(Lcom/sleepycat/je/tree/BIN;)V

    .line 430
    :cond_0
    return-void
.end method

.method addCursor(Lcom/sleepycat/je/tree/BIN;)V
    .locals 1
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 417
    if-eqz p1, :cond_1

    .line 418
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/tree/BIN;->addCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V

    goto :goto_0

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 421
    :cond_1
    :goto_0
    return-void
.end method

.method public advanceCursor(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 11
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 2512
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 2513
    .local v0, "oldBin":Lcom/sleepycat/je/tree/BIN;
    iget v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 2515
    .local v1, "oldIndex":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 2516
    invoke-virtual {p2, v2}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 2519
    :try_start_0
    sget-object v6, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v10}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2525
    goto :goto_0

    .line 2523
    :catch_0
    move-exception v2

    .line 2531
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-eq v2, v1, :cond_0

    goto :goto_1

    .line 2542
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 2537
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-lez v2, :cond_2

    .line 2538
    iget-object v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sleepycat/je/tree/LN;->setEntry(Lcom/sleepycat/je/DatabaseEntry;[B)V

    .line 2540
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public afterNonStickyOp()V
    .locals 1

    .line 601
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->performPriorBINEviction()V

    .line 603
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->priorBIN:Lcom/sleepycat/je/tree/BIN;

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iput-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->priorBIN:Lcom/sleepycat/je/tree/BIN;

    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->criticalEviction()V

    .line 608
    return-void
.end method

.method public assertBIN(Lcom/sleepycat/je/tree/BIN;)V
    .locals 4
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 377
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-ne v0, p1, :cond_0

    .line 380
    return-void

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 379
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->dumpToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public beforeNonStickyOp()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    sget-object v1, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    sget-object v1, Lcom/sleepycat/je/CacheMode;->KEEP_HOT:Lcom/sleepycat/je/CacheMode;

    if-eq v0, v1, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 577
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->performCacheModeLNEviction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 580
    goto :goto_0

    .line 579
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v0

    .line 583
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseNonTxnLocks()V

    .line 585
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->criticalEviction()V

    .line 586
    return-void
.end method

.method public checkCursorState(ZZ)V
    .locals 2
    .param p1, "mustBeInitialized"    # Z
    .param p2, "mustNotBeInitialized"    # Z

    .line 3802
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->status:B

    packed-switch v0, :pswitch_data_0

    .line 3822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown cursor status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->status:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 3820
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cursor has been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3809
    :pswitch_1
    if-nez p2, :cond_0

    goto :goto_0

    .line 3810
    :cond_0
    const-string v0, "Cursor is initialized."

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 3804
    :pswitch_2
    if-nez p1, :cond_1

    .line 3825
    :goto_0
    return-void

    .line 3805
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cursor not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public checkEnv()V
    .locals 1

    .line 3902
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V

    .line 3903
    return-void
.end method

.method public checkForInsertion(Lcom/sleepycat/je/dbi/GetMode;Lcom/sleepycat/je/dbi/CursorImpl;)Z
    .locals 6
    .param p1, "getMode"    # Lcom/sleepycat/je/dbi/GetMode;
    .param p2, "dupCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 2800
    move-object v0, p0

    .line 2801
    .local v0, "origCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/GetMode;->isForward()Z

    move-result v1

    .line 2802
    .local v1, "forward":Z
    const/4 v2, 0x0

    .line 2804
    .local v2, "ret":Z
    iget-object v3, v0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget-object v4, p2, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_5

    .line 2820
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 2821
    iget-object v3, v0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 2823
    .local v3, "origBIN":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Z)V

    .line 2826
    if-eqz v1, :cond_2

    .line 2827
    :try_start_0
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 2833
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 2834
    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2836
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2838
    const/4 v2, 0x1

    .line 2839
    goto :goto_1

    .line 2835
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_1
    :goto_1
    goto :goto_3

    .line 2844
    :cond_2
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v4

    if-lez v4, :cond_4

    .line 2850
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2851
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    .line 2853
    const/4 v2, 0x1

    .line 2854
    goto :goto_3

    .line 2850
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2860
    .end local v4    # "i":I
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 2861
    nop

    .line 2862
    return v2

    .line 2860
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v4

    .line 2864
    .end local v3    # "origBIN":Lcom/sleepycat/je/tree/BIN;
    :cond_5
    return v5
.end method

.method public clearClosingLocker()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/Locker;->setClosingLocker(Lcom/sleepycat/je/txn/Locker;)V

    .line 305
    return-void
.end method

.method public cloneCursor(Z)Lcom/sleepycat/je/dbi/CursorImpl;
    .locals 3
    .param p1, "samePosition"    # Z

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "ret":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 232
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/dbi/CursorImpl;

    move-object v0, v1

    .line 234
    iget-boolean v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->retainNonTxnLocks:Z

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->newNonTxnLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    .line 238
    :cond_0
    iget-object v1, v0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/txn/Locker;->registerCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 240
    if-eqz p1, :cond_1

    .line 241
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->addCursor()V

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->clear()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 249
    nop

    .line 252
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->criticalEviction()V

    .line 254
    return-object v0

    .line 248
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v1

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "cannotOccur":Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 246
    return-object v2

    .line 225
    .end local v0    # "ret":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v1    # "cannotOccur":Ljava/lang/CloneNotSupportedException;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 643
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->close(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 644
    return-void
.end method

.method public close(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 1
    .param p1, "newCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 654
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/CursorImpl;->removeCursorAndPerformCacheEviction(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 660
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/txn/Locker;->unRegisterCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 662
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->retainNonTxnLocks:Z

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->nonTxnOperationEnd()V

    .line 666
    :cond_0
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->status:B

    .line 669
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->criticalEviction()V

    .line 670
    return-void

    .line 654
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public criticalEviction()V
    .locals 2

    .line 747
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->allowEviction:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 748
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getDirty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    sget-object v1, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    sget-object v1, Lcom/sleepycat/je/CacheMode;->EVICT_BIN:Lcom/sleepycat/je/CacheMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    sget-object v1, Lcom/sleepycat/je/CacheMode;->MAKE_COLD:Lcom/sleepycat/je/CacheMode;

    if-eq v0, v1, :cond_2

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->criticalEviction(Z)V

    .line 754
    :cond_2
    return-void
.end method

.method public deleteCurrentRecord(Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 41
    .param p1, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 900
    move-object/from16 v10, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {v10, v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 903
    iget-object v2, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v8

    .line 904
    .local v8, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    iget-object v2, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v9

    .line 908
    .local v9, "dbType":Lcom/sleepycat/je/dbi/DbType;
    const/4 v2, 0x0

    .line 910
    .local v2, "success":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 917
    :try_start_0
    sget-object v3, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    invoke-direct {v10, v3, v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->lockLN(Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    move-result-object v0

    .line 920
    .local v0, "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->recordExists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 921
    :try_start_1
    invoke-virtual {v10, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->revertLock(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    const/4 v1, 0x1

    .line 923
    .end local v2    # "success":Z
    .local v1, "success":Z
    nop

    .line 1031
    if-eqz v1, :cond_0

    iget-object v2, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1032
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v2, :cond_0

    iget-object v2, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1034
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1035
    iget-object v2, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaDeletes()V

    .line 1038
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 923
    return-object v3

    .line 1031
    .end local v0    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .end local v1    # "success":Z
    .restart local v2    # "success":Z
    :catchall_0
    move-exception v0

    move-object v14, v8

    move-object/from16 v16, v9

    goto/16 :goto_2

    .line 926
    .restart local v0    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    :cond_1
    :try_start_2
    invoke-static {v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$000(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)J

    move-result-wide v4

    move-wide/from16 v26, v4

    .line 927
    .local v26, "currLsn":J
    const-wide/16 v4, -0x1

    cmp-long v1, v26, v4

    if-eqz v1, :cond_b

    .line 928
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v1

    move/from16 v28, v1

    .line 929
    .local v28, "currEmbeddedLN":Z
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSize(I)I

    move-result v1

    move/from16 v29, v1

    .line 930
    .local v29, "currLoggedSize":I
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v17

    .line 932
    .local v17, "currKey":[B
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v1

    move v6, v1

    .line 933
    .local v6, "expiration":I
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move v7, v1

    .line 946
    .local v7, "expirationInHours":Z
    if-nez v29, :cond_2

    if-nez v28, :cond_2

    .line 948
    :try_start_3
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v1

    iget-object v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/cleaner/Cleaner;->getFetchObsoleteSize(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_3

    .line 949
    :cond_2
    :try_start_4
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/DbType;->mayCreateDeletedLN()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v1, :cond_5

    .line 951
    :cond_3
    :try_start_5
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v5, v10, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v4, v5}, Lcom/sleepycat/je/tree/BIN;->fetchLN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;

    move-result-object v1

    .line 952
    .local v1, "ln":Lcom/sleepycat/je/tree/LN;
    if-nez v1, :cond_6

    .line 954
    invoke-virtual {v10, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->revertLock(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 955
    const/4 v2, 0x1

    .line 956
    nop

    .line 1031
    if-eqz v2, :cond_4

    iget-object v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1032
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v4, :cond_4

    iget-object v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1034
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1035
    iget-object v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaDeletes()V

    .line 1038
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 956
    return-object v3

    .line 959
    .end local v1    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_5
    :try_start_6
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v5, v10, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v4, v5}, Lcom/sleepycat/je/tree/BIN;->getLN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 967
    .restart local v1    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_6
    const-wide/16 v4, 0x0

    .line 968
    .local v4, "oldLNMemSize":J
    if-eqz v1, :cond_7

    .line 969
    :try_start_7
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/LN;->getMemorySizeIncludedByParent()J

    move-result-wide v11

    move-wide v4, v11

    .line 970
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/LN;->delete()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-wide/from16 v39, v4

    move-object v5, v1

    goto :goto_0

    .line 972
    :cond_7
    :try_start_8
    invoke-virtual {v9, v8}, Lcom/sleepycat/je/dbi/DbType;->createDeletedLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/tree/LN;

    move-result-object v11

    move-object v1, v11

    move-wide/from16 v39, v4

    move-object v5, v1

    .line 976
    .end local v1    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v4    # "oldLNMemSize":J
    .local v5, "ln":Lcom/sleepycat/je/tree/LN;
    .local v39, "oldLNMemSize":J
    :goto_0
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->prepareForUpdate(Lcom/sleepycat/je/tree/BIN;I)Lcom/sleepycat/je/txn/WriteLockInfo;

    move-result-object v15

    .line 979
    .local v15, "wli":Lcom/sleepycat/je/txn/WriteLockInfo;
    iget-object v13, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v14, v10, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    const/16 v24, 0x0

    move-object v11, v5

    move-object v12, v8

    move/from16 v16, v28

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v28

    move-wide/from16 v21, v26

    move/from16 v23, v29

    move-object/from16 v25, p1

    invoke-virtual/range {v11 .. v25}, Lcom/sleepycat/je/tree/LN;->optionalLog(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/WriteLockInfo;Z[BIZZJIZLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v1

    move-object v11, v1

    .line 990
    .local v11, "logItem":Lcom/sleepycat/je/log/LogItem;
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-wide v12, v11, Lcom/sleepycat/je/log/LogItem;->lsn:J

    .line 992
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v36

    iget v14, v11, Lcom/sleepycat/je/log/LogItem;->size:I

    .line 990
    move-object/from16 v30, v1

    move/from16 v31, v4

    move-wide/from16 v32, v39

    move-wide/from16 v34, v12

    move/from16 v38, v14

    invoke-virtual/range {v30 .. v38}, Lcom/sleepycat/je/tree/BIN;->deleteRecord(IJJJI)V

    .line 1008
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-nez v1, :cond_8

    .line 1009
    :try_start_9
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1010
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v4, v5, v3}, Lcom/sleepycat/je/tree/BIN;->attachNode(ILcom/sleepycat/je/tree/Node;[B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 1013
    :cond_8
    :try_start_a
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-nez v1, :cond_9

    .line 1014
    :try_start_b
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v3, v10, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/tree/BIN;->evictLN(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1019
    :cond_9
    :goto_1
    :try_start_c
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v3

    iget-wide v12, v11, Lcom/sleepycat/je/log/LogItem;->lsn:J

    invoke-direct {v10, v3, v4, v12, v13}, Lcom/sleepycat/je/dbi/CursorImpl;->setCurrentVersion(JJ)V

    .line 1020
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->setStorageSize()V

    .line 1022
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    iget-object v3, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/txn/Locker;->addDeleteInfo(Lcom/sleepycat/je/tree/BIN;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1023
    const/4 v12, 0x1

    .line 1025
    .end local v2    # "success":Z
    .local v12, "success":Z
    :try_start_d
    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Delete"

    iget-object v4, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v13, v10, Lcom/sleepycat/je/dbi/CursorImpl;->index:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object v14, v8

    move-object/from16 v16, v9

    .end local v8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v9    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .local v14, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v16, "dbType":Lcom/sleepycat/je/dbi/DbType;
    :try_start_e
    iget-wide v8, v11, Lcom/sleepycat/je/log/LogItem;->lsn:J

    move-object/from16 v1, p0

    move-object/from16 v18, v5

    .end local v5    # "ln":Lcom/sleepycat/je/tree/LN;
    .local v18, "ln":Lcom/sleepycat/je/tree/LN;
    move v5, v13

    move-object/from16 v19, v0

    move v13, v6

    move v0, v7

    .end local v6    # "expiration":I
    .end local v7    # "expirationInHours":Z
    .local v0, "expirationInHours":Z
    .local v13, "expiration":I
    .local v19, "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    move-wide/from16 v6, v26

    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/je/dbi/CursorImpl;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/tree/BIN;IJJ)V

    .line 1027
    invoke-static {v13, v0}, Lcom/sleepycat/je/DbInternal;->makeResult(IZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1031
    if-eqz v12, :cond_a

    iget-object v2, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1032
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v2, :cond_a

    iget-object v2, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1034
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1035
    iget-object v2, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaDeletes()V

    .line 1038
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1027
    return-object v1

    .line 1031
    .end local v0    # "expirationInHours":Z
    .end local v11    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .end local v13    # "expiration":I
    .end local v15    # "wli":Lcom/sleepycat/je/txn/WriteLockInfo;
    .end local v17    # "currKey":[B
    .end local v18    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v19    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .end local v26    # "currLsn":J
    .end local v28    # "currEmbeddedLN":Z
    .end local v29    # "currLoggedSize":I
    .end local v39    # "oldLNMemSize":J
    :catchall_1
    move-exception v0

    move v2, v12

    goto :goto_2

    .end local v14    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v16    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .restart local v8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v9    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    :catchall_2
    move-exception v0

    move-object v14, v8

    move-object/from16 v16, v9

    move v2, v12

    .end local v8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v9    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .restart local v14    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v16    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    goto :goto_2

    .line 927
    .end local v12    # "success":Z
    .end local v14    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v16    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .local v0, "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .restart local v2    # "success":Z
    .restart local v8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v9    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .restart local v26    # "currLsn":J
    :cond_b
    move-object/from16 v19, v0

    move-object v14, v8

    move-object/from16 v16, v9

    .end local v0    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .end local v8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v9    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .restart local v14    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v16    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .restart local v19    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    :try_start_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "success":Z
    .end local v14    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v16    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .end local p1    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 1031
    .end local v19    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .end local v26    # "currLsn":J
    .restart local v2    # "success":Z
    .restart local v14    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v16    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .restart local p1    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    :catchall_3
    move-exception v0

    goto :goto_2

    .end local v14    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v16    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .restart local v8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v9    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    :catchall_4
    move-exception v0

    move-object v14, v8

    move-object/from16 v16, v9

    .end local v8    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v9    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    .restart local v14    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v16    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    :goto_2
    if-eqz v2, :cond_c

    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1032
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v1, :cond_c

    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1034
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1035
    iget-object v1, v10, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaDeletes()V

    .line 1038
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v0

    .line 900
    .end local v2    # "success":Z
    .end local v14    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v16    # "dbType":Lcom/sleepycat/je/dbi/DbType;
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public dump()V
    .locals 2

    .line 4008
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->dumpToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4009
    return-void
.end method

.method public dump(Z)V
    .locals 2
    .param p1, "verbose"    # Z

    .line 4001
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/CursorImpl;->dumpToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4002
    return-void
.end method

.method public dumpToString(Z)Ljava/lang/String;
    .locals 4
    .param p1, "verbose"    # Z

    .line 4031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4033
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<Cursor idx=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4034
    const-string v1, " status=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->status:B

    invoke-direct {p0, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->statusToString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4035
    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4036
    if-eqz p1, :cond_1

    .line 4037
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/tree/BIN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4039
    :cond_1
    const-string v1, "\n</Cursor>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4041
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public evictLN()V
    .locals 1

    .line 866
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->evictLN(ZZ)V

    .line 867
    return-void
.end method

.method public getAncestorPath()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/TrackingInfo;",
            ">;"
        }
    .end annotation

    .line 3154
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 3156
    .local v8, "trackingList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 3158
    iget-object v9, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 3159
    .local v9, "origBin":Lcom/sleepycat/je/tree/BIN;
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v10

    .line 3161
    .local v10, "tree":Lcom/sleepycat/je/tree/Tree;
    sget-object v6, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v10

    move-object v3, v9

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/tree/Tree;->getParentINForChildIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;Ljava/util/List;)Lcom/sleepycat/je/tree/SearchResult;

    move-result-object v2

    .line 3165
    .local v2, "result":Lcom/sleepycat/je/tree/SearchResult;
    iget-boolean v0, v2, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 3167
    return-object v3

    .line 3176
    :cond_0
    :try_start_0
    iget-object v0, v2, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    iget v4, v2, Lcom/sleepycat/je/tree/SearchResult;->index:I

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    if-ne v9, v0, :cond_4

    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eq v9, v0, :cond_1

    goto :goto_1

    .line 3182
    :cond_1
    iget-object v0, v2, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    iget v3, v2, Lcom/sleepycat/je/tree/SearchResult;->index:I

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v12

    .line 3183
    .local v12, "binLsn":J
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->latch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3186
    iget-object v0, v2, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3187
    nop

    .line 3195
    :try_start_1
    iget-object v0, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v0

    .line 3196
    .local v0, "binEntries":I
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v3

    .line 3198
    .local v3, "binIndex":I
    iget-object v4, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 3200
    iget-object v5, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v5, v4}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3201
    add-int/lit8 v0, v0, -0x1

    .line 3202
    if-ge v4, v3, :cond_2

    .line 3203
    add-int/lit8 v3, v3, -0x1

    .line 3198
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3208
    .end local v4    # "i":I
    :cond_3
    new-instance v4, Lcom/sleepycat/je/tree/TrackingInfo;

    iget-object v5, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 3209
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v14

    move-object v11, v4

    move/from16 v16, v0

    move/from16 v17, v3

    invoke-direct/range {v11 .. v17}, Lcom/sleepycat/je/tree/TrackingInfo;-><init>(JJII)V

    .line 3211
    .local v4, "info":Lcom/sleepycat/je/tree/TrackingInfo;
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3213
    nop

    .line 3216
    iget-object v5, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 3213
    return-object v8

    .line 3216
    .end local v0    # "binEntries":I
    .end local v3    # "binIndex":I
    .end local v4    # "info":Lcom/sleepycat/je/tree/TrackingInfo;
    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    throw v0

    .line 3179
    .end local v12    # "binLsn":J
    :cond_4
    :goto_1
    nop

    .line 3186
    iget-object v0, v2, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3179
    return-object v3

    .line 3186
    :catchall_1
    move-exception v0

    iget-object v3, v2, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v0
.end method

.method public getBIN()Lcom/sleepycat/je/tree/BIN;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    return-object v0
.end method

.method public getCacheMode()Lcom/sleepycat/je/CacheMode;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    return-object v0
.end method

.method public getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;
    .locals 9
    .param p1, "foundKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "foundData"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 2255
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2256
    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 2257
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2263
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v0

    .line 2264
    .local v0, "isEmptyLN":Z
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v1

    .line 2266
    .local v1, "isEmbeddedLN":Z
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 2268
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartialLength()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 2271
    .local v3, "dataRequested":Z
    :goto_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    .line 2272
    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v5, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/je/tree/BIN;->fetchLN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;

    move-result-object v4

    .line 2273
    .local v4, "ln":Lcom/sleepycat/je/tree/LN;
    if-nez v4, :cond_3

    .line 2275
    const/4 v2, 0x0

    return-object v2

    .line 2278
    .end local v4    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_2
    const/4 v4, 0x0

    .line 2282
    .restart local v4    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_3
    if-eqz v3, :cond_8

    .line 2286
    if-eqz v4, :cond_4

    .line 2287
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v5

    .local v5, "data":[B
    goto :goto_2

    .line 2288
    .end local v5    # "data":[B
    :cond_4
    if-nez v0, :cond_7

    iget-object v5, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/tree/BIN;->isNoDataLN(I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 2291
    :cond_5
    if-eqz v1, :cond_6

    .line 2292
    iget-object v5, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/tree/BIN;->getData(I)[B

    move-result-object v5

    .restart local v5    # "data":[B
    goto :goto_2

    .line 2291
    .end local v5    # "data":[B
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2289
    :cond_7
    :goto_1
    sget-object v5, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    .line 2295
    .restart local v5    # "data":[B
    :goto_2
    invoke-static {p2, v5}, Lcom/sleepycat/je/tree/LN;->setEntry(Lcom/sleepycat/je/DatabaseEntry;[B)V

    .line 2299
    .end local v5    # "data":[B
    :cond_8
    if-eqz p1, :cond_9

    .line 2300
    iget-object v5, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v5

    invoke-static {p1, v5}, Lcom/sleepycat/je/tree/LN;->setEntry(Lcom/sleepycat/je/DatabaseEntry;[B)V

    .line 2304
    :cond_9
    if-eqz v4, :cond_a

    .line 2305
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v5

    goto :goto_3

    :cond_a
    iget-object v5, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v7, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 2306
    invoke-virtual {v5, v6, v2, v7}, Lcom/sleepycat/je/tree/BIN;->getVLSN(IZLcom/sleepycat/je/CacheMode;)J

    move-result-wide v5

    :goto_3
    nop

    .line 2308
    .local v5, "vlsn":J
    iget-object v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v7, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v2, v7}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v7

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/sleepycat/je/dbi/CursorImpl;->setCurrentVersion(JJ)V

    .line 2309
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->setStorageSize()V

    .line 2311
    iget-object v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v7, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 2312
    invoke-virtual {v2, v7}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v2

    iget-object v7, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v7}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v7

    .line 2311
    invoke-static {v2, v7}, Lcom/sleepycat/je/DbInternal;->makeResult(IZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v2

    return-object v2

    .line 2257
    .end local v0    # "isEmptyLN":Z
    .end local v1    # "isEmbeddedLN":Z
    .end local v3    # "dataRequested":Z
    .end local v4    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v5    # "vlsn":J
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2256
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2255
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getCurrentKey()[B
    .locals 1

    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentKey(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getCurrentKey(Z)[B
    .locals 2
    .param p1, "isLatched"    # Z

    .line 497
    if-nez p1, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 502
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v0, :cond_3

    .line 503
    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 505
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    if-nez p1, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 505
    :cond_1
    return-object v0

    .line 503
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "isLatched":Z
    throw v0

    .line 502
    .restart local p1    # "isLatched":Z
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "isLatched":Z
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    .restart local p1    # "isLatched":Z
    :catchall_0
    move-exception v0

    if-nez p1, :cond_4

    .line 508
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    :cond_4
    throw v0
.end method

.method public getCurrentLN(ZZ)Lcom/sleepycat/je/tree/LN;
    .locals 4
    .param p1, "isLatched"    # Z
    .param p2, "unlatch"    # Z

    .line 2318
    const/4 v0, 0x0

    .line 2321
    .local v0, "success":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2323
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/CursorImpl;->checkAlreadyLatched(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2325
    if-nez p1, :cond_0

    .line 2326
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 2329
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->getCursorSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2330
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2332
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/tree/BIN;->fetchLN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2334
    .local v1, "ln":Lcom/sleepycat/je/tree/LN;
    const/4 v0, 0x1

    .line 2335
    nop

    .line 2337
    if-nez p2, :cond_1

    if-nez v0, :cond_2

    .line 2338
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 2335
    :cond_2
    return-object v1

    .line 2330
    .end local v1    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "success":Z
    .end local p1    # "isLatched":Z
    .end local p2    # "unlatch":Z
    throw v1

    .line 2329
    .restart local v0    # "success":Z
    .restart local p1    # "isLatched":Z
    .restart local p2    # "unlatch":Z
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "success":Z
    .end local p1    # "isLatched":Z
    .end local p2    # "unlatch":Z
    throw v1

    .line 2323
    .restart local v0    # "success":Z
    .restart local p1    # "isLatched":Z
    .restart local p2    # "unlatch":Z
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->dumpToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "success":Z
    .end local p1    # "isLatched":Z
    .end local p2    # "unlatch":Z
    throw v1

    .line 2321
    .restart local v0    # "success":Z
    .restart local p1    # "isLatched":Z
    .restart local p2    # "unlatch":Z
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "success":Z
    .end local p1    # "isLatched":Z
    .end local p2    # "unlatch":Z
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2337
    .restart local v0    # "success":Z
    .restart local p1    # "isLatched":Z
    .restart local p2    # "unlatch":Z
    :catchall_0
    move-exception v1

    if-nez p2, :cond_7

    if-nez v0, :cond_8

    .line 2338
    :cond_7
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    :cond_8
    throw v1
.end method

.method public getCurrentLsn()J
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v0

    return-wide v0

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 473
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getCurrentNodeId()J
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 455
    .local v0, "b":Lcom/sleepycat/je/tree/BIN;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getCurrentVersion(Z)Lcom/sleepycat/je/dbi/RecordVersion;
    .locals 4
    .param p1, "allowFetch"    # Z

    .line 2390
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->checkCursorState(ZZ)V

    .line 2397
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->isSecondaryCursor:Z

    if-eqz v0, :cond_1

    .line 2398
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->currentRecordVersion:Lcom/sleepycat/je/dbi/RecordVersion;

    if-eqz v0, :cond_0

    .line 2403
    return-object v0

    .line 2399
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Record version is available via a SecondaryCursor only if the associated primary record was retrieved."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2411
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->currentRecordVersion:Lcom/sleepycat/je/dbi/RecordVersion;

    if-eqz v0, :cond_3

    .line 2412
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/RecordVersion;->getVLSN()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2415
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getPreserveVLSN()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2417
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->currentRecordVersion:Lcom/sleepycat/je/dbi/RecordVersion;

    return-object v0

    .line 2422
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 2424
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 2425
    invoke-virtual {v0, v1, p1, v2}, Lcom/sleepycat/je/tree/BIN;->getVLSN(IZLcom/sleepycat/je/CacheMode;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v2

    .line 2424
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->setCurrentVersion(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2427
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 2428
    nop

    .line 2429
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->currentRecordVersion:Lcom/sleepycat/je/dbi/RecordVersion;

    return-object v0

    .line 2427
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v0
.end method

.method public getDb()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .line 523
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 526
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v1

    .line 525
    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/TTL;->expirationToSystemTime(IZ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 525
    return-wide v0

    .line 528
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v0
.end method

.method public getIndex()I
    .locals 1

    .line 351
    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    return v0
.end method

.method public getLockStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1

    .line 4048
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->collectStats()Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method public getLocker()Lcom/sleepycat/je/txn/Locker;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    return-object v0
.end method

.method public getNSecondaryWrites()I
    .locals 1

    .line 2497
    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->nSecWrites:I

    return v0
.end method

.method public getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;
    .locals 14
    .param p1, "foundKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "foundData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "dirtyReadAll"    # Z
    .param p5, "forward"    # Z
    .param p6, "isLatched"    # Z
    .param p7, "rangeConstraint"    # Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 2576
    move-object v8, p0

    move-object/from16 v9, p7

    const/4 v0, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v0, v10}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2579
    move/from16 v1, p6

    invoke-direct {p0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->checkAlreadyLatched(Z)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2581
    const/4 v11, 0x0

    .line 2582
    .local v11, "result":Lcom/sleepycat/je/OperationResult;
    const/4 v2, 0x0

    move-object v12, v2

    .line 2585
    .end local p6    # "isLatched":Z
    .local v1, "isLatched":Z
    .local v12, "anchorBIN":Lcom/sleepycat/je/tree/BIN;
    :goto_0
    :try_start_0
    iget-object v2, v8, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v2, :cond_e

    .line 2587
    invoke-direct {p0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->checkAlreadyLatched(Z)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2589
    if-nez v1, :cond_0

    .line 2590
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2591
    const/4 v1, 0x1

    move v13, v1

    goto :goto_1

    .line 2589
    :cond_0
    move v13, v1

    .line 2598
    .end local v1    # "isLatched":Z
    .local v13, "isLatched":Z
    :goto_1
    :try_start_1
    iget-object v1, v8, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1, v10}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Z)V

    .line 2601
    if-eqz p5, :cond_1

    iget v1, v8, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, v8, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v2, v8, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v2

    if-lt v1, v2, :cond_2

    :cond_1
    const/4 v1, -0x1

    if-nez p5, :cond_6

    iget v2, v8, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    sub-int/2addr v2, v0

    iput v2, v8, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-le v2, v1, :cond_6

    .line 2604
    :cond_2
    if-eqz v9, :cond_3

    iget-object v1, v8, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v2, v8, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 2605
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v1

    invoke-interface {v9, v1}, Lcom/sleepycat/je/dbi/RangeConstraint;->inBounds([B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2607
    const/4 v11, 0x0

    .line 2608
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 2609
    move v1, v13

    goto/16 :goto_3

    .line 2612
    :cond_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 2616
    .local v1, "ret":Lcom/sleepycat/je/OperationResult;
    sget-boolean v2, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v2, :cond_4

    .line 2617
    invoke-static {v0}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 2620
    :cond_4
    if-eqz v1, :cond_5

    .line 2621
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->incrementLNCount()V

    .line 2622
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 2623
    move-object v11, v1

    .line 2624
    move v1, v13

    goto/16 :goto_3

    .line 2626
    .end local v1    # "ret":Lcom/sleepycat/je/OperationResult;
    :cond_5
    move v1, v13

    goto :goto_0

    .line 2634
    :cond_6
    iget-object v2, v8, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    move-object v12, v2

    .line 2635
    invoke-virtual {v12}, Lcom/sleepycat/je/tree/BIN;->pin()V

    .line 2636
    iget-object v2, v8, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v2, p0}, Lcom/sleepycat/je/tree/BIN;->removeCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 2637
    const/4 v2, 0x0

    iput-object v2, v8, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 2639
    iget-object v2, v8, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v2

    .line 2642
    .local v2, "tree":Lcom/sleepycat/je/tree/Tree;
    iget-object v3, v8, Lcom/sleepycat/je/dbi/CursorImpl;->testHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v3}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2644
    if-eqz p5, :cond_7

    .line 2645
    iget-object v3, v8, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v2, v12, v3}, Lcom/sleepycat/je/tree/Tree;->getNextBin(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v3

    iput-object v3, v8, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 2646
    iput v1, v8, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    goto :goto_2

    .line 2648
    :cond_7
    iget-object v1, v8, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v2, v12, v1}, Lcom/sleepycat/je/tree/Tree;->getPrevBin(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    iput-object v1, v8, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 2649
    iget-object v1, v8, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v1, :cond_8

    .line 2650
    iget-object v1, v8, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1

    iput v1, v8, Lcom/sleepycat/je/dbi/CursorImpl;->index:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2653
    :cond_8
    :goto_2
    const/4 v1, 0x1

    .line 2655
    .end local v13    # "isLatched":Z
    .local v1, "isLatched":Z
    :try_start_2
    iget-object v3, v8, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-nez v3, :cond_a

    .line 2656
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_9

    .line 2657
    invoke-static {v10}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 2659
    :cond_9
    const/4 v11, 0x0

    .line 2660
    goto :goto_3

    .line 2662
    :cond_a
    sget-boolean v3, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v3, :cond_b

    .line 2663
    invoke-static {v0}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 2666
    :cond_b
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->addCursor()V

    .line 2667
    invoke-virtual {v12}, Lcom/sleepycat/je/tree/BIN;->unpin()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2668
    const/4 v12, 0x0

    .line 2670
    .end local v2    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto/16 :goto_0

    .line 2642
    .end local v1    # "isLatched":Z
    .restart local v2    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v13    # "isLatched":Z
    :cond_c
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v11    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v12    # "anchorBIN":Lcom/sleepycat/je/tree/BIN;
    .end local v13    # "isLatched":Z
    .end local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .end local p4    # "dirtyReadAll":Z
    .end local p5    # "forward":Z
    .end local p7    # "rangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2673
    .end local v2    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v11    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v12    # "anchorBIN":Lcom/sleepycat/je/tree/BIN;
    .restart local v13    # "isLatched":Z
    .restart local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .restart local p4    # "dirtyReadAll":Z
    .restart local p5    # "forward":Z
    .restart local p7    # "rangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    :catchall_0
    move-exception v0

    move v1, v13

    goto :goto_4

    .line 2587
    .end local v13    # "isLatched":Z
    .restart local v1    # "isLatched":Z
    :cond_d
    :try_start_4
    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->dumpToString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v1    # "isLatched":Z
    .end local v11    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v12    # "anchorBIN":Lcom/sleepycat/je/tree/BIN;
    .end local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .end local p4    # "dirtyReadAll":Z
    .end local p5    # "forward":Z
    .end local p7    # "rangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2673
    .restart local v1    # "isLatched":Z
    .restart local v11    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v12    # "anchorBIN":Lcom/sleepycat/je/tree/BIN;
    .restart local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .restart local p4    # "dirtyReadAll":Z
    .restart local p5    # "forward":Z
    .restart local p7    # "rangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    :cond_e
    :goto_3
    if-eqz v12, :cond_f

    .line 2674
    invoke-virtual {v12}, Lcom/sleepycat/je/tree/BIN;->unpin()V

    .line 2678
    :cond_f
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_10

    .line 2679
    invoke-static {v10}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 2682
    :cond_10
    return-object v11

    .line 2673
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v12, :cond_11

    .line 2674
    invoke-virtual {v12}, Lcom/sleepycat/je/tree/BIN;->unpin()V

    :cond_11
    throw v0

    .line 2579
    .end local v1    # "isLatched":Z
    .end local v11    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v12    # "anchorBIN":Lcom/sleepycat/je/tree/BIN;
    .restart local p6    # "isLatched":Z
    :cond_12
    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->dumpToString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2576
    :cond_13
    move/from16 v1, p6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getStorageSize()I
    .locals 2

    .line 2461
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2464
    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->priStorageSize:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->storageSize:I

    :goto_0
    return v0

    .line 2461
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public hasDuplicates()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->thisId:I

    return v0
.end method

.method public incrementLNCount()V
    .locals 1

    .line 343
    nop

    .line 344
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->getTreeStatsAccumulator()Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;

    move-result-object v0

    .line 345
    .local v0, "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0}, Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;->incrementLNCount()V

    .line 348
    :cond_0
    return-void
.end method

.method public insertOrUpdateRecord(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 14
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p4, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;
    .param p5, "putMode"    # Lcom/sleepycat/je/dbi/PutMode;
    .param p6, "returnOldData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p7, "returnNewData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p8, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 1211
    move-object v9, p0

    move-object/from16 v10, p5

    if-eqz p1, :cond_11

    .line 1212
    if-eqz p2, :cond_10

    .line 1213
    if-eqz p3, :cond_f

    .line 1214
    if-eqz v10, :cond_e

    .line 1215
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1217
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_0

    .line 1218
    invoke-static {v1}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 1221
    :cond_0
    sget-object v0, Lcom/sleepycat/je/dbi/PutMode;->OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    if-eq v10, v0, :cond_2

    sget-object v0, Lcom/sleepycat/je/dbi/PutMode;->NO_OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    if-ne v10, v0, :cond_1

    goto :goto_0

    .line 1223
    :cond_1
    nop

    .line 1224
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/dbi/PutMode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1223
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 1227
    :cond_2
    :goto_0
    const/4 v11, 0x0

    .line 1228
    .local v11, "success":Z
    const/4 v12, 0x0

    .line 1230
    .local v12, "inserted":Z
    invoke-static {p1}, Lcom/sleepycat/je/tree/Key;->makeKey(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v13

    .line 1241
    .local v13, "keyCopy":[B
    const/4 v5, 0x0

    .line 1242
    move-object v1, p0

    move-object v2, v13

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/dbi/CursorImpl;->insertRecordInternal([BLcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/dbi/ExpirationInfo;ZLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v0

    .line 1247
    .local v0, "insertResult":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Lcom/sleepycat/je/OperationResult;>;"
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1248
    const/4 v12, 0x1

    .line 1249
    const/4 v11, 0x1

    .line 1250
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    if-eqz v11, :cond_4

    iget-object v2, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1280
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v2, :cond_4

    iget-object v2, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1282
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1283
    if-eqz v12, :cond_3

    .line 1284
    iget-object v2, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaInserts()V

    goto :goto_1

    .line 1286
    :cond_3
    iget-object v2, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaUpdates()V

    .line 1290
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1250
    return-object v1

    .line 1258
    :cond_5
    :try_start_1
    sget-object v1, Lcom/sleepycat/je/dbi/PutMode;->NO_OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v10, v1, :cond_8

    .line 1259
    const/4 v1, 0x1

    .line 1260
    .end local v11    # "success":Z
    .local v1, "success":Z
    const/4 v2, 0x0

    .line 1279
    if-eqz v1, :cond_7

    iget-object v3, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1280
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v3, :cond_7

    iget-object v3, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1282
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1283
    if-eqz v12, :cond_6

    .line 1284
    iget-object v3, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaInserts()V

    goto :goto_2

    .line 1286
    :cond_6
    iget-object v3, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaUpdates()V

    .line 1290
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1260
    return-object v2

    .line 1269
    .end local v1    # "success":Z
    .restart local v11    # "success":Z
    :cond_8
    nop

    .line 1272
    :try_start_2
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    .line 1269
    move-object v1, p0

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/dbi/CursorImpl;->updateRecordInternal([BLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1274
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    const/4 v2, 0x1

    .line 1275
    .end local v11    # "success":Z
    .local v2, "success":Z
    nop

    .line 1279
    if-eqz v2, :cond_a

    iget-object v3, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1280
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v3, :cond_a

    iget-object v3, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1282
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1283
    if-eqz v12, :cond_9

    .line 1284
    iget-object v3, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaInserts()V

    goto :goto_3

    .line 1286
    :cond_9
    iget-object v3, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaUpdates()V

    .line 1290
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1275
    return-object v1

    .line 1279
    .end local v0    # "insertResult":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Lcom/sleepycat/je/OperationResult;>;"
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v2    # "success":Z
    .restart local v11    # "success":Z
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_c

    iget-object v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1280
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v1, :cond_c

    iget-object v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1282
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1283
    if-eqz v12, :cond_b

    .line 1284
    iget-object v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaInserts()V

    goto :goto_4

    .line 1286
    :cond_b
    iget-object v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaUpdates()V

    .line 1290
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v0

    .line 1215
    .end local v11    # "success":Z
    .end local v12    # "inserted":Z
    .end local v13    # "keyCopy":[B
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1214
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1213
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1212
    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1211
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public insertRecord([BLcom/sleepycat/je/tree/LN;ZLcom/sleepycat/je/log/ReplicationContext;)Z
    .locals 10
    .param p1, "key"    # [B
    .param p2, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p3, "blindInsertion"    # Z
    .param p4, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 1143
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1145
    sget-boolean v2, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v2, :cond_0

    .line 1146
    invoke-static {v0}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 1150
    :cond_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1151
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    move-object v9, p4

    :try_start_0
    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/dbi/CursorImpl;->insertRecordInternal([BLcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/dbi/ExpirationInfo;ZLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v2

    .line 1155
    .local v2, "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Lcom/sleepycat/je/OperationResult;>;"
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    move v0, v1

    .line 1157
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1155
    return v0

    .line 1157
    .end local v2    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Lcom/sleepycat/je/OperationResult;>;"
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v0

    .line 1143
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isClosed()Z
    .locals 2

    .line 540
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->status:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInternalDbCursor()Z
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v0

    return v0
.end method

.method public isNotInitialized()Z
    .locals 2

    .line 547
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->status:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOnBIN(Lcom/sleepycat/je/tree/BIN;)Z
    .locals 1
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 373
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnSamePosition(Lcom/sleepycat/je/dbi/CursorImpl;)Z
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 383
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget-object v1, p1, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget v1, p1, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProbablyExpired()Z
    .locals 2

    .line 514
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->isProbablyExpired(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 516
    return v0

    .line 518
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v0
.end method

.method public latchBIN()V
    .locals 2

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 402
    .local v0, "waitingOn":Lcom/sleepycat/je/tree/BIN;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 403
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-ne v1, v0, :cond_0

    .line 404
    return-void

    .line 406
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 407
    .end local v0    # "waitingOn":Lcom/sleepycat/je/tree/BIN;
    goto :goto_0

    .line 408
    :cond_1
    return-void
.end method

.method public lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/OperationResult;
    .locals 7
    .param p1, "foundKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "foundData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;

    .line 2014
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZ)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public lockAndGetCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZ)Lcom/sleepycat/je/OperationResult;
    .locals 7
    .param p1, "foundKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "foundData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "dirtyReadAll"    # Z
    .param p5, "isLatched"    # Z
    .param p6, "unlatch"    # Z

    .line 2043
    const/4 v0, 0x0

    .line 2046
    .local v0, "success":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2049
    invoke-direct {p0, p5}, Lcom/sleepycat/je/dbi/CursorImpl;->checkAlreadyLatched(Z)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2051
    if-nez p5, :cond_0

    .line 2052
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 2055
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->getCursorSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2057
    nop

    .line 2058
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->getTreeStatsAccumulator()Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;

    move-result-object v3

    .line 2066
    .local v3, "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    iget v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v5, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 2067
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v5, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 2068
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/tree/BIN;->isDeleted(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2069
    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v5, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/tree/BIN;->queueSlotDeletion(I)V

    .line 2083
    :cond_1
    iget v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    const/4 v5, 0x0

    if-ltz v4, :cond_c

    iget v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 2084
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v6

    if-ge v4, v6, :cond_c

    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 2085
    invoke-virtual {v4, v6}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 2095
    :cond_2
    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->testHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v4}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2097
    if-eqz p2, :cond_4

    .line 2099
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2100
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartialLength()I

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    nop

    .line 2102
    .local v1, "dataRequested":Z
    :goto_0
    invoke-direct {p0, p3, p4, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->lockLNAndCheckDefunct(Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    move-result-object v2

    if-nez v2, :cond_8

    .line 2104
    if-eqz v3, :cond_5

    .line 2105
    invoke-interface {v3}, Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;->incrementDeletedLNCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2107
    :cond_5
    const/4 v0, 0x1

    .line 2108
    nop

    .line 2117
    if-nez p6, :cond_6

    if-nez v0, :cond_7

    .line 2118
    :cond_6
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 2108
    :cond_7
    return-object v5

    .line 2111
    :cond_8
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2113
    .local v2, "result":Lcom/sleepycat/je/OperationResult;
    const/4 v0, 0x1

    .line 2114
    nop

    .line 2117
    if-nez p6, :cond_9

    if-nez v0, :cond_a

    .line 2118
    :cond_9
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 2114
    :cond_a
    return-object v2

    .line 2095
    .end local v1    # "dataRequested":Z
    .end local v2    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_b
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "success":Z
    .end local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .end local p4    # "dirtyReadAll":Z
    .end local p5    # "isLatched":Z
    .end local p6    # "unlatch":Z
    throw v1

    .line 2087
    .restart local v0    # "success":Z
    .restart local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .restart local p4    # "dirtyReadAll":Z
    .restart local p5    # "isLatched":Z
    .restart local p6    # "unlatch":Z
    :cond_c
    :goto_1
    if-eqz v3, :cond_d

    .line 2088
    invoke-interface {v3}, Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;->incrementDeletedLNCount()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2091
    :cond_d
    const/4 v0, 0x1

    .line 2092
    nop

    .line 2117
    if-nez p6, :cond_e

    if-nez v0, :cond_f

    .line 2118
    :cond_e
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 2092
    :cond_f
    return-object v5

    .line 2055
    .end local v3    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    :cond_10
    :try_start_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "success":Z
    .end local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .end local p4    # "dirtyReadAll":Z
    .end local p5    # "isLatched":Z
    .end local p6    # "unlatch":Z
    throw v1

    .line 2049
    .restart local v0    # "success":Z
    .restart local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .restart local p4    # "dirtyReadAll":Z
    .restart local p5    # "isLatched":Z
    .restart local p6    # "unlatch":Z
    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->dumpToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "success":Z
    .end local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .end local p4    # "dirtyReadAll":Z
    .end local p5    # "isLatched":Z
    .end local p6    # "unlatch":Z
    throw v1

    .line 2046
    .restart local v0    # "success":Z
    .restart local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .restart local p4    # "dirtyReadAll":Z
    .restart local p5    # "isLatched":Z
    .restart local p6    # "unlatch":Z
    :cond_12
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "success":Z
    .end local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .end local p4    # "dirtyReadAll":Z
    .end local p5    # "isLatched":Z
    .end local p6    # "unlatch":Z
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2117
    .restart local v0    # "success":Z
    .restart local p1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "lockType":Lcom/sleepycat/je/txn/LockType;
    .restart local p4    # "dirtyReadAll":Z
    .restart local p5    # "isLatched":Z
    .restart local p6    # "unlatch":Z
    :catchall_0
    move-exception v1

    if-nez p6, :cond_13

    if-nez v0, :cond_14

    .line 2118
    :cond_13
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    :cond_14
    throw v1
.end method

.method public lockAndGetCurrentLN(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/tree/LN;
    .locals 4
    .param p1, "lockType"    # Lcom/sleepycat/je/txn/LockType;

    .line 2349
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2351
    invoke-direct {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->checkAlreadyLatched(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2353
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 2355
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getCursorSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2357
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/CursorImpl;->lockLN(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    move-result-object v0

    .line 2359
    .local v0, "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->recordExists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2360
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->revertLock(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2361
    const/4 v1, 0x0

    .line 2368
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 2361
    return-object v1

    .line 2364
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2366
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v2, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/tree/BIN;->fetchLN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2368
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 2366
    return-object v1

    .line 2364
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "lockType":Lcom/sleepycat/je/txn/LockType;
    throw v1

    .line 2355
    .end local v0    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .restart local p1    # "lockType":Lcom/sleepycat/je/txn/LockType;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "lockType":Lcom/sleepycat/je/txn/LockType;
    throw v0

    .line 2351
    .restart local p1    # "lockType":Lcom/sleepycat/je/txn/LockType;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->dumpToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "lockType":Lcom/sleepycat/je/txn/LockType;
    throw v0

    .line 2349
    .restart local p1    # "lockType":Lcom/sleepycat/je/txn/LockType;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "lockType":Lcom/sleepycat/je/txn/LockType;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2368
    .restart local p1    # "lockType":Lcom/sleepycat/je/txn/LockType;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v0
.end method

.method public lockEof(Lcom/sleepycat/je/txn/LockType;)V
    .locals 6
    .param p1, "lockType"    # Lcom/sleepycat/je/txn/LockType;

    .line 3893
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEofLsn()J

    move-result-wide v1

    iget-object v5, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/txn/Locker;->lock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    .line 3895
    return-void
.end method

.method public lockLN(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .locals 1
    .param p1, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/LockConflictException;
        }
    .end annotation

    .line 3399
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->lockLN(Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    move-result-object v0

    return-object v0
.end method

.method public lockNextKeyForInsert(Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 13
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 3227
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    .line 3228
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>([BII)V

    .line 3230
    .local v0, "tempKey":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v1, 0x0

    .line 3231
    .local v1, "lockedNextKey":Z
    const/4 v2, 0x1

    .line 3236
    .local v2, "latched":Z
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->searchRange(Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Comparator;)I

    move-result v3

    .line 3238
    .local v3, "searchResult":I
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_1

    .line 3259
    new-instance v4, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v4}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v12, v4

    .line 3260
    .local v12, "tempData":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v4, v5}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 3262
    sget-object v7, Lcom/sleepycat/je/txn/LockType;->RANGE_INSERT:Lcom/sleepycat/je/txn/LockType;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v4, p0

    move-object v5, v0

    move-object v6, v12

    invoke-virtual/range {v4 .. v11}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v4

    .line 3267
    .local v4, "result":Lcom/sleepycat/je/OperationResult;
    const/4 v2, 0x0

    .line 3269
    if-eqz v4, :cond_1

    .line 3271
    iget-object v5, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 3272
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v5

    .line 3274
    .local v5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    invoke-static {v0, p1, v5}, Lcom/sleepycat/je/tree/Key;->compareKeys(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Comparator;)I

    move-result v6

    .line 3275
    .local v6, "c":I
    if-gtz v6, :cond_0

    .line 3276
    nop

    .line 3277
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v7

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v8

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v9

    .line 3276
    invoke-virtual {v0, v7, v8, v9}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3278
    goto :goto_0

    .line 3281
    :cond_0
    const/4 v1, 0x1

    .line 3288
    .end local v3    # "searchResult":I
    .end local v4    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v5    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    .end local v6    # "c":I
    .end local v12    # "tempData":Lcom/sleepycat/je/DatabaseEntry;
    :cond_1
    if-eqz v2, :cond_2

    .line 3289
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 3294
    :cond_2
    if-nez v1, :cond_3

    .line 3295
    sget-object v3, Lcom/sleepycat/je/txn/LockType;->RANGE_INSERT:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->lockEof(Lcom/sleepycat/je/txn/LockType;)V

    .line 3297
    :cond_3
    return-void

    .line 3288
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    .line 3289
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    :cond_4
    throw v3
.end method

.method public positionFirstOrLast(Z)Z
    .locals 5
    .param p1, "first"    # Z

    .line 1769
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1772
    const/4 v2, 0x0

    .line 1775
    .local v2, "found":Z
    if-eqz p1, :cond_0

    .line 1776
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/tree/Tree;->getFirstNode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    goto :goto_0

    .line 1778
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/tree/Tree;->getLastNode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1781
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v3, :cond_4

    .line 1783
    nop

    .line 1784
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->getTreeStatsAccumulator()Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;

    move-result-object v3

    .line 1786
    .local v3, "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v4

    if-nez v4, :cond_1

    .line 1792
    const/4 v2, 0x1

    .line 1793
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    goto :goto_2

    .line 1795
    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 1797
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 1798
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    iget v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 1799
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->isEntryPendingDeleted(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1800
    invoke-interface {v3}, Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;->incrementLNCount()V

    .line 1807
    :cond_3
    const/4 v2, 0x1

    .line 1811
    .end local v3    # "treeStatsAccumulator":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->addCursor(Lcom/sleepycat/je/tree/BIN;)V

    .line 1812
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->setInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1814
    return v2

    .line 1815
    :catchall_0
    move-exception v0

    .line 1817
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1818
    throw v0

    .line 1769
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "found":Z
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public releaseBIN()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->releaseLatchIfOwner()V

    .line 414
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->removeCursorAndPerformCacheEviction(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 619
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseNonTxnLocks()V

    .line 622
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->criticalEviction()V

    .line 623
    return-void
.end method

.method public revertLock(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)V
    .locals 3
    .param p1, "standing"    # Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    .line 3865
    invoke-static {p1}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$100(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3866
    invoke-static {p1}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$000(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$100(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->revertLock(JLcom/sleepycat/je/txn/LockResult;)V

    .line 3867
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->access$102(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Lcom/sleepycat/je/txn/LockResult;)Lcom/sleepycat/je/txn/LockResult;

    .line 3869
    :cond_0
    return-void
.end method

.method public searchExact(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .locals 6
    .param p1, "searchKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p3, "dirtyReadAll"    # Z
    .param p4, "dataRequested"    # Z

    .line 1964
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1967
    const/4 v2, 0x0

    .line 1970
    .local v2, "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    :try_start_0
    invoke-static {p1}, Lcom/sleepycat/je/tree/Key;->makeKey(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v3

    .line 1972
    .local v3, "key":[B
    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v4, v3, v5}, Lcom/sleepycat/je/tree/Tree;->search([BLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1974
    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v4, :cond_1

    .line 1976
    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v4, v3, v0, v1}, Lcom/sleepycat/je/tree/BIN;->findEntry([BZZ)I

    move-result v4

    iput v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 1978
    iget v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1980
    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/tree/BIN;->mayHaveKeyInFullBin([B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1981
    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v4, v0}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Z)V

    .line 1982
    iget-object v4, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v4, v3, v0, v1}, Lcom/sleepycat/je/tree/BIN;->findEntry([BZZ)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->addCursor(Lcom/sleepycat/je/tree/BIN;)V

    .line 1988
    iget v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-ltz v0, :cond_1

    .line 1989
    invoke-direct {p0, p2, p3, p4}, Lcom/sleepycat/je/dbi/CursorImpl;->lockLNAndCheckDefunct(Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    move-result-object v0

    move-object v2, v0

    .line 1994
    :cond_1
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->setInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1995
    return-object v2

    .line 1997
    .end local v3    # "key":[B
    :catchall_0
    move-exception v0

    .line 1999
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 2000
    throw v0

    .line 1964
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public searchExact(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;)Z
    .locals 2
    .param p1, "searchKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "lockType"    # Lcom/sleepycat/je/txn/LockType;

    .line 1935
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->searchExact(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public searchRange(Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Comparator;)I
    .locals 13
    .param p1, "searchKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Ljava/util/Comparator<",
            "[B>;)I"
        }
    .end annotation

    .line 1854
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1857
    const/4 v2, 0x0

    .line 1858
    .local v2, "foundSomething":Z
    const/4 v3, 0x0

    .line 1859
    .local v3, "foundExactKey":Z
    const/4 v4, 0x0

    .line 1860
    .local v4, "foundLast":Z
    new-instance v5, Lcom/sleepycat/je/tree/BINBoundary;

    invoke-direct {v5}, Lcom/sleepycat/je/tree/BINBoundary;-><init>()V

    .line 1863
    .local v5, "binBoundary":Lcom/sleepycat/je/tree/BINBoundary;
    :try_start_0
    invoke-static {p1}, Lcom/sleepycat/je/tree/Key;->makeKey(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v6

    move-object v12, v6

    .line 1865
    .local v12, "key":[B
    iget-object v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v6

    sget-object v8, Lcom/sleepycat/je/tree/Tree$SearchType;->NORMAL:Lcom/sleepycat/je/tree/Tree$SearchType;

    iget-object v10, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    move-object v7, v12

    move-object v9, v5

    move-object v11, p2

    invoke-virtual/range {v6 .. v11}, Lcom/sleepycat/je/tree/Tree;->search([BLcom/sleepycat/je/tree/Tree$SearchType;Lcom/sleepycat/je/tree/BINBoundary;Lcom/sleepycat/je/CacheMode;Ljava/util/Comparator;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v6

    iput-object v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1869
    iget-object v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v6, :cond_6

    .line 1871
    const/4 v2, 0x1

    .line 1872
    iget-object v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    .line 1883
    iget-object v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v6, v0}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Z)V

    .line 1886
    :cond_0
    iget-object v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v6, v12, v1, v0, p2}, Lcom/sleepycat/je/tree/BIN;->findEntry([BZZLjava/util/Comparator;)I

    move-result v6

    iput v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 1889
    iget-object v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v6

    const/high16 v7, 0x10000

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-ltz v6, :cond_1

    iget v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    iget-boolean v6, v5, Lcom/sleepycat/je/tree/BINBoundary;->isLastBin:Z

    if-eqz v6, :cond_2

    .line 1898
    :cond_1
    iget-object v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v6, v0}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Z)V

    .line 1899
    iget-object v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v6, v12, v1, v0, p2}, Lcom/sleepycat/je/tree/BIN;->findEntry([BZZLjava/util/Comparator;)I

    move-result v6

    iput v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 1902
    :cond_2
    iget v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    if-ltz v6, :cond_5

    .line 1903
    iget v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    .line 1904
    const/4 v3, 0x1

    .line 1905
    iget v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    const v7, -0x10001

    and-int/2addr v6, v7

    iput v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 1908
    :cond_3
    iget-boolean v6, v5, Lcom/sleepycat/je/tree/BINBoundary;->isLastBin:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    iget-object v7, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1909
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v7

    sub-int/2addr v7, v1

    if-ne v6, v7, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    move v4, v1

    .line 1918
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->addCursor(Lcom/sleepycat/je/tree/BIN;)V

    .line 1921
    :cond_6
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->setInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1924
    if-eqz v3, :cond_7

    const/4 v1, 0x2

    goto :goto_1

    :cond_7
    move v1, v0

    :goto_1
    or-int/2addr v1, v2

    if-eqz v4, :cond_8

    const/4 v0, 0x4

    :cond_8
    or-int/2addr v0, v1

    return v0

    .line 1928
    .end local v12    # "key":[B
    :catchall_0
    move-exception v0

    .line 1929
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1930
    throw v0

    .line 1854
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "foundSomething":Z
    .end local v3    # "foundExactKey":Z
    .end local v4    # "foundLast":Z
    .end local v5    # "binBoundary":Lcom/sleepycat/je/tree/BINBoundary;
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setAllowEviction(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 734
    iput-boolean p1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->allowEviction:Z

    .line 735
    return-void
.end method

.method public setBIN(Lcom/sleepycat/je/tree/BIN;)V
    .locals 0
    .param p1, "newBin"    # Lcom/sleepycat/je/tree/BIN;

    .line 396
    iput-object p1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 397
    return-void
.end method

.method public setCacheMode(Lcom/sleepycat/je/CacheMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/sleepycat/je/CacheMode;

    .line 319
    iput-object p1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 320
    return-void
.end method

.method public setClosingLocker(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 2
    .param p1, "closingCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 294
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->retainNonTxnLocks:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    iget-object v1, p1, Lcom/sleepycat/je/dbi/CursorImpl;->locker:Lcom/sleepycat/je/txn/Locker;

    if-eq v0, v1, :cond_0

    .line 295
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/Locker;->setClosingLocker(Lcom/sleepycat/je/txn/Locker;)V

    .line 297
    :cond_0
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "idx"    # I

    .line 359
    iput p1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 360
    return-void
.end method

.method public setNSecondaryWrites(I)V
    .locals 0
    .param p1, "nWrites"    # I

    .line 2501
    iput p1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->nSecWrites:I

    .line 2502
    return-void
.end method

.method public setOnFirstSlot()V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 365
    return-void

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setOnLastSlot()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->index:I

    .line 370
    return-void

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setPriInfo(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 1
    .param p1, "sourceCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 2482
    iget-object v0, p1, Lcom/sleepycat/je/dbi/CursorImpl;->currentRecordVersion:Lcom/sleepycat/je/dbi/RecordVersion;

    iput-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->currentRecordVersion:Lcom/sleepycat/je/dbi/RecordVersion;

    .line 2483
    iget v0, p1, Lcom/sleepycat/je/dbi/CursorImpl;->storageSize:I

    iput v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->priStorageSize:I

    .line 2484
    return-void
.end method

.method public setTestHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 4111
    iput-object p1, p0, Lcom/sleepycat/je/dbi/CursorImpl;->testHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 4112
    return-void
.end method

.method public setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V
    .locals 1
    .param p1, "tSA"    # Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;

    .line 323
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->maybeInitTreeStatsAccumulator()V

    .line 324
    iget-object v0, p0, Lcom/sleepycat/je/dbi/CursorImpl;->treeStatsAccumulatorTL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 325
    return-void
.end method

.method public skip(ZJLcom/sleepycat/je/dbi/RangeConstraint;)J
    .locals 7
    .param p1, "forward"    # Z
    .param p2, "maxCount"    # J
    .param p4, "rangeConstraint"    # Lcom/sleepycat/je/dbi/RangeConstraint;

    .line 2905
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->cloneCursor(Z)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v0

    .line 2906
    .local v0, "c":Lcom/sleepycat/je/dbi/CursorImpl;
    sget-object v1, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->setCacheMode(Lcom/sleepycat/je/CacheMode;)V

    .line 2909
    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p0

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/dbi/CursorImpl;->skipInternal(ZJLcom/sleepycat/je/dbi/RangeConstraint;Lcom/sleepycat/je/dbi/CursorImpl;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2921
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 2909
    return-wide v1

    .line 2910
    :catchall_0
    move-exception v1

    .line 2918
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 2919
    nop

    .end local v0    # "c":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local p1    # "forward":Z
    .end local p2    # "maxCount":J
    .end local p4    # "rangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2921
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "c":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local p1    # "forward":Z
    .restart local p2    # "maxCount":J
    .restart local p4    # "rangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    throw v1
.end method

.method public updateCurrentRecord(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    .locals 14
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "expInfo"    # Lcom/sleepycat/je/dbi/ExpirationInfo;
    .param p4, "returnOldData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "returnNewData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 1078
    move-object v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->assertCursorState(ZZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1081
    const/4 v2, 0x0

    if-eqz v10, :cond_0

    .line 1082
    invoke-virtual {v10, v2}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1084
    :cond_0
    if-eqz v11, :cond_1

    .line 1085
    invoke-virtual {v11, v2}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1089
    :cond_1
    const/4 v12, 0x0

    .line 1090
    .local v12, "result":Lcom/sleepycat/je/OperationResult;
    const/4 v13, 0x0

    .line 1092
    .local v13, "success":Z
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 1096
    :try_start_0
    sget-object v3, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    invoke-direct {p0, v3, v0, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->lockLN(Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;

    move-result-object v0

    .line 1099
    .local v0, "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;->recordExists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1100
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->revertLock(Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;)V

    goto :goto_1

    .line 1102
    :cond_2
    if-eqz p1, :cond_3

    .line 1103
    invoke-static {p1}, Lcom/sleepycat/je/tree/Key;->makeKey(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_3
    nop

    .line 1102
    :goto_0
    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v0

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/dbi/CursorImpl;->updateRecordInternal([BLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v1

    .line 1108
    :goto_1
    const/4 v1, 0x1

    .line 1109
    .end local v13    # "success":Z
    .local v1, "success":Z
    nop

    .line 1113
    if-eqz v1, :cond_4

    iget-object v2, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1114
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v2, :cond_4

    iget-object v2, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1116
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1117
    iget-object v2, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaUpdates()V

    .line 1120
    :cond_4
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1109
    return-object v12

    .line 1113
    .end local v0    # "lockStanding":Lcom/sleepycat/je/dbi/CursorImpl$LockStanding;
    .end local v1    # "success":Z
    .restart local v13    # "success":Z
    :catchall_0
    move-exception v0

    if-eqz v13, :cond_5

    iget-object v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1114
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v1, :cond_5

    iget-object v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 1116
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1117
    iget-object v1, v9, Lcom/sleepycat/je/dbi/CursorImpl;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBinDeltaUpdates()V

    .line 1120
    :cond_5
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v0

    .line 1078
    .end local v12    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v13    # "success":Z
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
