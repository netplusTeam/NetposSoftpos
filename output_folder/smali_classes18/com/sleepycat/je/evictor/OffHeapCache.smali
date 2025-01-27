.class public Lcom/sleepycat/je/evictor/OffHeapCache;
.super Ljava/lang/Object;
.source "OffHeapCache.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/EnvConfigObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;,
        Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;,
        Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;,
        Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BIN_FLAG_CAN_MUTATE:I = 0x2

.field private static final BIN_FLAG_DELTA:I = 0x1

.field private static final BIN_FLAG_LOGGED_FULL_VERSION:I = 0x8

.field private static final BIN_FLAG_PROHIBIT_NEXT_DELTA:I = 0x4

.field private static final CHECKSUM_SIZE:I = 0x4

.field private static final CHUNK_MEMORY_SIZE:J

.field private static final CHUNK_SIZE:I = 0x19000

.field private static final DEBUG_DOUBLE_FREE:Z = false

.field private static final DEBUG_FREE_BLOCKS_PER_MAP:I = 0x3d090

.field private static final DEBUG_TRACE:Z = false

.field private static final DEBUG_TRACE_AND_LOG:Z = false

.field private static final DEBUG_TRACE_STACK:Z = false

.field private static final MAX_UNUSED_BIN_BYTES:I = 0x64

.field public static final MIN_MAIN_CACHE_OVERHEAD:J = 0x0L

.field private static final VLSN_SIZE:I = 0x8


# instance fields
.field private final activePoolThreads:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final addRemoveEntryMutex:Ljava/lang/Object;

.field private final allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

.field private final cachedBINDeltas:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final cachedBINs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final cachedLNs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

.field private final evictBytes:J

.field private final evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private firstFreeListEntry:I

.field private volatile freedBlocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Ljava/util/logging/Logger;

.field private final lruSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private maxMemory:J

.field private maxPoolThreads:I

.field private memoryLimit:J

.field private final nAllocFailure:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nAllocOverflow:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nBINsLoaded:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nBINsStored:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nCriticalNodesTargeted:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nDirtyNodesEvicted:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nLNsEvicted:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nLNsLoaded:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nLNsStored:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nNodesEvicted:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nNodesMutated:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nNodesSkipped:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nNodesStripped:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nNodesTargeted:Ljava/util/concurrent/atomic/AtomicLong;

.field private final nThreadUnavailable:Ljava/util/concurrent/atomic/AtomicLong;

.field private nextPri1LRUList:I

.field private nextPri2LRUList:I

.field private final numLRULists:I

.field private volatile prevFreedBlocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final pri1LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

.field private final pri2LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

.field private runEvictorThreads:Z

.field private final shutdownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private terminateMillis:I

