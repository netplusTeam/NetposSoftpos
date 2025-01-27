.class public Lcom/sleepycat/je/evictor/EvictorStatDefinition;
.super Ljava/lang/Object;
.source "EvictorStatDefinition.java"


# static fields
.field public static final BIN_DELTA_BLIND_OPS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BIN_DELTA_BLIND_OPS_DESC:Ljava/lang/String; = "The number of operations performed blindly in BIN deltas"

.field public static final BIN_DELTA_BLIND_OPS_NAME:Ljava/lang/String; = "nBinDeltaBlindOps"

.field public static final BIN_DELTA_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BIN_DELTA_FETCH_MISS_DESC:Ljava/lang/String; = "Number of BIN-deltas (partial BINs) fetched to satisfy btree operations that were not in main cache."

.field public static final BIN_DELTA_FETCH_MISS_NAME:Ljava/lang/String; = "nBINDeltasFetchMiss"

.field public static final BIN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BIN_FETCH_DESC:Ljava/lang/String; = "Number of BINs (bottom internal nodes) and BIN-deltas requested by btree operations."

.field public static final BIN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BIN_FETCH_MISS_DESC:Ljava/lang/String; = "Number of full BINs (bottom internal nodes) and BIN-deltas fetched to satisfy btree operations that were not in main cache."

.field public static final BIN_FETCH_MISS_NAME:Ljava/lang/String; = "nBINsFetchMiss"

.field public static final BIN_FETCH_MISS_RATIO:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BIN_FETCH_MISS_RATIO_DESC:Ljava/lang/String; = "The BIN fetch miss ratio (nBINsFetchMiss / nBINsFetch)"

.field public static final BIN_FETCH_MISS_RATIO_NAME:Ljava/lang/String; = "nBINsFetchMissRatio"

.field public static final BIN_FETCH_NAME:Ljava/lang/String; = "nBINsFetch"

.field public static final CACHED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CACHED_BINS_DESC:Ljava/lang/String; = "Number of BINs (bottom internal nodes) and BIN-deltas in main cache."

.field public static final CACHED_BINS_NAME:Ljava/lang/String; = "nCachedBINs"

.field public static final CACHED_BIN_DELTAS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CACHED_BIN_DELTAS_DESC:Ljava/lang/String; = "Number of BIN-deltas (partial BINs) in main cache. This is a subset of the nCachedBINs value."

.field public static final CACHED_BIN_DELTAS_NAME:Ljava/lang/String; = "nCachedBINDeltas"

.field public static final CACHED_IN_COMPACT_KEY:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CACHED_IN_COMPACT_KEY_DESC:Ljava/lang/String; = "Number of INs that use a compact key representation to minimize the key object representation overhead."

.field public static final CACHED_IN_COMPACT_KEY_NAME:Ljava/lang/String; = "nINCompactKey"

.field public static final CACHED_IN_NO_TARGET:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CACHED_IN_NO_TARGET_DESC:Ljava/lang/String; = "Number of INs that use a compact representation when none of its child nodes are in the main cache."

.field public static final CACHED_IN_NO_TARGET_NAME:Ljava/lang/String; = "nINNoTarget"

.field public static final CACHED_IN_SPARSE_TARGET:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CACHED_IN_SPARSE_TARGET_DESC:Ljava/lang/String; = "Number of INs that use a compact sparse array representation to point to child nodes in the main cache."

.field public static final CACHED_IN_SPARSE_TARGET_NAME:Ljava/lang/String; = "nINSparseTarget"

.field public static final CACHED_UPPER_INS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CACHED_UPPER_INS_DESC:Ljava/lang/String; = "Number of upper INs (non-bottom internal nodes) in main cache."

.field public static final CACHED_UPPER_INS_NAME:Ljava/lang/String; = "nCachedUpperINs"

.field public static final EVICTOR_DIRTY_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final EVICTOR_DIRTY_NODES_EVICTED_DESC:Ljava/lang/String; = "Number of dirty target nodes logged and evicted."

.field public static final EVICTOR_DIRTY_NODES_EVICTED_NAME:Ljava/lang/String; = "nDirtyNodesEvicted"

