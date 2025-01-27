.class public Lcom/sleepycat/je/EnvironmentConfig;
.super Lcom/sleepycat/je/EnvironmentMutableConfig;
.source "EnvironmentConfig.java"


# static fields
.field public static final ADLER32_CHUNK_SIZE:Ljava/lang/String; = "je.adler32.chunkSize"

.field public static final BACKUP_COPY_CLASS:Ljava/lang/String; = "je.backup.copyClass"

.field public static final BACKUP_COPY_CONFIG:Ljava/lang/String; = "je.backup.copyConfig"

.field public static final BACKUP_LOCATION_CLASS:Ljava/lang/String; = "je.backup.locationClass"

.field public static final BACKUP_LOCATION_CONFIG:Ljava/lang/String; = "je.backup.locationConfig"

.field public static final BACKUP_SCHEDULE:Ljava/lang/String; = "je.backup.schedule"

.field public static final CHECKPOINTER_BYTES_INTERVAL:Ljava/lang/String; = "je.checkpointer.bytesInterval"

.field public static final CHECKPOINTER_DEADLOCK_RETRY:Ljava/lang/String; = "je.checkpointer.deadlockRetry"

.field public static final CHECKPOINTER_HIGH_PRIORITY:Ljava/lang/String; = "je.checkpointer.highPriority"

.field public static final CHECKPOINTER_WAKEUP_INTERVAL:Ljava/lang/String; = "je.checkpointer.wakeupInterval"

.field public static final CLEANER_ADJUST_UTILIZATION:Ljava/lang/String; = "je.cleaner.adjustUtilization"

.field public static final CLEANER_BACKGROUND_PROACTIVE_MIGRATION:Ljava/lang/String; = "je.cleaner.backgroundProactiveMigration"

.field public static final CLEANER_BYTES_INTERVAL:Ljava/lang/String; = "je.cleaner.bytesInterval"

.field public static final CLEANER_DEADLOCK_RETRY:Ljava/lang/String; = "je.cleaner.deadlockRetry"

.field public static final CLEANER_DETAIL_MAX_MEMORY_PERCENTAGE:Ljava/lang/String; = "je.cleaner.detailMaxMemoryPercentage"

.field public static final CLEANER_EXPUNGE:Ljava/lang/String; = "je.cleaner.expunge"

.field public static final CLEANER_FETCH_OBSOLETE_SIZE:Ljava/lang/String; = "je.cleaner.fetchObsoleteSize"

.field public static final CLEANER_FORCE_CLEAN_FILES:Ljava/lang/String; = "je.cleaner.forceCleanFiles"

.field public static final CLEANER_FOREGROUND_PROACTIVE_MIGRATION:Ljava/lang/String; = "je.cleaner.foregroundProactiveMigration"

.field public static final CLEANER_LAZY_MIGRATION:Ljava/lang/String; = "je.cleaner.lazyMigration"

.field public static final CLEANER_LOCK_TIMEOUT:Ljava/lang/String; = "je.cleaner.lockTimeout"

.field public static final CLEANER_LOOK_AHEAD_CACHE_SIZE:Ljava/lang/String; = "je.cleaner.lookAheadCacheSize"

.field public static final CLEANER_MAX_BATCH_FILES:Ljava/lang/String; = "je.cleaner.maxBatchFiles"

.field public static final CLEANER_MIN_AGE:Ljava/lang/String; = "je.cleaner.minAge"

.field public static final CLEANER_MIN_FILE_UTILIZATION:Ljava/lang/String; = "je.cleaner.minFileUtilization"

.field public static final CLEANER_MIN_UTILIZATION:Ljava/lang/String; = "je.cleaner.minUtilization"

.field public static final CLEANER_READ_SIZE:Ljava/lang/String; = "je.cleaner.readSize"

.field public static final CLEANER_THREADS:Ljava/lang/String; = "je.cleaner.threads"

.field public static final CLEANER_UPGRADE_TO_LOG_VERSION:Ljava/lang/String; = "je.cleaner.upgradeToLogVersion"

.field public static final CLEANER_USE_DELETED_DIR:Ljava/lang/String; = "je.cleaner.useDeletedDir"

.field public static final CLEANER_WAKEUP_INTERVAL:Ljava/lang/String; = "je.cleaner.wakeupInterval"

.field public static final COMPRESSOR_DEADLOCK_RETRY:Ljava/lang/String; = "je.compressor.deadlockRetry"

