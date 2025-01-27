.class public Lcom/sleepycat/je/evictor/Evictor;
.super Ljava/lang/Object;
.source "Evictor.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/EnvConfigObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/evictor/Evictor$DbCache;,
        Lcom/sleepycat/je/evictor/Evictor$RejectEvictHandler;,
        Lcom/sleepycat/je/evictor/Evictor$BackgroundEvictTask;,
        Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;,
        Lcom/sleepycat/je/evictor/Evictor$RootEvictor;,
        Lcom/sleepycat/je/evictor/Evictor$EnvInfo;,
        Lcom/sleepycat/je/evictor/Evictor$LRUList;,
        Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;,
        Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;,
        Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_BATCHES_PER_RUN:I = 0x64

.field private static final collectEvictionDebugStats:Z = false

.field private static final traceBINs:Z = false

.field private static final traceLevel:Ljava/util/logging/Level;

.field private static final traceUINs:Z = false


# instance fields
.field private final activePoolThreads:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final allowBinDeltas:Z

.field private final arbiter:Lcom/sleepycat/je/evictor/Arbiter;

.field private final binFetchMissRatio:Lcom/sleepycat/je/utilint/FloatStat;

.field private dbCacheClearCount:I

.field private final envInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/evictor/Evictor$EnvInfo;",
            ">;"
        }
    .end annotation
.end field

.field private evictProfile:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/tree/IN;",
            ">;"
        }
    .end annotation
.end field

.field private final evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private isEnabled:Z

.field private final isShared:Z

.field private final logger:Ljava/util/logging/Logger;

.field private maxPoolThreads:I

.field private final mutateBins:Z

.field private final nBINDeltaFetchMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final nBINFetch:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final nBINFetchMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final nBinDeltaBlindOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final nDirtyNodesEvicted:Lcom/sleepycat/je/utilint/LongStat;

.field private final nEvictionRuns:Lcom/sleepycat/je/utilint/LongStat;

.field private final nFullBINMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final nINCompactKey:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nINNoTarget:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nINSparseTarget:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nLNFetch:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final nLNFetchMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final nLNsEvicted:Lcom/sleepycat/je/utilint/LongStat;

.field private final nNodesEvicted:Lcom/sleepycat/je/utilint/LongStat;

.field private final nNodesMovedToPri2LRU:Lcom/sleepycat/je/utilint/LongStat;

.field private final nNodesMutated:Lcom/sleepycat/je/utilint/LongStat;

.field private final nNodesPutBack:Lcom/sleepycat/je/utilint/LongStat;

.field private final nNodesSkipped:Lcom/sleepycat/je/utilint/LongStat;

.field private final nNodesStripped:Lcom/sleepycat/je/utilint/LongStat;

.field private final nNodesTargeted:Lcom/sleepycat/je/utilint/LongStat;

.field private final nRootNodesEvicted:Lcom/sleepycat/je/utilint/LongStat;

.field private final nThreadUnavailable:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final nUpperINFetch:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final nUpperINFetchMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private nextPri1LRUList:I

.field private nextPri2LRUList:I

