.class public Lcom/sleepycat/je/dbi/EnvironmentImpl;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/EnvConfigObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;,
        Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;,
        Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;,
        Lcom/sleepycat/je/dbi/EnvironmentImpl$InternalEnvironment;,
        Lcom/sleepycat/je/dbi/EnvironmentImpl$NoopVLSNProxy;,
        Lcom/sleepycat/je/dbi/EnvironmentImpl$MBeanRegistrar;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DISABLE_JAVA_ADLER32_NAME:Ljava/lang/String; = "je.disable.java.adler32"

.field private static final FILEHANDLER_COUNT:I = 0xa

.field private static final FILEHANDLER_LIMIT:I = 0x989680

.field private static final INFO_FILES:Ljava/lang/String; = "je.info"

.field private static final MEMORY_EXCEEDED_PRELOAD_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

.field private static final REGISTER_MONITOR:Ljava/lang/String; = "JEMonitor"

.field private static final TEST_NO_LOCKING_MODE:Z = false

.field private static final TIME_EXCEEDED_PRELOAD_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

.field private static final USER_HALT_REQUEST_PRELOAD_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

.field public static final USE_JAVA5_ADLER32:Z

.field private static adler32ChunkSize:I

.field private static forcedYield:Z

.field private static threadLocalReferenceCount:I


# instance fields
.field private allowBlindOps:Z

.field private allowBlindPuts:Z

.field private backgroundReadCount:I

.field private volatile backgroundReadLimit:I

.field private volatile backgroundSleepBacklog:I

.field private backgroundSleepHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;"
        }
    .end annotation
.end field

.field private backgroundSleepInterval:J

.field private final backgroundSleepMutex:Ljava/lang/Object;

.field private final backgroundTrackingMutex:Ljava/lang/Object;

.field private backgroundWriteBytes:J

.field private volatile backgroundWriteLimit:I

.field private final backupCopyFilesCount:Lcom/sleepycat/je/utilint/IntStat;

.field private final backupCopyFilesMs:Lcom/sleepycat/je/utilint/LongStat;

.field private final backupCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final backupManager:Lcom/sleepycat/je/dbi/BackupManager;

.field private final backupStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private final binDeltaDeletes:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final binDeltaGets:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final binDeltaInserts:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final binDeltaUpdates:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private cacheMode:Lcom/sleepycat/je/CacheMode;

.field private final checkpointer:Lcom/sleepycat/je/recovery/Checkpointer;

.field private classLoader:Ljava/lang/ClassLoader;

.field private final cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

.field private volatile closing:Z

.field private compactMaxKeyLength:I

.field protected configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

.field private final configObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/dbi/EnvConfigObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final configuredHandler:Ljava/util/logging/Handler;

.field private final consoleHandler:Ljava/util/logging/ConsoleHandler;

.field private final dataEraser:Lcom/sleepycat/je/cleaner/DataEraser;

.field private final dataVerifier:Lcom/sleepycat/je/util/verify/DataVerifier;

.field private dbEviction:Z

.field private dbLoggingDisabled:Z

.field protected dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

.field private deadlockDetection:Z

.field private deadlockDetectionDelay:J

.field private didFullThreadDump:Z

.field private dupConvertPreloadConfig:Lcom/sleepycat/je/PreloadConfig;

.field private final envHome:Ljava/io/File;

.field protected envInternal:Lcom/sleepycat/je/Environment;

.field protected final envLogger:Ljava/util/logging/Logger;

.field private envStatLogger:Lcom/sleepycat/je/statcap/EnvStatsLogger;

.field private volatile envState:Lcom/sleepycat/je/dbi/DbEnvState;

.field private final envStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private final evictor:Lcom/sleepycat/je/evictor/Evictor;

.field private exceptionListener:Lcom/sleepycat/je/ExceptionListener;

.field private expirationEnabled:Z

.field private exposeUserData:Z

.field private extinctionFilter:Lcom/sleepycat/je/ExtinctionFilter;

.field private final extinctionScanner:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

.field private final fileHandler:Ljava/util/logging/FileHandler;

.field private final fileManager:Lcom/sleepycat/je/log/FileManager;

.field protected final formatter:Ljava/util/logging/Formatter;

.field private final inCompressor:Lcom/sleepycat/je/incomp/INCompressor;

.field private final inMemoryINs:Lcom/sleepycat/je/dbi/INList;

.field private initializedSuccessfully:Z

.field private final invalidatingEFE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/sleepycat/je/EnvironmentFailureException;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isMBeanRegistered:Z

.field private isMemOnly:Z

.field private isNoLocking:Z

.field private isReadOnly:Z

.field private isTransactional:Z

.field private latchTimeoutMs:I

.field private lockTimeout:J

.field private final logFlusher:Lcom/sleepycat/je/log/LogFlusher;

.field private final logManager:Lcom/sleepycat/je/log/LogManager;

.field private final mBeanRegList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl$MBeanRegistrar;",
            ">;"
        }
    .end annotation
.end field

.field private final mapTreeRootLatch:Lcom/sleepycat/je/latch/Latch;

.field private mapTreeRootLsn:J

.field private maxEmbeddedLN:I

.field private memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

.field private final metadataStore:Lcom/sleepycat/je/dbi/MetadataStore;

.field protected needRepConvert:Z

.field private noComparators:Z

.field private final nodeSequence:Lcom/sleepycat/je/dbi/NodeSequence;

.field private final offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

.field private final openCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final openTime:Lcom/sleepycat/je/utilint/LongStat;

.field private final optionalNodeName:Ljava/lang/String;

.field private final preallocatedEFE:Lcom/sleepycat/je/EnvironmentFailureException;

.field private final priDeleteFailOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final priDeleteOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final priInsertFailOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final priInsertOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final priPositionOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final priSearchFailOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final priSearchOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final priUpdateOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private recoveryProgressListener:Lcom/sleepycat/je/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/RecoveryProgress;",
            ">;"
        }
    .end annotation
.end field

.field private final relatchesRequired:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final reservedFilesAutoRepair:Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;

.field private final rootSplits:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final secDeleteOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final secInsertOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final secPositionOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final secSearchFailOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final secSearchOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final secUpdateOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final secondaryAssociationLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private sharedCache:Z

.field protected final startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

.field private final statCapture:Lcom/sleepycat/je/statcap/StatCapture;

.field protected statKey:Ljava/lang/Integer;

.field protected final statManager:Lcom/sleepycat/je/statcap/StatManager;

.field private final statSynchronizer:Ljava/lang/Object;

.field private final taskCoordinator:Lcom/sleepycat/je/utilint/TaskCoordinator;

.field private final thrputStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private ttlClockTolerance:I

.field private ttlLnPurgeDelay:I

.field private ttlMaxTxnTime:I

.field private final txnManager:Lcom/sleepycat/je/txn/TxnManager;

.field private txnTimeout:J

.field private useOffHeapChecksums:Z

