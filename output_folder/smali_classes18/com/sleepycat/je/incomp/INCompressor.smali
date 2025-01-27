.class public Lcom/sleepycat/je/incomp/INCompressor;
.super Lcom/sleepycat/je/utilint/DaemonThread;
.source "INCompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/incomp/INCompressor$BINSearch;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false


# instance fields
.field private beforeFlushTrackerHook:Lcom/sleepycat/je/utilint/TestHook;

.field private binRefQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/tree/BINReference;",
            ">;"
        }
    .end annotation
.end field

.field private final binRefQueueSync:Ljava/lang/Object;

.field private compQueueSize:Lcom/sleepycat/je/utilint/LongStat;

.field private cursorsBins:Lcom/sleepycat/je/utilint/LongStat;

.field private cursorsBinsThisRun:I

.field private dbClosedBins:Lcom/sleepycat/je/utilint/LongStat;

.field private dbClosedBinsThisRun:I

.field private lazyProcessed:I

.field private final lockTimeout:J

.field private nonEmptyBins:Lcom/sleepycat/je/utilint/LongStat;

.field private nonEmptyBinsThisRun:I

.field private processedBins:Lcom/sleepycat/je/utilint/LongStat;

.field private processedBinsThisRun:I

.field private splitBins:Lcom/sleepycat/je/utilint/LongStat;

.field private splitBinsThisRun:I

.field private stats:Lcom/sleepycat/je/utilint/StatGroup;

