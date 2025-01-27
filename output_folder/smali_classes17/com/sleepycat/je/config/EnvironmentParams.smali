.class public Lcom/sleepycat/je/config/EnvironmentParams;
.super Ljava/lang/Object;
.source "EnvironmentParams.java"


# static fields
.field public static final ADLER32_CHUNK_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final AUTO_RESERVED_FILE_REPAIR:Lcom/sleepycat/je/config/ConfigParam;

.field public static final BACKUP_COPY_CLASS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final BACKUP_COPY_CONFIG:Lcom/sleepycat/je/config/ConfigParam;

.field public static final BACKUP_LOCATION_CLASS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final BACKUP_LOCATION_CONFIG:Lcom/sleepycat/je/config/ConfigParam;

.field public static final BACKUP_SCHEDULE:Lcom/sleepycat/je/config/ConfigParam;

.field public static final BIN_DELTA_BLIND_OPS:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final BIN_DELTA_BLIND_PUTS:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final BIN_DELTA_PERCENT:Lcom/sleepycat/je/config/IntConfigParam;

.field private static final BIN_MAX_DELTAS:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CHECKPOINTER_BYTES_INTERVAL:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final CHECKPOINTER_HIGH_PRIORITY:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final CHECKPOINTER_RETRY:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CHECKPOINTER_WAKEUP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

.field private static final CLEANER_ADJUST_UTILIZATION:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final CLEANER_BACKGROUND_PROACTIVE_MIGRATION:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final CLEANER_BYTES_INTERVAL:Lcom/sleepycat/je/config/LongConfigParam;

.field private static final CLEANER_CALC_INITIAL_ADJUSTMENTS:Lcom/sleepycat/je/config/IntConfigParam;

.field private static final CLEANER_CALC_MAX_PROBE_SKIP_FILES:Lcom/sleepycat/je/config/IntConfigParam;

.field private static final CLEANER_CALC_MIN_PROBE_SKIP_FILES:Lcom/sleepycat/je/config/IntConfigParam;

.field private static final CLEANER_CALC_MIN_UNCOUNTED_LNS:Lcom/sleepycat/je/config/IntConfigParam;

.field private static final CLEANER_CLUSTER:Lcom/sleepycat/je/config/BooleanConfigParam;

.field private static final CLEANER_CLUSTER_ALL:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final CLEANER_DEADLOCK_RETRY:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_DETAIL_MAX_MEMORY_PERCENTAGE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_EXTINCT_SCAN_BATCH_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final CLEANER_EXTINCT_SCAN_BATCH_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_FETCH_OBSOLETE_SIZE:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final CLEANER_FLUSH_EXTINCT_OBSOLETE:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final CLEANER_FORCE_CLEAN_FILES:Lcom/sleepycat/je/config/ConfigParam;

.field private static final CLEANER_FOREGROUND_PROACTIVE_MIGRATION:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final CLEANER_GRADUAL_EXPIRATION:Lcom/sleepycat/je/config/BooleanConfigParam;

.field private static final CLEANER_LAZY_MIGRATION:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final CLEANER_LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final CLEANER_LOOK_AHEAD_CACHE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_MAX_BATCH_FILES:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_MIN_AGE:Lcom/sleepycat/je/config/IntConfigParam;

.field private static final CLEANER_MIN_FILES_TO_DELETE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_MIN_FILE_UTILIZATION:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_MIN_UTILIZATION:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_REMOVE:Lcom/sleepycat/je/config/BooleanConfigParam;

.field private static final CLEANER_RESTART_RETRIES:Lcom/sleepycat/je/config/IntConfigParam;

.field private static final CLEANER_RETRIES:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_RMW_FIX:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final CLEANER_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_TRACK_DETAIL:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final CLEANER_TWO_PASS_GAP:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_TWO_PASS_THRESHOLD:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_UPGRADE_TO_LOG_VERSION:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final CLEANER_USE_DELETED_DIR:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final CLEANER_WAKEUP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final COMPRESSOR_LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final COMPRESSOR_RETRY:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final COMPRESSOR_WAKEUP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final DOS_PRODUCER_QUEUE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ENV_BACKGROUND_READ_LIMIT:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final ENV_BACKGROUND_SLEEP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ENV_BACKGROUND_WRITE_LIMIT:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final ENV_CHECK_LEAKS:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_COMPARATORS_REQUIRED:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_DB_CACHE_CLEAR_COUNT:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final ENV_DB_CACHE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ENV_DB_EVICTION:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_DUP_CONVERT_PRELOAD_ALL:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_EXPIRATION_ENABLED:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_EXPOSE_USER_DATA:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_FAIR_LATCHES:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_FORCED_YIELD:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_INIT_LOCKING:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_INIT_TXN:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_LATCH_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ENV_RDONLY:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_RECOVERY:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_RECOVERY_FORCE_CHECKPOINT:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_RECOVERY_FORCE_NEW_FILE:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_RUN_BACKUP:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_RUN_CHECKPOINTER:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_RUN_CLEANER:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_RUN_ERASER:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_RUN_EVICTOR:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_RUN_EXTINCT_RECORD_SCANNER:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_RUN_INCOMPRESSOR:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_RUN_OFFHEAP_EVICTOR:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_RUN_VERIFIER:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_SETUP_LOGGER:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_SHARED_CACHE:Lcom/sleepycat/je/config/BooleanConfigParam;

.field private static final ENV_SHARED_LATCHES:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_TTL_CLOCK_TOLERANCE:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ENV_TTL_LN_PURGE_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ENV_TTL_MAX_TXN_TIME:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ERASE_ABORT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ERASE_DELETED_DATABASES:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ERASE_EXTINCT_RECORDS:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ERASE_PERIOD:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final EVICTOR_ALLOW_BIN_DELTAS:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final EVICTOR_CORE_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final EVICTOR_CRITICAL_PERCENTAGE:Lcom/sleepycat/je/config/IntConfigParam;