.field public static final COMPRESSOR_LOCK_TIMEOUT:Ljava/lang/String; = "je.compressor.lockTimeout"

.field public static final COMPRESSOR_PURGE_ROOT:Ljava/lang/String; = "je.compressor.purgeRoot"

.field public static final COMPRESSOR_WAKEUP_INTERVAL:Ljava/lang/String; = "je.compressor.wakeupInterval"

.field public static final CONSOLE_LOGGING_LEVEL:Ljava/lang/String; = "com.sleepycat.je.util.ConsoleHandler.level"

.field public static final DEFAULT:Lcom/sleepycat/je/EnvironmentConfig;

.field public static final DOS_PRODUCER_QUEUE_TIMEOUT:Ljava/lang/String; = "je.env.diskOrderedScanLockTimeout"

.field public static final ENV_BACKGROUND_READ_LIMIT:Ljava/lang/String; = "je.env.backgroundReadLimit"

.field public static final ENV_BACKGROUND_SLEEP_INTERVAL:Ljava/lang/String; = "je.env.backgroundSleepInterval"

.field public static final ENV_BACKGROUND_WRITE_LIMIT:Ljava/lang/String; = "je.env.backgroundWriteLimit"

.field public static final ENV_CHECK_LEAKS:Ljava/lang/String; = "je.env.checkLeaks"

.field public static final ENV_DB_EVICTION:Ljava/lang/String; = "je.env.dbEviction"

.field public static final ENV_DUP_CONVERT_PRELOAD_ALL:Ljava/lang/String; = "je.env.dupConvertPreloadAll"

.field public static final ENV_EXPIRATION_ENABLED:Ljava/lang/String; = "je.env.expirationEnabled"

.field public static final ENV_FAIR_LATCHES:Ljava/lang/String; = "je.env.fairLatches"

.field public static final ENV_FORCED_YIELD:Ljava/lang/String; = "je.env.forcedYield"

.field public static final ENV_IS_LOCKING:Ljava/lang/String; = "je.env.isLocking"

.field public static final ENV_IS_TRANSACTIONAL:Ljava/lang/String; = "je.env.isTransactional"

.field public static final ENV_LATCH_TIMEOUT:Ljava/lang/String; = "je.env.latchTimeout"

.field public static final ENV_READ_ONLY:Ljava/lang/String; = "je.env.isReadOnly"

.field public static final ENV_RECOVERY_FORCE_CHECKPOINT:Ljava/lang/String; = "je.env.recoveryForceCheckpoint"

.field public static final ENV_RECOVERY_FORCE_NEW_FILE:Ljava/lang/String; = "je.env.recoveryForceNewFile"

.field public static final ENV_RUN_BACKUP:Ljava/lang/String; = "je.env.runBackup"

.field public static final ENV_RUN_CHECKPOINTER:Ljava/lang/String; = "je.env.runCheckpointer"

.field public static final ENV_RUN_CLEANER:Ljava/lang/String; = "je.env.runCleaner"

.field public static final ENV_RUN_EVICTOR:Ljava/lang/String; = "je.env.runEvictor"

.field public static final ENV_RUN_EXTINCT_RECORD_SCANNER:Ljava/lang/String; = "je.env.runExtinctRecordScanner"

.field public static final ENV_RUN_IN_COMPRESSOR:Ljava/lang/String; = "je.env.runINCompressor"

.field public static final ENV_RUN_OFFHEAP_EVICTOR:Ljava/lang/String; = "je.env.runOffHeapEvictor"

.field public static final ENV_RUN_VERIFIER:Ljava/lang/String; = "je.env.runVerifier"

.field public static final ENV_TTL_CLOCK_TOLERANCE:Ljava/lang/String; = "je.env.ttlClockTolerance"

.field public static final EVICTOR_ALLOW_BIN_DELTAS:Ljava/lang/String; = "je.evictor.allowBinDeltas"

.field public static final EVICTOR_CORE_THREADS:Ljava/lang/String; = "je.evictor.coreThreads"

.field public static final EVICTOR_CRITICAL_PERCENTAGE:Ljava/lang/String; = "je.evictor.criticalPercentage"

.field public static final EVICTOR_DEADLOCK_RETRY:Ljava/lang/String; = "je.evictor.deadlockRetry"

.field public static final EVICTOR_EVICT_BYTES:Ljava/lang/String; = "je.evictor.evictBytes"

