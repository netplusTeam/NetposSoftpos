.class public Lcom/sleepycat/je/cleaner/Cleaner;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Lcom/sleepycat/je/utilint/DaemonRunner;
.implements Lcom/sleepycat/je/dbi/EnvConfigObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/cleaner/Cleaner$EnvLockedException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CLEAN_IN:Ljava/lang/String; = "CleanIN:"

.field static final CLEAN_LN:Ljava/lang/String; = "CleanLN:"

.field static final CLEAN_PENDING_LN:Ljava/lang/String; = "CleanPendingLN:"

.field private static final DELETED_SUBDIR:Ljava/lang/String; = "deleted"

.field static final DO_CRITICAL_EVICTION:Z = true

.field private static final INT_FORMAT:Ljava/text/NumberFormat;

.field private static final MAX_CLEANER_BYTES_INTERVAL:J = 0x6400000L

.field private static final MAX_DISK_ADJUSTMENT_THRESHOLD:J = 0x280000000L

.field static final UPDATE_GENERATION:Lcom/sleepycat/je/CacheMode;


# instance fields
.field private adjustedMaxDiskLimit:J

.field private availableLogSize:J

.field private final bytesWrittenSinceActivation:Ljava/util/concurrent/atomic/AtomicLong;

.field private final calculator:Lcom/sleepycat/je/cleaner/UtilizationCalculator;

.field cleanerBytesInterval:J

.field dbCacheClearCount:I

.field private diskUsageMessage:Ljava/lang/String;

.field private volatile diskUsageViolationMessage:Ljava/lang/String;

.field private final env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final expirationProfile:Lcom/sleepycat/je/cleaner/ExpirationProfile;

.field expunge:Z

.field private fetchObsoleteSize:Z

.field fileChosenHook:Lcom/sleepycat/je/utilint/TestHook;

.field private volatile fileDeletionEnabled:Z

.field private final fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

.field private final fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

.field private final fileStoreInfo:Lcom/sleepycat/je/utilint/FileStoreInfo;

.field private freeDiskLimit:J

.field private freeDiskShortage:J

.field gradualExpiration:Z

.field lockTimeout:J

.field private logSizeStats:Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;

.field private loggedDiskLimitViolation:Z

.field private final logger:Ljava/util/logging/Logger;

.field lookAheadCacheSize:I

.field private final manageDiskUsageLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private maxDiskLimit:J

.field private maxDiskOverage:J

.field minAge:I

.field minFileUtilization:I

.field minUtilization:I

.field final nBINDeltasCleaned:Lcom/sleepycat/je/utilint/LongStat;

.field final nBINDeltasDead:Lcom/sleepycat/je/utilint/LongStat;

.field final nBINDeltasMigrated:Lcom/sleepycat/je/utilint/LongStat;

.field final nBINDeltasObsolete:Lcom/sleepycat/je/utilint/LongStat;

.field private final nCleanerDeletions:Lcom/sleepycat/je/utilint/LongStat;

.field final nCleanerRuns:Lcom/sleepycat/je/utilint/LongStat;

.field nDeadlockRetries:J

.field final nDiskReads:Lcom/sleepycat/je/utilint/LongStat;

.field final nEntriesRead:Lcom/sleepycat/je/utilint/LongStat;

.field final nINsCleaned:Lcom/sleepycat/je/utilint/LongStat;

.field final nINsDead:Lcom/sleepycat/je/utilint/LongStat;

.field final nINsMigrated:Lcom/sleepycat/je/utilint/LongStat;

.field final nINsObsolete:Lcom/sleepycat/je/utilint/LongStat;

.field final nLNQueueHits:Lcom/sleepycat/je/utilint/LongStat;

.field final nLNsCleaned:Lcom/sleepycat/je/utilint/LongStat;

.field final nLNsDead:Lcom/sleepycat/je/utilint/LongStat;

.field final nLNsExpired:Lcom/sleepycat/je/utilint/LongStat;

.field final nLNsExtinct:Lcom/sleepycat/je/utilint/LongStat;

.field final nLNsLocked:Lcom/sleepycat/je/utilint/LongStat;

.field final nLNsMarked:Lcom/sleepycat/je/utilint/LongStat;

.field final nLNsMigrated:Lcom/sleepycat/je/utilint/LongStat;

.field final nLNsObsolete:Lcom/sleepycat/je/utilint/LongStat;

.field private final nPendingDBsIncomplete:Lcom/sleepycat/je/utilint/LongStat;

.field private final nPendingDBsProcessed:Lcom/sleepycat/je/utilint/LongStat;

.field private final nPendingLNsLocked:Lcom/sleepycat/je/utilint/LongStat;

.field private final nPendingLNsProcessed:Lcom/sleepycat/je/utilint/LongStat;

.field final nRevisalRuns:Lcom/sleepycat/je/utilint/LongStat;

.field final nTwoPassRuns:Lcom/sleepycat/je/utilint/LongStat;

.field private final name:Ljava/lang/String;

.field private final processPendingReentrancyGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

.field readBufferSize:I

.field private reservedDiskLimit:J

.field private final reservedFileRepairMaybeExtinctLogger:Lcom/sleepycat/je/utilint/RateLimitingLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/RateLimitingLogger<",
            "Lcom/sleepycat/je/cleaner/Cleaner;",
            ">;"
        }
    .end annotation
.end field

.field private final rmwFixEnabled:Z

.field private final statGroup:Lcom/sleepycat/je/utilint/StatGroup;

.field private threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

.field private totalLogSize:J

.field final totalRuns:Ljava/util/concurrent/atomic/AtomicLong;

.field trackDetail:Z

.field private final tracker:Lcom/sleepycat/je/cleaner/UtilizationTracker;

.field twoPassGap:I

.field twoPassThreshold:I

