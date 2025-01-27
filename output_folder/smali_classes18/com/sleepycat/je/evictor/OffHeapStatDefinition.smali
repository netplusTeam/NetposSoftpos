.class public Lcom/sleepycat/je/evictor/OffHeapStatDefinition;
.super Ljava/lang/Object;
.source "OffHeapStatDefinition.java"


# static fields
.field public static final ALLOC_FAILURE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ALLOC_FAILURE_DESC:Ljava/lang/String; = "Number of off-heap allocation failures due to lack of system memory."

.field public static final ALLOC_FAILURE_NAME:Ljava/lang/String; = "offHeapAllocFailure"

.field public static final ALLOC_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ALLOC_OVERFLOW_DESC:Ljava/lang/String; = "Number of off-heap allocation attempts that exceeded the cache size."

.field public static final ALLOC_OVERFLOW_NAME:Ljava/lang/String; = "offHeapAllocOverflow"

.field public static final BINS_LOADED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BINS_LOADED_DESC:Ljava/lang/String; = "Number of BINs loaded from the off-heap cache."

.field public static final BINS_LOADED_NAME:Ljava/lang/String; = "offHeapBINsLoaded"

.field public static final BINS_STORED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BINS_STORED_DESC:Ljava/lang/String; = "Number of BINs stored into the off-heap cache."

.field public static final BINS_STORED_NAME:Ljava/lang/String; = "offHeapBINsStored"

.field public static final CACHED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CACHED_BINS_DESC:Ljava/lang/String; = "Number of BINs (full BINs and BIN-deltas) residing in the off-heap cache."

.field public static final CACHED_BINS_NAME:Ljava/lang/String; = "offHeapCachedBINs"

.field public static final CACHED_BIN_DELTAS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CACHED_BIN_DELTAS_DESC:Ljava/lang/String; = "Number of BIN-deltas residing in the off-heap cache."

.field public static final CACHED_BIN_DELTAS_NAME:Ljava/lang/String; = "offHeapCachedBINDeltas"

.field public static final CACHED_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CACHED_LNS_DESC:Ljava/lang/String; = "Number of LNs residing in the off-heap cache."

.field public static final CACHED_LNS_NAME:Ljava/lang/String; = "offHeapCachedLNs"

.field public static final CRITICAL_NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CRITICAL_NODES_TARGETED_DESC:Ljava/lang/String; = "Number of nodes targeted in \'critical eviction\' mode."

.field public static final CRITICAL_NODES_TARGETED_NAME:Ljava/lang/String; = "offHeapCriticalNodesTargeted"

.field public static final DIRTY_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final DIRTY_NODES_EVICTED_DESC:Ljava/lang/String; = "Number of target BINs evicted from the off-heap cache that were dirty and therefore were logged."

.field public static final DIRTY_NODES_EVICTED_NAME:Ljava/lang/String; = "offHeapDirtyNodesEvicted"

.field public static final GROUP_DESC:Ljava/lang/String; = "The optional off-heap cache resides outside the Java heap and serves as an overflow area for the main cache."

.field public static final GROUP_NAME:Ljava/lang/String; = "OffHeap"

.field public static final LNS_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LNS_EVICTED_DESC:Ljava/lang/String; = "Number of LNs evicted from the off-heap cache as a result of BIN stripping."

.field public static final LNS_EVICTED_NAME:Ljava/lang/String; = "offHeapLNsEvicted"

.field public static final LNS_LOADED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LNS_LOADED_DESC:Ljava/lang/String; = "Number of LNs loaded from the off-heap cache."

.field public static final LNS_LOADED_NAME:Ljava/lang/String; = "offHeapLNsLoaded"

.field public static final LNS_STORED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LNS_STORED_DESC:Ljava/lang/String; = "Number of LNs stored into the off-heap cache."

.field public static final LNS_STORED_NAME:Ljava/lang/String; = "offHeapLNsStored"

.field public static final LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LRU_SIZE_DESC:Ljava/lang/String; = "Number of LRU entries used for the off-heap cache."

.field public static final LRU_SIZE_NAME:Ljava/lang/String; = "offHeapLruSize"

.field public static final NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final NODES_EVICTED_DESC:Ljava/lang/String; = "Number of target BINs (including BIN-deltas) evicted from the off-heap cache."

.field public static final NODES_EVICTED_NAME:Ljava/lang/String; = "offHeapNodesEvicted"

.field public static final NODES_MUTATED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final NODES_MUTATED_DESC:Ljava/lang/String; = "Number of off-heap target BINs mutated to BIN-deltas."