.field public static final EVICTOR_FORCED_YIELD:Ljava/lang/String; = "je.evictor.forcedYield"

.field public static final EVICTOR_KEEP_ALIVE:Ljava/lang/String; = "je.evictor.keepAlive"

.field public static final EVICTOR_LRU_ONLY:Ljava/lang/String; = "je.evictor.lruOnly"

.field public static final EVICTOR_MAX_THREADS:Ljava/lang/String; = "je.evictor.maxThreads"

.field public static final EVICTOR_NODES_PER_SCAN:Ljava/lang/String; = "je.evictor.nodesPerScan"

.field public static final EVICTOR_N_LRU_LISTS:Ljava/lang/String; = "je.evictor.nLRULists"

.field public static final FILE_LOGGING_DIRECTORY:Ljava/lang/String; = "je.file.logging.directory"

.field public static final FILE_LOGGING_LEVEL:Ljava/lang/String; = "com.sleepycat.je.util.FileHandler.level"

.field public static final FILE_LOGGING_PREFIX:Ljava/lang/String; = "je.file.logging.prefix"

.field public static final FREE_DISK:Ljava/lang/String; = "je.freeDisk"

.field public static final HALT_ON_COMMIT_AFTER_CHECKSUMEXCEPTION:Ljava/lang/String; = "je.haltOnCommitAfterChecksumException"

.field public static final LOCK_DEADLOCK_DETECT:Ljava/lang/String; = "je.lock.deadlockDetect"

.field public static final LOCK_DEADLOCK_DETECT_DELAY:Ljava/lang/String; = "je.lock.deadlockDetectDelay"

.field public static final LOCK_N_LOCK_TABLES:Ljava/lang/String; = "je.lock.nLockTables"

.field public static final LOCK_OLD_LOCK_EXCEPTIONS:Ljava/lang/String; = "je.lock.oldLockExceptions"

.field public static final LOCK_TIMEOUT:Ljava/lang/String; = "je.lock.timeout"

.field public static final LOG_BUFFER_SIZE:Ljava/lang/String; = "je.log.bufferSize"

.field public static final LOG_CHECKSUM_READ:Ljava/lang/String; = "je.log.checksumRead"

.field public static final LOG_CHUNKED_NIO:Ljava/lang/String; = "je.log.chunkedNIO"

.field public static final LOG_DETECT_FILE_DELETE:Ljava/lang/String; = "je.log.detectFileDelete"

.field public static final LOG_DETECT_FILE_DELETE_INTERVAL:Ljava/lang/String; = "je.log.detectFileDeleteInterval"

.field public static final LOG_DIRECT_NIO:Ljava/lang/String; = "je.log.directNIO"

.field public static final LOG_FAULT_READ_SIZE:Ljava/lang/String; = "je.log.faultReadSize"

.field public static final LOG_FILE_CACHE_SIZE:Ljava/lang/String; = "je.log.fileCacheSize"

.field public static final LOG_FILE_MAX:Ljava/lang/String; = "je.log.fileMax"

.field public static final LOG_FLUSH_NO_SYNC_INTERVAL:Ljava/lang/String; = "je.log.flushNoSyncInterval"

.field public static final LOG_FLUSH_SYNC_INTERVAL:Ljava/lang/String; = "je.log.flushSyncInterval"

.field public static final LOG_FSYNC_TIMEOUT:Ljava/lang/String; = "je.log.fsyncTimeout"

.field public static final LOG_FSYNC_TIME_LIMIT:Ljava/lang/String; = "je.log.fsyncTimeLimit"

.field public static final LOG_GROUP_COMMIT_INTERVAL:Ljava/lang/String; = "je.log.groupCommitInterval"

.field public static final LOG_GROUP_COMMIT_THRESHOLD:Ljava/lang/String; = "je.log.groupCommitThreshold"

.field public static final LOG_ITERATOR_MAX_SIZE:Ljava/lang/String; = "je.log.iteratorMaxSize"

.field public static final LOG_ITERATOR_READ_SIZE:Ljava/lang/String; = "je.log.iteratorReadSize"

.field public static final LOG_MEM_ONLY:Ljava/lang/String; = "je.log.memOnly"

.field public static final LOG_NUM_BUFFERS:Ljava/lang/String; = "je.log.numBuffers"

.field public static final LOG_N_DATA_DIRECTORIES:Ljava/lang/String; = "je.log.nDataDirectories"

.field public static final LOG_TOTAL_BUFFER_BYTES:Ljava/lang/String; = "je.log.totalBufferBytes"