.field public static final EVICTOR_EVICTION_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final EVICTOR_EVICTION_RUNS_DESC:Ljava/lang/String; = "Number of times the background eviction thread is awoken."

.field public static final EVICTOR_EVICTION_RUNS_NAME:Ljava/lang/String; = "nEvictionRuns"

.field public static final EVICTOR_LNS_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final EVICTOR_LNS_EVICTED_DESC:Ljava/lang/String; = "Number of LNs evicted as a result of LRU-based eviction (but not CacheMode.EVICT_LN)."

.field public static final EVICTOR_LNS_EVICTED_NAME:Ljava/lang/String; = "nLNsEvicted"

.field public static final EVICTOR_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final EVICTOR_NODES_EVICTED_DESC:Ljava/lang/String; = "Number of target nodes (INs) evicted from the main cache."

.field public static final EVICTOR_NODES_EVICTED_NAME:Ljava/lang/String; = "nNodesEvicted"

.field public static final EVICTOR_NODES_MOVED_TO_PRI2_LRU:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final EVICTOR_NODES_MOVED_TO_PRI2_LRU_DESC:Ljava/lang/String; = "Number of nodes (INs) moved from the mixed/priority-1 to the dirty/priority-2 LRU list."

.field public static final EVICTOR_NODES_MOVED_TO_PRI2_LRU_NAME:Ljava/lang/String; = "nNodesMovedToDirtyLRU"

.field public static final EVICTOR_NODES_MUTATED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final EVICTOR_NODES_MUTATED_DESC:Ljava/lang/String; = "Number of target BINs mutated to BIN-deltas."

.field public static final EVICTOR_NODES_MUTATED_NAME:Ljava/lang/String; = "nNodesMutated"

.field public static final EVICTOR_NODES_PUT_BACK:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final EVICTOR_NODES_PUT_BACK_DESC:Ljava/lang/String; = "Number of target nodes (INs) moved to the cold end of the LRU list without any action taken on them."

.field public static final EVICTOR_NODES_PUT_BACK_NAME:Ljava/lang/String; = "nNodesPutBack"

.field public static final EVICTOR_NODES_SKIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final EVICTOR_NODES_SKIPPED_DESC:Ljava/lang/String; = "Number of nodes (INs) that did not require any action."

.field public static final EVICTOR_NODES_SKIPPED_NAME:Ljava/lang/String; = "nNodesSkipped"

.field public static final EVICTOR_NODES_STRIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final EVICTOR_NODES_STRIPPED_DESC:Ljava/lang/String; = "Number of target BINs for which space was reclaimed by deleting space for expired LNs or evicting resident LNs."

.field public static final EVICTOR_NODES_STRIPPED_NAME:Ljava/lang/String; = "nNodesStripped"

.field public static final EVICTOR_NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final EVICTOR_NODES_TARGETED_DESC:Ljava/lang/String; = "Number of nodes (INs) selected as eviction targets."

.field public static final EVICTOR_NODES_TARGETED_NAME:Ljava/lang/String; = "nNodesTargeted"

.field public static final EVICTOR_ROOT_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final EVICTOR_ROOT_NODES_EVICTED_DESC:Ljava/lang/String; = "Number of database root nodes (INs) evicted."

.field public static final EVICTOR_ROOT_NODES_EVICTED_NAME:Ljava/lang/String; = "nRootNodesEvicted"

.field public static final EVICTOR_SHARED_CACHE_ENVS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final EVICTOR_SHARED_CACHE_ENVS_DESC:Ljava/lang/String; = "Number of Environments sharing the main cache."

.field public static final EVICTOR_SHARED_CACHE_ENVS_NAME:Ljava/lang/String; = "nSharedCacheEnvironments"

.field public static final FULL_BIN_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final FULL_BIN_MISS_DESC:Ljava/lang/String; = "Number of times a BIN-delta had to be mutated to a full BIN (and as a result a full BIN had to be read in from the log)."

.field public static final FULL_BIN_MISS_NAME:Ljava/lang/String; = "nFullBINsMiss"

.field public static final GROUP_DESC:Ljava/lang/String; = "The main cache resides in the Java heap and holds data, keys, Btree internal nodes, locks and JE metadata."