.field private static final EVICTOR_EVICTION_BATCH_PERCENTAGE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final EVICTOR_EVICT_BYTES:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final EVICTOR_FORCED_YIELD:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final EVICTOR_KEEP_ALIVE:Lcom/sleepycat/je/config/DurationConfigParam;

.field private static final EVICTOR_LRU_ONLY:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final EVICTOR_MAX_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final EVICTOR_MUTATE_BINS:Lcom/sleepycat/je/config/BooleanConfigParam;

.field private static final EVICTOR_NODES_PER_SCAN:Lcom/sleepycat/je/config/IntConfigParam;

.field private static final EVICTOR_NODE_SCAN_PERCENTAGE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final EVICTOR_N_LRU_LISTS:Lcom/sleepycat/je/config/IntConfigParam;

.field private static final EVICTOR_RETRY:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final EVICTOR_TERMINATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field private static final EVICTOR_USEMEM_FLOOR:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final EVICTOR_USE_DIRTY_LRU:Lcom/sleepycat/je/config/BooleanConfigParam;

.field private static final EVICTOR_WAKEUP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final FILE_LOGGING_DIRECTORY:Lcom/sleepycat/je/config/ConfigParam;

.field public static final FILE_LOGGING_PREFIX:Lcom/sleepycat/je/config/ConfigParam;

.field public static final FREE_DISK:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final HALT_ON_COMMIT_AFTER_CHECKSUMEXCEPTION:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final JE_CONSOLE_LEVEL:Lcom/sleepycat/je/config/ConfigParam;

.field public static final JE_DURABILITY:Lcom/sleepycat/je/config/ConfigParam;

.field public static final JE_FILE_LEVEL:Lcom/sleepycat/je/config/ConfigParam;

.field public static final JE_LOGGING_DBLOG:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final LOCK_DEADLOCK_DETECT:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final LOCK_DEADLOCK_DETECT_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final LOCK_OLD_LOCK_EXCEPTIONS:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final LOG_BUFFER_MAX_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final LOG_CHECKSUM_READ:Lcom/sleepycat/je/config/BooleanConfigParam;

.field private static final LOG_CHUNKED_NIO:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final LOG_DEFERREDWRITE_TEMP:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final LOG_DETECT_FILE_DELETE:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final LOG_DETECT_FILE_DELETE_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

.field private static final LOG_DIRECT_NIO:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final LOG_FAULT_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final LOG_FILE_CACHE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final LOG_FILE_MAX:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final LOG_FILE_WARM_UP_BUF_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final LOG_FILE_WARM_UP_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final LOG_FLUSH_NO_SYNC_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final LOG_FLUSH_SYNC_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final LOG_FSYNC_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final LOG_FSYNC_TIME_LIMIT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final LOG_GROUP_COMMIT_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final LOG_GROUP_COMMIT_THRESHOLD:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final LOG_ITERATOR_MAX_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final LOG_ITERATOR_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final LOG_MEMORY_ONLY:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final LOG_MEM_SIZE:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final LOG_MEM_SIZE_MIN:J = 0x1800L

.field public static final LOG_MEM_SIZE_MIN_STRING:Ljava/lang/String;

.field public static final LOG_N_DATA_DIRECTORIES:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final LOG_USE_NIO:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final LOG_USE_ODSYNC:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final LOG_USE_WRITE_QUEUE:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final LOG_VERIFY_CHECKSUMS:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final LOG_WRITE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final MAX_DISK:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final MAX_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final MAX_MEMORY_PERCENT:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final MAX_OFF_HEAP_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final MIN_LOG_BUFFER_SIZE:I = 0x800

.field public static final MIN_TREE_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final NODE_MAX:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final NODE_MAX_DUPTREE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final NUM_LOG_BUFFERS:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final NUM_LOG_BUFFERS_DEFAULT:I = 0x3

.field public static final N_LOCK_TABLES:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final OFFHEAP_CHECKSUM:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final OFFHEAP_CORE_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final OFFHEAP_EVICT_BYTES:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final OFFHEAP_KEEP_ALIVE:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final OFFHEAP_MAX_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final OFFHEAP_N_LRU_LISTS:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final OLD_REP_LOG_FLUSH_TASK_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final OLD_REP_RUN_LOG_FLUSH_TASK:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final REP_PARAM_PREFIX:Ljava/lang/String; = "je.rep."

.field public static final RESERVED_DISK:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final STARTUP_DUMP_THRESHOLD:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final STATS_COLLECT:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final STATS_COLLECT_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final STATS_FILE_DIRECTORY:Lcom/sleepycat/je/config/ConfigParam;

.field public static final STATS_FILE_ROW_COUNT:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final STATS_MAX_FILES:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final SUPPORTED_PARAMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/config/ConfigParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final TREE_COMPACT_MAX_KEY_LENGTH:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final TREE_MAX_EMBEDDED_LN:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final TXN_DEADLOCK_STACK_TRACE:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final TXN_DUMPLOCKS:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final TXN_SERIALIZABLE_ISOLATION:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final TXN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final VERIFY_BTREE:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final VERIFY_BTREE_BATCH_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final VERIFY_BTREE_BATCH_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final VERIFY_DATA_RECORDS:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final VERIFY_LOG:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final VERIFY_LOG_READ_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final VERIFY_MAX_TARDINESS:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final VERIFY_OBSOLETE_RECORDS:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final VERIFY_SCHEDULE:Lcom/sleepycat/je/config/ConfigParam;

.field public static final VERIFY_SECONDARIES:Lcom/sleepycat/je/config/BooleanConfigParam;