.field public static final LOG_USE_NIO:Ljava/lang/String; = "je.log.useNIO"

.field public static final LOG_USE_ODSYNC:Ljava/lang/String; = "je.log.useODSYNC"

.field public static final LOG_USE_WRITE_QUEUE:Ljava/lang/String; = "je.log.useWriteQueue"

.field public static final LOG_VERIFY_CHECKSUMS:Ljava/lang/String; = "je.log.verifyChecksums"

.field public static final LOG_WRITE_QUEUE_SIZE:Ljava/lang/String; = "je.log.writeQueueSize"

.field public static final MAX_DISK:Ljava/lang/String; = "je.maxDisk"

.field public static final MAX_MEMORY:Ljava/lang/String; = "je.maxMemory"

.field public static final MAX_MEMORY_PERCENT:Ljava/lang/String; = "je.maxMemoryPercent"

.field public static final MAX_OFF_HEAP_MEMORY:Ljava/lang/String; = "je.maxOffHeapMemory"

.field public static final NODE_DUP_TREE_MAX_ENTRIES:Ljava/lang/String; = "je.nodeDupTreeMaxEntries"

.field public static final NODE_MAX_ENTRIES:Ljava/lang/String; = "je.nodeMaxEntries"

.field public static final OFFHEAP_CHECKSUM:Ljava/lang/String; = "je.offHeap.checksum"

.field public static final OFFHEAP_CORE_THREADS:Ljava/lang/String; = "je.offHeap.coreThreads"

.field public static final OFFHEAP_EVICT_BYTES:Ljava/lang/String; = "je.offHeap.evictBytes"

.field public static final OFFHEAP_KEEP_ALIVE:Ljava/lang/String; = "je.offHeap.keepAlive"

.field public static final OFFHEAP_MAX_THREADS:Ljava/lang/String; = "je.offHeap.maxThreads"

.field public static final OFFHEAP_N_LRU_LISTS:Ljava/lang/String; = "je.evictor.nLRULists"

.field public static final RESERVED_DISK:Ljava/lang/String; = "je.reservedDisk"

.field public static final SHARED_CACHE:Ljava/lang/String; = "je.sharedCache"

.field public static final STARTUP_DUMP_THRESHOLD:Ljava/lang/String; = "je.env.startupThreshold"

.field public static final STATS_COLLECT:Ljava/lang/String; = "je.stats.collect"

.field public static final STATS_COLLECT_INTERVAL:Ljava/lang/String; = "je.stats.collect.interval"

.field public static final STATS_FILE_DIRECTORY:Ljava/lang/String; = "je.stats.file.directory"

.field public static final STATS_FILE_ROW_COUNT:Ljava/lang/String; = "je.stats.file.row.count"

.field public static final STATS_MAX_FILES:Ljava/lang/String; = "je.stats.max.files"

.field public static final TRACE_CONSOLE:Ljava/lang/String; = "java.util.logging.ConsoleHandler.on"

.field public static final TRACE_DB:Ljava/lang/String; = "java.util.logging.DbLogHandler.on"

.field public static final TRACE_FILE:Ljava/lang/String; = "java.util.logging.FileHandler.on"

.field public static final TRACE_FILE_COUNT:Ljava/lang/String; = "java.util.logging.FileHandler.count"

.field public static final TRACE_FILE_LIMIT:Ljava/lang/String; = "java.util.logging.FileHandler.limit"

.field public static final TRACE_LEVEL:Ljava/lang/String; = "java.util.logging.level"

.field public static final TRACE_LEVEL_CLEANER:Ljava/lang/String; = "java.util.logging.level.cleaner"

.field public static final TRACE_LEVEL_EVICTOR:Ljava/lang/String; = "java.util.logging.level.evictor"

.field public static final TRACE_LEVEL_LOCK_MANAGER:Ljava/lang/String; = "java.util.logging.level.lockMgr"

.field public static final TRACE_LEVEL_RECOVERY:Ljava/lang/String; = "java.util.logging.level.recovery"

.field public static final TREE_BIN_DELTA:Ljava/lang/String; = "je.tree.binDelta"

.field public static final TREE_COMPACT_MAX_KEY_LENGTH:Ljava/lang/String; = "je.tree.compactMaxKeyLength"

.field public static final TREE_MAX_DELTA:Ljava/lang/String; = "je.tree.maxDelta"