.field public static final GROUP_NAME:Ljava/lang/String; = "Cache"

.field public static final LN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LN_FETCH_DESC:Ljava/lang/String; = "Number of LNs (data records) requested by btree operations."

.field public static final LN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LN_FETCH_MISS_DESC:Ljava/lang/String; = "Number of LNs (data records) requested by btree operations that were not in main cache."

.field public static final LN_FETCH_MISS_NAME:Ljava/lang/String; = "nLNsFetchMiss"

.field public static final LN_FETCH_NAME:Ljava/lang/String; = "nLNsFetch"

.field public static final N_BYTES_EVICTED_CACHEMODE_DESC:Ljava/lang/String; = "Number of bytes evicted by operations for which CacheMode.EVICT_BIN is specified."

.field public static final N_BYTES_EVICTED_CACHEMODE_NAME:Ljava/lang/String; = "nBytesEvictedCACHEMODE"

.field public static final N_BYTES_EVICTED_CRITICAL_DESC:Ljava/lang/String; = "Number of bytes evicted in the application thread because the cache is over budget."

.field public static final N_BYTES_EVICTED_CRITICAL_NAME:Ljava/lang/String; = "nBytesEvictedCRITICAL"

.field public static final N_BYTES_EVICTED_DAEMON_DESC:Ljava/lang/String; = "Number of bytes evicted by JE deamon threads."

.field public static final N_BYTES_EVICTED_DAEMON_NAME:Ljava/lang/String; = "nBytesEvictedDAEMON"

.field public static final N_BYTES_EVICTED_EVICTORTHREAD_DESC:Ljava/lang/String; = "Number of bytes evicted by evictor pool threads."

.field public static final N_BYTES_EVICTED_EVICTORTHREAD_NAME:Ljava/lang/String; = "nBytesEvictedEVICTORTHREAD"

.field public static final N_BYTES_EVICTED_MANUAL_DESC:Ljava/lang/String; = "Number of bytes evicted by the Environment.evictMemory or during Environment startup."

.field public static final N_BYTES_EVICTED_MANUAL_NAME:Ljava/lang/String; = "nBytesEvictedMANUAL"

.field public static final PRI1_LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final PRI1_LRU_SIZE_DESC:Ljava/lang/String; = "Number of INs in the mixed/priority-1 LRU "

.field public static final PRI1_LRU_SIZE_NAME:Ljava/lang/String; = "lruMixedSize"

.field public static final PRI2_LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final PRI2_LRU_SIZE_DESC:Ljava/lang/String; = "Number of INs in the dirty/priority-2 LRU "

.field public static final PRI2_LRU_SIZE_NAME:Ljava/lang/String; = "lruDirtySize"

.field public static final THREAD_UNAVAILABLE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THREAD_UNAVAILABLE_DESC:Ljava/lang/String; = "Number of eviction tasks that were submitted to the background evictor pool, but were refused because all eviction threads were busy."

.field public static final THREAD_UNAVAILABLE_NAME:Ljava/lang/String; = "nThreadUnavailable"

.field public static final UPPER_IN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final UPPER_IN_FETCH_DESC:Ljava/lang/String; = "Number of Upper INs (non-bottom internal nodes) requested by btree operations."

.field public static final UPPER_IN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final UPPER_IN_FETCH_MISS_DESC:Ljava/lang/String; = "Number of Upper INs (non-bottom internal nodes) requested by btree operations that were not in main cache."

.field public static final UPPER_IN_FETCH_MISS_NAME:Ljava/lang/String; = "nUpperINsFetchMiss"