.field public static final NODES_MUTATED_NAME:Ljava/lang/String; = "offHeapNodesMutated"

.field public static final NODES_SKIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final NODES_SKIPPED_DESC:Ljava/lang/String; = "Number of off-heap target BINs on which no action was taken."

.field public static final NODES_SKIPPED_NAME:Ljava/lang/String; = "offHeapNodesSkipped"

.field public static final NODES_STRIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final NODES_STRIPPED_DESC:Ljava/lang/String; = "Number of target BINs for which space was reclaimed by deleting space for expired LNs or evicting resident LNs."

.field public static final NODES_STRIPPED_NAME:Ljava/lang/String; = "offHeapNodesStripped"

.field public static final NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final NODES_TARGETED_DESC:Ljava/lang/String; = "Number of BINs selected as off-heap eviction targets."

.field public static final NODES_TARGETED_NAME:Ljava/lang/String; = "offHeapNodesTargeted"

.field public static final THREAD_UNAVAILABLE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THREAD_UNAVAILABLE_DESC:Ljava/lang/String; = "Number of eviction tasks that were submitted to the background off-heap evictor pool, but were refused because all eviction threads were busy."

.field public static final THREAD_UNAVAILABLE_NAME:Ljava/lang/String; = "offHeapThreadUnavailable"

.field public static final TOTAL_BLOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final TOTAL_BLOCKS_DESC:Ljava/lang/String; = "Total number of memory blocks in off-heap cache."

.field public static final TOTAL_BLOCKS_NAME:Ljava/lang/String; = "offHeapTotalBlocks"

.field public static final TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final TOTAL_BYTES_DESC:Ljava/lang/String; = "Total number of estimated bytes in off-heap cache."

.field public static final TOTAL_BYTES_NAME:Ljava/lang/String; = "offHeapTotalBytes"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapAllocFailure"

    const-string v2, "Number of off-heap allocation failures due to lack of system memory."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->ALLOC_FAILURE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 43
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapAllocOverflow"

    const-string v2, "Number of off-heap allocation attempts that exceeded the cache size."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->ALLOC_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 54
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapThreadUnavailable"

    const-string v2, "Number of eviction tasks that were submitted to the background off-heap evictor pool, but were refused because all eviction threads were busy."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->THREAD_UNAVAILABLE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 63
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapNodesTargeted"

    const-string v2, "Number of BINs selected as off-heap eviction targets."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 72
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapCriticalNodesTargeted"

    const-string v2, "Number of nodes targeted in \'critical eviction\' mode."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CRITICAL_NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 82
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapNodesEvicted"

    const-string v2, "Number of target BINs (including BIN-deltas) evicted from the off-heap cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 92
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapDirtyNodesEvicted"

    const-string v2, "Number of target BINs evicted from the off-heap cache that were dirty and therefore were logged."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->DIRTY_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 102
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapNodesStripped"

    const-string v2, "Number of target BINs for which space was reclaimed by deleting space for expired LNs or evicting resident LNs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_STRIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 111
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapNodesMutated"

    const-string v2, "Number of off-heap target BINs mutated to BIN-deltas."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_MUTATED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 120
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapNodesSkipped"

    const-string v2, "Number of off-heap target BINs on which no action was taken."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_SKIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 130
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapLNsEvicted"

    const-string v2, "Number of LNs evicted from the off-heap cache as a result of BIN stripping."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LNS_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 139
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapLNsLoaded"

    const-string v2, "Number of LNs loaded from the off-heap cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LNS_LOADED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 148
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapLNsStored"

    const-string v2, "Number of LNs stored into the off-heap cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LNS_STORED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 157
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapBINsLoaded"

    const-string v2, "Number of BINs loaded from the off-heap cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->BINS_LOADED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 166
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "offHeapBINsStored"

    const-string v2, "Number of BINs stored into the off-heap cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->BINS_STORED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 175
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "offHeapCachedLNs"

    const-string v3, "Number of LNs residing in the off-heap cache."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CACHED_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 186
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "offHeapCachedBINs"

    const-string v3, "Number of BINs (full BINs and BIN-deltas) residing in the off-heap cache."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CACHED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 196
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "offHeapCachedBINDeltas"

    const-string v3, "Number of BIN-deltas residing in the off-heap cache."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CACHED_BIN_DELTAS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 206
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "offHeapTotalBytes"

    const-string v3, "Total number of estimated bytes in off-heap cache."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 216
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "offHeapTotalBlocks"

    const-string v3, "Total number of memory blocks in off-heap cache."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->TOTAL_BLOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 226
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "offHeapLruSize"

    const-string v3, "Number of LRU entries used for the off-heap cache."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