.field public static final TREE_MAX_EMBEDDED_LN:Ljava/lang/String; = "je.tree.maxEmbeddedLN"

.field public static final TREE_MIN_MEMORY:Ljava/lang/String; = "je.tree.minMemory"

.field public static final TXN_DEADLOCK_STACK_TRACE:Ljava/lang/String; = "je.txn.deadlockStackTrace"

.field public static final TXN_DUMP_LOCKS:Ljava/lang/String; = "je.txn.dumpLocks"

.field public static final TXN_DURABILITY:Ljava/lang/String; = "je.txn.durability"

.field public static final TXN_SERIALIZABLE_ISOLATION:Ljava/lang/String; = "je.txn.serializableIsolation"

.field public static final TXN_TIMEOUT:Ljava/lang/String; = "je.txn.timeout"

.field public static final VERIFY_BTREE:Ljava/lang/String; = "je.env.verifyBtree"

.field public static final VERIFY_BTREE_BATCH_DELAY:Ljava/lang/String; = "je.env.verifyBtreeBatchDelay"

.field public static final VERIFY_BTREE_BATCH_SIZE:Ljava/lang/String; = "je.env.verifyBtreeBatchSize"

.field public static final VERIFY_DATA_RECORDS:Ljava/lang/String; = "je.env.verifyDataRecords"

.field public static final VERIFY_LOG:Ljava/lang/String; = "je.env.verifyLog"

.field public static final VERIFY_LOG_READ_DELAY:Ljava/lang/String; = "je.env.verifyLogReadDelay"

.field public static final VERIFY_OBSOLETE_RECORDS:Ljava/lang/String; = "je.env.verifyObsoleteRecords"

.field public static final VERIFY_SCHEDULE:Ljava/lang/String; = "je.env.verifySchedule"

.field public static final VERIFY_SECONDARIES:Ljava/lang/String; = "je.env.verifySecondaries"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private allowCreate:Z

.field private transient checkpointUP:Z

.field private transient classLoader:Ljava/lang/ClassLoader;

.field private transient createEP:Z

.field private transient createUP:Z

.field private customStats:Lcom/sleepycat/je/CustomStats;

.field private transient dupConvertPreloadConfig:Lcom/sleepycat/je/PreloadConfig;

.field private transient extinctionFilter:Lcom/sleepycat/je/ExtinctionFilter;

.field private transient loggingHandler:Ljava/util/logging/Handler;

.field private nodeName:Ljava/lang/String;

.field private transient recoveryProgressListener:Lcom/sleepycat/je/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/RecoveryProgress;",
            ">;"
        }
    .end annotation
.end field

.field private transient taskCoordinator:Lcom/sleepycat/je/utilint/TaskCoordinator;