.field private useDeletedDir:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    nop

    .line 159
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/cleaner/Cleaner;->INT_FORMAT:Ljava/text/NumberFormat;

    .line 166
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    sput-object v0, Lcom/sleepycat/je/cleaner/Cleaner;->UPDATE_GENERATION:Lcom/sleepycat/je/CacheMode;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 18
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .line 311
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/sleepycat/je/cleaner/Cleaner;->fileDeletionEnabled:Z

    .line 191
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, v1, Lcom/sleepycat/je/cleaner/Cleaner;->manageDiskUsageLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 305
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, v1, Lcom/sleepycat/je/cleaner/Cleaner;->processPendingReentrancyGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 309
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, v1, Lcom/sleepycat/je/cleaner/Cleaner;->bytesWrittenSinceActivation:Ljava/util/concurrent/atomic/AtomicLong;

    .line 312
    iput-object v2, v1, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 313
    move-object/from16 v3, p2

    iput-object v3, v1, Lcom/sleepycat/je/cleaner/Cleaner;->name:Ljava/lang/String;

    .line 316
    new-instance v7, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v8, "Cleaning"

    const-string v9, "Log cleaning involves garbage collection of data files in the append-only storage system."

    invoke-direct {v7, v8, v9}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v1, Lcom/sleepycat/je/cleaner/Cleaner;->statGroup:Lcom/sleepycat/je/utilint/StatGroup;

    .line 317
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nCleanerRuns:Lcom/sleepycat/je/utilint/LongStat;

    .line 318
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_TWO_PASS_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nTwoPassRuns:Lcom/sleepycat/je/utilint/LongStat;

    .line 319
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_REVISAL_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nRevisalRuns:Lcom/sleepycat/je/utilint/LongStat;

    .line 320
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_DELETIONS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nCleanerDeletions:Lcom/sleepycat/je/utilint/LongStat;

    .line 321
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nINsObsolete:Lcom/sleepycat/je/utilint/LongStat;

    .line 322
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nINsCleaned:Lcom/sleepycat/je/utilint/LongStat;

    .line 323
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nINsDead:Lcom/sleepycat/je/utilint/LongStat;

    .line 324
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nINsMigrated:Lcom/sleepycat/je/utilint/LongStat;

    .line 325
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nBINDeltasObsolete:Lcom/sleepycat/je/utilint/LongStat;

    .line 326
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nBINDeltasCleaned:Lcom/sleepycat/je/utilint/LongStat;

    .line 327
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nBINDeltasDead:Lcom/sleepycat/je/utilint/LongStat;

    .line 328
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nBINDeltasMigrated:Lcom/sleepycat/je/utilint/LongStat;

    .line 329
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsObsolete:Lcom/sleepycat/je/utilint/LongStat;

    .line 330
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_EXPIRED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsExpired:Lcom/sleepycat/je/utilint/LongStat;

    .line 331
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_EXTINCT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsExtinct:Lcom/sleepycat/je/utilint/LongStat;

    .line 332
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsCleaned:Lcom/sleepycat/je/utilint/LongStat;

    .line 333
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsDead:Lcom/sleepycat/je/utilint/LongStat;

    .line 334
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_LOCKED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsLocked:Lcom/sleepycat/je/utilint/LongStat;

    .line 335
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsMigrated:Lcom/sleepycat/je/utilint/LongStat;

    .line 336
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_MARKED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsMarked:Lcom/sleepycat/je/utilint/LongStat;

    .line 337
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNQUEUE_HITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nLNQueueHits:Lcom/sleepycat/je/utilint/LongStat;

    .line 338
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_LNS_PROCESSED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nPendingLNsProcessed:Lcom/sleepycat/je/utilint/LongStat;

    .line 340
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_LNS_LOCKED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nPendingLNsLocked:Lcom/sleepycat/je/utilint/LongStat;

    .line 341
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_DBS_PROCESSED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nPendingDBsProcessed:Lcom/sleepycat/je/utilint/LongStat;

    .line 343
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_DBS_INCOMPLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nPendingDBsIncomplete:Lcom/sleepycat/je/utilint/LongStat;

    .line 345
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_ENTRIES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nEntriesRead:Lcom/sleepycat/je/utilint/LongStat;

    .line 346
    new-instance v8, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v9, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_DISK_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nDiskReads:Lcom/sleepycat/je/utilint/LongStat;

    .line 348
    new-instance v7, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;-><init>(JJJLjava/util/Map;)V

    iput-object v7, v1, Lcom/sleepycat/je/cleaner/Cleaner;->logSizeStats:Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 352
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/sleepycat/je/cleaner/Cleaner;->fileStoreInfo:Lcom/sleepycat/je/utilint/FileStoreInfo;

    goto :goto_0

    .line 355
    :cond_0
    nop

    .line 356
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEnvironmentHome()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 355
    invoke-static {v7}, Lcom/sleepycat/je/utilint/FileStoreInfo;->getInfo(Ljava/lang/String;)Lcom/sleepycat/je/utilint/FileStoreInfo;

    move-result-object v7

    iput-object v7, v1, Lcom/sleepycat/je/cleaner/Cleaner;->fileStoreInfo:Lcom/sleepycat/je/utilint/FileStoreInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    nop

    .line 361
    :goto_0
    new-instance v7, Lcom/sleepycat/je/cleaner/FileProtector;

    invoke-direct {v7, v2}, Lcom/sleepycat/je/cleaner/FileProtector;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v7, v1, Lcom/sleepycat/je/cleaner/Cleaner;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    .line 362
    new-instance v7, Lcom/sleepycat/je/cleaner/UtilizationTracker;

    invoke-direct {v7, v2, v1}, Lcom/sleepycat/je/cleaner/UtilizationTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/Cleaner;)V

    iput-object v7, v1, Lcom/sleepycat/je/cleaner/Cleaner;->tracker:Lcom/sleepycat/je/cleaner/UtilizationTracker;

    .line 363
    new-instance v8, Lcom/sleepycat/je/cleaner/UtilizationProfile;

    invoke-direct {v8, v2, v7}, Lcom/sleepycat/je/cleaner/UtilizationProfile;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/UtilizationTracker;)V

    iput-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    .line 364
    new-instance v7, Lcom/sleepycat/je/cleaner/ExpirationProfile;

    invoke-direct {v7, v2}, Lcom/sleepycat/je/cleaner/ExpirationProfile;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v7, v1, Lcom/sleepycat/je/cleaner/Cleaner;->expirationProfile:Lcom/sleepycat/je/cleaner/ExpirationProfile;

    .line 365
    new-instance v7, Lcom/sleepycat/je/cleaner/UtilizationCalculator;

    invoke-direct {v7, v2, v1}, Lcom/sleepycat/je/cleaner/UtilizationCalculator;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/Cleaner;)V

    iput-object v7, v1, Lcom/sleepycat/je/cleaner/Cleaner;->calculator:Lcom/sleepycat/je/cleaner/UtilizationCalculator;

    .line 366
    new-instance v7, Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-direct {v7}, Lcom/sleepycat/je/cleaner/FileSelector;-><init>()V

    iput-object v7, v1, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    .line 367
    new-array v4, v4, [Lcom/sleepycat/je/cleaner/FileProcessor;

    iput-object v4, v1, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    .line 368
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v4

    iput-object v4, v1, Lcom/sleepycat/je/cleaner/Cleaner;->logger:Ljava/util/logging/Logger;

    .line 369
    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v7, v1, Lcom/sleepycat/je/cleaner/Cleaner;->totalRuns:Ljava/util/concurrent/atomic/AtomicLong;

    .line 372
    new-instance v5, Lcom/sleepycat/je/utilint/RateLimitingLogger;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    .line 373
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v5, v6, v0, v4}, Lcom/sleepycat/je/utilint/RateLimitingLogger;-><init>(IILjava/util/logging/Logger;)V

    iput-object v5, v1, Lcom/sleepycat/je/cleaner/Cleaner;->reservedFileRepairMaybeExtinctLogger:Lcom/sleepycat/je/utilint/RateLimitingLogger;

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_TRACK_DETAIL:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 381
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/sleepycat/je/cleaner/Cleaner;->trackDetail:Z

    .line 383
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_RMW_FIX:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 384
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/sleepycat/je/cleaner/Cleaner;->rmwFixEnabled:Z

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/je/cleaner/Cleaner;->setMutableProperties(Lcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 388
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 389
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v2, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4
.end method

.method private deleteFile(Ljava/lang/Long;)Z
    .locals 9
    .param p1, "file"    # Ljava/lang/Long;

    .line 1049
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    .line 1051
    .local v0, "fileManager":Lcom/sleepycat/je/log/FileManager;
    iget-boolean v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->expunge:Z

    if-eqz v1, :cond_0

    const-string v1, "delete"

    goto :goto_0

    :cond_0
    const-string v1, "rename"

    .line 1052
    .local v1, "expungeLabel":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1055
    .local v2, "expungedLabel":Ljava/lang/String;
    :try_start_0
    iget-boolean v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->expunge:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1056
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/sleepycat/je/log/FileManager;->deleteFile(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1057
    return v4

    .line 1062
    :cond_1
    nop

    .line 1063
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v3, ".del"

    iget-boolean v7, p0, Lcom/sleepycat/je/cleaner/Cleaner;->useDeletedDir:Z

    if-eqz v7, :cond_2

    const-string v7, "deleted"

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 1062
    :goto_1
    invoke-virtual {v0, v5, v6, v3, v7}, Lcom/sleepycat/je/log/FileManager;->renameFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1066
    .local v3, "newFile":Ljava/io/File;
    if-eqz v3, :cond_3

    .line 1067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    return v4

    .line 1075
    .end local v3    # "newFile":Ljava/io/File;
    :cond_3
    nop

    .line 1082
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/sleepycat/je/log/FileManager;->isFileValid(J)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1083
    return v4

    .line 1091
    :cond_4
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log file 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1093
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". The deletion will be retried later."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1091
    invoke-static {v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLog(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1096
    const/4 v3, 0x0

    return v3

    .line 1071
    :catch_0
    move-exception v3

    .line 1072
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_WRITE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private deleteUnprotectedFiles(J)J
    .locals 16
    .param p1, "bytesNeeded"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/cleaner/Cleaner$EnvLockedException;
        }
    .end annotation

    .line 935
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v2

    .line 936
    .local v2, "fileManager":Lcom/sleepycat/je/log/FileManager;
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    move-object v3, v0

    .line 938
    .local v3, "deletedFiles":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lcom/sleepycat/je/log/FileManager;->lockEnvironment(ZZ)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 942
    const-wide/16 v4, -0x1

    move-wide v6, v4

    move-wide/from16 v4, p1

    .line 944
    .end local p1    # "bytesNeeded":J
    .local v4, "bytesNeeded":J
    .local v6, "file":J
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    const-string v11, " 0x"

    const-string v12, "Cleaner deleted files:"

    if-gtz v10, :cond_0

    :try_start_0
    iget-object v10, v1, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v10

    if-nez v10, :cond_1

    .line 946
    :cond_0
    iget-object v10, v1, Lcom/sleepycat/je/cleaner/Cleaner;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    const-wide/16 v13, 0x1

    add-long/2addr v13, v6

    .line 947
    invoke-virtual {v10, v13, v14}, Lcom/sleepycat/je/cleaner/FileProtector;->takeNextCondemnedFile(J)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 949
    .local v10, "pair":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-nez v10, :cond_5

    .line 950
    nop

    .line 969
    .end local v6    # "file":J
    .end local v10    # "pair":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_1
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileManager;->releaseExclusiveLock()V

    .line 971
    invoke-interface {v3}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 973
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 976
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 977
    .local v8, "file":Ljava/lang/Long;
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .end local v8    # "file":Ljava/lang/Long;
    goto :goto_1

    .line 981
    :cond_2
    iget-object v7, v1, Lcom/sleepycat/je/cleaner/Cleaner;->logger:Ljava/util/logging/Logger;

    iget-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 982
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 981
    invoke-static {v7, v8, v9, v10}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLog(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 986
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v3}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 996
    iget-object v6, v1, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v6, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->flushLog(Z)V

    .line 999
    :cond_4
    return-wide v4

    .line 953
    .local v6, "file":J
    .restart local v10    # "pair":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_5
    :try_start_1
    invoke-virtual {v10}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-wide v6, v13

    .line 954
    invoke-virtual {v10}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 956
    .local v13, "size":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/sleepycat/je/cleaner/Cleaner;->deleteFile(Ljava/lang/Long;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 958
    iget-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Lcom/sleepycat/je/cleaner/FileProtector;->putBackCondemnedFile(Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 959
    goto/16 :goto_0

    .line 962
    :cond_6
    sub-long v0, v4, v13

    :try_start_2
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v4, v0

    .line 963
    move-object/from16 v1, p0

    :try_start_3
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/Cleaner;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->deleteReservedFileRecord(Ljava/lang/Long;)V

    .line 964
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/Cleaner;->nCleanerDeletions:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 965
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 966
    const/4 v0, 0x0

    .end local v10    # "pair":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v13    # "size":J
    goto/16 :goto_0

    .line 969
    .end local v6    # "file":J
    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_2
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileManager;->releaseExclusiveLock()V

    .line 971
    invoke-interface {v3}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 973
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 976
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 977
    .restart local v8    # "file":Ljava/lang/Long;
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .end local v8    # "file":Ljava/lang/Long;
    goto :goto_3

    .line 981
    :cond_7
    iget-object v7, v1, Lcom/sleepycat/je/cleaner/Cleaner;->logger:Ljava/util/logging/Logger;

    iget-object v8, v1, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 982
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 981
    invoke-static {v7, v8, v9, v10}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLog(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 983
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    throw v0

    .line 939
    .end local v4    # "bytesNeeded":J
    .restart local p1    # "bytesNeeded":J
    :cond_9
    new-instance v0, Lcom/sleepycat/je/cleaner/Cleaner$EnvLockedException;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/sleepycat/je/cleaner/Cleaner$EnvLockedException;-><init>(Lcom/sleepycat/je/cleaner/Cleaner$1;)V

    throw v0
.end method

.method private getDiskFreeSpace()J
    .locals 2

    .line 1220
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileStoreInfo:Lcom/sleepycat/je/utilint/FileStoreInfo;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/FileStoreInfo;->getUsableSpace()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method private getDiskTotalSpace()J
    .locals 2

    .line 1228
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileStoreInfo:Lcom/sleepycat/je/utilint/FileStoreInfo;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/FileStoreInfo;->getTotalSpace()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method static getMigrationRepContext(Lcom/sleepycat/je/tree/LN;)Lcom/sleepycat/je/log/ReplicationContext;
    .locals 5
    .param p0, "ln"    # Lcom/sleepycat/je/tree/LN;

    .line 1693
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v0

    .line 1694
    .local v0, "vlsnSeq":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1695
    sget-object v2, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    return-object v2

    .line 1697
    :cond_0
    new-instance v2, Lcom/sleepycat/je/log/ReplicationContext;

    new-instance v3, Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v3, v0, v1}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/log/ReplicationContext;-><init>(Lcom/sleepycat/je/utilint/VLSN;Z)V

    return-object v2
.end method

.method private migratePendingLN(Lcom/sleepycat/je/dbi/DatabaseImpl;JJLcom/sleepycat/je/tree/BIN;I)Z
    .locals 33
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "logLsn"    # J
    .param p4, "treeLsn"    # J
    .param p6, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p7, "index"    # I

    .line 1553
    move-object/from16 v9, p0

    move-wide/from16 v14, p4

    const/16 v26, 0x0

    .line 1554
    .local v26, "obsolete":Z
    const/16 v27, 0x0

    .line 1555
    .local v27, "migrated":Z
    const/16 v28, 0x0

    .line 1556
    .local v28, "completed":Z
    const/4 v10, 0x0

    .line 1562
    .local v10, "clearTarget":Z
    const/16 v29, 0x0

    .line 1563
    .local v29, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    const/4 v11, 0x0

    .line 1566
    .local v11, "ln":Lcom/sleepycat/je/tree/LN;
    const-wide/16 v0, -0x1

    cmp-long v0, v14, v0

    const/4 v13, 0x0

    if-nez v0, :cond_2

    .line 1568
    const/4 v0, 0x1

    .line 1569
    .end local v28    # "completed":Z
    .local v0, "completed":Z
    nop

    .line 1673
    if-eqz v10, :cond_0

    .line 1674
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->evictLN(I)V

    .line 1677
    :cond_0
    if-eqz v29, :cond_1

    .line 1678
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1681
    :cond_1
    const-string v2, "CleanPendingLN:"

    move-object/from16 v1, p0

    move-object v3, v11

    move-wide/from16 v4, p4

    move v6, v0

    move/from16 v7, v26

    move/from16 v8, v27

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1569
    return v13

    .line 1573
    .end local v0    # "completed":Z
    .restart local v28    # "completed":Z
    :cond_2
    :try_start_0
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1574
    iget-object v0, v9, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsDead:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 1575
    const/4 v0, 0x1

    .line 1576
    .end local v26    # "obsolete":Z
    .local v0, "obsolete":Z
    const/4 v12, 0x1

    .line 1577
    .end local v28    # "completed":Z
    .local v12, "completed":Z
    nop

    .line 1673
    if-eqz v10, :cond_3

    .line 1674
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->evictLN(I)V

    .line 1677
    :cond_3
    if-eqz v29, :cond_4

    .line 1678
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1681
    :cond_4
    const-string v2, "CleanPendingLN:"

    move-object/from16 v1, p0

    move-object v3, v11

    move-wide/from16 v4, p4

    move v6, v12

    move v7, v0

    move/from16 v8, v27

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1577
    return v13

    .line 1585
    .end local v0    # "obsolete":Z
    .end local v12    # "completed":Z
    .restart local v26    # "obsolete":Z
    .restart local v28    # "completed":Z
    :cond_5
    cmp-long v0, p2, v14

    const/4 v12, 0x1

    if-eqz v0, :cond_b

    .line 1587
    :try_start_1
    iget-object v0, v9, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0, v13}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object v8, v0

    .line 1589
    .end local v29    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .local v8, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :try_start_2
    invoke-virtual {v8, v13}, Lcom/sleepycat/je/txn/BasicLocker;->setPreemptable(Z)V

    .line 1591
    sget-object v4, Lcom/sleepycat/je/txn/LockType;->READ:Lcom/sleepycat/je/txn/LockType;

    const/4 v5, 0x0

    move-object v1, v8

    move-wide/from16 v2, p4

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/txn/BasicLocker;->nonBlockingLock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v0

    .line 1594
    .local v0, "lockRet":Lcom/sleepycat/je/txn/LockResult;
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v1, v2, :cond_8

    .line 1600
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsLocked:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1601
    const/4 v13, 0x1

    .line 1602
    .end local v28    # "completed":Z
    .local v13, "completed":Z
    nop

    .line 1673
    if-eqz v10, :cond_6

    .line 1674
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->evictLN(I)V

    .line 1677
    :cond_6
    if-eqz v8, :cond_7

    .line 1678
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1681
    :cond_7
    const-string v2, "CleanPendingLN:"

    move-object/from16 v1, p0

    move-object v3, v11

    move-wide/from16 v4, p4

    move v6, v13

    move/from16 v7, v26

    move-object/from16 v16, v8

    .end local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .local v16, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    move/from16 v8, v27

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1602
    return v12

    .line 1604
    .end local v13    # "completed":Z
    .end local v16    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v28    # "completed":Z
    :cond_8
    move-object/from16 v16, v8

    .end local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v16    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :try_start_3
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsDead:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1605
    const/4 v12, 0x1

    .line 1606
    .end local v26    # "obsolete":Z
    .local v12, "obsolete":Z
    const/16 v17, 0x1

    .line 1607
    .end local v28    # "completed":Z
    .local v17, "completed":Z
    nop

    .line 1673
    if-eqz v10, :cond_9

    .line 1674
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->evictLN(I)V

    .line 1677
    :cond_9
    if-eqz v16, :cond_a

    .line 1678
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1681
    :cond_a
    const-string v2, "CleanPendingLN:"

    move-object/from16 v1, p0

    move-object v3, v11

    move-wide/from16 v4, p4

    move/from16 v6, v17

    move v7, v12

    move/from16 v8, v27

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1607
    return v13

    .line 1673
    .end local v0    # "lockRet":Lcom/sleepycat/je/txn/LockResult;
    .end local v12    # "obsolete":Z
    .end local v17    # "completed":Z
    .restart local v26    # "obsolete":Z
    .restart local v28    # "completed":Z
    :catchall_0
    move-exception v0

    move-wide v13, v14

    move-object/from16 v29, v16

    goto/16 :goto_4

    .end local v16    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v8

    move-wide v13, v14

    move-object/from16 v29, v16

    .end local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v16    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    goto/16 :goto_4

    .line 1610
    .end local v16    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v29    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :cond_b
    :try_start_4
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1622
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/LN;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move-object v11, v0

    .line 1623
    if-nez v11, :cond_c

    .line 1624
    :try_start_5
    sget-object v0, Lcom/sleepycat/je/CacheMode;->EVICT_LN:Lcom/sleepycat/je/CacheMode;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v8, p6

    move/from16 v7, p7

    :try_start_6
    invoke-virtual {v8, v7, v0}, Lcom/sleepycat/je/tree/BIN;->fetchLN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;

    move-result-object v0

    move-object v11, v0

    .line 1625
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    xor-int/2addr v0, v12

    move v10, v0

    move/from16 v30, v10

    move-object/from16 v31, v11

    goto :goto_0

    .line 1673
    :catchall_2
    move-exception v0

    move-object/from16 v8, p6

    move/from16 v7, p7

    goto/16 :goto_3

    .line 1623
    :cond_c
    move-object/from16 v8, p6

    move/from16 v7, p7

    move/from16 v30, v10

    move-object/from16 v31, v11

    .line 1629
    .end local v10    # "clearTarget":Z
    .end local v11    # "ln":Lcom/sleepycat/je/tree/LN;
    .local v30, "clearTarget":Z
    .local v31, "ln":Lcom/sleepycat/je/tree/LN;
    :goto_0
    if-eqz v31, :cond_10

    :try_start_7
    invoke-virtual/range {v31 .. v31}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_d

    move/from16 v32, v13

    move-wide v13, v14

    goto/16 :goto_1

    .line 1645
    :cond_d
    iget-object v11, v9, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1647
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v16

    .line 1648
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v17

    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v18

    const/16 v19, 0x0

    .line 1649
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSize(I)I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x1

    .line 1651
    invoke-static/range {v31 .. v31}, Lcom/sleepycat/je/cleaner/Cleaner;->getMigrationRepContext(Lcom/sleepycat/je/tree/LN;)Lcom/sleepycat/je/log/ReplicationContext;

    move-result-object v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1645
    move-object/from16 v10, v31

    move-object/from16 v12, p1

    move/from16 v32, v13

    move-object v13, v0

    move-wide v5, v14

    move-object v14, v1

    move v15, v2

    move-wide/from16 v20, p4

    :try_start_8
    invoke-virtual/range {v10 .. v25}, Lcom/sleepycat/je/tree/LN;->log(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/WriteLockInfo;Z[BIZZJIZZLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v0

    .line 1653
    .local v0, "logItem":Lcom/sleepycat/je/log/LogItem;
    iget-wide v3, v0, Lcom/sleepycat/je/log/LogItem;->lsn:J

    .line 1654
    invoke-virtual/range {v31 .. v31}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v10

    iget v12, v0, Lcom/sleepycat/je/log/LogItem;->size:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1653
    move-object/from16 v1, p6

    move/from16 v2, p7

    move-wide v13, v5

    move-wide v5, v10

    move v7, v12

    :try_start_9
    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/tree/BIN;->updateEntry(IJJI)V

    .line 1657
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsMigrated:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1660
    iget-wide v4, v0, Lcom/sleepycat/je/log/LogItem;->lsn:J

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-static/range {v1 .. v6}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAfterLsnChange(Lcom/sleepycat/je/dbi/DatabaseImpl;JJLcom/sleepycat/je/txn/Locker;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1663
    const/4 v10, 0x1

    .line 1664
    .end local v27    # "migrated":Z
    .local v10, "migrated":Z
    const/4 v11, 0x1

    .line 1665
    .end local v28    # "completed":Z
    .local v11, "completed":Z
    nop

    .line 1673
    if-eqz v30, :cond_e

    .line 1674
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->evictLN(I)V

    .line 1677
    :cond_e
    if-eqz v29, :cond_f

    .line 1678
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1681
    :cond_f
    const-string v2, "CleanPendingLN:"

    move-object/from16 v1, p0

    move-object/from16 v3, v31

    move-wide/from16 v4, p4

    move v6, v11

    move/from16 v7, v26

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1665
    return v32

    .line 1673
    .end local v0    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .end local v10    # "migrated":Z
    .end local v11    # "completed":Z
    .restart local v27    # "migrated":Z
    .restart local v28    # "completed":Z
    :catchall_3
    move-exception v0

    move-wide v13, v5

    goto :goto_2

    :catchall_4
    move-exception v0

    move-wide v13, v14

    goto :goto_2

    .line 1629
    :cond_10
    move/from16 v32, v13

    move-wide v13, v14

    .line 1630
    :goto_1
    :try_start_a
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->setKnownDeletedAndEvictLN(I)V

    .line 1631
    iget-object v0, v9, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsDead:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1632
    const/4 v0, 0x1

    .line 1633
    .end local v26    # "obsolete":Z
    .local v0, "obsolete":Z
    const/4 v10, 0x1

    .line 1634
    .end local v28    # "completed":Z
    .local v10, "completed":Z
    nop

    .line 1673
    if-eqz v30, :cond_11

    .line 1674
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->evictLN(I)V

    .line 1677
    :cond_11
    if-eqz v29, :cond_12

    .line 1678
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1681
    :cond_12
    const-string v2, "CleanPendingLN:"

    move-object/from16 v1, p0

    move-object/from16 v3, v31

    move-wide/from16 v4, p4

    move v6, v10

    move v7, v0

    move/from16 v8, v27

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1634
    return v32

    .line 1673
    .end local v0    # "obsolete":Z
    .end local v10    # "completed":Z
    .restart local v26    # "obsolete":Z
    .restart local v28    # "completed":Z
    :catchall_5
    move-exception v0

    :goto_2
    move/from16 v10, v30

    move-object/from16 v11, v31

    goto :goto_4

    .line 1611
    .end local v30    # "clearTarget":Z
    .end local v31    # "ln":Lcom/sleepycat/je/tree/LN;
    .local v10, "clearTarget":Z
    .local v11, "ln":Lcom/sleepycat/je/tree/LN;
    :cond_13
    move-wide v13, v14

    :try_start_b
    iget-object v0, v9, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LN is embedded although its associated logrec (at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have the embedded flag on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v10    # "clearTarget":Z
    .end local v11    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v26    # "obsolete":Z
    .end local v27    # "migrated":Z
    .end local v28    # "completed":Z
    .end local v29    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "logLsn":J
    .end local p4    # "treeLsn":J
    .end local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local p7    # "index":I
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1673
    .restart local v10    # "clearTarget":Z
    .restart local v11    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v26    # "obsolete":Z
    .restart local v27    # "migrated":Z
    .restart local v28    # "completed":Z
    .restart local v29    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "logLsn":J
    .restart local p4    # "treeLsn":J
    .restart local p6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p7    # "index":I
    :catchall_6
    move-exception v0

    goto :goto_4

    :catchall_7
    move-exception v0

    :goto_3
    move-wide v13, v14

    :goto_4
    if-eqz v10, :cond_14

    .line 1674
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/je/tree/BIN;->evictLN(I)V

    .line 1677
    :cond_14
    if-eqz v29, :cond_15

    .line 1678
    invoke-virtual/range {v29 .. v29}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1681
    :cond_15
    const-string v2, "CleanPendingLN:"

    move-object/from16 v1, p0

    move-object v3, v11

    move-wide/from16 v4, p4

    move/from16 v6, v28

    move/from16 v7, v26

    move/from16 v8, v27

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    throw v0
.end method

.method private processPendingLN(JLcom/sleepycat/je/dbi/DatabaseImpl;[BLcom/sleepycat/je/tree/TreeLocation;)V
    .locals 22
    .param p1, "logLsn"    # J
    .param p3, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p4, "keyFromLog"    # [B
    .param p5, "location"    # Lcom/sleepycat/je/tree/TreeLocation;

    .line 1433
    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-object/from16 v12, p5

    const/4 v13, 0x1

    .line 1434
    .local v13, "processedHere":Z
    const/4 v14, 0x0

    .line 1435
    .local v14, "lockDenied":Z
    const/4 v15, 0x0

    .line 1436
    .local v15, "obsolete":Z
    const/16 v16, 0x0

    .line 1438
    .local v16, "completed":Z
    const/16 v17, 0x0

    .line 1439
    .local v17, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    const/16 v18, 0x0

    .line 1447
    .local v18, "bin":Lcom/sleepycat/je/tree/BIN;
    if-eqz p3, :cond_10

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1457
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    .line 1458
    .local v0, "tree":Lcom/sleepycat/je/tree/Tree;
    if-eqz v0, :cond_f

    .line 1466
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v8, v1

    .line 1469
    .end local v17    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .local v8, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :try_start_1
    invoke-virtual {v8, v2}, Lcom/sleepycat/je/txn/BasicLocker;->setPreemptable(Z)V

    .line 1471
    sget-object v4, Lcom/sleepycat/je/txn/LockType;->READ:Lcom/sleepycat/je/txn/LockType;

    const/4 v5, 0x0

    move-object v1, v8

    move-wide/from16 v2, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/txn/BasicLocker;->nonBlockingLock(JLcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockResult;

    move-result-object v1

    move-object/from16 v17, v1

    .line 1474
    .local v17, "lockRet":Lcom/sleepycat/je/txn/LockResult;
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/txn/LockResult;->getLockGrant()Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v1, v2, :cond_5

    .line 1476
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/Cleaner;->nPendingLNsLocked:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1477
    const/4 v14, 0x1

    .line 1478
    const/16 v16, 0x1

    .line 1514
    if-eqz v18, :cond_1

    .line 1515
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1518
    :cond_1
    if-eqz v8, :cond_2

    .line 1519
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1523
    :cond_2
    if-eqz v16, :cond_3

    if-nez v14, :cond_3

    .line 1524
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v1, v10, v11}, Lcom/sleepycat/je/cleaner/FileSelector;->removePendingLN(J)V

    .line 1531
    :cond_3
    if-eqz v13, :cond_4

    .line 1532
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/16 v19, 0x0

    const-string v2, "CleanPendingLN:"

    move-object/from16 v1, p0

    move/from16 v6, v16

    move v7, v15

    move-object/from16 v20, v8

    .end local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .local v20, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    move/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    goto :goto_0

    .line 1531
    .end local v20    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :cond_4
    move-object/from16 v20, v8

    .line 1479
    .end local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v20    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :goto_0
    return-void

    .line 1485
    .end local v20    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :cond_5
    move-object/from16 v20, v8

    .end local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v20    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    sget-object v6, Lcom/sleepycat/je/cleaner/Cleaner;->UPDATE_GENERATION:Lcom/sleepycat/je/CacheMode;

    move-object v1, v0

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/tree/Tree;->getParentBINForChildLN(Lcom/sleepycat/je/tree/TreeLocation;[BZZLcom/sleepycat/je/CacheMode;)Z

    move-result v1

    move/from16 v19, v1

    .line 1489
    .local v19, "parentFound":Z
    iget-object v1, v12, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v8, v1

    .line 1490
    .end local v18    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v8, "bin":Lcom/sleepycat/je/tree/BIN;
    :try_start_3
    iget v1, v12, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    move v7, v1

    .line 1492
    .local v7, "index":I
    if-nez v19, :cond_a

    .line 1493
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsDead:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1494
    const/4 v15, 0x1

    .line 1495
    const/16 v16, 0x1

    .line 1514
    if-eqz v8, :cond_6

    .line 1515
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1518
    :cond_6
    if-eqz v20, :cond_7

    .line 1519
    invoke-virtual/range {v20 .. v20}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1523
    :cond_7
    if-eqz v16, :cond_8

    if-nez v14, :cond_8

    .line 1524
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v1, v10, v11}, Lcom/sleepycat/je/cleaner/FileSelector;->removePendingLN(J)V

    .line 1531
    :cond_8
    if-eqz v13, :cond_9

    .line 1532
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/16 v18, 0x0

    const-string v2, "CleanPendingLN:"

    move-object/from16 v1, p0

    move/from16 v6, v16

    move/from16 v21, v7

    .end local v7    # "index":I
    .local v21, "index":I
    move v7, v15

    move-object v12, v8

    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v12, "bin":Lcom/sleepycat/je/tree/BIN;
    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    goto :goto_1

    .line 1531
    .end local v12    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v21    # "index":I
    .restart local v7    # "index":I
    .restart local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_9
    move/from16 v21, v7

    move-object v12, v8

    .line 1496
    .end local v7    # "index":I
    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v12    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v21    # "index":I
    :goto_1
    return-void

    .line 1500
    .end local v12    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v21    # "index":I
    .restart local v7    # "index":I
    .restart local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_a
    move/from16 v21, v7

    move-object v12, v8

    .end local v7    # "index":I
    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v12    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v21    # "index":I
    const/4 v13, 0x0

    .line 1502
    nop

    .line 1503
    move/from16 v8, v21

    .end local v21    # "index":I
    .local v8, "index":I
    :try_start_4
    invoke-virtual {v12, v8}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v3, p1

    move-object v7, v12

    move/from16 v18, v8

    .end local v8    # "index":I
    .local v18, "index":I
    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->migratePendingLN(Lcom/sleepycat/je/dbi/DatabaseImpl;JJLcom/sleepycat/je/tree/BIN;I)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v14, v1

    .line 1505
    const/4 v0, 0x1

    .line 1514
    .end local v16    # "completed":Z
    .end local v17    # "lockRet":Lcom/sleepycat/je/txn/LockResult;
    .end local v18    # "index":I
    .local v0, "completed":Z
    if-eqz v12, :cond_b

    .line 1515
    invoke-virtual {v12}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1518
    :cond_b
    if-eqz v20, :cond_c

    .line 1519
    invoke-virtual/range {v20 .. v20}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1523
    :cond_c
    if-eqz v0, :cond_d

    if-nez v14, :cond_d

    .line 1524
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v1, v10, v11}, Lcom/sleepycat/je/cleaner/FileSelector;->removePendingLN(J)V

    .line 1531
    :cond_d
    if-eqz v13, :cond_e

    .line 1532
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v8, 0x0

    const-string v2, "CleanPendingLN:"

    move-object/from16 v1, p0

    move v6, v0

    move v7, v15

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1536
    :cond_e
    return-void

    .line 1514
    .end local v0    # "completed":Z
    .end local v19    # "parentFound":Z
    .restart local v16    # "completed":Z
    :catchall_0
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v17, v20

    goto/16 :goto_4

    .line 1507
    :catch_0
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v17, v20

    goto/16 :goto_3

    .line 1514
    .end local v12    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v8, "bin":Lcom/sleepycat/je/tree/BIN;
    :catchall_1
    move-exception v0

    move-object v12, v8

    move-object/from16 v18, v12

    move-object/from16 v17, v20

    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v12    # "bin":Lcom/sleepycat/je/tree/BIN;
    goto/16 :goto_4

    .line 1507
    .end local v12    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    :catch_1
    move-exception v0

    move-object v12, v8

    move-object/from16 v18, v12

    move-object/from16 v17, v20

    .end local v8    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v12    # "bin":Lcom/sleepycat/je/tree/BIN;
    goto :goto_3

    .line 1514
    .end local v12    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v18, "bin":Lcom/sleepycat/je/tree/BIN;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v20

    goto/16 :goto_4

    .line 1507
    :catch_2
    move-exception v0

    move-object/from16 v17, v20

    goto :goto_3

    .line 1514
    .end local v20    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .local v8, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :catchall_3
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v17, v20

    .end local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v20    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    goto :goto_4

    .line 1507
    .end local v20    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :catch_3
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v17, v20

    .end local v8    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v20    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    goto :goto_3

    .line 1458
    .end local v20    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .local v0, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v17, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :cond_f
    :try_start_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v13    # "processedHere":Z
    .end local v14    # "lockDenied":Z
    .end local v15    # "obsolete":Z
    .end local v16    # "completed":Z
    .end local v17    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v18    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local p1    # "logLsn":J
    .end local p3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p4    # "keyFromLog":[B
    .end local p5    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    throw v1

    .line 1514
    .end local v0    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v13    # "processedHere":Z
    .restart local v14    # "lockDenied":Z
    .restart local v15    # "obsolete":Z
    .restart local v16    # "completed":Z
    .restart local v17    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v18    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p1    # "logLsn":J
    .restart local p3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p4    # "keyFromLog":[B
    .restart local p5    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    :catchall_4
    move-exception v0

    goto :goto_4

    .line 1507
    :catch_4
    move-exception v0

    goto :goto_3

    .line 1448
    :cond_10
    :goto_2
    if-eqz p3, :cond_11

    .line 1449
    invoke-static/range {p1 .. p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/sleepycat/je/cleaner/Cleaner;->addPendingDB(Ljava/lang/Long;Lcom/sleepycat/je/dbi/DatabaseId;)V

    .line 1451
    :cond_11
    iget-object v0, v9, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsDead:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1452
    const/4 v0, 0x1

    .line 1453
    .end local v15    # "obsolete":Z
    .local v0, "obsolete":Z
    const/4 v12, 0x1

    .line 1514
    .end local v16    # "completed":Z
    .local v12, "completed":Z
    if-eqz v18, :cond_12

    .line 1515
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1518
    :cond_12
    if-eqz v17, :cond_13

    .line 1519
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1523
    :cond_13
    if-eqz v12, :cond_14

    if-nez v14, :cond_14

    .line 1524
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v1, v10, v11}, Lcom/sleepycat/je/cleaner/FileSelector;->removePendingLN(J)V

    .line 1531
    :cond_14
    if-eqz v13, :cond_15

    .line 1532
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v8, 0x0

    const-string v2, "CleanPendingLN:"

    move-object/from16 v1, p0

    move v6, v12

    move v7, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    .line 1454
    :cond_15
    return-void

    .line 1508
    .end local v12    # "completed":Z
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v15    # "obsolete":Z
    .restart local v16    # "completed":Z
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1509
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v2, "com.sleepycat.je.cleaner.Cleaner"

    const-string v3, "processLN"

    const-string v4, "Exception thrown: "

    invoke-static {v1, v2, v3, v4, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1512
    nop

    .end local v13    # "processedHere":Z
    .end local v14    # "lockDenied":Z
    .end local v15    # "obsolete":Z
    .end local v16    # "completed":Z
    .end local v17    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v18    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local p1    # "logLsn":J
    .end local p3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p4    # "keyFromLog":[B
    .end local p5    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1514
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v13    # "processedHere":Z
    .restart local v14    # "lockDenied":Z
    .restart local v15    # "obsolete":Z
    .restart local v16    # "completed":Z
    .restart local v17    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v18    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local p1    # "logLsn":J
    .restart local p3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p4    # "keyFromLog":[B
    .restart local p5    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    :goto_4
    if-eqz v18, :cond_16

    .line 1515
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1518
    :cond_16
    if-eqz v17, :cond_17

    .line 1519
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 1523
    :cond_17
    if-eqz v16, :cond_18

    if-nez v14, :cond_18

    .line 1524
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v1, v10, v11}, Lcom/sleepycat/je/cleaner/FileSelector;->removePendingLN(J)V

    .line 1531
    :cond_18
    if-eqz v13, :cond_19

    .line 1532
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v8, 0x0

    const-string v2, "CleanPendingLN:"

    move-object/from16 v1, p0

    move/from16 v6, v16

    move v7, v15

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/cleaner/Cleaner;->logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V

    :cond_19
    throw v0
.end method

.method private setMutableProperties(Lcom/sleepycat/je/dbi/DbConfigManager;)V
    .locals 14
    .param p1, "cm"    # Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 408
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->lockTimeout:J

    .line 410
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->readBufferSize:I

    .line 411
    if-gtz v0, :cond_0

    .line 412
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 413
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->readBufferSize:I

    .line 416
    :cond_0
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_LOOK_AHEAD_CACHE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 417
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->lookAheadCacheSize:I

    .line 419
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_DEADLOCK_RETRY:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->nDeadlockRetries:J

    .line 421
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_REMOVE:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->expunge:Z

    .line 423
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_USE_DELETED_DIR:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 424
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->useDeletedDir:Z

    .line 426
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_TWO_PASS_GAP:Lcom/sleepycat/je/config/IntConfigParam;

    .line 427
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->twoPassGap:I

    .line 429
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_TWO_PASS_THRESHOLD:Lcom/sleepycat/je/config/IntConfigParam;

    .line 430
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->twoPassThreshold:I

    .line 432
    if-nez v0, :cond_1

    .line 433
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_MIN_UTILIZATION:Lcom/sleepycat/je/config/IntConfigParam;

    .line 434
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->twoPassThreshold:I

    .line 437
    :cond_1
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_GRADUAL_EXPIRATION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 438
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->gradualExpiration:Z

    .line 440
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_DB_CACHE_CLEAR_COUNT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 441
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->dbCacheClearCount:I

    .line 443
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_THREADS:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 444
    .local v0, "nThreads":I
    if-lez v0, :cond_10

    .line 446
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    .line 449
    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 450
    aget-object v3, v3, v1

    if-nez v3, :cond_2

    .line 451
    goto :goto_1

    .line 453
    :cond_2
    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/FileProcessor;->shutdown()V

    .line 454
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 449
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    .end local v1    # "i":I
    :cond_3
    new-array v1, v0, [Lcom/sleepycat/je/cleaner/FileProcessor;

    .line 459
    .local v1, "newThreads":[Lcom/sleepycat/je/cleaner/FileProcessor;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 460
    aget-object v4, v4, v3

    aput-object v4, v1, v3

    .line 459
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 464
    .end local v3    # "i":I
    :cond_4
    iput-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    .line 467
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_7

    .line 468
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    aget-object v5, v4, v3

    if-eqz v5, :cond_5

    .line 469
    goto :goto_5

    .line 471
    :cond_5
    new-instance v5, Lcom/sleepycat/je/cleaner/FileProcessor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sleepycat/je/cleaner/Cleaner;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v3, :cond_6

    const/4 v6, 0x1

    move v8, v6

    goto :goto_4

    :cond_6
    move v8, v2

    :goto_4
    iget-object v9, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v11, p0, Lcom/sleepycat/je/cleaner/Cleaner;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    iget-object v12, p0, Lcom/sleepycat/je/cleaner/Cleaner;->calculator:Lcom/sleepycat/je/cleaner/UtilizationCalculator;

    iget-object v13, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    move-object v6, v5

    move-object v10, p0

    invoke-direct/range {v6 .. v13}, Lcom/sleepycat/je/cleaner/FileProcessor;-><init>(Ljava/lang/String;ZLcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/Cleaner;Lcom/sleepycat/je/cleaner/UtilizationProfile;Lcom/sleepycat/je/cleaner/UtilizationCalculator;Lcom/sleepycat/je/cleaner/FileSelector;)V

    aput-object v5, v4, v3

    .line 467
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 478
    .end local v1    # "newThreads":[Lcom/sleepycat/je/cleaner/FileProcessor;
    .end local v3    # "i":I
    :cond_7
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_BYTES_INTERVAL:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->cleanerBytesInterval:J

    .line 481
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_8

    .line 482
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FILE_MAX:Lcom/sleepycat/je/config/LongConfigParam;

    .line 483
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v3

    const-wide/16 v7, 0x4

    div-long/2addr v3, v7

    iput-wide v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->cleanerBytesInterval:J

    .line 485
    const-wide/32 v7, 0x6400000

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->cleanerBytesInterval:J

    .line 489
    :cond_8
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_WAKEUP_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 490
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    .line 492
    .local v1, "wakeupInterval":I
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    array-length v4, v3

    :goto_6
    if-ge v2, v4, :cond_a

    aget-object v7, v3, v2

    .line 493
    .local v7, "thread":Lcom/sleepycat/je/cleaner/FileProcessor;
    if-nez v7, :cond_9

    .line 494
    goto :goto_7

    .line 496
    :cond_9
    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Lcom/sleepycat/je/cleaner/FileProcessor;->setWaitTime(J)V

    .line 492
    .end local v7    # "thread":Lcom/sleepycat/je/cleaner/FileProcessor;
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 499
    :cond_a
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_FETCH_OBSOLETE_SIZE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 500
    invoke-virtual {p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fetchObsoleteSize:Z

    .line 502
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_MIN_AGE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->minAge:I

    .line 503
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_MIN_UTILIZATION:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->minUtilization:I

    .line 504
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_MIN_FILE_UTILIZATION:Lcom/sleepycat/je/config/IntConfigParam;

    .line 505
    invoke-virtual {p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->minFileUtilization:I

    .line 507
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_DISK:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->maxDiskLimit:J

    .line 508
    iput-wide v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->adjustedMaxDiskLimit:J

    .line 510
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 512
    iput-wide v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->freeDiskLimit:J

    goto :goto_9

    .line 514
    :cond_b
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getReplayFreeDiskPercent()I

    move-result v2

    .line 515
    .local v2, "replayFreeDiskPct":I
    if-nez v2, :cond_c

    .line 517
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->FREE_DISK:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->freeDiskLimit:J

    goto :goto_8

    .line 520
    :cond_c
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->FREE_DISK:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->isSpecified(Lcom/sleepycat/je/config/ConfigParam;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 525
    nop

    .line 526
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/Cleaner;->getDiskTotalSpace()J

    move-result-wide v3

    int-to-long v5, v2

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->freeDiskLimit:J

    .line 529
    :goto_8
    iget-wide v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->maxDiskLimit:J

    const-wide v5, 0x280000000L

    cmp-long v3, v3, v5

    if-gtz v3, :cond_d

    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->FREE_DISK:Lcom/sleepycat/je/config/LongConfigParam;

    .line 530
    invoke-virtual {p1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->isSpecified(Lcom/sleepycat/je/config/ConfigParam;)Z

    move-result v3

    if-nez v3, :cond_d

    if-eqz v2, :cond_e

    .line 532
    :cond_d
    iget-wide v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->adjustedMaxDiskLimit:J

    iget-wide v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->freeDiskLimit:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->adjustedMaxDiskLimit:J

    .line 536
    .end local v2    # "replayFreeDiskPct":I
    :cond_e
    :goto_9
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->RESERVED_DISK:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->reservedDiskLimit:J

    .line 537
    return-void

    .line 521
    .restart local v2    # "replayFreeDiskPct":I
    :cond_f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot specify both je.freeDisk and je.rep.replayFreeDiskPercent."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 444
    .end local v1    # "wakeupInterval":I
    .end local v2    # "replayFreeDiskPct":I
    :cond_10
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method addPendingDB(Ljava/lang/Long;Lcom/sleepycat/je/dbi/DatabaseId;)V
    .locals 5
    .param p1, "file"    # Ljava/lang/Long;
    .param p2, "id"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 1706
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/cleaner/FileSelector;->addPendingDB(Ljava/lang/Long;Lcom/sleepycat/je/dbi/DatabaseId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CleanAddPendingDB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1710
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 1857
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->close()V

    .line 1858
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->tracker:Lcom/sleepycat/je/cleaner/UtilizationTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->close()V

    .line 1859
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/FileSelector;->close(Lcom/sleepycat/je/dbi/MemoryBudget;)V

    .line 1860
    return-void
.end method

.method public createProcessor()Lcom/sleepycat/je/cleaner/FileProcessor;
    .locals 9

    .line 687
    new-instance v8, Lcom/sleepycat/je/cleaner/FileProcessor;

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    iget-object v6, p0, Lcom/sleepycat/je/cleaner/Cleaner;->calculator:Lcom/sleepycat/je/cleaner/UtilizationCalculator;

    iget-object v7, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    const-string v1, ""

    const/4 v2, 0x0

    move-object v0, v8

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/cleaner/FileProcessor;-><init>(Ljava/lang/String;ZLcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/Cleaner;Lcom/sleepycat/je/cleaner/UtilizationProfile;Lcom/sleepycat/je/cleaner/UtilizationCalculator;Lcom/sleepycat/je/cleaner/FileSelector;)V

    return-object v8
.end method

.method deleteReservedFile(Ljava/lang/Long;Ljava/lang/String;)Z
    .locals 10
    .param p1, "file"    # Ljava/lang/Long;
    .param p2, "label"    # Ljava/lang/String;

    .line 1007
    const-string v0, " deleted files: 0x"

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mayNotWrite()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileDeletionEnabled:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1011
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v1

    .line 1013
    .local v1, "fileManager":Lcom/sleepycat/je/log/FileManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/log/FileManager;->lockEnvironment(ZZ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1014
    return v2

    .line 1017
    :cond_1
    const/4 v4, 0x0

    .line 1020
    .local v4, "deleted":Z
    :try_start_0
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    invoke-virtual {v5, p1}, Lcom/sleepycat/je/cleaner/FileProtector;->takeCondemnedFile(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    .local v5, "size":Ljava/lang/Long;
    if-nez v5, :cond_3

    .line 1022
    nop

    .line 1034
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileManager;->releaseExclusiveLock()V

    .line 1036
    if-eqz v4, :cond_2

    .line 1037
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1039
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    invoke-static {v3, v6, v7, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLog(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1022
    :cond_2
    return v2

    .line 1024
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sleepycat/je/cleaner/Cleaner;->deleteFile(Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1025
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->deleteReservedFileRecord(Ljava/lang/Long;)V

    .line 1026
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->nCleanerDeletions:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1027
    const/4 v4, 0x1

    goto :goto_0

    .line 1030
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    invoke-virtual {v2, p1, v5}, Lcom/sleepycat/je/cleaner/FileProtector;->putBackCondemnedFile(Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1032
    :goto_0
    nop

    .line 1034
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileManager;->releaseExclusiveLock()V

    .line 1036
    if-eqz v4, :cond_5

    .line 1037
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1039
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    invoke-static {v2, v6, v7, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLog(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1032
    :cond_5
    return v3

    .line 1034
    .end local v5    # "size":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileManager;->releaseExclusiveLock()V

    .line 1036
    if-eqz v4, :cond_6

    .line 1037
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1039
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    invoke-static {v3, v5, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLog(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_6
    throw v2

    .line 1008
    .end local v1    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v4    # "deleted":Z
    :cond_7
    :goto_1
    return v2
.end method

.method public doClean(ZZ)I
    .locals 2
    .param p1, "cleanMultipleFiles"    # Z
    .param p2, "forceCleaning"    # Z

    .line 680
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/Cleaner;->createProcessor()Lcom/sleepycat/je/cleaner/FileProcessor;

    move-result-object v0

    .line 682
    .local v0, "processor":Lcom/sleepycat/je/cleaner/FileProcessor;
    nop

    .line 683
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/sleepycat/je/cleaner/FileProcessor;->doClean(ZZZ)I

    move-result v1

    .line 682
    return v1
.end method

.method public enableFileDeletion(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 763
    iput-boolean p1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileDeletionEnabled:Z

    .line 764
    return-void
.end method

.method public envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 0
    .param p1, "cm"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p2, "ignore"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 400
    invoke-direct {p0, p1}, Lcom/sleepycat/je/cleaner/Cleaner;->setMutableProperties(Lcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 403
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/Cleaner;->wakeupActivate()V

    .line 404
    return-void
.end method

.method public freshenLogSizeStats()V
    .locals 3

    .line 1109
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    .line 1110
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/FileProtector;->getLogSizeStats()Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;

    move-result-object v0

    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/Cleaner;->getDiskFreeSpace()J

    move-result-wide v1

    .line 1109
    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/je/cleaner/Cleaner;->recalcLogSizeStats(Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;J)V

    .line 1111
    return-void
.end method

.method public getDiskLimitMessage()Ljava/lang/String;
    .locals 1

    .line 1241
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->diskUsageMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskLimitViolation()Ljava/lang/String;
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->diskUsageViolationMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationProfile()Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->expirationProfile:Lcom/sleepycat/je/cleaner/ExpirationProfile;

    return-object v0
.end method

.method public getFetchObsoleteSize(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 564
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fetchObsoleteSize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    return-object v0
.end method

.method public getFileSelector()Lcom/sleepycat/je/cleaner/FileSelector;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    return-object v0
.end method

.method public getFilesAtCheckpointStart()Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .locals 3

    .line 1276
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/Cleaner;->processPending()V

    .line 1278
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/cleaner/FileSelector;->getFilesAtCheckpointStart(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Logger;)Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;

    move-result-object v0

    return-object v0
.end method

.method getFreeDiskShortage()J
    .locals 2

    .line 1262
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->freeDiskShortage:J

    return-wide v0
.end method

.method getMaxDiskOverage()J
    .locals 2

    .line 1258
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->maxDiskOverage:J

    return-wide v0
.end method

.method public getNWakeupRequests()I
    .locals 6

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "count":I
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 657
    .local v4, "thread":Lcom/sleepycat/je/cleaner/FileProcessor;
    if-nez v4, :cond_0

    .line 658
    goto :goto_1

    .line 660
    :cond_0
    invoke-virtual {v4}, Lcom/sleepycat/je/cleaner/FileProcessor;->getNWakeupRequests()I

    move-result v5

    add-int/2addr v0, v5

    .line 656
    .end local v4    # "thread":Lcom/sleepycat/je/cleaner/FileProcessor;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 662
    :cond_1
    return v0
.end method

.method getUtilizationCalculator()Lcom/sleepycat/je/cleaner/UtilizationCalculator;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->calculator:Lcom/sleepycat/je/cleaner/UtilizationCalculator;

    return-object v0
.end method

.method public getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    return-object v0
.end method

.method public getUtilizationTracker()Lcom/sleepycat/je/cleaner/UtilizationTracker;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->tracker:Lcom/sleepycat/je/cleaner/UtilizationTracker;

    return-object v0
.end method

.method isFileDeletionEnabled()Z
    .locals 1

    .line 767
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileDeletionEnabled:Z

    return v0
.end method

.method public isRMWFixEnabled()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->rmwFixEnabled:Z

    return v0
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 9
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 696
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->statGroup:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    .line 699
    .local v0, "stats":Lcom/sleepycat/je/utilint/StatGroup;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    .line 700
    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/FileSelector;->getPendingQueueSizes()Lcom/sleepycat/je/utilint/Pair;

    move-result-object v1

    .line 702
    .local v1, "pendingQueueSizes":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v2, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v3, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_MIN_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/Cleaner;->calculator:Lcom/sleepycat/je/cleaner/UtilizationCalculator;

    .line 704
    invoke-virtual {v4}, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->getCurrentMinUtilization()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 705
    new-instance v2, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v3, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_MAX_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/Cleaner;->calculator:Lcom/sleepycat/je/cleaner/UtilizationCalculator;

    .line 707
    invoke-virtual {v4}, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->getCurrentMaxUtilization()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 708
    new-instance v2, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v3, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PREDICTED_MIN_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/Cleaner;->calculator:Lcom/sleepycat/je/cleaner/UtilizationCalculator;

    .line 710
    invoke-virtual {v4}, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->getPredictedMinUtilization()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 711
    new-instance v2, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v3, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PREDICTED_MAX_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/Cleaner;->calculator:Lcom/sleepycat/je/cleaner/UtilizationCalculator;

    .line 713
    invoke-virtual {v4}, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->getPredictedMaxUtilization()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 714
    new-instance v2, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v3, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_LN_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 716
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 717
    new-instance v2, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v3, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_DB_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 719
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 725
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->statGroup:Lcom/sleepycat/je/utilint/StatGroup;

    monitor-enter v2

    .line 726
    :try_start_0
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_ACTIVE_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logSizeStats:Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;

    iget-wide v5, v5, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->activeSize:J

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 729
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_RESERVED_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logSizeStats:Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;

    iget-wide v5, v5, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->reservedSize:J

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 732
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PROTECTED_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logSizeStats:Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;

    iget-wide v5, v5, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->protectedSize:J

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 735
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_AVAILABLE_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->availableLogSize:J

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 738
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_TOTAL_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->totalLogSize:J

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 742
    new-instance v3, Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PROTECTED_LOG_SIZE_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 746
    .local v3, "protectedSizeMap":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logSizeStats:Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;

    iget-object v4, v4, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->protectedSizeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 748
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    nop

    .line 749
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->createStat(Ljava/lang/String;)Lcom/sleepycat/je/utilint/AtomicLongComponent;

    move-result-object v6

    .line 750
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sleepycat/je/utilint/AtomicLongComponent;->set(J)V

    .line 751
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_0

    .line 752
    .end local v3    # "protectedSizeMap":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    :cond_0
    monitor-exit v2

    .line 754
    return-object v0

    .line 752
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method logFine(Ljava/lang/String;Lcom/sleepycat/je/tree/Node;JZZZ)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "node"    # Lcom/sleepycat/je/tree/Node;
    .param p3, "logLsn"    # J
    .param p5, "completed"    # Z
    .param p6, "obsolete"    # Z
    .param p7, "dirtiedMigrated"    # Z

    .line 1835
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1837
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    instance-of v1, p2, Lcom/sleepycat/je/tree/IN;

    if-eqz v1, :cond_0

    .line 1839
    const-string v1, " node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    move-object v1, p2

    check-cast v1, Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1842
    :cond_0
    const-string v1, " logLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    const-string v1, " complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1845
    const-string v1, " obsolete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1846
    const-string v1, " dirtiedOrMigrated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1848
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1850
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public manageDiskUsage()V
    .locals 11

    .line 788
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V

    .line 790
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mayNotWrite()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileDeletionEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->manageDiskUsageLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 800
    return-void

    .line 805
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/Cleaner;->freshenLogSizeStats()V

    .line 807
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/FileProtector;->getNReservedFiles()I

    move-result v0

    if-lez v0, :cond_9

    .line 809
    const/4 v0, 0x0

    .line 811
    .local v0, "freshenStats":Z
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 820
    iget-wide v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->maxDiskLimit:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-wide v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->maxDiskOverage:J

    iget-wide v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->freeDiskShortage:J

    .line 822
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->freeDiskShortage:J

    :goto_0
    const-wide/32 v5, 0x100000

    const-wide/16 v7, 0x3

    iget-wide v9, p0, Lcom/sleepycat/je/cleaner/Cleaner;->cleanerBytesInterval:J

    mul-long/2addr v9, v7

    .line 824
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 829
    .local v1, "origBytesNeeded":J
    iget-wide v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->reservedDiskLimit:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_3

    .line 830
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logSizeStats:Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;

    iget-wide v5, v5, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->reservedSize:J

    iget-wide v7, p0, Lcom/sleepycat/je/cleaner/Cleaner;->reservedDiskLimit:J

    sub-long/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-wide v1, v5

    .line 838
    :cond_3
    move-wide v5, v1

    .line 839
    .local v5, "bytesNeeded":J
    cmp-long v7, v5, v3

    if-lez v7, :cond_4

    .line 840
    invoke-direct {p0, v5, v6}, Lcom/sleepycat/je/cleaner/Cleaner;->deleteUnprotectedFiles(J)J

    move-result-wide v7

    move-wide v5, v7

    .line 847
    :cond_4
    cmp-long v3, v5, v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 848
    invoke-virtual {v3, v5, v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->tryVlsnHeadTruncate(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 850
    invoke-direct {p0, v5, v6}, Lcom/sleepycat/je/cleaner/Cleaner;->deleteUnprotectedFiles(J)J

    move-result-wide v3

    move-wide v5, v3

    .line 851
    const/4 v0, 0x1

    .line 854
    :cond_5
    cmp-long v3, v5, v1

    if-gez v3, :cond_6

    .line 855
    const/4 v0, 0x1

    .line 857
    .end local v1    # "origBytesNeeded":J
    .end local v5    # "bytesNeeded":J
    :cond_6
    goto :goto_1

    .line 862
    :cond_7
    nop

    .line 863
    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/cleaner/Cleaner;->deleteUnprotectedFiles(J)J

    move-result-wide v3

    .line 865
    .local v3, "bytesNeeded":J
    cmp-long v1, v3, v1

    if-gez v1, :cond_8

    .line 866
    const/4 v0, 0x1

    .line 877
    .end local v3    # "bytesNeeded":J
    :cond_8
    :goto_1
    if-eqz v0, :cond_9

    .line 878
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/Cleaner;->freshenLogSizeStats()V

    .line 887
    .end local v0    # "freshenStats":Z
    :cond_9
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->diskUsageViolationMessage:Ljava/lang/String;

    .line 888
    .local v0, "violation":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 889
    iget-boolean v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->loggedDiskLimitViolation:Z

    if-nez v1, :cond_b

    .line 890
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v1, v2, v3, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 891
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->loggedDiskLimitViolation:Z

    goto :goto_2

    .line 894
    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->loggedDiskLimitViolation:Z
    :try_end_0
    .catch Lcom/sleepycat/je/cleaner/Cleaner$EnvLockedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    .end local v0    # "violation":Ljava/lang/String;
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->manageDiskUsageLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 906
    goto :goto_3

    .line 905
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 897
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Lcom/sleepycat/je/cleaner/Cleaner$EnvLockedException;
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete files due to read-only processes. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->diskUsageMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Lcom/sleepycat/je/cleaner/Cleaner$EnvLockedException;
    goto :goto_2

    .line 907
    :goto_3
    return-void

    .line 905
    :goto_4
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->manageDiskUsageLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 791
    :cond_c
    :goto_5
    return-void
.end method

.method processPending()V
    .locals 21

    .line 1328
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/sleepycat/je/cleaner/Cleaner;->processPendingReentrancyGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1329
    return-void

    .line 1333
    :cond_0
    :try_start_0
    iget-object v0, v7, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    move-object v10, v0

    .line 1335
    .local v10, "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    iget-object v0, v7, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1336
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnManager;->getLockManager()Lcom/sleepycat/je/txn/LockManager;

    move-result-object v0

    move-object v11, v0

    .line 1338
    .local v11, "lockManager":Lcom/sleepycat/je/txn/LockManager;
    iget-object v0, v7, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/FileSelector;->getPendingLNs()Ljava/util/Map;

    move-result-object v0

    move-object v12, v0

    .line 1340
    .local v12, "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    if-eqz v12, :cond_7

    .line 1341
    new-instance v6, Lcom/sleepycat/je/tree/TreeLocation;

    invoke-direct {v6}, Lcom/sleepycat/je/tree/TreeLocation;-><init>()V

    .line 1344
    .local v6, "location":Lcom/sleepycat/je/tree/TreeLocation;
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v13, v1

    .line 1346
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-nez v1, :cond_1

    .line 1418
    iget-object v0, v7, Lcom/sleepycat/je/cleaner/Cleaner;->processPendingReentrancyGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1347
    return-void

    .line 1350
    :cond_1
    :try_start_1
    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->diskUsageViolationMessage:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1351
    move-object v9, v10

    goto/16 :goto_4

    .line 1354
    :cond_2
    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->nPendingLNsProcessed:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1356
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v14, v1

    .line 1357
    .local v14, "logLsn":J
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/LNInfo;

    move-object/from16 v16, v1

    .line 1358
    .local v16, "info":Lcom/sleepycat/je/cleaner/LNInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/cleaner/LNInfo;->getKey()[B

    move-result-object v1

    move-object v5, v1

    .line 1360
    .local v5, "key":[B
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/cleaner/LNInfo;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    move-object v4, v1

    .line 1361
    .local v4, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    iget-wide v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->lockTimeout:J

    invoke-virtual {v10, v4, v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;J)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    move-object v2, v1

    .line 1364
    .local v2, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_2
    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 1365
    move-object/from16 v17, v10

    .end local v10    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .local v17, "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/cleaner/LNInfo;->getExpirationTime()J

    move-result-wide v9

    iget-object v3, v7, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1366
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTtlLnPurgeDelay()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    rsub-int/lit8 v3, v3, 0x0

    move-object/from16 v19, v4

    .end local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .local v19, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    int-to-long v3, v3

    .line 1364
    :try_start_4
    invoke-virtual {v1, v9, v10, v3, v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->expiresWithin(JJ)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v1, :cond_4

    .line 1368
    :try_start_5
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/sleepycat/je/txn/LockManager;->isLockUncontended(Ljava/lang/Long;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_3

    .line 1369
    :try_start_6
    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v1, v14, v15}, Lcom/sleepycat/je/cleaner/FileSelector;->removePendingLN(J)V

    .line 1370
    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsExpired:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1371
    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsObsolete:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1393
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object/from16 v9, v17

    move-object/from16 v18, v19

    move-object/from16 v19, v5

    goto/16 :goto_3

    .line 1373
    :cond_3
    :try_start_7
    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->nPendingLNsLocked:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1393
    :goto_1
    move-object/from16 v9, v17

    .end local v17    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .local v9, "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    :try_start_8
    invoke-virtual {v9, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    :goto_2
    move-object v10, v9

    const/4 v9, 0x1

    goto/16 :goto_0

    .end local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v17    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    :catchall_1
    move-exception v0

    move-object/from16 v9, v17

    move-object v1, v2

    move-object/from16 v18, v19

    move-object/from16 v19, v5

    .end local v17    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    goto/16 :goto_3

    .line 1378
    .end local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v17    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    :cond_4
    move-object/from16 v9, v17

    .end local v17    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    :try_start_9
    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1, v2, v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionState(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v1

    sget-object v3, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-ne v1, v3, :cond_5

    .line 1379
    :try_start_a
    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v1, v14, v15}, Lcom/sleepycat/je/cleaner/FileSelector;->removePendingLN(J)V

    .line 1380
    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsExtinct:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1381
    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->nLNsObsolete:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1393
    :try_start_b
    invoke-virtual {v9, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object/from16 v18, v19

    move-object/from16 v19, v5

    goto :goto_3

    .line 1387
    :cond_5
    :try_start_c
    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->daemonEviction(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1390
    move-object/from16 v1, p0

    move-object/from16 v17, v2

    .end local v2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v17, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    move-wide v2, v14

    move-object/from16 v18, v19

    .end local v19    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .local v18, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    move-object/from16 v4, v17

    move-object/from16 v19, v5

    .end local v5    # "key":[B
    .local v19, "key":[B
    :try_start_d
    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/cleaner/Cleaner;->processPendingLN(JLcom/sleepycat/je/dbi/DatabaseImpl;[BLcom/sleepycat/je/tree/TreeLocation;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1393
    move-object/from16 v1, v17

    .end local v17    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v1, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_e
    invoke-virtual {v9, v1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1394
    nop

    .line 1395
    .end local v1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .end local v14    # "logLsn":J
    .end local v16    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .end local v18    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v19    # "key":[B
    move/from16 v20, v10

    move-object v10, v9

    move/from16 v9, v20

    goto/16 :goto_0

    .line 1393
    .restart local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .restart local v14    # "logLsn":J
    .restart local v16    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .restart local v17    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v18    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v19    # "key":[B
    :catchall_3
    move-exception v0

    move-object/from16 v1, v17

    .end local v17    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_3

    .end local v1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v18    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "key":[B
    .local v19, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object/from16 v18, v19

    move-object/from16 v19, v5

    .end local v2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "key":[B
    .restart local v1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v18    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .local v19, "key":[B
    goto :goto_3

    .end local v1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v18    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "key":[B
    .local v17, "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .local v19, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :catchall_5
    move-exception v0

    move-object v1, v2

    move-object/from16 v9, v17

    move-object/from16 v18, v19

    move-object/from16 v19, v5

    .end local v2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "key":[B
    .end local v17    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v18    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .local v19, "key":[B
    goto :goto_3

    .end local v1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v18    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v19    # "key":[B
    .restart local v2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v5    # "key":[B
    .restart local v17    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    :catchall_6
    move-exception v0

    move-object v1, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v9, v17

    .end local v2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v5    # "key":[B
    .end local v17    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v18    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v19    # "key":[B
    goto :goto_3

    .end local v1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v18    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v19    # "key":[B
    .restart local v2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v5    # "key":[B
    .restart local v10    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    :catchall_7
    move-exception v0

    move-object v1, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object v9, v10

    .end local v2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v5    # "key":[B
    .end local v10    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v18    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v19    # "key":[B
    :goto_3
    invoke-virtual {v9, v1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v0

    .line 1344
    .end local v1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .end local v14    # "logLsn":J
    .end local v16    # "info":Lcom/sleepycat/je/cleaner/LNInfo;
    .end local v18    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v19    # "key":[B
    .restart local v10    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    :cond_6
    move-object v9, v10

    .end local v10    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    goto :goto_4

    .line 1340
    .end local v6    # "location":Lcom/sleepycat/je/tree/TreeLocation;
    .end local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v10    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    :cond_7
    move-object v9, v10

    .line 1398
    .end local v10    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    :goto_4
    iget-object v0, v7, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/FileSelector;->getPendingDBs()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1399
    .local v1, "pendingDBs":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    if-eqz v1, :cond_a

    .line 1400
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/DatabaseId;

    .line 1401
    .local v2, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    iget-object v3, v7, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-nez v3, :cond_8

    .line 1418
    iget-object v0, v7, Lcom/sleepycat/je/cleaner/Cleaner;->processPendingReentrancyGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1402
    return-void

    .line 1404
    :cond_8
    :try_start_f
    iget-object v3, v7, Lcom/sleepycat/je/cleaner/Cleaner;->nPendingDBsProcessed:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1405
    iget-wide v3, v7, Lcom/sleepycat/je/cleaner/Cleaner;->lockTimeout:J

    invoke-virtual {v9, v2, v3, v4}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;J)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 1407
    .local v3, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v3, :cond_9

    .line 1408
    :try_start_10
    iget-object v4, v7, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    invoke-virtual {v4, v2}, Lcom/sleepycat/je/cleaner/FileSelector;->removePendingDB(Lcom/sleepycat/je/dbi/DatabaseId;)V

    goto :goto_6

    .line 1410
    :cond_9
    iget-object v4, v7, Lcom/sleepycat/je/cleaner/Cleaner;->nPendingDBsIncomplete:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 1413
    :goto_6
    :try_start_11
    invoke-virtual {v9, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1414
    nop

    .line 1415
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_5

    .line 1413
    .restart local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_8
    move-exception v0

    invoke-virtual {v9, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 1418
    .end local v1    # "pendingDBs":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v9    # "dbMapTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v11    # "lockManager":Lcom/sleepycat/je/txn/LockManager;
    .end local v12    # "pendingLNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    :cond_a
    iget-object v0, v7, Lcom/sleepycat/je/cleaner/Cleaner;->processPendingReentrancyGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1419
    nop

    .line 1420
    return-void

    .line 1418
    :catchall_9
    move-exception v0

    iget-object v1, v7, Lcom/sleepycat/je/cleaner/Cleaner;->processPendingReentrancyGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method recalcLogSizeStats(Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;J)V
    .locals 26
    .param p1, "stats"    # Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;
    .param p2, "diskFreeSpace"    # J

    .line 1122
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    iget-wide v5, v1, Lcom/sleepycat/je/cleaner/Cleaner;->maxDiskLimit:J

    .line 1123
    .local v5, "maxLimit":J
    iget-wide v7, v1, Lcom/sleepycat/je/cleaner/Cleaner;->adjustedMaxDiskLimit:J

    .line 1124
    .local v7, "adjustedMax":J
    iget-wide v9, v1, Lcom/sleepycat/je/cleaner/Cleaner;->freeDiskLimit:J

    .line 1144
    .local v9, "freeLimit":J
    sub-long v11, v3, v9

    .line 1145
    .local v11, "freeBytes1":J
    const-wide/16 v13, 0x0

    sub-long v3, v13, v11

    .line 1146
    .local v3, "freeShortage":J
    iget-wide v13, v2, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->activeSize:J

    iget-wide v0, v2, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->reservedSize:J

    add-long/2addr v13, v0

    .line 1150
    .local v13, "totalSize":J
    const-wide/16 v0, 0x0

    cmp-long v17, v7, v0

    if-lez v17, :cond_0

    .line 1151
    sub-long v0, v13, v7

    .line 1152
    .local v0, "maxOverage":J
    move-wide/from16 v17, v0

    .end local v0    # "maxOverage":J
    .local v17, "maxOverage":J
    sub-long v0, v7, v13

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide/from16 v19, v11

    move-wide/from16 v11, v17

    move-wide/from16 v17, v0

    .local v0, "freeBytes2":J
    goto :goto_0

    .line 1154
    .end local v0    # "freeBytes2":J
    .end local v17    # "maxOverage":J
    :cond_0
    const-wide/16 v0, 0x0

    .line 1155
    .local v0, "maxOverage":J
    move-wide/from16 v17, v11

    move-wide/from16 v19, v11

    move-wide v11, v0

    .line 1158
    .end local v0    # "maxOverage":J
    .local v11, "maxOverage":J
    .local v17, "freeBytes2":J
    .local v19, "freeBytes1":J
    :goto_0
    iget-wide v0, v2, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->reservedSize:J

    add-long v0, v17, v0

    move-wide/from16 v21, v13

    .end local v13    # "totalSize":J
    .local v21, "totalSize":J
    iget-wide v13, v2, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->protectedSize:J

    sub-long v13, v0, v13

    .line 1161
    .local v13, "availBytes":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .line 1163
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-gtz v0, :cond_1

    .line 1164
    const-string v0, "Disk usage is not within je.maxDisk or je.freeDisk "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    const-string v0, "limits and write operations are prohibited:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1167
    :cond_1
    const-string v0, "Disk usage is currently within je.maxDisk and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    const-string v0, "je.freeDisk limits:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    :goto_1
    const-string v0, " maxDiskLimit="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    sget-object v0, Lcom/sleepycat/je/cleaner/Cleaner;->INT_FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v0, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    const-string v15, " freeDiskLimit="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {v0, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    const-string v15, " adjustedMaxDiskLimit="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {v0, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    const-string v15, " maxDiskOverage="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {v0, v11, v12}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    const-string v15, " freeDiskShortage="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    const-string v15, " diskFreeSpace="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    move-wide v15, v5

    move-wide/from16 v24, v7

    move-wide v5, v3

    move-wide/from16 v3, p2

    .end local v3    # "freeShortage":J
    .end local v7    # "adjustedMax":J
    .local v5, "freeShortage":J
    .local v15, "maxLimit":J
    .local v24, "adjustedMax":J
    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    const-string v7, " availableLogSize="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {v0, v13, v14}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    const-string v7, " totalLogSize="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    move-wide/from16 v7, v21

    .end local v21    # "totalSize":J
    .local v7, "totalSize":J
    invoke-virtual {v0, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    const-string v3, " activeLogSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    iget-wide v3, v2, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->activeSize:J

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    const-string v3, " reservedLogSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    iget-wide v3, v2, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->reservedSize:J

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    const-string v3, " protectedLogSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    iget-wide v3, v2, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->protectedSize:J

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    const-string v0, " protectedLogSizeMap={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    iget-object v0, v2, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->protectedSizeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1198
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v21, v0

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    sget-object v0, Lcom/sleepycat/je/cleaner/Cleaner;->INT_FORMAT:Ljava/text/NumberFormat;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, v21

    goto :goto_2

    .line 1202
    :cond_2
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1207
    .local v3, "msg":Ljava/lang/String;
    move-object/from16 v4, p0

    move-object/from16 v21, v1

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .local v21, "sb":Ljava/lang/StringBuilder;
    iget-object v1, v4, Lcom/sleepycat/je/cleaner/Cleaner;->statGroup:Lcom/sleepycat/je/utilint/StatGroup;

    monitor-enter v1

    .line 1208
    :try_start_0
    iput-wide v11, v4, Lcom/sleepycat/je/cleaner/Cleaner;->maxDiskOverage:J

    .line 1209
    iput-wide v5, v4, Lcom/sleepycat/je/cleaner/Cleaner;->freeDiskShortage:J

    .line 1210
    iput-object v3, v4, Lcom/sleepycat/je/cleaner/Cleaner;->diskUsageMessage:Ljava/lang/String;

    .line 1211
    const-wide/16 v22, 0x0

    cmp-long v0, v13, v22

    if-gtz v0, :cond_3

    move-object v0, v3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-object v0, v4, Lcom/sleepycat/je/cleaner/Cleaner;->diskUsageViolationMessage:Ljava/lang/String;

    .line 1212
    iput-wide v13, v4, Lcom/sleepycat/je/cleaner/Cleaner;->availableLogSize:J

    .line 1213
    iput-wide v7, v4, Lcom/sleepycat/je/cleaner/Cleaner;->totalLogSize:J

    .line 1214
    iput-object v2, v4, Lcom/sleepycat/je/cleaner/Cleaner;->logSizeStats:Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;

    .line 1215
    monitor-exit v1

    .line 1216
    return-void

    .line 1215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public repairReservedFile(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;[B)Z
    .locals 9
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "cursorImpl"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p3, "key"    # [B

    .line 1736
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1737
    return v1

    .line 1748
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 1750
    :try_start_0
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1751
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    if-nez v0, :cond_1

    .line 1752
    nop

    .line 1764
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1752
    return v1

    .line 1754
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v2

    .line 1755
    .local v2, "index":I
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v3

    .line 1757
    .local v3, "lsn":J
    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->isTransientOrNull(J)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1758
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1759
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_0

    .line 1764
    .end local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v2    # "index":I
    :cond_2
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1765
    nop

    .line 1771
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnManager;->getLockManager()Lcom/sleepycat/je/txn/LockManager;

    move-result-object v0

    .line 1772
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    .line 1771
    invoke-virtual {v0, v3, v4, v2}, Lcom/sleepycat/je/txn/LockManager;->release(JLcom/sleepycat/je/txn/Locker;)Z

    .line 1779
    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1780
    .local v0, "fileNum":Ljava/lang/Long;
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/cleaner/FileProtector;->isReservedFile(Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1781
    return v1

    .line 1791
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1792
    invoke-virtual {v2, p1, p3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionState(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v2

    .line 1794
    .local v2, "extinctionStatus":Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    sget-object v5, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    if-ne v2, v5, :cond_4

    .line 1796
    return v1

    .line 1806
    :cond_4
    sget-object v5, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->MAYBE_EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    if-ne v2, v5, :cond_5

    .line 1807
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->reservedFileRepairMaybeExtinctLogger:Lcom/sleepycat/je/utilint/RateLimitingLogger;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extinction status is MAYBE_EXTINCT. Did not repair one or more reserved files. lsn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1812
    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1807
    invoke-static {v1, v5, p0, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Lcom/sleepycat/je/utilint/RateLimitingLogger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Object;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1813
    const/4 v1, 0x0

    return v1

    .line 1816
    :cond_5
    sget-object v5, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->NOT_EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    if-ne v2, v5, :cond_6

    .line 1818
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/Cleaner;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    invoke-virtual {v5, v0}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->reactivateReservedFile(Ljava/lang/Long;)V

    .line 1820
    return v1

    .line 1816
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1761
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    .local v2, "index":I
    :cond_7
    :goto_0
    nop

    .line 1764
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1761
    return v1

    .line 1764
    .end local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v2    # "index":I
    .end local v3    # "lsn":J
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    throw v0
.end method

.method public requestShutdown()V
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 637
    .local v3, "thread":Lcom/sleepycat/je/cleaner/FileProcessor;
    if-nez v3, :cond_0

    .line 638
    goto :goto_1

    .line 640
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/FileProcessor;->requestShutdown()V

    .line 636
    .end local v3    # "thread":Lcom/sleepycat/je/cleaner/FileProcessor;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 642
    :cond_1
    return-void
.end method

.method public runOrPause(Z)V
    .locals 4
    .param p1, "run"    # Z

    .line 588
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isNoLocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 593
    .local v3, "processor":Lcom/sleepycat/je/cleaner/FileProcessor;
    if-nez v3, :cond_1

    .line 594
    goto :goto_1

    .line 596
    :cond_1
    if-eqz p1, :cond_2

    .line 597
    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/FileProcessor;->activateOnWakeup()V

    .line 599
    :cond_2
    invoke-virtual {v3, p1}, Lcom/sleepycat/je/cleaner/FileProcessor;->runOrPause(Z)V

    .line 592
    .end local v3    # "processor":Lcom/sleepycat/je/cleaner/FileProcessor;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    :cond_3
    return-void
.end method

.method setFileChosenHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 577
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileChosenHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 578
    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 645
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 646
    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 647
    goto :goto_1

    .line 649
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/FileProcessor;->shutdown()V

    .line 650
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 645
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public updateFilesAtCheckpointEnd(Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;)V
    .locals 2
    .param p1, "info"    # Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;

    .line 1288
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->fileSelector:Lcom/sleepycat/je/cleaner/FileSelector;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1289
    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/je/cleaner/FileSelector;->updateFilesAtCheckpointEnd(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;)Ljava/util/Map;

    move-result-object v0

    .line 1295
    .local v0, "reservedFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;>;"
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->profile:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->reserveFiles(Ljava/util/Map;)V

    .line 1298
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/Cleaner;->manageDiskUsage()V

    .line 1304
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/Cleaner;->expirationProfile:Lcom/sleepycat/je/cleaner/ExpirationProfile;

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/ExpirationProfile;->processCompletedTrackers()V

    .line 1305
    return-void
.end method

.method public wakeupActivate()V
    .locals 4

    .line 626
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->threads:[Lcom/sleepycat/je/cleaner/FileProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 627
    .local v3, "thread":Lcom/sleepycat/je/cleaner/FileProcessor;
    if-nez v3, :cond_0

    .line 628
    goto :goto_1

    .line 630
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/FileProcessor;->activateOnWakeup()V

    .line 631
    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/FileProcessor;->wakeup()V

    .line 626
    .end local v3    # "thread":Lcom/sleepycat/je/cleaner/FileProcessor;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    :cond_1
    return-void
.end method

.method public wakeupAfterWrite(I)V
    .locals 4
    .param p1, "writeSize"    # I

    .line 610
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->bytesWrittenSinceActivation:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/Cleaner;->cleanerBytesInterval:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/Cleaner;->bytesWrittenSinceActivation:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 614
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/Cleaner;->wakeupActivate()V

    .line 616
    :cond_0
    return-void
.end method
