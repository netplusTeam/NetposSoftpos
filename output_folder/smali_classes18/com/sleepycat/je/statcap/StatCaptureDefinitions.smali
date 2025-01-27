.class public Lcom/sleepycat/je/statcap/StatCaptureDefinitions;
.super Ljava/lang/Object;
.source "StatCaptureDefinitions.java"


# static fields
.field private static backupStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static btreeOpStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static checkpointStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static cleanerStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static dbiStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static environmentStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static evictorStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static inCompStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static latchStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static lockStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static logStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field public static maxStats:[Lcom/sleepycat/je/statcap/StatManager$SDef;

.field public static minStats:[Lcom/sleepycat/je/statcap/StatManager$SDef;

.field private static offHeapStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static throughputStats:[Lcom/sleepycat/je/utilint/StatDefinition;


# instance fields
.field protected nameToDef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 45
    const/16 v0, 0x27

    new-array v0, v0, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_TWO_PASS_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_REVISAL_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_DELETIONS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_LN_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_DB_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v12, 0xa

    aput-object v1, v0, v12

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v13, 0xb

    aput-object v1, v0, v13

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v14, 0xc

    aput-object v1, v0, v14

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0xd

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0xe

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v17, 0xf

    aput-object v1, v0, v17

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v18, 0x10

    aput-object v1, v0, v18

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_EXPIRED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v19, 0x11

    aput-object v1, v0, v19

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_EXTINCT:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v20, 0x12

    aput-object v1, v0, v20

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_LOCKED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v21, 0x13

    aput-object v1, v0, v21

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v22, 0x14

    aput-object v1, v0, v22

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_MARKED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x15

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNQUEUE_HITS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x16

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_LNS_PROCESSED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x17

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_LNS_LOCKED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x18

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_DBS_PROCESSED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x19

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_DBS_INCOMPLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x1a

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_ENTRIES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x1b

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_DISK_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x1c

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_TOTAL_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x1d

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_ACTIVE_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x1e

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_RESERVED_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x1f

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_AVAILABLE_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x20

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PROTECTED_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x21

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PROTECTED_LOG_SIZE_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x22

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_MIN_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x23

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_MAX_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x24

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PREDICTED_MIN_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x25

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PREDICTED_MAX_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x26

    aput-object v1, v0, v24

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->cleanerStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 87
    new-array v0, v8, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_SHARED_CACHE_TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_DATA_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_DOS_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_ADMIN_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_LOCK_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->dbiStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 96
    new-array v0, v3, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->ENV_CREATION_TIME:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->environmentStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 100
    new-array v0, v4, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->BACKUP_COPY_FILES_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->BACKUP_COPY_FILES_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->backupStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 105
    new-array v0, v8, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_ROOT_SPLITS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_RELATCHES_REQUIRED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_GETS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_INSERTS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_UPDATES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_DELETES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->btreeOpStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 114
    const/16 v0, 0x24

    new-array v0, v0, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_EVICTION_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_STRIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_MUTATED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_PUT_BACK:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_MOVED_TO_PRI2_LRU:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_NODES_SKIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_ROOT_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_DIRTY_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_LNS_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->EVICTOR_SHARED_CACHE_ENVS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->LN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->LN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v16, 0xd

    aput-object v1, v0, v16

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->UPPER_IN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v23, 0xe

    aput-object v1, v0, v23

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->UPPER_IN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v17

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_FETCH:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v18

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v19

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_DELTA_FETCH_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v20

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_FETCH_MISS_RATIO:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v21

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->FULL_BIN_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v22

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->BIN_DELTA_BLIND_OPS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_UPPER_INS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x16

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x17

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_BIN_DELTAS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x18

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->THREAD_UNAVAILABLE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x19

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_IN_SPARSE_TARGET:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x1a

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_IN_NO_TARGET:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x1b

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_IN_COMPACT_KEY:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x1c

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->PRI1_LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x1d

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->PRI2_LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v24, 0x1e

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CACHEMODE:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 154
    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->getNumBytesEvictedStatDef()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v1

    const/16 v24, 0x1f

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CRITICAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 155
    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->getNumBytesEvictedStatDef()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v1

    const/16 v24, 0x20

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->DAEMON:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 156
    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->getNumBytesEvictedStatDef()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v1

    const/16 v24, 0x21

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->EVICTORTHREAD:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 157
    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->getNumBytesEvictedStatDef()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v1

    const/16 v24, 0x22

    aput-object v1, v0, v24

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->MANUAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 158
    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->getNumBytesEvictedStatDef()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v1

    const/16 v24, 0x23

    aput-object v1, v0, v24

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->evictorStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 161
    new-array v0, v15, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->ALLOC_FAILURE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->ALLOC_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->THREAD_UNAVAILABLE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CRITICAL_NODES_TARGETED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->DIRTY_NODES_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_STRIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_MUTATED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->NODES_SKIPPED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LNS_EVICTED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LNS_LOADED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LNS_STORED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->BINS_LOADED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v16, 0xd

    aput-object v1, v0, v16

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->BINS_STORED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v23, 0xe

    aput-object v1, v0, v23

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CACHED_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v17

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CACHED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v18

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->CACHED_BIN_DELTAS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v19

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v20

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->TOTAL_BLOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v21

    sget-object v1, Lcom/sleepycat/je/evictor/OffHeapStatDefinition;->LRU_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v22

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->offHeapStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 185
    new-array v0, v8, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_SPLIT_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_DBCLOSED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_CURSORS_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_NON_EMPTY_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_PROCESSED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->inCompStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 194
    new-array v0, v8, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_NO_WAITERS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_SELF_OWNED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_CONTENTION:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_NOWAIT_SUCCESS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_NOWAIT_UNSUCCESS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_RELEASES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->latchStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 203
    const/16 v0, 0x22

    new-array v0, v0, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_READ_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_WRITE_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_READ_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_WRITE_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FILE_OPENS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_OPEN_FILES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_BYTES_READ_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_BYTES_WRITTEN_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_READS_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_WRITES_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v16, 0xd

    aput-object v1, v0, v16

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_WRITEQUEUE_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v23, 0xe

    aput-object v1, v0, v23

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_WRITEQUEUE_OVERFLOW_FAILURES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v17

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v18

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_FSYNC_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v19

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_TIMEOUTS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v20

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_LOG_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v21

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_AVG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v22

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_95_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_99_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x16

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_MAX_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x17

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->FSYNCMGR_N_GROUP_COMMIT_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x18

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_REPEAT_FAULT_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x19

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_REPEAT_ITERATOR_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x1a

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_TEMP_BUFFER_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x1b

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LOGMGR_END_OF_LOG:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x1c

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_NO_FREE_BUFFER:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x1d

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_NOT_RESIDENT:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x1e

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_MISS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x1f

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_LOG_BUFFERS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x20

    aput-object v1, v0, v15

    sget-object v1, Lcom/sleepycat/je/log/LogStatDefinition;->LBFP_BUFFER_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x21

    aput-object v1, v0, v15

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->logStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 240
    new-array v0, v10, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_CHECKPOINTS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPTID:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_FULL_IN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_FULL_BIN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_DELTA_IN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPT_INTERVAL:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPT_START:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPT_END:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v9

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->checkpointStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 251
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_SEARCH:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_SEARCH_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_SEARCH:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_SEARCH_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_POSITION:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_POSITION:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_INSERT:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_INSERT_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_INSERT:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_UPDATE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_UPDATE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_DELETE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_DELETE_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_DELETE:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v5, 0xd

    aput-object v1, v0, v5

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->throughputStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 269
    new-array v0, v4, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->lockStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 279
    new-array v0, v2, [Lcom/sleepycat/je/statcap/StatManager$SDef;

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->minStats:[Lcom/sleepycat/je/statcap/StatManager$SDef;

    .line 281
    new-array v0, v3, [Lcom/sleepycat/je/statcap/StatManager$SDef;

    new-instance v1, Lcom/sleepycat/je/statcap/StatManager$SDef;

    sget-object v3, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_MAX_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v4, "I/O"

    invoke-direct {v1, v4, v3}, Lcom/sleepycat/je/statcap/StatManager$SDef;-><init>(Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition;)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->maxStats:[Lcom/sleepycat/je/statcap/StatManager$SDef;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    .line 288
    const-string v0, "Cache"

    .line 289
    .local v0, "groupname":Ljava/lang/String;
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->evictorStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, ":"

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 290
    .local v6, "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 292
    :cond_0
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->dbiStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 293
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 295
    :cond_1
    const-string v0, "OffHeap"

    .line 296
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->offHeapStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    .line 297
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 299
    :cond_2
    const-string v0, "Checkpoints"

    .line 300
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->checkpointStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 301
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 303
    :cond_3
    const-string v0, "Cleaning"

    .line 304
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->cleanerStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_4

    aget-object v6, v1, v4

    .line 305
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 307
    :cond_4
    const-string v0, "I/O"

    .line 308
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->logStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_5
    if-ge v4, v2, :cond_5

    aget-object v6, v1, v4

    .line 309
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 311
    :cond_5
    const-string v0, "Locks"

    .line 312
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->lockStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_6

    aget-object v6, v1, v4

    .line 313
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 315
    :cond_6
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->latchStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_7

    aget-object v6, v1, v4

    .line 316
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 318
    :cond_7
    const-string v0, "Environment"

    .line 319
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->environmentStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_8

    aget-object v6, v1, v4

    .line 320
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 322
    :cond_8
    const-string v0, "Backup"

    .line 323
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->backupStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_9
    if-ge v4, v2, :cond_9

    aget-object v6, v1, v4

    .line 324
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 326
    :cond_9
    const-string v0, "BtreeOp"

    .line 327
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->btreeOpStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_a

    aget-object v6, v1, v4

    .line 328
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 330
    :cond_a
    const-string v0, "Node Compression"

    .line 331
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->inCompStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_b

    aget-object v6, v1, v4

    .line 332
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 334
    :cond_b
    const-string v0, "Op"

    .line 335
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->throughputStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_c

    aget-object v6, v1, v4

    .line 336
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 338
    :cond_c
    const-string v0, "TaskCoordinator"

    .line 339
    sget-object v1, Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;->ALL:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_d

    aget-object v6, v1, v4

    .line 340
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 342
    :cond_d
    const-string v0, "Eraser"

    .line 343
    sget-object v1, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ALL:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    :goto_e
    if-ge v3, v2, :cond_e

    aget-object v4, v1, v3

    .line 344
    .local v4, "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v6, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .end local v4    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 346
    :cond_e
    return-void
.end method


# virtual methods
.method public getDefinition(Ljava/lang/String;)Lcom/sleepycat/je/utilint/StatDefinition;
    .locals 1
    .param p1, "colname"    # Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->nameToDef:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/StatDefinition;

    return-object v0
.end method

.method protected getProjectionsInternal(Ljava/util/SortedSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 355
    .local p1, "pmap":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    const-string v0, "Cache"

    .line 356
    .local v0, "groupname":Ljava/lang/String;
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->evictorStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, ":"

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 357
    .local v6, "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 356
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 359
    :cond_0
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->dbiStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 360
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 359
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 362
    :cond_1
    const-string v0, "OffHeap"

    .line 363
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->offHeapStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    .line 364
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 366
    :cond_2
    const-string v0, "Checkpoints"

    .line 367
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->checkpointStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 368
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 370
    :cond_3
    const-string v0, "Cleaning"

    .line 371
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->cleanerStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_4

    aget-object v6, v1, v4

    .line 372
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 374
    :cond_4
    const-string v0, "I/O"

    .line 375
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->logStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_5
    if-ge v4, v2, :cond_5

    aget-object v6, v1, v4

    .line 376
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 378
    :cond_5
    const-string v0, "Locks"

    .line 379
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->lockStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_6

    aget-object v6, v1, v4

    .line 380
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 382
    :cond_6
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->latchStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_7

    aget-object v6, v1, v4

    .line 383
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 385
    :cond_7
    const-string v0, "Environment"

    .line 386
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->environmentStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_8

    aget-object v6, v1, v4

    .line 387
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 389
    :cond_8
    const-string v0, "Backup"

    .line 390
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->backupStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_9
    if-ge v4, v2, :cond_9

    aget-object v6, v1, v4

    .line 391
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 393
    :cond_9
    const-string v0, "BtreeOp"

    .line 394
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->btreeOpStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_a

    aget-object v6, v1, v4

    .line 395
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 397
    :cond_a
    const-string v0, "Node Compression"

    .line 398
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->inCompStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_b

    aget-object v6, v1, v4

    .line 399
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 398
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 401
    :cond_b
    const-string v0, "Op"

    .line 402
    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->throughputStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_c

    aget-object v6, v1, v4

    .line 403
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 405
    :cond_c
    const-string v0, "TaskCoordinator"

    .line 406
    sget-object v1, Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;->ALL:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_d

    aget-object v6, v1, v4

    .line 407
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 409
    :cond_d
    const-string v0, "Eraser"

    .line 410
    sget-object v1, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ALL:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    :goto_e
    if-ge v3, v2, :cond_e

    aget-object v4, v1, v3

    .line 411
    .local v4, "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v4    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 413
    :cond_e
    return-void
.end method

.method public getStatisticProjections()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 350
    .local v0, "retval":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->getProjectionsInternal(Ljava/util/SortedSet;)V

    .line 351
    return-object v0
.end method