.field public static final UPPER_IN_FETCH_NAME:Ljava/lang/String; = "nUpperINsFetch"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nEvictionRuns"

    const-string v2, "Number of times the background eviction thread is awoken."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_EVICTION_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 69
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nNodesTargeted"

    const-string v2, "Number of nodes (INs) selected as eviction targets."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 78
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nNodesEvicted"

    const-string v2, "Number of target nodes (INs) evicted from the main cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 87
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nRootNodesEvicted"

    const-string v2, "Number of database root nodes (INs) evicted."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_ROOT_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 96
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nDirtyNodesEvicted"

    const-string v2, "Number of dirty target nodes logged and evicted."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_DIRTY_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 106
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLNsEvicted"

    const-string v2, "Number of LNs evicted as a result of LRU-based eviction (but not CacheMode.EVICT_LN)."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_LNS_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 116
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nNodesStripped"

    const-string v2, "Number of target BINs for which space was reclaimed by deleting space for expired LNs or evicting resident LNs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_STRIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 125
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nNodesMutated"

    const-string v2, "Number of target BINs mutated to BIN-deltas."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_MUTATED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 135
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nNodesPutBack"

    const-string v2, "Number of target nodes (INs) moved to the cold end of the LRU list without any action taken on them."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_PUT_BACK:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 145
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nNodesMovedToDirtyLRU"

    const-string v2, "Number of nodes (INs) moved from the mixed/priority-1 to the dirty/priority-2 LRU list."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_MOVED_TO_PRI2_LRU:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 154
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nNodesSkipped"

    const-string v2, "Number of nodes (INs) that did not require any action."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_SKIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 163
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nSharedCacheEnvironments"

    const-string v3, "Number of Environments sharing the main cache."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_SHARED_CACHE_ENVS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 173
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLNsFetch"

    const-string v2, "Number of LNs (data records) requested by btree operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->LN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 187
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nUpperINsFetch"

    const-string v2, "Number of Upper INs (non-bottom internal nodes) requested by btree operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->UPPER_IN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 201
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBINsFetch"

    const-string v2, "Number of BINs (bottom internal nodes) and BIN-deltas requested by btree operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 211
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLNsFetchMiss"

    const-string v2, "Number of LNs (data records) requested by btree operations that were not in main cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->LN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 225
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nUpperINsFetchMiss"

    const-string v2, "Number of Upper INs (non-bottom internal nodes) requested by btree operations that were not in main cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->UPPER_IN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 239
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBINsFetchMiss"

    const-string v2, "Number of full BINs (bottom internal nodes) and BIN-deltas fetched to satisfy btree operations that were not in main cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 251
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nBINsFetchMissRatio"

    const-string v3, "The BIN fetch miss ratio (nBINsFetchMiss / nBINsFetch)"

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_FETCH_MISS_RATIO:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 267
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBINDeltasFetchMiss"

    const-string v2, "Number of BIN-deltas (partial BINs) fetched to satisfy btree operations that were not in main cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_DELTA_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 279
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBinDeltaBlindOps"

    const-string v2, "The number of operations performed blindly in BIN deltas"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_DELTA_BLIND_OPS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 292
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nFullBINsMiss"

    const-string v2, "Number of times a BIN-delta had to be mutated to a full BIN (and as a result a full BIN had to be read in from the log)."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->FULL_BIN_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 305
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nCachedUpperINs"

    const-string v3, "Number of upper INs (non-bottom internal nodes) in main cache."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_UPPER_INS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 319
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nCachedBINs"

    const-string v3, "Number of BINs (bottom internal nodes) and BIN-deltas in main cache."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 334
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nCachedBINDeltas"

    const-string v3, "Number of BIN-deltas (partial BINs) in main cache. This is a subset of the nCachedBINs value."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_BIN_DELTAS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 350
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nThreadUnavailable"

    const-string v2, "Number of eviction tasks that were submitted to the background evictor pool, but were refused because all eviction threads were busy."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->THREAD_UNAVAILABLE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 360
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nINSparseTarget"

    const-string v3, "Number of INs that use a compact sparse array representation to point to child nodes in the main cache."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_IN_SPARSE_TARGET:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 371
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nINNoTarget"

    const-string v3, "Number of INs that use a compact representation when none of its child nodes are in the main cache."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_IN_NO_TARGET:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 382
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nINCompactKey"

    const-string v3, "Number of INs that use a compact key representation to minimize the key object representation overhead."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_IN_COMPACT_KEY:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 392
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "lruMixedSize"

    const-string v3, "Number of INs in the mixed/priority-1 LRU "

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->PRI1_LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 402
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "lruDirtySize"

    const-string v3, "Number of INs in the dirty/priority-2 LRU "

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->PRI2_LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