.field private final wedgedEFE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/sleepycat/je/EnvironmentWedgedException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 175
    nop

    .line 265
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->forcedYield:Z

    .line 325
    sput v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->threadLocalReferenceCount:I

    .line 367
    nop

    .line 368
    const-string v1, "je.disable.java.adler32"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->USE_JAVA5_ADLER32:Z

    .line 484
    sget-object v0, Lcom/sleepycat/je/txn/LockUpgrade;->ILLEGAL:Lcom/sleepycat/je/txn/LockUpgrade;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/LockUpgrade;->setUpgrade(Lcom/sleepycat/je/txn/LockType;)V

    .line 485
    sget-object v0, Lcom/sleepycat/je/txn/LockUpgrade;->EXISTING:Lcom/sleepycat/je/txn/LockUpgrade;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/LockUpgrade;->setUpgrade(Lcom/sleepycat/je/txn/LockType;)V

    .line 486
    sget-object v0, Lcom/sleepycat/je/txn/LockUpgrade;->WRITE_PROMOTE:Lcom/sleepycat/je/txn/LockUpgrade;

    sget-object v1, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/LockUpgrade;->setUpgrade(Lcom/sleepycat/je/txn/LockType;)V

    .line 487
    sget-object v0, Lcom/sleepycat/je/txn/LockUpgrade;->RANGE_READ_IMMED:Lcom/sleepycat/je/txn/LockUpgrade;

    sget-object v1, Lcom/sleepycat/je/txn/LockType;->RANGE_READ:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/LockUpgrade;->setUpgrade(Lcom/sleepycat/je/txn/LockType;)V

    .line 488
    sget-object v0, Lcom/sleepycat/je/txn/LockUpgrade;->RANGE_WRITE_IMMED:Lcom/sleepycat/je/txn/LockUpgrade;

    sget-object v1, Lcom/sleepycat/je/txn/LockType;->RANGE_WRITE:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/LockUpgrade;->setUpgrade(Lcom/sleepycat/je/txn/LockType;)V

    .line 489
    sget-object v0, Lcom/sleepycat/je/txn/LockUpgrade;->RANGE_WRITE_PROMOTE:Lcom/sleepycat/je/txn/LockUpgrade;

    sget-object v1, Lcom/sleepycat/je/txn/LockType;->RANGE_WRITE:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/LockUpgrade;->setUpgrade(Lcom/sleepycat/je/txn/LockType;)V

    .line 3606
    new-instance v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

    sget-object v1, Lcom/sleepycat/je/PreloadStatus;->EXCEEDED_TIME:Lcom/sleepycat/je/PreloadStatus;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;-><init>(Lcom/sleepycat/je/PreloadStatus;)V

    sput-object v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->TIME_EXCEEDED_PRELOAD_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

    .line 3610
    new-instance v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

    sget-object v1, Lcom/sleepycat/je/PreloadStatus;->FILLED_CACHE:Lcom/sleepycat/je/PreloadStatus;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;-><init>(Lcom/sleepycat/je/PreloadStatus;)V

    sput-object v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->MEMORY_EXCEEDED_PRELOAD_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

    .line 3614
    new-instance v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

    sget-object v1, Lcom/sleepycat/je/PreloadStatus;->USER_HALT_REQUEST:Lcom/sleepycat/je/PreloadStatus;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;-><init>(Lcom/sleepycat/je/PreloadStatus;)V

    sput-object v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->USER_HALT_REQUEST_PRELOAD_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p3, "sharedCacheEnv"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;
        }
    .end annotation

    .line 518
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/RepConfigProxy;)V

    .line 519
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/RepConfigProxy;)V
    .locals 16
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p3, "sharedCacheEnv"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p4, "repConfigProxy"    # Lcom/sleepycat/je/dbi/RepConfigProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;
        }
    .end annotation

    .line 542
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v14, 0x0

    invoke-direct {v0, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->openCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 202
    iput-boolean v14, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->allowBlindOps:Z

    .line 203
    iput-boolean v14, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->allowBlindPuts:Z

    .line 205
    const/4 v0, -0x1

    iput v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maxEmbeddedLN:I

    .line 210
    iput-boolean v14, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->initializedSuccessfully:Z

    .line 216
    iput-boolean v14, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->needRepConvert:Z

    .line 231
    const-wide/16 v0, -0x1

    iput-wide v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLsn:J

    .line 281
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->exceptionListener:Lcom/sleepycat/je/ExceptionListener;

    .line 287
    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->recoveryProgressListener:Lcom/sleepycat/je/ProgressListener;

    .line 292
    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->classLoader:Ljava/lang/ClassLoader;

    .line 297
    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dupConvertPreloadConfig:Lcom/sleepycat/je/PreloadConfig;

    .line 314
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundTrackingMutex:Ljava/lang/Object;

    .line 315
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepMutex:Ljava/lang/Object;

    .line 328
    iput-boolean v14, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->didFullThreadDump:Z

    .line 335
    iput-boolean v14, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->noComparators:Z

    .line 342
    nop

    .line 343
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->makeJavaErrorWrapper()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->preallocatedEFE:Lcom/sleepycat/je/EnvironmentFailureException;

    .line 351
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidatingEFE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 358
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->wedgedEFE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 383
    iput-boolean v14, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMBeanRegistered:Z

    .line 427
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->statSynchronizer:Ljava/lang/Object;

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mBeanRegList:Ljava/util/ArrayList;

    .line 480
    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envStatLogger:Lcom/sleepycat/je/statcap/EnvStatsLogger;

    .line 544
    const/4 v15, 0x0

    .line 545
    .local v15, "success":Z
    new-instance v0, Lcom/sleepycat/je/dbi/StartupTracker;

    invoke-direct {v0, v9}, Lcom/sleepycat/je/dbi/StartupTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    .line 546
    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_ENV_OPEN:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 549
    :try_start_0
    iput-object v10, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envHome:Ljava/io/File;

    .line 550
    sget-object v0, Lcom/sleepycat/je/dbi/DbEnvState;->INIT:Lcom/sleepycat/je/dbi/DbEnvState;

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    .line 551
    const-string v0, "MapTreeRoot"

    invoke-static {v9, v0, v14}, Lcom/sleepycat/je/latch/LatchFactory;->createExclusiveLatch(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Z)Lcom/sleepycat/je/latch/Latch;

    move-result-object v0

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLatch:Lcom/sleepycat/je/latch/Latch;

    .line 554
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Environment"

    const-string v2, "Miscellaneous environment wide statistics."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 556
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->ENV_CREATION_TIME:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->openTime:Lcom/sleepycat/je/utilint/LongStat;

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/utilint/LongStat;->set(Ljava/lang/Long;)V

    .line 559
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Backup"

    const-string v2, "Automatic backups statistics."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 560
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->BACKUP_COPY_FILES_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupCopyFilesCount:Lcom/sleepycat/je/utilint/IntStat;

    .line 562
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->BACKUP_COPY_FILES_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupCopyFilesMs:Lcom/sleepycat/je/utilint/LongStat;

    .line 565
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "BtreeOp"

    const-string v2, "Btree internal operation statistics."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 567
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_ROOT_SPLITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->rootSplits:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 569
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_RELATCHES_REQUIRED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->relatchesRequired:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 571
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_GETS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->binDeltaGets:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 573
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_INSERTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->binDeltaInserts:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 575
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_UPDATES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->binDeltaUpdates:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 577
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_DELETES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->binDeltaDeletes:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 580
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Op"

    const-string v2, "Throughput statistics for JE calls."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->thrputStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 583
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_SEARCH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priSearchOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 585
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_SEARCH_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priSearchFailOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 587
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_SEARCH:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secSearchOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 589
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_SEARCH_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secSearchFailOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 591
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_POSITION:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priPositionOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 593
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_POSITION:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secPositionOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 595
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_INSERT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priInsertOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 597
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_INSERT_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priInsertFailOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 599
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_INSERT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secInsertOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 601
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_UPDATE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priUpdateOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 603
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_UPDATE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secUpdateOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 605
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_DELETE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priDeleteOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 607
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_DELETE_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priDeleteFailOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 609
    new-instance v1, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_DELETE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secDeleteOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 613
    invoke-virtual {v9, v11, v13}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->initConfigManager(Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configObservers:Ljava/util/List;

    .line 615
    invoke-virtual {v9, v9}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 616
    invoke-virtual {v9, v11, v13}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->initConfigParams(Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->initFormatter()Ljava/util/logging/Formatter;

    move-result-object v0

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->formatter:Ljava/util/logging/Formatter;

    .line 628
    new-instance v1, Lcom/sleepycat/je/util/ConsoleHandler;

    invoke-direct {v1, v0, v9}, Lcom/sleepycat/je/util/ConsoleHandler;-><init>(Ljava/util/logging/Formatter;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->consoleHandler:Ljava/util/logging/ConsoleHandler;

    .line 630
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->initFileHandler()Ljava/util/logging/FileHandler;

    move-result-object v0

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileHandler:Ljava/util/logging/FileHandler;

    .line 631
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/EnvironmentConfig;->getLoggingHandler()Ljava/util/logging/Handler;

    move-result-object v0

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configuredHandler:Ljava/util/logging/Handler;

    .line 632
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envLogger:Ljava/util/logging/Logger;

    .line 634
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/EnvironmentConfig;->getTaskCoordinator()Lcom/sleepycat/je/utilint/TaskCoordinator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 635
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/EnvironmentConfig;->getTaskCoordinator()Lcom/sleepycat/je/utilint/TaskCoordinator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sleepycat/je/utilint/JETaskCoordinator;

    .line 637
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v0, v2, v14}, Lcom/sleepycat/je/utilint/JETaskCoordinator;-><init>(Ljava/util/logging/Logger;Ljava/util/Set;Z)V

    move-object v0, v1

    :goto_0
    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->taskCoordinator:Lcom/sleepycat/je/utilint/TaskCoordinator;

    .line 643
    new-instance v0, Lcom/sleepycat/je/dbi/MemoryBudget;

    iget-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    invoke-direct {v0, v9, v12, v1}, Lcom/sleepycat/je/dbi/MemoryBudget;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DbConfigManager;)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    .line 646
    new-instance v0, Lcom/sleepycat/je/log/FileManager;

    iget-boolean v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly:Z

    invoke-direct {v0, v9, v10, v1}, Lcom/sleepycat/je/log/FileManager;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/io/File;Z)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 648
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/EnvironmentConfig;->getAllowCreate()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->filesExist()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_SETUP_LOGGER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 649
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 651
    :cond_1
    new-instance v0, Lcom/sleepycat/je/EnvironmentNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Home directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/sleepycat/je/EnvironmentNotFoundException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .end local v15    # "success":Z
    .end local p1    # "envHome":Ljava/io/File;
    .end local p2    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local p3    # "sharedCacheEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    throw v0

    .line 655
    .restart local v15    # "success":Z
    .restart local p1    # "envHome":Ljava/io/File;
    .restart local p2    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local p3    # "sharedCacheEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    :cond_2
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/EnvironmentConfig;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->optionalNodeName:Ljava/lang/String;

    .line 657
    new-instance v0, Lcom/sleepycat/je/log/LogManager;

    iget-boolean v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly:Z

    invoke-direct {v0, v9, v1}, Lcom/sleepycat/je/log/LogManager;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    .line 659
    new-instance v0, Lcom/sleepycat/je/dbi/INList;

    invoke-direct {v0, v9}, Lcom/sleepycat/je/dbi/INList;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inMemoryINs:Lcom/sleepycat/je/dbi/INList;

    .line 660
    new-instance v0, Lcom/sleepycat/je/txn/TxnManager;

    invoke-direct {v0, v9}, Lcom/sleepycat/je/txn/TxnManager;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->txnManager:Lcom/sleepycat/je/txn/TxnManager;

    .line 661
    new-instance v0, Lcom/sleepycat/je/dbi/MetadataStore;

    invoke-direct {v0, v9}, Lcom/sleepycat/je/dbi/MetadataStore;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->metadataStore:Lcom/sleepycat/je/dbi/MetadataStore;

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->createStatManager()Lcom/sleepycat/je/statcap/StatManager;

    move-result-object v0

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->statManager:Lcom/sleepycat/je/statcap/StatManager;

    .line 669
    if-eqz v12, :cond_4

    .line 671
    iget-boolean v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->sharedCache:Z

    if-eqz v1, :cond_3

    .line 672
    iget-object v1, v12, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    .line 673
    iget-object v1, v12, Lcom/sleepycat/je/dbi/EnvironmentImpl;->offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

    goto :goto_2

    .line 671
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v15    # "success":Z
    .end local p1    # "envHome":Ljava/io/File;
    .end local p2    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local p3    # "sharedCacheEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    throw v0

    .line 675
    .restart local v15    # "success":Z
    .restart local p1    # "envHome":Ljava/io/File;
    .restart local p2    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local p3    # "sharedCacheEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p4    # "repConfigProxy":Lcom/sleepycat/je/dbi/RepConfigProxy;
    :cond_4
    new-instance v1, Lcom/sleepycat/je/evictor/Evictor;

    invoke-direct {v1, v9}, Lcom/sleepycat/je/evictor/Evictor;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    .line 676
    new-instance v1, Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-direct {v1, v9}, Lcom/sleepycat/je/evictor/OffHeapCache;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

    .line 679
    :goto_2
    new-instance v1, Lcom/sleepycat/je/recovery/Checkpointer;

    iget-object v2, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 681
    invoke-static {v2}, Lcom/sleepycat/je/recovery/Checkpointer;->getWakeupPeriod(Lcom/sleepycat/je/dbi/DbConfigManager;)J

    move-result-wide v2

    const-string v4, "Checkpointer"

    invoke-direct {v1, v9, v2, v3, v4}, Lcom/sleepycat/je/recovery/Checkpointer;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;JLjava/lang/String;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkpointer:Lcom/sleepycat/je/recovery/Checkpointer;

    .line 684
    new-instance v1, Lcom/sleepycat/je/incomp/INCompressor;

    iget-object v2, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->COMPRESSOR_WAKEUP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 686
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v2

    int-to-long v2, v2

    const-string v4, "INCompressor"

    invoke-direct {v1, v9, v2, v3, v4}, Lcom/sleepycat/je/incomp/INCompressor;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;JLjava/lang/String;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inCompressor:Lcom/sleepycat/je/incomp/INCompressor;

    .line 690
    new-instance v1, Lcom/sleepycat/je/cleaner/Cleaner;

    const-string v2, "Cleaner"

    invoke-direct {v1, v9, v2}, Lcom/sleepycat/je/cleaner/Cleaner;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    .line 692
    new-instance v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-direct {v1, v9}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->extinctionScanner:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 693
    new-instance v1, Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-direct {v1, v9}, Lcom/sleepycat/je/cleaner/DataEraser;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dataEraser:Lcom/sleepycat/je/cleaner/DataEraser;

    .line 695
    new-instance v1, Lcom/sleepycat/je/dbi/BackupManager;

    invoke-direct {v1, v9}, Lcom/sleepycat/je/dbi/BackupManager;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupManager:Lcom/sleepycat/je/dbi/BackupManager;

    .line 697
    new-instance v8, Lcom/sleepycat/je/statcap/StatCapture;

    const-string v3, "StatCapture"

    iget-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_COLLECT_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 699
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    int-to-long v4, v1

    .line 701
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/EnvironmentConfig;->getCustomStats()Lcom/sleepycat/je/CustomStats;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getStatCaptureProjections()Ljava/util/SortedSet;

    move-result-object v7

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v14, v8

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/statcap/StatCapture;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;JLcom/sleepycat/je/CustomStats;Ljava/util/SortedSet;Lcom/sleepycat/je/statcap/StatManager;)V

    iput-object v14, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->statCapture:Lcom/sleepycat/je/statcap/StatCapture;

    .line 704
    new-instance v1, Lcom/sleepycat/je/log/LogFlusher;

    invoke-direct {v1, v9}, Lcom/sleepycat/je/log/LogFlusher;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logFlusher:Lcom/sleepycat/je/log/LogFlusher;

    .line 706
    new-instance v1, Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-direct {v1, v9}, Lcom/sleepycat/je/util/verify/DataVerifier;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dataVerifier:Lcom/sleepycat/je/util/verify/DataVerifier;

    .line 708
    new-instance v1, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;

    invoke-direct {v1, v9}, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->reservedFilesAutoRepair:Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;

    .line 714
    new-instance v1, Lcom/sleepycat/je/dbi/NodeSequence;

    invoke-direct {v1, v9}, Lcom/sleepycat/je/dbi/NodeSequence;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v1, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->nodeSequence:Lcom/sleepycat/je/dbi/NodeSequence;

    .line 721
    new-instance v2, Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getPreserveVLSN()Z

    move-result v4

    invoke-direct {v2, v9, v3, v4}, Lcom/sleepycat/je/dbi/DbTree;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZ)V

    iput-object v2, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    .line 723
    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v2, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secondaryAssociationLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 733
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/NodeSequence;->initRealNodeId()V

    .line 735
    invoke-virtual {v0}, Lcom/sleepycat/je/statcap/StatManager;->registerStatContext()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->statKey:Ljava/lang/Integer;

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_5

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_COLLECT:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 738
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 739
    new-instance v0, Lcom/sleepycat/je/statcap/EnvStatsLogger;

    invoke-direct {v0, v9}, Lcom/sleepycat/je/statcap/EnvStatsLogger;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envStatLogger:Lcom/sleepycat/je/statcap/EnvStatsLogger;

    .line 740
    invoke-virtual {v9, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 741
    iget-object v0, v9, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envStatLogger:Lcom/sleepycat/je/statcap/EnvStatsLogger;

    invoke-virtual {v0}, Lcom/sleepycat/je/statcap/EnvStatsLogger;->log()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    :cond_5
    const/4 v0, 0x1

    .line 745
    .end local v15    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_6

    .line 747
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->clearFileManager()V

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->closeHandlers()V

    .line 751
    :cond_6
    return-void

    .line 745
    .end local v0    # "success":Z
    .restart local v15    # "success":Z
    :catchall_0
    move-exception v0

    if-nez v15, :cond_7

    .line 747
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->clearFileManager()V

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->closeHandlers()V

    :cond_7
    throw v0
.end method

.method static synthetic access$100()Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;
    .locals 1

    .line 175
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->TIME_EXCEEDED_PRELOAD_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/dbi/MemoryBudget;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 175
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/evictor/OffHeapCache;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 175
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

    return-object v0
.end method

.method static synthetic access$400()Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;
    .locals 1

    .line 175
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->MEMORY_EXCEEDED_PRELOAD_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

    return-object v0
.end method

.method static synthetic access$500()Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;
    .locals 1

    .line 175
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->USER_HALT_REQUEST_PRELOAD_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

    return-object v0
.end method

.method private checkLeaks()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2260
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_CHECK_LEAKS:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2261
    return-void

    .line 2264
    :cond_0
    const/4 v0, 0x1

    .line 2265
    .local v0, "clean":Z
    new-instance v1, Lcom/sleepycat/je/StatsConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/StatsConfig;-><init>()V

    .line 2268
    .local v1, "statsConfig":Lcom/sleepycat/je/StatsConfig;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/StatsConfig;->setFast(Z)Lcom/sleepycat/je/StatsConfig;

    .line 2270
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lockStat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/LockStats;

    move-result-object v3

    .line 2271
    .local v3, "lockStat":Lcom/sleepycat/je/LockStats;
    invoke-virtual {v3}, Lcom/sleepycat/je/LockStats;->getNTotalLocks()I

    move-result v4

    const-string v5, "Problem: "

    if-eqz v4, :cond_1

    .line 2272
    const/4 v0, 0x0

    .line 2273
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sleepycat/je/LockStats;->getNTotalLocks()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " locks left"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2275
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->txnManager:Lcom/sleepycat/je/txn/TxnManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/txn/TxnManager;->getLockManager()Lcom/sleepycat/je/txn/LockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/txn/LockManager;->dump()V

    .line 2278
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->txnStat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/TransactionStats;

    move-result-object v4

    .line 2279
    .local v4, "txnStat":Lcom/sleepycat/je/TransactionStats;
    invoke-virtual {v4}, Lcom/sleepycat/je/TransactionStats;->getNActive()I

    move-result v6

    if-eqz v6, :cond_2

    .line 2280
    const/4 v0, 0x0

    .line 2281
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sleepycat/je/TransactionStats;->getNActive()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " txns left"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2283
    invoke-virtual {v4}, Lcom/sleepycat/je/TransactionStats;->getActiveTxns()[Lcom/sleepycat/je/TransactionStats$Active;

    move-result-object v5

    .line 2284
    .local v5, "active":[Lcom/sleepycat/je/TransactionStats$Active;
    if-eqz v5, :cond_2

    .line 2285
    array-length v6, v5

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v7, v5, v2

    .line 2286
    .local v7, "element":Lcom/sleepycat/je/TransactionStats$Active;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 2285
    .end local v7    # "element":Lcom/sleepycat/je/TransactionStats$Active;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2291
    .end local v5    # "active":[Lcom/sleepycat/je/TransactionStats$Active;
    :cond_2
    sget-boolean v2, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v2, :cond_3

    .line 2292
    invoke-static {}, Lcom/sleepycat/je/latch/LatchSupport;->nBtreeLatchesHeld()I

    move-result v2

    if-lez v2, :cond_3

    .line 2293
    const/4 v0, 0x0

    .line 2294
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Some latches held at env close."

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2295
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {}, Lcom/sleepycat/je/latch/LatchSupport;->btreeLatchesHeldToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2299
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->getVariableCacheUsage()J

    move-result-wide v5

    .line 2300
    .local v5, "memoryUsage":J
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_4

    .line 2301
    const/4 v0, 0x0

    .line 2302
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Local Cache Usage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2303
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v7, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/MemoryBudget;->loadStats()Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 2306
    :cond_4
    const/4 v2, 0x0

    .line 2307
    .local v2, "assertionsEnabled":Z
    const/4 v7, 0x1

    move v2, v7

    .line 2308
    if-nez v0, :cond_6

    if-nez v2, :cond_5

    goto :goto_1

    .line 2309
    :cond_5
    nop

    .line 2310
    const-string v7, "Lock, transaction, latch or memory left behind at environment close"

    invoke-static {v7}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v7

    throw v7

    .line 2313
    :cond_6
    :goto_1
    return-void
.end method

.method private clearFileManager()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileManager:Lcom/sleepycat/je/log/FileManager;

    if-nez v0, :cond_0

    .line 1132
    return-void

    .line 1140
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    goto :goto_0

    .line 1141
    :catchall_0
    move-exception v0

    .line 1149
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1155
    goto :goto_1

    .line 1150
    :catchall_1
    move-exception v0

    .line 1156
    :goto_1
    return-void
.end method

.method private declared-synchronized closeInternalEnvHandle(Z)V
    .locals 2
    .param p1, "isAbnormalClose"    # Z

    monitor-enter p0

    .line 2995
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envInternal:Lcom/sleepycat/je/Environment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2996
    monitor-exit p0

    return-void

    .line 2999
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 3000
    :try_start_1
    iput-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envInternal:Lcom/sleepycat/je/Environment;

    goto :goto_0

    .line 3002
    .end local p0    # "this":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_1
    nop

    .line 3004
    .local v0, "savedEnvInternal":Lcom/sleepycat/je/Environment;
    iput-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envInternal:Lcom/sleepycat/je/Environment;

    .line 3005
    invoke-static {v0}, Lcom/sleepycat/je/DbInternal;->closeInternalHandle(Lcom/sleepycat/je/Environment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3007
    .end local v0    # "savedEnvInternal":Lcom/sleepycat/je/Environment;
    :goto_0
    monitor-exit p0

    return-void

    .line 2994
    .end local p1    # "isAbnormalClose":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private convertDupDatabases()V
    .locals 2

    .line 2119
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbTree;->getDupsConverted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2120
    return-void

    .line 2123
    :cond_0
    new-instance v0, Lcom/sleepycat/je/tree/dupConvert/DupConvert;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DbTree;)V

    .line 2124
    .local v0, "dupConvert":Lcom/sleepycat/je/tree/dupConvert/DupConvert;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/dupConvert/DupConvert;->convertDatabases()V

    .line 2125
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbTree;->setDupsConverted()V

    .line 2126
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logMapTreeRoot()V

    .line 2127
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogManager;->flushSync()V

    .line 2128
    return-void
.end method

.method public static declared-synchronized decThreadLocalReferenceCount()V
    .locals 2

    const-class v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;

    monitor-enter v0

    .line 2238
    :try_start_0
    sget v1, Lcom/sleepycat/je/dbi/EnvironmentImpl;->threadLocalReferenceCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sleepycat/je/dbi/EnvironmentImpl;->threadLocalReferenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2239
    monitor-exit v0

    return-void

    .line 2237
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private doRegisterMBean(Ljava/lang/String;Lcom/sleepycat/je/Environment;)V
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "env"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1104
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1105
    .local v0, "newClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/dbi/EnvironmentImpl$MBeanRegistrar;

    .line 1106
    .local v1, "mBeanReg":Lcom/sleepycat/je/dbi/EnvironmentImpl$MBeanRegistrar;
    invoke-interface {v1, p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl$MBeanRegistrar;->doRegister(Lcom/sleepycat/je/Environment;)V

    .line 1107
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mBeanRegList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    nop

    .line 1113
    .end local v0    # "newClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "mBeanReg":Lcom/sleepycat/je/dbi/EnvironmentImpl$MBeanRegistrar;
    return-void

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    .line 1110
    invoke-static {p2}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->MONITOR_REGISTRATION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getAdler32ChunkSize()I
    .locals 1

    .line 2515
    sget v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->adler32ChunkSize:I

    return v0
.end method

.method public static getExtinctionStatus(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    .locals 5
    .param p0, "priDb"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 3145
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 3151
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v0

    if-nez v0, :cond_1

    .line 3152
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v0

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 3153
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    .local v0, "keyBytes":[B
    goto :goto_0

    .line 3155
    .end local v0    # "keyBytes":[B
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v0

    new-array v0, v0, [B

    .line 3156
    .restart local v0    # "keyBytes":[B
    nop

    .line 3157
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v2

    const/4 v3, 0x0

    .line 3158
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v4

    .line 3156
    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3161
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionState(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v1

    return-object v1

    .line 3146
    .end local v0    # "keyBytes":[B
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getOpenCount()I
    .locals 1

    .line 2200
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->openCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static getThreadLocalReferenceCount()I
    .locals 1

    .line 2230
    sget v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->threadLocalReferenceCount:I

    return v0
.end method

.method public static declared-synchronized incThreadLocalReferenceCount()V
    .locals 2

    const-class v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;

    monitor-enter v0

    .line 2234
    :try_start_0
    sget v1, Lcom/sleepycat/je/dbi/EnvironmentImpl;->threadLocalReferenceCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sleepycat/je/dbi/EnvironmentImpl;->threadLocalReferenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2235
    monitor-exit v0

    return-void

    .line 2233
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initFileHandler()Ljava/util/logging/FileHandler;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1626
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_SETUP_LOGGER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1627
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v8

    .line 1628
    .local v8, "setupLoggers":Z
    iget-object v0, v7, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envHome:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, v7, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly:Z

    if-eqz v0, :cond_0

    if-nez v8, :cond_0

    goto/16 :goto_2

    .line 1639
    :cond_0
    iget-object v0, v7, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    iget-object v1, v7, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envHome:Ljava/io/File;

    .line 1640
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLoggingDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1642
    .local v9, "traceFileDir":Ljava/lang/String;
    iget-object v0, v7, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 1643
    const-string v1, "je.info"

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getPrefixedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1645
    .local v10, "traceFileName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1648
    .local v11, "logFilePattern":Ljava/lang/String;
    const-class v0, Lcom/sleepycat/je/util/FileHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1651
    .local v12, "handlerName":Ljava/lang/String;
    const v0, 0x989680

    .line 1652
    .local v0, "limit":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1653
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1654
    .local v13, "logLimit":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 1655
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    goto :goto_0

    .line 1654
    :cond_1
    move v14, v0

    .line 1659
    .end local v0    # "limit":I
    .local v14, "limit":I
    :goto_0
    const/16 v0, 0xa

    .line 1660
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1661
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1662
    .local v15, "logCount":Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 1663
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    goto :goto_1

    .line 1662
    :cond_2
    move/from16 v16, v0

    .line 1667
    .end local v0    # "count":I
    .local v16, "count":I
    :goto_1
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/util/FileHandler;

    iget-object v5, v7, Lcom/sleepycat/je/dbi/EnvironmentImpl;->formatter:Ljava/util/logging/Formatter;

    move-object v1, v0

    move-object v2, v11

    move v3, v14

    move/from16 v4, v16

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/util/FileHandler;-><init>(Ljava/lang/String;IILjava/util/logging/Formatter;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1672
    :catch_0
    move-exception v0

    .line 1673
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem creating output files in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1674
    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 1636
    .end local v0    # "e":Ljava/io/IOException;
    .end local v9    # "traceFileDir":Ljava/lang/String;
    .end local v10    # "traceFileName":Ljava/lang/String;
    .end local v11    # "logFilePattern":Ljava/lang/String;
    .end local v12    # "handlerName":Ljava/lang/String;
    .end local v13    # "logLimit":Ljava/lang/String;
    .end local v14    # "limit":I
    .end local v15    # "logCount":Ljava/lang/String;
    .end local v16    # "count":I
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static maybeForceYield()Z
    .locals 1

    .line 3280
    sget-boolean v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->forcedYield:Z

    if-eqz v0, :cond_0

    .line 3281
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 3283
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private runOrPauseDaemons(Lcom/sleepycat/je/dbi/DbConfigManager;)V
    .locals 2
    .param p1, "mgr"    # Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 1233
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 1234
    return-void

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inCompressor:Lcom/sleepycat/je/incomp/INCompressor;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_INCOMPRESSOR:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1238
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v1

    .line 1237
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/incomp/INCompressor;->runOrPause(Z)V

    .line 1240
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_CLEANER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1241
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1240
    :goto_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/Cleaner;->runOrPause(Z)V

    .line 1244
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkpointer:Lcom/sleepycat/je/recovery/Checkpointer;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_CHECKPOINTER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1245
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v1

    .line 1244
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/recovery/Checkpointer;->runOrPause(Z)V

    .line 1247
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->statCapture:Lcom/sleepycat/je/statcap/StatCapture;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_COLLECT:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1248
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v1

    .line 1247
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/statcap/StatCapture;->runOrPause(Z)V

    .line 1250
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logFlusher:Lcom/sleepycat/je/log/LogFlusher;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/log/LogFlusher;->configFlushTask(Lcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 1252
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->reservedFilesAutoRepair:Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->startOrCheck(Lcom/sleepycat/je/dbi/DbConfigManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1253
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dataVerifier:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/util/verify/DataVerifier;->configVerifyTask(Lcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 1256
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dataEraser:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/DataEraser;->startThread()V

    .line 1258
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupManager:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/BackupManager;->startThreads()V

    .line 1259
    return-void
.end method

.method private declared-synchronized unregisterMBean()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 1118
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mBeanRegList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/dbi/EnvironmentImpl$MBeanRegistrar;

    .line 1119
    .local v1, "mBeanReg":Lcom/sleepycat/je/dbi/EnvironmentImpl$MBeanRegistrar;
    invoke-interface {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl$MBeanRegistrar;->doUnregister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    .end local v1    # "mBeanReg":Lcom/sleepycat/je/dbi/EnvironmentImpl$MBeanRegistrar;
    goto :goto_0

    .line 1121
    .end local p0    # "this":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 1117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abnormalClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1890
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->closeInternalEnvHandle(Z)V

    .line 1897
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOpenCount()I

    move-result v1

    .line 1898
    .local v1, "openCount1":I
    if-gt v1, v0, :cond_0

    .line 1905
    invoke-static {}, Lcom/sleepycat/je/dbi/DbEnvPool;->getInstance()Lcom/sleepycat/je/dbi/DbEnvPool;

    move-result-object v2

    const/4 v3, 0x0

    .line 1906
    invoke-virtual {v2, p0, v3, v0}, Lcom/sleepycat/je/dbi/DbEnvPool;->closeEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZ)V

    .line 1907
    return-void

    .line 1899
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abnormal close assumes that the open count on this handle is 1, not "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1900
    invoke-static {p0, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V
    .locals 1
    .param p1, "o"    # Lcom/sleepycat/je/dbi/EnvConfigObserver;

    monitor-enter p0

    .line 2667
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2668
    monitor-exit p0

    return-void

    .line 2666
    .end local p0    # "this":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "o":Lcom/sleepycat/je/dbi/EnvConfigObserver;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addDbBackup(Lcom/sleepycat/je/util/DbBackup;)Z
    .locals 1
    .param p1, "backup"    # Lcom/sleepycat/je/util/DbBackup;

    .line 2921
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incBackupCount()V

    .line 2922
    const/4 v0, 0x1

    return v0
.end method

.method public addToCompressorQueue(Lcom/sleepycat/je/tree/BIN;)V
    .locals 1
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 1543
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inCompressor:Lcom/sleepycat/je/incomp/INCompressor;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/incomp/INCompressor;->addBinToQueue(Lcom/sleepycat/je/tree/BIN;)V

    .line 1544
    return-void
.end method

.method public addToCompressorQueue(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/tree/BINReference;",
            ">;)V"
        }
    .end annotation

    .line 1551
    .local p1, "binRefs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/tree/BINReference;>;"
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inCompressor:Lcom/sleepycat/je/incomp/INCompressor;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/incomp/INCompressor;->addMultipleBinRefsToQueue(Ljava/util/Collection;)V

    .line 1552
    return-void
.end method

.method alertEvictor()V
    .locals 1

    .line 3222
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/Evictor;->alert()V

    .line 3223
    return-void
.end method

.method public allowBlindOps()Z
    .locals 1

    .line 2523
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->allowBlindOps:Z

    return v0
.end method

.method public allowBlindPuts()Z
    .locals 1

    .line 2527
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->allowBlindPuts:Z

    return v0
.end method

.method protected appendException(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "doingWhat"    # Ljava/lang/String;

    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2083
    invoke-virtual {p2, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2084
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2085
    return-void
.end method

.method public assignVLSNs(Lcom/sleepycat/je/log/entry/LogEntry;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 1
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;

    .line 3359
    const/4 v0, 0x0

    return-object v0
.end method

.method public awaitVLSNConsistency()V
    .locals 0

    .line 3534
    return-void
.end method

.method public checkDiskLimitViolation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DiskLimitException;
        }
    .end annotation

    .line 2731
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->getDiskLimitViolation()Ljava/lang/String;

    move-result-object v0

    .line 2732
    .local v0, "violation":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2735
    return-void

    .line 2733
    :cond_0
    new-instance v1, Lcom/sleepycat/je/DiskLimitException;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/DiskLimitException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V

    throw v1
.end method

.method public checkIfInvalid()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentFailureException;
        }
    .end annotation

    .line 1816
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    sget-object v1, Lcom/sleepycat/je/dbi/DbEnvState;->INVALID:Lcom/sleepycat/je/dbi/DbEnvState;

    if-eq v0, v1, :cond_0

    .line 1817
    return-void

    .line 1820
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidatingEFE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/EnvironmentFailureException;

    .line 1821
    .local v0, "efe":Lcom/sleepycat/je/EnvironmentFailureException;
    if-eqz v0, :cond_2

    .line 1827
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->setAlreadyThrown(Z)V

    .line 1829
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->preallocatedEFE:Lcom/sleepycat/je/EnvironmentFailureException;

    if-ne v0, v1, :cond_1

    .line 1830
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1832
    throw v0

    .line 1835
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Environment must be closed, caused by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 1821
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public checkImmutablePropsForEquality(Ljava/util/Properties;)V
    .locals 1
    .param p1, "handleConfigProps"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2606
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 2607
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getEnvironmentConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sleepycat/je/DbInternal;->checkImmutablePropsForEquality(Lcom/sleepycat/je/EnvironmentMutableConfig;Ljava/util/Properties;)V

    .line 2608
    return-void
.end method

.method public checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1844
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V

    .line 1851
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    sget-object v1, Lcom/sleepycat/je/dbi/DbEnvState;->CLOSED:Lcom/sleepycat/je/dbi/DbEnvState;

    if-eq v0, v1, :cond_0

    .line 1855
    return-void

    .line 1852
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to use a Environment that has been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkRecordExtinctionAvailable()V
    .locals 0

    .line 3933
    return-void
.end method

.method public checkRulesForExistingEnv(ZZ)V
    .locals 2
    .param p1, "dbTreeReplicatedBit"    # Z
    .param p2, "dbTreePreserveVLSN"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 3506
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3507
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This environment was previously opened for replication. It cannot be re-opened for in read/write mode for non-replicated operation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3518
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getPreserveVLSN()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 3520
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "je.rep.preserveRecordVersion parameter may not be true in a read-write, non-replicated environment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3525
    :cond_3
    :goto_1
    return-void
.end method

.method public checkTTLAvailable()V
    .locals 0

    .line 3923
    return-void
.end method

.method public clearedCachedFileChecksum(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 3402
    return-void
.end method

.method public cloneConfig()Lcom/sleepycat/je/EnvironmentConfig;
    .locals 1

    .line 2589
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getEnvironmentConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->clone()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    return-object v0
.end method

.method public cloneMutableConfig()Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 1

    .line 2596
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 2597
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getEnvironmentConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/DbInternal;->cloneMutableConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;)Lcom/sleepycat/je/EnvironmentMutableConfig;

    move-result-object v0

    .line 2596
    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1865
    invoke-static {}, Lcom/sleepycat/je/dbi/DbEnvPool;->getInstance()Lcom/sleepycat/je/dbi/DbEnvPool;

    move-result-object v0

    .line 1866
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sleepycat/je/dbi/DbEnvPool;->closeEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZ)V

    .line 1867
    return-void
.end method

.method public close(Z)V
    .locals 2
    .param p1, "doCheckpoint"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1877
    invoke-static {}, Lcom/sleepycat/je/dbi/DbEnvPool;->getInstance()Lcom/sleepycat/je/dbi/DbEnvPool;

    move-result-object v0

    .line 1878
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/sleepycat/je/dbi/DbEnvPool;->closeEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZ)V

    .line 1879
    return-void
.end method

.method public closeAfterInvalid()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2139
    invoke-static {}, Lcom/sleepycat/je/dbi/DbEnvPool;->getInstance()Lcom/sleepycat/je/dbi/DbEnvPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/dbi/DbEnvPool;->closeEnvironmentAfterInvalid(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 2140
    return-void
.end method

.method public closeHandlers()V
    .locals 1

    .line 1691
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->consoleHandler:Ljava/util/logging/ConsoleHandler;

    if-eqz v0, :cond_0

    .line 1692
    invoke-virtual {v0}, Ljava/util/logging/ConsoleHandler;->close()V

    .line 1695
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileHandler:Ljava/util/logging/FileHandler;

    if-eqz v0, :cond_1

    .line 1696
    invoke-virtual {v0}, Ljava/util/logging/FileHandler;->close()V

    .line 1698
    :cond_1
    return-void
.end method

.method public coordinateWithCheckpoint(Lcom/sleepycat/je/dbi/DatabaseImpl;ILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/log/Provisional;
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "targetLevel"    # I
    .param p3, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 2336
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkpointer:Lcom/sleepycat/je/recovery/Checkpointer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/recovery/Checkpointer;->coordinateEvictionWithCheckpoint(Lcom/sleepycat/je/dbi/DatabaseImpl;ILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/log/Provisional;

    move-result-object v0

    return-object v0
.end method

.method public createDatabasePreemptedException(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "db"    # Lcom/sleepycat/je/Database;

    .line 3467
    nop

    .line 3468
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method protected createInternalEnvironment()Lcom/sleepycat/je/Environment;
    .locals 3

    .line 1021
    new-instance v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$InternalEnvironment;

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEnvironmentHome()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cloneConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl$InternalEnvironment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    return-object v0
.end method

.method public createLockPreemptedException(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Throwable;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 3455
    nop

    .line 3456
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public createLogOverwriteException(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 3476
    nop

    .line 3477
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public createRepThreadLocker()Lcom/sleepycat/je/txn/ThreadLocker;
    .locals 1

    .line 3426
    nop

    .line 3427
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public createRepTxn(Lcom/sleepycat/je/TransactionConfig;J)Lcom/sleepycat/je/txn/Txn;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p2, "mandatedId"    # J

    .line 3445
    nop

    .line 3446
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public createRepUserTxn(Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;

    .line 3435
    nop

    .line 3436
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public createReplayTxn(J)Lcom/sleepycat/je/txn/Txn;
    .locals 1
    .param p1, "txnId"    # J

    .line 3417
    nop

    .line 3418
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public createStatManager()Lcom/sleepycat/je/statcap/StatManager;
    .locals 1

    .line 1097
    new-instance v0, Lcom/sleepycat/je/statcap/StatManager;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/statcap/StatManager;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    return-object v0
.end method

.method public criticalEviction(Z)V
    .locals 1
    .param p1, "backgroundIO"    # Z

    .line 3243
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/Evictor;->doCriticalEviction(Z)V

    .line 3244
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->doCriticalEviction(Z)V

    .line 3245
    return-void
.end method

.method public daemonEviction(Z)V
    .locals 1
    .param p1, "backgroundIO"    # Z

    .line 3253
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/Evictor;->doDaemonEviction(Z)V

    .line 3254
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->doDaemonEviction(Z)V

    .line 3255
    return-void
.end method

.method decBackupCount()V
    .locals 1

    .line 2219
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2220
    return-void
.end method

.method decOpenCount()Z
    .locals 1

    .line 2192
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->openCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized doClose(ZZ)V
    .locals 8
    .param p1, "doCheckpoint"    # Z
    .param p2, "isAbnormalClose"    # Z

    monitor-enter p0

    .line 1922
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->closeInternalEnvHandle(Z)V

    .line 1924
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1925
    .local v0, "errorStringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1926
    .local v1, "errors":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 1929
    .local v2, "diskLimitEx":Lcom/sleepycat/je/DiskLimitException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Close of environment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envHome:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " started"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1930
    invoke-static {p0, v3}, Lcom/sleepycat/je/log/Trace;->traceLazily(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1931
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envLogger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close of environment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envHome:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " started"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p0, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1935
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    sget-object v4, Lcom/sleepycat/je/dbi/DbEnvState;->VALID_FOR_CLOSE:[Lcom/sleepycat/je/dbi/DbEnvState;

    sget-object v5, Lcom/sleepycat/je/dbi/DbEnvState;->CLOSED:Lcom/sleepycat/je/dbi/DbEnvState;

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/dbi/DbEnvState;->checkState([Lcom/sleepycat/je/dbi/DbEnvState;Lcom/sleepycat/je/dbi/DbEnvState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1939
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->setupClose(Ljava/io/PrintWriter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1942
    goto :goto_0

    .line 2047
    :catchall_0
    move-exception v3

    goto/16 :goto_9

    .line 1940
    :catch_0
    move-exception v3

    .line 1941
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v4, "releasing resources"

    invoke-virtual {p0, v1, v3, v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->appendException(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1948
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->requestShutdownDaemons()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1951
    :try_start_4
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->unregisterMBean()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1954
    goto :goto_1

    .line 1952
    :catch_1
    move-exception v3

    .line 1953
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v4, "unregistering MBean"

    invoke-virtual {p0, v1, v3, v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->appendException(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1957
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    .line 1958
    .local v3, "checkpointHappened":Z
    if-eqz p1, :cond_0

    :try_start_6
    iget-boolean v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    sget-object v5, Lcom/sleepycat/je/dbi/DbEnvState;->INVALID:Lcom/sleepycat/je/dbi/DbEnvState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    .line 1961
    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogManager;->getLastLsnAtRecovery()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 1962
    invoke-virtual {v6}, Lcom/sleepycat/je/log/FileManager;->getLastUsedLsn()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1968
    new-instance v4, Lcom/sleepycat/je/CheckpointConfig;

    invoke-direct {v4}, Lcom/sleepycat/je/CheckpointConfig;-><init>()V

    .line 1969
    .local v4, "ckptConfig":Lcom/sleepycat/je/CheckpointConfig;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/CheckpointConfig;->setForce(Z)Lcom/sleepycat/je/CheckpointConfig;

    .line 1970
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/CheckpointConfig;->setMinimizeRecoveryTime(Z)Lcom/sleepycat/je/CheckpointConfig;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1972
    :try_start_7
    const-string v5, "close"

    invoke-virtual {p0, v4, v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invokeCheckpoint(Lcom/sleepycat/je/CheckpointConfig;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/sleepycat/je/DiskLimitException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1973
    const/4 v3, 0x1

    goto :goto_2

    .line 1976
    :catch_2
    move-exception v5

    .line 1977
    .local v5, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v6, "performing checkpoint"

    invoke-virtual {p0, v1, v5, v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->appendException(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 1974
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 1975
    .local v5, "e":Lcom/sleepycat/je/DiskLimitException;
    move-object v2, v5

    .line 1982
    .end local v4    # "ckptConfig":Lcom/sleepycat/je/CheckpointConfig;
    .end local v5    # "e":Lcom/sleepycat/je/DiskLimitException;
    :cond_0
    :goto_2
    :try_start_9
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->postCheckpointClose(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1985
    goto :goto_3

    .line 1983
    :catch_4
    move-exception v4

    .line 1984
    .local v4, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v5, "after checkpoint"

    invoke-virtual {p0, v1, v4, v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->appendException(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1987
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envLogger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "About to shutdown daemons for Env "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envHome:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p0, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1990
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->shutdownDaemons()V

    .line 1999
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getBackupCount()I

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-lez v4, :cond_1

    .line 2000
    :try_start_b
    const-string v4, "\nThere are backups in progress so the "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2001
    const-string v4, "Environment should not have been closed."

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2002
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2006
    :cond_1
    if-nez p2, :cond_2

    .line 2008
    :try_start_c
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogManager;->flushSync()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2011
    goto :goto_4

    .line 2009
    :catch_5
    move-exception v4

    .line 2010
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_d
    const-string v5, "flushing log manager"

    invoke-virtual {p0, v1, v4, v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->appendException(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2015
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    :try_start_e
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileManager;->clear()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2018
    goto :goto_5

    .line 2016
    :catch_6
    move-exception v4

    .line 2017
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_f
    const-string v5, "clearing file manager"

    invoke-virtual {p0, v1, v4, v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->appendException(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 2021
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_10
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileManager;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2024
    goto :goto_6

    .line 2022
    :catch_7
    move-exception v4

    .line 2023
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_11
    const-string v5, "closing file manager"

    invoke-virtual {p0, v1, v4, v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->appendException(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2031
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_6
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DbTree;->close()V

    .line 2032
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v4}, Lcom/sleepycat/je/cleaner/Cleaner;->close()V

    .line 2033
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inMemoryINs:Lcom/sleepycat/je/dbi/INList;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/INList;->clear()V

    .line 2035
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->closeHandlers()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2037
    if-nez p2, :cond_3

    :try_start_12
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    sget-object v5, Lcom/sleepycat/je/dbi/DbEnvState;->INVALID:Lcom/sleepycat/je/dbi/DbEnvState;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eq v4, v5, :cond_3

    .line 2041
    :try_start_13
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkLeaks()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 2044
    goto :goto_7

    .line 2042
    :catch_8
    move-exception v4

    .line 2043
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_14
    const-string v5, "performing validity checks"

    invoke-virtual {p0, v1, v4, v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->appendException(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 2047
    .end local v3    # "checkpointHappened":Z
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_7
    :try_start_15
    sget-object v3, Lcom/sleepycat/je/dbi/DbEnvState;->CLOSED:Lcom/sleepycat/je/dbi/DbEnvState;

    iput-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    .line 2054
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->clearFileManager()V

    .line 2055
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->closeHandlers()V

    .line 2056
    nop

    .line 2062
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->wedgedEFE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    .line 2067
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidatingEFE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2068
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_8

    .line 2069
    :cond_4
    nop

    .line 2070
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 2074
    .end local p0    # "this":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_5
    :goto_8
    if-nez v2, :cond_6

    .line 2077
    monitor-exit p0

    return-void

    .line 2075
    :cond_6
    :try_start_16
    throw v2

    .line 2063
    :cond_7
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->wedgedEFE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/EnvironmentWedgedException;

    throw v3

    .line 2047
    :catchall_1
    move-exception v3

    :goto_9
    sget-object v4, Lcom/sleepycat/je/dbi/DbEnvState;->CLOSED:Lcom/sleepycat/je/dbi/DbEnvState;

    iput-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    .line 2054
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->clearFileManager()V

    .line 2055
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->closeHandlers()V

    throw v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 1921
    .end local v0    # "errorStringWriter":Ljava/io/StringWriter;
    .end local v1    # "errors":Ljava/io/PrintWriter;
    .end local v2    # "diskLimitEx":Lcom/sleepycat/je/DiskLimitException;
    .end local p1    # "doCheckpoint":Z
    .end local p2    # "isAbnormalClose":Z
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized doCloseAfterInvalid()V
    .locals 1

    monitor-enter p0

    .line 2148
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->unregisterMBean()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    goto :goto_0

    .line 2147
    .end local p0    # "this":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2149
    :catch_0
    move-exception v0

    .line 2153
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->shutdownDaemons()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2156
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2159
    goto :goto_1

    .line 2157
    :catchall_1
    move-exception v0

    .line 2162
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2165
    goto :goto_2

    .line 2163
    :catchall_2
    move-exception v0

    .line 2171
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->closeHandlers()V

    .line 2173
    sget-object v0, Lcom/sleepycat/je/dbi/DbEnvState;->CLOSED:Lcom/sleepycat/je/dbi/DbEnvState;

    iput-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    .line 2179
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->wedgedEFE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_0

    .line 2182
    monitor-exit p0

    return-void

    .line 2180
    :cond_0
    :try_start_5
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->wedgedEFE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/EnvironmentWedgedException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2147
    :goto_3
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doSetMutableConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 4
    .param p1, "config"    # Lcom/sleepycat/je/EnvironmentMutableConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 2628
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 2629
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getEnvironmentConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->clone()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    .line 2632
    .local v0, "newConfig":Lcom/sleepycat/je/EnvironmentConfig;
    invoke-static {p1, v0}, Lcom/sleepycat/je/DbInternal;->copyMutablePropsTo(Lcom/sleepycat/je/EnvironmentMutableConfig;Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 2644
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->resetConfigManager(Lcom/sleepycat/je/EnvironmentConfig;)Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 2645
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2646
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configObservers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/EnvConfigObserver;

    .line 2647
    .local v2, "o":Lcom/sleepycat/je/dbi/EnvConfigObserver;
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    invoke-interface {v2, v3, v0}, Lcom/sleepycat/je/dbi/EnvConfigObserver;->envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2645
    .end local v2    # "o":Lcom/sleepycat/je/dbi/EnvConfigObserver;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2649
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 2627
    .end local v0    # "newConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local p1    # "config":Lcom/sleepycat/je/EnvironmentMutableConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 2
    .param p1, "mgr"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p2, "newConfig"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 1164
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_BACKGROUND_READ_LIMIT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1165
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundReadLimit:I

    .line 1166
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_BACKGROUND_WRITE_LIMIT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1167
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundWriteLimit:I

    .line 1168
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_BACKGROUND_SLEEP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1169
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepInterval:J

    .line 1172
    nop

    .line 1173
    const-string v0, "com.sleepycat.je.util.ConsoleHandler.level"

    invoke-virtual {p2, v0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->isConfigParamSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->JE_CONSOLE_LEVEL:Lcom/sleepycat/je/config/ConfigParam;

    .line 1175
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    .line 1176
    .local v0, "newConsoleHandlerLevel":Ljava/util/logging/Level;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->consoleHandler:Ljava/util/logging/ConsoleHandler;

    invoke-virtual {v1, v0}, Ljava/util/logging/ConsoleHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 1179
    .end local v0    # "newConsoleHandlerLevel":Ljava/util/logging/Level;
    :cond_0
    nop

    .line 1180
    const-string v0, "com.sleepycat.je.util.FileHandler.level"

    invoke-virtual {p2, v0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->isConfigParamSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1181
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->JE_FILE_LEVEL:Lcom/sleepycat/je/config/ConfigParam;

    .line 1182
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    .line 1183
    .local v0, "newFileHandlerLevel":Ljava/util/logging/Level;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileHandler:Ljava/util/logging/FileHandler;

    if-eqz v1, :cond_1

    .line 1184
    invoke-virtual {v1, v0}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 1188
    .end local v0    # "newFileHandlerLevel":Ljava/util/logging/Level;
    :cond_1
    invoke-virtual {p2}, Lcom/sleepycat/je/EnvironmentMutableConfig;->getExceptionListener()Lcom/sleepycat/je/ExceptionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->exceptionListener:Lcom/sleepycat/je/ExceptionListener;

    .line 1190
    invoke-virtual {p2}, Lcom/sleepycat/je/EnvironmentMutableConfig;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 1192
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_EXPIRATION_ENABLED:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->expirationEnabled:Z

    .line 1195
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_EXPOSE_USER_DATA:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->exposeUserData:Z

    .line 1198
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_COLLECT:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1199
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envStatLogger:Lcom/sleepycat/je/statcap/EnvStatsLogger;

    if-nez v0, :cond_4

    .line 1200
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1201
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1202
    new-instance v0, Lcom/sleepycat/je/statcap/EnvStatsLogger;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/statcap/EnvStatsLogger;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envStatLogger:Lcom/sleepycat/je/statcap/EnvStatsLogger;

    .line 1203
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 1209
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envStatLogger:Lcom/sleepycat/je/statcap/EnvStatsLogger;

    invoke-virtual {v0}, Lcom/sleepycat/je/statcap/EnvStatsLogger;->log()V

    goto :goto_0

    .line 1212
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envStatLogger:Lcom/sleepycat/je/statcap/EnvStatsLogger;

    if-eqz v0, :cond_3

    .line 1213
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->removeConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 1215
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envStatLogger:Lcom/sleepycat/je/statcap/EnvStatsLogger;

    .line 1223
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1224
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->runOrPauseDaemons(Lcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 1226
    :cond_5
    return-void
.end method

.method public expiresWithin(IZJ)Z
    .locals 1
    .param p1, "expiration"    # I
    .param p2, "hours"    # Z
    .param p3, "withinMs"    # J

    .line 3119
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->expirationEnabled:Z

    if-eqz v0, :cond_0

    .line 3120
    invoke-static {p1, p2, p3, p4}, Lcom/sleepycat/je/dbi/TTL;->expiresWithin(IZJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3119
    :goto_0
    return v0
.end method

.method public expiresWithin(JJ)Z
    .locals 1
    .param p1, "expirationTime"    # J
    .param p3, "withinMs"    # J

    .line 3129
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->expirationEnabled:Z

    if-eqz v0, :cond_0

    .line 3130
    invoke-static {p1, p2, p3, p4}, Lcom/sleepycat/je/dbi/TTL;->expiresWithin(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3129
    :goto_0
    return v0
.end method

.method public declared-synchronized finishInit(Lcom/sleepycat/je/EnvironmentConfig;)Z
    .locals 6
    .param p1, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 872
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->initializedSuccessfully:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    .line 873
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 876
    :cond_0
    const/4 v0, 0x0

    .line 883
    .local v0, "success":Z
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RECOVERY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 884
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 885
    .local v1, "doRecovery":Z
    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 891
    const/4 v3, 0x0

    .line 893
    .local v3, "recoverySuccess":Z
    :try_start_2
    new-instance v4, Lcom/sleepycat/je/recovery/RecoveryManager;

    invoke-direct {v4, p0}, Lcom/sleepycat/je/recovery/RecoveryManager;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 895
    .local v4, "recoveryManager":Lcom/sleepycat/je/recovery/RecoveryManager;
    iget-boolean v5, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly:Z

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/recovery/RecoveryManager;->recover(Z)Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 897
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->postRecoveryConversion()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 898
    const/4 v3, 0x1

    .line 905
    .end local v4    # "recoveryManager":Lcom/sleepycat/je/recovery/RecoveryManager;
    :try_start_3
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogManager;->flushSync()V

    .line 906
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileManager;->clear()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 914
    :catch_0
    move-exception v4

    .line 915
    .local v4, "e":Ljava/lang/Exception;
    if-nez v3, :cond_1

    .line 920
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 916
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_1
    nop

    .line 917
    :try_start_4
    invoke-static {p0, v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v0    # "success":Z
    .end local p1    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    :goto_0
    throw v2

    .line 907
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "success":Z
    .restart local p1    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    :catch_1
    move-exception v4

    .line 909
    .local v4, "e":Ljava/io/IOException;
    if-nez v3, :cond_2

    .line 919
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 921
    .end local v3    # "recoverySuccess":Z
    :goto_2
    goto :goto_5

    .line 910
    .restart local v3    # "recoverySuccess":Z
    .restart local v4    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v5, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v2, p0, v5, v4}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    .end local v0    # "success":Z
    .end local p1    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    :goto_3
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 900
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "success":Z
    .restart local p1    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    :catchall_0
    move-exception v2

    .line 905
    :try_start_5
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogManager;->flushSync()V

    .line 906
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileManager;->clear()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 988
    .end local v1    # "doRecovery":Z
    .end local v3    # "recoverySuccess":Z
    :catchall_1
    move-exception v1

    goto/16 :goto_6

    .line 914
    .restart local v1    # "doRecovery":Z
    .restart local v3    # "recoverySuccess":Z
    :catch_2
    move-exception v4

    .line 915
    .local v4, "e":Ljava/lang/Exception;
    if-eqz v3, :cond_4

    .line 916
    nop

    .line 917
    :try_start_6
    invoke-static {p0, v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    goto :goto_0

    .line 907
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 909
    .local v4, "e":Ljava/io/IOException;
    if-eqz v3, :cond_3

    .line 910
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v5, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v2, p0, v5, v4}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 919
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    nop

    :cond_4
    nop

    .end local v0    # "success":Z
    .end local p1    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 922
    .end local v3    # "recoverySuccess":Z
    .restart local v0    # "success":Z
    .restart local p1    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    :cond_5
    :try_start_7
    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly:Z

    .line 929
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_COMPARATORS_REQUIRED:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 930
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v3, :cond_6

    .line 931
    :try_start_8
    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->noComparators:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 939
    :cond_6
    :goto_5
    :try_start_9
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 940
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lockTimeout:J

    .line 941
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->TXN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 942
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->txnTimeout:J

    .line 949
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/MemoryBudget;->initCacheMemoryUsage()V

    .line 956
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    invoke-virtual {p0, v3, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 963
    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->initializedSuccessfully:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 965
    if-eqz v1, :cond_7

    .line 971
    :try_start_a
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->convertDupDatabases()V

    .line 974
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->createInternalEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envInternal:Lcom/sleepycat/je/Environment;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 982
    :cond_7
    :try_start_b
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->open()V

    .line 984
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    invoke-direct {p0, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->runOrPauseDaemons(Lcom/sleepycat/je/dbi/DbConfigManager;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 985
    const/4 v0, 0x1

    .line 986
    nop

    .line 988
    if-nez v0, :cond_8

    .line 990
    :try_start_c
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->clearFileManager()V

    .line 991
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->closeHandlers()V

    .line 999
    .end local p0    # "this":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_8
    if-nez v0, :cond_9

    iget-boolean v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->sharedCache:Z

    if-eqz v3, :cond_9

    .line 1000
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    invoke-virtual {v3, p0}, Lcom/sleepycat/je/evictor/Evictor;->removeSharedCacheEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 1003
    :cond_9
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v4, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_ENV_OPEN:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 1004
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v4, Lcom/sleepycat/je/RecoveryProgress;->RECOVERY_FINISHED:Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 986
    monitor-exit p0

    return v2

    .line 988
    .end local v1    # "doRecovery":Z
    :catchall_2
    move-exception v1

    :goto_6
    if-nez v0, :cond_a

    .line 990
    :try_start_d
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->clearFileManager()V

    .line 991
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->closeHandlers()V

    .line 999
    :cond_a
    if-nez v0, :cond_b

    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->sharedCache:Z

    if-eqz v2, :cond_b

    .line 1000
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    invoke-virtual {v2, p0}, Lcom/sleepycat/je/evictor/Evictor;->removeSharedCacheEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 1003
    :cond_b
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_ENV_OPEN:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 1004
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v3, Lcom/sleepycat/je/RecoveryProgress;->RECOVERY_FINISHED:Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker;->setProgress(Lcom/sleepycat/je/RecoveryProgress;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 871
    .end local v0    # "success":Z
    .end local p1    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public flushLog(Z)V
    .locals 1
    .param p1, "fsync"    # Z

    .line 2345
    if-eqz p1, :cond_0

    .line 2346
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogManager;->flushSync()V

    goto :goto_0

    .line 2348
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogManager;->flushNoSync()V

    .line 2350
    :goto_0
    return-void
.end method

.method public forceLogFileFlip()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2359
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    new-instance v1, Lcom/sleepycat/je/log/entry/TraceLogEntry;

    new-instance v2, Lcom/sleepycat/je/log/Trace;

    const-string v3, "File Flip"

    invoke-direct {v2, v3}, Lcom/sleepycat/je/log/Trace;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/sleepycat/je/log/entry/TraceLogEntry;-><init>(Lcom/sleepycat/je/log/Trace;)V

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/LogManager;->logForceFlip(Lcom/sleepycat/je/log/entry/LogEntry;)J

    move-result-wide v0

    return-wide v0
.end method

.method public fullyInitialized()V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->extinctionScanner:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->executeRecoveredTasks()V

    .line 1015
    return-void
.end method

.method public getAllowRepConvert()Z
    .locals 1

    .line 3321
    const/4 v0, 0x0

    return v0
.end method

.method protected getAppOpenCount()I
    .locals 1

    .line 2211
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->openCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected getBackupCount()I
    .locals 1

    .line 2226
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getBackupManager()Lcom/sleepycat/je/dbi/BackupManager;
    .locals 1

    .line 2698
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupManager:Lcom/sleepycat/je/dbi/BackupManager;

    return-object v0
.end method

.method public getCacheVLSN()Z
    .locals 1

    .line 3313
    const/4 v0, 0x0

    return v0
.end method

.method public getCheckpointer()Lcom/sleepycat/je/recovery/Checkpointer;
    .locals 1

    .line 2686
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkpointer:Lcom/sleepycat/je/recovery/Checkpointer;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 3908
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;
    .locals 1

    .line 2690
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    return-object v0
.end method

.method public getCompactMaxKeyLength()I
    .locals 1

    .line 1315
    iget v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->compactMaxKeyLength:I

    return v0
.end method

.method public getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;
    .locals 1

    .line 2578
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    return-object v0
.end method

.method public getConfiguredHandler()Ljava/util/logging/Handler;
    .locals 1

    .line 1687
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configuredHandler:Ljava/util/logging/Handler;

    return-object v0
.end method

.method public getConsistencyPolicy(Ljava/lang/String;)Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .locals 1
    .param p1, "propValue"    # Ljava/lang/String;

    .line 1072
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConsoleHandler()Ljava/util/logging/ConsoleHandler;
    .locals 1

    .line 1679
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->consoleHandler:Ljava/util/logging/ConsoleHandler;

    return-object v0
.end method

.method public getDataEraser()Lcom/sleepycat/je/cleaner/DataEraser;
    .locals 1

    .line 2694
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dataEraser:Lcom/sleepycat/je/cleaner/DataEraser;

    return-object v0
.end method

.method public getDataVerifier()Lcom/sleepycat/je/util/verify/DataVerifier;
    .locals 1

    .line 2553
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dataVerifier:Lcom/sleepycat/je/util/verify/DataVerifier;

    return-object v0
.end method

.method public getDbEviction()Z
    .locals 1

    .line 2511
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbEviction:Z

    return v0
.end method

.method public getDbTree()Lcom/sleepycat/je/dbi/DbTree;
    .locals 1

    .line 2561
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    return-object v0
.end method

.method public getDeadlockDetection()Z
    .locals 1

    .line 3052
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->deadlockDetection:Z

    return v0
.end method

.method public getDeadlockDetectionDelay()J
    .locals 2

    .line 3056
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->deadlockDetectionDelay:J

    return-wide v0
.end method

.method getDefaultCacheMode()Lcom/sleepycat/je/CacheMode;
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    if-eqz v0, :cond_0

    .line 1306
    return-object v0

    .line 1308
    :cond_0
    sget-object v0, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    return-object v0
.end method

.method public getDefaultConsistencyPolicy()Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .locals 1

    .line 1061
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDiagnosticsClassName()Ljava/lang/String;
    .locals 1

    .line 1048
    const-string v0, "com.sleepycat.je.jmx.JEDiagnostics"

    return-object v0
.end method

.method public getDidFullThreadDump()Z
    .locals 1

    .line 2242
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->didFullThreadDump:Z

    return v0
.end method

.method public getDiskLimitViolation()Ljava/lang/String;
    .locals 1

    .line 2719
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->getDiskLimitViolation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDupConvertPreloadConfig()Lcom/sleepycat/je/PreloadConfig;
    .locals 1

    .line 3912
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dupConvertPreloadConfig:Lcom/sleepycat/je/PreloadConfig;

    return-object v0
.end method

.method public getEndOfLog()J
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getLastUsedLsn()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnvironmentHome()Ljava/io/File;
    .locals 1

    .line 2981
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envHome:Ljava/io/File;

    return-object v0
.end method

.method public getEvictor()Lcom/sleepycat/je/evictor/Evictor;
    .locals 1

    .line 3213
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    return-object v0
.end method

.method public getExceptionListener()Lcom/sleepycat/je/ExceptionListener;
    .locals 1

    .line 2660
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->exceptionListener:Lcom/sleepycat/je/ExceptionListener;

    return-object v0
.end method

.method public getExpirationProfile()Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->getExpirationProfile()Lcom/sleepycat/je/cleaner/ExpirationProfile;

    move-result-object v0

    return-object v0
.end method

.method public getExposeUserData()Z
    .locals 1

    .line 2766
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->exposeUserData:Z

    return v0
.end method

.method public getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .locals 1

    .line 3134
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->extinctionScanner:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    return-object v0
.end method

.method public getExtinctionState(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    .locals 3
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "key"    # [B

    .line 3170
    nop

    .line 3171
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    .line 3172
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DbType;->isInternal()Z

    move-result v2

    .line 3170
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionState(Ljava/lang/String;ZZ[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v0

    return-object v0
.end method

.method public getExtinctionState(Ljava/lang/String;ZZ[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    .locals 5
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dups"    # Z
    .param p3, "isInternalDb"    # Z
    .param p4, "key"    # [B

    .line 3179
    if-eqz p3, :cond_0

    .line 3180
    sget-object v0, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->NOT_EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    return-object v0

    .line 3183
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->extinctionFilter:Lcom/sleepycat/je/ExtinctionFilter;

    if-nez v0, :cond_1

    .line 3184
    sget-object v0, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->NOT_EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    return-object v0

    .line 3187
    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    array-length v1, p4

    .line 3188
    invoke-static {p4, v0, v1}, Lcom/sleepycat/je/dbi/DupKeyData;->getData([BII)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p4

    .line 3191
    .local v0, "priKey":[B
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->extinctionFilter:Lcom/sleepycat/je/ExtinctionFilter;

    .line 3192
    invoke-interface {v1, p1, p2, v0}, Lcom/sleepycat/je/ExtinctionFilter;->getExtinctionStatus(Ljava/lang/String;Z[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v1

    .line 3194
    .local v1, "status":Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    if-eqz v1, :cond_3

    .line 3199
    return-object v1

    .line 3195
    :cond_3
    const-string v2, "ExtinctionFilter.getExtinctionStatus returned null"

    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v0    # "priKey":[B
    .end local p1    # "dbName":Ljava/lang/String;
    .end local p2    # "dups":Z
    .end local p3    # "isInternalDb":Z
    .end local p4    # "key":[B
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3201
    .end local v1    # "status":Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    .restart local v0    # "priKey":[B
    .restart local p1    # "dbName":Ljava/lang/String;
    .restart local p2    # "dups":Z
    .restart local p3    # "isInternalDb":Z
    .restart local p4    # "key":[B
    :catchall_0
    move-exception v1

    .line 3202
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envLogger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExtinctionFilter callback threw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 3204
    sget-object v2, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->MAYBE_EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    return-object v2
.end method

.method public getFileHandler()Ljava/util/logging/FileHandler;
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileHandler:Ljava/util/logging/FileHandler;

    return-object v0
.end method

.method public getFileManager()Lcom/sleepycat/je/log/FileManager;
    .locals 1

    .line 2557
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->fileManager:Lcom/sleepycat/je/log/FileManager;

    return-object v0
.end method

.method public getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;
    .locals 1

    .line 1275
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v0

    return-object v0
.end method

.method public getINCompressor()Lcom/sleepycat/je/incomp/INCompressor;
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inCompressor:Lcom/sleepycat/je/incomp/INCompressor;

    return-object v0
.end method

.method public getINCompressorQueueSize()I
    .locals 1

    .line 2970
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inCompressor:Lcom/sleepycat/je/incomp/INCompressor;

    invoke-virtual {v0}, Lcom/sleepycat/je/incomp/INCompressor;->getBinRefQueueSize()I

    move-result v0

    return v0
.end method

.method public getInMemoryINs()Lcom/sleepycat/je/dbi/INList;
    .locals 1

    .line 2678
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inMemoryINs:Lcom/sleepycat/je/dbi/INList;

    return-object v0
.end method

.method public getInternalEnvHandle()Lcom/sleepycat/je/Environment;
    .locals 1

    .line 2985
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envInternal:Lcom/sleepycat/je/Environment;

    return-object v0
.end method

.method public getInvalidatingException()Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 1

    .line 1742
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidatingEFE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/EnvironmentFailureException;

    return-object v0
.end method

.method public getInvalidatingExceptionReference()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/sleepycat/je/EnvironmentFailureException;",
            ">;"
        }
    .end annotation

    .line 1748
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidatingEFE:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public getIsMaster()Z
    .locals 1

    .line 3033
    const/4 v0, 0x0

    return v0
.end method

.method public getLatchTimeoutMs()I
    .locals 1

    .line 1322
    iget v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->latchTimeoutMs:I

    return v0
.end method

.method public getLockTimeout()J
    .locals 2

    .line 3041
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lockTimeout:J

    return-wide v0
.end method

.method public getLogFlusher()Lcom/sleepycat/je/log/LogFlusher;
    .locals 1

    .line 2549
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logFlusher:Lcom/sleepycat/je/log/LogFlusher;

    return-object v0
.end method

.method public getLogManager()Lcom/sleepycat/je/log/LogManager;
    .locals 1

    .line 2545
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    return-object v0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 2741
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envLogger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getMaxEmbeddedLN()I
    .locals 1

    .line 2531
    iget v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maxEmbeddedLN:I

    return v0
.end method

.method public getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;
    .locals 1

    .line 2706
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    return-object v0
.end method

.method public getMetadataStore()Lcom/sleepycat/je/dbi/MetadataStore;
    .locals 1

    .line 2565
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->metadataStore:Lcom/sleepycat/je/dbi/MetadataStore;

    return-object v0
.end method

.method protected getMonitorClassName()Ljava/lang/String;
    .locals 1

    .line 1044
    const-string v0, "com.sleepycat.je.jmx.JEMonitor"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 3014
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->optionalNodeName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3015
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envHome:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3017
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOptionalNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoComparators()Z
    .locals 1

    .line 2250
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->noComparators:Z

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 3025
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeSequence()Lcom/sleepycat/je/dbi/NodeSequence;
    .locals 1

    .line 2582
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->nodeSequence:Lcom/sleepycat/je/dbi/NodeSequence;

    return-object v0
.end method

.method public getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;
    .locals 1

    .line 3078
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

    return-object v0
.end method

.method public getOptionalNodeName()Ljava/lang/String;
    .locals 1

    .line 2495
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->optionalNodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreserveVLSN()Z
    .locals 1

    .line 3305
    const/4 v0, 0x0

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

    .line 3904
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->recoveryProgressListener:Lcom/sleepycat/je/ProgressListener;

    return-object v0
.end method

.method public getRepStatGroups(Lcom/sleepycat/je/StatsConfig;Ljava/lang/Integer;)Ljava/util/Collection;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .param p2, "statkey"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/StatsConfig;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;"
        }
    .end annotation

    .line 1088
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Standalone Environment doesn\'t support replication statistics."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReplayFreeDiskPercent()I
    .locals 1

    .line 3485
    const/4 v0, 0x0

    return v0
.end method

.method public getReplayTxnTimeout()J
    .locals 4

    .line 3060
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lockTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 3061
    return-wide v0

    .line 3064
    :cond_0
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getReservedFilesAutoRepair()Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;
    .locals 1

    .line 2702
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->reservedFilesAutoRepair:Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;

    return-object v0
.end method

.method public getRootLsn()J
    .locals 2

    .line 1506
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLsn:J

    return-wide v0
.end method

.method public getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .line 3071
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secondaryAssociationLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method public getSharedCache()Z
    .locals 1

    .line 2519
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->sharedCache:Z

    return v0
.end method

.method public getStartupTracker()Lcom/sleepycat/je/dbi/StartupTracker;
    .locals 1

    .line 2974
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    return-object v0
.end method

.method public getStatCaptureProjections()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1093
    new-instance v0, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;

    invoke-direct {v0}, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;-><init>()V

    invoke-virtual {v0}, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->getStatisticProjections()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getThroughputStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/AtomicLongStat;
    .locals 1
    .param p1, "def"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 3550
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->thrputStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v0

    return-object v0
.end method

.method public getTtlClockTolerance()I
    .locals 1

    .line 1329
    iget v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->ttlClockTolerance:I

    return v0
.end method

.method public getTtlLnPurgeDelay()I
    .locals 1

    .line 1343
    iget v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->ttlLnPurgeDelay:I

    return v0
.end method

.method public getTtlMaxTxnTime()I
    .locals 1

    .line 1336
    iget v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->ttlMaxTxnTime:I

    return v0
.end method

.method public getTxnManager()Lcom/sleepycat/je/txn/TxnManager;
    .locals 1

    .line 2682
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->txnManager:Lcom/sleepycat/je/txn/TxnManager;

    return-object v0
.end method

.method public getTxnTimeout()J
    .locals 2

    .line 3037
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->txnTimeout:J

    return-wide v0
.end method

.method public getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v0

    return-object v0
.end method

.method public getUtilizationTracker()Lcom/sleepycat/je/cleaner/UtilizationTracker;
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->getUtilizationTracker()Lcom/sleepycat/je/cleaner/UtilizationTracker;

    move-result-object v0

    return-object v0
.end method

.method public getVLSNProxy()Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;
    .locals 2

    .line 3363
    new-instance v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$NoopVLSNProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl$NoopVLSNProxy;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentImpl$1;)V

    return-object v0
.end method

.method public handleRestoreRequired(Lcom/sleepycat/je/log/entry/RestoreRequired;)V
    .locals 3
    .param p1, "restoreRequired"    # Lcom/sleepycat/je/log/entry/RestoreRequired;

    .line 3943
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$2;->$SwitchMap$com$sleepycat$je$log$entry$RestoreRequired$FailureType:[I

    invoke-virtual {p1}, Lcom/sleepycat/je/log/entry/RestoreRequired;->getFailureType()Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3955
    nop

    .line 3956
    invoke-virtual {p1}, Lcom/sleepycat/je/log/entry/RestoreRequired;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3955
    invoke-static {p0, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 3950
    :pswitch_0
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->BTREE_CORRUPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 3953
    invoke-static {p1}, Lcom/sleepycat/je/util/verify/VerifierUtils;->getRestoreRequiredMessage(Lcom/sleepycat/je/log/entry/RestoreRequired;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v0

    .line 3945
    :pswitch_1
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 3948
    invoke-static {p1}, Lcom/sleepycat/je/util/verify/VerifierUtils;->getRestoreRequiredMessage(Lcom/sleepycat/je/log/entry/RestoreRequired;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasExtinctionFilter()Z
    .locals 1

    .line 3209
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->extinctionFilter:Lcom/sleepycat/je/ExtinctionFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method incBackupCount()V
    .locals 1

    .line 2215
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2216
    return-void
.end method

.method public incBinDeltaDeletes()V
    .locals 1

    .line 2913
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->binDeltaDeletes:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2914
    return-void
.end method

.method public incBinDeltaGets()V
    .locals 1

    .line 2901
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->binDeltaGets:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2902
    return-void
.end method

.method public incBinDeltaInserts()V
    .locals 1

    .line 2905
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->binDeltaInserts:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2906
    return-void
.end method

.method public incBinDeltaUpdates()V
    .locals 1

    .line 2909
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->binDeltaUpdates:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2910
    return-void
.end method

.method public incDeleteFailOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2885
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2886
    return-void

    .line 2889
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priDeleteFailOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2890
    return-void
.end method

.method public incDeleteOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2874
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2875
    return-void

    .line 2877
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isKnownSecondary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2878
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secDeleteOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    goto :goto_0

    .line 2880
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priDeleteOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2882
    :goto_0
    return-void
.end method

.method public incInsertFailOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2854
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2855
    return-void

    .line 2857
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isKnownSecondary()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2858
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priInsertFailOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2860
    :cond_1
    return-void
.end method

.method public incInsertOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2843
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2844
    return-void

    .line 2846
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isKnownSecondary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2847
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secInsertOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    goto :goto_0

    .line 2849
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priInsertOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2851
    :goto_0
    return-void
.end method

.method incOpenCount()V
    .locals 1

    .line 2185
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->openCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2186
    return-void
.end method

.method public incPositionOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2832
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2833
    return-void

    .line 2835
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isKnownSecondary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2836
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secPositionOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    goto :goto_0

    .line 2838
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priPositionOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2840
    :goto_0
    return-void
.end method

.method public incRelatchesRequired()V
    .locals 1

    .line 2897
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->relatchesRequired:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2898
    return-void
.end method

.method public incRootSplits()V
    .locals 1

    .line 2893
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->rootSplits:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2894
    return-void
.end method

.method public incSearchFailOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2821
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2822
    return-void

    .line 2824
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isKnownSecondary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2825
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secSearchFailOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    goto :goto_0

    .line 2827
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priSearchFailOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2829
    :goto_0
    return-void
.end method

.method public incSearchOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2810
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2811
    return-void

    .line 2813
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isKnownSecondary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2814
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secSearchOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    goto :goto_0

    .line 2816
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priSearchOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2818
    :goto_0
    return-void
.end method

.method public incUpdateOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2863
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2864
    return-void

    .line 2866
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isKnownSecondary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2867
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->secUpdateOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    goto :goto_0

    .line 2869
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->priUpdateOps:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 2871
    :goto_0
    return-void
.end method

.method protected initConfigManager(Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)Lcom/sleepycat/je/dbi/DbConfigManager;
    .locals 1
    .param p1, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p2, "repParams"    # Lcom/sleepycat/je/dbi/RepConfigProxy;

    .line 769
    new-instance v0, Lcom/sleepycat/je/dbi/DbConfigManager;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;-><init>(Lcom/sleepycat/je/EnvironmentConfig;)V

    return-object v0
.end method

.method protected initConfigParams(Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)V
    .locals 2
    .param p1, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p2, "repConfigProxy"    # Lcom/sleepycat/je/dbi/RepConfigProxy;

    .line 784
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_FORCED_YIELD:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 785
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->forcedYield:Z

    .line 786
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_INIT_TXN:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 787
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isTransactional:Z

    .line 788
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_INIT_LOCKING:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 789
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isNoLocking:Z

    .line 790
    iget-boolean v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isTransactional:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 794
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set \'je.env.isNoLocking\' and \'je.env.isTransactional\';"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RDONLY:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly:Z

    .line 803
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_MEMORY_ONLY:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly:Z

    .line 806
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_DB_EVICTION:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbEviction:Z

    .line 809
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->OFFHEAP_CHECKSUM:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->useOffHeapChecksums:Z

    .line 812
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ADLER32_CHUNK_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    sput v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->adler32ChunkSize:I

    .line 815
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_SHARED_CACHE:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->sharedCache:Z

    .line 818
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->JE_LOGGING_DBLOG:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbLoggingDisabled:Z

    .line 821
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->TREE_COMPACT_MAX_KEY_LENGTH:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->compactMaxKeyLength:I

    .line 824
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_LATCH_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->latchTimeoutMs:I

    .line 827
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_TTL_CLOCK_TOLERANCE:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->ttlClockTolerance:I

    .line 830
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_TTL_MAX_TXN_TIME:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->ttlMaxTxnTime:I

    .line 833
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_TTL_LN_PURGE_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->ttlLnPurgeDelay:I

    .line 836
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->BIN_DELTA_BLIND_OPS:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->allowBlindOps:Z

    .line 839
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->BIN_DELTA_BLIND_PUTS:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->allowBlindPuts:Z

    .line 842
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->TREE_MAX_EMBEDDED_LN:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maxEmbeddedLN:I

    .line 845
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOCK_DEADLOCK_DETECT:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->deadlockDetection:Z

    .line 848
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOCK_DEADLOCK_DETECT_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->deadlockDetectionDelay:J

    .line 851
    invoke-virtual {p1}, Lcom/sleepycat/je/EnvironmentConfig;->getRecoveryProgressListener()Lcom/sleepycat/je/ProgressListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->recoveryProgressListener:Lcom/sleepycat/je/ProgressListener;

    .line 852
    invoke-virtual {p1}, Lcom/sleepycat/je/EnvironmentConfig;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->classLoader:Ljava/lang/ClassLoader;

    .line 853
    invoke-virtual {p1}, Lcom/sleepycat/je/EnvironmentConfig;->getExtinctionFilter()Lcom/sleepycat/je/ExtinctionFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->extinctionFilter:Lcom/sleepycat/je/ExtinctionFilter;

    .line 854
    invoke-virtual {p1}, Lcom/sleepycat/je/EnvironmentConfig;->getDupConvertPreloadConfig()Lcom/sleepycat/je/PreloadConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dupConvertPreloadConfig:Lcom/sleepycat/je/PreloadConfig;

    .line 855
    return-void
.end method

.method protected initFormatter()Ljava/util/logging/Formatter;
    .locals 2

    .line 1612
    new-instance v0, Lcom/sleepycat/je/utilint/TracerFormatter;

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/utilint/TracerFormatter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public invalidate(Lcom/sleepycat/je/EnvironmentFailureException;)V
    .locals 3
    .param p1, "e"    # Lcom/sleepycat/je/EnvironmentFailureException;

    .line 1716
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidatingEFE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1722
    instance-of v0, p1, Lcom/sleepycat/je/EnvironmentWedgedException;

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->wedgedEFE:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/EnvironmentWedgedException;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    sget-object v1, Lcom/sleepycat/je/dbi/DbEnvState;->CLOSED:Lcom/sleepycat/je/dbi/DbEnvState;

    if-eq v0, v1, :cond_1

    .line 1735
    sget-object v0, Lcom/sleepycat/je/dbi/DbEnvState;->INVALID:Lcom/sleepycat/je/dbi/DbEnvState;

    iput-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    .line 1738
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->requestShutdownDaemons()V

    .line 1739
    return-void
.end method

.method public invalidate(Ljava/lang/Error;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Error;

    .line 1761
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->preallocatedEFE:Lcom/sleepycat/je/EnvironmentFailureException;

    monitor-enter v0

    .line 1762
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->preallocatedEFE:Lcom/sleepycat/je/EnvironmentFailureException;

    invoke-virtual {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1763
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->preallocatedEFE:Lcom/sleepycat/je/EnvironmentFailureException;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/EnvironmentFailureException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1765
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1767
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->preallocatedEFE:Lcom/sleepycat/je/EnvironmentFailureException;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Lcom/sleepycat/je/EnvironmentFailureException;)V

    .line 1768
    return-void

    .line 1765
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public invokeCheckpoint(Lcom/sleepycat/je/CheckpointConfig;Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/CheckpointConfig;
    .param p2, "invokingSource"    # Ljava/lang/String;

    .line 2321
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkpointer:Lcom/sleepycat/je/recovery/Checkpointer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sleepycat/je/recovery/Checkpointer;->doCheckpoint(Lcom/sleepycat/je/CheckpointConfig;Ljava/lang/String;Z)V

    .line 2323
    return-void
.end method

.method public invokeCleaner(Z)I
    .locals 2
    .param p1, "cleanMultipleFiles"    # Z

    .line 2381
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly:Z

    if-nez v0, :cond_0

    .line 2387
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/cleaner/Cleaner;->doClean(ZZ)I

    move-result v0

    return v0

    .line 2382
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Log cleaning not allowed in a read-only or memory-only environment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invokeCompressor()V
    .locals 1

    .line 2368
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inCompressor:Lcom/sleepycat/je/incomp/INCompressor;

    invoke-virtual {v0}, Lcom/sleepycat/je/incomp/INCompressor;->doCompress()V

    .line 2369
    return-void
.end method

.method public invokeEvictor()V
    .locals 1

    .line 2372
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/Evictor;->doManualEvict()V

    .line 2373
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->doManualEvict()V

    .line 2374
    return-void
.end method

.method public isArbiter()Z
    .locals 1

    .line 3297
    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 1801
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    sget-object v1, Lcom/sleepycat/je/dbi/DbEnvState;->CLOSED:Lcom/sleepycat/je/dbi/DbEnvState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 1797
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->closing:Z

    return v0
.end method

.method public isDbLoggingDisabled()Z
    .locals 1

    .line 2745
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbLoggingDisabled:Z

    return v0
.end method

.method public isExpirationEnabled()Z
    .locals 1

    .line 3089
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->expirationEnabled:Z

    return v0
.end method

.method public isExpired(IZ)Z
    .locals 1
    .param p1, "expiration"    # I
    .param p2, "hours"    # Z

    .line 3097
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->expirationEnabled:Z

    if-eqz v0, :cond_0

    .line 3098
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/TTL;->isExpired(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3097
    :goto_0
    return v0
.end method

.method public isExpired(J)Z
    .locals 1
    .param p1, "expirationTime"    # J

    .line 3106
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->expirationEnabled:Z

    if-eqz v0, :cond_0

    .line 3107
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/TTL;->isExpired(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3106
    :goto_0
    return v0
.end method

.method public isInInit()Z
    .locals 2

    .line 1790
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    sget-object v1, Lcom/sleepycat/je/dbi/DbEnvState;->INIT:Lcom/sleepycat/je/dbi/DbEnvState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMaster()Z
    .locals 1

    .line 3368
    const/4 v0, 0x0

    return v0
.end method

.method public isMemOnly()Z
    .locals 1

    .line 2486
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly:Z

    return v0
.end method

.method public isNoLocking()Z
    .locals 1

    .line 2474
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isNoLocking:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 2482
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly:Z

    return v0
.end method

.method public isRepConverted()Z
    .locals 1

    .line 3329
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbTree;->isRepConverted()Z

    move-result v0

    return v0
.end method

.method public isReplicated()Z
    .locals 1

    .line 3290
    const/4 v0, 0x0

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    .line 2478
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isTransactional:Z

    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 1783
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    sget-object v1, Lcom/sleepycat/je/dbi/DbEnvState;->OPEN:Lcom/sleepycat/je/dbi/DbEnvState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lazyCompress(Lcom/sleepycat/je/tree/IN;)V
    .locals 2
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    .line 1556
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    return-void

    .line 1560
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    .line 1562
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->shouldLogDelta()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lazyCompress(Lcom/sleepycat/je/tree/IN;Z)V

    .line 1563
    return-void
.end method

.method public lazyCompress(Lcom/sleepycat/je/tree/IN;Z)V
    .locals 1
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "compressDirtySlots"    # Z

    .line 1566
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inCompressor:Lcom/sleepycat/je/incomp/INCompressor;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/incomp/INCompressor;->lazyCompress(Lcom/sleepycat/je/tree/IN;Z)V

    .line 1567
    return-void
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/EnvironmentStats;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2778
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->statManager:Lcom/sleepycat/je/statcap/StatManager;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->statKey:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/statcap/StatManager;->loadStats(Lcom/sleepycat/je/StatsConfig;Ljava/lang/Integer;)Lcom/sleepycat/je/EnvironmentStats;

    move-result-object v0

    return-object v0
.end method

.method public loadStatsInternal(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/EnvironmentStats;
    .locals 4
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2787
    new-instance v0, Lcom/sleepycat/je/EnvironmentStats;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentStats;-><init>()V

    .line 2789
    .local v0, "stats":Lcom/sleepycat/je/EnvironmentStats;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->statSynchronizer:Ljava/lang/Object;

    monitor-enter v1

    .line 2790
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inCompressor:Lcom/sleepycat/je/incomp/INCompressor;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/incomp/INCompressor;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentStats;->setINCompStats(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2791
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkpointer:Lcom/sleepycat/je/recovery/Checkpointer;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/recovery/Checkpointer;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentStats;->setCkptStats(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2792
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/cleaner/Cleaner;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentStats;->setCleanerStats(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2793
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/log/LogManager;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentStats;->setLogStats(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2794
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    .line 2795
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->loadStats()Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    invoke-virtual {v3, p1}, Lcom/sleepycat/je/evictor/Evictor;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v3

    .line 2794
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/EnvironmentStats;->setMBAndEvictorStats(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2796
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentStats;->setOffHeapStats(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2797
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->txnManager:Lcom/sleepycat/je/txn/TxnManager;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/txn/TxnManager;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentStats;->setLockStats(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2798
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentStats;->setEnvStats(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2799
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentStats;->setBackupStats(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2800
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->btreeOpStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentStats;->setBtreeOpStats(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2801
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->thrputStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 2802
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    .line 2801
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentStats;->setThroughputStats(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2803
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->taskCoordinator:Lcom/sleepycat/je/utilint/TaskCoordinator;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/utilint/TaskCoordinator;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentStats;->setTaskCoordinatorStats(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2804
    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dataEraser:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/cleaner/DataEraser;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentStats;->setEraserStats(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 2805
    monitor-exit v1

    .line 2806
    return-object v0

    .line 2805
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized lockStat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/LockStats;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 2959
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->txnManager:Lcom/sleepycat/je/txn/TxnManager;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/TxnManager;->lockStat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/LockStats;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2959
    .end local p0    # "this":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "config":Lcom/sleepycat/je/StatsConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public logMapTreeRoot()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1455
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logMapTreeRoot(J)V

    .line 1456
    return-void
.end method

.method public logMapTreeRoot(J)V
    .locals 3
    .param p1, "ifBeforeLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1465
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->acquireExclusive()V

    .line 1467
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLsn:J

    .line 1468
    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-gez v0, :cond_1

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_DBTREE:Lcom/sleepycat/je/log/LogEntryType;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    .line 1471
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    .line 1470
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/ReplicationContext;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLsn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->release()V

    .line 1476
    nop

    .line 1477
    return-void

    .line 1475
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/Latch;->release()V

    throw v0
.end method

.method public makeDaemonThreadName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "daemonName"    # Ljava/lang/String;

    .line 2500
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->optionalNodeName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2501
    return-object p1

    .line 2504
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->optionalNodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mayNotWrite()Z
    .locals 2

    .line 1809
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    sget-object v1, Lcom/sleepycat/je/dbi/DbEnvState;->INVALID:Lcom/sleepycat/je/dbi/DbEnvState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    sget-object v1, Lcom/sleepycat/je/dbi/DbEnvState;->CLOSED:Lcom/sleepycat/je/dbi/DbEnvState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public needRepConvert()Z
    .locals 1

    .line 3333
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->needRepConvert:Z

    return v0
.end method

.method public noteBackupCopyFilesCount(I)V
    .locals 2
    .param p1, "count"    # I

    .line 2940
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupCopyFilesCount:Lcom/sleepycat/je/utilint/IntStat;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/IntStat;->set(Ljava/lang/Integer;)V

    .line 2941
    return-void
.end method

.method public noteBackupCopyFilesMs(J)V
    .locals 2
    .param p1, "timeMs"    # J

    .line 2950
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupCopyFilesMs:Lcom/sleepycat/je/utilint/LongStat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/LongStat;->set(Ljava/lang/Long;)V

    .line 2951
    return-void
.end method

.method public open()V
    .locals 1

    .line 1705
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidatingEFE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1707
    sget-object v0, Lcom/sleepycat/je/dbi/DbEnvState;->OPEN:Lcom/sleepycat/je/dbi/DbEnvState;

    iput-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envState:Lcom/sleepycat/je/dbi/DbEnvState;

    .line 1708
    return-void

    .line 1705
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected declared-synchronized postCheckpointClose(Z)V
    .locals 0
    .param p1, "checkpointed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 2105
    monitor-exit p0

    return-void
.end method

.method protected postRecoveryConversion()V
    .locals 0

    .line 2113
    return-void
.end method

.method public preCheckpointEndFlush()V
    .locals 0

    .line 3410
    return-void
.end method

.method public preRecoveryCheckpointInit(Lcom/sleepycat/je/recovery/RecoveryInfo;)V
    .locals 0
    .param p1, "recoveryInfo"    # Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 3373
    return-void
.end method

.method public preload([Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/PreloadStats;
    .locals 22
    .param p1, "dbImpls"    # [Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "config"    # Lcom/sleepycat/je/PreloadConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 3622
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/PreloadConfig;->getMaxMillisecs()J

    move-result-wide v0

    move-wide v12, v0

    .line 3623
    .local v12, "maxMillisecs":J
    const-wide v0, 0x7fffffffffffffffL

    .line 3624
    .local v0, "targetTime":J
    const-wide/16 v2, 0x0

    cmp-long v4, v12, v2

    if-lez v4, :cond_1

    .line 3625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v0, v4, v12

    .line 3626
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 3627
    const-wide v0, 0x7fffffffffffffffL

    move-wide v14, v0

    goto :goto_0

    .line 3626
    :cond_0
    move-wide v14, v0

    goto :goto_0

    .line 3624
    :cond_1
    move-wide v14, v0

    .line 3635
    .end local v0    # "targetTime":J
    .local v14, "targetTime":J
    :goto_0
    const/16 v16, 0x0

    .line 3649
    .local v16, "useOffHeapCache":Z
    iget-object v0, v10, Lcom/sleepycat/je/dbi/EnvironmentImpl;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getMaxMemory()J

    move-result-wide v0

    .line 3650
    .local v0, "cacheBudget":J
    if-eqz v16, :cond_2

    .line 3651
    iget-object v4, v10, Lcom/sleepycat/je/dbi/EnvironmentImpl;->offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-virtual {v4}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMaxMemory()J

    move-result-wide v4

    add-long/2addr v0, v4

    move-wide v8, v0

    goto :goto_1

    .line 3650
    :cond_2
    move-wide v8, v0

    .line 3654
    .end local v0    # "cacheBudget":J
    .local v8, "cacheBudget":J
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/PreloadConfig;->getMaxBytes()J

    move-result-wide v0

    .line 3655
    .local v0, "maxBytes":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 3656
    move-wide v0, v8

    move-wide/from16 v17, v0

    goto :goto_2

    .line 3657
    :cond_3
    cmp-long v2, v0, v8

    if-gtz v2, :cond_6

    move-wide/from16 v17, v0

    .line 3671
    .end local v0    # "maxBytes":J
    .local v17, "maxBytes":J
    :goto_2
    new-instance v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$1;

    invoke-direct {v0, v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl$1;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    invoke-static {v11, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 3680
    new-instance v0, Lcom/sleepycat/je/PreloadStats;

    invoke-direct {v0}, Lcom/sleepycat/je/PreloadStats;-><init>()V

    move-object v6, v0

    .line 3682
    .local v6, "pstats":Lcom/sleepycat/je/PreloadStats;
    new-instance v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide/from16 v3, v17

    move/from16 v5, v16

    move-object/from16 v19, v6

    .end local v6    # "pstats":Lcom/sleepycat/je/PreloadStats;
    .local v19, "pstats":Lcom/sleepycat/je/PreloadStats;
    move-wide v6, v14

    move-wide/from16 v20, v12

    move-wide v12, v8

    .end local v8    # "cacheBudget":J
    .local v12, "cacheBudget":J
    .local v20, "maxMillisecs":J
    move-object/from16 v8, v19

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;JZJLcom/sleepycat/je/PreloadStats;Lcom/sleepycat/je/PreloadConfig;)V

    move-object v6, v0

    .line 3685
    .local v6, "callback":Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;
    array-length v0, v11

    move v8, v0

    .line 3686
    .local v8, "nDbs":I
    new-array v0, v8, [J

    move-object v9, v0

    .line 3687
    .local v9, "rootLsns":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v8, :cond_4

    .line 3688
    aget-object v1, v11, v0

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/Tree;->getRootLsn()J

    move-result-wide v1

    aput-wide v1, v9, v0

    .line 3687
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3691
    .end local v0    # "i":I
    :cond_4
    new-instance v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v9

    move/from16 v5, v16

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;[Lcom/sleepycat/je/dbi/DatabaseImpl;[JZLcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;Lcom/sleepycat/je/PreloadConfig;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    .line 3695
    .local v1, "walker":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
    :try_start_1
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->walk()V

    .line 3696
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->close()V
    :try_end_1
    .catch Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 3699
    move-object/from16 v3, v19

    goto :goto_4

    .line 3697
    :catch_0
    move-exception v0

    .line 3698
    .local v0, "HPE":Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;
    :try_start_2
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;->getStatus()Lcom/sleepycat/je/PreloadStatus;

    move-result-object v2

    move-object/from16 v3, v19

    .end local v19    # "pstats":Lcom/sleepycat/je/PreloadStats;
    .local v3, "pstats":Lcom/sleepycat/je/PreloadStats;
    invoke-virtual {v3, v2}, Lcom/sleepycat/je/PreloadStats;->setStatus(Lcom/sleepycat/je/PreloadStatus;)V

    .line 3701
    .end local v0    # "HPE":Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;
    :goto_4
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_5

    .line 3702
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 3704
    :cond_5
    return-object v3

    .line 3658
    .end local v1    # "walker":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
    .end local v3    # "pstats":Lcom/sleepycat/je/PreloadStats;
    .end local v6    # "callback":Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;
    .end local v9    # "rootLsns":[J
    .end local v17    # "maxBytes":J
    .end local v20    # "maxMillisecs":J
    .local v0, "maxBytes":J
    .local v8, "cacheBudget":J
    .local v12, "maxMillisecs":J
    :cond_6
    move-wide/from16 v20, v12

    move-wide v12, v8

    .end local v8    # "cacheBudget":J
    .local v12, "cacheBudget":J
    .restart local v20    # "maxMillisecs":J
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxBytes parameter to preload() was specified as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes but the maximum total cache size is only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "dbImpls":[Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "config":Lcom/sleepycat/je/PreloadConfig;
    throw v2
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 3705
    .end local v0    # "maxBytes":J
    .end local v12    # "cacheBudget":J
    .end local v14    # "targetTime":J
    .end local v16    # "useOffHeapCache":Z
    .end local v20    # "maxMillisecs":J
    .restart local p1    # "dbImpls":[Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "config":Lcom/sleepycat/je/PreloadConfig;
    :catch_1
    move-exception v0

    .line 3706
    .local v0, "E":Ljava/lang/Error;
    invoke-virtual {v10, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 3707
    throw v0
.end method

.method public readMapTreeFromLog(J)V
    .locals 2
    .param p1, "rootLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1515
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    if-eqz v0, :cond_0

    .line 1516
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbTree;->close()V

    .line 1518
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/log/LogManager;->getEntryHandleNotFound(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/DbTree;

    iput-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    .line 1521
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbTree;->isReplicated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getAllowRepConvert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbTree;->setIsReplicated()V

    .line 1523
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbTree;->setIsRepConverted()V

    .line 1524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->needRepConvert:Z

    .line 1527
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/dbi/DbTree;->initExistingEnvironment(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 1530
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->acquireExclusive()V

    .line 1532
    :try_start_0
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLsn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->release()V

    .line 1535
    nop

    .line 1536
    return-void

    .line 1534
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/Latch;->release()V

    throw v0
.end method

.method public declared-synchronized registerMBean(Lcom/sleepycat/je/Environment;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 1034
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMBeanRegistered:Z

    if-nez v0, :cond_1

    .line 1035
    const-string v0, "JEMonitor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMonitorClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->doRegisterMBean(Ljava/lang/String;Lcom/sleepycat/je/Environment;)V

    .line 1037
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDiagnosticsClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->doRegisterMBean(Ljava/lang/String;Lcom/sleepycat/je/Environment;)V

    .line 1039
    .end local p0    # "this":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMBeanRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    :cond_1
    monitor-exit p0

    return-void

    .line 1033
    .end local p1    # "env":Lcom/sleepycat/je/Environment;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerVLSN(Lcom/sleepycat/je/log/LogItem;)V
    .locals 0
    .param p1, "logItem"    # Lcom/sleepycat/je/log/LogItem;

    .line 3377
    return-void
.end method

.method public declared-synchronized removeConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V
    .locals 1
    .param p1, "o"    # Lcom/sleepycat/je/dbi/EnvConfigObserver;

    monitor-enter p0

    .line 2674
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->configObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2675
    monitor-exit p0

    return-void

    .line 2673
    .end local p0    # "this":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "o":Lcom/sleepycat/je/dbi/EnvConfigObserver;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeDbBackup(Lcom/sleepycat/je/util/DbBackup;)V
    .locals 0
    .param p1, "backup"    # Lcom/sleepycat/je/util/DbBackup;

    .line 2930
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->decBackupCount()V

    .line 2931
    return-void
.end method

.method public requestShutdownDaemons()V
    .locals 1

    .line 2393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->closing:Z

    .line 2395
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inCompressor:Lcom/sleepycat/je/incomp/INCompressor;

    invoke-virtual {v0}, Lcom/sleepycat/je/incomp/INCompressor;->requestShutdown()V

    .line 2401
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->sharedCache:Z

    if-nez v0, :cond_0

    .line 2402
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/Evictor;->requestShutdown()V

    .line 2403
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->requestShutdown()V

    .line 2406
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkpointer:Lcom/sleepycat/je/recovery/Checkpointer;

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/Checkpointer;->requestShutdown()V

    .line 2407
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->requestShutdown()V

    .line 2408
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->extinctionScanner:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->requestShutdown()V

    .line 2409
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dataEraser:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/DataEraser;->initiateSoftShutdown()I

    .line 2410
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupManager:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/BackupManager;->initiateSoftShutdown()V

    .line 2411
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->statCapture:Lcom/sleepycat/je/statcap/StatCapture;

    invoke-virtual {v0}, Lcom/sleepycat/je/statcap/StatCapture;->requestShutdown()V

    .line 2412
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logFlusher:Lcom/sleepycat/je/log/LogFlusher;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogFlusher;->requestShutdown()V

    .line 2413
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dataVerifier:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-virtual {v0}, Lcom/sleepycat/je/util/verify/DataVerifier;->requestShutdown()V

    .line 2414
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->reservedFilesAutoRepair:Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;

    invoke-virtual {v0}, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->requestShutdown()V

    .line 2415
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->taskCoordinator:Lcom/sleepycat/je/utilint/TaskCoordinator;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->close()V

    .line 2416
    return-void
.end method

.method protected resetConfigManager(Lcom/sleepycat/je/EnvironmentConfig;)Lcom/sleepycat/je/dbi/DbConfigManager;
    .locals 1
    .param p1, "newConfig"    # Lcom/sleepycat/je/EnvironmentConfig;

    .line 2656
    new-instance v0, Lcom/sleepycat/je/dbi/DbConfigManager;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;-><init>(Lcom/sleepycat/je/EnvironmentConfig;)V

    return-object v0
.end method

.method public resetLoggingLevel(Ljava/lang/String;Ljava/util/logging/Level;)V
    .locals 7
    .param p1, "changedLoggerName"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/util/logging/Level;

    .line 1582
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 1583
    .local v0, "loggerManager":Ljava/util/logging/LogManager;
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 1584
    .local v1, "loggers":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1586
    .local v2, "validName":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1587
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1588
    .local v3, "loggerName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    .line 1590
    .local v4, "logger":Ljava/util/logging/Logger;
    const-string v5, "all"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1591
    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".noEnv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1592
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".fixedPrefix"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1594
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1596
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1598
    :cond_0
    invoke-virtual {v4, p2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 1599
    const/4 v2, 0x1

    .line 1601
    .end local v3    # "loggerName":Ljava/lang/String;
    .end local v4    # "logger":Ljava/util/logging/Logger;
    :cond_1
    goto :goto_0

    .line 1603
    :cond_2
    if-eqz v2, :cond_3

    .line 1608
    return-void

    .line 1604
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The logger name parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is invalid!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public rewriteMapTreeRoot(J)V
    .locals 3
    .param p1, "cleanerTargetLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1485
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->acquireExclusive()V

    .line 1487
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLsn:J

    invoke-static {p1, p2, v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-nez v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logManager:Lcom/sleepycat/je/log/LogManager;

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_DBTREE:Lcom/sleepycat/je/log/LogEntryType;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    .line 1494
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    .line 1493
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/ReplicationContext;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLsn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->release()V

    .line 1499
    nop

    .line 1500
    return-void

    .line 1498
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mapTreeRootLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/Latch;->release()V

    throw v0
.end method

.method public setBackgroundSleepHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;)V"
        }
    .end annotation

    .line 1446
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<*>;"
    iput-object p1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 1447
    return-void
.end method

.method public setDidFullThreadDump(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 2246
    iput-boolean p1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->didFullThreadDump:Z

    .line 2247
    return-void
.end method

.method public setLockTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 3048
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lockTimeout:J

    .line 3049
    return-void
.end method

.method public setMutableConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/EnvironmentMutableConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2618
    invoke-static {}, Lcom/sleepycat/je/dbi/DbEnvPool;->getInstance()Lcom/sleepycat/je/dbi/DbEnvPool;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sleepycat/je/dbi/DbEnvPool;->setMutableConfig(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 2619
    return-void
.end method

.method protected declared-synchronized setupClose(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "errors"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 2095
    monitor-exit p0

    return-void
.end method

.method public shutdownDaemons()V
    .locals 3

    .line 2424
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->statCapture:Lcom/sleepycat/je/statcap/StatCapture;

    invoke-virtual {v0}, Lcom/sleepycat/je/statcap/StatCapture;->shutdown()V

    .line 2426
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->statSynchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 2428
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inCompressor:Lcom/sleepycat/je/incomp/INCompressor;

    invoke-virtual {v1}, Lcom/sleepycat/je/incomp/INCompressor;->shutdown()V

    .line 2434
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/Cleaner;->shutdown()V

    .line 2435
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->extinctionScanner:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->shutdown()V

    .line 2436
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dataEraser:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/DataEraser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 2437
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backupManager:Lcom/sleepycat/je/dbi/BackupManager;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/BackupManager;->shutdownThreads()V

    .line 2438
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkpointer:Lcom/sleepycat/je/recovery/Checkpointer;

    invoke-virtual {v1}, Lcom/sleepycat/je/recovery/Checkpointer;->shutdown()V

    .line 2447
    iget-boolean v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->sharedCache:Z

    if-eqz v1, :cond_0

    .line 2459
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    invoke-virtual {v1, p0}, Lcom/sleepycat/je/evictor/Evictor;->removeSharedCacheEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 2460
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-virtual {v1, p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->clearCache(Lcom/sleepycat/je/dbi/EnvironmentImpl;)J

    goto :goto_0

    .line 2462
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor;->shutdown()V

    .line 2463
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->offHeapCache:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->shutdown()V

    .line 2466
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->logFlusher:Lcom/sleepycat/je/log/LogFlusher;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogFlusher;->shutdown()V

    .line 2467
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->dataVerifier:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-virtual {v1}, Lcom/sleepycat/je/util/verify/DataVerifier;->shutdown()V

    .line 2468
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->reservedFilesAutoRepair:Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->envLogger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 2469
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->taskCoordinator:Lcom/sleepycat/je/utilint/TaskCoordinator;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/TaskCoordinator;->close()V

    .line 2470
    monitor-exit v0

    .line 2471
    return-void

    .line 2470
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sleepAfterBackgroundIO()V
    .locals 3

    .line 1423
    iget v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepBacklog:I

    if-lez v0, :cond_2

    .line 1424
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1428
    :try_start_0
    iget-wide v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepInterval:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    goto :goto_0

    .line 1434
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1429
    :catch_0
    move-exception v1

    .line 1430
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1433
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v1}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1434
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1435
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundTrackingMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1437
    :try_start_2
    iget v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepBacklog:I

    if-lez v0, :cond_0

    .line 1438
    iget v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepBacklog:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepBacklog:I

    .line 1440
    :cond_0
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1433
    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1434
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1442
    :cond_2
    :goto_2
    return-void
.end method

.method public specialEviction()J
    .locals 2

    .line 3273
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->getUtilizationTracker()Lcom/sleepycat/je/cleaner/UtilizationTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->evictMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public tryTruncateVlsnHead(Lcom/sleepycat/je/utilint/VLSN;J)Z
    .locals 1
    .param p1, "deleteEnd"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "deleteFileNum"    # J

    .line 3393
    const/4 v0, 0x0

    return v0
.end method

.method public tryVlsnHeadTruncate(J)Z
    .locals 1
    .param p1, "bytesNeeded"    # J

    .line 3384
    const/4 v0, 0x0

    return v0
.end method

.method public txnBegin(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;
    .locals 1
    .param p1, "parent"    # Lcom/sleepycat/je/Transaction;
    .param p2, "txnConfig"    # Lcom/sleepycat/je/TransactionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2540
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->txnManager:Lcom/sleepycat/je/txn/TxnManager;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/txn/TxnManager;->txnBegin(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized txnStat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/TransactionStats;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    monitor-enter p0

    .line 2966
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->txnManager:Lcom/sleepycat/je/txn/TxnManager;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/TxnManager;->txnStat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/TransactionStats;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2966
    .end local p0    # "this":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "config":Lcom/sleepycat/je/StatsConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateBackgroundReads(I)V
    .locals 3
    .param p1, "nReads"    # I

    .line 1361
    iget v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundReadLimit:I

    .line 1362
    .local v0, "limit":I
    if-lez v0, :cond_2

    .line 1363
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundTrackingMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1364
    :try_start_0
    iget v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundReadCount:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundReadCount:I

    .line 1365
    if-lt v2, v0, :cond_1

    .line 1366
    iget v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepBacklog:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepBacklog:I

    .line 1368
    iget v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundReadCount:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundReadCount:I

    .line 1369
    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "limit":I
    .end local p1    # "nReads":I
    throw v2

    .line 1371
    .restart local v0    # "limit":I
    .restart local p1    # "nReads":I
    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1373
    :cond_2
    :goto_1
    return-void
.end method

.method public updateBackgroundWrites(II)V
    .locals 7
    .param p1, "writeSize"    # I
    .param p2, "logBufferSize"    # I

    .line 1394
    iget v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundWriteLimit:I

    .line 1395
    .local v0, "limit":I
    if-lez v0, :cond_2

    .line 1396
    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundTrackingMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1397
    :try_start_0
    iget-wide v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundWriteBytes:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundWriteBytes:J

    .line 1398
    int-to-long v4, p2

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 1399
    .local v2, "writeCount":I
    if-lt v2, v0, :cond_1

    .line 1400
    iget v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepBacklog:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundSleepBacklog:I

    .line 1402
    iget-wide v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundWriteBytes:J

    mul-int v5, v0, p2

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->backgroundWriteBytes:J

    .line 1403
    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "limit":I
    .end local p1    # "writeSize":I
    .end local p2    # "logBufferSize":I
    throw v3

    .line 1405
    .end local v2    # "writeCount":I
    .restart local v0    # "limit":I
    .restart local p1    # "writeSize":I
    .restart local p2    # "logBufferSize":I
    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1407
    :cond_2
    :goto_1
    return-void
.end method

.method public useOffHeapChecksums()Z
    .locals 1

    .line 3082
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->useOffHeapChecksums:Z

    return v0
.end method

.method public verify(Lcom/sleepycat/je/VerifyConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/VerifyConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2754
    new-instance v0, Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 2755
    .local v0, "verifier":Lcom/sleepycat/je/util/verify/BtreeVerifier;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->setBtreeVerifyConfig(Lcom/sleepycat/je/VerifyConfig;)V

    .line 2756
    invoke-virtual {v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyAll()V

    .line 2757
    return-void
.end method

.method public verifyCursors()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2762
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->inCompressor:Lcom/sleepycat/je/incomp/INCompressor;

    invoke-virtual {v0}, Lcom/sleepycat/je/incomp/INCompressor;->verifyCursors()V

    .line 2763
    return-void
.end method

.method public wasInvalidated()Z
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidatingEFE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
