.class Lcom/sleepycat/je/recovery/DirtyINMap;
.super Ljava/lang/Object;
.source "DirtyINMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final DIRTY_SET_DEBUG_TRACE:Z = false


# instance fields
.field private ckptFlushAll:Z

.field private ckptFlushExtraLevel:Z

.field private ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final highestFlushLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final levelMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mapLNsToFlush:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;"
        }
    .end annotation
.end field

.field private numEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 63
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 90
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->levelMap:Ljava/util/SortedMap;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->numEntries:I

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->mapLNsToFlush:Ljava/util/Set;

    .line 93
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->highestFlushLevels:Ljava/util/Map;

    .line 94
    sget-object v0, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->NONE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    iput-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    .line 95
    return-void
.end method

.method private declared-synchronized addCostToMemoryBudget()V
    .locals 5

    monitor-enter p0

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    .line 514
    .local v0, "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    iget v1, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->numEntries:I

    int-to-long v1, v1

    sget v3, Lcom/sleepycat/je/dbi/MemoryBudget;->CHECKPOINT_REFERENCE_SIZE:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    .line 516
    .local v1, "cost":J
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    monitor-exit p0

    return-void

    .line 512
    .end local v0    # "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v1    # "cost":J
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeCostFromMemoryBudget()V
    .locals 5

    monitor-enter p0

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    .line 521
    .local v0, "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    iget v1, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->numEntries:I

    int-to-long v1, v1

    sget v3, Lcom/sleepycat/je/dbi/MemoryBudget;->CHECKPOINT_REFERENCE_SIZE:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    .line 523
    .local v1, "cost":J
    const-wide/16 v3, 0x0

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 519
    .end local v0    # "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v1    # "cost":J
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveMapLNsToFlush(Lcom/sleepycat/je/tree/IN;)V
    .locals 4
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    monitor-enter p0

    .line 698
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 702
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/MapLN;

    .line 704
    .local v1, "ln":Lcom/sleepycat/je/tree/MapLN;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isCheckpointNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 705
    iget-object v2, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->mapLNsToFlush:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/MapLN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    .end local v1    # "ln":Lcom/sleepycat/je/tree/MapLN;
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 697
    .end local p1    # "in":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private selectDirtyBINChildrenForCheckpoint(Lcom/sleepycat/je/tree/IN;)V
    .locals 4
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    .line 377
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 383
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/IN;

    .line 385
    .local v1, "bin":Lcom/sleepycat/je/tree/IN;
    if-eqz v1, :cond_5

    .line 388
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 390
    .local v2, "latchBinHere":Z
    if-eqz v2, :cond_1

    .line 391
    sget-object v3, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/tree/IN;->latchShared(Lcom/sleepycat/je/CacheMode;)V

    .line 395
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 396
    const/4 v3, -0x1

    invoke-direct {p0, v1, v3}, Lcom/sleepycat/je/recovery/DirtyINMap;->selectForCheckpoint(Lcom/sleepycat/je/tree/IN;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :cond_2
    if-eqz v2, :cond_3

    .line 400
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 403
    .end local v2    # "latchBinHere":Z
    :cond_3
    goto :goto_1

    .line 399
    .restart local v2    # "latchBinHere":Z
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    .line 400
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    :cond_4
    throw v3

    .line 404
    .end local v2    # "latchBinHere":Z
    :cond_5
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINDirty(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 405
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/recovery/DirtyINMap;->selectForCheckpoint(Lcom/sleepycat/je/tree/IN;I)V

    .line 381
    .end local v1    # "bin":Lcom/sleepycat/je/tree/IN;
    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "i":I
    :cond_7
    return-void
.end method

.method private declared-synchronized selectForCheckpoint(Lcom/sleepycat/je/tree/IN;I)V
    .locals 3
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "index"    # I

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    sget-object v1, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->DIRTY_MAP_INCOMPLETE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 342
    monitor-exit p0

    return-void

    .line 345
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 347
    .local v0, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 348
    monitor-exit p0

    return-void

    .line 351
    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/sleepycat/je/recovery/DirtyINMap;->addIN(Lcom/sleepycat/je/tree/IN;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 340
    .end local v0    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    .end local p1    # "in":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private traceDirtySet()V
    .locals 1

    .line 803
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private updateFlushLevels(Ljava/lang/Integer;Lcom/sleepycat/je/dbi/DatabaseImpl;ZZ)V
    .locals 3
    .param p1, "level"    # Ljava/lang/Integer;
    .param p2, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "isBIN"    # Z
    .param p4, "isRoot"    # Z

    .line 427
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptFlushAll:Z

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDurableDeferredWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptFlushExtraLevel:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    if-nez p4, :cond_2

    .line 440
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->highestFlushLevels:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 445
    .local v0, "highestLevelSeen":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 446
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->highestFlushLevels:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 428
    .end local v0    # "highestLevelSeen":Ljava/lang/Integer;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->highestFlushLevels:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 435
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->highestFlushLevels:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method declared-synchronized addIN(Lcom/sleepycat/je/tree/IN;IZZ)V
    .locals 24
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "index"    # I
    .param p3, "updateFlushLevels"    # Z
    .param p4, "updateMemoryBudget"    # Z

    move-object/from16 v1, p0

    monitor-enter p0

    .line 550
    const/4 v0, 0x1

    if-ltz p2, :cond_0

    .line 551
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 552
    .local v2, "level":Ljava/lang/Integer;
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v3

    .line 553
    .local v3, "lsn":J
    const-wide/16 v5, -0x1

    .line 554
    .local v5, "nodeId":J
    const/4 v7, 0x0

    .line 555
    .local v7, "isRoot":Z
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v8

    .line 556
    .local v8, "idKey":[B
    const/4 v9, 0x1

    move-wide v12, v3

    move-wide v14, v5

    move v10, v7

    move-object/from16 v16, v8

    move v11, v9

    .local v9, "isBin":Z
    goto :goto_0

    .line 558
    .end local v2    # "level":Ljava/lang/Integer;
    .end local v3    # "lsn":J
    .end local v5    # "nodeId":J
    .end local v7    # "isRoot":Z
    .end local v8    # "idKey":[B
    .end local v9    # "isBin":Z
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 559
    .restart local v2    # "level":Ljava/lang/Integer;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getLastLoggedLsn()J

    move-result-wide v3

    .line 560
    .restart local v3    # "lsn":J
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v5

    .line 561
    .restart local v5    # "nodeId":J
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v7

    .line 562
    .restart local v7    # "isRoot":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getIdentifierKey()[B

    move-result-object v8

    .line 563
    .restart local v8    # "idKey":[B
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v9

    move-wide v12, v3

    move-wide v14, v5

    move v10, v7

    move-object/from16 v16, v8

    move v11, v9

    .line 570
    .end local v3    # "lsn":J
    .end local v5    # "nodeId":J
    .end local v7    # "isRoot":Z
    .end local v8    # "idKey":[B
    .local v10, "isRoot":Z
    .local v11, "isBin":Z
    .local v12, "lsn":J
    .local v14, "nodeId":J
    .local v16, "idKey":[B
    :goto_0
    iget-object v3, v1, Lcom/sleepycat/je/recovery/DirtyINMap;->levelMap:Ljava/util/SortedMap;

    invoke-interface {v3, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/Pair;

    .line 572
    .local v3, "pairOfMaps":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;>;"
    if-eqz v3, :cond_1

    .line 573
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 574
    .local v4, "lsnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    move-object/from16 v17, v3

    move-object v9, v4

    move-object v8, v5

    .local v5, "nodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    goto :goto_1

    .line 580
    .end local v4    # "lsnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .end local v5    # "nodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    :cond_1
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 581
    .restart local v4    # "lsnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 582
    .restart local v5    # "nodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    new-instance v6, Lcom/sleepycat/je/utilint/Pair;

    invoke-direct {v6, v4, v5}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v6

    .line 583
    iget-object v6, v1, Lcom/sleepycat/je/recovery/DirtyINMap;->levelMap:Ljava/util/SortedMap;

    invoke-interface {v6, v2, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v3

    move-object v9, v4

    move-object v8, v5

    .line 586
    .end local v3    # "pairOfMaps":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;>;"
    .end local v4    # "lsnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .end local v5    # "nodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .local v8, "nodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .local v9, "lsnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .local v17, "pairOfMaps":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;>;"
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    move-object v7, v3

    .line 588
    .local v7, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    new-instance v18, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;

    .line 589
    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v3, v18

    move-wide v5, v14

    move-object/from16 v20, v7

    .end local v7    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v20, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    move/from16 v7, v19

    move-object v0, v8

    .end local v8    # "nodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .local v0, "nodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    move v8, v10

    move-object/from16 v21, v2

    move-object v2, v9

    .end local v9    # "lsnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .local v2, "lsnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .local v21, "level":Ljava/lang/Integer;
    move-object/from16 v9, v16

    move/from16 v22, v10

    move/from16 v23, v11

    .end local v10    # "isRoot":Z
    .end local v11    # "isBin":Z
    .local v22, "isRoot":Z
    .local v23, "isBin":Z
    move-wide v10, v12

    invoke-direct/range {v3 .. v11}, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;-><init>(Lcom/sleepycat/je/dbi/DatabaseId;JIZ[BJ)V

    move-object/from16 v3, v18

    .line 593
    .local v3, "ref":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    const-wide/16 v4, -0x1

    cmp-long v4, v12, v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 594
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v5, 0x1

    :cond_2
    move v4, v5

    .local v4, "added":Z
    goto :goto_2

    .line 596
    .end local v4    # "added":Z
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v4, v14, v6

    if-ltz v4, :cond_9

    .line 597
    invoke-virtual/range {v20 .. v20}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 598
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    const/4 v5, 0x1

    :cond_4
    move v4, v5

    .line 601
    .restart local v4    # "added":Z
    :goto_2
    if-nez v4, :cond_5

    .line 602
    monitor-exit p0

    return-void

    .line 605
    :cond_5
    :try_start_1
    iget v5, v1, Lcom/sleepycat/je/recovery/DirtyINMap;->numEntries:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v1, Lcom/sleepycat/je/recovery/DirtyINMap;->numEntries:I

    .line 607
    if-eqz p3, :cond_6

    .line 608
    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move/from16 v7, v22

    move/from16 v9, v23

    .end local v20    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v21    # "level":Ljava/lang/Integer;
    .end local v22    # "isRoot":Z
    .end local v23    # "isBin":Z
    .local v5, "level":Ljava/lang/Integer;
    .local v6, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v7, "isRoot":Z
    .local v9, "isBin":Z
    invoke-direct {v1, v5, v6, v9, v7}, Lcom/sleepycat/je/recovery/DirtyINMap;->updateFlushLevels(Ljava/lang/Integer;Lcom/sleepycat/je/dbi/DatabaseImpl;ZZ)V

    goto :goto_3

    .line 607
    .end local v5    # "level":Ljava/lang/Integer;
    .end local v6    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v7    # "isRoot":Z
    .end local v9    # "isBin":Z
    .restart local v20    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v21    # "level":Ljava/lang/Integer;
    .restart local v22    # "isRoot":Z
    .restart local v23    # "isBin":Z
    :cond_6
    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move/from16 v7, v22

    move/from16 v9, v23

    .line 611
    .end local v20    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v21    # "level":Ljava/lang/Integer;
    .end local v22    # "isRoot":Z
    .end local v23    # "isBin":Z
    .restart local v5    # "level":Ljava/lang/Integer;
    .restart local v6    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v7    # "isRoot":Z
    .restart local v9    # "isBin":Z
    :goto_3
    if-eqz p4, :cond_7

    .line 612
    iget-object v8, v1, Lcom/sleepycat/je/recovery/DirtyINMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v8

    .line 613
    .local v8, "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    sget v10, Lcom/sleepycat/je/dbi/MemoryBudget;->CHECKPOINT_REFERENCE_SIZE:I

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    .end local v8    # "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    :cond_7
    monitor-exit p0

    return-void

    .line 597
    .end local v4    # "added":Z
    .end local v5    # "level":Ljava/lang/Integer;
    .end local v6    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v7    # "isRoot":Z
    .end local v9    # "isBin":Z
    .restart local v20    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v21    # "level":Ljava/lang/Integer;
    .restart local v22    # "isRoot":Z
    .restart local v23    # "isBin":Z
    :cond_8
    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move/from16 v7, v22

    move/from16 v9, v23

    .end local v20    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v21    # "level":Ljava/lang/Integer;
    .end local v22    # "isRoot":Z
    .end local v23    # "isBin":Z
    .restart local v5    # "level":Ljava/lang/Integer;
    .restart local v6    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v7    # "isRoot":Z
    .restart local v9    # "isBin":Z
    :try_start_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 596
    .end local v5    # "level":Ljava/lang/Integer;
    .end local v6    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v7    # "isRoot":Z
    .end local v9    # "isBin":Z
    .restart local v20    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v21    # "level":Ljava/lang/Integer;
    .restart local v22    # "isRoot":Z
    .restart local v23    # "isBin":Z
    :cond_9
    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move/from16 v7, v22

    move/from16 v9, v23

    .end local v20    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v21    # "level":Ljava/lang/Integer;
    .end local v22    # "isRoot":Z
    .end local v23    # "isBin":Z
    .restart local v5    # "level":Ljava/lang/Integer;
    .restart local v6    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v7    # "isRoot":Z
    .restart local v9    # "isBin":Z
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 549
    .end local v0    # "nodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .end local v2    # "lsnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .end local v3    # "ref":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    .end local v5    # "level":Ljava/lang/Integer;
    .end local v6    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v7    # "isRoot":Z
    .end local v9    # "isBin":Z
    .end local v12    # "lsn":J
    .end local v14    # "nodeId":J
    .end local v16    # "idKey":[B
    .end local v17    # "pairOfMaps":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;>;"
    .end local p1    # "in":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "index":I
    .end local p3    # "updateFlushLevels":Z
    .end local p4    # "updateMemoryBudget":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized beginCheckpoint(ZZ)V
    .locals 2
    .param p1, "flushAll"    # Z
    .param p2, "flushExtraLevel"    # Z

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->levelMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->mapLNsToFlush:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->highestFlushLevels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->numEntries:I

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    sget-object v1, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->NONE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    if-ne v0, v1, :cond_0

    .line 206
    sget-object v0, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->DIRTY_MAP_INCOMPLETE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    iput-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    .line 207
    iput-boolean p1, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptFlushAll:Z

    .line 208
    iput-boolean p2, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptFlushExtraLevel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 205
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 201
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .end local p1    # "flushAll":Z
    .end local p2    # "flushExtraLevel":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized coordinateEvictionWithCheckpoint(Lcom/sleepycat/je/dbi/DatabaseImpl;ILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/log/Provisional;
    .locals 2
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "targetLevel"    # I
    .param p3, "parent"    # Lcom/sleepycat/je/tree/IN;

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    sget-object v1, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->DIRTY_MAP_INCOMPLETE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    if-ne v0, v1, :cond_0

    if-eqz p3, :cond_0

    .line 127
    const/4 v0, -0x1

    invoke-direct {p0, p3, v0}, Lcom/sleepycat/je/recovery/DirtyINMap;->selectForCheckpoint(Lcom/sleepycat/je/tree/IN;I)V

    .line 130
    invoke-direct {p0, p3}, Lcom/sleepycat/je/recovery/DirtyINMap;->saveMapLNsToFlush(Lcom/sleepycat/je/tree/IN;)V

    .line 138
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lcom/sleepycat/je/log/Provisional;->YES:Lcom/sleepycat/je/log/Provisional;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 148
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    sget-object v1, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->DIRTY_MAP_INCOMPLETE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_2

    .line 150
    sget-object v0, Lcom/sleepycat/je/log/Provisional;->YES:Lcom/sleepycat/je/log/Provisional;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 157
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    sget-object v1, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->DIRTY_MAP_COMPLETE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    if-ne v0, v1, :cond_3

    .line 158
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/recovery/DirtyINMap;->getHighestFlushLevel(Lcom/sleepycat/je/dbi/DatabaseImpl;)I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 159
    sget-object v0, Lcom/sleepycat/je/log/Provisional;->YES:Lcom/sleepycat/je/log/Provisional;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 163
    :cond_3
    :try_start_3
    sget-object v0, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 122
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "targetLevel":I
    .end local p3    # "parent":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method coordinateSplitWithCheckpoint(Lcom/sleepycat/je/tree/IN;)V
    .locals 1
    .param p1, "newSibling"    # Lcom/sleepycat/je/tree/IN;

    .line 177
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0, p1}, Lcom/sleepycat/je/recovery/DirtyINMap;->selectDirtyBINChildrenForCheckpoint(Lcom/sleepycat/je/tree/IN;)V

    .line 193
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method flushMapLNs(J)V
    .locals 6
    .param p1, "checkpointStart"    # J

    .line 741
    monitor-enter p0

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    sget-object v1, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->DIRTY_MAP_INCOMPLETE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    if-eq v0, v1, :cond_3

    .line 744
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->mapLNsToFlush:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    const/4 v0, 0x0

    .local v0, "mapLNsCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    goto :goto_0

    .line 747
    .end local v0    # "mapLNsCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->mapLNsToFlush:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 748
    .restart local v0    # "mapLNsCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    iget-object v1, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->mapLNsToFlush:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 750
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 752
    if-eqz v0, :cond_2

    .line 753
    iget-object v1, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    .line 755
    .local v1, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/dbi/DatabaseId;

    .line 756
    .local v3, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    iget-object v4, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkDiskLimitViolation()V

    .line 757
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    .line 759
    .local v4, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isCheckpointNeeded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 761
    const/4 v5, 0x1

    invoke-virtual {v1, v4, p1, p2, v5}, Lcom/sleepycat/je/dbi/DbTree;->modifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 766
    :catchall_0
    move-exception v2

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v2

    :cond_1
    :goto_2
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 767
    nop

    .line 768
    .end local v3    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v4    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_1

    .line 770
    .end local v1    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    :cond_2
    return-void

    .line 742
    .end local v0    # "mapLNsCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "checkpointStart":J
    throw v0

    .line 750
    .restart local p1    # "checkpointStart":J
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method flushRoot(J)V
    .locals 2
    .param p1, "checkpointStart"    # J

    .line 789
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    .line 791
    .local v0, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    sget-object v1, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isCheckpointNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sleepycat/je/dbi/DbTree;->NAME_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 792
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isCheckpointNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logMapTreeRoot(J)V

    .line 796
    :cond_1
    return-void
.end method

.method declared-synchronized getHighestFlushLevel(Lcom/sleepycat/je/dbi/DatabaseImpl;)I
    .locals 2
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    monitor-enter p0

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    sget-object v1, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->DIRTY_MAP_INCOMPLETE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    if-eq v0, v1, :cond_1

    .line 504
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->highestFlushLevels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 505
    .local v0, "val":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    :cond_0
    const/4 v1, -0x1

    :goto_0
    monitor-exit p0

    return v1

    .line 492
    .end local v0    # "val":Ljava/lang/Integer;
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 493
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getLowestLevelSet()Ljava/lang/Integer;
    .locals 1

    monitor-enter p0

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->levelMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 621
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNumEntries()I
    .locals 1

    monitor-enter p0

    .line 799
    :try_start_0
    iget v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->numEntries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 799
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNumLevels()I
    .locals 1

    monitor-enter p0

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->levelMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 509
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeLevel(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "level"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->levelMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    monitor-exit p0

    return-void

    .line 627
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    .end local p1    # "level":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeNextNode(Ljava/lang/Integer;)Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    .locals 4
    .param p1, "level"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->levelMap:Ljava/util/SortedMap;

    .line 667
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    .local v0, "pairOfMaps":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 670
    monitor-exit p0

    return-object v1

    .line 675
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 676
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    goto :goto_0

    .line 677
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 678
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 683
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    :goto_0
    nop

    .line 684
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 686
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 687
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;

    .line 688
    .local v3, "ref":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    monitor-exit p0

    return-object v3

    .line 686
    .end local v3    # "ref":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;>;"
    :cond_3
    monitor-exit p0

    return-object v1

    .line 665
    .end local v0    # "pairOfMaps":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;>;"
    .end local p1    # "level":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeNode(IJJ)Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    .locals 6
    .param p1, "level"    # I
    .param p2, "lsn"    # J
    .param p4, "nodeId"    # J

    monitor-enter p0

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->levelMap:Ljava/util/SortedMap;

    .line 637
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    .local v0, "pairOfMaps":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 640
    monitor-exit p0

    return-object v1

    .line 643
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 644
    .local v2, "lsnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 646
    .local v3, "nodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_1

    .line 647
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    .local v4, "ref":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    if-eqz v4, :cond_1

    .line 649
    monitor-exit p0

    return-object v4

    .line 653
    .end local v4    # "ref":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-ltz v4, :cond_2

    .line 654
    :try_start_2
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 655
    .restart local v4    # "ref":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    if-eqz v4, :cond_2

    .line 656
    monitor-exit p0

    return-object v4

    .line 660
    .end local v4    # "ref":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 635
    .end local v0    # "pairOfMaps":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;>;"
    .end local v2    # "lsnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .end local v3    # "nodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;>;"
    .end local p1    # "level":I
    .end local p2    # "lsn":J
    .end local p4    # "nodeId":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 216
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/recovery/DirtyINMap;->removeCostFromMemoryBudget()V

    .line 217
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->levelMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 218
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->mapLNsToFlush:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 219
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->highestFlushLevels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->numEntries:I

    .line 221
    sget-object v0, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->NONE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    iput-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 215
    .end local p0    # "this":Lcom/sleepycat/je/recovery/DirtyINMap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method selectDirtyINsForCheckpoint()V
    .locals 9

    .line 235
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    sget-object v1, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->DIRTY_MAP_INCOMPLETE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    if-ne v0, v1, :cond_7

    .line 241
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v0

    .line 242
    .local v0, "inMemINs":Lcom/sleepycat/je/dbi/INList;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/INList;->memRecalcBegin()V

    .line 244
    const/4 v1, 0x0

    .line 246
    .local v1, "completed":Z
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/INList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/IN;

    .line 247
    .local v3, "in":Lcom/sleepycat/je/tree/IN;
    sget-object v4, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/tree/IN;->latchShared(Lcom/sleepycat/je/CacheMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 249
    :try_start_1
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    .line 266
    :try_start_2
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_0

    .line 253
    :cond_0
    :try_start_3
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/dbi/INList;->memRecalcIterate(Lcom/sleepycat/je/tree/IN;)V

    .line 256
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v4

    if-nez v4, :cond_1

    .line 257
    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/recovery/DirtyINMap;->selectForCheckpoint(Lcom/sleepycat/je/tree/IN;I)V

    .line 261
    :cond_1
    invoke-direct {p0, v3}, Lcom/sleepycat/je/recovery/DirtyINMap;->selectDirtyBINChildrenForCheckpoint(Lcom/sleepycat/je/tree/IN;)V

    .line 264
    invoke-direct {p0, v3}, Lcom/sleepycat/je/recovery/DirtyINMap;->saveMapLNsToFlush(Lcom/sleepycat/je/tree/IN;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    :try_start_4
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 267
    nop

    .line 270
    sget-object v4, Lcom/sleepycat/je/recovery/Checkpointer;->examineINForCheckpointHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v4, v3}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    .line 272
    nop

    .end local v3    # "in":Lcom/sleepycat/je/tree/IN;
    goto :goto_0

    .line 266
    .restart local v3    # "in":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception v2

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .end local v0    # "inMemINs":Lcom/sleepycat/je/dbi/INList;
    .end local v1    # "completed":Z
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 273
    .end local v3    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v0    # "inMemINs":Lcom/sleepycat/je/dbi/INList;
    .restart local v1    # "completed":Z
    :cond_2
    const/4 v2, 0x1

    .line 275
    .end local v1    # "completed":Z
    .local v2, "completed":Z
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/INList;->memRecalcEnd(Z)V

    .line 276
    nop

    .line 288
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v3, v1

    .line 291
    .local v3, "maxFlushDbs":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 292
    :try_start_5
    iget-object v1, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->highestFlushLevels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 294
    .local v4, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    iget-object v5, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->highestFlushLevels:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 295
    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .end local v4    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_3
    goto :goto_1

    .line 298
    :cond_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 301
    iget-object v1, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    .line 303
    .local v1, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 305
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1, v6}, Lcom/sleepycat/je/dbi/DbTree;->getHighestLevel(Lcom/sleepycat/je/dbi/DatabaseImpl;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/Integer;>;"
    goto :goto_2

    .line 309
    :cond_5
    monitor-enter p0

    .line 312
    :try_start_6
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 314
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->highestFlushLevels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    nop

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/Integer;>;"
    goto :goto_3

    .line 316
    :cond_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 319
    monitor-enter p0

    .line 320
    :try_start_7
    invoke-direct {p0}, Lcom/sleepycat/je/recovery/DirtyINMap;->addCostToMemoryBudget()V

    .line 321
    sget-object v4, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->DIRTY_MAP_COMPLETE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    iput-object v4, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    .line 322
    monitor-exit p0

    .line 327
    return-void

    .line 322
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    .line 316
    :catchall_2
    move-exception v4

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v4

    .line 298
    .end local v1    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    :catchall_3
    move-exception v1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1

    .line 275
    .end local v2    # "completed":Z
    .end local v3    # "maxFlushDbs":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/Integer;>;"
    .local v1, "completed":Z
    :catchall_4
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/INList;->memRecalcEnd(Z)V

    throw v2

    .line 235
    .end local v0    # "inMemINs":Lcom/sleepycat/je/dbi/INList;
    .end local v1    # "completed":Z
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method selectDirtyINsForDbSync(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 5
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 460
    iget-object v0, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->ckptState:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    sget-object v1, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->NONE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    if-ne v0, v1, :cond_3

    .line 462
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    .line 464
    .local v0, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    iget-object v1, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/INList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/IN;

    .line 465
    .local v2, "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    sget-object v3, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 468
    :try_start_0
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/sleepycat/je/recovery/DirtyINMap;->addIN(Lcom/sleepycat/je/tree/IN;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_0
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 476
    goto :goto_1

    .line 475
    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v1

    .line 478
    .end local v2    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_1
    :goto_1
    goto :goto_0

    .line 484
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->highestFlushLevels:Ljava/util/Map;

    iget-object v2, p0, Lcom/sleepycat/je/recovery/DirtyINMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 485
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/dbi/DbTree;->getHighestLevel(Lcom/sleepycat/je/dbi/DatabaseImpl;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 484
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-direct {p0}, Lcom/sleepycat/je/recovery/DirtyINMap;->addCostToMemoryBudget()V

    .line 489
    return-void

    .line 460
    .end local v0    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