.field private transient txnReadCommitted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 207
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/EnvironmentConfig;->DEFAULT:Lcom/sleepycat/je/EnvironmentConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4562
    invoke-direct {p0}, Lcom/sleepycat/je/EnvironmentMutableConfig;-><init>()V

    .line 4522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->createUP:Z

    .line 4523
    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->createEP:Z

    .line 4528
    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->checkpointUP:Z

    .line 4530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->allowCreate:Z

    .line 4535
    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->txnReadCommitted:Z

    .line 4537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->nodeName:Ljava/lang/String;

    .line 4563
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4577
    invoke-direct {p0, p1}, Lcom/sleepycat/je/EnvironmentMutableConfig;-><init>(Ljava/util/Properties;)V

    .line 4522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->createUP:Z

    .line 4523
    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->createEP:Z

    .line 4528
    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->checkpointUP:Z

    .line 4530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->allowCreate:Z

    .line 4535
    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->txnReadCommitted:Z

    .line 4537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->nodeName:Ljava/lang/String;

    .line 4578
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/EnvironmentConfig;
    .locals 1

    .line 5297
    invoke-super {p0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->clone()Lcom/sleepycat/je/EnvironmentMutableConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/EnvironmentConfig;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentConfig;->clone()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentConfig;->clone()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAllowCreate()Z
    .locals 1

    .line 4609
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->allowCreate:Z

    return v0
.end method

.method getCheckpointUP()Z
    .locals 1

    .line 5289
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->checkpointUP:Z

    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 5190
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method getCreateEP()Z
    .locals 1

    .line 5275
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->createEP:Z

    return v0
.end method

.method getCreateUP()Z
    .locals 1

    .line 5261
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->createUP:Z

    return v0
.end method

.method public getCustomStats()Lcom/sleepycat/je/CustomStats;
    .locals 1

    .line 5049
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->customStats:Lcom/sleepycat/je/CustomStats;

    return-object v0
.end method

.method public getDupConvertPreloadConfig()Lcom/sleepycat/je/PreloadConfig;
    .locals 1

    .line 5247
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->dupConvertPreloadConfig:Lcom/sleepycat/je/PreloadConfig;

    return-object v0
.end method

.method public getExtinctionFilter()Lcom/sleepycat/je/ExtinctionFilter;
    .locals 1

    .line 5218
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->extinctionFilter:Lcom/sleepycat/je/ExtinctionFilter;

    return-object v0
.end method

.method public getLockTimeout()J
    .locals 2

    .line 4694
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/EnvironmentConfig;->getLockTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLockTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 4681
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 4682
    invoke-static {v0, v1, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 4681
    return-wide v0
.end method

.method public getLocking()Z
    .locals 2

    .line 4810
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_INIT_LOCKING:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 4811
    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    .line 4810
    return v0
.end method

.method public getLoggingHandler()Ljava/util/logging/Handler;
    .locals 1

    .line 5082
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->loggingHandler:Ljava/util/logging/Handler;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 5022
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 2

    .line 4731
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RDONLY:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    return v0
.end method

.method public getRecoveryProgressListener()Lcom/sleepycat/je/ProgressListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/RecoveryProgress;",
            ">;"
        }
    .end annotation

    .line 5165
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->recoveryProgressListener:Lcom/sleepycat/je/ProgressListener;

    return-object v0
.end method

.method public getSharedCache()Z
    .locals 2

    .line 4992
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_SHARED_CACHE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 4993
    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    .line 4992
    return v0
.end method

.method public getTaskCoordinator()Lcom/sleepycat/je/utilint/TaskCoordinator;
    .locals 1

    .line 5115
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->taskCoordinator:Lcom/sleepycat/je/utilint/TaskCoordinator;

    return-object v0
.end method

.method public getTransactional()Z
    .locals 2

    .line 4770
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_INIT_TXN:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    return v0
.end method

.method getTxnReadCommitted()Z
    .locals 1

    .line 4955
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->txnReadCommitted:Z

    return v0
.end method

.method public getTxnSerializableIsolation()Z
    .locals 2

    .line 4938
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->TXN_SERIALIZABLE_ISOLATION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 4939
    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    .line 4938
    return v0
.end method

.method public getTxnTimeout()J
    .locals 2

    .line 4897
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/EnvironmentConfig;->getTxnTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTxnTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 4884
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->TXN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 4885
    invoke-static {v0, v1, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 4884
    return-wide v0
.end method

.method public setAllowCreate(Z)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "allowCreate"    # Z

    .line 4590
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setAllowCreateVoid(Z)V

    .line 4591
    return-object p0
.end method

.method public setAllowCreateVoid(Z)V
    .locals 0
    .param p1, "allowCreate"    # Z

    .line 4599
    iput-boolean p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->allowCreate:Z

    .line 4600
    return-void
.end method

.method setCheckpointUP(Z)V
    .locals 0
    .param p1, "checkpointUP"    # Z

    .line 5282
    iput-boolean p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->checkpointUP:Z

    .line 5283
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 5173
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setClassLoaderVoid(Ljava/lang/ClassLoader;)V

    .line 5174
    return-object p0
.end method

.method public setClassLoaderVoid(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 5182
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->classLoader:Ljava/lang/ClassLoader;

    .line 5183
    return-void
.end method

.method public setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 7
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5123
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    iget-boolean v4, p0, Lcom/sleepycat/je/EnvironmentConfig;->validateParams:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/je/dbi/DbConfigManager;->setConfigParam(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 5130
    return-object p0
.end method

.method public bridge synthetic setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object p1

    return-object p1
.end method

.method setCreateEP(Z)V
    .locals 0
    .param p1, "createUP"    # Z

    .line 5268
    iput-boolean p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->createEP:Z

    .line 5269
    return-void
.end method

.method setCreateUP(Z)V
    .locals 0
    .param p1, "createUP"    # Z

    .line 5254
    iput-boolean p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->createUP:Z

    .line 5255
    return-void
.end method

.method public setCustomStats(Lcom/sleepycat/je/CustomStats;)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "customStats"    # Lcom/sleepycat/je/CustomStats;

    .line 5031
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->customStats:Lcom/sleepycat/je/CustomStats;

    .line 5032
    return-object p0
.end method

.method public setCustomStatsVoid(Lcom/sleepycat/je/CustomStats;)V
    .locals 0
    .param p1, "customStats"    # Lcom/sleepycat/je/CustomStats;

    .line 5040
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->customStats:Lcom/sleepycat/je/CustomStats;

    .line 5041
    return-void
.end method

.method public setDupConvertPreloadConfig(Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "preloadConfig"    # Lcom/sleepycat/je/PreloadConfig;

    .line 5228
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setDupConvertPreloadConfigVoid(Lcom/sleepycat/je/PreloadConfig;)V

    .line 5229
    return-object p0
.end method

.method public setDupConvertPreloadConfigVoid(Lcom/sleepycat/je/PreloadConfig;)V
    .locals 0
    .param p1, "preloadConfig"    # Lcom/sleepycat/je/PreloadConfig;

    .line 5238
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->dupConvertPreloadConfig:Lcom/sleepycat/je/PreloadConfig;

    .line 5239
    return-void
.end method

.method public setExtinctionFilter(Lcom/sleepycat/je/ExtinctionFilter;)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "filter"    # Lcom/sleepycat/je/ExtinctionFilter;

    .line 5200
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setExtinctionFilterVoid(Lcom/sleepycat/je/ExtinctionFilter;)V

    .line 5201
    return-object p0
.end method

.method public setExtinctionFilterVoid(Lcom/sleepycat/je/ExtinctionFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/sleepycat/je/ExtinctionFilter;

    .line 5210
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->extinctionFilter:Lcom/sleepycat/je/ExtinctionFilter;

    .line 5211
    return-void
.end method

.method public setLockTimeout(J)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4658
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentConfig;->setLockTimeoutVoid(J)V

    .line 4659
    return-object p0
.end method

.method public setLockTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4631
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/EnvironmentConfig;->setLockTimeoutVoid(JLjava/util/concurrent/TimeUnit;)V

    .line 4632
    return-object p0
.end method

.method public setLockTimeoutVoid(J)V
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4669
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/EnvironmentConfig;->setLockTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 4670
    return-void
.end method

.method public setLockTimeoutVoid(JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4642
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    iget-boolean v5, p0, Lcom/sleepycat/je/EnvironmentConfig;->validateParams:Z

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->setDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;JLjava/util/concurrent/TimeUnit;Z)V

    .line 4644
    return-void
.end method

.method public setLocking(Z)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "locking"    # Z

    .line 4785
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setLockingVoid(Z)V

    .line 4786
    return-object p0
.end method

.method public setLockingVoid(Z)V
    .locals 3
    .param p1, "locking"    # Z

    .line 4795
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_INIT_LOCKING:Lcom/sleepycat/je/config/BooleanConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/EnvironmentConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;ZZ)V

    .line 4798
    return-void
.end method

.method public setLoggingHandler(Ljava/util/logging/Handler;)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "handler"    # Ljava/util/logging/Handler;

    .line 5065
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setLoggingHandlerVoid(Ljava/util/logging/Handler;)V

    .line 5066
    return-object p0
.end method

.method public setLoggingHandlerVoid(Ljava/util/logging/Handler;)V
    .locals 0
    .param p1, "handler"    # Ljava/util/logging/Handler;

    .line 5074
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->loggingHandler:Ljava/util/logging/Handler;

    .line 5075
    return-void
.end method

.method public setNodeName(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 5006
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setNodeNameVoid(Ljava/lang/String;)V

    .line 5007
    return-object p0
.end method

.method public setNodeNameVoid(Ljava/lang/String;)V
    .locals 0
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 5015
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->nodeName:Ljava/lang/String;

    .line 5016
    return-void
.end method

.method public setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "readOnly"    # Z

    .line 4707
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnlyVoid(Z)V

    .line 4708
    return-object p0
.end method

.method public setReadOnlyVoid(Z)V
    .locals 3
    .param p1, "readOnly"    # Z

    .line 4717
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RDONLY:Lcom/sleepycat/je/config/BooleanConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/EnvironmentConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;ZZ)V

    .line 4719
    return-void
.end method

.method public setRecoveryProgressListener(Lcom/sleepycat/je/ProgressListener;)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/RecoveryProgress;",
            ">;)",
            "Lcom/sleepycat/je/EnvironmentConfig;"
        }
    .end annotation

    .line 5148
    .local p1, "progressListener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setRecoveryProgressListenerVoid(Lcom/sleepycat/je/ProgressListener;)V

    .line 5149
    return-object p0
.end method

.method public setRecoveryProgressListenerVoid(Lcom/sleepycat/je/ProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/RecoveryProgress;",
            ">;)V"
        }
    .end annotation

    .line 5158
    .local p1, "progressListener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/RecoveryProgress;>;"
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->recoveryProgressListener:Lcom/sleepycat/je/ProgressListener;

    .line 5159
    return-void
.end method

.method public setSharedCache(Z)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "sharedCache"    # Z

    .line 4969
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setSharedCacheVoid(Z)V

    .line 4970
    return-object p0
.end method

.method public setSharedCacheVoid(Z)V
    .locals 3
    .param p1, "sharedCache"    # Z

    .line 4979
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_SHARED_CACHE:Lcom/sleepycat/je/config/BooleanConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/EnvironmentConfig;->validateParams:Z

    .line 4980
    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;ZZ)V

    .line 4982
    return-void
.end method

.method public setTaskCoordinator(Lcom/sleepycat/je/utilint/TaskCoordinator;)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "taskCoordinator"    # Lcom/sleepycat/je/utilint/TaskCoordinator;

    .line 5097
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setTaskCoordinatorVoid(Lcom/sleepycat/je/utilint/TaskCoordinator;)V

    .line 5098
    return-object p0
.end method

.method public setTaskCoordinatorVoid(Lcom/sleepycat/je/utilint/TaskCoordinator;)V
    .locals 0
    .param p1, "taskCoordinator"    # Lcom/sleepycat/je/utilint/TaskCoordinator;

    .line 5106
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->taskCoordinator:Lcom/sleepycat/je/utilint/TaskCoordinator;

    .line 5107
    return-void
.end method

.method public setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "transactional"    # Z

    .line 4746
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactionalVoid(Z)V

    .line 4747
    return-object p0
.end method

.method public setTransactionalVoid(Z)V
    .locals 3
    .param p1, "transactional"    # Z

    .line 4756
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_INIT_TXN:Lcom/sleepycat/je/config/BooleanConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/EnvironmentConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;ZZ)V

    .line 4758
    return-void
.end method

.method setTxnReadCommitted(Z)V
    .locals 0
    .param p1, "txnReadCommitted"    # Z

    .line 4947
    iput-boolean p1, p0, Lcom/sleepycat/je/EnvironmentConfig;->txnReadCommitted:Z

    .line 4948
    return-void
.end method

.method public setTxnSerializableIsolation(Z)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "txnSerializableIsolation"    # Z

    .line 4911
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentConfig;->setTxnSerializableIsolationVoid(Z)V

    .line 4912
    return-object p0
.end method

.method public setTxnSerializableIsolationVoid(Z)V
    .locals 3
    .param p1, "txnSerializableIsolation"    # Z

    .line 4922
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->TXN_SERIALIZABLE_ISOLATION:Lcom/sleepycat/je/config/BooleanConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/EnvironmentConfig;->validateParams:Z

    .line 4923
    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;ZZ)V

    .line 4925
    return-void
.end method

.method public setTxnTimeout(J)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4860
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentConfig;->setTxnTimeoutVoid(J)V

    .line 4861
    return-object p0
.end method

.method public setTxnTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/EnvironmentConfig;
    .locals 0
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4833
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/EnvironmentConfig;->setTxnTimeoutVoid(JLjava/util/concurrent/TimeUnit;)V

    .line 4834
    return-object p0
.end method

.method public setTxnTimeoutVoid(J)V
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4871
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/EnvironmentConfig;->setTxnTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 4872
    return-void
.end method

.method public setTxnTimeoutVoid(JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4844
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->TXN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    iget-boolean v5, p0, Lcom/sleepycat/je/EnvironmentConfig;->validateParams:Z

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->setDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;JLjava/util/concurrent/TimeUnit;Z)V

    .line 4846
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 5305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " nodeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/EnvironmentConfig;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " allowCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/EnvironmentConfig;->allowCreate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " recoveryProgressListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/EnvironmentConfig;->recoveryProgressListener:Lcom/sleepycat/je/ProgressListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " classLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/EnvironmentConfig;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " customStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/EnvironmentConfig;->customStats:Lcom/sleepycat/je/CustomStats;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5311
    invoke-super {p0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5305
    return-object v0
.end method