# instance fields
.field private final CLEANER_CALC_RECENT_LN_SIZES:Lcom/sleepycat/je/config/IntConfigParam;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 52
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v2, "je.maxMemory"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    move-object v5, v10

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

    .line 56
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 58
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 59
    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 60
    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v12, "je.maxMemoryPercent"

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v11, v0

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    invoke-direct/range {v11 .. v17}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_MEMORY_PERCENT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 64
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.sharedCache"

    const/4 v11, 0x0

    .line 171
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 64
    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_SHARED_CACHE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 70
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 72
    nop

    .line 74
    const-string v4, "je.maxDisk"

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v0

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_DISK:Lcom/sleepycat/je/config/LongConfigParam;

    .line 78
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 80
    nop

    .line 82
    const-wide v2, 0x140000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v4, "je.freeDisk"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->FREE_DISK:Lcom/sleepycat/je/config/LongConfigParam;

    .line 86
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 88
    nop

    .line 90
    const-string v4, "je.reservedDisk"

    move-object v3, v0

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->RESERVED_DISK:Lcom/sleepycat/je/config/LongConfigParam;

    .line 102
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.comparatorsRequired"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_COMPARATORS_REQUIRED:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 114
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.recovery"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RECOVERY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 120
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.recoveryForceCheckpoint"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RECOVERY_FORCE_CHECKPOINT:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 126
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.recoveryForceNewFile"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RECOVERY_FORCE_NEW_FILE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 133
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.haltOnCommitAfterChecksumException"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->HALT_ON_COMMIT_AFTER_CHECKSUMEXCEPTION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 140
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.runINCompressor"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_INCOMPRESSOR:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 146
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.runEvictor"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_EVICTOR:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 152
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.dupConvertPreloadAll"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_DUP_CONVERT_PRELOAD_ALL:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 161
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v4, "je.evictor.wakeupInterval"

    const-string v5, "1 s"

    const-string v6, "75 min"

    const-string v7, "5 s"

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_WAKEUP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 169
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 171
    nop

    .line 172
    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 173
    const-string v3, "je.evictor.coreThreads"

    const/4 v7, 0x1

    move-object v2, v0

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_CORE_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 177
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 179
    nop

    .line 180
    nop

    .line 181
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v3, "je.evictor.maxThreads"

    move-object v2, v0

    move-object/from16 v4, v18

    move-object v6, v14

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_MAX_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 185
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.evictor.keepAlive"

    const-string v22, "1 s"

    const-string v23, "24 h"

    const-string v24, "10 min"

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_KEEP_ALIVE:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 198
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v3, "je.env.terminateTimeout"

    const-string v4, "1 ms"

    const-string v5, "60 s"

    const-string v6, "10 s"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_TERMINATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 206
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.evictor.allowBinDeltas"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_ALLOW_BIN_DELTAS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 216
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.evictor.mutateBins"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_MUTATE_BINS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 222
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.runCheckpointer"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_CHECKPOINTER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 228
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.runCleaner"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_CLEANER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 234
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.runExtinctRecordScanner"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_EXTINCT_RECORD_SCANNER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 241
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 243
    nop

    .line 244
    nop

    .line 245
    const-string v4, "je.env.backgroundReadLimit"

    const/4 v8, 0x1

    move-object v3, v0

    move-object v5, v12

    move-object v6, v13

    move-object v7, v12

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_BACKGROUND_READ_LIMIT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 249
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 251
    nop

    .line 252
    nop

    .line 253
    const-string v4, "je.env.backgroundWriteLimit"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_BACKGROUND_WRITE_LIMIT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 257
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.env.backgroundSleepInterval"

    const-string v22, "1 ms"

    const/16 v23, 0x0

    const-string v24, "1 ms"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_BACKGROUND_SLEEP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 266
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.checkLeaks"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_CHECK_LEAKS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 272
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.forcedYield"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_FORCED_YIELD:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 278
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.isTransactional"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_INIT_TXN:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 284
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.isLocking"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_INIT_LOCKING:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 290
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.isReadOnly"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RDONLY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 296
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.fairLatches"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_FAIR_LATCHES:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 307
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.sharedLatches"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_SHARED_LATCHES:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 313
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.setupLogger"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_SETUP_LOGGER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 319
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v4, "je.env.latchTimeout"

    const-string v5, "1 ms"

    const/4 v6, 0x0

    const-string v7, "5 min"

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_LATCH_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 327
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.env.ttlClockTolerance"

    const-string v22, "1 ms"

    const-string v24, "2 h"

    const/16 v25, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_TTL_CLOCK_TOLERANCE:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 341
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v3, "je.env.ttlMaxTxnTime"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "24 h"

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_TTL_MAX_TXN_TIME:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 357
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.env.ttlLnPurgeDelay"

    const/16 v22, 0x0

    const-string v24, "5 s"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_TTL_LN_PURGE_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 371
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.exposeUserData"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_EXPOSE_USER_DATA:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 377
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.dbEviction"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_DB_EVICTION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 466
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.env.autoReservedFileRepair"

    const-string v3, "off"

    invoke-direct {v0, v2, v3, v11, v11}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->AUTO_RESERVED_FILE_REPAIR:Lcom/sleepycat/je/config/ConfigParam;

    .line 472
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 474
    nop

    .line 475
    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 476
    const-string v4, "je.adler32.chunkSize"

    const/4 v8, 0x1

    move-object v3, v0

    move-object v5, v12

    move-object v6, v2

    move-object v7, v12

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ADLER32_CHUNK_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 488
    nop

    .line 489
    const-wide/16 v3, 0x1800

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_MEM_SIZE_MIN_STRING:Ljava/lang/String;

    .line 491
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 493
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 495
    const-string v4, "je.log.totalBufferBytes"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_MEM_SIZE:Lcom/sleepycat/je/config/LongConfigParam;

    .line 500
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 502
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 504
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v21, "je.log.numBuffers"

    move-object/from16 v20, v0

    move-object/from16 v22, v15

    move-object/from16 v24, v16

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->NUM_LOG_BUFFERS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 508
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 510
    const/16 v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 512
    const-string v4, "je.log.bufferSize"

    move-object v3, v0

    move-object v7, v2

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_BUFFER_MAX_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 516
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 518
    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 520
    const/16 v3, 0x800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const-string v21, "je.log.faultReadSize"

    move-object/from16 v20, v0

    move-object/from16 v22, v17

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FAULT_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 524
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 526
    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 528
    const/16 v28, 0x2000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v4, "je.log.iteratorReadSize"

    move-object v3, v0

    move-object/from16 v5, v27

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 532
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 534
    nop

    .line 536
    const/high16 v3, 0x1000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const-string v21, "je.log.iteratorMaxSize"

    move-object/from16 v20, v0

    move-object/from16 v22, v27

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_MAX_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 540
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 542
    const-wide/32 v3, 0xf4240

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 543
    const-wide/32 v29, 0x40000000

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 544
    const-wide/32 v3, 0x989680

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v4, "je.log.fileMax"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FILE_MAX:Lcom/sleepycat/je/config/LongConfigParam;

    .line 548
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 550
    nop

    .line 551
    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 552
    const-string v4, "je.log.nDataDirectories"

    move-object v3, v0

    move-object v5, v12

    move-object v7, v12

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_N_DATA_DIRECTORIES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 556
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v3, "je.log.checksumRead"

    invoke-direct {v0, v3, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_CHECKSUM_READ:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 562
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v3, "je.log.verifyChecksums"

    invoke-direct {v0, v3, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_VERIFY_CHECKSUMS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 568
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v3, "je.log.memOnly"

    invoke-direct {v0, v3, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_MEMORY_ONLY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 574
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 576
    nop

    .line 578
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const-string v21, "je.log.fileCacheSize"

    move-object/from16 v20, v0

    move-object/from16 v22, v16

    move-object/from16 v24, v31

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FILE_CACHE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 586
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 588
    nop

    .line 590
    const-string v4, "je.log.fileWarmUpSize"

    const/4 v6, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FILE_WARM_UP_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 598
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 600
    nop

    .line 602
    const/high16 v3, 0xa00000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const-string v21, "je.log.fileWarmUpReadSize"

    move-object/from16 v20, v0

    move-object/from16 v22, v27

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FILE_WARM_UP_BUF_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 609
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v3, "je.log.detectFileDelete"

    invoke-direct {v0, v3, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_DETECT_FILE_DELETE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 618
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.log.detectFileDeleteInterval"

    const-string v22, "1 ms"

    const-string v24, "1000 ms"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_DETECT_FILE_DELETE_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 760
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v4, "je.log.fsyncTimeout"

    const-string v5, "10 ms"

    const-string v7, "500 ms"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FSYNC_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 768
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.log.fsyncTimeLimit"

    const-string v22, "0"

    const-string v23, "30 s"

    const-string v24, "5 s"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FSYNC_TIME_LIMIT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 777
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v4, "je.log.groupCommitInterval"

    const-string v5, "0 ns"

    const-string v7, "0 ns"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_GROUP_COMMIT_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 786
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 788
    nop

    .line 790
    const-string v4, "je.log.groupCommitThreshold"

    move-object v3, v0

    move-object v5, v12

    move-object v7, v12

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_GROUP_COMMIT_THRESHOLD:Lcom/sleepycat/je/config/IntConfigParam;

    .line 797
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.log.flushSyncInterval"

    const-string v22, "0"

    const/16 v23, 0x0

    const-string v24, "20 s"

    const/16 v25, 0x1

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FLUSH_SYNC_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 809
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v4, "je.log.flushNoSyncInterval"

    const-string v5, "0"

    const-string v7, "5 s"

    const/4 v8, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FLUSH_NO_SYNC_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 821
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v3, "je.rep.runLogFlushTask"

    invoke-direct {v0, v3, v1, v1, v1}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OLD_REP_RUN_LOG_FLUSH_TASK:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 831
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.rep.logFlushTaskInterval"

    const-string v22, "1 s"

    const-string v24, "5 min"

    const/16 v26, 0x1

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OLD_REP_LOG_FLUSH_TASK_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 840
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v3, "je.log.useODSYNC"

    invoke-direct {v0, v3, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_USE_ODSYNC:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 846
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v3, "je.log.useNIO"

    invoke-direct {v0, v3, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_USE_NIO:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 852
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v3, "je.log.useWriteQueue"

    invoke-direct {v0, v3, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_USE_WRITE_QUEUE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 858
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 860
    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 861
    const/high16 v3, 0x10000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 862
    const-string v4, "je.log.writeQueueSize"

    const/4 v8, 0x0

    move-object v3, v0

    move-object v7, v2

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_WRITE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 869
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.log.directNIO"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_DIRECT_NIO:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 878
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 880
    nop

    .line 881
    const-wide/32 v2, 0x4000000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 882
    const-string v4, "je.log.chunkedNIO"

    move-object v3, v0

    move-object v5, v10

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_CHUNKED_NIO:Lcom/sleepycat/je/config/LongConfigParam;

    .line 891
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.deferredWrite.temp"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_DEFERREDWRITE_TEMP:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 900
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.runVerifier"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_VERIFIER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 909
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.env.verifySchedule"

    const-string v9, "0 0 * * *"

    invoke-direct {v0, v2, v9, v1, v11}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_SCHEDULE:Lcom/sleepycat/je/config/ConfigParam;

    .line 936
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.env.verifyMaxTardiness"

    const-string v22, "1 s"

    const-string v24, "5 min"

    const/16 v26, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_MAX_TARDINESS:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 947
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.verifyLog"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_LOG:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 956
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.env.verifyLogReadDelay"

    const-string v22, "0 ms"

    const-string v23, "10 s"

    const-string v24, "100 ms"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_LOG_READ_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 967
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.verifyBtree"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_BTREE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 976
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.verifySecondaries"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_SECONDARIES:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 985
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.verifyDataRecords"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_DATA_RECORDS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 994
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.verifyObsoleteRecords"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_OBSOLETE_RECORDS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1003
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1005
    nop

    .line 1006
    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1007
    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const-string v3, "je.env.verifyBtreeBatchSize"

    const/4 v7, 0x1

    move-object v2, v0

    move-object/from16 v4, v18

    move-object/from16 v6, v32

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_BTREE_BATCH_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1014
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.env.verifyBtreeBatchDelay"

    const-string v22, "0 ms"

    const-string v23, "10 s"

    const-string v24, "10 ms"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_BTREE_BATCH_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1025
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1027
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 1028
    const/16 v34, 0x7fff

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 1029
    const-string v21, "je.nodeMaxEntries"

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v33

    move-object/from16 v24, v27

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->NODE_MAX:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1033
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1035
    nop

    .line 1036
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 1037
    const-string v21, "je.nodeDupTreeMaxEntries"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->NODE_MAX_DUPTREE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1041
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1043
    nop

    .line 1045
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v4, "je.tree.maxEmbeddedLN"

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, v0

    move-object v5, v12

    move-object/from16 v35, v9

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->TREE_MAX_EMBEDDED_LN:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1052
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1054
    nop

    .line 1055
    nop

    .line 1056
    const-string v4, "je.tree.maxDelta"

    const/4 v9, 0x0

    move-object v3, v0

    move-object/from16 v6, v31

    move-object v7, v14

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->BIN_MAX_DELTAS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1060
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1062
    nop

    .line 1063
    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1064
    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v4, "je.tree.binDelta"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->BIN_DELTA_PERCENT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1072
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.tree.binDeltaBlindOps"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->BIN_DELTA_BLIND_OPS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1082
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.tree.binDeltaBlindPuts"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->BIN_DELTA_BLIND_PUTS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1088
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 1090
    const-wide/32 v2, 0xc800

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1092
    const-wide/32 v2, 0x7d000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v4, "je.tree.minMemory"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->MIN_TREE_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

    .line 1096
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1098
    nop

    .line 1099
    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1100
    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v4, "je.tree.compactMaxKeyLength"

    const/4 v8, 0x0

    move-object v3, v0

    move-object v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->TREE_COMPACT_MAX_KEY_LENGTH:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1107
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.compressor.wakeupInterval"

    const-string v22, "1 s"

    const-string v23, "75 min"

    const-string v24, "5 s"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->COMPRESSOR_WAKEUP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1115
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1117
    nop

    .line 1118
    nop

    .line 1119
    const-string v4, "je.compressor.deadlockRetry"

    move-object v3, v0

    move-object v6, v13

    move-object/from16 v7, v16

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->COMPRESSOR_RETRY:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1123
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.compressor.lockTimeout"

    const/16 v22, 0x0

    const-string v23, "75 min"

    const-string v24, "500 ms"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->COMPRESSOR_LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1134
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 1136
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1138
    const-wide/32 v2, 0x80000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "je.evictor.evictBytes"

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_EVICT_BYTES:Lcom/sleepycat/je/config/LongConfigParam;

    .line 1148
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1150
    const/16 v36, 0x32

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 1151
    nop

    .line 1152
    const/16 v2, 0x5f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const-string v21, "je.evictor.useMemoryFloor"

    move-object/from16 v20, v0

    move-object/from16 v23, v31

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_USEMEM_FLOOR:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1161
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1163
    nop

    .line 1164
    nop

    .line 1165
    const-string v3, "je.evictor.nodeScanPercentage"

    move-object v2, v0

    move-object/from16 v4, v18

    move-object/from16 v5, v31

    move-object v6, v14

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_NODE_SCAN_PERCENTAGE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1175
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1177
    nop

    .line 1178
    nop

    .line 1179
    const-string v3, "je.evictor.evictionBatchPercentage"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_EVICTION_BATCH_PERCENTAGE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1186
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1188
    nop

    .line 1189
    nop

    .line 1190
    const-string v3, "je.evictor.nodesPerScan"

    move-object v2, v0

    move-object/from16 v5, v32

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_NODES_PER_SCAN:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1194
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1196
    nop

    .line 1197
    nop

    .line 1198
    const-string v4, "je.evictor.criticalPercentage"

    move-object v3, v0

    move-object v5, v12

    move-object/from16 v6, v32

    move-object v7, v12

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_CRITICAL_PERCENTAGE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1205
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1207
    nop

    .line 1208
    nop

    .line 1209
    const-string v4, "je.evictor.deadlockRetry"

    move-object v3, v0

    move-object v6, v13

    move-object/from16 v7, v16

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_RETRY:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1216
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.evictor.lruOnly"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_LRU_ONLY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1244
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.evictor.useDirtyLRU"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_USE_DIRTY_LRU:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1250
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1252
    nop

    .line 1253
    nop

    .line 1254
    const-string v3, "je.evictor.nLRULists"

    const/4 v7, 0x0

    move-object v2, v0

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    move-object/from16 v6, v33

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_N_LRU_LISTS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1258
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.evictor.forcedYield"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_FORCED_YIELD:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1266
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 1268
    nop

    .line 1270
    const-string v4, "je.maxOffHeapMemory"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v3, v0

    move-object v5, v10

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_OFF_HEAP_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

    .line 1274
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 1276
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 1278
    const-wide/32 v2, 0x3200000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "je.offHeap.evictBytes"

    const/16 v23, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_EVICT_BYTES:Lcom/sleepycat/je/config/LongConfigParam;

    .line 1282
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.offHeap.checksum"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_CHECKSUM:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1290
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.runOffHeapEvictor"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_OFFHEAP_EVICTOR:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1296
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.expirationEnabled"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_EXPIRATION_ENABLED:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1302
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1304
    nop

    .line 1305
    nop

    .line 1306
    const-string v3, "je.offHeap.coreThreads"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v0

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_CORE_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1310
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1312
    nop

    .line 1313
    nop

    .line 1314
    const-string v3, "je.offHeap.maxThreads"

    move-object v2, v0

    move-object/from16 v4, v18

    move-object/from16 v6, v16

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_MAX_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1318
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.offHeap.keepAlive"

    const-string v22, "1 s"

    const-string v23, "24 h"

    const-string v24, "10 min"

    const/16 v25, 0x1

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_KEEP_ALIVE:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1326
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1328
    nop

    .line 1329
    nop

    .line 1330
    const-string v3, "je.evictor.nLRULists"

    const/4 v7, 0x0

    move-object v2, v0

    move-object/from16 v5, v17

    move-object/from16 v6, v33

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_N_LRU_LISTS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1337
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 1339
    nop

    .line 1340
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1341
    const-wide/32 v2, 0x1312d00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v4, "je.checkpointer.bytesInterval"

    move-object v3, v0

    move-object v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CHECKPOINTER_BYTES_INTERVAL:Lcom/sleepycat/je/config/LongConfigParam;

    .line 1345
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.checkpointer.wakeupInterval"

    const-string v22, "1 s"

    const-string v23, "75 min"

    const-string v24, "0"

    const/16 v25, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CHECKPOINTER_WAKEUP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1353
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1355
    nop

    .line 1356
    nop

    .line 1357
    const-string v4, "je.checkpointer.deadlockRetry"

    move-object v3, v0

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v7, v16

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CHECKPOINTER_RETRY:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1361
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.checkpointer.highPriority"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CHECKPOINTER_HIGH_PRIORITY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1370
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1372
    nop

    .line 1373
    nop

    .line 1374
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v4, "je.cleaner.minUtilization"

    const/4 v8, 0x1

    move-object v3, v0

    move-object/from16 v6, v19

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_MIN_UTILIZATION:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1378
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1380
    nop

    .line 1381
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1382
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v4, "je.cleaner.minFileUtilization"

    move-object v3, v0

    move-object/from16 v7, v17

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_MIN_FILE_UTILIZATION:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1386
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 1388
    nop

    .line 1389
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1390
    const-string v4, "je.cleaner.bytesInterval"

    move-object v3, v0

    move-object v5, v10

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_BYTES_INTERVAL:Lcom/sleepycat/je/config/LongConfigParam;

    .line 1394
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.cleaner.wakeupInterval"

    const-string v22, "0"

    const-string v23, "1 h"

    const-string v24, "10 s"

    const/16 v25, 0x1

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_WAKEUP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1402
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.cleaner.fetchObsoleteSize"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_FETCH_OBSOLETE_SIZE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1412
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.cleaner.adjustUtilization"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_ADJUST_UTILIZATION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1418
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1420
    nop

    .line 1421
    nop

    .line 1422
    const-string v4, "je.cleaner.deadlockRetry"

    move-object v3, v0

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v7, v16

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_DEADLOCK_RETRY:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1426
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.cleaner.lockTimeout"

    const-string v22, "0"

    const-string v23, "75 min"

    const-string v24, "500 ms"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1434
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.cleaner.expunge"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_REMOVE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1440
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.cleaner.useDeletedDir"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_USE_DELETED_DIR:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1470
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 1473
    const-wide/32 v2, 0x500000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1475
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v4, "je.cleaner.flushExtinctObsolete"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_FLUSH_EXTINCT_OBSOLETE:Lcom/sleepycat/je/config/LongConfigParam;

    .line 1483
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1485
    nop

    .line 1487
    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const-string v21, "je.cleaner.extinctScanBatchSize"

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v32

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_EXTINCT_SCAN_BATCH_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1495
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v3, "je.cleaner.extinctScanBatchDelay"

    const-string v4, "0 ms"

    const-string v5, "10 s"

    const-string v6, "2 ms"

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_EXTINCT_SCAN_BATCH_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1506
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1508
    nop

    .line 1509
    const v2, 0xf4240

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1510
    const-string v3, "je.cleaner.minFilesToDelete"

    move-object v2, v0

    move-object/from16 v4, v18

    move-object/from16 v6, v17

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_MIN_FILES_TO_DELETE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1517
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1519
    nop

    .line 1520
    nop

    .line 1521
    const-string v4, "je.cleaner.retries"

    move-object v3, v0

    move-object v5, v12

    move-object/from16 v6, v32

    move-object v7, v14

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_RETRIES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1528
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1530
    nop

    .line 1531
    nop

    .line 1532
    const-string v4, "je.cleaner.restartRetries"

    move-object v3, v0

    move-object/from16 v7, v17

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_RESTART_RETRIES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1536
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1538
    nop

    .line 1539
    nop

    .line 1540
    const-string v3, "je.cleaner.minAge"

    const/4 v7, 0x1

    move-object v2, v0

    move-object/from16 v4, v18

    move-object/from16 v5, v32

    move-object v6, v15

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_MIN_AGE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1558
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1560
    nop

    .line 1561
    const v2, 0xf4240

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1562
    const-string v4, "je.cleaner.calc.minUncountedLNs"

    move-object v3, v0

    move-object v5, v12

    move-object/from16 v7, v32

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_CALC_MIN_UNCOUNTED_LNS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1569
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1571
    nop

    .line 1572
    nop

    .line 1573
    const-string v3, "je.cleaner.calc.initialAdjustments"

    const/4 v7, 0x0

    move-object v2, v0

    move-object/from16 v4, v18

    move-object/from16 v5, v31

    move-object/from16 v6, v17

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_CALC_INITIAL_ADJUSTMENTS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1580
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1582
    nop

    .line 1583
    nop

    .line 1584
    const-string v3, "je.cleaner.calc.minProbeSkipFiles"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_CALC_MIN_PROBE_SKIP_FILES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1591
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1593
    nop

    .line 1594
    nop

    .line 1595
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v3, "je.cleaner.calc.maxProbeSkipFiles"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_CALC_MAX_PROBE_SKIP_FILES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1603
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.cleaner.cluster"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_CLUSTER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1613
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.cleaner.clusterAll"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_CLUSTER_ALL:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1623
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1625
    nop

    .line 1626
    const v2, 0x186a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1627
    const-string v4, "je.cleaner.maxBatchFiles"

    const/4 v8, 0x1

    move-object v3, v0

    move-object v5, v12

    move-object v7, v12

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_MAX_BATCH_FILES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1631
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1633
    nop

    .line 1635
    const-string v4, "je.cleaner.readSize"

    const/4 v6, 0x0

    move-object v3, v0

    move-object/from16 v5, v27

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1642
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v21, "je.env.diskOrderedScanLockTimeout"

    const-string v22, "0"

    const-string v23, "75 min"

    const-string v24, "10 seconds"

    const/16 v25, 0x1

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->DOS_PRODUCER_QUEUE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1656
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.cleaner.trackDetail"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_TRACK_DETAIL:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1669
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.cleaner.gradualExpiration"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_GRADUAL_EXPIRATION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1683
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1685
    nop

    .line 1686
    nop

    .line 1687
    const-string v3, "je.cleaner.twoPassGap"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v4, v18

    move-object/from16 v5, v31

    move-object v6, v14

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_TWO_PASS_GAP:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1712
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1714
    nop

    .line 1715
    nop

    .line 1716
    const-string v4, "je.cleaner.twoPassThreshold"

    const/4 v8, 0x1

    move-object v3, v0

    move-object v5, v12

    move-object/from16 v6, v31

    move-object v7, v12

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_TWO_PASS_THRESHOLD:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1720
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1722
    nop

    .line 1723
    nop

    .line 1724
    const-string v3, "je.cleaner.detailMaxMemoryPercentage"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object v6, v15

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_DETAIL_MAX_MEMORY_PERCENTAGE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1736
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.cleaner.rmwFix"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_RMW_FIX:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1742
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.cleaner.forceCleanFiles"

    const-string v10, ""

    invoke-direct {v0, v2, v10, v1, v11}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_FORCE_CLEAN_FILES:Lcom/sleepycat/je/config/ConfigParam;

    .line 1748
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1750
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1752
    const-string v4, "je.cleaner.upgradeToLogVersion"

    const/4 v6, 0x0

    move-object v3, v0

    move-object v7, v12

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_UPGRADE_TO_LOG_VERSION:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1756
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1758
    nop

    .line 1760
    const-string v3, "je.cleaner.threads"

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v2, v0

    move-object/from16 v4, v18

    move-object/from16 v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1764
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1766
    nop

    .line 1768
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v4, "je.cleaner.lookAheadCacheSize"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v3, v0

    move-object v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_LOOK_AHEAD_CACHE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1777
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.cleaner.foregroundProactiveMigration"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_FOREGROUND_PROACTIVE_MIGRATION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1788
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.cleaner.backgroundProactiveMigration"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_BACKGROUND_PROACTIVE_MIGRATION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1798
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.cleaner.lazyMigration"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_LAZY_MIGRATION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1804
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.runEraser"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_ERASER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1810
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v4, "je.erase.period"

    const-string v5, "0"

    const-string v7, "0"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ERASE_PERIOD:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1818
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.erase.deletedDatabases"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ERASE_DELETED_DATABASES:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1824
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.erase.extinctRecords"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ERASE_EXTINCT_RECORDS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1851
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v4, "je.erase.abortTimeout"

    const-string v5, "1 s"

    const-string v7, "30 s"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ERASE_ABORT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1860
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1862
    nop

    .line 1864
    const-string v3, "je.env.dbCacheClearCount"

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v4, v18

    move-object/from16 v6, v32

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_DB_CACHE_CLEAR_COUNT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1875
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v20, "je.env.dbCacheTimeout"

    const-string v21, "1 ms"

    const/16 v22, 0x0

    const-string v23, "300 ms"

    const/16 v24, 0x1

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_DB_CACHE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1886
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1888
    nop

    .line 1889
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1890
    const-string v3, "je.lock.nLockTables"

    const/4 v7, 0x0

    move-object v2, v0

    move-object/from16 v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->N_LOCK_TABLES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1894
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v20, "je.lock.timeout"

    const/16 v21, 0x0

    const-string v22, "75 min"

    const-string v23, "500 ms"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1903
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.lock.deadlockDetect"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOCK_DEADLOCK_DETECT:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1909
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v4, "je.lock.deadlockDetectDelay"

    const-string v5, "0"

    const-string v6, "75 min"

    const-string v7, "0"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOCK_DEADLOCK_DETECT_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1917
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.lock.oldLockExceptions"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOCK_OLD_LOCK_EXCEPTIONS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1923
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v4, "je.txn.timeout"

    const/4 v5, 0x0

    const-string v6, "75 min"

    const-string v7, "0"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->TXN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1931
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.txn.serializableIsolation"

    invoke-direct {v0, v2, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->TXN_SERIALIZABLE_ISOLATION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1937
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.txn.deadlockStackTrace"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->TXN_DEADLOCK_STACK_TRACE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1943
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.txn.dumpLocks"

    invoke-direct {v0, v2, v11, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->TXN_DUMPLOCKS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1953
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.env.logTrace"

    invoke-direct {v0, v2, v1, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->JE_LOGGING_DBLOG:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1962
    new-instance v0, Lcom/sleepycat/je/config/EnvironmentParams$1;

    const-string v2, "com.sleepycat.je.util.ConsoleHandler.level"

    const-string v3, "OFF"

    invoke-direct {v0, v2, v3, v1, v11}, Lcom/sleepycat/je/config/EnvironmentParams$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->JE_CONSOLE_LEVEL:Lcom/sleepycat/je/config/ConfigParam;

    .line 1980
    new-instance v0, Lcom/sleepycat/je/config/EnvironmentParams$2;

    const-string v2, "com.sleepycat.je.util.FileHandler.level"

    const-string v3, "INFO"

    invoke-direct {v0, v2, v3, v1, v11}, Lcom/sleepycat/je/config/EnvironmentParams$2;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->JE_FILE_LEVEL:Lcom/sleepycat/je/config/ConfigParam;

    .line 2002
    new-instance v0, Lcom/sleepycat/je/config/EnvironmentParams$3;

    const-string v2, "je.txn.durability"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v11}, Lcom/sleepycat/je/config/EnvironmentParams$3;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->JE_DURABILITY:Lcom/sleepycat/je/config/ConfigParam;

    .line 2020
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v20, "je.env.startupThreshold"

    const-string v21, "0"

    const/16 v22, 0x0

    const-string v23, "5 min"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->STARTUP_DUMP_THRESHOLD:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 2027
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.stats.collect"

    invoke-direct {v0, v2, v1, v1, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_COLLECT:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 2033
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 2035
    nop

    .line 2036
    nop

    .line 2037
    const/16 v1, 0x5a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v4, "je.stats.file.row.count"

    const/4 v8, 0x1

    move-object v3, v0

    move-object v5, v15

    move-object v6, v13

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_FILE_ROW_COUNT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 2041
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 2043
    nop

    .line 2044
    nop

    .line 2045
    const-string v3, "je.stats.max.files"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v4, v18

    move-object v5, v13

    move-object v6, v14

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_MAX_FILES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 2049
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v20, "je.stats.collect.interval"

    const-string v21, "1 s"

    const-string v23, "1 min"

    const/16 v24, 0x1

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_COLLECT_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 2057
    new-instance v0, Lcom/sleepycat/je/config/EnvironmentParams$4;

    const-string v1, "je.stats.file.directory"

    invoke-direct {v0, v1, v10, v11, v11}, Lcom/sleepycat/je/config/EnvironmentParams$4;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_FILE_DIRECTORY:Lcom/sleepycat/je/config/ConfigParam;

    .line 2078
    new-instance v0, Lcom/sleepycat/je/config/EnvironmentParams$5;

    const-string v1, "je.file.logging.prefix"

    invoke-direct {v0, v1, v10, v11, v11}, Lcom/sleepycat/je/config/EnvironmentParams$5;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->FILE_LOGGING_PREFIX:Lcom/sleepycat/je/config/ConfigParam;

    .line 2095
    new-instance v0, Lcom/sleepycat/je/config/EnvironmentParams$6;

    const-string v1, "je.file.logging.directory"

    invoke-direct {v0, v1, v10, v11, v11}, Lcom/sleepycat/je/config/EnvironmentParams$6;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->FILE_LOGGING_DIRECTORY:Lcom/sleepycat/je/config/ConfigParam;

    .line 2117
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v1, "je.env.runBackup"

    invoke-direct {v0, v1, v11, v11, v11}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_BACKUP:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 2123
    new-instance v0, Lcom/sleepycat/je/config/EnvironmentParams$7;

    const-string v1, "je.backup.schedule"

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2, v11, v11}, Lcom/sleepycat/je/config/EnvironmentParams$7;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->BACKUP_SCHEDULE:Lcom/sleepycat/je/config/ConfigParam;

    .line 2136
    new-instance v0, Lcom/sleepycat/je/config/EnvironmentParams$8;

    const-string v1, "je.backup.copyClass"

    const-string v2, "com.sleepycat.je.BackupFSArchiveCopy"

    invoke-direct {v0, v1, v2, v11, v11}, Lcom/sleepycat/je/config/EnvironmentParams$8;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->BACKUP_COPY_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    .line 2150
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v1, "je.backup.copyConfig"

    invoke-direct {v0, v1, v10, v11, v11}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->BACKUP_COPY_CONFIG:Lcom/sleepycat/je/config/ConfigParam;

    .line 2156
    new-instance v0, Lcom/sleepycat/je/config/EnvironmentParams$9;

    const-string v1, "je.backup.locationClass"

    const-string v2, "com.sleepycat.je.BackupFileLocation"

    invoke-direct {v0, v1, v2, v11, v11}, Lcom/sleepycat/je/config/EnvironmentParams$9;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->BACKUP_LOCATION_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    .line 2170
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v1, "je.backup.locationConfig"

    const-string v2, "/tmp/snapshots"

    invoke-direct {v0, v1, v2, v11, v11}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->BACKUP_LOCATION_CONFIG:Lcom/sleepycat/je/config/ConfigParam;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1547
    new-instance v7, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1549
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1550
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1551
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v1, "je.cleaner.calc.recentLNSizes"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    iput-object v7, p0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_CALC_RECENT_LN_SIZES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1547
    return-void
.end method

.method public static addSupportedParam(Lcom/sleepycat/je/config/ConfigParam;)V
    .locals 2
    .param p0, "param"    # Lcom/sleepycat/je/config/ConfigParam;

    .line 2184
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sleepycat/je/config/ConfigParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    return-void
.end method