.field private final totalBlocks:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 266
    nop

    .line 313
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->OBJECT_OVERHEAD:I

    add-int/lit8 v0, v0, 0x10

    .line 316
    const v1, 0x19000

    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->longArraySize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 317
    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->objectArraySize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 318
    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->intArraySize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-long v0, v0

    sput-wide v0, Lcom/sleepycat/je/evictor/OffHeapCache;->CHUNK_MEMORY_SIZE:J

    .line 313
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 17
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 656
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->activePoolThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 616
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->shutdownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 626
    const/4 v0, -0x1

    iput v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->firstFreeListEntry:I

    .line 627
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->addRemoveEntryMutex:Ljava/lang/Object;

    .line 632
    iput v2, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nextPri1LRUList:I

    .line 633
    iput v2, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nextPri2LRUList:I

    .line 635
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nAllocFailure:Ljava/util/concurrent/atomic/AtomicLong;

    .line 636
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nAllocOverflow:Ljava/util/concurrent/atomic/AtomicLong;

    .line 637
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nThreadUnavailable:Ljava/util/concurrent/atomic/AtomicLong;

    .line 638
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nCriticalNodesTargeted:Ljava/util/concurrent/atomic/AtomicLong;

    .line 639
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesTargeted:Ljava/util/concurrent/atomic/AtomicLong;

    .line 640
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    .line 641
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nDirtyNodesEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    .line 642
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesStripped:Ljava/util/concurrent/atomic/AtomicLong;

    .line 643
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesMutated:Ljava/util/concurrent/atomic/AtomicLong;

    .line 644
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesSkipped:Ljava/util/concurrent/atomic/AtomicLong;

    .line 645
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    .line 646
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsLoaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 647
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsStored:Ljava/util/concurrent/atomic/AtomicLong;

    .line 648
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nBINsLoaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 649
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->nBINsStored:Ljava/util/concurrent/atomic/AtomicLong;

    .line 650
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->cachedLNs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 651
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->cachedBINs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 652
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->cachedBINDeltas:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 653
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->totalBlocks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 654
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->lruSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 658
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->logger:Ljava/util/logging/Logger;

    .line 660
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    .line 662
    .local v2, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_OFF_HEAP_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->maxMemory:J

    .line 665
    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    .line 666
    sget-object v0, Lcom/sleepycat/je/evictor/DummyAllocator;->INSTANCE:Lcom/sleepycat/je/evictor/DummyAllocator;

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    goto :goto_0

    .line 669
    :cond_0
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/evictor/OffHeapAllocatorFactory;

    invoke-direct {v0}, Lcom/sleepycat/je/evictor/OffHeapAllocatorFactory;-><init>()V

    .line 671
    .local v0, "factory":Lcom/sleepycat/je/evictor/OffHeapAllocatorFactory;
    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/OffHeapAllocatorFactory;->getDefaultAllocator()Lcom/sleepycat/je/evictor/OffHeapAllocator;

    move-result-object v3

    iput-object v3, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    .end local v0    # "factory":Lcom/sleepycat/je/evictor/OffHeapAllocatorFactory;
    nop

    .line 679
    :goto_0
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_EVICT_BYTES:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->evictBytes:J

    .line 682
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_N_LRU_LISTS:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->numLRULists:I

    .line 685
    iget-object v3, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    iget-wide v4, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->maxMemory:J

    invoke-interface {v3, v4, v5}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->setMaxBytes(J)V

    .line 686
    iget-wide v3, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->maxMemory:J

    iput-wide v3, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->memoryLimit:J

    .line 688
    new-array v3, v0, [Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    iput-object v3, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->pri1LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    .line 689
    new-array v0, v0, [Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->pri2LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    .line 691
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->numLRULists:I

    const/4 v4, 0x0

    if-ge v0, v3, :cond_1

    .line 692
    iget-object v3, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->pri1LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    new-instance v5, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    invoke-direct {v5, v1, v4}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;-><init>(Lcom/sleepycat/je/evictor/OffHeapCache;Lcom/sleepycat/je/evictor/OffHeapCache$1;)V

    aput-object v5, v3, v0

    .line 693
    iget-object v3, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->pri2LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    new-instance v5, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    invoke-direct {v5, v1, v4}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;-><init>(Lcom/sleepycat/je/evictor/OffHeapCache;Lcom/sleepycat/je/evictor/OffHeapCache$1;)V

    aput-object v5, v3, v0

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 700
    .end local v0    # "i":I
    :cond_1
    iput-object v4, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->freedBlocks:Ljava/util/Map;

    .line 701
    iput-object v4, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->prevFreedBlocks:Ljava/util/Map;

    .line 704
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_TERMINATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->terminateMillis:I

    .line 707
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_CORE_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 710
    .local v0, "corePoolSize":I
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_MAX_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v3

    iput v3, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->maxPoolThreads:I

    .line 713
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_KEEP_ALIVE:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v3

    int-to-long v14, v3

    .line 716
    .local v14, "keepAliveTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSharedCache()Z

    move-result v3

    .line 718
    .local v3, "isShared":Z
    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v7, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->maxPoolThreads:I

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v5, 0x1

    invoke-direct {v11, v5}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v12, Lcom/sleepycat/je/utilint/StoppableThreadFactory;

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p1

    :goto_2
    iget-object v5, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->logger:Ljava/util/logging/Logger;

    const-string v6, "JEOffHeapEvictor"

    invoke-direct {v12, v4, v6, v5}, Lcom/sleepycat/je/utilint/StoppableThreadFactory;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/util/logging/Logger;)V

    new-instance v4, Lcom/sleepycat/je/evictor/OffHeapCache$1;

    invoke-direct {v4, v1}, Lcom/sleepycat/je/evictor/OffHeapCache$1;-><init>(Lcom/sleepycat/je/evictor/OffHeapCache;)V

    move-object v5, v13

    move v6, v0

    move-wide v8, v14

    move/from16 v16, v0

    move-object v0, v13

    .end local v0    # "corePoolSize":I
    .local v16, "corePoolSize":I
    move-object v13, v4

    invoke-direct/range {v5 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 732
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_OFFHEAP_EVICTOR:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/sleepycat/je/evictor/OffHeapCache;->runEvictorThreads:Z

    .line 735
    move-object/from16 v4, p1

    invoke-virtual {v4, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 736
    return-void

    .line 672
    .end local v3    # "isShared":Z
    .end local v14    # "keepAliveTime":J
    .end local v16    # "corePoolSize":I
    :catchall_0
    move-exception v0

    move-object/from16 v4, p1

    .line 674
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Unable to create default allocator for off-heap cache"

    invoke-direct {v3, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static synthetic access$000(Lcom/sleepycat/je/evictor/OffHeapCache;)[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/evictor/OffHeapCache;

    .line 266
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/evictor/OffHeapCache;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/evictor/OffHeapCache;

    .line 266
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nThreadUnavailable:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/evictor/OffHeapCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/evictor/OffHeapCache;

    .line 266
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->activePoolThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/evictor/OffHeapCache;Lcom/sleepycat/je/evictor/Evictor$EvictionSource;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/evictor/OffHeapCache;
    .param p1, "x1"    # Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .param p2, "x2"    # Z

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->evictBatch(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;Z)V

    return-void
.end method

.method private addBack(ZLcom/sleepycat/je/tree/IN;J)I
    .locals 3
    .param p1, "pri2"    # Z
    .param p2, "owner"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "memId"    # J

    .line 937
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    invoke-direct {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->allocateEntry()I

    move-result v0

    .line 941
    .local v0, "entry":I
    iget v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->numLRULists:I

    rem-int v1, v0, v1

    .line 942
    .local v1, "lruIdx":I
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->pri2LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    aget-object v2, v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->pri1LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    aget-object v2, v2, v1

    .line 945
    .local v2, "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    :goto_0
    invoke-virtual {v2, v0, p2, p3, p4}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->addBack(ILcom/sleepycat/je/tree/IN;J)V

    .line 947
    return v0

    .line 937
    .end local v0    # "entry":I
    .end local v1    # "lruIdx":I
    .end local v2    # "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private allocateEntry()I
    .locals 10

    .line 988
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->addRemoveEntryMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_0
    iget v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->firstFreeListEntry:I

    const/4 v2, -0x2

    const v3, 0x19000

    if-ltz v1, :cond_0

    .line 992
    nop

    .line 993
    .local v1, "entry":I
    iget-object v4, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    div-int v5, v1, v3

    aget-object v4, v4, v5

    .line 994
    .local v4, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v3, v1, v3

    .line 996
    .local v3, "chunkIdx":I
    iget-object v5, v4, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aget v5, v5, v3

    iput v5, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->firstFreeListEntry:I

    .line 997
    iget-object v5, v4, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aput v2, v5, v3

    .line 999
    iget-object v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->lruSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1001
    monitor-exit v0

    return v1

    .line 1004
    .end local v1    # "entry":I
    .end local v3    # "chunkIdx":I
    .end local v4    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    :cond_0
    new-instance v1, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    invoke-direct {v1}, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;-><init>()V

    .line 1005
    .local v1, "newChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    iget-object v4, v1, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    .line 1006
    .local v4, "next":[I
    iget-object v5, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    array-length v5, v5

    goto :goto_0

    :cond_1
    move v5, v6

    .line 1009
    .local v5, "nOldChunks":I
    :goto_0
    mul-int v7, v5, v3

    .line 1010
    .local v7, "nextFree":I
    add-int/lit8 v8, v7, 0x1

    .line 1011
    .local v7, "entry":I
    .local v8, "nextFree":I
    aput v2, v4, v6

    .line 1014
    const/4 v2, -0x1

    const/4 v9, 0x1

    aput v2, v4, v9

    .line 1025
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 1026
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "nextFree":I
    .local v9, "nextFree":I
    aput v8, v4, v2

    .line 1025
    add-int/lit8 v2, v2, 0x1

    move v8, v9

    goto :goto_1

    .line 1030
    .end local v2    # "i":I
    .end local v9    # "nextFree":I
    .restart local v8    # "nextFree":I
    :cond_2
    iput v8, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->firstFreeListEntry:I

    .line 1032
    add-int/lit8 v2, v5, 0x1

    new-array v2, v2, [Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    .line 1033
    .local v2, "newChunks":[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    if-lez v5, :cond_3

    .line 1034
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    invoke-static {v3, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1036
    :cond_3
    aput-object v1, v2, v5

    .line 1039
    iput-object v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    .line 1041
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->lruSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1046
    monitor-exit v0

    return v7

    .line 1047
    .end local v1    # "newChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v2    # "newChunks":[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v4    # "next":[I
    .end local v5    # "nOldChunks":I
    .end local v7    # "entry":I
    .end local v8    # "nextFree":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private allocateMemory(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)J
    .locals 7
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "size"    # I

    .line 2613
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2614
    const-wide/16 v0, 0x0

    return-wide v0

    .line 2617
    :cond_0
    const-wide/16 v0, 0x0

    .line 2620
    .local v0, "memId":J
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v2, p2}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->allocate(I)J

    move-result-wide v2

    move-wide v0, v2

    .line 2621
    iget-object v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->totalBlocks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/evictor/OffHeapAllocator$OffHeapOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2641
    :catch_0
    move-exception v2

    .line 2643
    .local v2, "e":Lcom/sleepycat/je/evictor/OffHeapAllocator$OffHeapOverflowException;
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nAllocOverflow:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 2645
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v3}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->getUsedBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->memoryLimit:J

    goto :goto_1

    .line 2629
    .end local v2    # "e":Lcom/sleepycat/je/evictor/OffHeapAllocator$OffHeapOverflowException;
    :catch_1
    move-exception v2

    .line 2631
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError trying to allocate in the off-heap cache. Continuing, but more problems are likely. Allocator error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2635
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2631
    invoke-static {v3, p1, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2637
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nAllocFailure:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 2639
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v3}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->getUsedBytes()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->evictBytes:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->memoryLimit:J

    .line 2646
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :goto_0
    nop

    .line 2648
    :goto_1
    invoke-direct {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->needEviction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2649
    invoke-direct {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->wakeUpEvictionThreads()V

    .line 2652
    :cond_1
    return-wide v0
.end method

.method private createBINLogEntry(JILcom/sleepycat/je/tree/IN;Z)Lcom/sleepycat/je/log/entry/INLogEntry;
    .locals 25
    .param p1, "memId"    # J
    .param p3, "entry"    # I
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p5, "preserveBINInCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/sleepycat/je/tree/IN;",
            "Z)",
            "Lcom/sleepycat/je/log/entry/INLogEntry<",
            "Lcom/sleepycat/je/tree/BIN;",
            ">;"
        }
    .end annotation

    .line 2158
    move-object/from16 v0, p0

    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    .line 2160
    .local v1, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-direct/range {p0 .. p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemBytes(J)[B

    move-result-object v2

    .line 2162
    .local v2, "buf":[B
    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->parseBINBytes(Lcom/sleepycat/je/dbi/EnvironmentImpl;[BZZ)Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;

    move-result-object v4

    .line 2165
    .local v4, "pb":Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
    iget v5, v4, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v3

    .line 2166
    .local v5, "isDelta":Z
    :goto_0
    iget v7, v4, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v3

    .line 2172
    .local v7, "canMutateToDelta":Z
    :goto_1
    if-eqz v5, :cond_2

    .line 2173
    new-instance v3, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;

    iget-object v9, v4, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->binBytes:Ljava/nio/ByteBuffer;

    iget-wide v10, v4, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lastFullLsn:J

    iget-wide v12, v4, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lastDeltaLsn:J

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    move-object v8, v3

    move-object/from16 v15, p4

    invoke-direct/range {v8 .. v15}, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;-><init>(Ljava/nio/ByteBuffer;JJLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/IN;)V

    return-object v3

    .line 2191
    :cond_2
    iget v8, v4, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->minExpiration:I

    .line 2192
    invoke-virtual {v1, v8, v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isExpired(IZ)Z

    move-result v8

    .line 2198
    .local v8, "hasExpiredSlot":Z
    if-nez v8, :cond_3

    if-nez v7, :cond_3

    .line 2199
    new-instance v3, Lcom/sleepycat/je/log/entry/INLogEntry;

    iget-object v10, v4, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->binBytes:Ljava/nio/ByteBuffer;

    iget-wide v11, v4, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lastFullLsn:J

    iget-wide v13, v4, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lastDeltaLsn:J

    sget-object v15, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN:Lcom/sleepycat/je/log/LogEntryType;

    move-object v9, v3

    move-object/from16 v16, p4

    invoke-direct/range {v9 .. v16}, Lcom/sleepycat/je/log/entry/INLogEntry;-><init>(Ljava/nio/ByteBuffer;JJLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/IN;)V

    return-object v3

    .line 2208
    :cond_3
    invoke-direct {v0, v4, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->materializeBIN(Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;Z)Lcom/sleepycat/je/tree/BIN;

    move-result-object v9

    .line 2214
    .local v9, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2218
    if-eqz v8, :cond_7

    .line 2219
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v10

    .line 2222
    .local v10, "origNSlots":I
    const/4 v11, 0x0

    invoke-virtual {v9, v3, v11}, Lcom/sleepycat/je/tree/BIN;->compress(ZLcom/sleepycat/je/cleaner/LocalUtilizationTracker;)Z

    .line 2223
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/BIN;->shouldLogDelta()Z

    move-result v3

    .line 2226
    .local v3, "logDelta":Z
    if-nez v3, :cond_4

    .line 2227
    invoke-virtual {v9, v6, v11}, Lcom/sleepycat/je/tree/BIN;->compress(ZLcom/sleepycat/je/cleaner/LocalUtilizationTracker;)Z

    .line 2231
    :cond_4
    if-eqz p5, :cond_6

    invoke-virtual {v9}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v6

    if-eq v10, v6, :cond_6

    .line 2232
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v6

    invoke-virtual {v0, v9, v6}, Lcom/sleepycat/je/evictor/OffHeapCache;->serializeBIN(Lcom/sleepycat/je/tree/BIN;Z)J

    move-result-wide v11

    .line 2233
    .local v11, "newMemId":J
    const-wide/16 v13, 0x0

    cmp-long v6, v11, v13

    if-nez v6, :cond_5

    .line 2238
    new-instance v6, Lcom/sleepycat/je/log/entry/INLogEntry;

    iget-object v14, v4, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->binBytes:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v2    # "buf":[B
    .local v21, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v22, "buf":[B
    iget-wide v1, v4, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lastFullLsn:J

    move/from16 v23, v8

    move-object/from16 v24, v9

    .end local v8    # "hasExpiredSlot":Z
    .end local v9    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v23, "hasExpiredSlot":Z
    .local v24, "bin":Lcom/sleepycat/je/tree/BIN;
    iget-wide v8, v4, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lastDeltaLsn:J

    sget-object v19, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN:Lcom/sleepycat/je/log/LogEntryType;

    move-object v13, v6

    move-wide v15, v1

    move-wide/from16 v17, v8

    move-object/from16 v20, p4

    invoke-direct/range {v13 .. v20}, Lcom/sleepycat/je/log/entry/INLogEntry;-><init>(Ljava/nio/ByteBuffer;JJLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/IN;)V

    return-object v6

    .line 2242
    .end local v21    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v22    # "buf":[B
    .end local v23    # "hasExpiredSlot":Z
    .end local v24    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v2    # "buf":[B
    .restart local v8    # "hasExpiredSlot":Z
    .restart local v9    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_5
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move/from16 v23, v8

    move-object/from16 v24, v9

    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v2    # "buf":[B
    .end local v8    # "hasExpiredSlot":Z
    .end local v9    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v21    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v22    # "buf":[B
    .restart local v23    # "hasExpiredSlot":Z
    .restart local v24    # "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-direct/range {p0 .. p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeMemory(J)I

    .line 2243
    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v11, v12}, Lcom/sleepycat/je/evictor/OffHeapCache;->setOwnerAndMemId(ILcom/sleepycat/je/tree/IN;J)V

    goto :goto_2

    .line 2231
    .end local v11    # "newMemId":J
    .end local v21    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v22    # "buf":[B
    .end local v23    # "hasExpiredSlot":Z
    .end local v24    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v2    # "buf":[B
    .restart local v8    # "hasExpiredSlot":Z
    .restart local v9    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_6
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v1, p3

    move-object/from16 v2, p4

    .line 2245
    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v2    # "buf":[B
    .end local v8    # "hasExpiredSlot":Z
    .end local v9    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v10    # "origNSlots":I
    .restart local v21    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v22    # "buf":[B
    .restart local v23    # "hasExpiredSlot":Z
    .restart local v24    # "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_2
    goto :goto_3

    .line 2246
    .end local v3    # "logDelta":Z
    .end local v21    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v22    # "buf":[B
    .end local v23    # "hasExpiredSlot":Z
    .end local v24    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v2    # "buf":[B
    .restart local v8    # "hasExpiredSlot":Z
    .restart local v9    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_7
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v1, p3

    move-object/from16 v2, p4

    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v2    # "buf":[B
    .end local v8    # "hasExpiredSlot":Z
    .end local v9    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v21    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v22    # "buf":[B
    .restart local v23    # "hasExpiredSlot":Z
    .restart local v24    # "bin":Lcom/sleepycat/je/tree/BIN;
    if-eqz v7, :cond_9

    .line 2247
    const/4 v3, 0x1

    .line 2250
    .restart local v3    # "logDelta":Z
    :goto_3
    if-eqz v3, :cond_8

    new-instance v6, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;

    move-object/from16 v8, v24

    .end local v24    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v8, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-direct {v6, v8}, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;-><init>(Lcom/sleepycat/je/tree/BIN;)V

    goto :goto_4

    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v24    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_8
    move-object/from16 v8, v24

    .end local v24    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    new-instance v6, Lcom/sleepycat/je/log/entry/INLogEntry;

    invoke-direct {v6, v8}, Lcom/sleepycat/je/log/entry/INLogEntry;-><init>(Lcom/sleepycat/je/tree/IN;)V

    :goto_4
    return-object v6

    .line 2246
    .end local v3    # "logDelta":Z
    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v24    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_9
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private debug(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "msg"    # Ljava/lang/String;

    .line 922
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private evictBatch(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;Z)V
    .locals 16
    .param p1, "source"    # Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .param p2, "backgroundIO"    # Z

    .line 2930
    move-object/from16 v6, p0

    iget-wide v0, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->evictBytes:J

    iget-object v2, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    .line 2931
    invoke-interface {v2}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->getUsedBytes()J

    move-result-wide v2

    iget-wide v4, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->memoryLimit:J

    sub-long/2addr v2, v4

    add-long v7, v0, v2

    .line 2933
    .local v7, "maxBytesToEvict":J
    const-wide/16 v0, 0x0

    .line 2935
    .local v0, "bytesEvicted":J
    const/4 v2, 0x0

    .line 2936
    .local v2, "pri2":Z
    iget-object v3, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->pri1LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    invoke-direct {v6, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->getLRUSize([Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;)I

    move-result v3

    .line 2937
    .local v3, "maxLruEntries":I
    const/4 v4, 0x0

    move-wide v9, v0

    .line 2939
    .end local v0    # "bytesEvicted":J
    .local v4, "nLruEntries":I
    .local v9, "bytesEvicted":J
    :goto_0
    cmp-long v0, v9, v7

    if-gez v0, :cond_4

    .line 2940
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->needEviction()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->shutdownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2941
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2943
    if-lt v4, v3, :cond_1

    .line 2944
    if-eqz v2, :cond_0

    .line 2945
    goto/16 :goto_3

    .line 2947
    :cond_0
    const/4 v0, 0x1

    .line 2948
    .end local v2    # "pri2":Z
    .local v0, "pri2":Z
    iget-object v1, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->pri2LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    invoke-direct {v6, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->getLRUSize([Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;)I

    move-result v1

    .line 2949
    .end local v3    # "maxLruEntries":I
    .local v1, "maxLruEntries":I
    const/4 v4, 0x0

    move v11, v0

    move v12, v1

    goto :goto_1

    .line 2943
    .end local v0    # "pri2":Z
    .end local v1    # "maxLruEntries":I
    .restart local v2    # "pri2":Z
    .restart local v3    # "maxLruEntries":I
    :cond_1
    move v11, v2

    move v12, v3

    .line 2954
    .end local v2    # "pri2":Z
    .end local v3    # "maxLruEntries":I
    .local v11, "pri2":Z
    .local v12, "maxLruEntries":I
    :goto_1
    if-eqz v11, :cond_2

    .line 2955
    iget v0, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->nextPri2LRUList:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->nextPri2LRUList:I

    .line 2956
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->numLRULists:I

    rem-int/2addr v0, v1

    .line 2958
    .local v0, "lruIdx":I
    iget-object v1, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->pri2LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    aget-object v0, v1, v0

    .line 2960
    .local v0, "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    move-object v13, v0

    goto :goto_2

    .line 2961
    .end local v0    # "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    :cond_2
    iget v0, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->nextPri1LRUList:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->nextPri1LRUList:I

    .line 2962
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->numLRULists:I

    rem-int/2addr v0, v1

    .line 2964
    .local v0, "lruIdx":I
    iget-object v1, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->pri1LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    aget-object v1, v1, v0

    move-object v13, v1

    .line 2967
    .end local v0    # "lruIdx":I
    .local v13, "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    :goto_2
    invoke-virtual {v13}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->removeFront()I

    move-result v14

    .line 2968
    .local v14, "entry":I
    add-int/lit8 v15, v4, 0x1

    .line 2970
    .end local v4    # "nLruEntries":I
    .local v15, "nLruEntries":I
    if-gez v14, :cond_3

    .line 2971
    move v2, v11

    move v3, v12

    move v4, v15

    goto :goto_0

    .line 2974
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v14

    move-object v4, v13

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->evictOne(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;ZILcom/sleepycat/je/evictor/OffHeapCache$LRUList;Z)J

    move-result-wide v0

    add-long/2addr v9, v0

    .line 2975
    .end local v13    # "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    .end local v14    # "entry":I
    move v2, v11

    move v3, v12

    move v4, v15

    goto :goto_0

    .line 2976
    .end local v11    # "pri2":Z
    .end local v12    # "maxLruEntries":I
    .end local v15    # "nLruEntries":I
    .restart local v2    # "pri2":Z
    .restart local v3    # "maxLruEntries":I
    .restart local v4    # "nLruEntries":I
    :cond_4
    :goto_3
    return-void
.end method

.method private evictOne(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;ZILcom/sleepycat/je/evictor/OffHeapCache$LRUList;Z)J
    .locals 31
    .param p1, "source"    # Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .param p2, "backgroundIO"    # Z
    .param p3, "entry"    # I
    .param p4, "lru"    # Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    .param p5, "pri2"    # Z

    .line 2984
    move-object/from16 v12, p0

    move/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    iget-object v0, v12, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesTargeted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 2986
    sget-object v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CRITICAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    move-object/from16 v11, p1

    if-ne v11, v0, :cond_0

    .line 2987
    iget-object v0, v12, Lcom/sleepycat/je/evictor/OffHeapCache;->nCriticalNodesTargeted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 2990
    :cond_0
    iget-object v0, v12, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    const v1, 0x19000

    div-int v2, v13, v1

    aget-object v10, v0, v2

    .line 2991
    .local v10, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v9, v13, v1

    .line 3002
    .local v9, "chunkIdx":I
    iget-object v0, v10, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v8, v0, v9

    .line 3007
    .local v8, "in":Lcom/sleepycat/je/tree/IN;
    const-wide/16 v16, 0x0

    if-nez v8, :cond_1

    .line 3008
    iget-object v0, v12, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesSkipped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 3009
    return-wide v16

    .line 3012
    :cond_1
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    .line 3014
    .local v7, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU()V

    .line 3020
    :try_start_0
    iget-object v0, v10, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v0, v0, v9

    if-ne v8, v0, :cond_10

    .line 3021
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v2, v7

    move-object v11, v8

    move/from16 v27, v9

    move-object/from16 v28, v10

    goto/16 :goto_3

    .line 3030
    :cond_2
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v0, :cond_5

    .line 3031
    :try_start_1
    move-object v0, v8

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    .line 3036
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLruId()I

    move-result v1

    if-eq v1, v13, :cond_3

    .line 3037
    iget-object v1, v12, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesSkipped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3038
    nop

    .line 3156
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3038
    return-wide v16

    .line 3047
    :cond_3
    :try_start_2
    invoke-virtual {v14, v10, v9}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->contains(Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3048
    iget-object v1, v12, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesSkipped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3049
    nop

    .line 3156
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3049
    return-wide v16

    .line 3052
    :cond_4
    :try_start_3
    invoke-direct {v12, v0, v13, v15}, Lcom/sleepycat/je/evictor/OffHeapCache;->stripLNsFromMainBIN(Lcom/sleepycat/je/tree/BIN;IZ)J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3156
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3052
    return-wide v1

    .line 3156
    .end local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    :catchall_0
    move-exception v0

    move-object v2, v7

    move-object v11, v8

    move/from16 v27, v9

    move-object/from16 v28, v10

    goto/16 :goto_4

    .line 3058
    :cond_5
    const/4 v0, -0x1

    .line 3059
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_4
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-ge v1, v2, :cond_7

    .line 3060
    :try_start_5
    invoke-virtual {v8, v1}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v2

    if-ne v2, v13, :cond_6

    .line 3061
    move v0, v1

    .line 3062
    goto :goto_1

    .line 3059
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3069
    .end local v1    # "i":I
    :cond_7
    :goto_1
    if-gez v0, :cond_8

    .line 3070
    iget-object v1, v12, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesSkipped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3071
    nop

    .line 3156
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3071
    return-wide v16

    .line 3079
    :cond_8
    :try_start_6
    invoke-virtual {v8, v0}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINPri2(I)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    if-eq v15, v1, :cond_9

    .line 3080
    :try_start_7
    iget-object v1, v12, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesSkipped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3081
    nop

    .line 3156
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3081
    return-wide v16

    .line 3090
    :cond_9
    :try_start_8
    invoke-virtual {v14, v10, v9}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->contains(Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-eqz v1, :cond_a

    .line 3091
    :try_start_9
    iget-object v1, v12, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesSkipped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3092
    nop

    .line 3156
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3092
    return-wide v16

    .line 3098
    :cond_a
    :try_start_a
    invoke-virtual {v8, v0}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/BIN;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-object/from16 v18, v1

    .line 3099
    .local v18, "residentBIN":Lcom/sleepycat/je/tree/BIN;
    if-nez v18, :cond_f

    .line 3105
    :try_start_b
    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->useOffHeapChecksums()Z

    move-result v1

    move/from16 v19, v1

    .line 3106
    .local v19, "useChecksums":Z
    if-eqz v19, :cond_b

    const/4 v1, 0x4

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    :goto_2
    move v5, v1

    .line 3108
    .local v5, "checksumSize":I
    iget-object v1, v10, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->memIds:[J

    aget-wide v1, v1, v9

    move-wide v3, v1

    .line 3109
    .local v3, "memId":J
    const/4 v6, 0x1

    new-array v1, v6, [B

    invoke-direct {v12, v3, v4, v5, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->getByte(JI[B)B

    move-result v1

    move/from16 v20, v1

    .line 3110
    .local v20, "flags":I
    invoke-virtual {v8, v0}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINDirty(I)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move/from16 v21, v1

    .line 3115
    .local v21, "dirty":Z
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-wide/from16 v22, v3

    .end local v3    # "memId":J
    .local v22, "memId":J
    move/from16 v3, p5

    move/from16 v4, v21

    move/from16 v24, v5

    move v14, v6

    .end local v5    # "checksumSize":I
    .local v24, "checksumSize":I
    move-wide/from16 v5, v22

    move-object/from16 v25, v7

    .end local v7    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v25, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    move-object v7, v10

    move-object/from16 v26, v8

    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .local v26, "in":Lcom/sleepycat/je/tree/IN;
    move v8, v9

    move/from16 v27, v9

    .end local v9    # "chunkIdx":I
    .local v27, "chunkIdx":I
    move-object/from16 v9, v26

    move-object/from16 v28, v10

    .end local v10    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .local v28, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    move v10, v0

    move/from16 v11, p2

    :try_start_c
    invoke-direct/range {v1 .. v11}, Lcom/sleepycat/je/evictor/OffHeapCache;->stripLNs(IZZJLcom/sleepycat/je/evictor/OffHeapCache$Chunk;ILcom/sleepycat/je/tree/IN;IZ)J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-wide/from16 v29, v1

    .line 3119
    .local v29, "nLNBytesEvicted":J
    cmp-long v1, v29, v16

    if-lez v1, :cond_c

    .line 3120
    nop

    .line 3156
    invoke-virtual/range {v26 .. v26}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3120
    return-wide v29

    .line 3126
    :cond_c
    and-int/lit8 v1, v20, 0x2

    if-eqz v1, :cond_d

    .line 3128
    nop

    .line 3129
    :try_start_d
    invoke-virtual/range {v26 .. v26}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    .line 3128
    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move/from16 v4, p3

    move/from16 v5, p5

    move-object/from16 v6, v28

    move/from16 v7, v27

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/evictor/OffHeapCache;->mutateToBINDelta(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;IZLcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 3132
    .local v1, "nBytesEvicted":J
    cmp-long v3, v1, v16

    if-lez v3, :cond_d

    .line 3133
    nop

    .line 3156
    invoke-virtual/range {v26 .. v26}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3133
    return-wide v1

    .line 3156
    .end local v0    # "index":I
    .end local v1    # "nBytesEvicted":J
    .end local v18    # "residentBIN":Lcom/sleepycat/je/tree/BIN;
    .end local v19    # "useChecksums":Z
    .end local v20    # "flags":I
    .end local v21    # "dirty":Z
    .end local v22    # "memId":J
    .end local v24    # "checksumSize":I
    .end local v29    # "nLNBytesEvicted":J
    :catchall_1
    move-exception v0

    move-object/from16 v2, v25

    move-object/from16 v11, v26

    goto/16 :goto_4

    .line 3141
    .restart local v0    # "index":I
    .restart local v18    # "residentBIN":Lcom/sleepycat/je/tree/BIN;
    .restart local v19    # "useChecksums":Z
    .restart local v20    # "flags":I
    .restart local v21    # "dirty":Z
    .restart local v22    # "memId":J
    .restart local v24    # "checksumSize":I
    .restart local v29    # "nLNBytesEvicted":J
    :cond_d
    if-nez v15, :cond_e

    if-eqz v21, :cond_e

    .line 3142
    :try_start_e
    invoke-virtual {v12, v13, v14}, Lcom/sleepycat/je/evictor/OffHeapCache;->moveBack(IZ)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 3143
    move-object/from16 v11, v26

    .end local v26    # "in":Lcom/sleepycat/je/tree/IN;
    .local v11, "in":Lcom/sleepycat/je/tree/IN;
    :try_start_f
    invoke-virtual {v11, v0, v13, v14, v14}, Lcom/sleepycat/je/tree/IN;->setOffHeapBINId(IIZZ)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 3145
    nop

    .line 3156
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3145
    return-wide v16

    .line 3141
    .end local v11    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v26    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_e
    move-object/from16 v11, v26

    .line 3151
    .end local v26    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v11    # "in":Lcom/sleepycat/je/tree/IN;
    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, v21

    move-wide/from16 v5, v22

    move-object v7, v11

    move v8, v0

    move/from16 v9, p2

    :try_start_10
    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/evictor/OffHeapCache;->flushAndDiscardBIN(IZZJLcom/sleepycat/je/tree/IN;IZZ)J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 3156
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3151
    return-wide v1

    .line 3156
    .end local v0    # "index":I
    .end local v18    # "residentBIN":Lcom/sleepycat/je/tree/BIN;
    .end local v19    # "useChecksums":Z
    .end local v20    # "flags":I
    .end local v21    # "dirty":Z
    .end local v22    # "memId":J
    .end local v24    # "checksumSize":I
    .end local v29    # "nLNBytesEvicted":J
    :catchall_2
    move-exception v0

    move-object/from16 v2, v25

    goto :goto_4

    .end local v11    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v26    # "in":Lcom/sleepycat/je/tree/IN;
    :catchall_3
    move-exception v0

    move-object/from16 v11, v26

    move-object/from16 v2, v25

    .end local v26    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v11    # "in":Lcom/sleepycat/je/tree/IN;
    goto :goto_4

    .end local v11    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v25    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v27    # "chunkIdx":I
    .end local v28    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local v7    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "chunkIdx":I
    .restart local v10    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    :catchall_4
    move-exception v0

    move-object v11, v8

    move/from16 v27, v9

    move-object/from16 v28, v10

    move-object v2, v7

    .end local v7    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "chunkIdx":I
    .end local v10    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local v11    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v25    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v27    # "chunkIdx":I
    .restart local v28    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    goto :goto_4

    .line 3100
    .end local v11    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v25    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v27    # "chunkIdx":I
    .end local v28    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local v0    # "index":I
    .restart local v7    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "chunkIdx":I
    .restart local v10    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local v18    # "residentBIN":Lcom/sleepycat/je/tree/BIN;
    :cond_f
    move-object/from16 v25, v7

    move-object v11, v8

    move/from16 v27, v9

    move-object/from16 v28, v10

    .end local v7    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "chunkIdx":I
    .end local v10    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local v11    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v25    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v27    # "chunkIdx":I
    .restart local v28    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BIN is resident in both caches, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3102
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 3100
    move-object/from16 v2, v25

    .end local v25    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v2, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_12
    invoke-static {v2, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v11    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v27    # "chunkIdx":I
    .end local v28    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local p1    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .end local p2    # "backgroundIO":Z
    .end local p3    # "entry":I
    .end local p4    # "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    .end local p5    # "pri2":Z
    throw v1

    .line 3156
    .end local v0    # "index":I
    .end local v18    # "residentBIN":Lcom/sleepycat/je/tree/BIN;
    .restart local v11    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v25    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v27    # "chunkIdx":I
    .restart local v28    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local p1    # "source":Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .restart local p2    # "backgroundIO":Z
    .restart local p3    # "entry":I
    .restart local p4    # "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    .restart local p5    # "pri2":Z
    :catchall_5
    move-exception v0

    move-object/from16 v2, v25

    .end local v25    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    goto :goto_4

    .line 3020
    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v11    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v27    # "chunkIdx":I
    .end local v28    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local v7    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "chunkIdx":I
    .restart local v10    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    :cond_10
    move-object v2, v7

    move-object v11, v8

    move/from16 v27, v9

    move-object/from16 v28, v10

    .line 3022
    .end local v7    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "chunkIdx":I
    .end local v10    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v11    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v27    # "chunkIdx":I
    .restart local v28    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    :goto_3
    iget-object v0, v12, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesSkipped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 3023
    nop

    .line 3156
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 3023
    return-wide v16

    .line 3156
    :catchall_6
    move-exception v0

    goto :goto_4

    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v11    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v27    # "chunkIdx":I
    .end local v28    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local v7    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "chunkIdx":I
    .restart local v10    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    :catchall_7
    move-exception v0

    move-object v2, v7

    move-object v11, v8

    move/from16 v27, v9

    move-object/from16 v28, v10

    .end local v7    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v9    # "chunkIdx":I
    .end local v10    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v11    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v27    # "chunkIdx":I
    .restart local v28    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    :goto_4
    invoke-virtual {v11}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v0
.end method

.method private findBINIfLsnMatches(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJ)Lcom/sleepycat/je/utilint/Pair;
    .locals 7
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "entry"    # I
    .param p3, "lsn"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            "IJ)",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Lcom/sleepycat/je/tree/IN;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1766
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    const v1, 0x19000

    div-int v2, p2, v1

    aget-object v0, v0, v2

    .line 1767
    .local v0, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v1, p2, v1

    .line 1768
    .local v1, "chunkIdx":I
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v2, v2, v1

    .line 1770
    .local v2, "in":Lcom/sleepycat/je/tree/IN;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1771
    return-object v3

    .line 1778
    :cond_0
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU()V

    .line 1780
    iget-object v4, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v4, v4, v1

    if-ne v2, v4, :cond_6

    .line 1781
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1782
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    if-ne v4, p1, :cond_6

    .line 1783
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 1789
    :cond_1
    const/4 v4, -0x1

    .line 1790
    .local v4, "index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1791
    invoke-virtual {v2, v5}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v6

    if-ne v6, p2, :cond_2

    .line 1792
    move v4, v5

    .line 1793
    goto :goto_1

    .line 1790
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1797
    .end local v5    # "i":I
    :cond_3
    :goto_1
    if-gez v4, :cond_4

    .line 1798
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1799
    return-object v3

    .line 1802
    :cond_4
    invoke-virtual {v2, v4}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v5

    cmp-long v5, v5, p3

    if-eqz v5, :cond_5

    .line 1803
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1804
    return-object v3

    .line 1807
    :cond_5
    new-instance v3, Lcom/sleepycat/je/utilint/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 1785
    .end local v4    # "index":I
    :cond_6
    :goto_2
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1786
    return-object v3
.end method

.method private flushAndDiscardBIN(IZZJLcom/sleepycat/je/tree/IN;IZZ)J
    .locals 16
    .param p1, "entry"    # I
    .param p2, "pri2"    # Z
    .param p3, "dirty"    # Z
    .param p4, "memId"    # J
    .param p6, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p7, "index"    # I
    .param p8, "backgroundIO"    # Z
    .param p9, "freeLNs"    # Z

    .line 3505
    move-object/from16 v6, p0

    move-object/from16 v14, p6

    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3507
    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v15

    .line 3517
    .local v15, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-eqz p3, :cond_2

    .line 3523
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3524
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDiskLimitViolation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move/from16 v2, p8

    goto :goto_0

    .line 3529
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move/from16 v3, p1

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->createBINLogEntry(JILcom/sleepycat/je/tree/IN;Z)Lcom/sleepycat/je/log/entry/INLogEntry;

    move-result-object v0

    .line 3532
    .local v0, "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<Lcom/sleepycat/je/tree/BIN;>;"
    nop

    .line 3534
    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    const v2, 0x10001

    .line 3533
    invoke-virtual {v15, v1, v2, v14}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->coordinateWithCheckpoint(Lcom/sleepycat/je/dbi/DatabaseImpl;ILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/log/Provisional;

    move-result-object v1

    .line 3536
    .local v1, "provisional":Lcom/sleepycat/je/log/Provisional;
    move/from16 v2, p8

    invoke-static {v0, v1, v2, v14}, Lcom/sleepycat/je/tree/IN;->logEntry(Lcom/sleepycat/je/log/entry/INLogEntry;Lcom/sleepycat/je/log/Provisional;ZLcom/sleepycat/je/tree/IN;)J

    move-result-wide v3

    .line 3539
    .local v3, "lsn":J
    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-wide v9, v3

    invoke-virtual/range {v7 .. v13}, Lcom/sleepycat/je/tree/IN;->updateEntry(IJJI)V

    .line 3542
    iget-object v5, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->nDirtyNodesEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 3544
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/INLogEntry;->isPreSerialized()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3545
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/INLogEntry;->getMainItem()Lcom/sleepycat/je/tree/IN;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    goto :goto_1

    .line 3523
    .end local v0    # "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<Lcom/sleepycat/je/tree/BIN;>;"
    .end local v1    # "provisional":Lcom/sleepycat/je/log/Provisional;
    .end local v3    # "lsn":J
    :cond_1
    move/from16 v2, p8

    .line 3525
    :goto_0
    iget-object v0, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesSkipped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 3526
    const-wide/16 v0, 0x0

    return-wide v0

    .line 3517
    :cond_2
    move/from16 v2, p8

    .line 3549
    :cond_3
    :goto_1
    iget-object v0, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 3550
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/IN;->clearOffHeapBINId(I)V

    .line 3551
    invoke-direct/range {p0 .. p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->remove(IZ)V

    .line 3552
    move-wide/from16 v0, p4

    move/from16 v3, p9

    invoke-direct {v6, v15, v0, v1, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;JZ)J

    move-result-wide v4

    return-wide v4

    .line 3505
    .end local v15    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_4
    move-wide/from16 v0, p4

    move/from16 v2, p8

    move/from16 v3, p9

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private freeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;JZ)J
    .locals 10
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "memId"    # J
    .param p4, "freeLNs"    # Z

    .line 1907
    const-wide/16 v0, 0x0

    .line 1910
    .local v0, "size":J
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_2

    .line 1911
    nop

    .line 1912
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemBytes(J)[B

    move-result-object v4

    .line 1911
    invoke-direct {p0, p1, v4, v2, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->parseBINBytes(Lcom/sleepycat/je/dbi/EnvironmentImpl;[BZZ)Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;

    move-result-object v3

    .line 1915
    .local v3, "pb":Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
    iget-object v4, v3, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lnMemIds:[J

    if-eqz v4, :cond_1

    .line 1916
    iget-object v4, v3, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lnMemIds:[J

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_1

    aget-wide v6, v4, v2

    .line 1917
    .local v6, "lnMemId":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_0

    .line 1918
    goto :goto_1

    .line 1920
    :cond_0
    invoke-direct {p0, v6, v7}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeLN(J)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v0, v8

    .line 1916
    .end local v6    # "lnMemId":J
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1924
    :cond_1
    iget v2, v3, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->flags:I

    .line 1925
    .end local v3    # "pb":Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
    .local v2, "flags":I
    goto :goto_2

    .line 1926
    .end local v2    # "flags":I
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->useOffHeapChecksums()Z

    move-result v4

    .line 1927
    .local v4, "useChecksums":Z
    if-eqz v4, :cond_3

    const/4 v2, 0x4

    .line 1928
    .local v2, "checksumSize":I
    :cond_3
    new-array v3, v3, [B

    invoke-direct {p0, p2, p3, v2, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->getByte(JI[B)B

    move-result v3

    move v2, v3

    .line 1931
    .end local v4    # "useChecksums":Z
    .local v2, "flags":I
    :goto_2
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->cachedBINs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1932
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_4

    .line 1933
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->cachedBINDeltas:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1936
    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeMemory(J)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v0

    return-wide v3
.end method

.method private freeEntry(I)V
    .locals 5
    .param p1, "entry"    # I

    .line 1055
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    const v1, 0x19000

    div-int v2, p1, v1

    aget-object v0, v0, v2

    .line 1056
    .local v0, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v1, p1, v1

    .line 1058
    .local v1, "chunkIdx":I
    iget-object v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->addRemoveEntryMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1060
    :try_start_0
    iget-object v3, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v3, v3, v1

    if-nez v3, :cond_0

    .line 1061
    monitor-exit v2

    return-void

    .line 1064
    :cond_0
    iget-object v3, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 1065
    iget-object v3, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    iget v4, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->firstFreeListEntry:I

    aput v4, v3, v1

    .line 1066
    iput p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->firstFreeListEntry:I

    .line 1068
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->lruSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1069
    monitor-exit v2

    .line 1070
    return-void

    .line 1069
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private freeLN(J)I
    .locals 1
    .param p1, "memId"    # J

    .line 1379
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->cachedLNs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1380
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeMemory(J)I

    move-result v0

    return v0
.end method

.method private freeMemory(J)I
    .locals 1
    .param p1, "memId"    # J

    .line 2704
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->totalBlocks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2705
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v0, p1, p2}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->free(J)I

    move-result v0

    return v0
.end method

.method private getByte(JI[B)B
    .locals 7
    .param p1, "memId"    # J
    .param p3, "offset"    # I
    .param p4, "tempBuf"    # [B

    .line 2718
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy(JI[BII)V

    .line 2719
    const/4 v0, 0x0

    aget-byte v0, p4, v0

    return v0
.end method

.method private getInt(JI[B)I
    .locals 7
    .param p1, "memId"    # J
    .param p3, "offset"    # I
    .param p4, "tempBuf"    # [B

    .line 2748
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy(JI[BII)V

    .line 2749
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->getInt([BI)I

    move-result v0

    return v0
.end method

.method private static getInt([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .line 2792
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private getLRUSize([Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;)I
    .locals 5
    .param p1, "listSet"    # [Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    .line 2920
    const/4 v0, 0x0

    .line 2921
    .local v0, "size":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 2922
    .local v3, "l":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    invoke-virtual {v3}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->getSize()I

    move-result v4

    add-int/2addr v0, v4

    .line 2921
    .end local v3    # "l":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2924
    :cond_0
    return v0
.end method

.method private getLong(JI[B)J
    .locals 7
    .param p1, "memId"    # J
    .param p3, "offset"    # I
    .param p4, "tempBuf"    # [B

    .line 2763
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy(JI[BII)V

    .line 2764
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLong([BI)J
    .locals 7
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .line 2814
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v6, 0x30

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x28

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x18

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private getMemBytes(J)[B
    .locals 8
    .param p1, "memId"    # J

    .line 2710
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v0, p1, p2}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->size(J)I

    move-result v0

    new-array v0, v0, [B

    .line 2711
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    array-length v7, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-wide v2, p1

    move-object v5, v0

    invoke-interface/range {v1 .. v7}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy(JI[BII)V

    .line 2712
    return-object v0
.end method

.method private getMinExpiration(Lcom/sleepycat/je/tree/BIN;)I
    .locals 3
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 2448
    const/4 v0, 0x0

    .line 2450
    .local v0, "minExpire":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2451
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v2

    .line 2452
    .local v2, "expire":I
    if-nez v2, :cond_0

    .line 2453
    goto :goto_1

    .line 2455
    :cond_0
    if-gt v0, v2, :cond_1

    if-nez v0, :cond_2

    .line 2456
    :cond_1
    move v0, v2

    .line 2450
    .end local v2    # "expire":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2460
    .end local v1    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 2461
    const/4 v1, 0x0

    return v1

    .line 2464
    :cond_4
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    mul-int/lit8 v1, v0, 0x18

    :goto_2
    return v1
.end method

.method private getOwner(I)Lcom/sleepycat/je/tree/IN;
    .locals 3
    .param p1, "entry"    # I

    .line 1082
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    const v1, 0x19000

    div-int v2, p1, v1

    aget-object v0, v0, v2

    .line 1083
    .local v0, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v1, p1, v1

    .line 1085
    .local v1, "chunkIdx":I
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v2, v2, v1

    return-object v2
.end method

.method private static getPackedLnMemIdSize(Lcom/sleepycat/je/tree/BIN;)S
    .locals 7
    .param p0, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 2519
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->hasOffHeapLNs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2520
    const/4 v0, 0x0

    return v0

    .line 2523
    :cond_0
    const/4 v0, 0x1

    .line 2524
    .local v0, "off":I
    const/4 v1, 0x0

    .line 2526
    .local v1, "n":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 2528
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 2530
    if-ltz v1, :cond_1

    const/16 v3, 0x7f

    if-ne v1, v3, :cond_2

    .line 2531
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 2532
    const/4 v1, 0x0

    .line 2535
    :cond_2
    add-int/lit8 v0, v0, 0x8

    .line 2536
    add-int/lit8 v3, v1, 0x1

    int-to-byte v1, v3

    goto :goto_1

    .line 2540
    :cond_3
    if-gtz v1, :cond_4

    const/16 v3, -0x7f

    if-ne v1, v3, :cond_5

    .line 2541
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 2542
    const/4 v1, 0x0

    .line 2545
    :cond_5
    add-int/lit8 v3, v1, -0x1

    int-to-byte v1, v3

    .line 2526
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2549
    .end local v2    # "i":I
    :cond_6
    const/16 v2, 0x7fff

    if-gt v0, v2, :cond_7

    .line 2553
    int-to-short v2, v0

    return v2

    .line 2550
    :cond_7
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method private getShort(JI[B)S
    .locals 7
    .param p1, "memId"    # J
    .param p3, "offset"    # I
    .param p4, "tempBuf"    # [B

    .line 2733
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy(JI[BII)V

    .line 2734
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->getShort([BI)S

    move-result v0

    return v0
.end method

.method private static getShort([BI)S
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .line 2776
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private materializeBIN(Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;Z)Lcom/sleepycat/je/tree/BIN;
    .locals 6
    .param p1, "pb"    # Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
    .param p2, "asDelta"    # Z

    .line 2040
    new-instance v0, Lcom/sleepycat/je/tree/BIN;

    invoke-direct {v0}, Lcom/sleepycat/je/tree/BIN;-><init>()V

    .line 2042
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    iget-object v1, p1, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->binBytes:Ljava/nio/ByteBuffer;

    iget v2, p1, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->flags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/16 v5, 0x11

    invoke-virtual {v0, v1, v5, p2, v2}, Lcom/sleepycat/je/tree/BIN;->materialize(Ljava/nio/ByteBuffer;IZZ)V

    .line 2046
    iget-wide v1, p1, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lastFullLsn:J

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/tree/BIN;->setLastFullLsn(J)V

    .line 2047
    iget-wide v1, p1, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lastDeltaLsn:J

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/tree/BIN;->setLastDeltaLsn(J)V

    .line 2049
    iget v1, p1, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/tree/BIN;->setProhibitNextDelta(Z)V

    .line 2052
    iget-object v1, p1, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lnMemIds:[J

    if-eqz v1, :cond_3

    .line 2053
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p1, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lnMemIds:[J

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 2054
    iget-object v2, p1, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lnMemIds:[J

    aget-wide v2, v2, v1

    .line 2055
    .local v2, "lnMemId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 2056
    goto :goto_2

    .line 2058
    :cond_2
    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLNId(IJ)V

    .line 2053
    .end local v2    # "lnMemId":J
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2062
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method private materializeLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;J)Lcom/sleepycat/je/tree/LN;
    .locals 18
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "memId"    # J

    .line 1431
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->useOffHeapChecksums()Z

    move-result v11

    .line 1432
    .local v11, "useChecksums":Z
    if-eqz v11, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v13, v2

    .line 1433
    .local v13, "checksumSize":I
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCacheVLSN()Z

    move-result v2

    const/16 v14, 0x8

    if-eqz v2, :cond_1

    move v2, v14

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v15, v2

    .line 1434
    .local v15, "vlsnSize":I
    add-int v16, v15, v13

    .line 1436
    .local v16, "lnDataOffset":I
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v2, v9, v10}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->size(J)I

    move-result v2

    sub-int v2, v2, v16

    new-array v8, v2, [B

    .line 1437
    .local v8, "data":[B
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/4 v7, 0x0

    array-length v6, v8

    move-wide/from16 v3, p2

    move/from16 v5, v16

    move/from16 v17, v6

    move-object v6, v8

    move-object v12, v8

    .end local v8    # "data":[B
    .local v12, "data":[B
    move/from16 v8, v17

    invoke-interface/range {v2 .. v8}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy(JI[BII)V

    .line 1439
    if-gtz v15, :cond_3

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    new-array v2, v14, [B

    .line 1442
    .local v2, "tempBuf":[B
    :goto_3
    if-eqz v11, :cond_5

    .line 1443
    invoke-direct {v0, v9, v10, v15, v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->getInt(JI[B)I

    move-result v3

    .line 1444
    .local v3, "storedChecksum":I
    if-eqz v3, :cond_5

    .line 1446
    invoke-static {}, Lcom/sleepycat/je/utilint/Adler32;->makeChecksum()Ljava/util/zip/Checksum;

    move-result-object v4

    .line 1447
    .local v4, "checksum":Ljava/util/zip/Checksum;
    array-length v5, v12

    const/4 v6, 0x0

    invoke-interface {v4, v12, v6, v5}, Ljava/util/zip/Checksum;->update([BII)V

    .line 1448
    invoke-interface {v4}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v5

    long-to-int v5, v5

    .line 1450
    .local v5, "checksumValue":I
    if-ne v3, v5, :cond_4

    goto :goto_4

    .line 1451
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Off-heap cache checksum error. Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v6

    throw v6

    .line 1459
    .end local v3    # "storedChecksum":I
    .end local v4    # "checksum":Ljava/util/zip/Checksum;
    .end local v5    # "checksumValue":I
    :cond_5
    :goto_4
    iget-object v3, v0, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsLoaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1461
    invoke-static {v1, v12}, Lcom/sleepycat/je/tree/LN;->makeLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/LN;

    move-result-object v3

    .line 1462
    .local v3, "ln":Lcom/sleepycat/je/tree/LN;
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/LN;->clearDirty()V

    .line 1464
    if-lez v15, :cond_6

    .line 1465
    const/4 v4, 0x0

    invoke-direct {v0, v9, v10, v4, v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->getLong(JI[B)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/tree/LN;->setVLSNSequence(J)V

    .line 1468
    :cond_6
    return-object v3
.end method

.method private moveFront(IZ)I
    .locals 2
    .param p1, "entry"    # I
    .param p2, "pri2"    # Z

    .line 963
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->numLRULists:I

    rem-int v0, p1, v0

    .line 964
    .local v0, "lruIdx":I
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->pri2LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    aget-object v1, v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->pri1LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    aget-object v1, v1, v0

    .line 967
    .local v1, "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    :goto_0
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->moveFront(I)V

    .line 969
    return p1
.end method

.method private mutateToBINDelta(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;IZLcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)J
    .locals 9
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "entry"    # I
    .param p4, "pri2"    # Z
    .param p5, "chunk"    # Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .param p6, "chunkIdx"    # I

    .line 3464
    iget-object v0, p5, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->memIds:[J

    aget-wide v0, v0, p6

    .line 3466
    .local v0, "memId":J
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->materializeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/BIN;

    move-result-object v2

    .line 3467
    .local v2, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 3470
    invoke-virtual {v2, p2}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3472
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->serializeBIN(Lcom/sleepycat/je/tree/BIN;Z)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3474
    .local v3, "newMemId":J
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 3475
    nop

    .line 3477
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 3478
    return-wide v5

    .line 3481
    :cond_0
    const/4 v5, 0x0

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;JZ)J

    move-result-wide v5

    .line 3482
    .local v5, "nBytesEvicted":J
    iget-object v7, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v7, v3, v4}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->totalSize(J)I

    move-result v7

    int-to-long v7, v7

    sub-long/2addr v5, v7

    .line 3483
    iget-object v7, p5, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->memIds:[J

    aput-wide v3, v7, p6

    .line 3485
    iget-object v7, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesMutated:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 3486
    invoke-virtual {p0, p3, p4}, Lcom/sleepycat/je/evictor/OffHeapCache;->moveBack(IZ)I

    .line 3487
    return-wide v5

    .line 3474
    .end local v3    # "newMemId":J
    .end local v5    # "nBytesEvicted":J
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    throw v3

    .line 3467
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private needCriticalEviction()Z
    .locals 6

    .line 2904
    invoke-virtual {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2905
    return v1

    .line 2912
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->maxMemory:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 2913
    return v1

    .line 2916
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v0}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->getUsedBytes()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->memoryLimit:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private needEviction()Z
    .locals 8

    .line 2887
    invoke-virtual {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2888
    return v1

    .line 2895
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->maxMemory:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 2896
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v0}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->getUsedBytes()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 2899
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v0}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->getUsedBytes()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->evictBytes:J

    add-long/2addr v3, v5

    iget-wide v5, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->memoryLimit:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private static packLnMemIds(Lcom/sleepycat/je/tree/BIN;[BI)V
    .locals 7
    .param p0, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p1, "buf"    # [B
    .param p2, "off"    # I

    .line 2480
    move v0, p2

    .line 2481
    .local v0, "nOff":I
    add-int/lit8 p2, p2, 0x1

    .line 2482
    const/4 v1, 0x0

    .line 2484
    .local v1, "n":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 2486
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v3

    .line 2488
    .local v3, "memId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    .line 2490
    if-ltz v1, :cond_0

    const/16 v5, 0x7f

    if-ne v1, v5, :cond_1

    .line 2491
    :cond_0
    aput-byte v1, p1, v0

    .line 2492
    move v0, p2

    .line 2493
    add-int/lit8 p2, p2, 0x1

    .line 2494
    const/4 v1, 0x0

    .line 2497
    :cond_1
    invoke-static {v3, v4, p1, p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->putLong(J[BI)V

    .line 2498
    add-int/lit8 p2, p2, 0x8

    .line 2499
    add-int/lit8 v5, v1, 0x1

    int-to-byte v1, v5

    goto :goto_1

    .line 2503
    :cond_2
    if-gtz v1, :cond_3

    const/16 v5, -0x7f

    if-ne v1, v5, :cond_4

    .line 2504
    :cond_3
    aput-byte v1, p1, v0

    .line 2505
    move v0, p2

    .line 2506
    add-int/lit8 p2, p2, 0x1

    .line 2507
    const/4 v1, 0x0

    .line 2510
    :cond_4
    add-int/lit8 v5, v1, -0x1

    int-to-byte v1, v5

    .line 2484
    .end local v3    # "memId":J
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2514
    .end local v2    # "i":I
    :cond_5
    aput-byte v1, p1, v0

    .line 2515
    return-void
.end method

.method private parseBINBytes(Lcom/sleepycat/je/dbi/EnvironmentImpl;[BZZ)Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
    .locals 24
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "buf"    # [B
    .param p3, "partialBuf"    # Z
    .param p4, "parseLNIds"    # Z

    .line 2379
    move-object/from16 v0, p2

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2381
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->useOffHeapChecksums()Z

    move-result v1

    .line 2382
    .local v1, "useChecksums":Z
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 2384
    .local v4, "checksumSize":I
    :goto_1
    if-eqz v1, :cond_5

    if-nez p3, :cond_5

    .line 2385
    invoke-static {v0, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->getInt([BI)I

    move-result v3

    .line 2386
    .local v3, "storedChecksum":I
    if-eqz v3, :cond_4

    .line 2388
    invoke-static {}, Lcom/sleepycat/je/utilint/Adler32;->makeChecksum()Ljava/util/zip/Checksum;

    move-result-object v5

    .line 2389
    .local v5, "checksum":Ljava/util/zip/Checksum;
    array-length v6, v0

    sub-int/2addr v6, v4

    invoke-interface {v5, v0, v4, v6}, Ljava/util/zip/Checksum;->update([BII)V

    .line 2390
    invoke-interface {v5}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v6

    long-to-int v6, v6

    .line 2392
    .local v6, "checksumValue":I
    if-ne v3, v6, :cond_3

    move-object/from16 v7, p1

    goto :goto_2

    .line 2393
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Off-heap cache checksum error. Expected "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " but got "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, p1

    invoke-static {v7, v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 2386
    .end local v5    # "checksum":Ljava/util/zip/Checksum;
    .end local v6    # "checksumValue":I
    :cond_4
    move-object/from16 v7, p1

    goto :goto_2

    .line 2384
    .end local v3    # "storedChecksum":I
    :cond_5
    move-object/from16 v7, p1

    .line 2401
    :goto_2
    move v3, v4

    .line 2403
    .local v3, "bufOffset":I
    aget-byte v5, v0, v3

    .line 2404
    .local v5, "flags":I
    add-int/lit8 v3, v3, 0x1

    .line 2406
    invoke-static {v0, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->getLong([BI)J

    move-result-wide v17

    .line 2407
    .local v17, "lastFullLsn":J
    add-int/lit8 v3, v3, 0x8

    .line 2409
    invoke-static {v0, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->getLong([BI)J

    move-result-wide v19

    .line 2410
    .local v19, "lastDeltaLsn":J
    add-int/lit8 v3, v3, 0x8

    .line 2412
    invoke-static {v0, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->getInt([BI)I

    move-result v6

    .line 2413
    .local v6, "minExpiration":I
    add-int/2addr v3, v2

    .line 2415
    if-eqz p3, :cond_6

    .line 2416
    new-instance v2, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v8, v2

    move v9, v5

    move-wide/from16 v11, v17

    move-wide/from16 v13, v19

    move v15, v6

    invoke-direct/range {v8 .. v16}, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;-><init>(I[JJJILjava/nio/ByteBuffer;)V

    return-object v2

    .line 2420
    :cond_6
    invoke-static {v0, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->getShort([BI)S

    move-result v2

    .line 2421
    .local v2, "lnIdsSize":S
    add-int/lit8 v3, v3, 0x2

    .line 2426
    if-lez v2, :cond_7

    if-eqz p4, :cond_7

    .line 2427
    invoke-static {v0, v3, v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->unpackLnMemIds([BII)[J

    move-result-object v8

    move-object/from16 v21, v8

    .local v8, "lnMemIds":[J
    goto :goto_3

    .line 2429
    .end local v8    # "lnMemIds":[J
    :cond_7
    const/4 v8, 0x0

    move-object/from16 v21, v8

    .line 2432
    .local v21, "lnMemIds":[J
    :goto_3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v3, v8

    .line 2434
    array-length v8, v0

    sub-int/2addr v8, v3

    .line 2435
    invoke-static {v0, v3, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v22

    .line 2437
    .local v22, "byteBuf":Ljava/nio/ByteBuffer;
    new-instance v23, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;

    move-object/from16 v8, v23

    move v9, v5

    move-object/from16 v10, v21

    move-wide/from16 v11, v17

    move-wide/from16 v13, v19

    move v15, v6

    move-object/from16 v16, v22

    invoke-direct/range {v8 .. v16}, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;-><init>(I[JJJILjava/nio/ByteBuffer;)V

    return-object v23
.end method

.method private putInt(IJI[B)V
    .locals 8
    .param p1, "val"    # I
    .param p2, "memId"    # J
    .param p4, "offset"    # I
    .param p5, "tempBuf"    # [B

    .line 2741
    const/4 v0, 0x0

    invoke-static {p1, p5, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->putInt(I[BI)V

    .line 2742
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/4 v3, 0x0

    const/4 v7, 0x4

    move-object v2, p5

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy([BIJII)V

    .line 2743
    return-void
.end method

.method private static putInt(I[BI)V
    .locals 2
    .param p0, "val"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .line 2784
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 2785
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 2786
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 2787
    add-int/lit8 v0, p2, 0x3

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 2788
    return-void
.end method

.method private putLong(JJI[B)V
    .locals 8
    .param p1, "val"    # J
    .param p3, "memId"    # J
    .param p5, "offset"    # I
    .param p6, "tempBuf"    # [B

    .line 2756
    const/4 v0, 0x0

    invoke-static {p1, p2, p6, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->putLong(J[BI)V

    .line 2757
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/4 v3, 0x0

    const/16 v7, 0x8

    move-object v2, p6

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy([BIJII)V

    .line 2758
    return-void
.end method

.method private static putLong(J[BI)V
    .locals 3
    .param p0, "val"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .line 2802
    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 2803
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 2804
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 2805
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 2806
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 2807
    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 2808
    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 2809
    add-int/lit8 v0, p3, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 2810
    return-void
.end method

.method private putShort(SJI[B)V
    .locals 8
    .param p1, "val"    # S
    .param p2, "memId"    # J
    .param p4, "offset"    # I
    .param p5, "tempBuf"    # [B

    .line 2726
    const/4 v0, 0x0

    invoke-static {p1, p5, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->putShort(S[BI)V

    .line 2727
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/4 v3, 0x0

    const/4 v7, 0x2

    move-object v2, p5

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy([BIJII)V

    .line 2728
    return-void
.end method

.method private static putShort(S[BI)V
    .locals 2
    .param p0, "val"    # S
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .line 2770
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 2771
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 2772
    return-void
.end method

.method private remove(IZ)V
    .locals 2
    .param p1, "entry"    # I
    .param p2, "pri2"    # Z

    .line 974
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->numLRULists:I

    rem-int v0, p1, v0

    .line 975
    .local v0, "lruIdx":I
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->pri2LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    aget-object v1, v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->pri1LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    aget-object v1, v1, v0

    .line 978
    .local v1, "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    :goto_0
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->remove(I)V

    .line 979
    invoke-direct {p0, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeEntry(I)V

    .line 980
    return-void
.end method

.method private serializeLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/tree/LN;)J
    .locals 22
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "ln"    # Lcom/sleepycat/je/tree/LN;

    .line 1385
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->useOffHeapChecksums()Z

    move-result v8

    .line 1386
    .local v8, "useChecksums":Z
    const/4 v9, 0x0

    if-eqz v8, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    move v10, v0

    .line 1387
    .local v10, "checksumSize":I
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCacheVLSN()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_1
    move v11, v0

    .line 1388
    .local v11, "vlsnSize":I
    add-int v19, v11, v10

    .line 1398
    .local v19, "lnDataOffset":I
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v15

    .line 1399
    .local v15, "data":[B
    if-eqz v15, :cond_7

    .line 1401
    array-length v0, v15

    add-int v0, v19, v0

    move-object/from16 v14, p1

    invoke-direct {v7, v14, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->allocateMemory(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)J

    move-result-wide v20

    .line 1402
    .local v20, "memId":J
    const-wide/16 v2, 0x0

    cmp-long v0, v20, v2

    if-nez v0, :cond_2

    .line 1403
    return-wide v2

    .line 1406
    :cond_2
    if-gtz v11, :cond_4

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    new-array v0, v1, [B

    :goto_3
    move-object v6, v0

    .line 1409
    .local v6, "tempBuf":[B
    if-lez v11, :cond_5

    .line 1410
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v3, v20

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/evictor/OffHeapCache;->putLong(JJI[B)V

    .line 1413
    :cond_5
    if-eqz v8, :cond_6

    .line 1414
    invoke-static {}, Lcom/sleepycat/je/utilint/Adler32;->makeChecksum()Ljava/util/zip/Checksum;

    move-result-object v12

    .line 1415
    .local v12, "checksum":Ljava/util/zip/Checksum;
    array-length v0, v15

    invoke-interface {v12, v15, v9, v0}, Ljava/util/zip/Checksum;->update([BII)V

    .line 1416
    invoke-interface {v12}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    long-to-int v9, v0

    .line 1417
    .local v9, "checksumValue":I
    move-object/from16 v0, p0

    move v1, v9

    move-wide/from16 v2, v20

    move v4, v11

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->putInt(IJI[B)V

    .line 1420
    .end local v9    # "checksumValue":I
    .end local v12    # "checksum":Ljava/util/zip/Checksum;
    :cond_6
    iget-object v12, v7, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/4 v0, 0x0

    array-length v1, v15

    move-object v13, v15

    move v14, v0

    move-object v0, v15

    .end local v15    # "data":[B
    .local v0, "data":[B
    move-wide/from16 v15, v20

    move/from16 v17, v19

    move/from16 v18, v1

    invoke-interface/range {v12 .. v18}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy([BIJII)V

    .line 1422
    iget-object v1, v7, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsStored:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1423
    iget-object v1, v7, Lcom/sleepycat/je/evictor/OffHeapCache;->cachedLNs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1425
    return-wide v20

    .line 1399
    .end local v0    # "data":[B
    .end local v6    # "tempBuf":[B
    .end local v20    # "memId":J
    .restart local v15    # "data":[B
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private setOwnerAndMemId(ILcom/sleepycat/je/tree/IN;J)V
    .locals 3
    .param p1, "entry"    # I
    .param p2, "owner"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "memId"    # J

    .line 1105
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    const v1, 0x19000

    div-int v2, p1, v1

    aget-object v0, v0, v2

    .line 1108
    .local v0, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v1, p1, v1

    .line 1110
    .local v1, "chunkIdx":I
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 1111
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1113
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aput-object p2, v2, v1

    .line 1114
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->memIds:[J

    aput-wide p3, v2, v1

    .line 1115
    return-void

    .line 1111
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1110
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1105
    .end local v0    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v1    # "chunkIdx":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private stripLNs(IZZJLcom/sleepycat/je/evictor/OffHeapCache$Chunk;ILcom/sleepycat/je/tree/IN;IZ)J
    .locals 37
    .param p1, "entry"    # I
    .param p2, "pri2"    # Z
    .param p3, "dirty"    # Z
    .param p4, "memId"    # J
    .param p6, "chunk"    # Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .param p7, "chunkIdx"    # I
    .param p8, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p9, "index"    # I
    .param p10, "backgroundIO"    # Z

    .line 3263
    move-object/from16 v11, p0

    move-wide/from16 v12, p4

    move-object/from16 v14, p6

    invoke-virtual/range {p8 .. p8}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v15

    .line 3264
    .local v15, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->useOffHeapChecksums()Z

    move-result v16

    .line 3265
    .local v16, "useChecksums":Z
    const/4 v0, 0x4

    const/4 v8, 0x0

    if-eqz v16, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    move/from16 v24, v1

    .line 3273
    .local v24, "checksumSize":I
    const/16 v1, 0x17

    new-array v10, v1, [B

    .line 3274
    .local v10, "headBuf":[B
    iget-object v1, v11, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/4 v6, 0x0

    array-length v7, v10

    move-wide/from16 v2, p4

    move/from16 v4, v24

    move-object v5, v10

    invoke-interface/range {v1 .. v7}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy(JI[BII)V

    .line 3275
    array-length v1, v10

    add-int v25, v24, v1

    .line 3276
    .local v25, "memHeadLen":I
    aget-byte v26, v10, v8

    .line 3277
    .local v26, "flags":B
    const/16 v1, 0x11

    .line 3278
    .local v1, "bufOffset":I
    invoke-static {v10, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->getInt([BI)I

    move-result v9

    .line 3279
    .local v9, "minExpiration":I
    add-int/2addr v1, v0

    .line 3280
    invoke-static {v10, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->getShort([BI)S

    move-result v7

    .line 3281
    .local v7, "lnIdsSize":S
    add-int/lit8 v5, v1, 0x2

    .line 3282
    .end local v1    # "bufOffset":I
    .local v5, "bufOffset":I
    array-length v0, v10

    if-ne v5, v0, :cond_12

    .line 3284
    const/4 v0, 0x0

    .line 3285
    .local v0, "nEvicted":I
    const-wide/16 v1, 0x0

    .line 3292
    .local v1, "nBytesEvicted":J
    and-int/lit8 v3, v26, 0x1

    const-wide/16 v17, 0x0

    if-nez v3, :cond_a

    .line 3293
    const/4 v3, 0x1

    invoke-virtual {v15, v9, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isExpired(IZ)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3295
    invoke-direct {v11, v12, v13}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemBytes(J)[B

    move-result-object v4

    invoke-virtual {v11, v15, v4}, Lcom/sleepycat/je/evictor/OffHeapCache;->materializeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/BIN;

    move-result-object v6

    .line 3297
    .local v6, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual/range {p8 .. p8}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 3299
    const/4 v4, 0x0

    move-wide/from16 v19, v1

    move/from16 v36, v4

    move v4, v0

    move/from16 v0, v36

    .end local v1    # "nBytesEvicted":J
    .local v0, "i":I
    .local v4, "nEvicted":I
    .local v19, "nBytesEvicted":J
    :goto_1
    :try_start_0
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-ge v0, v1, :cond_3

    .line 3300
    :try_start_1
    invoke-virtual {v6, v0}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_2

    .line 3301
    invoke-virtual {v6, v0}, Lcom/sleepycat/je/tree/BIN;->isExpired(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3302
    goto :goto_2

    .line 3304
    :cond_1
    invoke-virtual {v11, v6, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeLN(Lcom/sleepycat/je/tree/BIN;I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v1, v1

    add-long v19, v19, v1

    .line 3305
    add-int/lit8 v4, v4, 0x1

    .line 3299
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3344
    .end local v0    # "i":I
    :catchall_0
    move-exception v0

    move/from16 v29, v5

    move-object/from16 v21, v6

    move/from16 v30, v7

    move/from16 v32, v9

    move-object/from16 v33, v10

    goto/16 :goto_6

    .line 3314
    :cond_3
    :try_start_2
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v0

    .line 3316
    .local v0, "origNSlots":I
    nop

    .line 3317
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->shouldLogDelta()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v8

    :goto_3
    const/4 v1, 0x0

    .line 3316
    invoke-virtual {v6, v3, v1}, Lcom/sleepycat/je/tree/BIN;->compress(ZLcom/sleepycat/je/cleaner/LocalUtilizationTracker;)Z

    .line 3325
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1

    if-ne v0, v1, :cond_6

    if-lez v4, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v31, v4

    move/from16 v29, v5

    move-object/from16 v21, v6

    move/from16 v30, v7

    move/from16 v32, v9

    move-object/from16 v33, v10

    move-wide/from16 v1, v19

    goto/16 :goto_5

    .line 3326
    :cond_6
    :goto_4
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v1

    invoke-virtual {v11, v6, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->serializeBIN(Lcom/sleepycat/je/tree/BIN;Z)J

    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-wide v2, v1

    .line 3327
    .local v2, "newMemId":J
    cmp-long v1, v2, v17

    if-nez v1, :cond_7

    .line 3332
    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v27, v2

    .end local v2    # "newMemId":J
    .local v27, "newMemId":J
    move/from16 v2, p1

    move/from16 v3, p2

    move v8, v4

    .end local v4    # "nEvicted":I
    .local v8, "nEvicted":I
    move/from16 v4, p3

    move/from16 v29, v5

    move-object/from16 v21, v6

    .end local v5    # "bufOffset":I
    .end local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v21, "bin":Lcom/sleepycat/je/tree/BIN;
    .local v29, "bufOffset":I
    move-wide/from16 v5, p4

    move/from16 v30, v7

    .end local v7    # "lnIdsSize":S
    .local v30, "lnIdsSize":S
    move-object/from16 v7, p8

    move/from16 v31, v8

    .end local v8    # "nEvicted":I
    .local v31, "nEvicted":I
    move/from16 v8, p9

    move/from16 v32, v9

    .end local v9    # "minExpiration":I
    .local v32, "minExpiration":I
    move/from16 v9, p10

    move-object/from16 v33, v10

    .end local v10    # "headBuf":[B
    .local v33, "headBuf":[B
    move/from16 v10, v17

    :try_start_3
    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/evictor/OffHeapCache;->flushAndDiscardBIN(IZZJLcom/sleepycat/je/tree/IN;IZZ)J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-long v19, v19, v1

    .line 3336
    nop

    .line 3344
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 3336
    return-wide v19

    .line 3344
    .end local v0    # "origNSlots":I
    .end local v27    # "newMemId":J
    :catchall_1
    move-exception v0

    move/from16 v4, v31

    goto :goto_6

    .line 3339
    .end local v21    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v29    # "bufOffset":I
    .end local v30    # "lnIdsSize":S
    .end local v31    # "nEvicted":I
    .end local v32    # "minExpiration":I
    .end local v33    # "headBuf":[B
    .restart local v0    # "origNSlots":I
    .restart local v2    # "newMemId":J
    .restart local v4    # "nEvicted":I
    .restart local v5    # "bufOffset":I
    .restart local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v7    # "lnIdsSize":S
    .restart local v9    # "minExpiration":I
    .restart local v10    # "headBuf":[B
    :cond_7
    move-wide/from16 v27, v2

    move/from16 v31, v4

    move/from16 v29, v5

    move-object/from16 v21, v6

    move/from16 v30, v7

    move/from16 v32, v9

    move-object/from16 v33, v10

    .end local v2    # "newMemId":J
    .end local v4    # "nEvicted":I
    .end local v5    # "bufOffset":I
    .end local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v7    # "lnIdsSize":S
    .end local v9    # "minExpiration":I
    .end local v10    # "headBuf":[B
    .restart local v21    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v27    # "newMemId":J
    .restart local v29    # "bufOffset":I
    .restart local v30    # "lnIdsSize":S
    .restart local v31    # "nEvicted":I
    .restart local v32    # "minExpiration":I
    .restart local v33    # "headBuf":[B
    :try_start_4
    invoke-direct {v11, v12, v13}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeMemory(J)I

    move-result v1

    int-to-long v1, v1

    add-long v19, v19, v1

    .line 3340
    iget-object v1, v11, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    move-wide/from16 v2, v27

    .end local v27    # "newMemId":J
    .restart local v2    # "newMemId":J
    invoke-interface {v1, v2, v3}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->totalSize(J)I

    move-result v1

    int-to-long v4, v1

    sub-long v19, v19, v4

    .line 3341
    iget-object v1, v14, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->memIds:[J

    aput-wide v2, v1, p7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v1, v19

    .line 3344
    .end local v0    # "origNSlots":I
    .end local v2    # "newMemId":J
    .end local v19    # "nBytesEvicted":J
    .restart local v1    # "nBytesEvicted":J
    :goto_5
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 3345
    nop

    .line 3348
    cmp-long v0, v1, v17

    if-lez v0, :cond_8

    .line 3349
    iget-object v0, v11, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    move/from16 v4, v31

    .end local v31    # "nEvicted":I
    .restart local v4    # "nEvicted":I
    int-to-long v5, v4

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 3350
    iget-object v0, v11, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesStripped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 3351
    invoke-virtual/range {p0 .. p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->moveBack(IZ)I

    .line 3352
    return-wide v1

    .line 3348
    .end local v4    # "nEvicted":I
    .restart local v31    # "nEvicted":I
    :cond_8
    move/from16 v4, v31

    .end local v31    # "nEvicted":I
    .restart local v4    # "nEvicted":I
    move-wide v9, v1

    move v0, v4

    goto :goto_8

    .line 3344
    .end local v1    # "nBytesEvicted":J
    .end local v4    # "nEvicted":I
    .restart local v19    # "nBytesEvicted":J
    .restart local v31    # "nEvicted":I
    :catchall_2
    move-exception v0

    move/from16 v4, v31

    .end local v31    # "nEvicted":I
    .restart local v4    # "nEvicted":I
    goto :goto_6

    .end local v21    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v29    # "bufOffset":I
    .end local v30    # "lnIdsSize":S
    .end local v32    # "minExpiration":I
    .end local v33    # "headBuf":[B
    .restart local v5    # "bufOffset":I
    .restart local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v7    # "lnIdsSize":S
    .restart local v9    # "minExpiration":I
    .restart local v10    # "headBuf":[B
    :catchall_3
    move-exception v0

    move/from16 v29, v5

    move-object/from16 v21, v6

    move/from16 v30, v7

    move/from16 v32, v9

    move-object/from16 v33, v10

    .end local v5    # "bufOffset":I
    .end local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v7    # "lnIdsSize":S
    .end local v9    # "minExpiration":I
    .end local v10    # "headBuf":[B
    .restart local v21    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v29    # "bufOffset":I
    .restart local v30    # "lnIdsSize":S
    .restart local v32    # "minExpiration":I
    .restart local v33    # "headBuf":[B
    :goto_6
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    throw v0

    .line 3293
    .end local v4    # "nEvicted":I
    .end local v19    # "nBytesEvicted":J
    .end local v21    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v29    # "bufOffset":I
    .end local v30    # "lnIdsSize":S
    .end local v32    # "minExpiration":I
    .end local v33    # "headBuf":[B
    .local v0, "nEvicted":I
    .restart local v1    # "nBytesEvicted":J
    .restart local v5    # "bufOffset":I
    .restart local v7    # "lnIdsSize":S
    .restart local v9    # "minExpiration":I
    .restart local v10    # "headBuf":[B
    :cond_9
    move/from16 v29, v5

    move/from16 v30, v7

    move/from16 v32, v9

    move-object/from16 v33, v10

    .end local v5    # "bufOffset":I
    .end local v7    # "lnIdsSize":S
    .end local v9    # "minExpiration":I
    .end local v10    # "headBuf":[B
    .restart local v29    # "bufOffset":I
    .restart local v30    # "lnIdsSize":S
    .restart local v32    # "minExpiration":I
    .restart local v33    # "headBuf":[B
    goto :goto_7

    .line 3292
    .end local v29    # "bufOffset":I
    .end local v30    # "lnIdsSize":S
    .end local v32    # "minExpiration":I
    .end local v33    # "headBuf":[B
    .restart local v5    # "bufOffset":I
    .restart local v7    # "lnIdsSize":S
    .restart local v9    # "minExpiration":I
    .restart local v10    # "headBuf":[B
    :cond_a
    move/from16 v29, v5

    move/from16 v30, v7

    move/from16 v32, v9

    move-object/from16 v33, v10

    .line 3356
    .end local v5    # "bufOffset":I
    .end local v7    # "lnIdsSize":S
    .end local v9    # "minExpiration":I
    .end local v10    # "headBuf":[B
    .restart local v29    # "bufOffset":I
    .restart local v30    # "lnIdsSize":S
    .restart local v32    # "minExpiration":I
    .restart local v33    # "headBuf":[B
    :goto_7
    move-wide v9, v1

    .end local v1    # "nBytesEvicted":J
    .local v9, "nBytesEvicted":J
    :goto_8
    move/from16 v7, v30

    .end local v30    # "lnIdsSize":S
    .restart local v7    # "lnIdsSize":S
    if-gtz v7, :cond_b

    .line 3357
    return-wide v17

    .line 3360
    :cond_b
    new-array v6, v7, [B

    .line 3361
    .local v6, "lnBuf":[B
    iget-object v1, v11, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/16 v19, 0x0

    array-length v5, v6

    move-wide/from16 v2, p4

    move/from16 v4, v25

    move/from16 v20, v5

    move-object v5, v6

    move-wide/from16 v21, v9

    move-object v10, v6

    .end local v6    # "lnBuf":[B
    .end local v9    # "nBytesEvicted":J
    .local v10, "lnBuf":[B
    .local v21, "nBytesEvicted":J
    move/from16 v6, v19

    move v9, v7

    .end local v7    # "lnIdsSize":S
    .local v9, "lnIdsSize":S
    move/from16 v7, v20

    invoke-interface/range {v1 .. v7}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy(JI[BII)V

    .line 3362
    invoke-static {v10, v8, v9}, Lcom/sleepycat/je/evictor/OffHeapCache;->unpackLnMemIds([BII)[J

    move-result-object v7

    .line 3364
    .local v7, "lnMemIds":[J
    array-length v1, v7

    :goto_9
    if-ge v8, v1, :cond_d

    aget-wide v2, v7, v8

    .line 3365
    .local v2, "lnMemId":J
    cmp-long v4, v2, v17

    if-nez v4, :cond_c

    .line 3366
    goto :goto_a

    .line 3368
    :cond_c
    invoke-direct {v11, v2, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeLN(J)I

    move-result v4

    int-to-long v4, v4

    add-long v21, v21, v4

    .line 3369
    add-int/lit8 v0, v0, 0x1

    .line 3364
    .end local v2    # "lnMemId":J
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 3372
    :cond_d
    if-lez v0, :cond_11

    .line 3374
    const/16 v1, 0x64

    if-gt v9, v1, :cond_f

    .line 3379
    const/16 v1, 0x8

    new-array v8, v1, [B

    .line 3381
    .local v8, "tempBuf":[B
    neg-int v1, v9

    int-to-short v2, v1

    add-int/lit8 v5, v25, -0x2

    move-object/from16 v1, p0

    move-wide/from16 v3, p4

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/evictor/OffHeapCache;->putShort(SJI[B)V

    .line 3384
    if-eqz v16, :cond_e

    .line 3385
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, p4

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/evictor/OffHeapCache;->putInt(IJI[B)V

    .line 3387
    .end local v8    # "tempBuf":[B
    :cond_e
    move-object/from16 v27, v7

    move/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v18, v33

    goto/16 :goto_b

    .line 3392
    :cond_f
    iget-object v1, v11, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v1, v12, v13}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->size(J)I

    move-result v1

    sub-int v8, v1, v9

    .line 3393
    .local v8, "newSize":I
    invoke-direct {v11, v15, v8}, Lcom/sleepycat/je/evictor/OffHeapCache;->allocateMemory(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)J

    move-result-wide v5

    .line 3395
    .local v5, "newMemId":J
    cmp-long v1, v5, v17

    if-nez v1, :cond_10

    .line 3400
    const/16 v17, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v34, v5

    .end local v5    # "newMemId":J
    .local v34, "newMemId":J
    move-wide/from16 v5, p4

    move-object/from16 v27, v7

    .end local v7    # "lnMemIds":[J
    .local v27, "lnMemIds":[J
    move-object/from16 v7, p8

    move/from16 v28, v8

    .end local v8    # "newSize":I
    .local v28, "newSize":I
    move/from16 v8, p9

    move/from16 v30, v9

    .end local v9    # "lnIdsSize":S
    .restart local v30    # "lnIdsSize":S
    move/from16 v9, p10

    move-object/from16 v31, v10

    .end local v10    # "lnBuf":[B
    .local v31, "lnBuf":[B
    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/evictor/OffHeapCache;->flushAndDiscardBIN(IZZJLcom/sleepycat/je/tree/IN;IZZ)J

    move-result-wide v1

    add-long v21, v21, v1

    .line 3404
    return-wide v21

    .line 3407
    .end local v27    # "lnMemIds":[J
    .end local v28    # "newSize":I
    .end local v30    # "lnIdsSize":S
    .end local v31    # "lnBuf":[B
    .end local v34    # "newMemId":J
    .restart local v5    # "newMemId":J
    .restart local v7    # "lnMemIds":[J
    .restart local v8    # "newSize":I
    .restart local v9    # "lnIdsSize":S
    .restart local v10    # "lnBuf":[B
    :cond_10
    move-wide/from16 v34, v5

    move-object/from16 v27, v7

    move/from16 v28, v8

    move/from16 v30, v9

    move-object/from16 v31, v10

    .end local v5    # "newMemId":J
    .end local v7    # "lnMemIds":[J
    .end local v8    # "newSize":I
    .end local v9    # "lnIdsSize":S
    .end local v10    # "lnBuf":[B
    .restart local v27    # "lnMemIds":[J
    .restart local v28    # "newSize":I
    .restart local v30    # "lnIdsSize":S
    .restart local v31    # "lnBuf":[B
    .restart local v34    # "newMemId":J
    iget-object v1, v11, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    move-wide/from16 v9, v34

    .end local v34    # "newMemId":J
    .local v9, "newMemId":J
    invoke-interface {v1, v9, v10}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->totalSize(J)I

    move-result v1

    int-to-long v1, v1

    sub-long v34, v21, v1

    .line 3420
    .end local v21    # "nBytesEvicted":J
    .local v34, "nBytesEvicted":J
    iget-object v1, v11, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/16 v19, 0x0

    move-object/from16 v8, v33

    .end local v33    # "headBuf":[B
    .local v8, "headBuf":[B
    array-length v2, v8

    add-int/lit8 v23, v2, -0x2

    move-object/from16 v17, v1

    move-object/from16 v18, v8

    move-wide/from16 v20, v9

    move/from16 v22, v24

    invoke-interface/range {v17 .. v23}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy([BIJII)V

    .line 3424
    iget-object v1, v11, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    add-int v4, v25, v30

    sub-int v17, v28, v25

    move-wide/from16 v2, p4

    move-wide v5, v9

    move/from16 v7, v25

    .end local v8    # "headBuf":[B
    .local v18, "headBuf":[B
    move/from16 v8, v17

    invoke-interface/range {v1 .. v8}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy(JIJII)V

    .line 3428
    invoke-direct {v11, v12, v13}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeMemory(J)I

    move-result v1

    int-to-long v1, v1

    add-long v21, v34, v1

    .line 3429
    .end local v34    # "nBytesEvicted":J
    .restart local v21    # "nBytesEvicted":J
    iget-object v1, v14, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->memIds:[J

    aput-wide v9, v1, p7

    .line 3432
    .end local v9    # "newMemId":J
    .end local v28    # "newSize":I
    :goto_b
    iget-object v1, v11, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 3433
    iget-object v1, v11, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesStripped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 3434
    invoke-virtual/range {p0 .. p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->moveBack(IZ)I

    .line 3435
    return-wide v21

    .line 3372
    .end local v18    # "headBuf":[B
    .end local v27    # "lnMemIds":[J
    .end local v30    # "lnIdsSize":S
    .end local v31    # "lnBuf":[B
    .restart local v7    # "lnMemIds":[J
    .local v9, "lnIdsSize":S
    .restart local v10    # "lnBuf":[B
    .restart local v33    # "headBuf":[B
    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3282
    .end local v0    # "nEvicted":I
    .end local v21    # "nBytesEvicted":J
    .end local v29    # "bufOffset":I
    .end local v32    # "minExpiration":I
    .end local v33    # "headBuf":[B
    .local v5, "bufOffset":I
    .local v7, "lnIdsSize":S
    .local v9, "minExpiration":I
    .local v10, "headBuf":[B
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private stripLNsFromMainBIN(Lcom/sleepycat/je/tree/BIN;IZ)J
    .locals 9
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "entry"    # I
    .param p3, "pri2"    # Z

    .line 3170
    const/4 v0, 0x0

    .line 3171
    .local v0, "nEvicted":I
    const-wide/16 v1, 0x0

    .line 3172
    .local v1, "nBytesEvicted":J
    const/4 v3, 0x0

    .line 3174
    .local v3, "anyNonExpired":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3175
    invoke-virtual {p1, v4}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 3176
    goto :goto_1

    .line 3178
    :cond_0
    invoke-virtual {p1, v4}, Lcom/sleepycat/je/tree/BIN;->isExpired(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3179
    invoke-virtual {p0, p1, v4}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeLN(Lcom/sleepycat/je/tree/BIN;I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 3180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3182
    :cond_1
    const/4 v3, 0x1

    .line 3174
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3191
    .end local v4    # "i":I
    :cond_2
    const/4 v4, -0x1

    if-lez v0, :cond_4

    .line 3192
    if-eqz v3, :cond_3

    .line 3193
    invoke-virtual {p0, p2, p3}, Lcom/sleepycat/je/evictor/OffHeapCache;->moveBack(IZ)I

    goto :goto_2

    .line 3195
    :cond_3
    invoke-virtual {p1, v4}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLruId(I)V

    .line 3196
    invoke-direct {p0, p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeEntry(I)V

    .line 3199
    :goto_2
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lazyCompress(Lcom/sleepycat/je/tree/IN;)V

    .line 3201
    iget-object v4, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 3202
    iget-object v4, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesStripped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 3203
    return-wide v1

    .line 3209
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 3210
    invoke-virtual {p0, p1, v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeLN(Lcom/sleepycat/je/tree/BIN;I)I

    move-result v6

    .line 3211
    .local v6, "lnBytes":I
    if-nez v6, :cond_5

    .line 3212
    goto :goto_4

    .line 3214
    :cond_5
    int-to-long v7, v6

    add-long/2addr v1, v7

    .line 3215
    add-int/lit8 v0, v0, 0x1

    .line 3209
    .end local v6    # "lnBytes":I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3218
    .end local v5    # "i":I
    :cond_6
    if-lez v0, :cond_7

    .line 3219
    iget-object v5, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 3220
    iget-object v5, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesStripped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_5

    .line 3222
    :cond_7
    iget-object v5, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesSkipped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 3228
    :goto_5
    invoke-virtual {p1, v4}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLruId(I)V

    .line 3229
    invoke-direct {p0, p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeEntry(I)V

    .line 3231
    return-wide v1
.end method

.method private static unpackLnMemIds([BII)[J
    .locals 7
    .param p0, "buf"    # [B
    .param p1, "startOff"    # I
    .param p2, "len"    # I

    .line 2559
    if-lez p2, :cond_7

    .line 2561
    add-int v0, p1, p2

    .line 2562
    .local v0, "endOff":I
    move v1, p1

    .line 2563
    .local v1, "off":I
    const/4 v2, 0x0

    .line 2565
    .local v2, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2567
    aget-byte v3, p0, v1

    .line 2568
    .local v3, "n":I
    add-int/lit8 v1, v1, 0x1

    .line 2570
    if-lez v3, :cond_0

    .line 2571
    mul-int/lit8 v4, v3, 0x8

    add-int/2addr v1, v4

    .line 2572
    add-int/2addr v2, v3

    goto :goto_1

    .line 2574
    :cond_0
    if-gez v3, :cond_1

    .line 2575
    sub-int/2addr v2, v3

    .line 2577
    .end local v3    # "n":I
    :goto_1
    goto :goto_0

    .line 2574
    .restart local v3    # "n":I
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2579
    .end local v3    # "n":I
    :cond_2
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [J

    .line 2580
    .local v3, "ids":[J
    move v1, p1

    .line 2581
    const/4 v2, 0x0

    .line 2583
    :goto_2
    if-ge v1, v0, :cond_6

    .line 2585
    aget-byte v4, p0, v1

    .line 2586
    .local v4, "n":I
    add-int/lit8 v1, v1, 0x1

    .line 2588
    if-lez v4, :cond_3

    .line 2589
    :goto_3
    if-lez v4, :cond_4

    .line 2590
    invoke-static {p0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->getLong([BI)J

    move-result-wide v5

    aput-wide v5, v3, v2

    .line 2591
    add-int/lit8 v1, v1, 0x8

    .line 2592
    add-int/lit8 v2, v2, 0x1

    .line 2593
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 2596
    :cond_3
    if-gez v4, :cond_5

    .line 2597
    sub-int/2addr v2, v4

    .line 2599
    .end local v4    # "n":I
    :cond_4
    goto :goto_2

    .line 2596
    .restart local v4    # "n":I
    :cond_5
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2601
    .end local v4    # "n":I
    :cond_6
    return-object v3

    .line 2559
    .end local v0    # "endOff":I
    .end local v1    # "off":I
    .end local v2    # "i":I
    .end local v3    # "ids":[J
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private wakeUpEvictionThreads()V
    .locals 2

    .line 2858
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->runEvictorThreads:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2867
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->activePoolThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->maxPoolThreads:I

    if-lt v0, v1, :cond_1

    .line 2868
    return-void

    .line 2871
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/sleepycat/je/evictor/OffHeapCache$2;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/evictor/OffHeapCache$2;-><init>(Lcom/sleepycat/je/evictor/OffHeapCache;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2883
    return-void

    .line 2859
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public clearCache(Lcom/sleepycat/je/dbi/EnvironmentImpl;)J
    .locals 10
    .param p1, "matchEnv"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 818
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    .line 820
    .local v0, "myChunks":[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    if-nez v0, :cond_0

    .line 821
    const-wide/16 v1, 0x0

    return-wide v1

    .line 824
    :cond_0
    const-wide/16 v1, 0x0

    .line 826
    .local v1, "size":J
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 828
    .local v5, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    const/4 v6, 0x0

    .local v6, "chunkIdx":I
    :goto_1
    const v7, 0x19000

    if-ge v6, v7, :cond_3

    .line 830
    iget-object v7, v5, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v7, v7, v6

    .line 831
    .local v7, "owner":Lcom/sleepycat/je/tree/IN;
    if-nez v7, :cond_1

    .line 832
    goto :goto_2

    .line 834
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v8

    if-eq v8, p1, :cond_2

    .line 835
    goto :goto_2

    .line 838
    :cond_2
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU()V

    .line 840
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/sleepycat/je/evictor/OffHeapCache;->removeINFromMain(Lcom/sleepycat/je/tree/IN;)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v1, v8

    .line 842
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 843
    nop

    .line 828
    .end local v7    # "owner":Lcom/sleepycat/je/tree/IN;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 842
    .restart local v7    # "owner":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception v3

    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v3

    .line 826
    .end local v5    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v6    # "chunkIdx":I
    .end local v7    # "owner":Lcom/sleepycat/je/tree/IN;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 847
    :cond_4
    return-wide v1
.end method

.method public createBINLogEntryForCheckpoint(Lcom/sleepycat/je/tree/IN;I)Lcom/sleepycat/je/log/entry/INLogEntry;
    .locals 9
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/tree/IN;",
            "I)",
            "Lcom/sleepycat/je/log/entry/INLogEntry<",
            "Lcom/sleepycat/je/tree/BIN;",
            ">;"
        }
    .end annotation

    .line 2067
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v6

    .line 2069
    .local v6, "entry":I
    if-ltz v6, :cond_2

    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINDirty(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2073
    :cond_0
    invoke-direct {p0, v6}, Lcom/sleepycat/je/evictor/OffHeapCache;->getOwner(I)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2075
    invoke-virtual {p0, v6}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemId(I)J

    move-result-wide v7

    .line 2077
    .local v7, "memId":J
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, v7

    move v3, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->createBINLogEntry(JILcom/sleepycat/je/tree/IN;Z)Lcom/sleepycat/je/log/entry/INLogEntry;

    move-result-object v0

    return-object v0

    .line 2073
    .end local v7    # "memId":J
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2070
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public doCriticalEviction(Z)V
    .locals 1
    .param p1, "backgroundIO"    # Z

    .line 2827
    invoke-direct {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->needEviction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2828
    invoke-direct {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->wakeUpEvictionThreads()V

    .line 2830
    invoke-direct {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->needCriticalEviction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2831
    sget-object v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CRITICAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->evictBatch(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;Z)V

    .line 2834
    :cond_0
    return-void
.end method

.method public doDaemonEviction(Z)V
    .locals 1
    .param p1, "backgroundIO"    # Z

    .line 2838
    invoke-direct {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->needEviction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2839
    invoke-direct {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->wakeUpEvictionThreads()V

    .line 2841
    invoke-direct {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->needCriticalEviction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2842
    sget-object v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->DAEMON:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->evictBatch(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;Z)V

    .line 2845
    :cond_0
    return-void
.end method

.method public doManualEvict()V
    .locals 2

    .line 2849
    invoke-virtual {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2850
    return-void

    .line 2853
    :cond_0
    sget-object v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->MANUAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->evictBatch(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;Z)V

    .line 2854
    return-void
.end method

.method public ensureOffHeapLNsInLRU(Lcom/sleepycat/je/tree/BIN;)Z
    .locals 5
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 1244
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1246
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLruId()I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 1247
    return v1

    .line 1250
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->hasOffHeapLNs()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1251
    return v2

    .line 1254
    :cond_1
    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/sleepycat/je/evictor/OffHeapCache;->addBack(ZLcom/sleepycat/je/tree/IN;J)I

    move-result v0

    .line 1255
    .local v0, "entry":I
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLruId(I)V

    .line 1256
    return v1

    .line 1244
    .end local v0    # "entry":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 12
    .param p1, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p2, "ignore"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 743
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_TERMINATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->terminateMillis:I

    .line 746
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_CORE_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 749
    .local v0, "corePoolSize":I
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_MAX_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->maxPoolThreads:I

    .line 752
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_KEEP_ALIVE:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    int-to-long v1, v1

    .line 755
    .local v1, "keepAliveTime":J
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 756
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget v4, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->maxPoolThreads:I

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 757
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 759
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_OFFHEAP_EVICTOR:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->runEvictorThreads:Z

    .line 762
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_OFF_HEAP_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v3

    .line 765
    .local v3, "newMaxMemory":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    iget-wide v10, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->maxMemory:J

    cmp-long v5, v10, v5

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    if-ne v7, v8, :cond_2

    .line 771
    iput-wide v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->maxMemory:J

    .line 772
    iget-object v5, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v5, v3, v4}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->setMaxBytes(J)V

    .line 773
    iput-wide v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->memoryLimit:J

    .line 774
    return-void

    .line 767
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot change off-heap cache size between zero and non-zero"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public evictBINIfLsnMatch(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJ)V
    .locals 4
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "entry"    # I
    .param p3, "lsn"    # J

    .line 1740
    nop

    .line 1741
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/evictor/OffHeapCache;->findBINIfLsnMatches(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJ)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v0

    .line 1743
    .local v0, "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/tree/IN;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 1744
    return-void

    .line 1747
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/IN;

    .line 1748
    .local v1, "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1751
    .local v2, "index":I
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1752
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/IN;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1754
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1755
    nop

    .line 1756
    return-void

    .line 1754
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1751
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/tree/IN;Ljava/lang/Integer;>;"
    .end local v1    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "index":I
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "entry":I
    .end local p3    # "lsn":J
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1754
    .restart local v0    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/tree/IN;Ljava/lang/Integer;>;"
    .restart local v1    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "index":I
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "entry":I
    .restart local p3    # "lsn":J
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v3
.end method

.method flushAndDiscardBINChildren(Lcom/sleepycat/je/tree/IN;Z)Z
    .locals 13
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "backgroundIO"    # Z

    .line 1589
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1590
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1591
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1593
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->hasOffHeapBINIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1594
    const/4 v0, 0x1

    return v0

    .line 1597
    :cond_0
    const/4 v0, 0x1

    .line 1599
    .local v0, "allDiscarded":Z
    const/4 v1, 0x0

    move v11, v1

    .local v11, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v1

    if-ge v11, v1, :cond_3

    .line 1601
    invoke-virtual {p1, v11}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v12

    .line 1602
    .local v12, "entry":I
    if-gez v12, :cond_1

    .line 1603
    goto :goto_1

    .line 1606
    :cond_1
    nop

    .line 1607
    invoke-virtual {p1, v11}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINPri2(I)Z

    move-result v3

    invoke-virtual {p1, v11}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINDirty(I)Z

    move-result v4

    .line 1608
    invoke-virtual {p0, v12}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemId(I)J

    move-result-wide v5

    const/4 v10, 0x1

    .line 1606
    move-object v1, p0

    move v2, v12

    move-object v7, p1

    move v8, v11

    move v9, p2

    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/je/evictor/OffHeapCache;->flushAndDiscardBIN(IZZJLcom/sleepycat/je/tree/IN;IZZ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1609
    const/4 v0, 0x0

    .line 1599
    .end local v12    # "entry":I
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1613
    .end local v11    # "i":I
    :cond_3
    return v0

    .line 1591
    .end local v0    # "allDiscarded":Z
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1590
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1589
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public freeBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/IN;I)J
    .locals 6
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "index"    # I

    .line 1877
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1879
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1881
    :cond_1
    :goto_0
    invoke-virtual {p2, p3}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v0

    .line 1883
    .local v0, "entry":I
    if-gez v0, :cond_2

    .line 1884
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1887
    :cond_2
    invoke-direct {p0, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->getOwner(I)Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    if-ne p2, v1, :cond_4

    .line 1889
    invoke-virtual {p2, p3}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINPri2(I)Z

    move-result v1

    .line 1890
    .local v1, "pri2":Z
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemId(I)J

    move-result-wide v2

    .line 1892
    .local v2, "memId":J
    invoke-virtual {p2, p3}, Lcom/sleepycat/je/tree/IN;->clearOffHeapBINId(I)V

    .line 1893
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->remove(IZ)V

    .line 1900
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    if-nez p1, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-direct {p0, v4, v2, v3, v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;JZ)J

    move-result-wide v4

    return-wide v4

    .line 1887
    .end local v1    # "pri2":Z
    .end local v2    # "memId":J
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1877
    .end local v0    # "entry":I
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public freeLN(Lcom/sleepycat/je/tree/BIN;I)I
    .locals 6
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "index"    # I

    .line 1356
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1358
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v0

    .line 1359
    .local v0, "memId":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 1360
    return v5

    .line 1368
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/tree/LN;

    .line 1369
    .local v4, "ln":Lcom/sleepycat/je/tree/LN;
    if-eqz v4, :cond_1

    .line 1370
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/tree/LN;->setFetchedCold(Z)V

    .line 1373
    :cond_1
    invoke-virtual {p1, p2, v2, v3}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLNId(IJ)V

    .line 1374
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeLN(J)I

    move-result v2

    return v2

    .line 1356
    .end local v0    # "memId":J
    .end local v4    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public freeRedundantLN(Lcom/sleepycat/je/tree/BIN;ILcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/CacheMode;)V
    .locals 6
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "index"    # I
    .param p3, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p4, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 1308
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1310
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v0

    .line 1311
    .local v0, "memId":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1312
    return-void

    .line 1315
    :cond_0
    sget-object v4, Lcom/sleepycat/je/evictor/OffHeapCache$3;->$SwitchMap$com$sleepycat$je$CacheMode:[I

    invoke-virtual {p4}, Lcom/sleepycat/je/CacheMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1333
    goto :goto_1

    .line 1331
    :pswitch_0
    goto :goto_0

    .line 1327
    :pswitch_1
    return-void

    .line 1318
    :pswitch_2
    invoke-virtual {p3}, Lcom/sleepycat/je/tree/LN;->getFetchedCold()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1320
    return-void

    .line 1336
    :cond_1
    :goto_0
    invoke-virtual {p1, p2, v2, v3}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLNId(IJ)V

    .line 1337
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeLN(J)I

    .line 1338
    return-void

    .line 1333
    :goto_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1308
    .end local v0    # "memId":J
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAllocator()Lcom/sleepycat/je/evictor/OffHeapAllocator;
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    return-object v0
.end method

.method public getBINBytes(Lcom/sleepycat/je/tree/IN;I)[B
    .locals 3
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "index"    # I

    .line 1812
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1814
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v0

    .line 1815
    .local v0, "entry":I
    if-gez v0, :cond_0

    .line 1816
    const/4 v1, 0x0

    return-object v1

    .line 1819
    :cond_0
    invoke-direct {p0, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->getOwner(I)Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 1821
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemId(I)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemBytes(J)[B

    move-result-object v1

    return-object v1

    .line 1819
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1812
    .end local v0    # "entry":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getBINInfo(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;
    .locals 13
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "entry"    # I

    .line 2268
    if-ltz p2, :cond_1

    .line 2270
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->useOffHeapChecksums()Z

    move-result v0

    .line 2271
    .local v0, "useChecksums":Z
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2273
    .local v3, "checksumSize":I
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemId(I)J

    move-result-wide v11

    .line 2274
    .local v11, "memId":J
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v1

    new-array v1, v4, [B

    .line 2275
    .local v1, "buf":[B
    iget-object v4, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/4 v7, 0x0

    const/4 v9, 0x0

    array-length v10, v1

    move-wide v5, v11

    move-object v8, v1

    invoke-interface/range {v4 .. v10}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy(JI[BII)V

    .line 2277
    const/4 v4, 0x1

    invoke-direct {p0, p1, v1, v4, v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->parseBINBytes(Lcom/sleepycat/je/dbi/EnvironmentImpl;[BZZ)Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;

    move-result-object v2

    .line 2280
    .local v2, "pb":Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
    new-instance v4, Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;-><init>(Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;Lcom/sleepycat/je/evictor/OffHeapCache$1;)V

    return-object v4

    .line 2268
    .end local v0    # "useChecksums":Z
    .end local v1    # "buf":[B
    .end local v2    # "pb":Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
    .end local v3    # "checksumSize":I
    .end local v11    # "memId":J
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getINSize(Lcom/sleepycat/je/tree/IN;)J
    .locals 17
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    .line 2285
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    .line 2286
    move-object v2, v1

    check-cast v2, Lcom/sleepycat/je/tree/BIN;

    .line 2288
    .local v2, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->hasOffHeapLNs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2289
    return-wide v3

    .line 2292
    :cond_0
    const-wide/16 v5, 0x0

    .line 2294
    .local v5, "size":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 2295
    invoke-virtual {v2, v7}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v8

    .line 2296
    .local v8, "memId":J
    cmp-long v10, v8, v3

    if-nez v10, :cond_1

    .line 2297
    goto :goto_1

    .line 2299
    :cond_1
    iget-object v10, v0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v10, v8, v9}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->totalSize(J)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v5, v10

    .line 2294
    .end local v8    # "memId":J
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2302
    .end local v7    # "i":I
    :cond_2
    return-wide v5

    .line 2305
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v5    # "size":J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    .line 2306
    return-wide v3

    .line 2309
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->hasOffHeapBINIds()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2310
    return-wide v3

    .line 2313
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    .line 2314
    .local v2, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    const-wide/16 v5, 0x0

    .line 2316
    .restart local v5    # "size":J
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 2318
    invoke-virtual {v1, v7}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v8

    .line 2319
    .local v8, "entry":I
    if-gez v8, :cond_6

    .line 2320
    move-object v15, v2

    goto :goto_6

    .line 2323
    :cond_6
    invoke-virtual {v0, v8}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemId(I)J

    move-result-wide v9

    .line 2324
    .local v9, "memId":J
    iget-object v11, v0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v11, v9, v10}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->totalSize(J)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v5, v11

    .line 2326
    invoke-virtual {v1, v7}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 2328
    goto :goto_3

    .line 2331
    :cond_7
    nop

    .line 2332
    invoke-direct {v0, v9, v10}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemBytes(J)[B

    move-result-object v11

    .line 2331
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct {v0, v2, v11, v12, v13}, Lcom/sleepycat/je/evictor/OffHeapCache;->parseBINBytes(Lcom/sleepycat/je/dbi/EnvironmentImpl;[BZZ)Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;

    move-result-object v11

    .line 2335
    .local v11, "pb":Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
    iget-object v13, v11, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lnMemIds:[J

    if-nez v13, :cond_8

    .line 2336
    nop

    .line 2316
    .end local v8    # "entry":I
    .end local v9    # "memId":J
    .end local v11    # "pb":Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
    :goto_3
    move-object v15, v2

    goto :goto_6

    .line 2339
    .restart local v8    # "entry":I
    .restart local v9    # "memId":J
    .restart local v11    # "pb":Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
    :cond_8
    iget-object v13, v11, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lnMemIds:[J

    array-length v14, v13

    :goto_4
    if-ge v12, v14, :cond_a

    move-object v15, v2

    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v15, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    aget-wide v1, v13, v12

    .line 2340
    .local v1, "lnMemId":J
    cmp-long v16, v1, v3

    if-nez v16, :cond_9

    .line 2341
    goto :goto_5

    .line 2343
    :cond_9
    iget-object v3, v0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v3, v1, v2}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->totalSize(J)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v5, v3

    .line 2339
    .end local v1    # "lnMemId":J
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object v2, v15

    const-wide/16 v3, 0x0

    goto :goto_4

    .end local v15    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_a
    move-object v15, v2

    .line 2316
    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v8    # "entry":I
    .end local v9    # "memId":J
    .end local v11    # "pb":Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
    .restart local v15    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object v2, v15

    const-wide/16 v3, 0x0

    goto :goto_2

    .line 2347
    .end local v7    # "i":I
    .end local v15    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_b
    return-wide v5
.end method

.method public getMaxMemory()J
    .locals 2

    .line 898
    iget-wide v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->maxMemory:J

    return-wide v0
.end method

.method public getMemId(I)J
    .locals 4
    .param p1, "entry"    # I

    .line 1074
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    const v1, 0x19000

    div-int v2, p1, v1

    aget-object v0, v0, v2

    .line 1075
    .local v0, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v1, p1, v1

    .line 1077
    .local v1, "chunkIdx":I
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->memIds:[J

    aget-wide v2, v2, v1

    return-wide v2
.end method

.method public getUsedMemory()J
    .locals 2

    .line 902
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v0}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->getUsedBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public haveBINBytesChanged(Lcom/sleepycat/je/tree/IN;I[B)Z
    .locals 1
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "index"    # I
    .param p3, "bytes"    # [B

    .line 1842
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1844
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->getBINBytes(Lcom/sleepycat/je/tree/IN;I)[B

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1842
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    sget-object v1, Lcom/sleepycat/je/evictor/DummyAllocator;->INSTANCE:Lcom/sleepycat/je/evictor/DummyAllocator;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)Lcom/sleepycat/je/tree/BIN;
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "entry"    # I

    .line 1686
    if-ltz p2, :cond_0

    .line 1688
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemId(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->materializeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    return-object v0

    .line 1686
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public loadBINIfLsnMatches(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJ)Lcom/sleepycat/je/tree/BIN;
    .locals 7
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "entry"    # I
    .param p3, "lsn"    # J

    .line 1708
    nop

    .line 1709
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/evictor/OffHeapCache;->findBINIfLsnMatches(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJ)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v0

    .line 1711
    .local v0, "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/tree/IN;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 1712
    const/4 v1, 0x0

    return-object v1

    .line 1715
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/IN;

    .line 1716
    .local v1, "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1719
    .local v2, "index":I
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/BIN;

    .line 1720
    .local v3, "bin":Lcom/sleepycat/je/tree/BIN;
    if-eqz v3, :cond_1

    .line 1721
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
    nop

    .line 1732
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1722
    return-object v3

    .line 1725
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemId(I)J

    move-result-wide v4

    .line 1726
    .local v4, "memId":J
    invoke-direct {p0, v4, v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemBytes(J)[B

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/sleepycat/je/evictor/OffHeapCache;->materializeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/BIN;

    move-result-object v6

    move-object v3, v6

    .line 1727
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1729
    nop

    .line 1732
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1729
    return-object v3

    .line 1732
    .end local v3    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v4    # "memId":J
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v3
.end method

.method public loadLN(Lcom/sleepycat/je/tree/BIN;ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;
    .locals 7
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "index"    # I
    .param p3, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 1263
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1265
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v0

    .line 1266
    .local v0, "memId":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1267
    const/4 v2, 0x0

    return-object v2

    .line 1270
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    invoke-direct {p0, v4, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->materializeLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;J)Lcom/sleepycat/je/tree/LN;

    move-result-object v4

    .line 1272
    .local v4, "ln":Lcom/sleepycat/je/tree/LN;
    sget-object v5, Lcom/sleepycat/je/evictor/OffHeapCache$3;->$SwitchMap$com$sleepycat$je$CacheMode:[I

    invoke-virtual {p3}, Lcom/sleepycat/je/CacheMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1290
    goto :goto_1

    .line 1286
    :pswitch_0
    invoke-virtual {p1, p2, v2, v3}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLNId(IJ)V

    .line 1287
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeLN(J)I

    .line 1288
    goto :goto_0

    .line 1280
    :pswitch_1
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLruId()I

    move-result v2

    if-ltz v2, :cond_1

    .line 1281
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLruId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->moveBack(IZ)I

    .line 1282
    goto :goto_0

    .line 1280
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1276
    :pswitch_2
    nop

    .line 1300
    :goto_0
    return-object v4

    .line 1290
    :goto_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1263
    .end local v0    # "memId":J
    .end local v4    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 5
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 852
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "OffHeap"

    const-string v2, "The optional off-heap cache resides outside the Java heap and serves as an overflow area for the main cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    .local v0, "stats":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->ALLOC_FAILURE:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nAllocFailure:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 855
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->ALLOC_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nAllocOverflow:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 856
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->THREAD_UNAVAILABLE:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nThreadUnavailable:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 857
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CRITICAL_NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nCriticalNodesTargeted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 858
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesTargeted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 859
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 860
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->DIRTY_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nDirtyNodesEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 861
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_STRIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesStripped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 862
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_MUTATED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesMutated:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 863
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_SKIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesSkipped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 864
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LNS_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 865
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LNS_LOADED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsLoaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 866
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LNS_STORED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsStored:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 867
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->BINS_LOADED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nBINsLoaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 868
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->BINS_STORED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nBINsStored:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 869
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CACHED_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->cachedLNs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 870
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CACHED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->cachedBINs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 871
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CACHED_BIN_DELTAS:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->cachedBINDeltas:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 872
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    invoke-interface {v3}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->getUsedBytes()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 873
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->TOTAL_BLOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->totalBlocks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 874
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->lruSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 876
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nAllocFailure:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 878
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nAllocOverflow:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 879
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nThreadUnavailable:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 880
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nCriticalNodesTargeted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 881
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesTargeted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 882
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 883
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nDirtyNodesEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 884
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesStripped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 885
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesMutated:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 886
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nNodesSkipped:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 887
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsEvicted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 888
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsLoaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 889
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nLNsStored:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 890
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nBINsLoaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 891
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nBINsStored:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 894
    :cond_0
    return-object v0
.end method

.method public loadVLSN(Lcom/sleepycat/je/tree/BIN;I)J
    .locals 7
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "index"    # I

    .line 1342
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCacheVLSN()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    .line 1343
    return-wide v1

    .line 1346
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v3

    .line 1347
    .local v3, "memId":J
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 1348
    return-wide v1

    .line 1351
    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->getLong(JI[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public materializeBIN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/BIN;
    .locals 4
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "buf"    # [B

    .line 2028
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->parseBINBytes(Lcom/sleepycat/je/dbi/EnvironmentImpl;[BZZ)Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;

    move-result-object v2

    .line 2031
    .local v2, "pb":Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
    iget v3, v2, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->flags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->materializeBIN(Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;Z)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    .line 2033
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->nBINsLoaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 2035
    return-object v0
.end method

.method public moveBack(IZ)I
    .locals 2
    .param p1, "entry"    # I
    .param p2, "pri2"    # Z

    .line 952
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->numLRULists:I

    rem-int v0, p1, v0

    .line 953
    .local v0, "lruIdx":I
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->pri2LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    aget-object v1, v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->pri1LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    aget-object v1, v1, v0

    .line 956
    .local v1, "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    :goto_0
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->moveBack(I)V

    .line 958
    return p1
.end method

.method public mutateToBINDelta(Lcom/sleepycat/je/tree/IN;I)J
    .locals 10
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "index"    # I

    .line 3441
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3442
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3444
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v0

    .line 3445
    .local v0, "entry":I
    if-gez v0, :cond_0

    .line 3446
    const-wide/16 v1, 0x0

    return-wide v1

    .line 3449
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    const v2, 0x19000

    div-int v3, v0, v2

    aget-object v8, v1, v3

    .line 3450
    .local v8, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v9, v0, v2

    .line 3452
    .local v9, "chunkIdx":I
    nop

    .line 3453
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    .line 3454
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINPri2(I)Z

    move-result v5

    .line 3452
    move-object v1, p0

    move v4, v0

    move-object v6, v8

    move v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/evictor/OffHeapCache;->mutateToBINDelta(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;IZLcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)J

    move-result-wide v1

    return-wide v1

    .line 3442
    .end local v0    # "entry":I
    .end local v8    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v9    # "chunkIdx":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3441
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public postBINLoad(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/BIN;)V
    .locals 5
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "index"    # I
    .param p3, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 1849
    invoke-virtual {p3}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1850
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1851
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1852
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1854
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v0

    .line 1855
    .local v0, "entry":I
    if-ltz v0, :cond_2

    .line 1856
    invoke-direct {p0, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->getOwner(I)Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 1858
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINDirty(I)Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/sleepycat/je/tree/BIN;->setDirty(Z)V

    .line 1860
    invoke-virtual {p0, p3, p1, p2}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/IN;I)J

    move-result-wide v1

    .line 1861
    .local v1, "freed":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 1863
    invoke-virtual {p0, p3}, Lcom/sleepycat/je/evictor/OffHeapCache;->ensureOffHeapLNsInLRU(Lcom/sleepycat/je/tree/BIN;)Z

    .line 1873
    return-void

    .line 1861
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1856
    .end local v1    # "freed":J
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1855
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1852
    .end local v0    # "entry":I
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1851
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1850
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1849
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public postBINLog(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/log/entry/INLogEntry;J)V
    .locals 21
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "index"    # I
    .param p4, "newLsn"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/tree/IN;",
            "I",
            "Lcom/sleepycat/je/log/entry/INLogEntry<",
            "Lcom/sleepycat/je/tree/BIN;",
            ">;J)V"
        }
    .end annotation

    .line 2086
    .local p3, "logEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<Lcom/sleepycat/je/tree/BIN;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2087
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2089
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    .line 2090
    .local v1, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->useOffHeapChecksums()Z

    move-result v2

    .line 2091
    .local v2, "useChecksums":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2093
    .local v4, "checksumSize":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/INLogEntry;->isBINDelta()Z

    move-result v5

    .line 2094
    .local v5, "isDelta":Z
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v6

    .line 2096
    .local v6, "entry":I
    if-ltz v6, :cond_a

    .line 2097
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINDirty(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2099
    nop

    .line 2100
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/INLogEntry;->isPreSerialized()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/entry/INLogEntry;->getMainItem()Lcom/sleepycat/je/tree/IN;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/tree/BIN;

    .line 2105
    .local v7, "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_1
    invoke-virtual {v0, v6}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemId(I)J

    move-result-wide v15

    .line 2106
    .local v15, "memId":J
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v8, v8, 0x8

    new-array v14, v8, [B

    .line 2107
    .local v14, "buf":[B
    iget-object v8, v0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/4 v11, 0x0

    const/4 v13, 0x0

    array-length v12, v14

    move-wide v9, v15

    move/from16 v17, v12

    move-object v12, v14

    move-object/from16 v18, v1

    move-object v1, v14

    .end local v14    # "buf":[B
    .local v1, "buf":[B
    .local v18, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    move/from16 v14, v17

    invoke-interface/range {v8 .. v14}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy(JI[BII)V

    .line 2108
    const/4 v8, 0x0

    .line 2111
    .local v8, "bufOffset":I
    if-eqz v2, :cond_2

    .line 2112
    invoke-static {v3, v1, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->putInt(I[BI)V

    .line 2113
    add-int/2addr v8, v4

    .line 2117
    :cond_2
    aget-byte v9, v1, v8

    .line 2118
    .local v9, "flags":I
    if-nez v5, :cond_3

    .line 2119
    or-int/lit8 v9, v9, 0x8

    .line 2121
    :cond_3
    and-int/lit8 v14, v9, -0x5

    .line 2122
    .end local v9    # "flags":I
    .local v14, "flags":I
    int-to-byte v9, v14

    aput-byte v9, v1, v8

    .line 2123
    add-int/lit8 v8, v8, 0x1

    .line 2126
    if-nez v5, :cond_4

    .line 2127
    move-wide/from16 v11, p4

    invoke-static {v11, v12, v1, v8}, Lcom/sleepycat/je/evictor/OffHeapCache;->putLong(J[BI)V

    goto :goto_2

    .line 2126
    :cond_4
    move-wide/from16 v11, p4

    .line 2129
    :goto_2
    add-int/lit8 v8, v8, 0x8

    .line 2132
    if-eqz v5, :cond_5

    move-wide v9, v11

    goto :goto_3

    :cond_5
    const-wide/16 v9, -0x1

    :goto_3
    invoke-static {v9, v10, v1, v8}, Lcom/sleepycat/je/evictor/OffHeapCache;->putLong(J[BI)V

    .line 2133
    add-int/lit8 v13, v8, 0x8

    .line 2134
    .end local v8    # "bufOffset":I
    .local v13, "bufOffset":I
    array-length v8, v1

    if-ne v13, v8, :cond_8

    .line 2136
    iget-object v8, v0, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/4 v10, 0x0

    const/16 v17, 0x0

    array-length v9, v1

    move/from16 v19, v9

    move-object v9, v1

    move-wide v11, v15

    move/from16 v20, v13

    .end local v13    # "bufOffset":I
    .local v20, "bufOffset":I
    move/from16 v13, v17

    move/from16 v17, v14

    .end local v14    # "flags":I
    .local v17, "flags":I
    move/from16 v14, v19

    invoke-interface/range {v8 .. v14}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy([BIJII)V

    .line 2139
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINPri2(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2140
    iget-object v8, v0, Lcom/sleepycat/je/evictor/OffHeapCache;->pri2LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    iget v9, v0, Lcom/sleepycat/je/evictor/OffHeapCache;->numLRULists:I

    rem-int v9, v6, v9

    aget-object v8, v8, v9

    invoke-virtual {v8, v6}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->remove(I)V

    .line 2141
    invoke-virtual {v0, v6, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->moveBack(IZ)I

    .line 2144
    :cond_6
    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual {v8, v9, v6, v3, v3}, Lcom/sleepycat/je/tree/IN;->setOffHeapBINId(IIZZ)V

    .line 2147
    if-eqz v7, :cond_7

    .line 2148
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 2150
    :cond_7
    return-void

    .line 2134
    .end local v17    # "flags":I
    .end local v20    # "bufOffset":I
    .restart local v13    # "bufOffset":I
    .restart local v14    # "flags":I
    :cond_8
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2097
    .end local v7    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v13    # "bufOffset":I
    .end local v14    # "flags":I
    .end local v15    # "memId":J
    .end local v18    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v1, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_9
    move-object/from16 v18, v1

    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v18    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2096
    .end local v18    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_a
    move-object/from16 v18, v1

    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v18    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2087
    .end local v2    # "useChecksums":Z
    .end local v4    # "checksumSize":I
    .end local v5    # "isDelta":Z
    .end local v6    # "entry":I
    .end local v18    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_b
    move-object/from16 v8, p1

    move/from16 v9, p2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2086
    :cond_c
    move-object/from16 v8, p1

    move/from16 v9, p2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public preallocateLRUEntries()V
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    if-nez v0, :cond_0

    .line 912
    invoke-direct {p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->allocateEntry()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeEntry(I)V

    .line 914
    :cond_0
    return-void
.end method

.method public removeINFromMain(Lcom/sleepycat/je/tree/IN;)J
    .locals 8
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    .line 1626
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1628
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v0

    .line 1630
    .local v0, "level":I
    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1631
    return-wide v2

    .line 1634
    :cond_0
    if-ne v0, v1, :cond_6

    .line 1636
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->hasOffHeapBINIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1637
    return-wide v2

    .line 1640
    :cond_1
    const-wide/16 v1, 0x0

    .line 1642
    .local v1, "size":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1644
    invoke-virtual {p1, v3}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/tree/BIN;

    .line 1646
    .local v4, "bin":Lcom/sleepycat/je/tree/BIN;
    if-eqz v4, :cond_2

    .line 1647
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU()V

    .line 1650
    :cond_2
    :try_start_0
    invoke-virtual {p0, v4, p1, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/IN;I)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v1, v5

    .line 1652
    if-eqz v4, :cond_3

    .line 1653
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1642
    .end local v4    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1652
    .restart local v4    # "bin":Lcom/sleepycat/je/tree/BIN;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_4

    .line 1653
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    :cond_4
    throw v5

    .line 1658
    .end local v3    # "i":I
    .end local v4    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_5
    return-wide v1

    .line 1661
    .end local v1    # "size":J
    :cond_6
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1663
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/tree/BIN;

    .line 1665
    .local v1, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLruId()I

    move-result v4

    .line 1666
    .local v4, "entry":I
    if-gez v4, :cond_8

    .line 1667
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->hasOffHeapLNs()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1668
    return-wide v2

    .line 1667
    :cond_7
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1671
    :cond_8
    const-wide/16 v2, 0x0

    .line 1673
    .local v2, "size":J
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->hasOffHeapLNs()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1674
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 1675
    invoke-virtual {p0, v1, v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeLN(Lcom/sleepycat/je/tree/BIN;I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 1674
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1679
    .end local v5    # "i":I
    :cond_9
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLruId(I)V

    .line 1680
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->remove(IZ)V

    .line 1681
    return-wide v2

    .line 1661
    .end local v1    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v2    # "size":J
    .end local v4    # "entry":I
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1626
    .end local v0    # "level":I
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public requestShutdown()V
    .locals 2

    .line 777
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->shutdownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 778
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 779
    return-void
.end method

.method serializeBIN(Lcom/sleepycat/je/tree/BIN;Z)J
    .locals 28
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "asDelta"    # Z

    .line 1941
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->hasCachedChildren()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1942
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1944
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v9

    .line 1945
    .local v9, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->useOffHeapChecksums()Z

    move-result v10

    .line 1946
    .local v10, "useChecksums":Z
    const/4 v1, 0x4

    if-eqz v10, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move v11, v2

    .line 1947
    .local v11, "checksumSize":I
    const/4 v2, 0x1

    if-nez v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->canMutateToBINDelta()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    move v12, v3

    .line 1949
    .local v12, "canMutate":Z
    const/4 v3, 0x0

    .line 1951
    .local v3, "flags":I
    if-eqz v8, :cond_4

    .line 1952
    or-int/lit8 v3, v3, 0x1

    .line 1954
    :cond_4
    if-eqz v12, :cond_5

    .line 1955
    or-int/lit8 v3, v3, 0x2

    .line 1957
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->getProhibitNextDelta()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1958
    or-int/lit8 v3, v3, 0x4

    move v13, v3

    goto :goto_3

    .line 1957
    :cond_6
    move v13, v3

    .line 1961
    .end local v3    # "flags":I
    .local v13, "flags":I
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->getPackedLnMemIdSize(Lcom/sleepycat/je/tree/BIN;)S

    move-result v14

    .line 1967
    .local v14, "lnIdSize":S
    if-eqz v8, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v3

    if-nez v3, :cond_8

    if-nez v14, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1969
    :cond_8
    :goto_4
    add-int/lit8 v3, v11, 0x1

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v14

    .line 1971
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/BIN;->getLogSize(Z)I

    move-result v4

    add-int v15, v3, v4

    .line 1973
    .local v15, "memSize":I
    invoke-direct {v6, v9, v15}, Lcom/sleepycat/je/evictor/OffHeapCache;->allocateMemory(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)J

    move-result-wide v23

    .line 1975
    .local v23, "memId":J
    const-wide/16 v3, 0x0

    cmp-long v5, v23, v3

    if-nez v5, :cond_9

    .line 1976
    return-wide v3

    .line 1979
    :cond_9
    new-array v5, v15, [B

    .line 1980
    .local v5, "buf":[B
    move v3, v11

    .line 1982
    .local v3, "bufOffset":I
    int-to-byte v4, v13

    aput-byte v4, v5, v3

    .line 1983
    add-int/2addr v3, v2

    .line 1985
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v0

    invoke-static {v0, v1, v5, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->putLong(J[BI)V

    .line 1986
    add-int/lit8 v3, v3, 0x8

    .line 1988
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->getLastDeltaLsn()J

    move-result-wide v0

    invoke-static {v0, v1, v5, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->putLong(J[BI)V

    .line 1989
    add-int/lit8 v3, v3, 0x8

    .line 1991
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMinExpiration(Lcom/sleepycat/je/tree/BIN;)I

    move-result v0

    invoke-static {v0, v5, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->putInt(I[BI)V

    .line 1992
    const/4 v0, 0x4

    add-int/2addr v3, v0

    .line 1994
    invoke-static {v14, v5, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->putShort(S[BI)V

    .line 1995
    add-int/lit8 v3, v3, 0x2

    .line 1997
    if-lez v14, :cond_a

    .line 1998
    invoke-static {v7, v5, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->packLnMemIds(Lcom/sleepycat/je/tree/BIN;[BI)V

    .line 1999
    add-int/2addr v3, v14

    move v4, v3

    goto :goto_5

    .line 1997
    :cond_a
    move v4, v3

    .line 2002
    .end local v3    # "bufOffset":I
    .local v4, "bufOffset":I
    :goto_5
    array-length v0, v5

    sub-int/2addr v0, v4

    .line 2003
    invoke-static {v5, v4, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2005
    .local v3, "byteBuf":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    invoke-virtual {v7, v3, v8, v0}, Lcom/sleepycat/je/tree/BIN;->serialize(Ljava/nio/ByteBuffer;ZZ)V

    .line 2007
    if-eqz v10, :cond_b

    .line 2008
    invoke-static {}, Lcom/sleepycat/je/utilint/Adler32;->makeChecksum()Ljava/util/zip/Checksum;

    move-result-object v2

    .line 2009
    .local v2, "checksum":Ljava/util/zip/Checksum;
    array-length v0, v5

    sub-int/2addr v0, v11

    invoke-interface {v2, v5, v11, v0}, Ljava/util/zip/Checksum;->update([BII)V

    .line 2010
    invoke-interface {v2}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    .line 2011
    .local v1, "checksumValue":I
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v17, v1

    .end local v1    # "checksumValue":I
    .local v17, "checksumValue":I
    move-object/from16 v18, v2

    move-object/from16 v25, v3

    .end local v2    # "checksum":Ljava/util/zip/Checksum;
    .end local v3    # "byteBuf":Ljava/nio/ByteBuffer;
    .local v18, "checksum":Ljava/util/zip/Checksum;
    .local v25, "byteBuf":Ljava/nio/ByteBuffer;
    move-wide/from16 v2, v23

    move/from16 v26, v4

    .end local v4    # "bufOffset":I
    .local v26, "bufOffset":I
    move/from16 v4, v16

    move-object/from16 v27, v5

    .end local v5    # "buf":[B
    .local v27, "buf":[B
    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->putInt(IJI[B)V

    goto :goto_6

    .line 2007
    .end local v17    # "checksumValue":I
    .end local v18    # "checksum":Ljava/util/zip/Checksum;
    .end local v25    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v26    # "bufOffset":I
    .end local v27    # "buf":[B
    .restart local v3    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v4    # "bufOffset":I
    .restart local v5    # "buf":[B
    :cond_b
    move-object/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v27, v5

    .line 2014
    .end local v3    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v4    # "bufOffset":I
    .end local v5    # "buf":[B
    .restart local v25    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v26    # "bufOffset":I
    .restart local v27    # "buf":[B
    :goto_6
    iget-object v0, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->allocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, v27

    .end local v27    # "buf":[B
    .local v1, "buf":[B
    array-length v2, v1

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-wide/from16 v19, v23

    move/from16 v22, v2

    invoke-interface/range {v16 .. v22}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->copy([BIJII)V

    .line 2016
    iget-object v0, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->nBINsStored:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 2017
    iget-object v0, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->cachedBINs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2018
    if-eqz v8, :cond_c

    .line 2019
    iget-object v0, v6, Lcom/sleepycat/je/evictor/OffHeapCache;->cachedBINDeltas:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2022
    :cond_c
    return-wide v23

    .line 1941
    .end local v1    # "buf":[B
    .end local v9    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v10    # "useChecksums":Z
    .end local v11    # "checksumSize":I
    .end local v12    # "canMutate":Z
    .end local v13    # "flags":I
    .end local v14    # "lnIdSize":S
    .end local v15    # "memSize":I
    .end local v23    # "memId":J
    .end local v25    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v26    # "bufOffset":I
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setOwner(ILcom/sleepycat/je/tree/IN;)V
    .locals 3
    .param p1, "entry"    # I
    .param p2, "owner"    # Lcom/sleepycat/je/tree/IN;

    .line 1090
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1092
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    const v1, 0x19000

    div-int v2, p1, v1

    aget-object v0, v0, v2

    .line 1093
    .local v0, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v1, p1, v1

    .line 1095
    .local v1, "chunkIdx":I
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 1096
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1098
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aput-object p2, v2, v1

    .line 1099
    return-void

    .line 1096
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1095
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1090
    .end local v0    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v1    # "chunkIdx":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public shutdown()V
    .locals 6

    .line 783
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->shutdownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 784
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 786
    const/4 v0, 0x0

    .line 788
    .local v0, "shutdownFinished":Z
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->terminateMillis:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 793
    if-nez v0, :cond_1

    .line 794
    goto :goto_0

    .line 793
    :catchall_0
    move-exception v2

    if-nez v0, :cond_0

    .line 794
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 797
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->clearCache(Lcom/sleepycat/je/dbi/EnvironmentImpl;)J

    .line 802
    iput-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    throw v2

    .line 790
    :catch_0
    move-exception v2

    .line 793
    if-nez v0, :cond_1

    .line 794
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->evictionPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 797
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->clearCache(Lcom/sleepycat/je/dbi/EnvironmentImpl;)J

    .line 802
    iput-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    .line 803
    nop

    .line 804
    return-void
.end method

.method public storeEvictedBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/IN;I)Z
    .locals 7
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "index"    # I

    .line 1489
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1490
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1491
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1492
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1493
    invoke-virtual {p2, p3}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 1494
    invoke-virtual {p2, p3}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 1496
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1504
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getFetchedCold()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1505
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getFetchedColdOffHeap()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1506
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getDirty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1507
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1508
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbType;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1514
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->serializeBIN(Lcom/sleepycat/je/tree/BIN;Z)J

    move-result-wide v3

    .line 1515
    .local v3, "memId":J
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 1516
    return v2

    .line 1525
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLruId()I

    move-result v1

    .line 1526
    .local v1, "entry":I
    if-ltz v1, :cond_3

    .line 1527
    invoke-direct {p0, v1, p2, v3, v4}, Lcom/sleepycat/je/evictor/OffHeapCache;->setOwnerAndMemId(ILcom/sleepycat/je/tree/IN;J)V

    .line 1528
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->clearOffHeapLNIds()V

    .line 1529
    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLruId(I)V

    goto :goto_0

    .line 1531
    :cond_3
    invoke-direct {p0, v2, p2, v3, v4}, Lcom/sleepycat/je/evictor/OffHeapCache;->addBack(ZLcom/sleepycat/je/tree/IN;J)I

    move-result v1

    .line 1534
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getDirty()Z

    move-result v5

    invoke-virtual {p2, p3, v1, v2, v5}, Lcom/sleepycat/je/tree/IN;->setOffHeapBINId(IIZZ)V

    .line 1545
    const/4 v2, 0x1

    return v2

    .line 1509
    .end local v1    # "entry":I
    .end local v3    # "memId":J
    :cond_4
    :goto_1
    return v2

    .line 1494
    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1493
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1492
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1491
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1490
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1489
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public storeEvictedLN(Lcom/sleepycat/je/tree/BIN;ILcom/sleepycat/je/tree/LN;)Z
    .locals 8
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "index"    # I
    .param p3, "ln"    # Lcom/sleepycat/je/tree/LN;

    .line 1124
    invoke-virtual {p3}, Lcom/sleepycat/je/tree/LN;->isDirty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1125
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1126
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1128
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1130
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v1

    .line 1131
    .local v1, "memId":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 1132
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLruId()I

    move-result v3

    if-ltz v3, :cond_1

    .line 1138
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getFetchedCold()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1139
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLruId()I

    move-result v3

    invoke-virtual {p0, v3, v7}, Lcom/sleepycat/je/evictor/OffHeapCache;->moveBack(IZ)I

    .line 1149
    :cond_0
    return v6

    .line 1132
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1160
    :cond_2
    invoke-virtual {p3}, Lcom/sleepycat/je/tree/LN;->getFetchedCold()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1161
    invoke-virtual {p3}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1162
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1163
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1164
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1165
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DbType;->isInternal()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 1169
    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    invoke-direct {p0, v5, p3}, Lcom/sleepycat/je/evictor/OffHeapCache;->serializeLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/tree/LN;)J

    move-result-wide v1

    .line 1170
    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    .line 1171
    return v7

    .line 1174
    :cond_4
    invoke-virtual {p1, p2, v1, v2}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLNId(IJ)V

    .line 1177
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLruId()I

    move-result v5

    .line 1178
    .local v5, "entry":I
    if-gez v5, :cond_5

    .line 1179
    invoke-direct {p0, v7, p1, v3, v4}, Lcom/sleepycat/je/evictor/OffHeapCache;->addBack(ZLcom/sleepycat/je/tree/IN;J)I

    move-result v5

    .line 1180
    invoke-virtual {p1, v5}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLruId(I)V

    goto :goto_0

    .line 1182
    :cond_5
    invoke-virtual {p0, v5, v7}, Lcom/sleepycat/je/evictor/OffHeapCache;->moveBack(IZ)I

    .line 1192
    :goto_0
    return v6

    .line 1166
    .end local v5    # "entry":I
    :cond_6
    :goto_1
    return v7

    .line 1126
    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "memId":J
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1125
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1124
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public storePreloadedBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/IN;I)Z
    .locals 6
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "index"    # I

    .line 1556
    if-eqz p1, :cond_6

    .line 1557
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1558
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1559
    invoke-virtual {p2, p3}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1561
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1563
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1564
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbType;->isInternal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1567
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeBIN(Lcom/sleepycat/je/tree/BIN;Lcom/sleepycat/je/tree/IN;I)J

    .line 1569
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->serializeBIN(Lcom/sleepycat/je/tree/BIN;Z)J

    move-result-wide v1

    .line 1570
    .local v1, "memId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1571
    return v4

    .line 1574
    :cond_0
    invoke-direct {p0, v4, p2, v1, v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->addBack(ZLcom/sleepycat/je/tree/IN;J)I

    move-result v3

    .line 1575
    .local v3, "entry":I
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getDirty()Z

    move-result v5

    invoke-virtual {p2, p3, v3, v4, v5}, Lcom/sleepycat/je/tree/IN;->setOffHeapBINId(IIZZ)V

    .line 1577
    const/4 v4, 0x1

    return v4

    .line 1564
    .end local v1    # "memId":J
    .end local v3    # "entry":I
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1563
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1559
    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1558
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1557
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1556
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public storePreloadedLN(Lcom/sleepycat/je/tree/BIN;ILcom/sleepycat/je/tree/LN;)Z
    .locals 8
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "index"    # I
    .param p3, "ln"    # Lcom/sleepycat/je/tree/LN;

    .line 1202
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1204
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {p3}, Lcom/sleepycat/je/tree/LN;->isDirty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1205
    invoke-virtual {p3}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1206
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1207
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1208
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1209
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1210
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1211
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbType;->isInternal()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1213
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1214
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getInListResident()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    return v2

    .line 1214
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1218
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/sleepycat/je/evictor/OffHeapCache;->serializeLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/tree/LN;)J

    move-result-wide v5

    .line 1219
    .local v5, "memId":J
    cmp-long v1, v5, v3

    const/4 v7, 0x0

    if-nez v1, :cond_2

    .line 1220
    return v7

    .line 1223
    :cond_2
    invoke-virtual {p1, p2, v5, v6}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLNId(IJ)V

    .line 1225
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getInListResident()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1227
    return v2

    .line 1231
    :cond_3
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLruId()I

    move-result v1

    .line 1232
    .local v1, "entry":I
    if-gez v1, :cond_4

    .line 1233
    invoke-direct {p0, v7, p1, v3, v4}, Lcom/sleepycat/je/evictor/OffHeapCache;->addBack(ZLcom/sleepycat/je/tree/IN;J)I

    move-result v1

    .line 1234
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLruId(I)V

    goto :goto_0

    .line 1236
    :cond_4
    invoke-virtual {p0, v1, v7}, Lcom/sleepycat/je/evictor/OffHeapCache;->moveBack(IZ)I

    .line 1239
    :goto_0
    return v2

    .line 1211
    .end local v1    # "entry":I
    .end local v5    # "memId":J
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1210
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1209
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1208
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1207
    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1206
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1205
    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1204
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public stripLNs(Lcom/sleepycat/je/tree/IN;I)J
    .locals 19
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "index"    # I

    .line 3236
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3237
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3239
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v0

    .line 3240
    .local v0, "entry":I
    if-ltz v0, :cond_0

    .line 3242
    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/sleepycat/je/evictor/OffHeapCache;->chunks:[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    const v2, 0x19000

    div-int v3, v0, v2

    aget-object v13, v1, v3

    .line 3243
    .local v13, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v14, v0, v2

    .line 3245
    .local v14, "chunkIdx":I
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINPri2(I)Z

    move-result v15

    .line 3246
    .local v15, "pri2":Z
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINDirty(I)Z

    move-result v16

    .line 3247
    .local v16, "dirty":Z
    iget-object v1, v13, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->memIds:[J

    aget-wide v17, v1, v14

    .line 3249
    .local v17, "memId":J
    const/4 v11, 0x0

    move-object/from16 v1, p0

    move v2, v0

    move v3, v15

    move/from16 v4, v16

    move-wide/from16 v5, v17

    move-object v7, v13

    move v8, v14

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v1 .. v11}, Lcom/sleepycat/je/evictor/OffHeapCache;->stripLNs(IZZJLcom/sleepycat/je/evictor/OffHeapCache$Chunk;ILcom/sleepycat/je/tree/IN;IZ)J

    move-result-wide v1

    return-wide v1

    .line 3240
    .end local v13    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v14    # "chunkIdx":I
    .end local v15    # "pri2":Z
    .end local v16    # "dirty":Z
    .end local v17    # "memId":J
    :cond_0
    move-object/from16 v12, p0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3237
    .end local v0    # "entry":I
    :cond_1
    move-object/from16 v12, p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3236
    :cond_2
    move-object/from16 v12, p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method testEvictMainBIN(Lcom/sleepycat/je/tree/BIN;)J
    .locals 8
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 3557
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLruId()I

    move-result v6

    .line 3558
    .local v6, "entry":I
    if-ltz v6, :cond_0

    .line 3560
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->pri1LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    iget v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->numLRULists:I

    rem-int v1, v6, v1

    aget-object v7, v0, v1

    .line 3561
    .local v7, "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    invoke-virtual {v7, v6}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->remove(I)V

    .line 3563
    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->MANUAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v6

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->evictOne(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;ZILcom/sleepycat/je/evictor/OffHeapCache$LRUList;Z)J

    move-result-wide v0

    return-wide v0

    .line 3558
    .end local v7    # "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method testEvictOffHeapBIN(Lcom/sleepycat/je/tree/IN;I)J
    .locals 10
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "index"    # I

    .line 3570
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v6

    .line 3571
    .local v6, "entry":I
    if-ltz v6, :cond_1

    .line 3573
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/IN;->isOffHeapBINPri2(I)Z

    move-result v7

    .line 3574
    .local v7, "pri2":Z
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->numLRULists:I

    rem-int v8, v6, v0

    .line 3576
    .local v8, "lruIdx":I
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->pri2LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    aget-object v0, v0, v8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache;->pri1LRUSet:[Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;

    aget-object v0, v0, v8

    :goto_0
    move-object v9, v0

    .line 3579
    .local v9, "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    invoke-virtual {v9, v6}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->remove(I)V

    .line 3581
    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->MANUAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v6

    move-object v4, v9

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->evictOne(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;ZILcom/sleepycat/je/evictor/OffHeapCache$LRUList;Z)J

    move-result-wide v0

    return-wide v0

    .line 3571
    .end local v7    # "pri2":Z
    .end local v8    # "lruIdx":I
    .end local v9    # "lru":Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