.field private final numBytesEvicted:[Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final numLRULists:I

.field private numNoEvictionEvents:I

.field private preEvictINHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

.field private final pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

.field private reentrancyGuard:Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;

.field private runEvictorThreads:Z

.field private final sharedCacheEnvs:Lcom/sleepycat/je/utilint/IntStat;

.field private final shutdownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private specialEvictionIndex:I

.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;

.field private terminateMillis:I

.field private final useDirtyLRUSet:Z

.field private final useOffHeapCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 549
    nop

    .line 1343
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    sput-object v0, Lcom/sleepycat/je/evictor/Evictor;->traceLevel:Ljava/util/logging/Level;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 20
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1612
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1413
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/sleepycat/je/evictor/Evictor;->shutdownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1416
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, v0, Lcom/sleepycat/je/evictor/Evictor;->activePoolThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1437
    iput v2, v0, Lcom/sleepycat/je/evictor/Evictor;->specialEvictionIndex:I

    .line 1469
    iput v2, v0, Lcom/sleepycat/je/evictor/Evictor;->nextPri1LRUList:I

    .line 1470
    iput v2, v0, Lcom/sleepycat/je/evictor/Evictor;->nextPri2LRUList:I

    .line 1477
    iput-boolean v2, v0, Lcom/sleepycat/je/evictor/Evictor;->isEnabled:Z

    .line 1606
    iput v2, v0, Lcom/sleepycat/je/evictor/Evictor;->numNoEvictionEvents:I

    .line 1614
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSharedCache()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z

    .line 1616
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1619
    new-instance v3, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v4, "Cache"

    const-string v5, "The main cache resides in the Java heap and holds data, keys, Btree internal nodes, locks and JE metadata."

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/sleepycat/je/evictor/Evictor;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 1621
    new-instance v4, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_EVICTION_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nEvictionRuns:Lcom/sleepycat/je/utilint/LongStat;

    .line 1623
    new-instance v4, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nNodesTargeted:Lcom/sleepycat/je/utilint/LongStat;

    .line 1624
    new-instance v4, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nNodesEvicted:Lcom/sleepycat/je/utilint/LongStat;

    .line 1625
    new-instance v4, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_ROOT_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nRootNodesEvicted:Lcom/sleepycat/je/utilint/LongStat;

    .line 1626
    new-instance v4, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_DIRTY_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nDirtyNodesEvicted:Lcom/sleepycat/je/utilint/LongStat;

    .line 1627
    new-instance v4, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_LNS_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nLNsEvicted:Lcom/sleepycat/je/utilint/LongStat;

    .line 1628
    new-instance v4, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_STRIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nNodesStripped:Lcom/sleepycat/je/utilint/LongStat;

    .line 1629
    new-instance v4, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_MUTATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nNodesMutated:Lcom/sleepycat/je/utilint/LongStat;

    .line 1630
    new-instance v4, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_PUT_BACK:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nNodesPutBack:Lcom/sleepycat/je/utilint/LongStat;

    .line 1631
    new-instance v4, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_SKIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nNodesSkipped:Lcom/sleepycat/je/utilint/LongStat;

    .line 1632
    new-instance v4, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_MOVED_TO_PRI2_LRU:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nNodesMovedToPri2LRU:Lcom/sleepycat/je/utilint/LongStat;

    .line 1635
    new-instance v4, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->LN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nLNFetch:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 1636
    new-instance v4, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nBINFetch:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 1637
    new-instance v4, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->UPPER_IN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nUpperINFetch:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 1638
    new-instance v4, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->LN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nLNFetchMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 1639
    new-instance v4, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nBINFetchMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 1640
    new-instance v4, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_DELTA_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nBINDeltaFetchMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 1641
    new-instance v4, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->UPPER_IN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nUpperINFetchMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 1642
    new-instance v4, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->FULL_BIN_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nFullBINMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 1643
    new-instance v4, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_DELTA_BLIND_OPS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nBinDeltaBlindOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 1644
    new-instance v4, Lcom/sleepycat/je/utilint/FloatStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_FETCH_MISS_RATIO:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/FloatStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->binFetchMissRatio:Lcom/sleepycat/je/utilint/FloatStat;

    .line 1646
    new-instance v4, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v5, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->THREAD_UNAVAILABLE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nThreadUnavailable:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 1648
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nINSparseTarget:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1649
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nINNoTarget:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1650
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->nINCompactKey:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1652
    new-instance v4, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v7, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_SHARED_CACHE_ENVS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v3, v7}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v4, v0, Lcom/sleepycat/je/evictor/Evictor;->sharedCacheEnvs:Lcom/sleepycat/je/utilint/IntStat;

    .line 1654
    const-class v3, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 1655
    invoke-static {v3}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    .line 1657
    .local v3, "allSources":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sleepycat/je/evictor/Evictor$EvictionSource;>;"
    invoke-virtual {v3}, Ljava/util/EnumSet;->size()I

    move-result v4

    .line 1659
    .local v4, "numSources":I
    new-array v7, v4, [Lcom/sleepycat/je/utilint/AtomicLongStat;

    iput-object v7, v0, Lcom/sleepycat/je/evictor/Evictor;->numBytesEvicted:[Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 1661
    invoke-virtual {v3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 1663
    .local v8, "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    invoke-virtual {v8}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->ordinal()I

    move-result v9

    .line 1665
    .local v9, "index":I
    iget-object v10, v0, Lcom/sleepycat/je/evictor/Evictor;->numBytesEvicted:[Lcom/sleepycat/je/utilint/AtomicLongStat;

    new-instance v11, Lcom/sleepycat/je/utilint/AtomicLongStat;

    iget-object v12, v0, Lcom/sleepycat/je/evictor/Evictor;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 1666
    invoke-virtual {v8}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->getNumBytesEvictedStatDef()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    aput-object v11, v10, v9

    .line 1667
    .end local v8    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .end local v9    # "index":I
    goto :goto_0

    .line 1669
    :cond_0
    new-instance v7, Lcom/sleepycat/je/evictor/Arbiter;

    iget-object v8, v0, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v7, v8}, Lcom/sleepycat/je/evictor/Arbiter;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v7, v0, Lcom/sleepycat/je/evictor/Evictor;->arbiter:Lcom/sleepycat/je/evictor/Arbiter;

    .line 1671
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v7

    iput-object v7, v0, Lcom/sleepycat/je/evictor/Evictor;->logger:Ljava/util/logging/Logger;

    .line 1672
    new-instance v8, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;

    iget-object v9, v0, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v8, v9, v7}, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Logger;)V

    iput-object v8, v0, Lcom/sleepycat/je/evictor/Evictor;->reentrancyGuard:Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;

    .line 1674
    iget-object v7, v0, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v7

    .line 1676
    .local v7, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v8, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_CORE_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v8

    .line 1678
    .local v8, "corePoolSize":I
    sget-object v9, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_MAX_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v7, v9}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v9

    iput v9, v0, Lcom/sleepycat/je/evictor/Evictor;->maxPoolThreads:I

    .line 1680
    sget-object v9, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_KEEP_ALIVE:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v7, v9}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v9

    int-to-long v14, v9

    .line 1682
    .local v14, "keepAliveTime":J
    sget-object v9, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_TERMINATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v7, v9}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v9

    iput v9, v0, Lcom/sleepycat/je/evictor/Evictor;->terminateMillis:I

    .line 1684
    sget-object v9, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_DB_CACHE_CLEAR_COUNT:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v7, v9}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v9

    iput v9, v0, Lcom/sleepycat/je/evictor/Evictor;->dbCacheClearCount:I

    .line 1686
    sget-object v9, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_N_LRU_LISTS:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v7, v9}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v9

    iput v9, v0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    .line 1689
    new-array v10, v9, [Lcom/sleepycat/je/evictor/Evictor$LRUList;

    iput-object v10, v0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    .line 1690
    new-array v9, v9, [Lcom/sleepycat/je/evictor/Evictor$LRUList;

    iput-object v9, v0, Lcom/sleepycat/je/evictor/Evictor;->pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    .line 1692
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget v10, v0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    if-ge v9, v10, :cond_1

    .line 1693
    iget-object v10, v0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    new-instance v11, Lcom/sleepycat/je/evictor/Evictor$LRUList;

    invoke-direct {v11, v9}, Lcom/sleepycat/je/evictor/Evictor$LRUList;-><init>(I)V

    aput-object v11, v10, v9

    .line 1694
    iget-object v10, v0, Lcom/sleepycat/je/evictor/Evictor;->pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    new-instance v11, Lcom/sleepycat/je/evictor/Evictor$LRUList;

    iget v12, v0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    add-int/2addr v12, v9

    invoke-direct {v11, v12}, Lcom/sleepycat/je/evictor/Evictor$LRUList;-><init>(I)V

    aput-object v11, v10, v9

    .line 1692
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1697
    .end local v9    # "i":I
    :cond_1
    iget-boolean v9, v0, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    .line 1698
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    goto :goto_2

    .line 1700
    :cond_2
    iput-object v10, v0, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    .line 1703
    :goto_2
    sget-object v9, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_OFF_HEAP_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {v7, v9}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v11

    cmp-long v5, v11, v5

    const/4 v6, 0x1

    if-lez v5, :cond_3

    .line 1704
    iput-boolean v2, v0, Lcom/sleepycat/je/evictor/Evictor;->mutateBins:Z

    .line 1705
    iput-boolean v2, v0, Lcom/sleepycat/je/evictor/Evictor;->useDirtyLRUSet:Z

    .line 1706
    iput-boolean v6, v0, Lcom/sleepycat/je/evictor/Evictor;->useOffHeapCache:Z

    goto :goto_3

    .line 1709
    :cond_3
    sget-object v5, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_MUTATE_BINS:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v7, v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/sleepycat/je/evictor/Evictor;->mutateBins:Z

    .line 1712
    sget-object v5, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_USE_DIRTY_LRU:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v7, v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/sleepycat/je/evictor/Evictor;->useDirtyLRUSet:Z

    .line 1715
    iput-boolean v2, v0, Lcom/sleepycat/je/evictor/Evictor;->useOffHeapCache:Z

    .line 1718
    :goto_3
    new-instance v2, Lcom/sleepycat/je/evictor/Evictor$RejectEvictHandler;

    iget-object v5, v0, Lcom/sleepycat/je/evictor/Evictor;->nThreadUnavailable:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-direct {v2, v5}, Lcom/sleepycat/je/evictor/Evictor$RejectEvictHandler;-><init>(Lcom/sleepycat/je/utilint/AtomicLongStat;)V

    move-object/from16 v17, v2

    .line 1721
    .local v17, "rejectHandler":Ljava/util/concurrent/RejectedExecutionHandler;
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v11, v0, Lcom/sleepycat/je/evictor/Evictor;->maxPoolThreads:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v12, v6}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v6, Lcom/sleepycat/je/utilint/StoppableThreadFactory;

    iget-boolean v9, v0, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    move-object v10, v1

    :goto_4
    iget-object v9, v0, Lcom/sleepycat/je/evictor/Evictor;->logger:Ljava/util/logging/Logger;

    const-string v13, "JEEvictor"

    invoke-direct {v6, v10, v13, v9}, Lcom/sleepycat/je/utilint/StoppableThreadFactory;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/util/logging/Logger;)V

    move-object v9, v2

    move v10, v8

    move-object/from16 v16, v12

    move-wide v12, v14

    move-wide/from16 v18, v14

    .end local v14    # "keepAliveTime":J
    .local v18, "keepAliveTime":J
    move-object v14, v5

    move-object/from16 v15, v16

    move-object/from16 v16, v6

    invoke-direct/range {v9 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v2, v0, Lcom/sleepycat/je/evictor/Evictor;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 1729
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_ALLOW_BIN_DELTAS:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v7, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/sleepycat/je/evictor/Evictor;->allowBinDeltas:Z

    .line 1732
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_EVICTOR:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v7, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/sleepycat/je/evictor/Evictor;->runEvictorThreads:Z

    .line 1740
    iget-object v2, v0, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 1741
    return-void
.end method

.method static synthetic access$200(Lcom/sleepycat/je/evictor/Evictor;Lcom/sleepycat/je/evictor/Evictor$RootEvictor;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;IZLcom/sleepycat/je/evictor/Evictor$EvictionSource;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/evictor/Evictor;
    .param p1, "x1"    # Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    .param p2, "x2"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "x3"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .param p7, "x7"    # Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 549
    invoke-direct/range {p0 .. p7}, Lcom/sleepycat/je/evictor/Evictor;->processTarget(Lcom/sleepycat/je/evictor/Evictor$RootEvictor;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;IZLcom/sleepycat/je/evictor/Evictor$EvictionSource;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/evictor/Evictor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/evictor/Evictor;

    .line 549
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->activePoolThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private binDeltaPutBack(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V
    .locals 1
    .param p1, "target"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "stats"    # Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;

    .line 2894
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isInPri2LRU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2895
    invoke-direct {p0, p1}, Lcom/sleepycat/je/evictor/Evictor;->pri2AddBack(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 2897
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/evictor/Evictor;->addBack(Lcom/sleepycat/je/tree/IN;)V

    .line 2900
    :goto_0
    if-eqz p2, :cond_1

    .line 2901
    invoke-virtual {p2}, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->incNumMutated()V

    .line 2904
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nNodesMutated:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 2905
    return-void
.end method

.method private doEvictOneIN(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/evictor/Evictor$EvictionSource;)J
    .locals 11
    .param p1, "target"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;
    .param p3, "source"    # Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 2130
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2131
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2139
    sget-object v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CACHEMODE:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    const-wide/16 v1, 0x0

    if-ne p3, v0, :cond_1

    .line 2140
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor;->useOffHeapCache:Z

    if-nez v0, :cond_1

    .line 2144
    const-wide/16 v3, 0x0

    .line 2145
    .local v3, "evictedBytes":J
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/CacheMode;->EVICT_BIN:Lcom/sleepycat/je/CacheMode;

    if-ne p2, v0, :cond_0

    .line 2146
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->partialEviction()J

    move-result-wide v5

    move-wide v3, v5

    .line 2147
    const-wide v5, -0x4000000000000001L    # -1.9999999999999998

    and-long/2addr v3, v5

    .line 2148
    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nNodesStripped:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 2150
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->numBytesEvicted:[Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {p3}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/utilint/AtomicLongStat;->add(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2153
    :cond_0
    nop

    .line 2155
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2153
    return-wide v3

    .line 2155
    .end local v3    # "evictedBytes":J
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v0

    .line 2159
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->reentrancyGuard:Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->enter()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2160
    return-wide v1

    .line 2164
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/evictor/Evictor;->remove(Lcom/sleepycat/je/tree/IN;)V

    .line 2166
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2168
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/sleepycat/je/evictor/Evictor;->processTarget(Lcom/sleepycat/je/evictor/Evictor$RootEvictor;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;IZLcom/sleepycat/je/evictor/Evictor$EvictionSource;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J

    move-result-wide v0

    .line 2173
    .local v0, "evictedBytes":J
    iget-object v2, p0, Lcom/sleepycat/je/evictor/Evictor;->numBytesEvicted:[Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {p3}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/je/utilint/AtomicLongStat;->add(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2175
    nop

    .line 2178
    iget-object v2, p0, Lcom/sleepycat/je/evictor/Evictor;->reentrancyGuard:Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->leave()V

    .line 2175
    return-wide v0

    .line 2178
    .end local v0    # "evictedBytes":J
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->reentrancyGuard:Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->leave()V

    throw v0

    .line 2131
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2130
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private evict(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;IZLcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J
    .locals 10
    .param p1, "target"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "index"    # I
    .param p4, "backgroundIO"    # Z
    .param p5, "stats"    # Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;

    .line 2991
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 2992
    .local v0, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    .line 2993
    .local v1, "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v2

    .line 2997
    .local v2, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    const/4 v3, 0x0

    .line 2999
    .local v3, "storedOffHeap":Z
    iget-boolean v4, p0, Lcom/sleepycat/je/evictor/Evictor;->useOffHeapCache:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3000
    move-object v4, p1

    check-cast v4, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v2, v4, p2, p3}, Lcom/sleepycat/je/evictor/OffHeapCache;->storeEvictedBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/IN;I)Z

    move-result v3

    .line 3004
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v4

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    if-ne v4, v5, :cond_1

    .line 3005
    invoke-virtual {v2, p1, p4}, Lcom/sleepycat/je/evictor/OffHeapCache;->flushAndDiscardBINChildren(Lcom/sleepycat/je/tree/IN;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3007
    invoke-direct {p0, p1, p5}, Lcom/sleepycat/je/evictor/Evictor;->skip(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V

    .line 3008
    return-wide v6

    .line 3012
    :cond_1
    const/4 v4, 0x0

    .line 3013
    .local v4, "logged":Z
    const-wide/16 v8, -0x1

    .line 3015
    .local v8, "loggedLsn":J
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v3, :cond_4

    .line 3021
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDiskLimitViolation()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 3026
    :cond_2
    nop

    .line 3027
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v5

    .line 3026
    invoke-virtual {v1, v0, v5, p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->coordinateWithCheckpoint(Lcom/sleepycat/je/dbi/DatabaseImpl;ILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/log/Provisional;

    move-result-object v5

    .line 3029
    .local v5, "provisional":Lcom/sleepycat/je/log/Provisional;
    iget-boolean v6, p0, Lcom/sleepycat/je/evictor/Evictor;->allowBinDeltas:Z

    invoke-virtual {p1, v6, v5, p4, p2}, Lcom/sleepycat/je/tree/IN;->log(ZLcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J

    move-result-wide v8

    .line 3032
    const/4 v4, 0x1

    goto :goto_1

    .line 3022
    .end local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p5}, Lcom/sleepycat/je/evictor/Evictor;->skip(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V

    .line 3023
    return-wide v6

    .line 3035
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getBudgetedMemorySize()J

    move-result-wide v5

    .line 3037
    .local v5, "evictedBytes":J
    invoke-virtual {p2, p3, v4, v8, v9}, Lcom/sleepycat/je/tree/IN;->detachNode(IZJ)V

    .line 3039
    iget-object v7, p0, Lcom/sleepycat/je/evictor/Evictor;->nNodesEvicted:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 3041
    if-eqz v4, :cond_5

    .line 3042
    iget-object v7, p0, Lcom/sleepycat/je/evictor/Evictor;->nDirtyNodesEvicted:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 3045
    :cond_5
    if-eqz p5, :cond_6

    .line 3046
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v7

    invoke-virtual {p5, v7}, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->incNumEvicted(Z)V

    .line 3049
    :cond_6
    return-wide v5
.end method

.method private evictRoot(Lcom/sleepycat/je/evictor/Evictor$RootEvictor;ZLcom/sleepycat/je/evictor/Evictor$EvictionSource;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J
    .locals 10
    .param p1, "rootEvictor"    # Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    .param p2, "backgroundIO"    # Z
    .param p3, "source"    # Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .param p4, "stats"    # Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;

    .line 3058
    iget-object v0, p1, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->rootRef:Lcom/sleepycat/je/tree/ChildReference;

    .line 3059
    .local v0, "rootRef":Lcom/sleepycat/je/tree/ChildReference;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/ChildReference;->getTarget()Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/IN;

    .line 3060
    .local v1, "target":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    .line 3061
    .local v2, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    .line 3062
    .local v3, "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v4

    .line 3064
    .local v4, "inList":Lcom/sleepycat/je/dbi/INList;
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    .line 3065
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v5

    invoke-virtual {v5, v1, p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->flushAndDiscardBINChildren(Lcom/sleepycat/je/tree/IN;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3068
    invoke-direct {p0, v1, p4}, Lcom/sleepycat/je/evictor/Evictor;->skip(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V

    .line 3069
    return-wide v6

    .line 3073
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    .line 3079
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDiskLimitViolation()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 3084
    :cond_1
    nop

    .line 3085
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v5

    .line 3084
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->coordinateWithCheckpoint(Lcom/sleepycat/je/dbi/DatabaseImpl;ILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/log/Provisional;

    move-result-object v5

    .line 3087
    .local v5, "provisional":Lcom/sleepycat/je/log/Provisional;
    invoke-virtual {v1, v8, v5, p2, v6}, Lcom/sleepycat/je/tree/IN;->log(ZLcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J

    move-result-wide v6

    .line 3091
    .local v6, "newLsn":J
    invoke-virtual {v0, v6, v7}, Lcom/sleepycat/je/tree/ChildReference;->setLsn(J)V

    .line 3092
    const/4 v9, 0x1

    iput-boolean v9, p1, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->flushed:Z

    goto :goto_1

    .line 3080
    .end local v5    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .end local v6    # "newLsn":J
    :cond_2
    :goto_0
    invoke-direct {p0, v1, p4}, Lcom/sleepycat/je/evictor/Evictor;->skip(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V

    .line 3081
    return-wide v6

    .line 3095
    :cond_3
    :goto_1
    invoke-virtual {v4, v1}, Lcom/sleepycat/je/dbi/INList;->remove(Lcom/sleepycat/je/tree/IN;)V

    .line 3097
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getBudgetedMemorySize()J

    move-result-wide v5

    .line 3099
    .local v5, "evictBytes":J
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/ChildReference;->clearTarget()V

    .line 3101
    iget-object v7, p0, Lcom/sleepycat/je/evictor/Evictor;->nNodesEvicted:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 3102
    iget-object v7, p0, Lcom/sleepycat/je/evictor/Evictor;->nRootNodesEvicted:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 3104
    iget-boolean v7, p1, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->flushed:Z

    if-eqz v7, :cond_4

    .line 3105
    iget-object v7, p0, Lcom/sleepycat/je/evictor/Evictor;->nDirtyNodesEvicted:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 3108
    :cond_4
    if-eqz p4, :cond_5

    .line 3109
    invoke-virtual {p4, v8}, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->incNumEvicted(Z)V

    .line 3112
    :cond_5
    return-wide v5
.end method

.method private findParentAndRetry(Lcom/sleepycat/je/tree/IN;ZLcom/sleepycat/je/evictor/Evictor$EvictionSource;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J
    .locals 11
    .param p1, "target"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "backgroundIO"    # Z
    .param p3, "source"    # Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .param p4, "stats"    # Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;

    .line 2935
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    .line 2942
    .local v0, "tree":Lcom/sleepycat/je/tree/Tree;
    sget-object v1, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/sleepycat/je/tree/Tree;->getParentINForChildIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/SearchResult;

    move-result-object v1

    .line 2946
    .local v1, "result":Lcom/sleepycat/je/tree/SearchResult;
    iget-boolean v2, v1, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-eqz v2, :cond_0

    .line 2947
    const/4 v4, 0x0

    iget-object v6, v1, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    iget v7, v1, Lcom/sleepycat/je/tree/SearchResult;->index:I

    move-object v3, p0

    move-object v5, p1

    move v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/sleepycat/je/evictor/Evictor;->processTarget(Lcom/sleepycat/je/evictor/Evictor$RootEvictor;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;IZLcom/sleepycat/je/evictor/Evictor$EvictionSource;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J

    move-result-wide v2

    return-wide v2

    .line 2962
    :cond_0
    iget-object v2, v1, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    if-nez v2, :cond_2

    .line 2964
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU()V

    .line 2967
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 2978
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2979
    nop

    .line 2981
    const-wide/16 v2, 0x0

    return-wide v2

    .line 2969
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/dbi/INList;->remove(Lcom/sleepycat/je/tree/IN;)V

    .line 2971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2972
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been detached from the in-memory tree, but it is still in the INList. lastLogged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2975
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getLastLoggedLsn()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2971
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v1    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local p1    # "target":Lcom/sleepycat/je/tree/IN;
    .end local p2    # "backgroundIO":Z
    .end local p3    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .end local p4    # "stats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2978
    .restart local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v1    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local p1    # "target":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "backgroundIO":Z
    .restart local p3    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .restart local p4    # "stats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v2

    .line 2962
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private getINListStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 5
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 3169
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z

    if-eqz v0, :cond_2

    .line 3171
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string/jumbo v1, "temp"

    const-string/jumbo v2, "temp"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3173
    .local v0, "totalINListStats":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getFast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3179
    return-object v0

    .line 3182
    :cond_0
    const/4 v1, 0x0

    .line 3183
    .local v1, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/evictor/Evictor$EnvInfo;>;"
    monitor-enter p0

    .line 3184
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 3185
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3187
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;

    .line 3188
    .local v3, "ei":Lcom/sleepycat/je/evictor/Evictor$EnvInfo;
    iget-object v4, v3, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/INList;->loadStats()Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 3189
    .end local v3    # "ei":Lcom/sleepycat/je/evictor/Evictor$EnvInfo;
    goto :goto_0

    .line 3191
    :cond_1
    return-object v0

    .line 3185
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3193
    .end local v0    # "totalINListStats":Lcom/sleepycat/je/utilint/StatGroup;
    .end local v1    # "copy":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/evictor/Evictor$EnvInfo;>;"
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/INList;->loadStats()Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method private getNextTarget(Z)Lcom/sleepycat/je/tree/IN;
    .locals 2
    .param p1, "inPri1LRUSet"    # Z

    .line 2495
    if-eqz p1, :cond_0

    .line 2496
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nextPri1LRUList:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sleepycat/je/evictor/Evictor;->nextPri1LRUList:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    rem-int/2addr v0, v1

    .line 2497
    .local v0, "listId":I
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->removeFront()Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    .line 2499
    .local v1, "target":Lcom/sleepycat/je/tree/IN;
    nop

    .line 2511
    return-object v1

    .line 2514
    .end local v0    # "listId":I
    .end local v1    # "target":Lcom/sleepycat/je/tree/IN;
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nextPri2LRUList:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sleepycat/je/evictor/Evictor;->nextPri2LRUList:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    rem-int/2addr v0, v1

    .line 2515
    .restart local v0    # "listId":I
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->removeFront()Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    .line 2517
    .restart local v1    # "target":Lcom/sleepycat/je/tree/IN;
    nop

    .line 2528
    return-object v1
.end method

.method private moveToPri2LRU(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V
    .locals 1
    .param p1, "target"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "stats"    # Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;

    .line 2920
    if-eqz p2, :cond_0

    .line 2921
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->incNumMoved(Z)V

    .line 2924
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/evictor/Evictor;->pri2AddFront(Lcom/sleepycat/je/tree/IN;)V

    .line 2926
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nNodesMovedToPri2LRU:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 2927
    return-void
.end method

.method private pri2AddBack(Lcom/sleepycat/je/tree/IN;)V
    .locals 5
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    .line 1918
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1919
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->setInPri2LRU(Z)V

    .line 1922
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v1

    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->addBack(Lcom/sleepycat/je/tree/IN;)V

    .line 1923
    return-void

    .line 1919
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1918
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private pri2AddFront(Lcom/sleepycat/je/tree/IN;)V
    .locals 5
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    .line 1930
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1931
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1933
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->setInPri2LRU(Z)V

    .line 1934
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v1

    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->addFront(Lcom/sleepycat/je/tree/IN;)V

    .line 1935
    return-void

    .line 1931
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1930
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private processTarget(Lcom/sleepycat/je/evictor/Evictor$RootEvictor;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;IZLcom/sleepycat/je/evictor/Evictor$EvictionSource;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J
    .locals 21
    .param p1, "rootEvictor"    # Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    .param p2, "target"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "index"    # I
    .param p5, "bgIO"    # Z
    .param p6, "source"    # Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .param p7, "stats"    # Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2606
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    const/4 v2, 0x0

    .line 2607
    .local v2, "targetIsLatched":Z
    const/4 v3, 0x0

    .line 2608
    .local v3, "parentIsLatched":Z
    const-wide/16 v4, 0x0

    .line 2610
    .local v4, "evictedBytes":J
    const/4 v0, 0x0

    const/4 v6, 0x1

    if-eqz v11, :cond_2

    .line 2611
    if-nez p3, :cond_1

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    move v12, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v12, v6

    :goto_1
    iput-boolean v12, v11, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->withParent:Z

    .line 2615
    :cond_2
    const-wide/16 v12, 0x0

    if-eqz p3, :cond_7

    .line 2616
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2617
    const/4 v3, 0x1

    .line 2619
    invoke-virtual/range {p3 .. p4}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v14

    if-eq v1, v14, :cond_5

    .line 2620
    invoke-direct {v7, v1, v11}, Lcom/sleepycat/je/evictor/Evictor;->skip(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2621
    nop

    .line 2803
    if-eqz v2, :cond_3

    .line 2804
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_3
    if-eqz v3, :cond_4

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2621
    :cond_4
    return-wide v12

    .line 2624
    :cond_5
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU()V

    move-object v14, v1

    move v15, v3

    goto :goto_2

    .line 2616
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "targetIsLatched":Z
    .end local v3    # "parentIsLatched":Z
    .end local v4    # "evictedBytes":J
    .end local p1    # "rootEvictor":Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    .end local p2    # "target":Lcom/sleepycat/je/tree/IN;
    .end local p3    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "index":I
    .end local p5    # "bgIO":Z
    .end local p6    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .end local p7    # "stats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    throw v0

    .line 2626
    .restart local v2    # "targetIsLatched":Z
    .restart local v3    # "parentIsLatched":Z
    .restart local v4    # "evictedBytes":J
    .restart local p1    # "rootEvictor":Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    .restart local p2    # "target":Lcom/sleepycat/je/tree/IN;
    .restart local p3    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "index":I
    .restart local p5    # "bgIO":Z
    .restart local p6    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .restart local p7    # "stats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    :cond_7
    if-eqz v8, :cond_8

    .line 2627
    iget-object v14, v8, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->target:Lcom/sleepycat/je/tree/IN;

    move-object v1, v14

    move v15, v3

    .end local p2    # "target":Lcom/sleepycat/je/tree/IN;
    .local v1, "target":Lcom/sleepycat/je/tree/IN;
    goto :goto_2

    .line 2630
    .end local v1    # "target":Lcom/sleepycat/je/tree/IN;
    .restart local p2    # "target":Lcom/sleepycat/je/tree/IN;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v14, v1

    move v15, v3

    .line 2633
    .end local v3    # "parentIsLatched":Z
    .end local p2    # "target":Lcom/sleepycat/je/tree/IN;
    .local v14, "target":Lcom/sleepycat/je/tree/IN;
    .local v15, "parentIsLatched":Z
    :goto_2
    const/16 v16, 0x1

    .line 2635
    .end local v2    # "targetIsLatched":Z
    .local v16, "targetIsLatched":Z
    :try_start_2
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    move-object/from16 v17, v1

    .line 2636
    .local v17, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    move-object/from16 v18, v1

    .line 2638
    .local v18, "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v7, v14}, Lcom/sleepycat/je/evictor/Evictor;->contains(Lcom/sleepycat/je/tree/IN;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_6

    .line 2654
    :cond_9
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->hasCachedChildrenFlag()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2655
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2656
    invoke-direct {v7, v14, v11}, Lcom/sleepycat/je/evictor/Evictor;->skip(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2657
    nop

    .line 2803
    if-eqz v16, :cond_a

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_a
    if-eqz v15, :cond_b

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2657
    :cond_b
    return-wide v12

    .line 2655
    :cond_c
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v4    # "evictedBytes":J
    .end local v14    # "target":Lcom/sleepycat/je/tree/IN;
    .end local v15    # "parentIsLatched":Z
    .end local v16    # "targetIsLatched":Z
    .end local p1    # "rootEvictor":Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    .end local p3    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "index":I
    .end local p5    # "bgIO":Z
    .end local p6    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .end local p7    # "stats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    throw v0

    .line 2665
    .restart local v4    # "evictedBytes":J
    .restart local v14    # "target":Lcom/sleepycat/je/tree/IN;
    .restart local v15    # "parentIsLatched":Z
    .restart local v16    # "targetIsLatched":Z
    .restart local p1    # "rootEvictor":Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    .restart local p3    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "index":I
    .restart local p5    # "bgIO":Z
    .restart local p6    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .restart local p7    # "stats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    :cond_d
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2666
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    .line 2667
    .local v1, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    sget-object v2, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Lcom/sleepycat/je/dbi/DbTree;->NAME_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 2668
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2669
    :cond_e
    invoke-direct {v7, v14, v11}, Lcom/sleepycat/je/evictor/Evictor;->skip(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2670
    nop

    .line 2803
    if-eqz v16, :cond_f

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_f
    if-eqz v15, :cond_10

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2670
    :cond_10
    return-wide v12

    .line 2679
    .end local v1    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_11
    :try_start_4
    iget-boolean v1, v7, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z

    if-eqz v1, :cond_14

    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isInInit()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->EVICTORTHREAD:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    if-ne v10, v1, :cond_14

    .line 2681
    invoke-direct {v7, v14, v11, v0}, Lcom/sleepycat/je/evictor/Evictor;->putBack(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2682
    nop

    .line 2803
    if-eqz v16, :cond_12

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_12
    if-eqz v15, :cond_13

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2682
    :cond_13
    return-wide v12

    .line 2685
    :cond_14
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isInInit()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->EVICTORTHREAD:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    if-eq v10, v1, :cond_15

    goto :goto_3

    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v4    # "evictedBytes":J
    .end local v14    # "target":Lcom/sleepycat/je/tree/IN;
    .end local v15    # "parentIsLatched":Z
    .end local v16    # "targetIsLatched":Z
    .end local p1    # "rootEvictor":Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    .end local p3    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "index":I
    .end local p5    # "bgIO":Z
    .end local p6    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .end local p7    # "stats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    throw v0

    .line 2688
    .restart local v4    # "evictedBytes":J
    .restart local v14    # "target":Lcom/sleepycat/je/tree/IN;
    .restart local v15    # "parentIsLatched":Z
    .restart local v16    # "targetIsLatched":Z
    .restart local p1    # "rootEvictor":Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    .restart local p3    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "index":I
    .restart local p5    # "bgIO":Z
    .restart local p6    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .restart local p7    # "stats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    :cond_16
    :goto_3
    iget-boolean v1, v7, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z

    if-eqz v1, :cond_1d

    .line 2690
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->wasInvalidated()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_4

    .line 2695
    :cond_17
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->isTreeUsageAboveMinimum()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2696
    invoke-direct {v7, v14, v11, v6}, Lcom/sleepycat/je/evictor/Evictor;->putBack(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2697
    nop

    .line 2803
    if-eqz v16, :cond_18

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_18
    if-eqz v15, :cond_19

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2697
    :cond_19
    return-wide v12

    .line 2691
    :cond_1a
    :goto_4
    :try_start_6
    invoke-direct {v7, v14, v11}, Lcom/sleepycat/je/evictor/Evictor;->skip(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2692
    nop

    .line 2803
    if-eqz v16, :cond_1b

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_1b
    if-eqz v15, :cond_1c

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2692
    :cond_1c
    return-wide v12

    .line 2701
    :cond_1d
    :try_start_7
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2702
    const/4 v0, 0x2

    invoke-direct {v7, v14, v11, v0}, Lcom/sleepycat/je/evictor/Evictor;->putBack(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2703
    nop

    .line 2803
    if-eqz v16, :cond_1e

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_1e
    if-eqz v15, :cond_1f

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2703
    :cond_1f
    return-wide v12

    .line 2714
    :cond_20
    :try_start_8
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->partialEviction()J

    move-result-wide v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2716
    .end local v4    # "evictedBytes":J
    .local v1, "evictedBytes":J
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    and-long/2addr v3, v1

    cmp-long v3, v3, v12

    if-nez v3, :cond_21

    move v0, v6

    .line 2717
    .local v0, "isEvictable":Z
    :cond_21
    const-wide v3, -0x4000000000000001L    # -1.9999999999999998

    and-long v19, v1, v3

    .line 2724
    .end local v1    # "evictedBytes":J
    .local v19, "evictedBytes":J
    cmp-long v1, v19, v12

    if-lez v1, :cond_25

    .line 2725
    :try_start_9
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v1

    if-nez v1, :cond_22

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CACHEMODE:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    if-eq v10, v1, :cond_25

    .line 2726
    :cond_22
    invoke-direct {v7, v14, v11}, Lcom/sleepycat/je/evictor/Evictor;->strippedPutBack(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2727
    nop

    .line 2803
    if-eqz v16, :cond_23

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_23
    if-eqz v15, :cond_24

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2727
    :cond_24
    return-wide v19

    .line 2803
    .end local v0    # "isEvictable":Z
    .end local v17    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v18    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catchall_0
    move-exception v0

    move v3, v15

    move/from16 v2, v16

    move-wide/from16 v4, v19

    goto/16 :goto_7

    .line 2736
    .restart local v0    # "isEvictable":Z
    .restart local v17    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v18    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_25
    if-nez v0, :cond_28

    .line 2737
    const/4 v1, 0x5

    :try_start_a
    invoke-direct {v7, v14, v11, v1}, Lcom/sleepycat/je/evictor/Evictor;->putBack(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2738
    nop

    .line 2803
    if-eqz v16, :cond_26

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_26
    if-eqz v15, :cond_27

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2738
    :cond_27
    return-wide v19

    .line 2746
    :cond_28
    :try_start_b
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CACHEMODE:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    if-eq v10, v1, :cond_2c

    iget-boolean v1, v7, Lcom/sleepycat/je/evictor/Evictor;->mutateBins:Z

    if-eqz v1, :cond_2c

    move-object v1, v14

    check-cast v1, Lcom/sleepycat/je/tree/BIN;

    .line 2749
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->canMutateToBINDelta()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2751
    move-object v1, v14

    check-cast v1, Lcom/sleepycat/je/tree/BIN;

    .line 2752
    .local v1, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->mutateToBINDelta()J

    move-result-wide v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    add-long v4, v19, v2

    .line 2753
    .end local v19    # "evictedBytes":J
    .restart local v4    # "evictedBytes":J
    cmp-long v2, v4, v12

    if-lez v2, :cond_2b

    .line 2754
    :try_start_c
    invoke-direct {v7, v14, v11}, Lcom/sleepycat/je/evictor/Evictor;->binDeltaPutBack(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2756
    nop

    .line 2803
    if-eqz v16, :cond_29

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_29
    if-eqz v15, :cond_2a

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2756
    :cond_2a
    return-wide v4

    .line 2753
    :cond_2b
    :try_start_d
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v4    # "evictedBytes":J
    .end local v14    # "target":Lcom/sleepycat/je/tree/IN;
    .end local v15    # "parentIsLatched":Z
    .end local v16    # "targetIsLatched":Z
    .end local p1    # "rootEvictor":Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    .end local p3    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "index":I
    .end local p5    # "bgIO":Z
    .end local p6    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .end local p7    # "stats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 2763
    .end local v1    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v14    # "target":Lcom/sleepycat/je/tree/IN;
    .restart local v15    # "parentIsLatched":Z
    .restart local v16    # "targetIsLatched":Z
    .restart local v19    # "evictedBytes":J
    .restart local p1    # "rootEvictor":Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    .restart local p3    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "index":I
    .restart local p5    # "bgIO":Z
    .restart local p6    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .restart local p7    # "stats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    :cond_2c
    :try_start_e
    iget-boolean v1, v7, Lcom/sleepycat/je/evictor/Evictor;->useDirtyLRUSet:Z

    if-eqz v1, :cond_2f

    .line 2764
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2765
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->isInPri2LRU()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2767
    invoke-direct {v7, v14, v11}, Lcom/sleepycat/je/evictor/Evictor;->moveToPri2LRU(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2768
    nop

    .line 2803
    if-eqz v16, :cond_2d

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_2d
    if-eqz v15, :cond_2e

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2768
    :cond_2e
    return-wide v19

    .line 2775
    :cond_2f
    :try_start_f
    iget-boolean v1, v7, Lcom/sleepycat/je/evictor/Evictor;->useOffHeapCache:Z

    if-eqz v1, :cond_32

    .line 2776
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->hasOffHeapBINIds()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2777
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->isInPri2LRU()Z

    move-result v1

    if-nez v1, :cond_32

    .line 2779
    invoke-direct {v7, v14, v11}, Lcom/sleepycat/je/evictor/Evictor;->moveToPri2LRU(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2780
    nop

    .line 2803
    if-eqz v16, :cond_30

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_30
    if-eqz v15, :cond_31

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2780
    :cond_31
    return-wide v19

    .line 2787
    :cond_32
    if-eqz v8, :cond_33

    .line 2788
    :try_start_10
    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sleepycat/je/evictor/Evictor;->evictRoot(Lcom/sleepycat/je/evictor/Evictor$RootEvictor;ZLcom/sleepycat/je/evictor/Evictor$EvictionSource;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J

    move-result-wide v1

    add-long v19, v19, v1

    goto :goto_5

    .line 2790
    :cond_33
    if-eqz p3, :cond_34

    .line 2791
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/evictor/Evictor;->evict(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;IZLcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J

    move-result-wide v1

    add-long v19, v19, v1

    goto :goto_5

    .line 2794
    :cond_34
    iget-object v1, v7, Lcom/sleepycat/je/evictor/Evictor;->preEvictINHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v1}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v1, :cond_37

    .line 2795
    const/4 v2, 0x0

    .line 2796
    .end local v16    # "targetIsLatched":Z
    .restart local v2    # "targetIsLatched":Z
    :try_start_11
    invoke-direct {v7, v14, v9, v10, v11}, Lcom/sleepycat/je/evictor/Evictor;->findParentAndRetry(Lcom/sleepycat/je/tree/IN;ZLcom/sleepycat/je/evictor/Evictor$EvictionSource;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J

    move-result-wide v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    add-long v19, v19, v3

    move/from16 v16, v2

    .line 2800
    .end local v2    # "targetIsLatched":Z
    .restart local v16    # "targetIsLatched":Z
    :goto_5
    nop

    .line 2803
    if-eqz v16, :cond_35

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_35
    if-eqz v15, :cond_36

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2800
    :cond_36
    return-wide v19

    .line 2803
    .end local v0    # "isEvictable":Z
    .end local v16    # "targetIsLatched":Z
    .end local v17    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v18    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v2    # "targetIsLatched":Z
    :catchall_1
    move-exception v0

    move v3, v15

    move-wide/from16 v4, v19

    goto :goto_7

    .line 2794
    .end local v2    # "targetIsLatched":Z
    .restart local v0    # "isEvictable":Z
    .restart local v16    # "targetIsLatched":Z
    .restart local v17    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v18    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_37
    :try_start_12
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v14    # "target":Lcom/sleepycat/je/tree/IN;
    .end local v15    # "parentIsLatched":Z
    .end local v16    # "targetIsLatched":Z
    .end local v19    # "evictedBytes":J
    .end local p1    # "rootEvictor":Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    .end local p3    # "parent":Lcom/sleepycat/je/tree/IN;
    .end local p4    # "index":I
    .end local p5    # "bgIO":Z
    .end local p6    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .end local p7    # "stats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 2643
    .end local v0    # "isEvictable":Z
    .restart local v4    # "evictedBytes":J
    .restart local v14    # "target":Lcom/sleepycat/je/tree/IN;
    .restart local v15    # "parentIsLatched":Z
    .restart local v16    # "targetIsLatched":Z
    .restart local p1    # "rootEvictor":Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    .restart local p3    # "parent":Lcom/sleepycat/je/tree/IN;
    .restart local p4    # "index":I
    .restart local p5    # "bgIO":Z
    .restart local p6    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .restart local p7    # "stats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    :cond_38
    :goto_6
    :try_start_13
    invoke-direct {v7, v14, v11}, Lcom/sleepycat/je/evictor/Evictor;->skip(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 2644
    nop

    .line 2803
    if-eqz v16, :cond_39

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_39
    if-eqz v15, :cond_3a

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2644
    :cond_3a
    return-wide v12

    .line 2803
    .end local v17    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v18    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catchall_2
    move-exception v0

    move v3, v15

    move/from16 v2, v16

    goto :goto_7

    .end local v14    # "target":Lcom/sleepycat/je/tree/IN;
    .end local v15    # "parentIsLatched":Z
    .end local v16    # "targetIsLatched":Z
    .restart local v2    # "targetIsLatched":Z
    .restart local v3    # "parentIsLatched":Z
    .restart local p2    # "target":Lcom/sleepycat/je/tree/IN;
    :catchall_3
    move-exception v0

    move-object v14, v1

    .end local p2    # "target":Lcom/sleepycat/je/tree/IN;
    .restart local v14    # "target":Lcom/sleepycat/je/tree/IN;
    :goto_7
    if-eqz v2, :cond_3b

    .line 2804
    invoke-virtual {v14}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2807
    :cond_3b
    if-eqz v3, :cond_3c

    .line 2808
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    :cond_3c
    throw v0
.end method

.method private putBack(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;I)V
    .locals 1
    .param p1, "target"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "stats"    # Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    .param p3, "caller"    # I

    .line 2842
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isInPri2LRU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2843
    invoke-direct {p0, p1}, Lcom/sleepycat/je/evictor/Evictor;->pri2AddBack(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 2845
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/evictor/Evictor;->addBack(Lcom/sleepycat/je/tree/IN;)V

    .line 2848
    :goto_0
    if-eqz p2, :cond_1

    .line 2849
    invoke-virtual {p2}, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->incNumPutBack()V

    .line 2852
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nNodesPutBack:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 2853
    return-void
.end method

.method private skip(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V
    .locals 1
    .param p1, "target"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "stats"    # Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;

    .line 2826
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nNodesSkipped:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 2827
    return-void
.end method

.method private strippedPutBack(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)V
    .locals 1
    .param p1, "target"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "stats"    # Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;

    .line 2868
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isInPri2LRU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2869
    invoke-direct {p0, p1}, Lcom/sleepycat/je/evictor/Evictor;->pri2AddBack(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 2871
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/evictor/Evictor;->addBack(Lcom/sleepycat/je/tree/IN;)V

    .line 2874
    :goto_0
    if-eqz p2, :cond_1

    .line 2875
    invoke-virtual {p2}, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->incNumStripped()V

    .line 2878
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nNodesStripped:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 2879
    return-void
.end method


# virtual methods
.method public addBack(Lcom/sleepycat/je/tree/IN;)V
    .locals 5
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    .line 1889
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor;->isEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/INList;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1891
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1893
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->setInPri2LRU(Z)V

    .line 1894
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v1

    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->addBack(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 1891
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1896
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized addEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 4
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    monitor-enter p0

    .line 1820
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z

    if-eqz v0, :cond_2

    .line 1821
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1822
    .local v0, "numEnvs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1823
    iget-object v2, p0, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;

    .line 1824
    .local v2, "info":Lcom/sleepycat/je/evictor/Evictor$EnvInfo;
    iget-object v3, v2, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 1825
    monitor-exit p0

    return-void

    .line 1822
    .end local v2    # "info":Lcom/sleepycat/je/evictor/Evictor$EnvInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1829
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/sleepycat/je/evictor/Evictor;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;-><init>(Lcom/sleepycat/je/evictor/Evictor$1;)V

    .line 1830
    .local v1, "info":Lcom/sleepycat/je/evictor/Evictor$EnvInfo;
    iput-object p1, v1, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1831
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v2

    iput-object v2, v1, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;->ins:Lcom/sleepycat/je/dbi/INList;

    .line 1832
    iget-object v2, p0, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1833
    nop

    .line 1836
    .end local v0    # "numEnvs":I
    .end local v1    # "info":Lcom/sleepycat/je/evictor/Evictor$EnvInfo;
    monitor-exit p0

    return-void

    .line 1834
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1819
    .end local p1    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addFront(Lcom/sleepycat/je/tree/IN;)V
    .locals 5
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    .line 1904
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor;->isEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/INList;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1906
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1908
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->setInPri2LRU(Z)V

    .line 1909
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v1

    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->addFront(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 1906
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1911
    :cond_1
    :goto_0
    return-void
.end method

.method public alert()V
    .locals 2

    .line 2187
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor;->runEvictorThreads:Z

    if-nez v0, :cond_0

    .line 2188
    return-void

    .line 2196
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isInInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2197
    return-void

    .line 2205
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->activePoolThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/sleepycat/je/evictor/Evictor;->maxPoolThreads:I

    if-lt v0, v1, :cond_2

    .line 2206
    return-void

    .line 2209
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/sleepycat/je/evictor/Evictor$BackgroundEvictTask;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/evictor/Evictor$BackgroundEvictTask;-><init>(Lcom/sleepycat/je/evictor/Evictor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2210
    return-void
.end method

.method public declared-synchronized checkEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Z
    .locals 4
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    monitor-enter p0

    .line 1867
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z

    if-eqz v0, :cond_2

    .line 1868
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1869
    .local v0, "numEnvs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1870
    iget-object v2, p0, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;

    .line 1871
    .local v2, "info":Lcom/sleepycat/je/evictor/Evictor$EnvInfo;
    iget-object v3, v2, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v3, :cond_0

    .line 1872
    monitor-exit p0

    const/4 v3, 0x1

    return v3

    .line 1869
    .end local v2    # "info":Lcom/sleepycat/je/evictor/Evictor$EnvInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1876
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/sleepycat/je/evictor/Evictor;
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1879
    .end local v0    # "numEnvs":I
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1866
    .end local p1    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public contains(Lcom/sleepycat/je/tree/IN;)Z
    .locals 4
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    .line 2004
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2006
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v0

    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 2008
    .local v0, "listId":I
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isInPri2LRU()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2009
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->contains(Lcom/sleepycat/je/tree/IN;)Z

    move-result v1

    return v1

    .line 2011
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->contains(Lcom/sleepycat/je/tree/IN;)Z

    move-result v1

    return v1

    .line 2004
    .end local v0    # "listId":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public doCacheModeEvict(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;)J
    .locals 2
    .param p1, "target"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 2124
    sget-object v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CACHEMODE:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/evictor/Evictor;->doEvictOneIN(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/evictor/Evictor$EvictionSource;)J

    move-result-wide v0

    return-wide v0
.end method

.method public doCriticalEviction(Z)V
    .locals 1
    .param p1, "backgroundIO"    # Z

    .line 2056
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->arbiter:Lcom/sleepycat/je/evictor/Arbiter;

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/Arbiter;->isOverBudget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2062
    invoke-virtual {p0}, Lcom/sleepycat/je/evictor/Evictor;->alert()V

    .line 2069
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->arbiter:Lcom/sleepycat/je/evictor/Arbiter;

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/Arbiter;->needCriticalEviction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2070
    sget-object v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CRITICAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/je/evictor/Evictor;->doEvict(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;Z)V

    .line 2073
    :cond_0
    return-void
.end method

.method public doDaemonEviction(Z)V
    .locals 1
    .param p1, "backgroundIO"    # Z

    .line 2080
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->arbiter:Lcom/sleepycat/je/evictor/Arbiter;

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/Arbiter;->isOverBudget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2086
    invoke-virtual {p0}, Lcom/sleepycat/je/evictor/Evictor;->alert()V

    .line 2095
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->arbiter:Lcom/sleepycat/je/evictor/Arbiter;

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/Arbiter;->needCriticalEviction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2096
    sget-object v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->DAEMON:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/je/evictor/Evictor;->doEvict(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;Z)V

    .line 2099
    :cond_0
    return-void
.end method

.method doEvict(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;Z)V
    .locals 16
    .param p1, "source"    # Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .param p2, "backgroundIO"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2219
    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/sleepycat/je/evictor/Evictor;->isEnabled:Z

    if-nez v0, :cond_0

    .line 2220
    return-void

    .line 2223
    :cond_0
    iget-object v0, v7, Lcom/sleepycat/je/evictor/Evictor;->reentrancyGuard:Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->enter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2224
    return-void

    .line 2227
    :cond_1
    iget-object v0, v7, Lcom/sleepycat/je/evictor/Evictor;->nEvictionRuns:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 2235
    const/4 v0, 0x1

    .line 2236
    .local v0, "progress":Z
    const/4 v1, 0x0

    .line 2237
    .local v1, "nBatches":I
    const-wide/16 v2, 0x0

    .line 2239
    .local v2, "bytesEvicted":J
    const/4 v8, 0x0

    move v9, v1

    move-wide v10, v2

    .line 2247
    .end local v1    # "nBatches":I
    .end local v2    # "bytesEvicted":J
    .local v8, "evictionStats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    .local v9, "nBatches":I
    .local v10, "bytesEvicted":J
    :goto_0
    if-eqz v0, :cond_5

    const/16 v1, 0x64

    if-ge v9, v1, :cond_5

    :try_start_0
    iget-object v1, v7, Lcom/sleepycat/je/evictor/Evictor;->shutdownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2249
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2256
    iget-object v1, v7, Lcom/sleepycat/je/evictor/Evictor;->arbiter:Lcom/sleepycat/je/evictor/Arbiter;

    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Arbiter;->getEvictionPledge()J

    move-result-wide v1

    move-wide v12, v1

    .line 2258
    .local v12, "maxEvictBytes":J
    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-nez v1, :cond_2

    .line 2259
    goto :goto_3

    .line 2262
    :cond_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v4, v12

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/evictor/Evictor;->evictBatch(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;ZJLcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J

    move-result-wide v1

    move-wide v10, v1

    .line 2265
    iget-object v1, v7, Lcom/sleepycat/je/evictor/Evictor;->numBytesEvicted:[Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, v10, v11}, Lcom/sleepycat/je/utilint/AtomicLongStat;->add(J)V

    .line 2267
    cmp-long v1, v10, v14

    if-nez v1, :cond_4

    .line 2269
    iget-object v1, v7, Lcom/sleepycat/je/evictor/Evictor;->arbiter:Lcom/sleepycat/je/evictor/Arbiter;

    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Arbiter;->stillNeedsEviction()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v7, Lcom/sleepycat/je/evictor/Evictor;->numNoEvictionEvents:I

    if-nez v1, :cond_3

    iget-object v1, v7, Lcom/sleepycat/je/evictor/Evictor;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 2271
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2272
    iget v1, v7, Lcom/sleepycat/je/evictor/Evictor;->numNoEvictionEvents:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lcom/sleepycat/je/evictor/Evictor;->numNoEvictionEvents:I

    .line 2273
    iget-object v1, v7, Lcom/sleepycat/je/evictor/Evictor;->logger:Ljava/util/logging/Logger;

    iget-object v2, v7, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "Eviction pass failed to evict any bytes"

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 2277
    :cond_3
    iget v1, v7, Lcom/sleepycat/je/evictor/Evictor;->numNoEvictionEvents:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lcom/sleepycat/je/evictor/Evictor;->numNoEvictionEvents:I

    .line 2280
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 2282
    :cond_4
    const/4 v1, 0x0

    iput v1, v7, Lcom/sleepycat/je/evictor/Evictor;->numNoEvictionEvents:I

    .line 2285
    :goto_2
    nop

    .end local v12    # "maxEvictBytes":J
    add-int/lit8 v9, v9, 0x1

    .line 2286
    goto :goto_0

    .line 2288
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 2289
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2293
    :cond_6
    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->EVICTORTHREAD:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p1

    if-ne v2, v1, :cond_7

    .line 2294
    :try_start_1
    iget-object v1, v7, Lcom/sleepycat/je/evictor/Evictor;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2295
    iget-object v1, v7, Lcom/sleepycat/je/evictor/Evictor;->logger:Ljava/util/logging/Logger;

    iget-object v3, v7, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread evicted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " batches"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 2301
    .end local v0    # "progress":Z
    .end local v8    # "evictionStats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    .end local v9    # "nBatches":I
    .end local v10    # "bytesEvicted":J
    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_7
    :goto_4
    iget-object v0, v7, Lcom/sleepycat/je/evictor/Evictor;->reentrancyGuard:Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->leave()V

    .line 2302
    nop

    .line 2303
    return-void

    .line 2301
    :catchall_1
    move-exception v0

    move-object/from16 v2, p1

    :goto_5
    iget-object v1, v7, Lcom/sleepycat/je/evictor/Evictor;->reentrancyGuard:Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->leave()V

    throw v0
.end method

.method public doManualEvict()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2107
    sget-object v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->MANUAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/evictor/Evictor;->doEvict(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;Z)V

    .line 2108
    return-void
.end method

.method public doTestEvict(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionSource;)J
    .locals 2
    .param p1, "target"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "source"    # Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 2114
    sget-object v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CACHEMODE:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/CacheMode;->EVICT_BIN:Lcom/sleepycat/je/CacheMode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/je/evictor/Evictor;->doEvictOneIN(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/evictor/Evictor$EvictionSource;)J

    move-result-wide v0

    return-wide v0
.end method

.method public envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 5
    .param p1, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p2, "ignore"    # Lcom/sleepycat/je/EnvironmentMutableConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1752
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_CORE_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 1754
    .local v0, "corePoolSize":I
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_MAX_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/evictor/Evictor;->maxPoolThreads:I

    .line 1756
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_KEEP_ALIVE:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    int-to-long v1, v1

    .line 1758
    .local v1, "keepAliveTime":J
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_TERMINATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v3

    iput v3, p0, Lcom/sleepycat/je/evictor/Evictor;->terminateMillis:I

    .line 1760
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_DB_CACHE_CLEAR_COUNT:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v3

    iput v3, p0, Lcom/sleepycat/je/evictor/Evictor;->dbCacheClearCount:I

    .line 1763
    iget-object v3, p0, Lcom/sleepycat/je/evictor/Evictor;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 1764
    iget-object v3, p0, Lcom/sleepycat/je/evictor/Evictor;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget v4, p0, Lcom/sleepycat/je/evictor/Evictor;->maxPoolThreads:I

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 1765
    iget-object v3, p0, Lcom/sleepycat/je/evictor/Evictor;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 1767
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_EVICTOR:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sleepycat/je/evictor/Evictor;->runEvictorThreads:Z

    .line 1769
    return-void
.end method

.method evictBatch(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;ZJLcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J
    .locals 24
    .param p1, "source"    # Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .param p2, "bgIO"    # Z
    .param p3, "maxEvictBytes"    # J
    .param p5, "evictionStats"    # Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2315
    move-object/from16 v9, p0

    move-object/from16 v10, p5

    const-wide/16 v1, 0x0

    .line 2316
    .local v1, "totalEvictedBytes":J
    const/4 v3, 0x1

    .line 2317
    .local v3, "inPri1LRUSet":Z
    const/4 v4, 0x0

    .line 2318
    .local v4, "numNodesScannedThisBatch":I
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/evictor/Evictor;->getPri1LRUSize()J

    move-result-wide v5

    .line 2319
    .local v5, "maxNodesScannedThisBatch":J
    iget v0, v9, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    .line 2321
    iget-object v0, v9, Lcom/sleepycat/je/evictor/Evictor;->evictProfile:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookSetupIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2330
    monitor-enter p0

    .line 2331
    :try_start_0
    iget-boolean v0, v9, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    .line 2332
    iget-object v0, v9, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2333
    .local v0, "numEnvs":I
    if-lez v0, :cond_1

    .line 2334
    iget v7, v9, Lcom/sleepycat/je/evictor/Evictor;->specialEvictionIndex:I

    if-lt v7, v0, :cond_0

    .line 2335
    iput v11, v9, Lcom/sleepycat/je/evictor/Evictor;->specialEvictionIndex:I

    .line 2337
    :cond_0
    iget-object v7, v9, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    iget v8, v9, Lcom/sleepycat/je/evictor/Evictor;->specialEvictionIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;

    .line 2338
    .local v7, "info":Lcom/sleepycat/je/evictor/Evictor$EnvInfo;
    iget v8, v9, Lcom/sleepycat/je/evictor/Evictor;->specialEvictionIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v9, Lcom/sleepycat/je/evictor/Evictor;->specialEvictionIndex:I

    .line 2340
    iget-object v8, v7, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->specialEviction()J

    move-result-wide v12

    move-wide v1, v12

    .line 2342
    .end local v0    # "numEnvs":I
    .end local v7    # "info":Lcom/sleepycat/je/evictor/Evictor$EnvInfo;
    :cond_1
    goto :goto_0

    .line 2343
    :cond_2
    iget-object v0, v9, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->specialEviction()J

    move-result-wide v7

    move-wide v0, v7

    .end local v1    # "totalEvictedBytes":J
    .local v0, "totalEvictedBytes":J
    move-wide v1, v0

    .line 2345
    .end local v0    # "totalEvictedBytes":J
    .restart local v1    # "totalEvictedBytes":J
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2348
    new-instance v0, Lcom/sleepycat/je/evictor/Evictor$DbCache;

    iget-boolean v7, v9, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z

    iget v8, v9, Lcom/sleepycat/je/evictor/Evictor;->dbCacheClearCount:I

    invoke-direct {v0, v7, v8}, Lcom/sleepycat/je/evictor/Evictor$DbCache;-><init>(ZI)V

    move-object v12, v0

    .line 2349
    .local v12, "dbCache":Lcom/sleepycat/je/evictor/Evictor$DbCache;
    iget-object v0, v9, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v13

    move-wide v14, v1

    move v8, v3

    move-wide/from16 v16, v5

    .line 2352
    .end local v1    # "totalEvictedBytes":J
    .end local v3    # "inPri1LRUSet":Z
    .end local v5    # "maxNodesScannedThisBatch":J
    .local v8, "inPri1LRUSet":Z
    .local v13, "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .local v14, "totalEvictedBytes":J
    .local v16, "maxNodesScannedThisBatch":J
    :goto_1
    cmp-long v0, v14, p3

    if-gez v0, :cond_10

    int-to-long v0, v4

    cmp-long v0, v0, v16

    if-gez v0, :cond_10

    :try_start_1
    iget-object v0, v9, Lcom/sleepycat/je/evictor/Evictor;->arbiter:Lcom/sleepycat/je/evictor/Arbiter;

    .line 2354
    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/Arbiter;->stillNeedsEviction()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2356
    iget-boolean v0, v9, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v0, :cond_3

    :try_start_2
    invoke-virtual {v13}, Lcom/sleepycat/je/dbi/MemoryBudget;->isTreeUsageAboveMinimum()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    .line 2357
    move/from16 v23, v8

    goto/16 :goto_9

    .line 2478
    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 2360
    :cond_3
    :try_start_3
    invoke-direct {v9, v8}, Lcom/sleepycat/je/evictor/Evictor;->getNextTarget(Z)Lcom/sleepycat/je/tree/IN;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 2362
    .local v0, "target":Lcom/sleepycat/je/tree/IN;
    add-int/lit8 v7, v4, 0x1

    .line 2364
    .end local v4    # "numNodesScannedThisBatch":I
    .local v7, "numNodesScannedThisBatch":I
    if-eqz v0, :cond_b

    .line 2366
    :try_start_4
    iget-object v1, v9, Lcom/sleepycat/je/evictor/Evictor;->nNodesTargeted:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2368
    if-eqz v10, :cond_4

    .line 2369
    :try_start_5
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->incNumSelected()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 2478
    .end local v0    # "target":Lcom/sleepycat/je/tree/IN;
    :catchall_1
    move-exception v0

    move v4, v7

    goto/16 :goto_8

    .line 2372
    .restart local v0    # "target":Lcom/sleepycat/je/tree/IN;
    :cond_4
    :goto_2
    :try_start_6
    iget-object v1, v9, Lcom/sleepycat/je/evictor/Evictor;->evictProfile:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2374
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    move-object v6, v1

    .line 2375
    .local v6, "targetDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    move-object v5, v1

    .line 2393
    .local v5, "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    nop

    .line 2394
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    invoke-virtual {v12, v5, v1}, Lcom/sleepycat/je/evictor/Evictor$DbCache;->getDb(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    move-object v4, v1

    .line 2396
    .local v4, "refreshedDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v4, :cond_8

    .line 2397
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v1

    if-nez v1, :cond_7

    if-ne v4, v6, :cond_7

    .line 2400
    const-wide/16 v18, 0x0

    .line 2402
    .local v18, "evictedBytes":J
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_6

    .line 2403
    :try_start_7
    new-instance v1, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;

    invoke-direct {v1, v9}, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;-><init>(Lcom/sleepycat/je/evictor/Evictor;)V

    .line 2404
    .local v1, "rootEvictor":Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
    iput-object v0, v1, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->target:Lcom/sleepycat/je/tree/IN;

    .line 2405
    move/from16 v3, p2

    iput-boolean v3, v1, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->backgroundIO:Z

    .line 2406
    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->source:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 2407
    iput-object v10, v1, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->stats:Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;

    .line 2410
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/sleepycat/je/tree/Tree;->withRootLatchedExclusive(Lcom/sleepycat/je/tree/WithRootLatched;)Lcom/sleepycat/je/tree/IN;

    .line 2417
    iget-boolean v11, v1, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->flushed:Z

    if-eqz v11, :cond_5

    .line 2418
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/sleepycat/je/dbi/DbTree;->modifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2421
    :cond_5
    iget-wide v2, v1, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->evictedBytes:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-wide v1, v2

    .line 2423
    .end local v18    # "evictedBytes":J
    .local v1, "evictedBytes":J
    move-object/from16 v21, v4

    move-object v11, v5

    move-object/from16 v20, v6

    move/from16 v22, v7

    move/from16 v23, v8

    goto :goto_3

    .line 2424
    .end local v1    # "evictedBytes":J
    .restart local v18    # "evictedBytes":J
    :cond_6
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/16 v20, -0x1

    move-object/from16 v1, p0

    move-object v3, v0

    move-object/from16 v21, v4

    .end local v4    # "refreshedDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v21, "refreshedDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    move-object v4, v11

    move-object v11, v5

    .end local v5    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v11, "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    move/from16 v5, v20

    move-object/from16 v20, v6

    .end local v6    # "targetDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v20, "targetDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    move/from16 v6, p2

    move/from16 v22, v7

    .end local v7    # "numNodesScannedThisBatch":I
    .local v22, "numNodesScannedThisBatch":I
    move-object/from16 v7, p1

    move/from16 v23, v8

    .end local v8    # "inPri1LRUSet":Z
    .local v23, "inPri1LRUSet":Z
    move-object/from16 v8, p5

    :try_start_8
    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/evictor/Evictor;->processTarget(Lcom/sleepycat/je/evictor/Evictor$RootEvictor;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;IZLcom/sleepycat/je/evictor/Evictor$EvictionSource;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J

    move-result-wide v1

    .line 2431
    .end local v18    # "evictedBytes":J
    .restart local v1    # "evictedBytes":J
    :goto_3
    add-long/2addr v14, v1

    .line 2433
    .end local v1    # "evictedBytes":J
    goto/16 :goto_6

    .line 2397
    .end local v11    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v20    # "targetDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v21    # "refreshedDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v22    # "numNodesScannedThisBatch":I
    .end local v23    # "inPri1LRUSet":Z
    .restart local v4    # "refreshedDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v6    # "targetDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v7    # "numNodesScannedThisBatch":I
    .restart local v8    # "inPri1LRUSet":Z
    :cond_7
    move-object/from16 v21, v4

    move-object v11, v5

    move-object/from16 v20, v6

    move/from16 v22, v7

    move/from16 v23, v8

    .end local v4    # "refreshedDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v6    # "targetDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v7    # "numNodesScannedThisBatch":I
    .end local v8    # "inPri1LRUSet":Z
    .restart local v11    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v20    # "targetDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v21    # "refreshedDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v22    # "numNodesScannedThisBatch":I
    .restart local v23    # "inPri1LRUSet":Z
    goto :goto_4

    .line 2396
    .end local v11    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v20    # "targetDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v21    # "refreshedDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v22    # "numNodesScannedThisBatch":I
    .end local v23    # "inPri1LRUSet":Z
    .restart local v4    # "refreshedDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v6    # "targetDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v7    # "numNodesScannedThisBatch":I
    .restart local v8    # "inPri1LRUSet":Z
    :cond_8
    move-object/from16 v21, v4

    move-object v11, v5

    move-object/from16 v20, v6

    move/from16 v22, v7

    move/from16 v23, v8

    .line 2440
    .end local v4    # "refreshedDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v6    # "targetDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v7    # "numNodesScannedThisBatch":I
    .end local v8    # "inPri1LRUSet":Z
    .restart local v11    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v20    # "targetDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v21    # "refreshedDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v22    # "numNodesScannedThisBatch":I
    .restart local v23    # "inPri1LRUSet":Z
    :goto_4
    invoke-virtual/range {v20 .. v20}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleteFinished()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2441
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IN type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2443
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2444
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not expected on INList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2445
    .local v1, "inInfo":Ljava/lang/String;
    if-nez v21, :cond_9

    move-object v2, v1

    goto :goto_5

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2447
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2448
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rootLsn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2450
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/Tree;->getRootLsn()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    nop

    .line 2453
    .local v2, "errMsg":Ljava/lang/String;
    nop

    .line 2454
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local v12    # "dbCache":Lcom/sleepycat/je/evictor/Evictor$DbCache;
    .end local v13    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v14    # "totalEvictedBytes":J
    .end local v16    # "maxNodesScannedThisBatch":J
    .end local v22    # "numNodesScannedThisBatch":I
    .end local v23    # "inPri1LRUSet":Z
    .end local p1    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .end local p2    # "bgIO":Z
    .end local p3    # "maxEvictBytes":J
    .end local p5    # "evictionStats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    throw v3

    .line 2372
    .end local v1    # "inInfo":Ljava/lang/String;
    .end local v2    # "errMsg":Ljava/lang/String;
    .end local v11    # "dbEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v20    # "targetDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v21    # "refreshedDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v7    # "numNodesScannedThisBatch":I
    .restart local v8    # "inPri1LRUSet":Z
    .restart local v12    # "dbCache":Lcom/sleepycat/je/evictor/Evictor$DbCache;
    .restart local v13    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v14    # "totalEvictedBytes":J
    .restart local v16    # "maxNodesScannedThisBatch":J
    .restart local p1    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .restart local p2    # "bgIO":Z
    .restart local p3    # "maxEvictBytes":J
    .restart local p5    # "evictionStats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    :cond_a
    move/from16 v22, v7

    move/from16 v23, v8

    .end local v7    # "numNodesScannedThisBatch":I
    .end local v8    # "inPri1LRUSet":Z
    .restart local v22    # "numNodesScannedThisBatch":I
    .restart local v23    # "inPri1LRUSet":Z
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v12    # "dbCache":Lcom/sleepycat/je/evictor/Evictor$DbCache;
    .end local v13    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v14    # "totalEvictedBytes":J
    .end local v16    # "maxNodesScannedThisBatch":J
    .end local v22    # "numNodesScannedThisBatch":I
    .end local v23    # "inPri1LRUSet":Z
    .end local p1    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .end local p2    # "bgIO":Z
    .end local p3    # "maxEvictBytes":J
    .end local p5    # "evictionStats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2478
    .end local v0    # "target":Lcom/sleepycat/je/tree/IN;
    .restart local v12    # "dbCache":Lcom/sleepycat/je/evictor/Evictor$DbCache;
    .restart local v13    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .restart local v14    # "totalEvictedBytes":J
    .restart local v16    # "maxNodesScannedThisBatch":J
    .restart local v22    # "numNodesScannedThisBatch":I
    .restart local v23    # "inPri1LRUSet":Z
    .restart local p1    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .restart local p2    # "bgIO":Z
    .restart local p3    # "maxEvictBytes":J
    .restart local p5    # "evictionStats":Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
    :catchall_2
    move-exception v0

    move/from16 v4, v22

    move/from16 v8, v23

    goto :goto_8

    .end local v22    # "numNodesScannedThisBatch":I
    .end local v23    # "inPri1LRUSet":Z
    .restart local v7    # "numNodesScannedThisBatch":I
    .restart local v8    # "inPri1LRUSet":Z
    :catchall_3
    move-exception v0

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v4, v22

    .end local v7    # "numNodesScannedThisBatch":I
    .end local v8    # "inPri1LRUSet":Z
    .restart local v22    # "numNodesScannedThisBatch":I
    .restart local v23    # "inPri1LRUSet":Z
    goto :goto_8

    .line 2364
    .end local v22    # "numNodesScannedThisBatch":I
    .end local v23    # "inPri1LRUSet":Z
    .restart local v0    # "target":Lcom/sleepycat/je/tree/IN;
    .restart local v7    # "numNodesScannedThisBatch":I
    .restart local v8    # "inPri1LRUSet":Z
    :cond_b
    move/from16 v22, v7

    move/from16 v23, v8

    .line 2463
    .end local v7    # "numNodesScannedThisBatch":I
    .end local v8    # "inPri1LRUSet":Z
    .restart local v22    # "numNodesScannedThisBatch":I
    .restart local v23    # "inPri1LRUSet":Z
    :cond_c
    :goto_6
    move/from16 v4, v22

    .end local v22    # "numNodesScannedThisBatch":I
    .local v4, "numNodesScannedThisBatch":I
    int-to-long v1, v4

    cmp-long v1, v1, v16

    if-ltz v1, :cond_e

    cmp-long v1, v14, p3

    if-gez v1, :cond_e

    if-eqz v23, :cond_e

    .line 2467
    const/4 v4, 0x0

    .line 2468
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/evictor/Evictor;->getPri2LRUSize()J

    move-result-wide v1

    move-wide/from16 v16, v1

    .line 2469
    iget v1, v9, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    int-to-long v1, v1

    add-long v16, v16, v1

    .line 2470
    const/4 v8, 0x0

    .line 2472
    .end local v23    # "inPri1LRUSet":Z
    .restart local v8    # "inPri1LRUSet":Z
    if-eqz v10, :cond_d

    .line 2473
    const/4 v1, 0x0

    :try_start_a
    iput-boolean v1, v10, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->inPri1LRU:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .line 2472
    :cond_d
    const/4 v1, 0x0

    goto :goto_7

    .line 2478
    .end local v0    # "target":Lcom/sleepycat/je/tree/IN;
    .end local v8    # "inPri1LRUSet":Z
    .restart local v23    # "inPri1LRUSet":Z
    :catchall_4
    move-exception v0

    move/from16 v8, v23

    goto :goto_8

    .line 2463
    .restart local v0    # "target":Lcom/sleepycat/je/tree/IN;
    :cond_e
    const/4 v1, 0x0

    .line 2476
    .end local v0    # "target":Lcom/sleepycat/je/tree/IN;
    move/from16 v8, v23

    .end local v23    # "inPri1LRUSet":Z
    .restart local v8    # "inPri1LRUSet":Z
    :goto_7
    move v11, v1

    goto/16 :goto_1

    .line 2354
    :cond_f
    move/from16 v23, v8

    .end local v8    # "inPri1LRUSet":Z
    .restart local v23    # "inPri1LRUSet":Z
    goto :goto_9

    .line 2478
    .end local v23    # "inPri1LRUSet":Z
    .restart local v8    # "inPri1LRUSet":Z
    :catchall_5
    move-exception v0

    move/from16 v23, v8

    :goto_8
    iget-object v1, v9, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v12, v1}, Lcom/sleepycat/je/evictor/Evictor$DbCache;->releaseDbs(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    throw v0

    .line 2352
    :cond_10
    move/from16 v23, v8

    .line 2478
    .end local v8    # "inPri1LRUSet":Z
    .restart local v23    # "inPri1LRUSet":Z
    :goto_9
    iget-object v0, v9, Lcom/sleepycat/je/evictor/Evictor;->firstEnvImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v12, v0}, Lcom/sleepycat/je/evictor/Evictor$DbCache;->releaseDbs(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 2479
    nop

    .line 2481
    return-wide v14

    .line 2345
    .end local v12    # "dbCache":Lcom/sleepycat/je/evictor/Evictor$DbCache;
    .end local v13    # "memBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v14    # "totalEvictedBytes":J
    .end local v16    # "maxNodesScannedThisBatch":J
    .end local v23    # "inPri1LRUSet":Z
    .local v1, "totalEvictedBytes":J
    .restart local v3    # "inPri1LRUSet":Z
    .local v5, "maxNodesScannedThisBatch":J
    :catchall_6
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    .line 2321
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getNINCompactKey()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 3245
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nINCompactKey:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public getNINNoTarget()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 3241
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nINNoTarget:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public getNINSparseTarget()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 3237
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nINSparseTarget:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public getPri1LRUList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/IN;",
            ">;"
        }
    .end annotation

    .line 2489
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2490
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->copyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2489
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getPri1LRUSize()J
    .locals 5

    .line 2019
    const-wide/16 v0, 0x0

    .line 2020
    .local v0, "size":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    if-ge v2, v3, :cond_0

    .line 2021
    iget-object v3, p0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->getSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 2020
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2024
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method getPri1LRUStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;)V
    .locals 2
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "stats"    # Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;

    .line 2037
    invoke-virtual {p2}, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->reset()V

    .line 2038
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    if-ge v0, v1, :cond_0

    .line 2039
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->getStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;)V

    .line 2038
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2041
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method getPri2LRUSize()J
    .locals 5

    .line 2028
    const-wide/16 v0, 0x0

    .line 2029
    .local v0, "size":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    if-ge v2, v3, :cond_0

    .line 2030
    iget-object v3, p0, Lcom/sleepycat/je/evictor/Evictor;->pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->getSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 2029
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2033
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method getPri2LRUStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;)V
    .locals 2
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "stats"    # Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;

    .line 2044
    invoke-virtual {p2}, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->reset()V

    .line 2045
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    if-ge v0, v1, :cond_0

    .line 2046
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->getStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;)V

    .line 2045
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2048
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getStatsGroup()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1

    .line 3131
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    return-object v0
.end method

.method public getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 1776
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public getUseDirtyLRUSet()Z
    .locals 1

    .line 2015
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor;->useDirtyLRUSet:Z

    return v0
.end method

.method public incBINFetchStats(ZZ)V
    .locals 1
    .param p1, "isMiss"    # Z
    .param p2, "isDelta"    # Z

    .line 3219
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nBINFetch:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 3220
    if-eqz p1, :cond_0

    .line 3221
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nBINFetchMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 3222
    if-eqz p2, :cond_0

    .line 3223
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nBINDeltaFetchMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 3226
    :cond_0
    return-void
.end method

.method public incBinDeltaBlindOps()V
    .locals 1

    .line 3233
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nBinDeltaBlindOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 3234
    return-void
.end method

.method public incFullBINMissStats()V
    .locals 1

    .line 3229
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nFullBINMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 3230
    return-void
.end method

.method public incLNFetchStats(Z)V
    .locals 1
    .param p1, "isMiss"    # Z

    .line 3205
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nLNFetch:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 3206
    if-eqz p1, :cond_0

    .line 3207
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nLNFetchMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 3209
    :cond_0
    return-void
.end method

.method public incNumLNsEvicted(J)V
    .locals 1
    .param p1, "inc"    # J

    .line 3198
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nLNsEvicted:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 3199
    return-void
.end method

.method public incUINFetchStats(Z)V
    .locals 1
    .param p1, "isMiss"    # Z

    .line 3212
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nUpperINFetch:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 3213
    if-eqz p1, :cond_0

    .line 3214
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nUpperINFetchMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 3216
    :cond_0
    return-void
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 7
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 3139
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z

    if-eqz v0, :cond_0

    .line 3140
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->sharedCacheEnvs:Lcom/sleepycat/je/utilint/IntStat;

    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/IntStat;->set(Ljava/lang/Integer;)V

    .line 3143
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->nBINFetchMiss:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->get()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    .line 3144
    .local v0, "binFetchMisses":F
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->nBINFetch:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/AtomicLongStat;->get()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    .line 3146
    .local v1, "binFetches":F
    iget-object v2, p0, Lcom/sleepycat/je/evictor/Evictor;->binFetchMissRatio:Lcom/sleepycat/je/utilint/FloatStat;

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    div-float v3, v0, v1

    .line 3147
    :cond_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 3146
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/FloatStat;->set(Ljava/lang/Float;)V

    .line 3149
    iget-object v2, p0, Lcom/sleepycat/je/evictor/Evictor;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    .line 3155
    .local v2, "copy":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_IN_SPARSE_TARGET:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/evictor/Evictor;->nINSparseTarget:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 3156
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_IN_NO_TARGET:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/evictor/Evictor;->nINNoTarget:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 3157
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_IN_COMPACT_KEY:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/evictor/Evictor;->nINCompactKey:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 3159
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->PRI1_LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/evictor/Evictor;->getPri1LRUSize()J

    move-result-wide v5

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 3160
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->PRI2_LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/evictor/Evictor;->getPri2LRUSize()J

    move-result-wide v5

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 3162
    invoke-direct {p0, p1}, Lcom/sleepycat/je/evictor/Evictor;->getINListStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 3164
    return-object v2
.end method

.method public moveBack(Lcom/sleepycat/je/tree/IN;)V
    .locals 5
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    .line 1942
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1944
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isInPri2LRU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1945
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v1

    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->moveBack(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v1

    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->moveBack(Lcom/sleepycat/je/tree/IN;)V

    .line 1949
    :goto_0
    return-void

    .line 1942
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public moveFront(Lcom/sleepycat/je/tree/IN;)V
    .locals 5
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    .line 1956
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1958
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isInPri2LRU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v1

    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->moveFront(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 1961
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v1

    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->moveFront(Lcom/sleepycat/je/tree/IN;)V

    .line 1963
    :goto_0
    return-void

    .line 1956
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public moveToPri1LRU(Lcom/sleepycat/je/tree/IN;)V
    .locals 4
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    .line 1987
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1989
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isInPri2LRU()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1990
    return-void

    .line 1993
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v0

    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 1995
    .local v0, "listId":I
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->remove(Lcom/sleepycat/je/tree/IN;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1996
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1997
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/tree/IN;->setInPri2LRU(Z)V

    .line 1998
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->addBack(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 1996
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2000
    :cond_2
    :goto_0
    return-void

    .line 1987
    .end local v0    # "listId":I
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public remove(Lcom/sleepycat/je/tree/IN;)V
    .locals 4
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    .line 1970
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1972
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v0

    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 1974
    .local v0, "listId":I
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isInPri2LRU()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1975
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->remove(Lcom/sleepycat/je/tree/IN;)Z

    goto :goto_0

    .line 1977
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->remove(Lcom/sleepycat/je/tree/IN;)Z

    .line 1979
    :goto_0
    return-void

    .line 1970
    .end local v0    # "listId":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public declared-synchronized removeSharedCacheEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 7
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    monitor-enter p0

    .line 1839
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor;->isShared:Z

    if-eqz v0, :cond_3

    .line 1843
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1844
    .local v0, "numEnvs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1845
    iget-object v2, p0, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;

    .line 1847
    .local v2, "info":Lcom/sleepycat/je/evictor/Evictor$EnvInfo;
    iget-object v3, v2, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_1

    .line 1850
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    :try_start_1
    iget v4, p0, Lcom/sleepycat/je/evictor/Evictor;->numLRULists:I

    if-ge v3, v4, :cond_0

    .line 1851
    iget-object v4, p0, Lcom/sleepycat/je/evictor/Evictor;->pri1LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->removeINsForEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 1852
    iget-object v4, p0, Lcom/sleepycat/je/evictor/Evictor;->pri2LRUSet:[Lcom/sleepycat/je/evictor/Evictor$LRUList;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/sleepycat/je/evictor/Evictor$LRUList;->removeINsForEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1850
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1858
    .end local v3    # "j":I
    .end local p0    # "this":Lcom/sleepycat/je/evictor/Evictor;
    :cond_0
    nop

    .line 1860
    :try_start_2
    iget-object v3, p0, Lcom/sleepycat/je/evictor/Evictor;->envInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1861
    monitor-exit p0

    return-void

    .line 1854
    :catch_0
    move-exception v3

    .line 1855
    .local v3, "e":Ljava/lang/AssertionError;
    :try_start_3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "YYYYYYYYYY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1856
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/lang/AssertionError;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1857
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1844
    .end local v2    # "info":Lcom/sleepycat/je/evictor/Evictor$EnvInfo;
    .end local v3    # "e":Ljava/lang/AssertionError;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1864
    .end local v1    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 1840
    .end local v0    # "numEnvs":I
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1838
    .end local p1    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestShutdown()V
    .locals 2

    .line 1814
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->shutdownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1815
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 1816
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "v"    # Z

    .line 1772
    iput-boolean p1, p0, Lcom/sleepycat/je/evictor/Evictor;->isEnabled:Z

    .line 1773
    return-void
.end method

.method public setEvictProfileHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/tree/IN;",
            ">;)V"
        }
    .end annotation

    .line 3127
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Lcom/sleepycat/je/tree/IN;>;"
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Evictor;->evictProfile:Lcom/sleepycat/je/utilint/TestHook;

    .line 3128
    return-void
.end method

.method public setPreEvictINHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3122
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Evictor;->preEvictINHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 3123
    return-void
.end method

.method public setRunnableHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3117
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->arbiter:Lcom/sleepycat/je/evictor/Arbiter;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/Arbiter;->setRunnableHook(Lcom/sleepycat/je/utilint/TestHook;)V

    .line 3118
    return-void
.end method

.method public shutdown()V
    .locals 5

    .line 1790
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->shutdownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1791
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 1799
    const/4 v0, 0x0

    .line 1801
    .local v0, "shutdownFinished":Z
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor;->terminateMillis:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1802
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 1807
    if-nez v0, :cond_1

    .line 1808
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    goto :goto_1

    .line 1807
    :catchall_0
    move-exception v1

    if-nez v0, :cond_0

    .line 1808
    iget-object v2, p0, Lcom/sleepycat/je/evictor/Evictor;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_0
    throw v1

    .line 1804
    :catch_0
    move-exception v1

    .line 1807
    if-nez v0, :cond_1

    .line 1808
    goto :goto_0

    .line 1811
    :cond_1
    :goto_1
    return-void
.end method
