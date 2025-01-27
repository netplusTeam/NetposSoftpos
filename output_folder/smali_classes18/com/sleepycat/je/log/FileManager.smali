.class public Lcom/sleepycat/je/log/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/FileManager$DefaultRandomAccessFile;,
        Lcom/sleepycat/je/log/FileManager$FileFactory;,
        Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;,
        Lcom/sleepycat/je/log/FileManager$FileCache;,
        Lcom/sleepycat/je/log/FileManager$FileMode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADJACENT_TRACK_SEEK_DELTA:J = 0x100000L

.field public static final BAD_SUFFIX:Ljava/lang/String; = ".bad"

.field public static final BUP_SUFFIX:Ljava/lang/String; = ".bup"

.field private static final DEBUG:Z = false

.field public static final DEL_SUFFIX:Ljava/lang/String; = ".del"

.field static final DEL_SUFFIXES:[Ljava/lang/String;

.field private static final JE_AND_DEL_SUFFIXES:[Ljava/lang/String;

.field public static final JE_SUFFIX:Ljava/lang/String; = ".jdb"

.field static final JE_SUFFIXES:[Ljava/lang/String;

.field private static final LOCK_FILE:Ljava/lang/String; = "je.lck"

.field private static final LOGWRITE_EXCEPTION_MAX:I = 0x64

.field public static final LOGWRITE_EXCEPTION_TESTING:Z

.field public static N_BAD_WRITES:J = 0x0L

.field private static RRET_PROPERTY_NAME:Ljava/lang/String; = null

.field public static STOP_ON_WRITE_COUNT:J = 0x0L

.field public static THROW_ON_WRITE:Z = false

.field public static final TMP_SUFFIX:Ljava/lang/String; = ".tmp"

.field public static WRITE_COUNT:J

.field private static fileComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static fileFactory:Lcom/sleepycat/je/log/FileManager$FileFactory;

.field private static stringComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public VERIFY_CHECKSUMS:Z

.field private channel:Ljava/nio/channels/FileChannel;

.field private volatile currentFileNum:J

.field private final dbEnvDataDirs:[Ljava/io/File;

.field private final dbEnvHome:Ljava/io/File;

.field private final endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private envLock:Ljava/nio/channels/FileLock;

.field private exclLock:Ljava/nio/channels/FileLock;

.field final fSync95Ms:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

.field final fSync99Ms:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

.field final fSyncAvgMs:Lcom/sleepycat/je/utilint/LongAvgStat;

.field final fSyncMaxMs:Lcom/sleepycat/je/utilint/LongMaxZeroStat;

.field private final fSyncTimeLimit:I

.field private final fdd:Lcom/sleepycat/je/log/FileDeletionDetector;

.field private final fileCache:Lcom/sleepycat/je/log/FileManager$FileCache;

.field private fileCacheWarmer:Lcom/sleepycat/je/log/FileCacheWarmer;

.field private final fileUpdateMutex:Ljava/lang/Object;

.field private forceNewFile:Z

.field private includeDeletedFiles:Z

.field lastFileNumberTouched:J

.field lastFileTouchedOffset:J

.field private volatile lastUsedLsn:J

.field private lockFile:Ljava/io/RandomAccessFile;

.field private logWriteExceptionCounter:I

.field private logWriteExceptionRandom:Ljava/util/Random;

.field private logWriteExceptionThrown:Z

.field private final maxFileSize:J

.field final nBytesReadFromWriteQueue:Lcom/sleepycat/je/utilint/LongStat;

.field final nBytesWrittenFromWriteQueue:Lcom/sleepycat/je/utilint/LongStat;

.field private final nDataDirs:I

.field final nFileOpens:Lcom/sleepycat/je/utilint/IntStat;

.field final nLogFSyncs:Lcom/sleepycat/je/utilint/LongStat;

.field final nOpenFiles:Lcom/sleepycat/je/utilint/IntStat;

.field final nRandomReadBytes:Lcom/sleepycat/je/utilint/LongStat;

.field final nRandomReads:Lcom/sleepycat/je/utilint/LongStat;

.field final nRandomWriteBytes:Lcom/sleepycat/je/utilint/LongStat;

.field final nRandomWrites:Lcom/sleepycat/je/utilint/LongStat;

.field final nReadsFromWriteQueue:Lcom/sleepycat/je/utilint/LongStat;

.field final nSequentialReadBytes:Lcom/sleepycat/je/utilint/LongStat;

.field final nSequentialReads:Lcom/sleepycat/je/utilint/LongStat;

.field final nSequentialWriteBytes:Lcom/sleepycat/je/utilint/LongStat;

.field final nSequentialWrites:Lcom/sleepycat/je/utilint/LongStat;

.field final nWriteQueueOverflow:Lcom/sleepycat/je/utilint/LongStat;

.field final nWriteQueueOverflowFailures:Lcom/sleepycat/je/utilint/LongStat;

.field final nWritesFromWriteQueue:Lcom/sleepycat/je/utilint/LongStat;

.field private volatile nextAvailableLsn:J

.field private final perFileLastUsedLsn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final readOnly:Z

.field final stats:Lcom/sleepycat/je/utilint/StatGroup;

.field private syncAtFileEnd:Z

.field private final useODSYNC:Z

.field private final useWriteQueue:Z

.field private final writeQueueSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 90
    nop

    .line 122
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sleepycat/je/log/FileManager;->WRITE_COUNT:J

    .line 127
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcom/sleepycat/je/log/FileManager;->STOP_ON_WRITE_COUNT:J

    .line 133
    sput-wide v0, Lcom/sleepycat/je/log/FileManager;->N_BAD_WRITES:J

    .line 139
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sleepycat/je/log/FileManager;->THROW_ON_WRITE:Z

    .line 145
    const-string v1, ".del"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sleepycat/je/log/FileManager;->DEL_SUFFIXES:[Ljava/lang/String;

    .line 146
    const-string v2, ".jdb"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sleepycat/je/log/FileManager;->JE_SUFFIXES:[Ljava/lang/String;

    .line 147
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sleepycat/je/log/FileManager;->JE_AND_DEL_SUFFIXES:[Ljava/lang/String;

    .line 747
    new-instance v1, Lcom/sleepycat/je/log/FileManager$1;

    invoke-direct {v1}, Lcom/sleepycat/je/log/FileManager$1;-><init>()V

    sput-object v1, Lcom/sleepycat/je/log/FileManager;->fileComparator:Ljava/util/Comparator;

    .line 762
    new-instance v1, Lcom/sleepycat/je/log/FileManager$2;

    invoke-direct {v1}, Lcom/sleepycat/je/log/FileManager$2;-><init>()V

    sput-object v1, Lcom/sleepycat/je/log/FileManager;->stringComparator:Ljava/util/Comparator;

    .line 3288
    const-string v1, "je.logwrite.exception.testing"

    sput-object v1, Lcom/sleepycat/je/log/FileManager;->RRET_PROPERTY_NAME:Ljava/lang/String;

    .line 3291
    nop

    .line 3292
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/sleepycat/je/log/FileManager;->LOGWRITE_EXCEPTION_TESTING:Z

    .line 3390
    new-instance v0, Lcom/sleepycat/je/log/FileManager$6;

    invoke-direct {v0}, Lcom/sleepycat/je/log/FileManager$6;-><init>()V

    sput-object v0, Lcom/sleepycat/je/log/FileManager;->fileFactory:Lcom/sleepycat/je/log/FileManager$FileFactory;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/io/File;Z)V
    .locals 16
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "dbEnvHome"    # Ljava/io/File;
    .param p3, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentLockedException;
        }
    .end annotation

    .line 321
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "je.debug.stopOnWriteAction"

    const-string v4, "je.debug.stopOnWriteCount"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/sleepycat/je/log/FileManager;->syncAtFileEnd:Z

    .line 173
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/sleepycat/je/log/FileManager;->includeDeletedFiles:Z

    .line 230
    iput-boolean v6, v1, Lcom/sleepycat/je/log/FileManager;->VERIFY_CHECKSUMS:Z

    .line 245
    const-wide/16 v7, -0x1

    iput-wide v7, v1, Lcom/sleepycat/je/log/FileManager;->lastFileNumberTouched:J

    .line 250
    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/sleepycat/je/log/FileManager;->lastFileTouchedOffset:J

    .line 279
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-object v11, v1, Lcom/sleepycat/je/log/FileManager;->fileUpdateMutex:Ljava/lang/Object;

    .line 3298
    iput v6, v1, Lcom/sleepycat/je/log/FileManager;->logWriteExceptionCounter:I

    .line 3300
    iput-boolean v6, v1, Lcom/sleepycat/je/log/FileManager;->logWriteExceptionThrown:Z

    .line 3302
    const/4 v11, 0x0

    iput-object v11, v1, Lcom/sleepycat/je/log/FileManager;->logWriteExceptionRandom:Ljava/util/Random;

    .line 323
    iput-object v2, v1, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 324
    iput-object v3, v1, Lcom/sleepycat/je/log/FileManager;->dbEnvHome:Ljava/io/File;

    .line 325
    move/from16 v12, p3

    iput-boolean v12, v1, Lcom/sleepycat/je/log/FileManager;->readOnly:Z

    .line 327
    const/4 v13, 0x0

    .line 329
    .local v13, "success":Z
    new-instance v14, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v15, "FileManager"

    const-string v5, "FileManager statistics"

    invoke-direct {v14, v15, v5}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v14, v1, Lcom/sleepycat/je/log/FileManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 331
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nRandomReads:Lcom/sleepycat/je/utilint/LongStat;

    .line 332
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nRandomWrites:Lcom/sleepycat/je/utilint/LongStat;

    .line 333
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nSequentialReads:Lcom/sleepycat/je/utilint/LongStat;

    .line 334
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nSequentialWrites:Lcom/sleepycat/je/utilint/LongStat;

    .line 335
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_READ_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nRandomReadBytes:Lcom/sleepycat/je/utilint/LongStat;

    .line 336
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_RANDOM_WRITE_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nRandomWriteBytes:Lcom/sleepycat/je/utilint/LongStat;

    .line 337
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_READ_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nSequentialReadBytes:Lcom/sleepycat/je/utilint/LongStat;

    .line 339
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_SEQUENTIAL_WRITE_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nSequentialWriteBytes:Lcom/sleepycat/je/utilint/LongStat;

    .line 341
    new-instance v5, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FILE_OPENS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nFileOpens:Lcom/sleepycat/je/utilint/IntStat;

    .line 342
    new-instance v5, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_OPEN_FILES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nOpenFiles:Lcom/sleepycat/je/utilint/IntStat;

    .line 343
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_BYTES_READ_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nBytesReadFromWriteQueue:Lcom/sleepycat/je/utilint/LongStat;

    .line 345
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_BYTES_WRITTEN_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nBytesWrittenFromWriteQueue:Lcom/sleepycat/je/utilint/LongStat;

    .line 347
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_READS_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nReadsFromWriteQueue:Lcom/sleepycat/je/utilint/LongStat;

    .line 349
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_WRITES_FROM_WRITEQUEUE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nWritesFromWriteQueue:Lcom/sleepycat/je/utilint/LongStat;

    .line 351
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_WRITEQUEUE_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nWriteQueueOverflow:Lcom/sleepycat/je/utilint/LongStat;

    .line 352
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_WRITEQUEUE_OVERFLOW_FAILURES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nWriteQueueOverflowFailures:Lcom/sleepycat/je/utilint/LongStat;

    .line 354
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_LOG_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->nLogFSyncs:Lcom/sleepycat/je/utilint/LongStat;

    .line 355
    new-instance v5, Lcom/sleepycat/je/utilint/LongAvgStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_AVG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v15}, Lcom/sleepycat/je/utilint/LongAvgStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->fSyncAvgMs:Lcom/sleepycat/je/utilint/LongAvgStat;

    .line 356
    new-instance v5, Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    sget-object v15, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_95_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const v7, 0x3f733333    # 0.95f

    invoke-direct {v5, v14, v15, v7}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;F)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->fSync95Ms:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    .line 358
    new-instance v5, Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    sget-object v7, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_99_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const v8, 0x3f7d70a4    # 0.99f

    invoke-direct {v5, v14, v7, v8}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;F)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->fSync99Ms:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    .line 360
    new-instance v5, Lcom/sleepycat/je/utilint/LongMaxZeroStat;

    sget-object v7, Lcom/sleepycat/je/log/LogStatDefinition;->FILEMGR_FSYNC_MAX_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v14, v7}, Lcom/sleepycat/je/utilint/LongMaxZeroStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, v1, Lcom/sleepycat/je/log/FileManager;->fSyncMaxMs:Lcom/sleepycat/je/utilint/LongMaxZeroStat;

    .line 364
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v5

    .line 365
    .local v5, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v7, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FILE_MAX:Lcom/sleepycat/je/config/LongConfigParam;

    .line 366
    invoke-virtual {v5, v7}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/sleepycat/je/log/FileManager;->maxFileSize:J

    .line 368
    sget-object v7, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_USE_WRITE_QUEUE:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v5, v7}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v7

    iput-boolean v7, v1, Lcom/sleepycat/je/log/FileManager;->useWriteQueue:Z

    .line 371
    sget-object v7, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_WRITE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v5, v7}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v7

    iput v7, v1, Lcom/sleepycat/je/log/FileManager;->writeQueueSize:I

    .line 374
    sget-object v7, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_USE_ODSYNC:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v5, v7}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v7

    iput-boolean v7, v1, Lcom/sleepycat/je/log/FileManager;->useODSYNC:Z

    .line 377
    sget-object v7, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_VERIFY_CHECKSUMS:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v5, v7}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v7

    iput-boolean v7, v1, Lcom/sleepycat/je/log/FileManager;->VERIFY_CHECKSUMS:Z

    .line 380
    sget-object v7, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FSYNC_TIME_LIMIT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v5, v7}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v7

    iput v7, v1, Lcom/sleepycat/je/log/FileManager;->fSyncTimeLimit:I

    .line 383
    sget-object v7, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_N_DATA_DIRECTORIES:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v5, v7}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v7

    iput v7, v1, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    .line 386
    if-eqz v7, :cond_0

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/FileManager;->gatherDataDirs()[Ljava/io/File;

    move-result-object v7

    iput-object v7, v1, Lcom/sleepycat/je/log/FileManager;->dbEnvDataDirs:[Ljava/io/File;

    goto :goto_0

    .line 389
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/log/FileManager;->checkNoDataDirs()V

    .line 390
    iput-object v11, v1, Lcom/sleepycat/je/log/FileManager;->dbEnvDataDirs:[Ljava/io/File;

    .line 393
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v7

    if-nez v7, :cond_4

    .line 394
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isArbiter()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v12

    .line 403
    .local v7, "isReadOnly":Z
    :goto_1
    invoke-virtual {v1, v7, v6}, Lcom/sleepycat/je/log/FileManager;->lockEnvironment(ZZ)Z

    move-result v8

    if-nez v8, :cond_4

    .line 404
    new-instance v0, Lcom/sleepycat/je/EnvironmentLockedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The environment cannot be locked for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v7, :cond_2

    const-string/jumbo v6, "shared"

    goto :goto_2

    :cond_2
    const-string/jumbo v6, "single writer"

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " access."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/sleepycat/je/EnvironmentLockedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .end local v13    # "success":Z
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "dbEnvHome":Ljava/io/File;
    .end local p3    # "readOnly":Z
    throw v0

    .line 395
    .end local v7    # "isReadOnly":Z
    .restart local v13    # "success":Z
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "dbEnvHome":Ljava/io/File;
    .restart local p3    # "readOnly":Z
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Environment home "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " doesn\'t exist"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v13    # "success":Z
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "dbEnvHome":Ljava/io/File;
    .end local p3    # "readOnly":Z
    throw v0

    .line 413
    .restart local v13    # "success":Z
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "dbEnvHome":Ljava/io/File;
    .restart local p3    # "readOnly":Z
    :cond_4
    new-instance v7, Lcom/sleepycat/je/log/FileManager$FileCache;

    invoke-direct {v7, v5}, Lcom/sleepycat/je/log/FileManager$FileCache;-><init>(Lcom/sleepycat/je/dbi/DbConfigManager;)V

    iput-object v7, v1, Lcom/sleepycat/je/log/FileManager;->fileCache:Lcom/sleepycat/je/log/FileManager$FileCache;

    .line 416
    iput-wide v9, v1, Lcom/sleepycat/je/log/FileManager;->currentFileNum:J

    .line 417
    iget-wide v7, v1, Lcom/sleepycat/je/log/FileManager;->currentFileNum:J

    .line 418
    invoke-static {}, Lcom/sleepycat/je/log/FileManager;->firstLogEntryOffset()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/sleepycat/je/log/FileManager;->nextAvailableLsn:J

    .line 419
    const-wide/16 v7, -0x1

    iput-wide v7, v1, Lcom/sleepycat/je/log/FileManager;->lastUsedLsn:J

    .line 420
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 421
    invoke-static {v7}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, v1, Lcom/sleepycat/je/log/FileManager;->perFileLastUsedLsn:Ljava/util/Map;

    .line 422
    new-instance v7, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    invoke-direct {v7, v1}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;-><init>(Lcom/sleepycat/je/log/FileManager;)V

    iput-object v7, v1, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    .line 423
    iput-boolean v6, v1, Lcom/sleepycat/je/log/FileManager;->forceNewFile:Z

    .line 425
    move-object v7, v4

    .line 426
    .local v7, "stopOnWriteCountName":Ljava/lang/String;
    nop

    .line 427
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    .local v4, "stopOnWriteCountProp":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 430
    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/sleepycat/je/log/FileManager;->STOP_ON_WRITE_COUNT:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    goto :goto_3

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Could not parse: je.debug.stopOnWriteCount"

    invoke-direct {v6, v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v13    # "success":Z
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "dbEnvHome":Ljava/io/File;
    .end local p3    # "readOnly":Z
    throw v6

    .line 437
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v13    # "success":Z
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "dbEnvHome":Ljava/io/File;
    .restart local p3    # "readOnly":Z
    :cond_5
    :goto_3
    move-object v8, v0

    .line 438
    .local v8, "stopOnWriteActionName":Ljava/lang/String;
    nop

    .line 439
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "stopOnWriteActionProp":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 441
    const-string/jumbo v9, "throw"

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_6

    .line 442
    const/4 v6, 0x1

    sput-boolean v6, Lcom/sleepycat/je/log/FileManager;->THROW_ON_WRITE:Z

    goto :goto_4

    .line 443
    :cond_6
    const-string/jumbo v9, "stop"

    .line 444
    invoke-virtual {v0, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_7

    .line 445
    sput-boolean v6, Lcom/sleepycat/je/log/FileManager;->THROW_ON_WRITE:Z

    goto :goto_4

    .line 447
    :cond_7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown value for: je.debug.stopOnWriteAction"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v13    # "success":Z
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "dbEnvHome":Ljava/io/File;
    .end local p3    # "readOnly":Z
    throw v6

    .line 453
    .restart local v13    # "success":Z
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "dbEnvHome":Ljava/io/File;
    .restart local p3    # "readOnly":Z
    :cond_8
    :goto_4
    sget-object v6, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_DETECT_FILE_DELETE:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 455
    .local v6, "logFileDeleteDetect":Ljava/lang/Boolean;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 456
    new-instance v9, Lcom/sleepycat/je/log/FileDeletionDetector;

    iget-object v10, v1, Lcom/sleepycat/je/log/FileManager;->dbEnvDataDirs:[Ljava/io/File;

    invoke-direct {v9, v3, v10, v2}, Lcom/sleepycat/je/log/FileDeletionDetector;-><init>(Ljava/io/File;[Ljava/io/File;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v9, v1, Lcom/sleepycat/je/log/FileManager;->fdd:Lcom/sleepycat/je/log/FileDeletionDetector;

    goto :goto_5

    .line 459
    :cond_9
    iput-object v11, v1, Lcom/sleepycat/je/log/FileManager;->fdd:Lcom/sleepycat/je/log/FileDeletionDetector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    :goto_5
    const/4 v4, 0x1

    .line 464
    .end local v0    # "stopOnWriteActionProp":Ljava/lang/String;
    .end local v5    # "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local v6    # "logFileDeleteDetect":Ljava/lang/Boolean;
    .end local v7    # "stopOnWriteCountName":Ljava/lang/String;
    .end local v8    # "stopOnWriteActionName":Ljava/lang/String;
    .end local v13    # "success":Z
    .local v4, "success":Z
    if-nez v4, :cond_a

    .line 466
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/FileManager;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 472
    :goto_6
    goto :goto_7

    .line 467
    :catch_1
    move-exception v0

    goto :goto_6

    .line 475
    :cond_a
    :goto_7
    return-void

    .line 464
    .end local v4    # "success":Z
    .restart local v13    # "success":Z
    :catchall_0
    move-exception v0

    move-object v4, v0

    if-nez v13, :cond_b

    .line 466
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/FileManager;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 472
    goto :goto_8

    .line 467
    :catch_2
    move-exception v0

    .line 472
    :cond_b
    :goto_8
    throw v4
.end method

.method static synthetic access$1000(Lcom/sleepycat/je/log/FileManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager;

    .line 90
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FileManager;->useWriteQueue:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sleepycat/je/log/FileManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager;

    .line 90
    iget v0, p0, Lcom/sleepycat/je/log/FileManager;->writeQueueSize:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sleepycat/je/log/FileManager;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager;

    .line 90
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sleepycat/je/log/FileManager;Ljava/nio/ByteBuffer;JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/log/FileManager;->verifyChecksums(Ljava/nio/ByteBuffer;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sleepycat/je/log/FileManager;JLcom/sleepycat/je/log/FileManager$FileMode;)Lcom/sleepycat/je/log/FileHandle;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/sleepycat/je/log/FileManager$FileMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/log/FileManager;->makeFileHandle(JLcom/sleepycat/je/log/FileManager$FileMode;)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sleepycat/je/log/FileManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/FileManager;->bumpWriteCount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sleepycat/je/log/FileManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager;

    .line 90
    iget v0, p0, Lcom/sleepycat/je/log/FileManager;->fSyncTimeLimit:I

    return v0
.end method

.method private addFileHandle(Ljava/lang/Long;)Lcom/sleepycat/je/log/FileHandle;
    .locals 6
    .param p1, "fileNum"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1371
    new-instance v0, Lcom/sleepycat/je/log/FileHandle;

    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1372
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/je/log/FileManager;->getFileNumberString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/log/FileHandle;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;JLjava/lang/String;)V

    .line 1373
    .local v0, "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager;->fileCache:Lcom/sleepycat/je/log/FileManager$FileCache;

    invoke-static {v1, p1, v0}, Lcom/sleepycat/je/log/FileManager$FileCache;->access$100(Lcom/sleepycat/je/log/FileManager$FileCache;Ljava/lang/Long;Lcom/sleepycat/je/log/FileHandle;)V

    .line 1374
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->latch()V

    .line 1375
    return-object v0
.end method

.method private bumpWriteCount(Ljava/lang/String;)V
    .locals 6
    .param p1, "debugMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1901
    sget-wide v0, Lcom/sleepycat/je/log/FileManager;->WRITE_COUNT:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/sleepycat/je/log/FileManager;->WRITE_COUNT:J

    sget-wide v2, Lcom/sleepycat/je/log/FileManager;->STOP_ON_WRITE_COUNT:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    sget-wide v4, Lcom/sleepycat/je/log/FileManager;->N_BAD_WRITES:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1903
    sget-boolean v0, Lcom/sleepycat/je/log/FileManager;->THROW_ON_WRITE:Z

    if-nez v0, :cond_0

    .line 1908
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->halt(I)V

    goto :goto_0

    .line 1904
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException generated for testing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/sleepycat/je/log/FileManager;->WRITE_COUNT:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1910
    :cond_1
    :goto_0
    return-void
.end method

.method private checkEnvHomePermissionsMultiEnvDir(Z)Z
    .locals 6
    .param p1, "rdOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2407
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->dbEnvDataDirs:[Ljava/io/File;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2408
    .local v4, "dbEnvDir":Ljava/io/File;
    invoke-direct {p0, v4, p1}, Lcom/sleepycat/je/log/FileManager;->checkEnvHomePermissionsSingleEnvDir(Ljava/io/File;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2409
    return v2

    .line 2407
    .end local v4    # "dbEnvDir":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2413
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkEnvHomePermissionsSingleEnvDir(Ljava/io/File;Z)Z
    .locals 4
    .param p1, "dbEnvHome"    # Ljava/io/File;
    .param p2, "rdOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2387
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2388
    .local v0, "envDirIsReadOnly":Z
    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2394
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Environment directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2396
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not writable, but the Environment was opened for read-write access."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2401
    :cond_1
    :goto_0
    return v0
.end method

.method private checkNoDataDirs()V
    .locals 3

    .line 920
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->dbEnvHome:Ljava/io/File;

    new-instance v1, Lcom/sleepycat/je/log/FileManager$3;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/log/FileManager$3;-><init>(Lcom/sleepycat/je/log/FileManager;)V

    .line 921
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "dataDirNames":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 931
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_N_DATA_DIRECTORIES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 932
    invoke-virtual {v2}, Lcom/sleepycat/je/config/IntConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not set and expected to find no data directories, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data directories instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 937
    :cond_1
    :goto_0
    return-void
.end method

.method private clearFileCache(J)V
    .locals 2
    .param p1, "fileNum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2679
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->fileCache:Lcom/sleepycat/je/log/FileManager$FileCache;

    monitor-enter v0

    .line 2680
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager;->fileCache:Lcom/sleepycat/je/log/FileManager$FileCache;

    invoke-static {v1, p1, p2}, Lcom/sleepycat/je/log/FileManager$FileCache;->access$900(Lcom/sleepycat/je/log/FileManager$FileCache;J)V

    .line 2681
    monitor-exit v0

    .line 2682
    return-void

    .line 2681
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private closeFileInErrorCase(Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p1, "file"    # Ljava/io/RandomAccessFile;

    .line 1529
    if-eqz p1, :cond_0

    .line 1530
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1532
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1533
    :cond_0
    :goto_0
    nop

    .line 1534
    :goto_1
    return-void
.end method

.method public static firstLogEntryOffset()I
    .locals 1

    .line 2634
    invoke-static {}, Lcom/sleepycat/je/log/FileHeader;->entrySize()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    return v0
.end method

.method private generateLogWriteException(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V
    .locals 14
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "data"    # Ljava/nio/ByteBuffer;
    .param p3, "destOffset"    # J
    .param p5, "fileNum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3310
    move-object v8, p0

    iget-boolean v0, v8, Lcom/sleepycat/je/log/FileManager;->logWriteExceptionThrown:Z

    if-eqz v0, :cond_0

    .line 3311
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Write after LogWriteException"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3314
    :cond_0
    iget v0, v8, Lcom/sleepycat/je/log/FileManager;->logWriteExceptionCounter:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    iput v0, v8, Lcom/sleepycat/je/log/FileManager;->logWriteExceptionCounter:I

    .line 3315
    const/4 v1, 0x0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_1

    .line 3316
    iput v1, v8, Lcom/sleepycat/je/log/FileManager;->logWriteExceptionCounter:I

    .line 3318
    :cond_1
    iget-object v0, v8, Lcom/sleepycat/je/log/FileManager;->logWriteExceptionRandom:Ljava/util/Random;

    if-nez v0, :cond_2

    .line 3319
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    iput-object v0, v8, Lcom/sleepycat/je/log/FileManager;->logWriteExceptionRandom:Ljava/util/Random;

    .line 3321
    :cond_2
    iget v0, v8, Lcom/sleepycat/je/log/FileManager;->logWriteExceptionCounter:I

    iget-object v3, v8, Lcom/sleepycat/je/log/FileManager;->logWriteExceptionRandom:Ljava/util/Random;

    .line 3322
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 3323
    iget-object v0, v8, Lcom/sleepycat/je/log/FileManager;->logWriteExceptionRandom:Ljava/util/Random;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 3324
    .local v10, "len":I
    if-lez v10, :cond_3

    .line 3325
    new-array v11, v10, [B

    .line 3326
    .local v11, "a":[B
    move-object/from16 v12, p2

    invoke-virtual {v12, v11, v1, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3327
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 3328
    .local v13, "buf":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v13

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/log/FileManager;->writeToFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)I

    goto :goto_0

    .line 3324
    .end local v11    # "a":[B
    .end local v13    # "buf":Ljava/nio/ByteBuffer;
    :cond_3
    move-object/from16 v12, p2

    .line 3331
    :goto_0
    iput-boolean v9, v8, Lcom/sleepycat/je/log/FileManager;->logWriteExceptionThrown:Z

    .line 3332
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Randomly generated for testing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3334
    .end local v10    # "len":I
    :cond_4
    move-object/from16 v12, p2

    return-void
.end method

.method private getDataDir(J)Ljava/io/File;
    .locals 4
    .param p1, "fileNum"    # J

    .line 1020
    iget v0, p0, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->dbEnvHome:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager;->dbEnvDataDirs:[Ljava/io/File;

    int-to-long v2, v0

    rem-long v2, p1, v2

    long-to-int v0, v2

    aget-object v0, v1, v0

    :goto_0
    return-object v0
.end method

.method private getDataDirIndexFromName(Ljava/lang/String;)I
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 697
    iget v0, p0, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    if-nez v0, :cond_0

    .line 698
    const/4 v0, -0x1

    return v0

    .line 701
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 702
    .local v0, "dataDirEnd":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, "dataDir":Ljava/lang/String;
    nop

    .line 704
    const-string v2, "data"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 703
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public static getFileName(J)Ljava/lang/String;
    .locals 1
    .param p0, "fileNum"    # J

    .line 1072
    const-string v0, ".jdb"

    invoke-static {p0, p1, v0}, Lcom/sleepycat/je/log/FileManager;->getFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileName(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileNum"    # J
    .param p2, "suffix"    # Ljava/lang/String;

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sleepycat/je/log/FileManager;->getFileNumberString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileNum(Z)Ljava/lang/Long;
    .locals 3
    .param p1, "first"    # Z

    .line 679
    sget-object v0, Lcom/sleepycat/je/log/FileManager;->JE_SUFFIXES:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/log/FileManager;->listFileNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 681
    const/4 v1, 0x0

    return-object v1

    .line 683
    :cond_0
    const/4 v1, 0x0

    .line 684
    .local v1, "index":I
    if-nez p1, :cond_1

    .line 685
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 687
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/log/FileManager;->getNumFromName(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method private static getFileNumberString(J)Ljava/lang/String;
    .locals 2
    .param p0, "fileNum"    # J

    .line 1080
    invoke-static {p0, p1}, Lcom/sleepycat/je/utilint/HexFormatter;->formatLong(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private listFileNamesInternal(Lcom/sleepycat/je/log/JEFileFilter;)[Ljava/lang/String;
    .locals 1
    .param p1, "fileFilter"    # Lcom/sleepycat/je/log/JEFileFilter;

    .line 867
    iget v0, p0, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    if-nez v0, :cond_0

    .line 868
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/FileManager;->listFileNamesInternalSingleDir(Lcom/sleepycat/je/log/JEFileFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 870
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/FileManager;->listFileNamesInternalMultiDirs(Lcom/sleepycat/je/log/JEFileFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private listFileNamesInternalMultiDirs(Lcom/sleepycat/je/log/JEFileFilter;)[Ljava/lang/String;
    .locals 14
    .param p1, "filter"    # Lcom/sleepycat/je/log/JEFileFilter;

    .line 885
    iget v0, p0, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    new-array v0, v0, [[Ljava/lang/String;

    .line 886
    .local v0, "files":[[Ljava/lang/String;
    const/4 v1, 0x0

    .line 887
    .local v1, "nTotalFiles":I
    const/4 v2, 0x0

    .line 888
    .local v2, "i":I
    iget-object v3, p0, Lcom/sleepycat/je/log/FileManager;->dbEnvDataDirs:[Ljava/io/File;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 889
    .local v7, "envDir":Ljava/io/File;
    invoke-virtual {v7, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v2

    .line 891
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    .line 892
    .local v8, "envDirName":Ljava/lang/String;
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    .line 893
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 895
    .local v9, "dataDirName":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    aget-object v11, v0, v2

    array-length v11, v11

    if-ge v10, v11, :cond_0

    .line 896
    aget-object v11, v0, v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v0, v2

    aget-object v13, v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    .line 895
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 899
    .end local v10    # "j":I
    :cond_0
    aget-object v10, v0, v2

    array-length v10, v10

    add-int/2addr v1, v10

    .line 900
    nop

    .end local v7    # "envDir":Ljava/io/File;
    .end local v8    # "envDirName":Ljava/lang/String;
    .end local v9    # "dataDirName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 888
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 903
    :cond_1
    if-nez v1, :cond_2

    .line 904
    new-array v3, v5, [Ljava/lang/String;

    return-object v3

    .line 907
    :cond_2
    new-array v3, v1, [Ljava/lang/String;

    .line 908
    .local v3, "ret":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 909
    array-length v4, v0

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_4

    aget-object v7, v0, v6

    .line 910
    .local v7, "envFiles":[Ljava/lang/String;
    array-length v8, v7

    move v9, v5

    :goto_3
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 911
    .local v10, "envFile":Ljava/lang/String;
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "i":I
    .local v11, "i":I
    aput-object v10, v3, v2

    .line 910
    .end local v10    # "envFile":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move v2, v11

    goto :goto_3

    .line 909
    .end local v7    # "envFiles":[Ljava/lang/String;
    .end local v11    # "i":I
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 915
    :cond_4
    sget-object v4, Lcom/sleepycat/je/log/FileManager;->stringComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 916
    return-object v3
.end method

.method private listFileNamesInternalSingleDir(Lcom/sleepycat/je/log/JEFileFilter;)[Ljava/lang/String;
    .locals 2
    .param p1, "fileFilter"    # Lcom/sleepycat/je/log/JEFileFilter;

    .line 875
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->dbEnvHome:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, "fileNames":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 877
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0

    .line 879
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 881
    :goto_0
    return-object v0
.end method

.method public static listFiles(Ljava/io/File;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 13
    .param p0, "envDirFile"    # Ljava/io/File;
    .param p1, "suffixes"    # [Ljava/lang/String;
    .param p2, "envMultiSubDir"    # Z

    .line 785
    new-instance v0, Lcom/sleepycat/je/log/JEFileFilter;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/log/JEFileFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "names":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v1, "subFileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 789
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 790
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 791
    new-instance v7, Lcom/sleepycat/je/log/JEFileFilter;

    invoke-direct {v7, p1}, Lcom/sleepycat/je/log/JEFileFilter;-><init>([Ljava/lang/String;)V

    .line 792
    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    .line 793
    .local v7, "subFiles":[Ljava/io/File;
    array-length v8, v7

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v7, v9

    .line 794
    .local v10, "subFile":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 795
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 794
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    .end local v10    # "subFile":Ljava/io/File;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 789
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "subFiles":[Ljava/io/File;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 800
    :cond_1
    array-length v3, v0

    .line 801
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 802
    .local v3, "totalFileNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 803
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 804
    aget-object v5, v0, v4

    aput-object v5, v3, v4

    goto :goto_3

    .line 806
    :cond_2
    array-length v5, v0

    sub-int v5, v4, v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 802
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 809
    .end local v4    # "i":I
    :cond_3
    move-object v0, v3

    .line 812
    .end local v3    # "totalFileNames":[Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    .line 813
    sget-object v2, Lcom/sleepycat/je/log/FileManager;->stringComparator:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_4

    .line 815
    :cond_5
    new-array v0, v2, [Ljava/lang/String;

    .line 818
    :goto_4
    return-object v0
.end method

.method private makeFileHandle(JLcom/sleepycat/je/log/FileManager$FileMode;)Lcom/sleepycat/je/log/FileHandle;
    .locals 3
    .param p1, "fileNum"    # J
    .param p3, "mode"    # Lcom/sleepycat/je/log/FileManager$FileMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 1392
    new-instance v0, Lcom/sleepycat/je/log/FileHandle;

    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1393
    invoke-static {p1, p2}, Lcom/sleepycat/je/log/FileManager;->getFileNumberString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/sleepycat/je/log/FileHandle;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;JLjava/lang/String;)V

    .line 1394
    .local v0, "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/sleepycat/je/log/FileManager;->openFileHandle(Lcom/sleepycat/je/log/FileHandle;Lcom/sleepycat/je/log/FileManager$FileMode;Lcom/sleepycat/je/log/FileHandle;)V

    .line 1395
    return-object v0
.end method

.method private openFileHandle(Lcom/sleepycat/je/log/FileHandle;Lcom/sleepycat/je/log/FileManager$FileMode;Lcom/sleepycat/je/log/FileHandle;)V
    .locals 22
    .param p1, "fileHandle"    # Lcom/sleepycat/je/log/FileHandle;
    .param p2, "mode"    # Lcom/sleepycat/je/log/FileManager$FileMode;
    .param p3, "existingHandle"    # Lcom/sleepycat/je/log/FileHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 1410
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v9, "Couldn\'t open file "

    iget-object v0, v7, Lcom/sleepycat/je/log/FileManager;->nFileOpens:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 1411
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/log/FileHandle;->getFileNum()J

    move-result-wide v10

    .line 1412
    .local v10, "fileNum":J
    invoke-virtual {v7, v10, v11}, Lcom/sleepycat/je/log/FileManager;->getFullFileNames(J)[Ljava/lang/String;

    move-result-object v12

    .line 1413
    .local v12, "fileNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1414
    .local v1, "newFile":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 1415
    .local v2, "fileName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1423
    .local v13, "success":Z
    const/4 v0, 0x0

    .line 1424
    .local v0, "FNFE":Ljava/io/FileNotFoundException;
    :try_start_0
    array-length v3, v12
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v4, 0x0

    move-object v14, v0

    .end local v0    # "FNFE":Ljava/io/FileNotFoundException;
    .local v14, "FNFE":Ljava/io/FileNotFoundException;
    :goto_0
    if-ge v4, v3, :cond_1

    :try_start_1
    aget-object v0, v12, v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    .line 1425
    .local v5, "fileName2":Ljava/lang/String;
    move-object v2, v5

    .line 1427
    :try_start_2
    sget-object v0, Lcom/sleepycat/je/log/FileManager;->fileFactory:Lcom/sleepycat/je/log/FileManager$FileFactory;

    iget-object v6, v7, Lcom/sleepycat/je/log/FileManager;->dbEnvHome:Ljava/io/File;

    .line 1428
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/log/FileManager$FileMode;->getModeValue()Ljava/lang/String;

    move-result-object v15

    .line 1427
    invoke-interface {v0, v6, v2, v15}, Lcom/sleepycat/je/log/FileManager$FileFactory;->createFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 1429
    move-object v15, v1

    move-object v5, v2

    goto :goto_1

    .line 1430
    :catch_0
    move-exception v0

    .line 1432
    .local v0, "e":Ljava/io/FileNotFoundException;
    if-nez v14, :cond_0

    .line 1433
    move-object v6, v0

    move-object v14, v6

    .line 1424
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fileName2":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1518
    .end local v14    # "FNFE":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    goto/16 :goto_7

    .line 1508
    :catch_1
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    goto/16 :goto_4

    .line 1504
    :catch_2
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    goto/16 :goto_5

    .line 1501
    :catch_3
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    goto/16 :goto_6

    .line 1424
    .restart local v14    # "FNFE":Ljava/io/FileNotFoundException;
    :cond_1
    move-object v15, v1

    move-object v5, v2

    .line 1442
    .end local v1    # "newFile":Ljava/io/RandomAccessFile;
    .end local v2    # "fileName":Ljava/lang/String;
    .local v5, "fileName":Ljava/lang/String;
    .local v15, "newFile":Ljava/io/RandomAccessFile;
    :goto_1
    if-nez v15, :cond_3

    .line 1443
    if-nez v14, :cond_2

    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v5    # "fileName":Ljava/lang/String;
    .end local v10    # "fileNum":J
    .end local v12    # "fileNames":[Ljava/lang/String;
    .end local v13    # "success":Z
    .end local v15    # "newFile":Ljava/io/RandomAccessFile;
    .end local p1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p2    # "mode":Lcom/sleepycat/je/log/FileManager$FileMode;
    .end local p3    # "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    throw v0

    .line 1444
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v10    # "fileNum":J
    .restart local v12    # "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    .restart local v15    # "newFile":Ljava/io/RandomAccessFile;
    .restart local p1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p2    # "mode":Lcom/sleepycat/je/log/FileManager$FileMode;
    .restart local p3    # "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    :cond_2
    nop

    .end local v5    # "fileName":Ljava/lang/String;
    .end local v10    # "fileNum":J
    .end local v12    # "fileNames":[Ljava/lang/String;
    .end local v13    # "success":Z
    .end local v15    # "newFile":Ljava/io/RandomAccessFile;
    .end local p1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p2    # "mode":Lcom/sleepycat/je/log/FileManager$FileMode;
    .end local p3    # "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    throw v14

    .line 1452
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v10    # "fileNum":J
    .restart local v12    # "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    .restart local v15    # "newFile":Ljava/io/RandomAccessFile;
    .restart local p1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p2    # "mode":Lcom/sleepycat/je/log/FileManager$FileMode;
    .restart local p3    # "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    :cond_3
    if-eqz p3, :cond_5

    .line 1453
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/log/FileHandle;->getLogVersion()I

    move-result v0

    .line 1454
    .local v0, "logVersion":I
    if-lez v0, :cond_5

    .line 1455
    invoke-virtual {v8, v15, v0}, Lcom/sleepycat/je/log/FileHandle;->init(Ljava/io/RandomAccessFile;I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1456
    const/4 v1, 0x1

    .line 1518
    .end local v13    # "success":Z
    .local v1, "success":Z
    if-nez v1, :cond_4

    .line 1519
    invoke-direct {v7, v15}, Lcom/sleepycat/je/log/FileManager;->closeFileInErrorCase(Ljava/io/RandomAccessFile;)V

    .line 1457
    :cond_4
    return-void

    .line 1518
    .end local v0    # "logVersion":I
    .end local v1    # "success":Z
    .end local v14    # "FNFE":Ljava/io/FileNotFoundException;
    .restart local v13    # "success":Z
    :catchall_1
    move-exception v0

    move-object v2, v5

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v1, v15

    goto/16 :goto_7

    .line 1508
    :catch_4
    move-exception v0

    move-object v2, v5

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v1, v15

    goto/16 :goto_4

    .line 1504
    :catch_5
    move-exception v0

    move-object v2, v5

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v1, v15

    goto/16 :goto_5

    .line 1501
    :catch_6
    move-exception v0

    move-object v2, v5

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v1, v15

    goto/16 :goto_6

    .line 1461
    .restart local v14    # "FNFE":Ljava/io/FileNotFoundException;
    :cond_5
    const/16 v0, 0x11

    .line 1463
    .restart local v0    # "logVersion":I
    :try_start_4
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    .line 1470
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/log/FileManager$FileMode;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1472
    iget-object v1, v7, Lcom/sleepycat/je/log/FileManager;->perFileLastUsedLsn:Ljava/util/Map;

    const-wide/16 v16, 0x1

    sub-long v18, v10, v16

    .line 1473
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1472
    invoke-static {v1}, Lcom/sleepycat/je/utilint/DbLsn;->longToLsn(Ljava/lang/Long;)J

    move-result-wide v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-wide/from16 v18, v1

    .line 1474
    .local v18, "lastLsn":J
    const-wide/16 v1, 0x0

    .line 1475
    .local v1, "headerPrevOffset":J
    const-wide/16 v20, -0x1

    cmp-long v6, v18, v20

    if-eqz v6, :cond_6

    .line 1476
    :try_start_5
    invoke-static/range {v18 .. v19}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v20
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide/from16 v1, v20

    .line 1478
    :cond_6
    cmp-long v3, v1, v3

    if-nez v3, :cond_8

    cmp-long v3, v10, v16

    if-lez v3, :cond_8

    :try_start_6
    iget-boolean v3, v7, Lcom/sleepycat/je/log/FileManager;->syncAtFileEnd:Z

    if-nez v3, :cond_7

    move-object/from16 v16, v12

    move/from16 v17, v13

    goto/16 :goto_2

    .line 1482
    :cond_7
    iget-object v3, v7, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Zero prevOffset fileNum=0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1485
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lastLsn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1486
    invoke-static/range {v18 .. v19}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " perFileLastUsedLsn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v7, Lcom/sleepycat/je/log/FileManager;->perFileLastUsedLsn:Ljava/util/Map;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " fileLen="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1488
    move-object/from16 v16, v12

    move/from16 v17, v13

    .end local v12    # "fileNames":[Ljava/lang/String;
    .end local v13    # "success":Z
    .local v16, "fileNames":[Ljava/lang/String;
    .local v17, "success":Z
    :try_start_7
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1483
    invoke-static {v3, v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local v5    # "fileName":Ljava/lang/String;
    .end local v10    # "fileNum":J
    .end local v15    # "newFile":Ljava/io/RandomAccessFile;
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .end local p1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p2    # "mode":Lcom/sleepycat/je/log/FileManager$FileMode;
    .end local p3    # "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    throw v3
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1518
    .end local v0    # "logVersion":I
    .end local v1    # "headerPrevOffset":J
    .end local v14    # "FNFE":Ljava/io/FileNotFoundException;
    .end local v18    # "lastLsn":J
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v10    # "fileNum":J
    .restart local v15    # "newFile":Ljava/io/RandomAccessFile;
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    .restart local p1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p2    # "mode":Lcom/sleepycat/je/log/FileManager$FileMode;
    .restart local p3    # "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    :catchall_2
    move-exception v0

    move-object v2, v5

    move-object v1, v15

    goto/16 :goto_7

    .line 1508
    :catch_7
    move-exception v0

    move-object v2, v5

    move-object v1, v15

    goto/16 :goto_4

    .line 1504
    :catch_8
    move-exception v0

    move-object v2, v5

    move-object v1, v15

    goto/16 :goto_5

    .line 1501
    :catch_9
    move-exception v0

    move-object v2, v5

    move-object v1, v15

    goto/16 :goto_6

    .line 1518
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .restart local v12    # "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    :catchall_3
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v2, v5

    move-object v1, v15

    .end local v12    # "fileNames":[Ljava/lang/String;
    .end local v13    # "success":Z
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    goto/16 :goto_7

    .line 1508
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .restart local v12    # "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    :catch_a
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v2, v5

    move-object v1, v15

    .end local v12    # "fileNames":[Ljava/lang/String;
    .end local v13    # "success":Z
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    goto/16 :goto_4

    .line 1504
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .restart local v12    # "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    :catch_b
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v2, v5

    move-object v1, v15

    .end local v12    # "fileNames":[Ljava/lang/String;
    .end local v13    # "success":Z
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    goto/16 :goto_5

    .line 1501
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .restart local v12    # "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    :catch_c
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v2, v5

    move-object v1, v15

    .end local v12    # "fileNames":[Ljava/lang/String;
    .end local v13    # "success":Z
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    goto/16 :goto_6

    .line 1478
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .restart local v0    # "logVersion":I
    .restart local v1    # "headerPrevOffset":J
    .restart local v12    # "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    .restart local v14    # "FNFE":Ljava/io/FileNotFoundException;
    .restart local v18    # "lastLsn":J
    :cond_8
    move-object/from16 v16, v12

    move/from16 v17, v13

    .line 1490
    .end local v12    # "fileNames":[Ljava/lang/String;
    .end local v13    # "success":Z
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    :goto_2
    :try_start_8
    new-instance v4, Lcom/sleepycat/je/log/FileHeader;

    invoke-direct {v4, v10, v11, v1, v2}, Lcom/sleepycat/je/log/FileHeader;-><init>(JJ)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1492
    .local v4, "fileHeader":Lcom/sleepycat/je/log/FileHeader;
    move-wide v12, v1

    .end local v1    # "headerPrevOffset":J
    .local v12, "headerPrevOffset":J
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v5

    move-wide/from16 v20, v12

    move-object v12, v5

    .end local v5    # "fileName":Ljava/lang/String;
    .local v12, "fileName":Ljava/lang/String;
    .local v20, "headerPrevOffset":J
    move-wide v5, v10

    :try_start_9
    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/log/FileManager;->writeFileHeader(Ljava/io/RandomAccessFile;Ljava/lang/String;Lcom/sleepycat/je/log/FileHeader;J)V

    .line 1493
    .end local v4    # "fileHeader":Lcom/sleepycat/je/log/FileHeader;
    .end local v18    # "lastLsn":J
    .end local v20    # "headerPrevOffset":J
    goto :goto_3

    .line 1518
    .end local v0    # "logVersion":I
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v14    # "FNFE":Ljava/io/FileNotFoundException;
    .restart local v5    # "fileName":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object v12, v5

    move-object v2, v12

    move-object v1, v15

    .end local v5    # "fileName":Ljava/lang/String;
    .restart local v12    # "fileName":Ljava/lang/String;
    goto/16 :goto_7

    .line 1508
    .end local v12    # "fileName":Ljava/lang/String;
    .restart local v5    # "fileName":Ljava/lang/String;
    :catch_d
    move-exception v0

    move-object v12, v5

    move-object v2, v12

    move-object v1, v15

    .end local v5    # "fileName":Ljava/lang/String;
    .restart local v12    # "fileName":Ljava/lang/String;
    goto/16 :goto_4

    .line 1504
    .end local v12    # "fileName":Ljava/lang/String;
    .restart local v5    # "fileName":Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object v12, v5

    move-object v2, v12

    move-object v1, v15

    .end local v5    # "fileName":Ljava/lang/String;
    .restart local v12    # "fileName":Ljava/lang/String;
    goto/16 :goto_5

    .line 1501
    .end local v12    # "fileName":Ljava/lang/String;
    .restart local v5    # "fileName":Ljava/lang/String;
    :catch_f
    move-exception v0

    move-object v12, v5

    move-object v2, v12

    move-object v1, v15

    .end local v5    # "fileName":Ljava/lang/String;
    .restart local v12    # "fileName":Ljava/lang/String;
    goto/16 :goto_6

    .line 1470
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .restart local v0    # "logVersion":I
    .restart local v5    # "fileName":Ljava/lang/String;
    .local v12, "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    .restart local v14    # "FNFE":Ljava/io/FileNotFoundException;
    :cond_9
    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v12, v5

    .end local v5    # "fileName":Ljava/lang/String;
    .end local v13    # "success":Z
    .local v12, "fileName":Ljava/lang/String;
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    goto :goto_3

    .line 1496
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .restart local v5    # "fileName":Ljava/lang/String;
    .local v12, "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    :cond_a
    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v12, v5

    .line 1497
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v13    # "success":Z
    .local v12, "fileName":Ljava/lang/String;
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    invoke-direct {v7, v15, v12, v10, v11}, Lcom/sleepycat/je/log/FileManager;->readAndValidateFileHeader(Ljava/io/RandomAccessFile;Ljava/lang/String;J)I

    move-result v1

    move v0, v1

    .line 1499
    :goto_3
    invoke-virtual {v8, v15, v0}, Lcom/sleepycat/je/log/FileHandle;->init(Ljava/io/RandomAccessFile;I)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_9 .. :try_end_9} :catch_10
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1500
    const/4 v0, 0x1

    .line 1518
    .end local v14    # "FNFE":Ljava/io/FileNotFoundException;
    .end local v17    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_b

    .line 1519
    invoke-direct {v7, v15}, Lcom/sleepycat/je/log/FileManager;->closeFileInErrorCase(Ljava/io/RandomAccessFile;)V

    .line 1522
    :cond_b
    return-void

    .line 1518
    .end local v0    # "success":Z
    .restart local v17    # "success":Z
    :catchall_5
    move-exception v0

    move-object v2, v12

    move-object v1, v15

    goto/16 :goto_7

    .line 1508
    :catch_10
    move-exception v0

    move-object v2, v12

    move-object v1, v15

    goto :goto_4

    .line 1504
    :catch_11
    move-exception v0

    move-object v2, v12

    move-object v1, v15

    goto/16 :goto_5

    .line 1501
    :catch_12
    move-exception v0

    move-object v2, v12

    move-object v1, v15

    goto/16 :goto_6

    .line 1518
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .restart local v5    # "fileName":Ljava/lang/String;
    .local v12, "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    :catchall_6
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v12, v5

    move-object v2, v12

    move-object v1, v15

    .end local v5    # "fileName":Ljava/lang/String;
    .end local v13    # "success":Z
    .local v12, "fileName":Ljava/lang/String;
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    goto/16 :goto_7

    .line 1508
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .restart local v5    # "fileName":Ljava/lang/String;
    .local v12, "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    :catch_13
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v12, v5

    move-object v2, v12

    move-object v1, v15

    .end local v5    # "fileName":Ljava/lang/String;
    .end local v13    # "success":Z
    .local v12, "fileName":Ljava/lang/String;
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    goto :goto_4

    .line 1504
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .restart local v5    # "fileName":Ljava/lang/String;
    .local v12, "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    :catch_14
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v12, v5

    move-object v2, v12

    move-object v1, v15

    .end local v5    # "fileName":Ljava/lang/String;
    .end local v13    # "success":Z
    .local v12, "fileName":Ljava/lang/String;
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    goto :goto_5

    .line 1501
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .restart local v5    # "fileName":Ljava/lang/String;
    .local v12, "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    :catch_15
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object v12, v5

    move-object v2, v12

    move-object v1, v15

    .end local v5    # "fileName":Ljava/lang/String;
    .end local v13    # "success":Z
    .local v12, "fileName":Ljava/lang/String;
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    goto :goto_6

    .line 1518
    .end local v15    # "newFile":Ljava/io/RandomAccessFile;
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .local v1, "newFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "fileName":Ljava/lang/String;
    .local v12, "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    :catchall_7
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    .end local v12    # "fileNames":[Ljava/lang/String;
    .end local v13    # "success":Z
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    goto :goto_7

    .line 1508
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .restart local v12    # "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    :catch_16
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    .line 1514
    .end local v12    # "fileNames":[Ljava/lang/String;
    .end local v13    # "success":Z
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    :goto_4
    :try_start_a
    invoke-direct {v7, v1}, Lcom/sleepycat/je/log/FileManager;->closeFileInErrorCase(Ljava/io/RandomAccessFile;)V

    .line 1515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/DatabaseException;->addErrorMessage(Ljava/lang/String;)V

    .line 1516
    nop

    .end local v1    # "newFile":Ljava/io/RandomAccessFile;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v10    # "fileNum":J
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .end local p1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p2    # "mode":Lcom/sleepycat/je/log/FileManager$FileMode;
    .end local p3    # "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    throw v0

    .line 1504
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    .restart local v1    # "newFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v10    # "fileNum":J
    .restart local v12    # "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    .restart local p1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p2    # "mode":Lcom/sleepycat/je/log/FileManager$FileMode;
    .restart local p3    # "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    :catch_17
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    .line 1505
    .end local v12    # "fileNames":[Ljava/lang/String;
    .end local v13    # "success":Z
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    :goto_5
    new-instance v3, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v4, v7, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v5, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_READ:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "newFile":Ljava/io/RandomAccessFile;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v10    # "fileNum":J
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .end local p1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p2    # "mode":Lcom/sleepycat/je/log/FileManager$FileMode;
    .end local p3    # "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    throw v3

    .line 1501
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "newFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v10    # "fileNum":J
    .restart local v12    # "fileNames":[Ljava/lang/String;
    .restart local v13    # "success":Z
    .restart local p1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p2    # "mode":Lcom/sleepycat/je/log/FileManager$FileMode;
    .restart local p3    # "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    :catch_18
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v17, v13

    .line 1503
    .end local v12    # "fileNames":[Ljava/lang/String;
    .end local v13    # "success":Z
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    :goto_6
    nop

    .end local v1    # "newFile":Ljava/io/RandomAccessFile;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v10    # "fileNum":J
    .end local v16    # "fileNames":[Ljava/lang/String;
    .end local v17    # "success":Z
    .end local p1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p2    # "mode":Lcom/sleepycat/je/log/FileManager$FileMode;
    .end local p3    # "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 1518
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "newFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v10    # "fileNum":J
    .restart local v16    # "fileNames":[Ljava/lang/String;
    .restart local v17    # "success":Z
    .restart local p1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p2    # "mode":Lcom/sleepycat/je/log/FileManager$FileMode;
    .restart local p3    # "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    :catchall_8
    move-exception v0

    :goto_7
    if-nez v17, :cond_c

    .line 1519
    invoke-direct {v7, v1}, Lcom/sleepycat/je/log/FileManager;->closeFileInErrorCase(Ljava/io/RandomAccessFile;)V

    :cond_c
    throw v0
.end method

.method private paddedDirNum(I)Ljava/lang/String;
    .locals 3
    .param p1, "dirNum"    # I

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1000
    .local v0, "paddedStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1001
    .local v1, "len":I
    add-int/lit8 v2, v1, -0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private printLogBuffer(Ljava/nio/ByteBuffer;J)V
    .locals 8
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "lsn"    # J

    .line 2047
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2049
    .local v0, "curPos":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 2051
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 2053
    .local v1, "recStartPos":I
    const/4 v2, 0x0

    .line 2056
    .local v2, "header":Lcom/sleepycat/je/log/LogEntryHeader;
    :try_start_0
    new-instance v3, Lcom/sleepycat/je/log/LogEntryHeader;

    const/16 v4, 0x11

    invoke-direct {v3, p1, v4, p2, p3}, Lcom/sleepycat/je/log/LogEntryHeader;-><init>(Ljava/nio/ByteBuffer;IJ)V
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 2061
    nop

    .line 2063
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v3

    invoke-static {v3}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v3

    .line 2064
    .local v3, "recType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v4

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v5

    add-int/2addr v4, v5

    .line 2066
    .local v4, "recSize":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LOGREC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2067
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->toStringNoVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at LSN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2068
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , log buffer offset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2066
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2071
    int-to-long v5, v4

    add-long/2addr p2, v5

    .line 2073
    add-int v5, v1, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2074
    .end local v1    # "recStartPos":I
    .end local v2    # "header":Lcom/sleepycat/je/log/LogEntryHeader;
    .end local v3    # "recType":Lcom/sleepycat/je/log/LogEntryType;
    .end local v4    # "recSize":I
    goto :goto_0

    .line 2058
    .restart local v1    # "recStartPos":I
    .restart local v2    # "header":Lcom/sleepycat/je/log/LogEntryHeader;
    :catch_0
    move-exception v3

    .line 2059
    .local v3, "e":Lcom/sleepycat/je/log/ChecksumException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChecksumException in printLogBuffer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2076
    .end local v1    # "recStartPos":I
    .end local v2    # "header":Lcom/sleepycat/je/log/LogEntryHeader;
    .end local v3    # "e":Lcom/sleepycat/je/log/ChecksumException;
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2077
    return-void
.end method

.method private readAndValidateFileHeader(Ljava/io/RandomAccessFile;Ljava/lang/String;J)I
    .locals 4
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileNum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1556
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    .line 1558
    .local v0, "logManager":Lcom/sleepycat/je/log/LogManager;
    const/4 v1, 0x0

    .line 1559
    :try_start_0
    invoke-static {p3, p4, v1}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/sleepycat/je/log/LogManager;->getLogEntryAllowChecksumException(JLjava/io/RandomAccessFile;I)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    .line 1561
    .local v1, "headerEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-interface {v1}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/log/FileHeader;

    .line 1562
    .local v2, "header":Lcom/sleepycat/je/log/FileHeader;
    iget-object v3, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2, v3, p2, p3, p4}, Lcom/sleepycat/je/log/FileHeader;->validate(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;J)I

    move-result v3
    :try_end_0
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 1564
    .end local v1    # "headerEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v2    # "header":Lcom/sleepycat/je/log/FileHeader;
    :catch_0
    move-exception v1

    .line 1565
    .local v1, "e":Lcom/sleepycat/je/log/ErasedException;
    new-instance v2, Lcom/sleepycat/je/log/ChecksumException;

    const-string v3, "File header is erased, likely corrupt"

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/je/log/ChecksumException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private readFromFileInternal(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V
    .locals 6
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "readBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # J
    .param p5, "fileNum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2017
    monitor-enter p1

    .line 2018
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2019
    .local v0, "pos":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2021
    .local v1, "size":I
    iget-wide v2, p0, Lcom/sleepycat/je/log/FileManager;->lastFileNumberTouched:J

    cmp-long v2, v2, p5

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileManager;->lastFileTouchedOffset:J

    sub-long v2, p3, v2

    .line 2022
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2024
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->nSequentialReads:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 2025
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->nSequentialReadBytes:Lcom/sleepycat/je/utilint/LongStat;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    goto :goto_0

    .line 2027
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->nRandomReads:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 2028
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->nRandomReadBytes:Lcom/sleepycat/je/utilint/LongStat;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 2031
    :goto_0
    invoke-virtual {p1, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2033
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 2034
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v3, v0

    .line 2033
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 2036
    .local v2, "bytesRead":I
    if-lez v2, :cond_1

    .line 2037
    add-int v3, v0, v2

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2040
    :cond_1
    iput-wide p5, p0, Lcom/sleepycat/je/log/FileManager;->lastFileNumberTouched:J

    .line 2041
    int-to-long v3, v2

    add-long/2addr v3, p3

    iput-wide v3, p0, Lcom/sleepycat/je/log/FileManager;->lastFileTouchedOffset:J

    .line 2042
    .end local v0    # "pos":I
    .end local v1    # "size":I
    .end local v2    # "bytesRead":I
    monitor-exit p1

    .line 2043
    return-void

    .line 2042
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readHeader(J)Lcom/sleepycat/je/log/FileHeader;
    .locals 3
    .param p1, "fileNum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 1657
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1658
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1659
    invoke-static {p1, p2, v1}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/log/LogManager;->getLogEntryAllowChecksumException(J)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    .line 1660
    .local v0, "headerEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/log/FileHeader;
    :try_end_0
    .catch Lcom/sleepycat/je/log/ErasedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1661
    .end local v0    # "headerEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    :catch_0
    move-exception v0

    .line 1662
    .local v0, "e":Lcom/sleepycat/je/log/ErasedException;
    new-instance v1, Lcom/sleepycat/je/log/ChecksumException;

    const-string v2, "File header is erased, implied corruption"

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/log/ChecksumException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private stopFileCacheWarmer()V
    .locals 1

    .line 2216
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->fileCacheWarmer:Lcom/sleepycat/je/log/FileCacheWarmer;

    .line 2218
    .local v0, "fcw":Lcom/sleepycat/je/log/FileCacheWarmer;
    if-nez v0, :cond_0

    .line 2219
    return-void

    .line 2222
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileCacheWarmer;->shutdown()V

    .line 2224
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FileManager;->clearFileCacheWarmer()V

    .line 2225
    return-void
.end method

.method private verifyChecksum(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/log/LogEntryHeader;JLjava/lang/String;)V
    .locals 7
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p3, "lsn"    # J
    .param p5, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 2110
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryHeader;->hasChecksum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2111
    return-void

    .line 2113
    :cond_0
    const/4 v0, 0x0

    .line 2115
    .local v0, "validator":Lcom/sleepycat/je/log/ChecksumValidator;
    new-instance v1, Lcom/sleepycat/je/log/ChecksumValidator;

    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v2}, Lcom/sleepycat/je/log/ChecksumValidator;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    move-object v0, v1

    .line 2116
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getSizeMinusChecksum()I

    move-result v1

    .line 2117
    .local v1, "headerSizeMinusChecksum":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 2118
    .local v2, "itemStart":I
    sub-int v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2119
    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/log/ChecksumValidator;->update(Ljava/nio/ByteBuffer;I)V

    .line 2120
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2126
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v3

    .line 2127
    .local v3, "itemSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_1

    .line 2128
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t verify checksum ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2129
    return-void

    .line 2136
    :cond_1
    invoke-virtual {v0, p1, v3}, Lcom/sleepycat/je/log/ChecksumValidator;->update(Ljava/nio/ByteBuffer;I)V

    .line 2137
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getChecksum()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, p3, p4}, Lcom/sleepycat/je/log/ChecksumValidator;->validate(JJ)V

    .line 2138
    return-void
.end method

.method private verifyChecksums(Ljava/nio/ByteBuffer;JLjava/lang/String;)V
    .locals 8
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "lsn"    # J
    .param p4, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2084
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2086
    .local v0, "curPos":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 2087
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 2089
    .local v1, "recStartPos":I
    new-instance v4, Lcom/sleepycat/je/log/LogEntryHeader;

    const/16 v2, 0x11

    invoke-direct {v4, p1, v2, p2, p3}, Lcom/sleepycat/je/log/LogEntryHeader;-><init>(Ljava/nio/ByteBuffer;IJ)V

    .line 2091
    .local v4, "header":Lcom/sleepycat/je/log/LogEntryHeader;
    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/je/log/FileManager;->verifyChecksum(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/log/LogEntryHeader;JLjava/lang/String;)V

    .line 2092
    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v2

    add-int/2addr v2, v1

    .line 2093
    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v3

    add-int/2addr v2, v3

    .line 2092
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2094
    nop

    .end local v1    # "recStartPos":I
    .end local v4    # "header":Lcom/sleepycat/je/log/LogEntryHeader;
    goto :goto_0

    .line 2100
    :cond_0
    goto :goto_1

    .line 2095
    :catch_0
    move-exception v1

    .line 2096
    .local v1, "e":Lcom/sleepycat/je/log/ChecksumException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChecksumException: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2097
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "start stack trace"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2098
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/log/ChecksumException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 2099
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "end stack trace"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2101
    .end local v1    # "e":Lcom/sleepycat/je/log/ChecksumException;
    :goto_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2102
    return-void
.end method

.method private writeFileHeader(Ljava/io/RandomAccessFile;Ljava/lang/String;Lcom/sleepycat/je/log/FileHeader;J)V
    .locals 13
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "header"    # Lcom/sleepycat/je/log/FileHeader;
    .param p4, "fileNum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1580
    move-object v9, p0

    iget-object v0, v9, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V

    .line 1585
    iget-object v0, v9, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mayNotWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    return-void

    .line 1590
    :cond_0
    new-instance v0, Lcom/sleepycat/je/log/entry/FileHeaderEntry;

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_FILE_HEADER:Lcom/sleepycat/je/log/LogEntryType;

    move-object/from16 v10, p3

    invoke-direct {v0, v1, v10}, Lcom/sleepycat/je/log/entry/FileHeaderEntry;-><init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/FileHeader;)V

    move-object v11, v0

    .line 1592
    .local v11, "headerLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v0, v9, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 1593
    invoke-virtual {v0, v11, v1, v2}, Lcom/sleepycat/je/log/LogManager;->putIntoBuffer(Lcom/sleepycat/je/log/entry/LogEntry;J)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 1599
    .local v12, "headerBuf":Ljava/nio/ByteBuffer;
    :try_start_0
    sget-boolean v0, Lcom/sleepycat/je/log/FileManager;->LOGWRITE_EXCEPTION_TESTING:Z

    if-eqz v0, :cond_1

    .line 1600
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v12

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/FileManager;->generateLogWriteException(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V

    .line 1608
    :cond_1
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v12

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/log/FileManager;->writeToFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)I

    move-result v0
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1622
    .local v0, "bytesWritten":I
    nop

    .line 1624
    invoke-interface {v11}, Lcom/sleepycat/je/log/entry/LogEntry;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    if-ne v0, v1, :cond_2

    .line 1632
    return-void

    .line 1626
    :cond_2
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, v9, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " was created with an incomplete header. Only "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bytes were written."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v1

    .line 1619
    .end local v0    # "bytesWritten":I
    :catch_0
    move-exception v0

    move-object v5, p2

    .line 1621
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sleepycat/je/LogWriteException;

    iget-object v2, v9, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/LogWriteException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1

    .line 1611
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    move-object v5, p2

    .line 1617
    .local v0, "e":Ljava/nio/channels/ClosedChannelException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, v9, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "Channel closed, may be due to thread interrupt"

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeToFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)I
    .locals 19
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "data"    # Ljava/nio/ByteBuffer;
    .param p3, "destOffset"    # J
    .param p5, "fileNum"    # J
    .param p7, "flushWriteQueue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1820
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    const-string/jumbo v0, "write"

    invoke-direct {v1, v0}, Lcom/sleepycat/je/log/FileManager;->bumpWriteCount(Ljava/lang/String;)V

    .line 1822
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    .line 1823
    .local v16, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int v11, v0, v16

    .line 1825
    .local v11, "size":I
    iget-wide v4, v1, Lcom/sleepycat/je/log/FileManager;->lastFileNumberTouched:J

    cmp-long v0, v4, v14

    if-nez v0, :cond_0

    iget-wide v4, v1, Lcom/sleepycat/je/log/FileManager;->lastFileTouchedOffset:J

    sub-long v4, v12, v4

    .line 1826
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 1828
    iget-object v0, v1, Lcom/sleepycat/je/log/FileManager;->nSequentialWrites:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1829
    iget-object v0, v1, Lcom/sleepycat/je/log/FileManager;->nSequentialWriteBytes:Lcom/sleepycat/je/utilint/LongStat;

    int-to-long v4, v11

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    goto :goto_0

    .line 1831
    :cond_0
    iget-object v0, v1, Lcom/sleepycat/je/log/FileManager;->nRandomWrites:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1832
    iget-object v0, v1, Lcom/sleepycat/je/log/FileManager;->nRandomWriteBytes:Lcom/sleepycat/je/utilint/LongStat;

    int-to-long v4, v11

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1835
    :goto_0
    iget-boolean v0, v1, Lcom/sleepycat/je/log/FileManager;->VERIFY_CHECKSUMS:Z

    if-eqz v0, :cond_1

    .line 1836
    const-string v0, "pre-write"

    invoke-direct {v1, v3, v12, v13, v0}, Lcom/sleepycat/je/log/FileManager;->verifyChecksums(Ljava/nio/ByteBuffer;JLjava/lang/String;)V

    .line 1851
    :cond_1
    iget-object v0, v1, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    .line 1852
    invoke-static {v0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->access$300(Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v17

    .line 1853
    .local v17, "fsyncLatchAcquired":Z
    const/4 v0, 0x0

    .line 1854
    .local v0, "enqueueSuccess":Z
    if-nez v17, :cond_2

    iget-boolean v4, v1, Lcom/sleepycat/je/log/FileManager;->useWriteQueue:Z

    if-eqz v4, :cond_2

    if-nez p7, :cond_2

    .line 1857
    iget-object v4, v1, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    .line 1858
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 1859
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int v10, v16, v5

    .line 1858
    move-wide/from16 v5, p5

    move-wide/from16 v8, p3

    move/from16 v18, v11

    .end local v11    # "size":I
    .local v18, "size":I
    invoke-virtual/range {v4 .. v11}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->enqueueWrite(J[BJII)Z

    move-result v0

    move v4, v0

    goto :goto_1

    .line 1854
    .end local v18    # "size":I
    .restart local v11    # "size":I
    :cond_2
    move/from16 v18, v11

    .line 1862
    .end local v11    # "size":I
    .restart local v18    # "size":I
    move v4, v0

    .end local v0    # "enqueueSuccess":Z
    .local v4, "enqueueSuccess":Z
    :goto_1
    if-nez v4, :cond_6

    .line 1863
    if-nez v17, :cond_3

    .line 1864
    iget-object v0, v1, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    invoke-static {v0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->access$300(Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1867
    :cond_3
    :try_start_0
    iget-boolean v0, v1, Lcom/sleepycat/je/log/FileManager;->useWriteQueue:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_4

    .line 1868
    :try_start_1
    iget-object v0, v1, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    invoke-static {v0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->access$400(Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1884
    :catchall_0
    move-exception v0

    move/from16 v6, v18

    goto :goto_4

    .line 1871
    :cond_4
    :goto_2
    :try_start_2
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1873
    :try_start_3
    invoke-virtual {v2, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1874
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int v5, v16, v5

    move/from16 v6, v18

    .end local v18    # "size":I
    .local v6, "size":I
    :try_start_4
    invoke-virtual {v2, v0, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1876
    iget-boolean v0, v1, Lcom/sleepycat/je/log/FileManager;->VERIFY_CHECKSUMS:Z

    if-eqz v0, :cond_5

    .line 1877
    invoke-virtual {v2, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1878
    nop

    .line 1879
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int v5, v16, v5

    .line 1878
    invoke-virtual {v2, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1880
    const-string v0, "post-write"

    invoke-direct {v1, v3, v12, v13, v0}, Lcom/sleepycat/je/log/FileManager;->verifyChecksums(Ljava/nio/ByteBuffer;JLjava/lang/String;)V

    .line 1882
    :cond_5
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1884
    iget-object v0, v1, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    invoke-static {v0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->access$300(Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1885
    goto :goto_5

    .line 1882
    .end local v6    # "size":I
    .restart local v18    # "size":I
    :catchall_1
    move-exception v0

    move/from16 v6, v18

    .end local v18    # "size":I
    .restart local v6    # "size":I
    :goto_3
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local v4    # "enqueueSuccess":Z
    .end local v6    # "size":I
    .end local v16    # "pos":I
    .end local v17    # "fsyncLatchAcquired":Z
    .end local p1    # "file":Ljava/io/RandomAccessFile;
    .end local p2    # "data":Ljava/nio/ByteBuffer;
    .end local p3    # "destOffset":J
    .end local p5    # "fileNum":J
    .end local p7    # "flushWriteQueue":Z
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1884
    .restart local v4    # "enqueueSuccess":Z
    .restart local v6    # "size":I
    .restart local v16    # "pos":I
    .restart local v17    # "fsyncLatchAcquired":Z
    .restart local p1    # "file":Ljava/io/RandomAccessFile;
    .restart local p2    # "data":Ljava/nio/ByteBuffer;
    .restart local p3    # "destOffset":J
    .restart local p5    # "fileNum":J
    .restart local p7    # "flushWriteQueue":Z
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 1882
    :catchall_3
    move-exception v0

    goto :goto_3

    .line 1884
    .end local v6    # "size":I
    .restart local v18    # "size":I
    :catchall_4
    move-exception v0

    move/from16 v6, v18

    .end local v18    # "size":I
    .restart local v6    # "size":I
    :goto_4
    iget-object v5, v1, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    invoke-static {v5}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->access$300(Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 1862
    .end local v6    # "size":I
    .restart local v18    # "size":I
    :cond_6
    move/from16 v6, v18

    .line 1887
    .end local v18    # "size":I
    .restart local v6    # "size":I
    :goto_5
    add-int v11, v16, v6

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1889
    iput-wide v14, v1, Lcom/sleepycat/je/log/FileManager;->lastFileNumberTouched:J

    .line 1890
    int-to-long v7, v6

    add-long/2addr v7, v12

    iput-wide v7, v1, Lcom/sleepycat/je/log/FileManager;->lastFileTouchedOffset:J

    .line 1891
    return v6
.end method


# virtual methods
.method advanceLsn(JJZ)J
    .locals 6
    .param p1, "currentLsn"    # J
    .param p3, "size"    # J
    .param p5, "flippedFile"    # Z

    .line 1713
    if-eqz p5, :cond_2

    .line 1714
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileManager;->currentFileNum:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1715
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v0

    invoke-static {}, Lcom/sleepycat/je/log/FileManager;->firstLogEntryOffset()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1717
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->perFileLastUsedLsn:Ljava/util/Map;

    iget-wide v1, p0, Lcom/sleepycat/je/log/FileManager;->currentFileNum:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileManager;->lastUsedLsn:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileManager;->currentFileNum:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/sleepycat/je/log/FileManager;->currentFileNum:J

    .line 1719
    const-wide/16 v0, 0x0

    .local v0, "prevOffset":J
    goto :goto_1

    .line 1715
    .end local v0    # "prevOffset":J
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1714
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1721
    :cond_2
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileManager;->currentFileNum:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1723
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileManager;->lastUsedLsn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileManager;->lastUsedLsn:J

    .line 1724
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v0

    :goto_0
    nop

    .line 1727
    .restart local v0    # "prevOffset":J
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sleepycat/je/log/FileManager;->forceNewFile:Z

    .line 1728
    iput-wide p1, p0, Lcom/sleepycat/je/log/FileManager;->lastUsedLsn:J

    .line 1730
    iget-wide v2, p0, Lcom/sleepycat/je/log/FileManager;->currentFileNum:J

    .line 1732
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v4

    add-long/2addr v4, p3

    .line 1730
    invoke-static {v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/log/FileManager;->nextAvailableLsn:J

    .line 1734
    return-wide v0

    .line 1721
    .end local v0    # "prevOffset":J
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method calculateNextLsn(Z)J
    .locals 4
    .param p1, "flippedFile"    # Z

    .line 1683
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/je/log/FileManager;->currentFileNum:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 1686
    invoke-static {}, Lcom/sleepycat/je/log/FileManager;->firstLogEntryOffset()I

    move-result v2

    .line 1684
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileManager;->nextAvailableLsn:J

    .line 1683
    :goto_0
    return-wide v0
.end method

.method public checkEnvHomePermissions(Z)Z
    .locals 1
    .param p1, "rdOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2376
    iget v0, p0, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    if-nez v0, :cond_0

    .line 2377
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->dbEnvHome:Ljava/io/File;

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/log/FileManager;->checkEnvHomePermissionsSingleEnvDir(Ljava/io/File;Z)Z

    move-result v0

    return v0

    .line 2379
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/FileManager;->checkEnvHomePermissionsMultiEnvDir(Z)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2238
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->fileCache:Lcom/sleepycat/je/log/FileManager$FileCache;

    monitor-enter v0

    .line 2239
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager;->fileCache:Lcom/sleepycat/je/log/FileManager$FileCache;

    invoke-static {v1}, Lcom/sleepycat/je/log/FileManager$FileCache;->access$600(Lcom/sleepycat/je/log/FileManager$FileCache;)V

    .line 2240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2242
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->close()V

    .line 2243
    return-void

    .line 2240
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method clearFileCacheWarmer()V
    .locals 1

    .line 2229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/FileManager;->fileCacheWarmer:Lcom/sleepycat/je/log/FileCacheWarmer;

    .line 2230
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2251
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileManager;->stopFileCacheWarmer()V

    .line 2253
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->envLock:Ljava/nio/channels/FileLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2254
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 2255
    iput-object v1, p0, Lcom/sleepycat/je/log/FileManager;->envLock:Ljava/nio/channels/FileLock;

    .line 2258
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->exclLock:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 2259
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 2260
    iput-object v1, p0, Lcom/sleepycat/je/log/FileManager;->exclLock:Ljava/nio/channels/FileLock;

    .line 2263
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2

    .line 2264
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 2265
    iput-object v1, p0, Lcom/sleepycat/je/log/FileManager;->channel:Ljava/nio/channels/FileChannel;

    .line 2268
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->lockFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_3

    .line 2269
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 2270
    iput-object v1, p0, Lcom/sleepycat/je/log/FileManager;->lockFile:Ljava/io/RandomAccessFile;

    .line 2273
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->fdd:Lcom/sleepycat/je/log/FileDeletionDetector;

    if-eqz v0, :cond_4

    .line 2274
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileDeletionDetector;->close()V

    .line 2276
    :cond_4
    return-void
.end method

.method public deleteFile(J)Z
    .locals 4
    .param p1, "fileNum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1167
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager;->getFullFileNames(J)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1176
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager;->fdd:Lcom/sleepycat/je/log/FileDeletionDetector;

    if-eqz v1, :cond_0

    .line 1177
    const-string v1, ".jdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1178
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1179
    .local v1, "index":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1180
    .local v2, "relativeFileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/je/log/FileManager;->fdd:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/log/FileDeletionDetector;->addDeletedFile(Ljava/lang/String;)V

    .line 1184
    .end local v1    # "index":I
    .end local v2    # "relativeFileName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager;->clearFileCache(J)V

    .line 1185
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v1, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->fileUpdateMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1187
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    monitor-exit v2

    return v3

    .line 1188
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public filesExist()Z
    .locals 2

    .line 668
    sget-object v0, Lcom/sleepycat/je/log/FileManager;->JE_SUFFIXES:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/log/FileManager;->listFileNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public force(Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 2586
    .local p1, "fileNums":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v0, "Invisible fsyncing file "

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2587
    .local v2, "fileNum":J
    const/4 v4, 0x0

    .line 2589
    .local v4, "file":Ljava/io/RandomAccessFile;
    nop

    .line 2590
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FileManager;->getAppropriateReadWriteMode()Lcom/sleepycat/je/log/FileManager$FileMode;

    move-result-object v5

    invoke-direct {p0, v2, v3, v5}, Lcom/sleepycat/je/log/FileManager;->makeFileHandle(JLcom/sleepycat/je/log/FileManager$FileMode;)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v5

    .line 2591
    .local v5, "handle":Lcom/sleepycat/je/log/FileHandle;
    invoke-virtual {v5}, Lcom/sleepycat/je/log/FileHandle;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v6

    move-object v4, v6

    .line 2592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2593
    .local v6, "start":J
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 2594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {p0, v8, v9}, Lcom/sleepycat/je/log/FileManager;->noteFsyncTime(J)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2608
    nop

    .end local v5    # "handle":Lcom/sleepycat/je/log/FileHandle;
    .end local v6    # "start":J
    if-eqz v4, :cond_0

    .line 2610
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2615
    goto :goto_1

    .line 2611
    :catch_0
    move-exception v1

    .line 2612
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v6, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_WRITE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 2618
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileNum":J
    .end local v4    # "file":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_1
    goto :goto_0

    .line 2608
    .restart local v2    # "fileNum":J
    .restart local v4    # "file":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2603
    :catch_1
    move-exception v1

    .line 2604
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v6, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_WRITE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "fileNum":J
    .end local v4    # "file":Ljava/io/RandomAccessFile;
    .end local p1    # "fileNums":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    throw v5

    .line 2599
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fileNum":J
    .restart local v4    # "file":Ljava/io/RandomAccessFile;
    .restart local p1    # "fileNums":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catch_2
    move-exception v1

    .line 2600
    .local v1, "e":Lcom/sleepycat/je/log/ChecksumException;
    new-instance v5, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v6, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "fileNum":J
    .end local v4    # "file":Ljava/io/RandomAccessFile;
    .end local p1    # "fileNums":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    throw v5

    .line 2595
    .end local v1    # "e":Lcom/sleepycat/je/log/ChecksumException;
    .restart local v2    # "fileNum":J
    .restart local v4    # "file":Ljava/io/RandomAccessFile;
    .restart local p1    # "fileNums":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catch_3
    move-exception v1

    .line 2596
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v6, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "fileNum":J
    .end local v4    # "file":Ljava/io/RandomAccessFile;
    .end local p1    # "fileNums":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2608
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fileNum":J
    .restart local v4    # "file":Ljava/io/RandomAccessFile;
    .restart local p1    # "fileNums":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_2
    if-eqz v4, :cond_1

    .line 2610
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2615
    goto :goto_3

    .line 2611
    :catch_4
    move-exception v1

    .line 2612
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v6, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v7, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_WRITE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v1

    .line 2619
    .end local v2    # "fileNum":J
    .end local v4    # "file":Ljava/io/RandomAccessFile;
    :cond_2
    return-void
.end method

.method public forceNewLogFile()V
    .locals 1

    .line 2625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/log/FileManager;->forceNewFile:Z

    .line 2626
    return-void
.end method

.method public gatherDataDirs()[Ljava/io/File;
    .locals 12

    .line 940
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->dbEnvHome:Ljava/io/File;

    new-instance v1, Lcom/sleepycat/je/log/FileManager$4;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/log/FileManager$4;-><init>(Lcom/sleepycat/je/log/FileManager;)V

    .line 941
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "dataDirNames":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 951
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0

    .line 953
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    .line 956
    :goto_0
    array-length v2, v0

    iget v3, p0, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    const-string v4, " instead."

    if-ne v2, v3, :cond_5

    .line 964
    const/4 v2, 0x1

    .line 965
    .local v2, "ddNum":I
    new-array v3, v3, [Ljava/io/File;

    .line 966
    .local v3, "dataDirs":[Ljava/io/File;
    array-length v5, v0

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v0, v1

    .line 967
    .local v6, "fn":Ljava/lang/String;
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 969
    .local v7, "subdirNumStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 970
    .local v8, "subdirNum":I
    if-ne v8, v2, :cond_3

    .line 979
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/sleepycat/je/log/FileManager;->dbEnvHome:Ljava/io/File;

    invoke-direct {v9, v10, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 980
    .local v9, "dataDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "Data dir: "

    if-eqz v10, :cond_2

    .line 984
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 988
    add-int/lit8 v10, v2, -0x1

    aput-object v9, v3, v10

    .line 992
    .end local v8    # "subdirNum":I
    .end local v9    # "dataDir":Ljava/io/File;
    nop

    .line 993
    nop

    .end local v6    # "fn":Ljava/lang/String;
    .end local v7    # "subdirNumStr":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 966
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 985
    .restart local v6    # "fn":Ljava/lang/String;
    .restart local v7    # "subdirNumStr":Ljava/lang/String;
    .restart local v8    # "subdirNum":I
    .restart local v9    # "dataDir":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is not a directory."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 986
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local v0    # "dataDirNames":[Ljava/lang/String;
    .end local v2    # "ddNum":I
    .end local v3    # "dataDirs":[Ljava/io/File;
    .end local v6    # "fn":Ljava/lang/String;
    .end local v7    # "subdirNumStr":Ljava/lang/String;
    throw v1

    .line 981
    .restart local v0    # "dataDirNames":[Ljava/lang/String;
    .restart local v2    # "ddNum":I
    .restart local v3    # "dataDirs":[Ljava/io/File;
    .restart local v6    # "fn":Ljava/lang/String;
    .restart local v7    # "subdirNumStr":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " doesn\'t exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 982
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local v0    # "dataDirNames":[Ljava/lang/String;
    .end local v2    # "ddNum":I
    .end local v3    # "dataDirs":[Ljava/io/File;
    .end local v6    # "fn":Ljava/lang/String;
    .end local v7    # "subdirNumStr":Ljava/lang/String;
    throw v1

    .line 971
    .end local v9    # "dataDir":Ljava/io/File;
    .restart local v0    # "dataDirNames":[Ljava/lang/String;
    .restart local v2    # "ddNum":I
    .restart local v3    # "dataDirs":[Ljava/io/File;
    .restart local v6    # "fn":Ljava/lang/String;
    .restart local v7    # "subdirNumStr":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected to find data subdir: data"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 973
    invoke-direct {p0, v2}, Lcom/sleepycat/je/log/FileManager;->paddedDirNum(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " but found data"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local v0    # "dataDirNames":[Ljava/lang/String;
    .end local v2    # "ddNum":I
    .end local v3    # "dataDirs":[Ljava/io/File;
    .end local v6    # "fn":Ljava/lang/String;
    .end local v7    # "subdirNumStr":Ljava/lang/String;
    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 989
    .end local v8    # "subdirNum":I
    .restart local v0    # "dataDirNames":[Ljava/lang/String;
    .restart local v2    # "ddNum":I
    .restart local v3    # "dataDirs":[Ljava/io/File;
    .restart local v6    # "fn":Ljava/lang/String;
    .restart local v7    # "subdirNumStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 990
    .local v1, "E":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal data subdir: data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 991
    invoke-static {v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4

    .line 995
    .end local v1    # "E":Ljava/lang/NumberFormatException;
    .end local v6    # "fn":Ljava/lang/String;
    .end local v7    # "subdirNumStr":Ljava/lang/String;
    :cond_4
    return-object v3

    .line 957
    .end local v2    # "ddNum":I
    .end local v3    # "dataDirs":[Ljava/io/File;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_N_DATA_DIRECTORIES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 958
    invoke-virtual {v2}, Lcom/sleepycat/je/config/IntConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was set and expected to find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data directories, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public getAllFileNumbers()[Ljava/lang/Long;
    .locals 11

    .line 573
    sget-object v0, Lcom/sleepycat/je/log/FileManager;->JE_SUFFIXES:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/log/FileManager;->listFileNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Long;

    .line 575
    .local v1, "nums":[Ljava/lang/Long;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 576
    aget-object v3, v0, v2

    .line 577
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/log/FileManager;->getNumFromName(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 578
    .local v4, "num":J
    iget v6, p0, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    if-eqz v6, :cond_1

    .line 579
    invoke-direct {p0, v3}, Lcom/sleepycat/je/log/FileManager;->getDataDirIndexFromName(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 580
    .local v6, "dbEnvDataDirsIdx":I
    int-to-long v7, v6

    iget v9, p0, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    int-to-long v9, v9

    rem-long v9, v4, v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but it should have been in data directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Perhaps it was moved or restored incorrectly?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 582
    invoke-static {v7}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v7

    throw v7

    .line 575
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "num":J
    .end local v6    # "dbEnvDataDirsIdx":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 588
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public getAppropriateReadWriteMode()Lcom/sleepycat/je/log/FileManager$FileMode;
    .locals 1

    .line 1379
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FileManager;->useODSYNC:Z

    if-eqz v0, :cond_0

    .line 1380
    sget-object v0, Lcom/sleepycat/je/log/FileManager$FileMode;->READWRITE_ODSYNC_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;

    return-object v0

    .line 1382
    :cond_0
    sget-object v0, Lcom/sleepycat/je/log/FileManager$FileMode;->READWRITE_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;

    return-object v0
.end method

.method getCacheKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2670
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->fileCache:Lcom/sleepycat/je/log/FileManager$FileCache;

    invoke-static {v0}, Lcom/sleepycat/je/log/FileManager$FileCache;->access$800(Lcom/sleepycat/je/log/FileManager$FileCache;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFileNum()J
    .locals 2

    .line 532
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileManager;->currentFileNum:J

    return-wide v0
.end method

.method public getFileHandle(J)Lcom/sleepycat/je/log/FileHandle;
    .locals 11
    .param p1, "fileNum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ChecksumException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1252
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1253
    .local v0, "fileId":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 1267
    .local v1, "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->fileCache:Lcom/sleepycat/je/log/FileManager$FileCache;

    invoke-static {v2, v0}, Lcom/sleepycat/je/log/FileManager$FileCache;->access$000(Lcom/sleepycat/je/log/FileManager$FileCache;Ljava/lang/Long;)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v2

    move-object v1, v2

    .line 1279
    const/4 v2, 0x0

    .line 1280
    .local v2, "newHandle":Z
    if-nez v1, :cond_1

    .line 1281
    iget-object v3, p0, Lcom/sleepycat/je/log/FileManager;->fileCache:Lcom/sleepycat/je/log/FileManager$FileCache;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    :try_start_1
    iget-object v4, p0, Lcom/sleepycat/je/log/FileManager;->fileCache:Lcom/sleepycat/je/log/FileManager$FileCache;

    invoke-static {v4, v0}, Lcom/sleepycat/je/log/FileManager$FileCache;->access$000(Lcom/sleepycat/je/log/FileManager$FileCache;Ljava/lang/Long;)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v4

    move-object v1, v4

    .line 1283
    if-nez v1, :cond_0

    .line 1284
    const/4 v2, 0x1

    .line 1285
    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/FileManager;->addFileHandle(Ljava/lang/Long;)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v4

    move-object v1, v4

    .line 1287
    :cond_0
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "fileId":Ljava/lang/Long;
    .end local v1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p1    # "fileNum":J
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1290
    .restart local v0    # "fileId":Ljava/lang/Long;
    .restart local v1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p1    # "fileNum":J
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    .line 1296
    const/4 v3, 0x0

    .line 1298
    .local v3, "success":Z
    :try_start_3
    sget-object v4, Lcom/sleepycat/je/log/FileManager$FileMode;->READ_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/sleepycat/je/log/FileManager;->openFileHandle(Lcom/sleepycat/je/log/FileHandle;Lcom/sleepycat/je/log/FileManager$FileMode;Lcom/sleepycat/je/log/FileHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1300
    const/4 v3, 0x1

    .line 1302
    if-nez v3, :cond_2

    .line 1304
    :try_start_4
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 1305
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager;->clearFileCache(J)V

    .line 1308
    .end local v3    # "success":Z
    :cond_2
    goto :goto_2

    .line 1302
    .restart local v3    # "success":Z
    :catchall_1
    move-exception v4

    if-nez v3, :cond_3

    .line 1304
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 1305
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager;->clearFileCache(J)V

    :cond_3
    nop

    .end local v0    # "fileId":Ljava/lang/Long;
    .end local v1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p1    # "fileNum":J
    throw v4

    .line 1314
    .end local v3    # "success":Z
    .restart local v0    # "fileId":Ljava/lang/Long;
    .restart local v1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p1    # "fileNum":J
    :cond_4
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileHandle;->latchNoWait()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1321
    move-object v3, v1

    .line 1322
    .local v3, "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    new-instance v10, Lcom/sleepycat/je/log/FileManager$5;

    iget-object v6, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1323
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/je/log/FileManager;->getFileNumberString(J)Ljava/lang/String;

    move-result-object v9

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/je/log/FileManager$5;-><init>(Lcom/sleepycat/je/log/FileManager;Lcom/sleepycat/je/dbi/EnvironmentImpl;JLjava/lang/String;)V

    move-object v1, v10

    .line 1336
    sget-object v4, Lcom/sleepycat/je/log/FileManager$FileMode;->READ_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;

    invoke-direct {p0, v1, v4, v3}, Lcom/sleepycat/je/log/FileManager;->openFileHandle(Lcom/sleepycat/je/log/FileHandle;Lcom/sleepycat/je/log/FileManager$FileMode;Lcom/sleepycat/je/log/FileHandle;)V

    .line 1346
    .end local v3    # "existingHandle":Lcom/sleepycat/je/log/FileHandle;
    :cond_5
    :goto_2
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileHandle;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v3

    if-nez v3, :cond_6

    .line 1347
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileHandle;->release()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1351
    .end local v2    # "newHandle":Z
    goto :goto_0

    .line 1358
    :cond_6
    nop

    .line 1360
    return-object v1

    .line 1355
    :catch_0
    move-exception v2

    .line 1356
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v4, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v5, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_READ:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v3, v4, v5, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v3

    .line 1352
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1354
    .local v2, "e":Ljava/io/FileNotFoundException;
    throw v2
.end method

.method public getFileHeaderPrevOffset(J)J
    .locals 2
    .param p1, "fileNum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 1640
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager;->readHeader(J)Lcom/sleepycat/je/log/FileHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHeader;->getLastEntryInPrevFileOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileHeaderTimestamp(J)Lcom/sleepycat/je/utilint/Timestamp;
    .locals 1
    .param p1, "fileNum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 1650
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager;->readHeader(J)Lcom/sleepycat/je/log/FileHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHeader;->getTimestamp()Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getFileLogVersion(J)I
    .locals 4
    .param p1, "fileNum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1225
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager;->getFileHandle(J)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v0

    .line 1226
    .local v0, "handle":Lcom/sleepycat/je/log/FileHandle;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->getLogVersion()I

    move-result v1

    .line 1227
    .local v1, "logVersion":I
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->release()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    return v1

    .line 1232
    .end local v0    # "handle":Lcom/sleepycat/je/log/FileHandle;
    .end local v1    # "logVersion":I
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1

    .line 1229
    .end local v0    # "e":Lcom/sleepycat/je/log/ChecksumException;
    :catch_1
    move-exception v0

    .line 1230
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFirstFileNum()Ljava/lang/Long;
    .locals 1

    .line 512
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/FileManager;->getFileNum(Z)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getFollowingFileNum(JZ)Ljava/lang/Long;
    .locals 10
    .param p1, "curFile"    # J
    .param p3, "forward"    # Z

    .line 608
    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 609
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 610
    return-object v2

    .line 612
    :cond_0
    add-long/2addr v0, p1

    .local v0, "tryFile":J
    goto :goto_0

    .line 614
    .end local v0    # "tryFile":J
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_2

    .line 615
    return-object v2

    .line 617
    :cond_2
    sub-long v0, p1, v0

    .line 620
    .restart local v0    # "tryFile":J
    :goto_0
    const-string v3, ".jdb"

    invoke-virtual {p0, v0, v1, v3}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 621
    .local v4, "tryName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 622
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 626
    :cond_3
    sget-object v5, Lcom/sleepycat/je/log/FileManager;->JE_SUFFIXES:[Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/sleepycat/je/log/FileManager;->listFileNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 629
    .local v5, "names":[Ljava/lang/String;
    invoke-static {p1, p2, v3}, Lcom/sleepycat/je/log/FileManager;->getFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "searchName":Ljava/lang/String;
    sget-object v6, Lcom/sleepycat/je/log/FileManager;->stringComparator:Ljava/util/Comparator;

    invoke-static {v5, v3, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v6

    .line 632
    .local v6, "foundIdx":I
    const/4 v7, 0x0

    .line 633
    .local v7, "foundTarget":Z
    const/4 v8, -0x1

    if-ltz v6, :cond_5

    .line 634
    if-eqz p3, :cond_4

    .line 635
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 637
    :cond_4
    add-int/2addr v6, v8

    goto :goto_1

    .line 645
    :cond_5
    add-int/lit8 v9, v6, 0x1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 646
    if-nez p3, :cond_6

    .line 647
    add-int/lit8 v6, v6, -0x1

    .line 652
    :cond_6
    :goto_1
    if-eqz p3, :cond_7

    array-length v9, v5

    if-ge v6, v9, :cond_7

    .line 653
    const/4 v7, 0x1

    goto :goto_2

    .line 654
    :cond_7
    if-nez p3, :cond_8

    if-le v6, v8, :cond_8

    .line 655
    const/4 v7, 0x1

    .line 658
    :cond_8
    :goto_2
    if-eqz v7, :cond_9

    .line 659
    aget-object v2, v5, v6

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/log/FileManager;->getNumFromName(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 661
    :cond_9
    return-object v2
.end method

.method public getFullFileName(J)Ljava/lang/String;
    .locals 1
    .param p1, "fileNum"    # J

    .line 1026
    const-string v0, ".jdb"

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullFileName(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileNum"    # J
    .param p3, "suffix"    # Ljava/lang/String;

    .line 1033
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager;->getDataDir(J)Ljava/io/File;

    move-result-object v0

    .line 1034
    .local v0, "dbEnvDataDir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lcom/sleepycat/je/log/FileManager;->getFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFullFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .line 1054
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1055
    .local v0, "suffixStartPos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1056
    .local v1, "suffix":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1057
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1059
    .local v2, "fileNum":Ljava/lang/String;
    const/16 v3, 0x10

    .line 1060
    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v1}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1059
    return-object v3

    .line 1056
    .end local v2    # "fileNum":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method getFullFileNames(J)[Ljava/lang/String;
    .locals 4
    .param p1, "fileNum"    # J

    .line 1008
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FileManager;->includeDeletedFiles:Z

    if-eqz v0, :cond_1

    .line 1009
    sget-object v0, Lcom/sleepycat/je/log/FileManager;->JE_AND_DEL_SUFFIXES:[Ljava/lang/String;

    array-length v0, v0

    .line 1010
    .local v0, "nSuffixes":I
    new-array v1, v0, [Ljava/lang/String;

    .line 1011
    .local v1, "ret":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1012
    sget-object v3, Lcom/sleepycat/je/log/FileManager;->JE_AND_DEL_SUFFIXES:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p0, p1, p2, v3}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1011
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1014
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1016
    .end local v0    # "nSuffixes":I
    .end local v1    # "ret":[Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".jdb"

    invoke-virtual {p0, p1, p2, v2}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getLastFileNum()Ljava/lang/Long;
    .locals 1

    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/FileManager;->getFileNum(Z)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLastUsedLsn()J
    .locals 2

    .line 2652
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileManager;->lastUsedLsn:J

    return-wide v0
.end method

.method public getNextLsn()J
    .locals 2

    .line 2643
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileManager;->nextAvailableLsn:J

    return-wide v0
.end method

.method public getNumFromName(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 714
    move-object v0, p1

    .line 715
    .local v0, "name":Ljava/lang/String;
    iget v1, p0, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    if-eqz v1, :cond_0

    .line 716
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 718
    :cond_0
    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, "fileNumber":Ljava/lang/String;
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public getPartialFileName(J)Ljava/lang/String;
    .locals 4
    .param p1, "fileNum"    # J

    .line 1041
    const-string v0, ".jdb"

    invoke-static {p1, p2, v0}, Lcom/sleepycat/je/log/FileManager;->getFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, "name":Ljava/lang/String;
    iget v1, p0, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    if-nez v1, :cond_0

    .line 1043
    return-object v0

    .line 1045
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager;->getDataDir(J)Ljava/io/File;

    move-result-object v1

    .line 1046
    .local v1, "dataDir":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getReadOnly()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FileManager;->readOnly:Z

    return v0
.end method

.method getUseWriteQueue()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FileManager;->useWriteQueue:Z

    return v0
.end method

.method public hasQueuedWrites()Z
    .locals 1

    .line 2171
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->hasQueuedWrites()Z

    move-result v0

    return v0
.end method

.method public isFileValid(J)Z
    .locals 3
    .param p1, "fileNum"    # J

    .line 553
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileManager;->currentFileNum:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    const-string v0, ".jdb"

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2

    .line 554
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public listFileNames(JJ)[Ljava/lang/String;
    .locals 7
    .param p1, "minFileNumber"    # J
    .param p3, "maxFileNumber"    # J

    .line 742
    new-instance v6, Lcom/sleepycat/je/log/JEFileFilter;

    sget-object v1, Lcom/sleepycat/je/log/FileManager;->JE_SUFFIXES:[Ljava/lang/String;

    move-object v0, v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/log/JEFileFilter;-><init>([Ljava/lang/String;JJ)V

    .line 744
    .local v0, "fileFilter":Lcom/sleepycat/je/log/JEFileFilter;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/FileManager;->listFileNamesInternal(Lcom/sleepycat/je/log/JEFileFilter;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method listFileNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "suffixes"    # [Ljava/lang/String;

    .line 730
    new-instance v0, Lcom/sleepycat/je/log/JEFileFilter;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/log/JEFileFilter;-><init>([Ljava/lang/String;)V

    .line 731
    .local v0, "fileFilter":Lcom/sleepycat/je/log/JEFileFilter;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/FileManager;->listFileNamesInternal(Lcom/sleepycat/je/log/JEFileFilter;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public listJDBFiles()[Ljava/io/File;
    .locals 2

    .line 822
    iget v0, p0, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    if-nez v0, :cond_0

    .line 823
    new-instance v0, Lcom/sleepycat/je/log/JEFileFilter;

    sget-object v1, Lcom/sleepycat/je/log/FileManager;->JE_SUFFIXES:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/log/JEFileFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/log/FileManager;->listJDBFilesInternalSingleDir(Lcom/sleepycat/je/log/JEFileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 825
    :cond_0
    new-instance v0, Lcom/sleepycat/je/log/JEFileFilter;

    sget-object v1, Lcom/sleepycat/je/log/FileManager;->JE_SUFFIXES:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/log/JEFileFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/log/FileManager;->listJDBFilesInternalMultiDir(Lcom/sleepycat/je/log/JEFileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public listJDBFilesInternalMultiDir(Lcom/sleepycat/je/log/JEFileFilter;)[Ljava/io/File;
    .locals 12
    .param p1, "fileFilter"    # Lcom/sleepycat/je/log/JEFileFilter;

    .line 841
    iget v0, p0, Lcom/sleepycat/je/log/FileManager;->nDataDirs:I

    new-array v0, v0, [[Ljava/io/File;

    .line 842
    .local v0, "files":[[Ljava/io/File;
    const/4 v1, 0x0

    .line 843
    .local v1, "nTotalFiles":I
    const/4 v2, 0x0

    .line 844
    .local v2, "i":I
    iget-object v3, p0, Lcom/sleepycat/je/log/FileManager;->dbEnvDataDirs:[Ljava/io/File;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 845
    .local v7, "envDir":Ljava/io/File;
    invoke-virtual {v7, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v8

    aput-object v8, v0, v2

    .line 846
    aget-object v8, v0, v2

    array-length v8, v8

    add-int/2addr v1, v8

    .line 847
    nop

    .end local v7    # "envDir":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    .line 844
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 850
    :cond_0
    if-nez v1, :cond_1

    .line 851
    new-array v3, v5, [Ljava/io/File;

    return-object v3

    .line 854
    :cond_1
    new-array v3, v1, [Ljava/io/File;

    .line 855
    .local v3, "ret":[Ljava/io/File;
    const/4 v2, 0x0

    .line 856
    array-length v4, v0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_3

    aget-object v7, v0, v6

    .line 857
    .local v7, "envFiles":[Ljava/io/File;
    array-length v8, v7

    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 858
    .local v10, "envFile":Ljava/io/File;
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "i":I
    .local v11, "i":I
    aput-object v10, v3, v2

    .line 857
    .end local v10    # "envFile":Ljava/io/File;
    add-int/lit8 v9, v9, 0x1

    move v2, v11

    goto :goto_2

    .line 856
    .end local v7    # "envFiles":[Ljava/io/File;
    .end local v11    # "i":I
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 862
    :cond_3
    sget-object v4, Lcom/sleepycat/je/log/FileManager;->fileComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 863
    return-object v3
.end method

.method public listJDBFilesInternalSingleDir(Lcom/sleepycat/je/log/JEFileFilter;)[Ljava/io/File;
    .locals 2
    .param p1, "fileFilter"    # Lcom/sleepycat/je/log/JEFileFilter;

    .line 830
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->dbEnvHome:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 831
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 832
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0

    .line 834
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/io/File;

    .line 837
    :goto_0
    return-object v0
.end method

.method loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 2656
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->nOpenFiles:Lcom/sleepycat/je/utilint/IntStat;

    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager;->fileCache:Lcom/sleepycat/je/log/FileManager$FileCache;

    invoke-static {v1}, Lcom/sleepycat/je/log/FileManager$FileCache;->access$700(Lcom/sleepycat/je/log/FileManager$FileCache;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/IntStat;->set(Ljava/lang/Integer;)V

    .line 2657
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    .line 2659
    .local v0, "copyStats":Lcom/sleepycat/je/utilint/StatGroup;
    return-object v0
.end method

.method public lockEnvironment(ZZ)Z
    .locals 8
    .param p1, "rdOnly"    # Z
    .param p2, "exclusive"    # Z

    .line 2307
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/log/FileManager;->checkEnvHomePermissions(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2308
    return v1

    .line 2311
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->lockFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 2312
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sleepycat/je/log/FileManager;->dbEnvHome:Ljava/io/File;

    const-string v4, "je.lck"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v3, Lcom/sleepycat/je/log/FileManager$FileMode;->READWRITE_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;

    .line 2315
    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileManager$FileMode;->getModeValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/log/FileManager;->lockFile:Ljava/io/RandomAccessFile;

    .line 2318
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->lockFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/log/FileManager;->channel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2321
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 2327
    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/log/FileManager;->exclLock:Ljava/nio/channels/FileLock;

    .line 2328
    if-nez v2, :cond_2

    .line 2329
    return v0

    .line 2331
    :cond_2
    return v1

    .line 2342
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2333
    :cond_3
    if-eqz p1, :cond_4

    .line 2334
    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/log/FileManager;->envLock:Ljava/nio/channels/FileLock;

    goto :goto_0

    .line 2336
    :cond_4
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/log/FileManager;->envLock:Ljava/nio/channels/FileLock;

    .line 2338
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->envLock:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_5

    .line 2339
    return v0

    .line 2341
    :cond_5
    return v1

    .line 2343
    .local v1, "e":Ljava/nio/channels/OverlappingFileLockException;
    :goto_1
    return v0

    .line 2345
    .end local v1    # "e":Ljava/nio/channels/OverlappingFileLockException;
    :catch_1
    move-exception v0

    .line 2346
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public makeInvisible(JLjava/util/List;)V
    .locals 10
    .param p1, "fileNum"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 2513
    .local p3, "lsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string v0, "Closing after invisibility cloaking: file "

    const-string v1, " for invisible marking "

    const-string v2, "Opening file "

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2514
    return-void

    .line 2518
    :cond_0
    const/4 v3, 0x0

    .line 2525
    .local v3, "handle":Lcom/sleepycat/je/log/FileHandle;
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FileManager;->getAppropriateReadWriteMode()Lcom/sleepycat/je/log/FileManager$FileMode;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4}, Lcom/sleepycat/je/log/FileManager;->makeFileHandle(JLcom/sleepycat/je/log/FileManager$FileMode;)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v1
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2534
    .end local v3    # "handle":Lcom/sleepycat/je/log/FileHandle;
    .local v1, "handle":Lcom/sleepycat/je/log/FileHandle;
    nop

    .line 2535
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileHandle;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v2

    .line 2539
    .local v2, "file":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2540
    .local v4, "lsn":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    .line 2554
    nop

    .line 2555
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v5

    const-wide/16 v7, 0x5

    add-long/2addr v5, v7

    long-to-int v5, v5

    .line 2556
    .local v5, "entryFlagsOffset":I
    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2557
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v6

    .line 2558
    .local v6, "flags":B
    invoke-static {v6}, Lcom/sleepycat/je/log/LogEntryHeader;->makeInvisible(B)B

    move-result v7

    .line 2559
    .local v7, "newFlags":B
    int-to-long v8, v5

    invoke-virtual {v2, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2560
    invoke-virtual {v2, v7}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 2561
    .end local v4    # "lsn":Ljava/lang/Long;
    .end local v5    # "entryFlagsOffset":I
    .end local v6    # "flags":B
    .end local v7    # "newFlags":B
    goto :goto_0

    .line 2548
    .restart local v4    # "lsn":Ljava/lang/Long;
    :cond_1
    new-instance v3, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v5, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_STATE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LSN of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2550
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not match file number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .end local v1    # "handle":Lcom/sleepycat/je/log/FileHandle;
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .end local p1    # "fileNum":J
    .end local p3    # "lsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2573
    .end local v4    # "lsn":Ljava/lang/Long;
    .restart local v1    # "handle":Lcom/sleepycat/je/log/FileHandle;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local p1    # "fileNum":J
    .restart local p3    # "lsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2578
    nop

    .line 2580
    return-void

    .line 2574
    :catch_0
    move-exception v3

    .line 2575
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v5, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_WRITE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0, v3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2572
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 2562
    :catch_1
    move-exception v3

    .line 2563
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v5, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_WRITE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Flipping invisibility in file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "handle":Lcom/sleepycat/je/log/FileHandle;
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .end local p1    # "fileNum":J
    .end local p3    # "lsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2573
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "handle":Lcom/sleepycat/je/log/FileHandle;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local p1    # "fileNum":J
    .restart local p3    # "lsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2578
    nop

    .line 2575
    throw v3

    .line 2574
    :catch_2
    move-exception v3

    .line 2575
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v4, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v5, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_WRITE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0, v3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2530
    .end local v1    # "handle":Lcom/sleepycat/je/log/FileHandle;
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .local v3, "handle":Lcom/sleepycat/je/log/FileHandle;
    :catch_3
    move-exception v0

    .line 2531
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v5, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2526
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 2527
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    new-instance v4, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v5, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public noteFsyncTime(J)Z
    .locals 1
    .param p1, "fSyncMs"    # J

    .line 3407
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->nLogFSyncs:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 3408
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->fSyncAvgMs:Lcom/sleepycat/je/utilint/LongAvgStat;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/utilint/LongAvgStat;->add(J)V

    .line 3409
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->fSync95Ms:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->add(J)V

    .line 3410
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->fSync99Ms:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->add(J)V

    .line 3411
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->fSyncMaxMs:Lcom/sleepycat/je/utilint/LongMaxZeroStat;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/utilint/LongMaxZeroStat;->setMax(J)Z

    move-result v0

    return v0
.end method

.method public openFileReadWrite(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 5
    .param p1, "fullPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1203
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1205
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager;->fileUpdateMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1207
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1212
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 1214
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FileManager;->getAppropriateReadWriteMode()Lcom/sleepycat/je/log/FileManager$FileMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileManager$FileMode;->getModeValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    monitor-exit v1

    .line 1212
    return-object v2

    .line 1208
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1209
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .end local p1    # "fullPath":Ljava/lang/String;
    throw v2

    .line 1215
    .restart local v0    # "file":Ljava/io/File;
    .restart local p1    # "fullPath":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method readFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V
    .locals 8
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "readBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # J
    .param p5, "fileNo"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1923
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sleepycat/je/log/FileManager;->readFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)Z

    .line 1925
    return-void
.end method

.method readFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)Z
    .locals 8
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "readBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # J
    .param p5, "fileNo"    # J
    .param p7, "dataKnownToBeInFile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1950
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FileManager;->useWriteQueue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    .line 1951
    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->checkWriteCache(Ljava/nio/ByteBuffer;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1952
    return v1

    .line 1974
    :cond_0
    const/4 v0, 0x1

    .line 1975
    .local v0, "readThisFile":Z
    const/4 v2, 0x0

    if-nez p7, :cond_2

    .line 1982
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    cmp-long v3, p3, v3

    if-gez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    move v0, v3

    .line 1985
    :cond_2
    if-eqz v0, :cond_3

    .line 1986
    invoke-direct/range {p0 .. p6}, Lcom/sleepycat/je/log/FileManager;->readFromFileInternal(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1987
    return v1

    .line 1990
    :cond_3
    return v2

    .line 1999
    .end local v0    # "readThisFile":Z
    :catch_0
    move-exception v0

    .line 2000
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_READ:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1

    .line 1991
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1997
    .local v0, "e":Ljava/nio/channels/ClosedChannelException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "Channel closed, may be due to thread interrupt"

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public releaseExclusiveLock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2355
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->exclLock:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 2356
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2361
    :cond_0
    nop

    .line 2362
    return-void

    .line 2358
    :catch_0
    move-exception v0

    .line 2359
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public renameFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p1, "fileNum"    # J
    .param p3, "newSuffix"    # Ljava/lang/String;
    .param p4, "subDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1114
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager;->getDataDir(J)Ljava/io/File;

    move-result-object v0

    .line 1115
    .local v0, "oldDir":Ljava/io/File;
    invoke-static {p1, p2}, Lcom/sleepycat/je/log/FileManager;->getFileName(J)Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, "oldName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1118
    .local v2, "oldFile":Ljava/io/File;
    if-eqz p4, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 1121
    .local v3, "newDir":Ljava/io/File;
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/sleepycat/je/log/FileManager;->getFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1123
    .local v4, "newName":Ljava/lang/String;
    const-string v5, ""

    .line 1124
    .local v5, "generation":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1127
    .local v6, "repeatNum":I
    :goto_1
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1129
    .local v7, "newFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1130
    add-int/lit8 v6, v6, 0x1

    .line 1131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1132
    goto :goto_1

    .line 1141
    :cond_1
    iget-object v8, p0, Lcom/sleepycat/je/log/FileManager;->fdd:Lcom/sleepycat/je/log/FileDeletionDetector;

    if-eqz v8, :cond_2

    .line 1142
    const-string v8, ".jdb"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1143
    iget-object v8, p0, Lcom/sleepycat/je/log/FileManager;->fdd:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-virtual {v8, v1}, Lcom/sleepycat/je/log/FileDeletionDetector;->addDeletedFile(Ljava/lang/String;)V

    .line 1147
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager;->clearFileCache(J)V

    .line 1149
    iget-object v8, p0, Lcom/sleepycat/je/log/FileManager;->fileUpdateMutex:Ljava/lang/Object;

    monitor-enter v8

    .line 1150
    :try_start_0
    invoke-virtual {v2, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    .line 1151
    .local v9, "success":Z
    if-eqz v9, :cond_3

    move-object v10, v7

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    monitor-exit v8

    return-object v10

    .line 1152
    .end local v9    # "success":Z
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public renameFile(JLjava/lang/String;)Z
    .locals 1
    .param p1, "fileNum"    # J
    .param p3, "newSuffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1090
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/log/FileManager;->renameFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setIncludeDeletedFiles(Z)V
    .locals 0
    .param p1, "includeDeletedFiles"    # Z

    .line 564
    iput-boolean p1, p0, Lcom/sleepycat/je/log/FileManager;->includeDeletedFiles:Z

    .line 565
    return-void
.end method

.method public setLastPosition(JJJ)V
    .locals 3
    .param p1, "nextAvailableLsn"    # J
    .param p3, "lastUsedLsn"    # J
    .param p5, "prevOffset"    # J

    .line 488
    iput-wide p3, p0, Lcom/sleepycat/je/log/FileManager;->lastUsedLsn:J

    .line 489
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->perFileLastUsedLsn:Ljava/util/Map;

    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iput-wide p1, p0, Lcom/sleepycat/je/log/FileManager;->nextAvailableLsn:J

    .line 491
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileManager;->nextAvailableLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/FileManager;->currentFileNum:J

    .line 492
    return-void
.end method

.method public setSyncAtFileEnd(Z)V
    .locals 0
    .param p1, "sync"    # Z

    .line 499
    iput-boolean p1, p0, Lcom/sleepycat/je/log/FileManager;->syncAtFileEnd:Z

    .line 500
    return-void
.end method

.method shouldFlipFile(J)Z
    .locals 4
    .param p1, "size"    # J

    .line 1675
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FileManager;->forceNewFile:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/sleepycat/je/log/FileManager;->nextAvailableLsn:J

    .line 1676
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileManager;->maxFileSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1675
    :goto_1
    return v0
.end method

.method public startFileCacheWarmer(J)V
    .locals 12
    .param p1, "recoveryStartLsn"    # J

    .line 2189
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->fileCacheWarmer:Lcom/sleepycat/je/log/FileCacheWarmer;

    if-nez v0, :cond_1

    .line 2191
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 2193
    .local v0, "cm":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FILE_WARM_UP_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    .line 2196
    .local v1, "warmUpSize":I
    if-nez v1, :cond_0

    .line 2197
    return-void

    .line 2200
    :cond_0
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FILE_WARM_UP_BUF_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v10

    .line 2203
    .local v10, "bufSize":I
    new-instance v11, Lcom/sleepycat/je/log/FileCacheWarmer;

    iget-object v3, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-wide v6, p0, Lcom/sleepycat/je/log/FileManager;->lastUsedLsn:J

    move-object v2, v11

    move-wide v4, p1

    move v8, v1

    move v9, v10

    invoke-direct/range {v2 .. v9}, Lcom/sleepycat/je/log/FileCacheWarmer;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;JJII)V

    iput-object v11, p0, Lcom/sleepycat/je/log/FileManager;->fileCacheWarmer:Lcom/sleepycat/je/log/FileCacheWarmer;

    .line 2206
    invoke-virtual {v11}, Lcom/sleepycat/je/log/FileCacheWarmer;->start()V

    .line 2207
    return-void

    .line 2189
    .end local v0    # "cm":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local v1    # "warmUpSize":I
    .end local v10    # "bufSize":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method syncLogEnd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2147
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    invoke-static {v0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->access$500(Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2151
    nop

    .line 2152
    return-void

    .line 2148
    :catch_0
    move-exception v0

    .line 2149
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sleepycat/je/LogWriteException;

    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "IOException during fsync"

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/LogWriteException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method syncLogEndAndFinishFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2161
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FileManager;->syncAtFileEnd:Z

    if-eqz v0, :cond_0

    .line 2162
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FileManager;->syncLogEnd()V

    .line 2164
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->close()V

    .line 2165
    return-void
.end method

.method public testWriteQueueLock()V
    .locals 1

    .line 2178
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    invoke-static {v0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->access$300(Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2179
    return-void
.end method

.method public testWriteQueueUnlock()V
    .locals 1

    .line 2185
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    invoke-static {v0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->access$300(Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2186
    return-void
.end method

.method public truncateLog(JJ)V
    .locals 6
    .param p1, "fileNum"    # J
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2462
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FileManager;->getLastFileNum()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .local v0, "i":J
    :goto_0
    cmp-long v2, v0, p1

    if-ltz v2, :cond_3

    .line 2464
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/log/FileManager;->isFileValid(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2465
    goto :goto_1

    .line 2474
    :cond_0
    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 2475
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/log/FileManager;->truncateSingleFile(JJ)V

    .line 2476
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    .line 2477
    goto :goto_1

    .line 2481
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/log/FileManager;->deleteFile(J)Z

    move-result v2

    .line 2482
    .local v2, "deleted":Z
    if-eqz v2, :cond_2

    .line 2462
    .end local v2    # "deleted":Z
    :goto_1
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    .line 2482
    .restart local v2    # "deleted":Z
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jdb"

    invoke-virtual {p0, v0, v1, v5}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not deleted during truncateLog"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 2485
    .end local v0    # "i":J
    .end local v2    # "deleted":Z
    :cond_3
    return-void
.end method

.method public truncateSingleFile(JJ)V
    .locals 4
    .param p1, "fileNum"    # J
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2430
    nop

    .line 2431
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FileManager;->getAppropriateReadWriteMode()Lcom/sleepycat/je/log/FileManager$FileMode;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/log/FileManager;->makeFileHandle(JLcom/sleepycat/je/log/FileManager$FileMode;)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v0

    .line 2432
    .local v0, "handle":Lcom/sleepycat/je/log/FileHandle;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v1
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2435
    .local v1, "file":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2437
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 2438
    nop

    .line 2440
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->isOldHeaderVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2441
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sleepycat/je/log/FileManager;->forceNewFile:Z

    .line 2446
    .end local v0    # "handle":Lcom/sleepycat/je/log/FileHandle;
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    :cond_0
    nop

    .line 2447
    return-void

    .line 2437
    .restart local v0    # "handle":Lcom/sleepycat/je/log/FileHandle;
    .restart local v1    # "file":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .end local p1    # "fileNum":J
    .end local p3    # "offset":J
    throw v2
    :try_end_2
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2443
    .end local v0    # "handle":Lcom/sleepycat/je/log/FileHandle;
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    .restart local p1    # "fileNum":J
    .restart local p3    # "offset":J
    :catch_0
    move-exception v0

    .line 2444
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1
.end method

.method writeLogBuffer(Lcom/sleepycat/je/log/LogBuffer;Z)V
    .locals 14
    .param p1, "fullBuffer"    # Lcom/sleepycat/je/log/LogBuffer;
    .param p2, "flushWriteQueue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1747
    move-object v9, p0

    iget-object v0, v9, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V

    .line 1752
    iget-object v0, v9, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mayNotWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1753
    return-void

    .line 1757
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogBuffer;->getFirstLsn()J

    move-result-wide v10

    .line 1763
    .local v10, "firstLsn":J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_5

    .line 1765
    iget-object v0, v9, Lcom/sleepycat/je/log/FileManager;->endOfLog:Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    .line 1766
    invoke-static {v10, v11}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->access$200(Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;JZ)Ljava/io/RandomAccessFile;

    move-result-object v12

    .line 1767
    .local v12, "file":Ljava/io/RandomAccessFile;
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogBuffer;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 1775
    .local v13, "data":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogBuffer;->getRewriteAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1776
    invoke-static {v10, v11}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v0

    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 1777
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    invoke-static {}, Lcom/sleepycat/je/log/FileManager;->firstLogEntryOffset()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 1775
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileManager would overwrite non-empty file 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1779
    invoke-static {v10, v11}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lsnOffset=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1781
    invoke-static {v10, v11}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileLength=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1783
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v10    # "firstLsn":J
    .end local v12    # "file":Ljava/io/RandomAccessFile;
    .end local v13    # "data":Ljava/nio/ByteBuffer;
    .end local p1    # "fullBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .end local p2    # "flushWriteQueue":Z
    throw v0

    .line 1785
    .restart local v10    # "firstLsn":J
    .restart local v12    # "file":Ljava/io/RandomAccessFile;
    .restart local v13    # "data":Ljava/nio/ByteBuffer;
    .restart local p1    # "fullBuffer":Lcom/sleepycat/je/log/LogBuffer;
    .restart local p2    # "flushWriteQueue":Z
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/sleepycat/je/log/FileManager;->LOGWRITE_EXCEPTION_TESTING:Z

    if-eqz v0, :cond_3

    .line 1786
    nop

    .line 1787
    invoke-static {v10, v11}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v4

    .line 1788
    invoke-static {v10, v11}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v6

    .line 1787
    move-object v1, p0

    move-object v2, v12

    move-object v3, v13

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/FileManager;->generateLogWriteException(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V

    .line 1790
    :cond_3
    invoke-static {v10, v11}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v4

    .line 1791
    invoke-static {v10, v11}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v6

    .line 1790
    move-object v1, p0

    move-object v2, v12

    move-object v3, v13

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/log/FileManager;->writeToFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)I
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1804
    nop

    .line 1806
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maybeForceYield()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1802
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1793
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1803
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    new-instance v1, Lcom/sleepycat/je/LogWriteException;

    iget-object v2, v9, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/LogWriteException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1

    .line 1799
    .local v0, "e":Ljava/nio/channels/ClosedChannelException;
    :goto_2
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, v9, Lcom/sleepycat/je/log/FileManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "File closed, may be due to thread interrupt"

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1808
    .end local v0    # "e":Ljava/nio/channels/ClosedChannelException;
    .end local v12    # "file":Ljava/io/RandomAccessFile;
    .end local v13    # "data":Ljava/nio/ByteBuffer;
    :cond_5
    :goto_3
    return-void
.end method