.field private wokenUp:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;JLjava/lang/String;)V
    .locals 3
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "waitTime"    # J
    .param p4, "name"    # Ljava/lang/String;

    .line 164
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/sleepycat/je/utilint/DaemonThread;-><init>(JLjava/lang/String;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->splitBinsThisRun:I

    .line 140
    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->dbClosedBinsThisRun:I

    .line 141
    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->cursorsBinsThisRun:I

    .line 142
    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->nonEmptyBinsThisRun:I

    .line 143
    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->processedBinsThisRun:I

    .line 150
    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->lazyProcessed:I

    .line 151
    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->wokenUp:I

    .line 165
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->COMPRESSOR_LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 166
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->lockTimeout:J

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueue:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueueSync:Ljava/lang/Object;

    .line 171
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Node Compression"

    const-string v2, "Deleted records are removed from Btree internal nodes asynchronously and nodes are deleted when they become empty."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 172
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_SPLIT_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->splitBins:Lcom/sleepycat/je/utilint/LongStat;

    .line 173
    new-instance v0, Lcom/sleepycat/je/utilint/LongStat;

    iget-object v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v2, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_DBCLOSED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->dbClosedBins:Lcom/sleepycat/je/utilint/LongStat;

    .line 174
    new-instance v0, Lcom/sleepycat/je/utilint/LongStat;

    iget-object v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v2, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_CURSORS_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->cursorsBins:Lcom/sleepycat/je/utilint/LongStat;

    .line 175
    new-instance v0, Lcom/sleepycat/je/utilint/LongStat;

    iget-object v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v2, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_NON_EMPTY_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->nonEmptyBins:Lcom/sleepycat/je/utilint/LongStat;

    .line 176
    new-instance v0, Lcom/sleepycat/je/utilint/LongStat;

    iget-object v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v2, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_PROCESSED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->processedBins:Lcom/sleepycat/je/utilint/LongStat;

    .line 177
    new-instance v0, Lcom/sleepycat/je/utilint/LongStat;

    iget-object v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v2, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->compQueueSize:Lcom/sleepycat/je/utilint/LongStat;

    .line 178
    return-void
.end method

.method private accumulatePerRunCounters()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->splitBins:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->splitBinsThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 550
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->dbClosedBins:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->dbClosedBinsThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 551
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->cursorsBins:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->cursorsBinsThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 552
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->nonEmptyBins:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->nonEmptyBinsThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 553
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->processedBins:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->processedBinsThisRun:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 554
    return-void
.end method

.method private addBinRefToQueue(Lcom/sleepycat/je/tree/BINReference;)V
    .locals 2
    .param p1, "binRef"    # Lcom/sleepycat/je/tree/BINReference;

    .line 255
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueueSync:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/incomp/INCompressor;->addBinRefToQueueAlreadyLatched(Lcom/sleepycat/je/tree/BINReference;)V

    .line 257
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addBinRefToQueueAlreadyLatched(Lcom/sleepycat/je/tree/BINReference;)V
    .locals 2
    .param p1, "binRef"    # Lcom/sleepycat/je/tree/BINReference;

    .line 277
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BINReference;->getNodeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 279
    .local v0, "node":Ljava/lang/Long;
    iget-object v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueue:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueue:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method private addBinToQueueAlreadyLatched(Lcom/sleepycat/je/tree/BIN;)V
    .locals 3
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 291
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 293
    .local v0, "node":Ljava/lang/Long;
    iget-object v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueue:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueue:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->createReference()Lcom/sleepycat/je/tree/BINReference;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void
.end method

.method private compressBin(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/BINReference;Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;)V
    .locals 5
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p3, "binRef"    # Lcom/sleepycat/je/tree/BINReference;
    .param p4, "localTracker"    # Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    .line 446
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->getIdentifierKey()[B

    move-result-object v0

    .line 447
    .local v0, "idKey":[B
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 450
    .local v1, "empty":Z
    :goto_0
    if-nez v1, :cond_6

    .line 461
    :try_start_0
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 489
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 462
    return-void

    .line 466
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->nCursors()I

    move-result v4

    if-lez v4, :cond_2

    .line 467
    invoke-direct {p0, p3}, Lcom/sleepycat/je/incomp/INCompressor;->addBinRefToQueue(Lcom/sleepycat/je/tree/BINReference;)V

    .line 468
    iget v2, p0, Lcom/sleepycat/je/incomp/INCompressor;->cursorsBinsThisRun:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sleepycat/je/incomp/INCompressor;->cursorsBinsThisRun:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 469
    return-void

    .line 476
    :cond_2
    nop

    .line 477
    :try_start_2
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->shouldLogDelta()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    .line 476
    :goto_1
    invoke-virtual {p2, v4, p4}, Lcom/sleepycat/je/tree/BIN;->compress(ZLcom/sleepycat/je/cleaner/LocalUtilizationTracker;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 481
    invoke-direct {p0, p3}, Lcom/sleepycat/je/incomp/INCompressor;->addBinRefToQueue(Lcom/sleepycat/je/tree/BINReference;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 489
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 482
    return-void

    .line 486
    :cond_4
    :try_start_3
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_5

    move v2, v3

    :cond_5
    move v1, v2

    goto :goto_2

    .line 489
    :catchall_0
    move-exception v2

    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    throw v2

    :cond_6
    :goto_2
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 490
    nop

    .line 493
    if-eqz v1, :cond_7

    .line 494
    invoke-direct {p0, p1, p3, v0}, Lcom/sleepycat/je/incomp/INCompressor;->pruneBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BINReference;[B)V

    .line 496
    :cond_7
    return-void
.end method

.method private findDBAndBIN(Lcom/sleepycat/je/incomp/INCompressor$BINSearch;Lcom/sleepycat/je/tree/BINReference;Lcom/sleepycat/je/dbi/DbTree;Ljava/util/Map;)Z
    .locals 7
    .param p1, "binSearch"    # Lcom/sleepycat/je/incomp/INCompressor$BINSearch;
    .param p2, "binRef"    # Lcom/sleepycat/je/tree/BINReference;
    .param p3, "dbTree"    # Lcom/sleepycat/je/dbi/DbTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/incomp/INCompressor$BINSearch;",
            "Lcom/sleepycat/je/tree/BINReference;",
            "Lcom/sleepycat/je/dbi/DbTree;",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 625
    .local p4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    nop

    .line 626
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BINReference;->getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->lockTimeout:J

    .line 625
    invoke-virtual {p3, v0, v1, v2, p4}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;JLjava/util/Map;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    iput-object v0, p1, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 628
    iget-object v0, p1, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->daemonEviction(Z)V

    .line 638
    iget-object v0, p1, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {p0, v0, p2}, Lcom/sleepycat/je/incomp/INCompressor;->searchForBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BINReference;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    iput-object v0, p1, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 640
    iget-object v0, p1, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 641
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BINReference;->getNodeId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    goto :goto_0

    .line 650
    :cond_1
    return v2

    .line 643
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;->bin:Lcom/sleepycat/je/tree/BIN;

    if-eqz v0, :cond_3

    .line 644
    iget-object v0, p1, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 646
    :cond_3
    iget v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->splitBinsThisRun:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->splitBinsThisRun:I

    .line 647
    return v1

    .line 630
    :cond_4
    :goto_1
    iget v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->dbClosedBinsThisRun:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->dbClosedBinsThisRun:I

    .line 631
    return v1
.end method

.method private pruneBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BINReference;[B)V
    .locals 2
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "binRef"    # Lcom/sleepycat/je/tree/BINReference;
    .param p3, "idKey"    # [B

    .line 507
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    .line 508
    .local v0, "tree":Lcom/sleepycat/je/tree/Tree;
    invoke-virtual {v0, p3}, Lcom/sleepycat/je/tree/Tree;->delete([B)V

    .line 509
    iget v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->processedBinsThisRun:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->processedBinsThisRun:I
    :try_end_0
    .catch Lcom/sleepycat/je/tree/NodeNotEmptyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/tree/CursorsExistException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Lcom/sleepycat/je/tree/CursorsExistException;
    invoke-direct {p0, p2}, Lcom/sleepycat/je/incomp/INCompressor;->addBinRefToQueue(Lcom/sleepycat/je/tree/BINReference;)V

    .line 521
    iget v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->cursorsBinsThisRun:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->cursorsBinsThisRun:I

    goto :goto_1

    .line 510
    .end local v0    # "e":Lcom/sleepycat/je/tree/CursorsExistException;
    :catch_1
    move-exception v0

    .line 517
    .local v0, "NNEE":Lcom/sleepycat/je/tree/NodeNotEmptyException;
    iget v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->nonEmptyBinsThisRun:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->nonEmptyBinsThisRun:I

    .line 522
    .end local v0    # "NNEE":Lcom/sleepycat/je/tree/NodeNotEmptyException;
    :goto_0
    nop

    .line 523
    :goto_1
    return-void
.end method

.method private resetPerRunCounters()V
    .locals 1

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->splitBinsThisRun:I

    .line 542
    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->dbClosedBinsThisRun:I

    .line 543
    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->cursorsBinsThisRun:I

    .line 544
    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->nonEmptyBinsThisRun:I

    .line 545
    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->processedBinsThisRun:I

    .line 546
    return-void
.end method


# virtual methods
.method public addBinToQueue(Lcom/sleepycat/je/tree/BIN;)V
    .locals 2
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 245
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueueSync:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/incomp/INCompressor;->addBinToQueueAlreadyLatched(Lcom/sleepycat/je/tree/BIN;)V

    .line 247
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addMultipleBinRefsToQueue(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/tree/BINReference;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p1, "binRefs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/tree/BINReference;>;"
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueueSync:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/BINReference;

    .line 267
    .local v2, "binRef":Lcom/sleepycat/je/tree/BINReference;
    invoke-direct {p0, v2}, Lcom/sleepycat/je/incomp/INCompressor;->addBinRefToQueueAlreadyLatched(Lcom/sleepycat/je/tree/BINReference;)V

    .line 268
    .end local v2    # "binRef":Lcom/sleepycat/je/tree/BINReference;
    goto :goto_0

    .line 269
    :cond_0
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized doCompress()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueueSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 361
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 362
    .local v1, "binQueueSize":I
    if-gtz v1, :cond_0

    .line 363
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 367
    .end local v1    # "binQueueSize":I
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 365
    .restart local v1    # "binQueueSize":I
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueue:Ljava/util/Map;

    .line 366
    .local v2, "queueSnapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/tree/BINReference;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueue:Ljava/util/Map;

    .line 367
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 370
    :try_start_4
    invoke-direct {p0}, Lcom/sleepycat/je/incomp/INCompressor;->resetPerRunCounters()V

    .line 371
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/incomp/INCompressor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InCompress.doCompress called, queue size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 374
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 375
    invoke-static {v3}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 386
    .end local p0    # "this":Lcom/sleepycat/je/incomp/INCompressor;
    :cond_1
    new-instance v0, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    iget-object v4, p0, Lcom/sleepycat/je/incomp/INCompressor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v0, v4}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 390
    .local v0, "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 392
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    iget-object v5, p0, Lcom/sleepycat/je/incomp/INCompressor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v5

    .line 393
    .local v5, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    new-instance v6, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;-><init>(Lcom/sleepycat/je/incomp/INCompressor$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 396
    .local v6, "binSearch":Lcom/sleepycat/je/incomp/INCompressor$BINSearch;
    :try_start_5
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/tree/BINReference;

    .line 398
    .local v8, "binRef":Lcom/sleepycat/je/tree/BINReference;
    iget-object v9, p0, Lcom/sleepycat/je/incomp/INCompressor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isClosed()Z

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v9, :cond_3

    .line 425
    :try_start_6
    invoke-virtual {v5, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 426
    sget-boolean v7, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v7, :cond_2

    .line 427
    invoke-static {v3}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 429
    :cond_2
    invoke-direct {p0}, Lcom/sleepycat/je/incomp/INCompressor;->accumulatePerRunCounters()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 399
    monitor-exit p0

    return-void

    .line 402
    :cond_3
    :try_start_7
    invoke-direct {p0, v6, v8, v5, v4}, Lcom/sleepycat/je/incomp/INCompressor;->findDBAndBIN(Lcom/sleepycat/je/incomp/INCompressor$BINSearch;Lcom/sleepycat/je/tree/BINReference;Lcom/sleepycat/je/dbi/DbTree;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 408
    goto :goto_0

    .line 412
    :cond_4
    iget-object v9, v6, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v10, v6, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;->bin:Lcom/sleepycat/je/tree/BIN;

    invoke-direct {p0, v9, v10, v8, v0}, Lcom/sleepycat/je/incomp/INCompressor;->compressBin(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/BINReference;Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;)V

    .line 413
    .end local v8    # "binRef":Lcom/sleepycat/je/tree/BINReference;
    goto :goto_0

    .line 416
    :cond_5
    iget-object v7, p0, Lcom/sleepycat/je/incomp/INCompressor;->beforeFlushTrackerHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v7}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 422
    iget-object v7, p0, Lcom/sleepycat/je/incomp/INCompressor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->flushLocalTracker(Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 425
    :try_start_8
    invoke-virtual {v5, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 426
    sget-boolean v7, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v7, :cond_6

    .line 427
    invoke-static {v3}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 429
    :cond_6
    invoke-direct {p0}, Lcom/sleepycat/je/incomp/INCompressor;->accumulatePerRunCounters()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 430
    nop

    .line 431
    monitor-exit p0

    return-void

    .line 416
    :cond_7
    :try_start_9
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .end local v1    # "binQueueSize":I
    .end local v2    # "queueSnapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/tree/BINReference;>;"
    .end local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v5    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v6    # "binSearch":Lcom/sleepycat/je/incomp/INCompressor$BINSearch;
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 425
    .restart local v0    # "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .restart local v1    # "binQueueSize":I
    .restart local v2    # "queueSnapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/tree/BINReference;>;"
    .restart local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v6    # "binSearch":Lcom/sleepycat/je/incomp/INCompressor$BINSearch;
    :catchall_1
    move-exception v7

    :try_start_a
    invoke-virtual {v5, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 426
    sget-boolean v8, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v8, :cond_8

    .line 427
    invoke-static {v3}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 429
    :cond_8
    invoke-direct {p0}, Lcom/sleepycat/je/incomp/INCompressor;->accumulatePerRunCounters()V

    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 367
    .end local v0    # "localTracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .end local v1    # "binQueueSize":I
    .end local v2    # "queueSnapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/tree/BINReference;>;"
    .end local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v5    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v6    # "binSearch":Lcom/sleepycat/je/incomp/INCompressor$BINSearch;
    :catchall_2
    move-exception v1

    :goto_1
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 359
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public exists(J)Z
    .locals 3
    .param p1, "nodeId"    # J

    .line 301
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueueSync:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueue:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBinRefQueueSize()I
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueueSync:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public lazyCompress(Lcom/sleepycat/je/tree/IN;Z)V
    .locals 3
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "compressDirtySlots"    # Z

    .line 574
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 577
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 581
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    .line 587
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->nCursors()I

    move-result v1

    if-lez v1, :cond_3

    .line 588
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 589
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 590
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/incomp/INCompressor;->addBinToQueue(Lcom/sleepycat/je/tree/BIN;)V

    .line 591
    goto :goto_1

    .line 588
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 597
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/sleepycat/je/tree/BIN;->compress(ZLcom/sleepycat/je/cleaner/LocalUtilizationTracker;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 598
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1

    if-nez v1, :cond_5

    .line 600
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/incomp/INCompressor;->addBinToQueue(Lcom/sleepycat/je/tree/BIN;)V

    goto :goto_2

    .line 604
    :cond_4
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/incomp/INCompressor;->addBinToQueue(Lcom/sleepycat/je/tree/BIN;)V

    .line 607
    :cond_5
    :goto_2
    iget v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->lazyProcessed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/je/incomp/INCompressor;->lazyProcessed:I

    .line 608
    return-void

    .line 578
    .end local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_6
    :goto_3
    return-void

    .line 574
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 3
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 310
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->compQueueSize:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {p0}, Lcom/sleepycat/je/incomp/INCompressor;->getBinRefQueueSize()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/LongStat;->set(Ljava/lang/Long;)V

    .line 317
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->lazyProcessed:I

    .line 319
    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->wokenUp:I

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method protected nDeadlockRetries()J
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->COMPRESSOR_RETRY:Lcom/sleepycat/je/config/IntConfigParam;

    .line 331
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    int-to-long v0, v0

    .line 330
    return-wide v0
.end method

.method public declared-synchronized onWakeup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isClosing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 339
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->wokenUp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->wokenUp:I

    .line 342
    invoke-virtual {p0}, Lcom/sleepycat/je/incomp/INCompressor;->doCompress()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 337
    .end local p0    # "this":Lcom/sleepycat/je/incomp/INCompressor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public searchForBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BINReference;)Lcom/sleepycat/je/tree/BIN;
    .locals 3
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "binRef"    # Lcom/sleepycat/je/tree/BINReference;

    .line 534
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/je/tree/BINReference;->getKey()[B

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/tree/Tree;->search([BLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    return-object v0
.end method

.method public setBeforeFlushTrackerHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 182
    iput-object p1, p0, Lcom/sleepycat/je/incomp/INCompressor;->beforeFlushTrackerHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 183
    return-void
.end method

.method public declared-synchronized verifyCursors()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    .line 192
    monitor-exit p0

    return-void

    .line 200
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueueSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 201
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sleepycat/je/incomp/INCompressor;->binRefQueue:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    .local v1, "queueSnapshot":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/BINReference;>;"
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 209
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/je/incomp/INCompressor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    .line 210
    .local v0, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 213
    .local v2, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :try_start_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_2

    :try_start_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/tree/BINReference;

    .line 214
    .local v4, "binRef":Lcom/sleepycat/je/tree/BINReference;
    nop

    .line 215
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BINReference;->getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v5

    iget-wide v6, p0, Lcom/sleepycat/je/incomp/INCompressor;->lockTimeout:J

    .line 214
    invoke-virtual {v0, v5, v6, v7, v2}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;JLjava/util/Map;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    .line 217
    .local v5, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {p0, v5, v4}, Lcom/sleepycat/je/incomp/INCompressor;->searchForBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BINReference;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v6

    .line 218
    .local v6, "bin":Lcom/sleepycat/je/tree/BIN;
    if-eqz v6, :cond_1

    .line 219
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->verifyCursors()V

    .line 220
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    .end local v4    # "binRef":Lcom/sleepycat/je/tree/BINReference;
    .end local v5    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_1
    goto :goto_0

    .line 224
    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_2
    :try_start_6
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 225
    nop

    .line 226
    monitor-exit p0

    return-void

    .line 224
    .end local p0    # "this":Lcom/sleepycat/je/incomp/INCompressor;
    :catchall_1
    move-exception v3

    :goto_1
    :try_start_7
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 202
    .end local v0    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v1    # "queueSnapshot":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/BINReference;>;"
    .end local v2    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 190
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method
