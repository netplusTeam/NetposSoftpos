.class public Lcom/sleepycat/je/cleaner/DataEraser;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "DataEraser.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/EnvConfigObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;,
        Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;,
        Lcom/sleepycat/je/cleaner/DataEraser$AbortCurrentFileException;,
        Lcom/sleepycat/je/cleaner/DataEraser$ShutdownRequestedException;,
        Lcom/sleepycat/je/cleaner/DataEraser$PeriodChangedException;,
        Lcom/sleepycat/je/cleaner/DataEraser$ErasureDisabledException;,
        Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;,
        Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;,
        Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field private static final FOREVER_TIMEOUT_MS:I = 0x493e0

.field private static final FSYNC1_WORK_PCT:I = 0x12

.field private static final FSYNC2_WORK_PCT:I = 0x10

.field private static final FSYNC3_WORK_PCT:I = 0x10

.field private static final MAX_FILE_INFO_MS:I = 0x3e8

.field private static final MAX_SLEEP_MS:I = 0x64

.field private static final MIN_WORK_DELAY_MS:I = 0x5

.field private static final NO_UNPROTECTED_FILES_DELAY_MS:I = 0x3e8

.field private static final TEST_ERASE_PERIOD:Ljava/lang/String; = "test.erasePeriod"

.field private static final WRITE_WORK_PCT:I = 0x32

.field private static testEventHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private abortCurrentFile:Z

.field private abortTimeoutMs:I

.field private final cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

.field private volatile completionTime:J

.field private volatile currentFile:Ljava/lang/Long;

.field private final currentFileMutex:Ljava/lang/Object;

.field private volatile cycleMs:J

.field private cycleThrottle:Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

.field private volatile enabled:Z

.field private volatile endTime:J

.field private eraseDeletedDbs:Z

.field private eraseExtinctRecords:Z

.field private eraseOffsets:[J

.field private eraseSizes:[I

.field private final fSyncs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final fileInfoCache:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final fileManager:Lcom/sleepycat/je/log/FileManager;

.field private final fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

.field private final filesAlreadyDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

.field private filesCompleted:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final filesDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final filesErased:Ljava/util/concurrent/atomic/AtomicInteger;

.field private filesRemaining:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastProtectedFilesMsg:Ljava/lang/String;

.field private lastProtectedFilesMsgLevel:Ljava/util/logging/Level;

.field private final logger:Ljava/util/logging/Logger;

.field private pollCheckMs:I

.field private final pollMutex:Ljava/lang/Object;

.field private final readBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final reads:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile shutdownRequested:Z

.field private volatile startTime:J

.field private terminateMillis:I

.field private totalCycleWork:J

.field private final writeBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final writes:Ljava/util/concurrent/atomic/AtomicLong;

.field private zeros:[B


# direct methods
.method public static synthetic $r8$lambda$U4h_TVFaP23gpiqRbpHEgao-WMs(Lcom/sleepycat/je/cleaner/DataEraser;)V
    .locals 0

    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkContinue()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 443
    nop

    .line 454
    invoke-static {}, Lcom/sleepycat/je/utilint/TracerFormatter;->makeDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/cleaner/DataEraser;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 453
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 510
    const-string v0, "JEErasure"

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->shutdownRequested:Z

    .line 466
    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->enabled:Z

    .line 468
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->cycleMs:J

    .line 469
    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseDeletedDbs:Z

    .line 470
    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseExtinctRecords:Z

    .line 472
    const/16 v0, 0x1400

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseOffsets:[J

    .line 473
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseSizes:[I

    .line 474
    const/16 v0, 0x2800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->zeros:[B

    .line 475
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollMutex:Ljava/lang/Object;

    .line 476
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileInfoCache:Ljava/util/NavigableMap;

    .line 489
    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    .line 490
    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesCompleted:Ljava/util/NavigableSet;

    .line 491
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesErased:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 492
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 493
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesAlreadyDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 494
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fSyncs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 495
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->reads:Ljava/util/concurrent/atomic/AtomicLong;

    .line 496
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->readBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 497
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->writes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 498
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->writeBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 503
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFileMutex:Ljava/lang/Object;

    .line 511
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    .line 512
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    .line 513
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 514
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    .line 516
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/cleaner/DataEraser;->envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 517
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 518
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/cleaner/DataEraser;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->reads:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/cleaner/DataEraser;)Lcom/sleepycat/je/cleaner/Cleaner;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sleepycat/je/cleaner/DataEraser;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 443
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->startTime:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/sleepycat/je/cleaner/DataEraser;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 443
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->endTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/sleepycat/je/cleaner/DataEraser;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 443
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->completionTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/sleepycat/je/cleaner/DataEraser;)Ljava/util/NavigableSet;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesCompleted:Ljava/util/NavigableSet;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sleepycat/je/cleaner/DataEraser;)Ljava/util/NavigableSet;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    return-object v0
.end method

.method static synthetic access$1600(J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # J

    .line 443
    invoke-static {p0, p1}, Lcom/sleepycat/je/cleaner/DataEraser;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/cleaner/DataEraser;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->readBytes:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/cleaner/DataEraser;)Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->cycleThrottle:Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/cleaner/DataEraser;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 443
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkContinue()V

    return-void
.end method

.method static synthetic access$500(Lcom/sleepycat/je/cleaner/DataEraser;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sleepycat/je/cleaner/DataEraser;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 443
    iget v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollCheckMs:I

    return v0
.end method

.method static synthetic access$700(Lcom/sleepycat/je/cleaner/DataEraser;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollMutex:Ljava/lang/Object;

    return-object v0
.end method

.method private addEraseEntry(IJI)I
    .locals 4
    .param p1, "n"    # I
    .param p2, "offset"    # J
    .param p4, "size"    # I

    .line 1694
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseOffsets:[J

    array-length v1, v0

    if-ne p1, v1, :cond_0

    .line 1697
    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [J

    .line 1698
    .local v1, "newOffsets":[J
    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1699
    iput-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseOffsets:[J

    .line 1701
    array-length v0, v1

    new-array v0, v0, [I

    .line 1702
    .local v0, "newSizes":[I
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseSizes:[I

    invoke-static {v3, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1703
    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseSizes:[I

    .line 1706
    .end local v0    # "newSizes":[I
    .end local v1    # "newOffsets":[J
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseOffsets:[J

    aput-wide p2, v0, p1

    .line 1707
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseSizes:[I

    aput p4, v0, p1

    .line 1708
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private callTestEventHook(Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;)V
    .locals 2
    .param p1, "type"    # Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    .line 2211
    sget-object v0, Lcom/sleepycat/je/cleaner/DataEraser;->testEventHook:Lcom/sleepycat/je/utilint/TestHook;

    if-nez v0, :cond_0

    .line 2212
    return-void

    .line 2215
    :cond_0
    new-instance v1, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;

    invoke-direct {v1, p1, p0}, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;-><init>(Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;Lcom/sleepycat/je/cleaner/DataEraser;)V

    invoke-interface {v0, v1}, Lcom/sleepycat/je/utilint/TestHook;->doHook(Ljava/lang/Object;)V

    .line 2216
    return-void
.end method

.method private checkContinue()V
    .locals 6

    .line 1921
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkShutdown()V

    .line 1923
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1927
    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->endTime:J

    iget-wide v4, p0, Lcom/sleepycat/je/cleaner/DataEraser;->startTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/sleepycat/je/cleaner/DataEraser;->cycleMs:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 1931
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFileMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1932
    :try_start_0
    iget-boolean v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->abortCurrentFile:Z

    if-nez v2, :cond_0

    .line 1938
    monitor-exit v0

    .line 1939
    return-void

    .line 1933
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFile:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1934
    .local v2, "file":J
    iput-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFile:Ljava/lang/Long;

    .line 1935
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->abortCurrentFile:Z

    .line 1936
    new-instance v1, Lcom/sleepycat/je/cleaner/DataEraser$AbortCurrentFileException;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/cleaner/DataEraser$AbortCurrentFileException;-><init>(J)V

    throw v1

    .line 1938
    .end local v2    # "file":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1928
    :cond_1
    new-instance v0, Lcom/sleepycat/je/cleaner/DataEraser$PeriodChangedException;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/cleaner/DataEraser$PeriodChangedException;-><init>(Lcom/sleepycat/je/cleaner/DataEraser$1;)V

    throw v0

    .line 1924
    :cond_2
    new-instance v0, Lcom/sleepycat/je/cleaner/DataEraser$ErasureDisabledException;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/cleaner/DataEraser$ErasureDisabledException;-><init>(Lcom/sleepycat/je/cleaner/DataEraser$1;)V

    throw v0
.end method

.method private checkForCycleEnd()Z
    .locals 4

    .line 1943
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->endTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1944
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1945
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->logCycleComplete()V

    goto :goto_0

    .line 1947
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->logCycleIncomplete()V

    .line 1949
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1952
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkShutdown()V
    .locals 2

    .line 1914
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->shutdownRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1917
    return-void

    .line 1915
    :cond_0
    new-instance v0, Lcom/sleepycat/je/cleaner/DataEraser$ShutdownRequestedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/je/cleaner/DataEraser$ShutdownRequestedException;-><init>(Lcom/sleepycat/je/cleaner/DataEraser$1;)V

    throw v0
.end method

.method private clearCurrentFile()V
    .locals 2

    .line 1048
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFileMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFile:Ljava/lang/Long;

    .line 1050
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->abortCurrentFile:Z

    .line 1051
    monitor-exit v0

    .line 1052
    return-void

    .line 1051
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createFileInfoThrottle(IJ)Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;
    .locals 10
    .param p1, "files"    # I
    .param p2, "localCycleMs"    # J

    .line 852
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 856
    .local v0, "workTime":J
    new-instance v2, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    int-to-long v6, p1

    move-object v4, v2

    move-object v5, p0

    move-wide v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;-><init>(Lcom/sleepycat/je/cleaner/DataEraser;JJ)V

    return-object v2
.end method

.method private eraseEntries(Ljava/io/RandomAccessFile;JI)V
    .locals 20
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "fileLength"    # J
    .param p4, "entries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1765
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    if-nez v2, :cond_0

    .line 1766
    return-void

    .line 1769
    :cond_0
    const-wide/16 v3, 0x12

    mul-long v3, v3, p2

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    .line 1770
    .local v3, "fsync1Work":J
    const-wide/16 v7, 0x10

    mul-long v9, p2, v7

    div-long/2addr v9, v5

    .line 1771
    .local v9, "fsync2Work":J
    mul-long v7, v7, p2

    div-long/2addr v7, v5

    .line 1772
    .local v7, "fsync3Work":J
    const-wide/16 v11, 0x32

    mul-long v11, v11, p2

    div-long/2addr v11, v5

    int-to-long v5, v2

    div-long/2addr v11, v5

    .line 1775
    .local v11, "writeWork":J
    int-to-long v5, v2

    mul-long/2addr v5, v11

    add-long/2addr v5, v3

    add-long/2addr v5, v9

    add-long/2addr v5, v7

    sub-long v5, p2, v5

    .line 1783
    .local v5, "extraWork":J
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkContinue()V

    .line 1784
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 1785
    iget-object v13, v0, Lcom/sleepycat/je/cleaner/DataEraser;->fSyncs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1786
    iget-object v13, v0, Lcom/sleepycat/je/cleaner/DataEraser;->cycleThrottle:Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    invoke-virtual {v13, v9, v10}, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->throttle(J)V

    .line 1788
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v2, :cond_2

    .line 1790
    iget-object v15, v0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseOffsets:[J

    aget-wide v14, v15, v13

    .line 1791
    .local v14, "offset":J
    iget-object v2, v0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseSizes:[I

    aget v2, v2, v13

    .line 1793
    .local v2, "size":I
    move-wide/from16 v16, v3

    .end local v3    # "fsync1Work":J
    .local v16, "fsync1Work":J
    iget-object v3, v0, Lcom/sleepycat/je/cleaner/DataEraser;->zeros:[B

    array-length v3, v3

    if-ge v3, v2, :cond_1

    .line 1794
    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/sleepycat/je/cleaner/DataEraser;->zeros:[B

    .line 1797
    :cond_1
    invoke-virtual {v1, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1798
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkContinue()V

    .line 1799
    iget-object v3, v0, Lcom/sleepycat/je/cleaner/DataEraser;->zeros:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1800
    iget-object v3, v0, Lcom/sleepycat/je/cleaner/DataEraser;->writes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1801
    iget-object v3, v0, Lcom/sleepycat/je/cleaner/DataEraser;->writeBytes:Ljava/util/concurrent/atomic/AtomicLong;

    move-wide/from16 v18, v9

    .end local v9    # "fsync2Work":J
    .local v18, "fsync2Work":J
    int-to-long v9, v2

    invoke-virtual {v3, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1802
    iget-object v3, v0, Lcom/sleepycat/je/cleaner/DataEraser;->cycleThrottle:Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    invoke-virtual {v3, v11, v12}, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->throttle(J)V

    .line 1788
    .end local v2    # "size":I
    .end local v14    # "offset":J
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p4

    move-wide/from16 v3, v16

    move-wide/from16 v9, v18

    const/4 v14, 0x0

    goto :goto_0

    .end local v16    # "fsync1Work":J
    .end local v18    # "fsync2Work":J
    .restart local v3    # "fsync1Work":J
    .restart local v9    # "fsync2Work":J
    :cond_2
    move-wide/from16 v16, v3

    .line 1806
    .end local v3    # "fsync1Work":J
    .end local v13    # "i":I
    .restart local v16    # "fsync1Work":J
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkContinue()V

    .line 1807
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 1808
    iget-object v2, v0, Lcom/sleepycat/je/cleaner/DataEraser;->fSyncs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1809
    iget-object v2, v0, Lcom/sleepycat/je/cleaner/DataEraser;->cycleThrottle:Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    add-long v3, v7, v5

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->throttle(J)V

    .line 1812
    return-void
.end method

.method private eraseFile(Ljava/lang/Long;)V
    .locals 44
    .param p1, "file"    # Ljava/lang/Long;

    .line 1320
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Exception erasing file 0x"

    const-string v4, ": "

    const-string v5, "DataEraser.eraseFile exception when closing file 0x"

    const-string v6, "."

    const-string v7, "complete"

    const-string v8, "incomplete"

    const-string v9, ", erasure is "

    const-string v10, ", first write at "

    const-string v11, " entries in file 0x"

    const-string v12, "ERASER attempted to erase "

    iget-object v0, v1, Lcom/sleepycat/je/cleaner/DataEraser;->fileInfoCache:Ljava/util/NavigableMap;

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;

    iget-wide v13, v0, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;->length:J

    .line 1322
    .local v13, "fileLength":J
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/DataEraser;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/cleaner/FileProtector;->isReservedFile(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/sleepycat/je/cleaner/DataEraser;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    .line 1323
    const-string v15, "ERASER"

    invoke-virtual {v0, v2, v15}, Lcom/sleepycat/je/cleaner/Cleaner;->deleteReservedFile(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/DataEraser;->filesDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1326
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/DataEraser;->cycleThrottle:Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    const-wide/16 v3, 0x19

    mul-long/2addr v3, v13

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->throttle(J)V

    .line 1327
    return-void

    .line 1330
    :cond_0
    new-instance v0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;-><init>(Lcom/sleepycat/je/cleaner/DataEraser;Ljava/lang/Long;)V

    move-object v15, v0

    .line 1331
    .local v15, "reader":Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;
    new-instance v0, Lcom/sleepycat/je/cleaner/DbCache;

    move-object/from16 v16, v7

    iget-object v7, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-object/from16 v17, v8

    iget-object v8, v1, Lcom/sleepycat/je/cleaner/DataEraser;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-direct {v0, v7, v8}, Lcom/sleepycat/je/cleaner/DbCache;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/Cleaner;)V

    move-object v7, v0

    .line 1333
    .local v7, "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1334
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v8

    .line 1336
    .local v8, "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    const/16 v18, 0x0

    .line 1337
    .local v18, "entriesToErase":I
    const-wide/16 v19, 0x0

    .line 1338
    .local v19, "firstWriteTime":J
    const/16 v21, 0x0

    .line 1340
    .local v21, "completed":Z
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1341
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v0

    move-object/from16 v22, v3

    new-instance v3, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda2;-><init>(Lcom/sleepycat/je/cleaner/DataEraser;)V

    move-object/from16 v23, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getObsoleteDetailPacked(Ljava/lang/Long;ZLjava/lang/Runnable;)Lcom/sleepycat/je/cleaner/PackedOffsets;

    move-result-object v3

    .line 1344
    .local v3, "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/PackedOffsets;->iterator()Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;

    move-result-object v24

    .line 1345
    .local v24, "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    const-wide/16 v25, -0x1

    .line 1347
    .local v25, "nextObsolete":J
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/DataEraser;->fileManager:Lcom/sleepycat/je/log/FileManager;

    move-object/from16 v27, v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v4

    .line 1348
    .local v4, "fullFileName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1351
    .local v5, "raf":Ljava/io/RandomAccessFile;
    const-wide/16 v28, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_39
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_37
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_36
    .catchall {:try_start_0 .. :try_end_0} :catchall_11

    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1351
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->clearedCachedFileChecksum(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_1 .. :try_end_1} :catch_35
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_34
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_36
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    move/from16 v2, v18

    .line 1354
    .end local v18    # "entriesToErase":I
    .local v2, "entriesToErase":I
    :goto_0
    :try_start_2
    invoke-virtual {v15}, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->readNextEntryAllowExceptions()Z

    move-result v0
    :try_end_2
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_2 .. :try_end_2} :catch_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_32
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_31
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    if-eqz v0, :cond_14

    .line 1356
    :try_start_3
    invoke-virtual {v7}, Lcom/sleepycat/je/cleaner/DbCache;->clearCachePeriodically()V

    .line 1358
    invoke-virtual {v15}, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->getLastLsn()J

    move-result-wide v30

    move-wide/from16 v32, v30

    .line 1359
    .local v32, "logLsn":J
    invoke-static/range {v32 .. v33}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v30
    :try_end_3
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_3 .. :try_end_3} :catch_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2a
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    move-wide/from16 v34, v30

    .line 1361
    .local v34, "fileOffset":J
    :goto_1
    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move-wide/from16 v9, v34

    .end local v34    # "fileOffset":J
    .local v9, "fileOffset":J
    cmp-long v0, v25, v9

    if-gez v0, :cond_1

    :try_start_4
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1362
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->next()J

    move-result-wide v34
    :try_end_4
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-wide/from16 v25, v34

    move-wide/from16 v34, v9

    move-object/from16 v9, v30

    move-object/from16 v10, v31

    goto :goto_1

    .line 1536
    .end local v9    # "fileOffset":J
    .end local v32    # "logLsn":J
    :catchall_0
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move v4, v2

    move-object v14, v6

    move-object/from16 v6, v27

    move-object v2, v0

    move-object/from16 v27, v8

    goto/16 :goto_1e

    .line 1528
    :catch_0
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide v2, v13

    move-object/from16 v9, v23

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object v14, v6

    move-object/from16 v6, v27

    goto/16 :goto_17

    .line 1524
    :catch_1
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move v4, v2

    move-object v14, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v8

    goto/16 :goto_18

    .line 1518
    :catch_2
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object v14, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    goto/16 :goto_1d

    .line 1364
    .restart local v9    # "fileOffset":J
    .restart local v32    # "logLsn":J
    :cond_1
    cmp-long v0, v25, v9

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 1366
    .local v0, "isKnownObsolete":Z
    :goto_2
    const/16 v18, 0x0

    .line 1368
    .local v18, "doErase":Z
    move-object/from16 v34, v3

    .end local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .local v34, "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    :try_start_5
    iget-boolean v3, v15, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->isErased:Z
    :try_end_5
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_5 .. :try_end_5} :catch_29
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_28
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_27
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    if-eqz v3, :cond_4

    .line 1370
    :try_start_6
    iget-object v3, v15, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v3, Lcom/sleepycat/je/log/entry/ErasedLogEntry;

    .line 1373
    .local v3, "erasedEntry":Lcom/sleepycat/je/log/entry/ErasedLogEntry;
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/ErasedLogEntry;->isAllZeros()Z

    move-result v35
    :try_end_6
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v35, :cond_3

    .line 1374
    const/16 v18, 0x1

    .line 1376
    .end local v3    # "erasedEntry":Lcom/sleepycat/je/log/entry/ErasedLogEntry;
    :cond_3
    move/from16 v38, v2

    move-object/from16 v35, v6

    move-wide/from16 v39, v9

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move-wide/from16 v41, v13

    move-wide/from16 v13, v32

    goto/16 :goto_8

    .line 1536
    .end local v0    # "isKnownObsolete":Z
    .end local v9    # "fileOffset":J
    .end local v18    # "doErase":Z
    .end local v32    # "logLsn":J
    :catchall_1
    move-exception v0

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move v4, v2

    move-object v14, v6

    move-object/from16 v6, v27

    move-object v2, v0

    move-object/from16 v27, v8

    goto/16 :goto_1e

    .line 1528
    :catch_3
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide v2, v13

    move-object/from16 v9, v23

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object v14, v6

    move-object/from16 v6, v27

    goto/16 :goto_17

    .line 1524
    :catch_4
    move-exception v0

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move v4, v2

    move-object v14, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v8

    goto/16 :goto_18

    .line 1518
    :catch_5
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object v14, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    goto/16 :goto_1d

    .line 1377
    .restart local v0    # "isKnownObsolete":Z
    .restart local v9    # "fileOffset":J
    .restart local v18    # "doErase":Z
    .restart local v32    # "logLsn":J
    :cond_4
    :try_start_7
    iget-object v3, v15, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v3}, Lcom/sleepycat/je/log/entry/LogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    .line 1378
    .local v3, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual {v7, v3}, Lcom/sleepycat/je/cleaner/DbCache;->getDbInfo(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/cleaner/DbCache$DbInfo;

    move-result-object v35
    :try_end_7
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_7 .. :try_end_7} :catch_29
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_28
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_27
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    move-object/from16 v36, v35

    .line 1380
    .local v36, "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    move-object/from16 v35, v6

    move-object/from16 v6, v36

    move-object/from16 v36, v11

    .end local v36    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .local v6, "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    :try_start_8
    iget-boolean v11, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->deleted:Z
    :try_end_8
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_8 .. :try_end_8} :catch_26
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_25
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_24
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    if-eqz v11, :cond_6

    .line 1393
    :try_start_9
    iget-boolean v11, v1, Lcom/sleepycat/je/cleaner/DataEraser;->eraseDeletedDbs:Z
    :try_end_9
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v11, :cond_5

    .line 1394
    const/16 v18, 0x1

    move/from16 v38, v2

    move-wide/from16 v39, v9

    move-object/from16 v37, v12

    move-wide/from16 v41, v13

    move-wide/from16 v13, v32

    goto/16 :goto_8

    .line 1393
    :cond_5
    move/from16 v38, v2

    move-wide/from16 v39, v9

    move-object/from16 v37, v12

    move-wide/from16 v41, v13

    move-wide/from16 v13, v32

    goto/16 :goto_8

    .line 1536
    .end local v0    # "isKnownObsolete":Z
    .end local v3    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v6    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v9    # "fileOffset":J
    .end local v18    # "doErase":Z
    .end local v32    # "logLsn":J
    :catchall_2
    move-exception v0

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move v4, v2

    move-object/from16 v27, v8

    move-object v2, v0

    goto/16 :goto_1e

    .line 1528
    :catch_6
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide v2, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    goto/16 :goto_17

    .line 1524
    :catch_7
    move-exception v0

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move v4, v2

    move-object/from16 v27, v8

    goto/16 :goto_18

    .line 1518
    :catch_8
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    goto/16 :goto_1d

    .line 1397
    .restart local v0    # "isKnownObsolete":Z
    .restart local v3    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v6    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v9    # "fileOffset":J
    .restart local v18    # "doErase":Z
    .restart local v32    # "logLsn":J
    :cond_6
    :try_start_a
    iget-boolean v11, v15, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->isLN:Z
    :try_end_a
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_a .. :try_end_a} :catch_26
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_25
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_24
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    if-eqz v11, :cond_8

    :try_start_b
    iget-boolean v11, v1, Lcom/sleepycat/je/cleaner/DataEraser;->eraseExtinctRecords:Z

    if-eqz v11, :cond_8

    .line 1401
    iget-object v11, v15, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v11, Lcom/sleepycat/je/log/entry/LNLogEntry;
    :try_end_b
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1404
    .local v11, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    move-object/from16 v37, v12

    :try_start_c
    iget-boolean v12, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dups:Z

    invoke-virtual {v11, v12}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Z)V

    .line 1406
    iget-object v12, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_end_c
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move/from16 v38, v2

    .end local v2    # "entriesToErase":I
    .local v38, "entriesToErase":I
    :try_start_d
    iget-object v2, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->name:Ljava/lang/String;

    move-wide/from16 v39, v9

    .end local v9    # "fileOffset":J
    .local v39, "fileOffset":J
    iget-boolean v9, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dups:Z

    iget-boolean v10, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->internal:Z
    :try_end_d
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1408
    move-wide/from16 v41, v13

    .end local v13    # "fileLength":J
    .local v41, "fileLength":J
    :try_start_e
    invoke-virtual {v11}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v13

    .line 1406
    invoke-virtual {v12, v2, v9, v10, v13}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionState(Ljava/lang/String;ZZ[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v2

    sget-object v9, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    :try_end_e
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_e .. :try_end_e} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_12
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-ne v2, v9, :cond_7

    .line 1410
    const/16 v18, 0x1

    .line 1413
    .end local v11    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    :cond_7
    move-wide/from16 v13, v32

    goto/16 :goto_8

    .line 1536
    .end local v0    # "isKnownObsolete":Z
    .end local v3    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v6    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v18    # "doErase":Z
    .end local v32    # "logLsn":J
    .end local v39    # "fileOffset":J
    .end local v41    # "fileLength":J
    .restart local v13    # "fileLength":J
    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object/from16 v32, v4

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v4, v38

    move-object/from16 v27, v8

    .end local v13    # "fileLength":J
    .restart local v41    # "fileLength":J
    goto/16 :goto_1e

    .line 1528
    .end local v41    # "fileLength":J
    .restart local v13    # "fileLength":J
    :catch_9
    move-exception v0

    move-object/from16 v32, v4

    move-wide v2, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v18, v38

    .end local v13    # "fileLength":J
    .restart local v41    # "fileLength":J
    goto/16 :goto_17

    .line 1524
    .end local v41    # "fileLength":J
    .restart local v13    # "fileLength":J
    :catch_a
    move-exception v0

    move-object/from16 v32, v4

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v4, v38

    move-object/from16 v27, v8

    .end local v13    # "fileLength":J
    .restart local v41    # "fileLength":J
    goto/16 :goto_18

    .line 1518
    .end local v41    # "fileLength":J
    .restart local v13    # "fileLength":J
    :catch_b
    move-exception v0

    move-object/from16 v32, v4

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v18, v38

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    .end local v13    # "fileLength":J
    .restart local v41    # "fileLength":J
    goto/16 :goto_1d

    .line 1536
    .end local v38    # "entriesToErase":I
    .end local v41    # "fileLength":J
    .restart local v2    # "entriesToErase":I
    .restart local v13    # "fileLength":J
    :catchall_4
    move-exception v0

    move/from16 v38, v2

    move-object v2, v0

    move-object/from16 v32, v4

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    goto/16 :goto_3

    .line 1528
    :catch_c
    move-exception v0

    move/from16 v38, v2

    move-object/from16 v32, v4

    move-wide v2, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    goto/16 :goto_4

    .line 1524
    :catch_d
    move-exception v0

    move/from16 v38, v2

    move-object/from16 v32, v4

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    goto/16 :goto_5

    .line 1518
    :catch_e
    move-exception v0

    move/from16 v38, v2

    move-object/from16 v32, v4

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    goto/16 :goto_6

    .line 1536
    :catchall_5
    move-exception v0

    move/from16 v38, v2

    move-object v2, v0

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    :goto_3
    move/from16 v4, v38

    move-object/from16 v27, v8

    .end local v2    # "entriesToErase":I
    .end local v13    # "fileLength":J
    .restart local v38    # "entriesToErase":I
    .restart local v41    # "fileLength":J
    goto/16 :goto_1e

    .line 1528
    .end local v38    # "entriesToErase":I
    .end local v41    # "fileLength":J
    .restart local v2    # "entriesToErase":I
    .restart local v13    # "fileLength":J
    :catch_f
    move-exception v0

    move/from16 v38, v2

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide v2, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    :goto_4
    move/from16 v18, v38

    .end local v2    # "entriesToErase":I
    .end local v13    # "fileLength":J
    .restart local v38    # "entriesToErase":I
    .restart local v41    # "fileLength":J
    goto/16 :goto_17

    .line 1524
    .end local v38    # "entriesToErase":I
    .end local v41    # "fileLength":J
    .restart local v2    # "entriesToErase":I
    .restart local v13    # "fileLength":J
    :catch_10
    move-exception v0

    move/from16 v38, v2

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    :goto_5
    move/from16 v4, v38

    move-object/from16 v27, v8

    .end local v2    # "entriesToErase":I
    .end local v13    # "fileLength":J
    .restart local v38    # "entriesToErase":I
    .restart local v41    # "fileLength":J
    goto/16 :goto_18

    .line 1518
    .end local v38    # "entriesToErase":I
    .end local v41    # "fileLength":J
    .restart local v2    # "entriesToErase":I
    .restart local v13    # "fileLength":J
    :catch_11
    move-exception v0

    move/from16 v38, v2

    move-object/from16 v32, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    :goto_6
    move/from16 v18, v38

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    .end local v2    # "entriesToErase":I
    .end local v13    # "fileLength":J
    .restart local v38    # "entriesToErase":I
    .restart local v41    # "fileLength":J
    goto/16 :goto_1d

    .line 1397
    .end local v38    # "entriesToErase":I
    .end local v41    # "fileLength":J
    .restart local v0    # "isKnownObsolete":Z
    .restart local v2    # "entriesToErase":I
    .restart local v3    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v6    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v9    # "fileOffset":J
    .restart local v13    # "fileLength":J
    .restart local v18    # "doErase":Z
    .restart local v32    # "logLsn":J
    :cond_8
    move/from16 v38, v2

    move-wide/from16 v39, v9

    move-object/from16 v37, v12

    move-wide/from16 v41, v13

    .line 1413
    .end local v2    # "entriesToErase":I
    .end local v9    # "fileOffset":J
    .end local v13    # "fileLength":J
    .restart local v38    # "entriesToErase":I
    .restart local v39    # "fileOffset":J
    .restart local v41    # "fileLength":J
    :try_start_f
    iget-boolean v2, v15, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->isBIN:Z
    :try_end_f
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_f .. :try_end_f} :catch_23
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_22
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_21
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    if-eqz v2, :cond_f

    :try_start_10
    iget-boolean v2, v1, Lcom/sleepycat/je/cleaner/DataEraser;->eraseExtinctRecords:Z

    if-eqz v2, :cond_f

    .line 1418
    iget-object v2, v15, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v2}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/BIN;

    .line 1420
    .local v2, "bin":Lcom/sleepycat/je/tree/BIN;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v10

    if-ge v9, v10, :cond_e

    .line 1422
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkContinue()V

    .line 1424
    invoke-virtual {v2, v9}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v10

    .line 1426
    .local v10, "key":[B
    iget-object v11, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v12, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->name:Ljava/lang/String;

    iget-boolean v13, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dups:Z

    iget-boolean v14, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->internal:Z

    .line 1427
    invoke-virtual {v11, v12, v13, v14, v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionState(Ljava/lang/String;ZZ[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v11

    .line 1431
    .local v11, "status":Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    sget-object v12, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->MAYBE_EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    if-eq v11, v12, :cond_d

    .line 1439
    sget-object v12, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    if-eq v11, v12, :cond_9

    .line 1440
    nop

    .line 1420
    .end local v10    # "key":[B
    .end local v11    # "status":Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1443
    .restart local v10    # "key":[B
    .restart local v11    # "status":Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    :cond_9
    if-eqz v0, :cond_a

    .line 1444
    const/16 v18, 0x1

    .line 1445
    move-wide/from16 v13, v32

    goto/16 :goto_8

    .line 1455
    :cond_a
    invoke-virtual {v7, v3}, Lcom/sleepycat/je/cleaner/DbCache;->getDbImpl(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/cleaner/DbCache$DbInfo;

    move-result-object v12

    move-object v6, v12

    .line 1473
    iget-object v12, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-eqz v12, :cond_c

    iget-object v12, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1474
    invoke-virtual {v8, v12, v10}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->isRecordExtinctionIncomplete(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Z

    move-result v12

    if-nez v12, :cond_b

    iget-object v12, v6, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1476
    move-wide/from16 v13, v32

    .end local v32    # "logLsn":J
    .local v13, "logLsn":J
    invoke-direct {v1, v12, v2, v13, v14}, Lcom/sleepycat/je/cleaner/DataEraser;->isBINDead(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;J)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1479
    const/16 v18, 0x1

    goto/16 :goto_8

    .line 1474
    .end local v13    # "logLsn":J
    .restart local v32    # "logLsn":J
    :cond_b
    move-wide/from16 v13, v32

    .end local v32    # "logLsn":J
    .restart local v13    # "logLsn":J
    goto/16 :goto_8

    .line 1473
    .end local v13    # "logLsn":J
    .restart local v32    # "logLsn":J
    :cond_c
    move-wide/from16 v13, v32

    .end local v32    # "logLsn":J
    .restart local v13    # "logLsn":J
    goto/16 :goto_8

    .line 1436
    .end local v13    # "logLsn":J
    .restart local v32    # "logLsn":J
    :cond_d
    move-wide/from16 v13, v32

    .end local v32    # "logLsn":J
    .restart local v13    # "logLsn":J
    new-instance v12, Lcom/sleepycat/je/cleaner/DataEraser$AbortCurrentFileException;

    move-object/from16 v33, v2

    move-object/from16 v32, v3

    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .local v32, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .local v33, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v12, v2, v3}, Lcom/sleepycat/je/cleaner/DataEraser$AbortCurrentFileException;-><init>(J)V

    .end local v4    # "fullFileName":Ljava/lang/String;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v8    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v15    # "reader":Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;
    .end local v19    # "firstWriteTime":J
    .end local v21    # "completed":Z
    .end local v24    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .end local v25    # "nextObsolete":J
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v38    # "entriesToErase":I
    .end local v41    # "fileLength":J
    .end local p1    # "file":Ljava/lang/Long;
    throw v12
    :try_end_10
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_10 .. :try_end_10} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1420
    .end local v10    # "key":[B
    .end local v11    # "status":Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    .end local v13    # "logLsn":J
    .end local v33    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .restart local v3    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v4    # "fullFileName":Ljava/lang/String;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v8    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v15    # "reader":Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;
    .restart local v19    # "firstWriteTime":J
    .restart local v21    # "completed":Z
    .restart local v24    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .restart local v25    # "nextObsolete":J
    .local v32, "logLsn":J
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v38    # "entriesToErase":I
    .restart local v41    # "fileLength":J
    .restart local p1    # "file":Ljava/lang/Long;
    :cond_e
    move-wide/from16 v13, v32

    move-object/from16 v33, v2

    move-object/from16 v32, v3

    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v3    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v13    # "logLsn":J
    .local v32, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v33    # "bin":Lcom/sleepycat/je/tree/BIN;
    goto/16 :goto_8

    .line 1536
    .end local v0    # "isKnownObsolete":Z
    .end local v6    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v9    # "i":I
    .end local v13    # "logLsn":J
    .end local v18    # "doErase":Z
    .end local v32    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v33    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v39    # "fileOffset":J
    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v32, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v4, v38

    move-object/from16 v27, v8

    goto/16 :goto_1e

    .line 1528
    :catch_12
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v18, v38

    move-wide/from16 v2, v41

    goto/16 :goto_17

    .line 1524
    :catch_13
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v4, v38

    move-object/from16 v27, v8

    goto/16 :goto_18

    .line 1518
    :catch_14
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v18, v38

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    goto/16 :goto_1d

    .line 1413
    .restart local v0    # "isKnownObsolete":Z
    .restart local v3    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v6    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .restart local v18    # "doErase":Z
    .local v32, "logLsn":J
    .restart local v39    # "fileOffset":J
    :cond_f
    move-wide/from16 v13, v32

    move-object/from16 v32, v3

    .line 1493
    .end local v3    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v6    # "dbInfo":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .end local v32    # "logLsn":J
    .restart local v13    # "logLsn":J
    :cond_10
    :goto_8
    if-eqz v18, :cond_13

    .line 1494
    if-nez v5, :cond_11

    .line 1495
    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide/from16 v19, v2

    .line 1496
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/DataEraser;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v2, v4}, Lcom/sleepycat/je/log/FileManager;->openFileReadWrite(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v2
    :try_end_11
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_15
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    move-object v5, v2

    .line 1497
    move-wide/from16 v2, v41

    .end local v41    # "fileLength":J
    .local v2, "fileLength":J
    :try_start_12
    invoke-direct {v1, v5, v2, v3}, Lcom/sleepycat/je/cleaner/DataEraser;->touchAndFsync(Ljava/io/RandomAccessFile;J)V
    :try_end_12
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_12 .. :try_end_12} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_19
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_18
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto/16 :goto_9

    .line 1536
    .end local v0    # "isKnownObsolete":Z
    .end local v2    # "fileLength":J
    .end local v13    # "logLsn":J
    .end local v18    # "doErase":Z
    .end local v39    # "fileOffset":J
    .restart local v41    # "fileLength":J
    :catchall_7
    move-exception v0

    move-object v2, v0

    move-object/from16 v32, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v4, v38

    move-object/from16 v27, v8

    .end local v41    # "fileLength":J
    .restart local v2    # "fileLength":J
    goto/16 :goto_1e

    .line 1528
    .end local v2    # "fileLength":J
    .restart local v41    # "fileLength":J
    :catch_15
    move-exception v0

    move-wide/from16 v2, v41

    move-object/from16 v32, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v18, v38

    .end local v41    # "fileLength":J
    .restart local v2    # "fileLength":J
    goto/16 :goto_17

    .line 1524
    .end local v2    # "fileLength":J
    .restart local v41    # "fileLength":J
    :catch_16
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v4, v38

    move-object/from16 v27, v8

    .end local v41    # "fileLength":J
    .restart local v2    # "fileLength":J
    goto/16 :goto_18

    .line 1518
    .end local v2    # "fileLength":J
    .restart local v41    # "fileLength":J
    :catch_17
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v18, v38

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    .end local v41    # "fileLength":J
    .restart local v2    # "fileLength":J
    goto/16 :goto_1d

    .line 1494
    .end local v2    # "fileLength":J
    .restart local v0    # "isKnownObsolete":Z
    .restart local v13    # "logLsn":J
    .restart local v18    # "doErase":Z
    .restart local v39    # "fileOffset":J
    .restart local v41    # "fileLength":J
    :cond_11
    move-wide/from16 v2, v41

    .line 1500
    .end local v41    # "fileLength":J
    .restart local v2    # "fileLength":J
    :goto_9
    :try_start_13
    iget-boolean v6, v15, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->isErased:Z
    :try_end_13
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_13 .. :try_end_13} :catch_20
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_1f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1e
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    if-nez v6, :cond_12

    .line 1501
    move-wide/from16 v9, v39

    .end local v39    # "fileOffset":J
    .local v9, "fileOffset":J
    :try_start_14
    invoke-direct {v1, v5, v9, v10}, Lcom/sleepycat/je/cleaner/DataEraser;->writeErasedType(Ljava/io/RandomAccessFile;J)V
    :try_end_14
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_14 .. :try_end_14} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_18
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    goto/16 :goto_a

    .line 1536
    .end local v0    # "isKnownObsolete":Z
    .end local v9    # "fileOffset":J
    .end local v13    # "logLsn":J
    .end local v18    # "doErase":Z
    :catchall_8
    move-exception v0

    move-wide/from16 v41, v2

    move-object/from16 v32, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v4, v38

    move-object v2, v0

    move-object/from16 v27, v8

    goto/16 :goto_1e

    .line 1528
    :catch_18
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v18, v38

    goto/16 :goto_17

    .line 1524
    :catch_19
    move-exception v0

    move-wide/from16 v41, v2

    move-object/from16 v32, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v4, v38

    move-object/from16 v27, v8

    goto/16 :goto_18

    .line 1518
    :catch_1a
    move-exception v0

    move-wide/from16 v41, v2

    move-object/from16 v32, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v18, v38

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    goto/16 :goto_1d

    .line 1500
    .restart local v0    # "isKnownObsolete":Z
    .restart local v13    # "logLsn":J
    .restart local v18    # "doErase":Z
    .restart local v39    # "fileOffset":J
    :cond_12
    move-wide/from16 v9, v39

    .line 1504
    .end local v39    # "fileOffset":J
    .restart local v9    # "fileOffset":J
    :goto_a
    :try_start_15
    iget-object v6, v15, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 1506
    invoke-virtual {v6}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v11, v9

    iget-object v6, v15, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 1507
    invoke-virtual {v6}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v6
    :try_end_15
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_15 .. :try_end_15} :catch_20
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1e
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 1504
    move-object/from16 v32, v4

    move/from16 v4, v38

    .end local v38    # "entriesToErase":I
    .local v4, "entriesToErase":I
    .local v32, "fullFileName":Ljava/lang/String;
    :try_start_16
    invoke-direct {v1, v4, v11, v12, v6}, Lcom/sleepycat/je/cleaner/DataEraser;->addEraseEntry(IJI)I

    move-result v6
    :try_end_16
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_16 .. :try_end_16} :catch_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1b
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    move v4, v6

    goto/16 :goto_b

    .line 1536
    .end local v0    # "isKnownObsolete":Z
    .end local v9    # "fileOffset":J
    .end local v13    # "logLsn":J
    .end local v18    # "doErase":Z
    :catchall_9
    move-exception v0

    move-wide/from16 v41, v2

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object v2, v0

    move-object/from16 v27, v8

    goto/16 :goto_1e

    .line 1528
    :catch_1b
    move-exception v0

    move/from16 v18, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    goto/16 :goto_17

    .line 1524
    :catch_1c
    move-exception v0

    move-wide/from16 v41, v2

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v27, v8

    goto/16 :goto_18

    .line 1518
    :catch_1d
    move-exception v0

    move-wide/from16 v41, v2

    move/from16 v18, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    goto/16 :goto_1d

    .line 1536
    .end local v32    # "fullFileName":Ljava/lang/String;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v38    # "entriesToErase":I
    :catchall_a
    move-exception v0

    move-object/from16 v32, v4

    move/from16 v4, v38

    move-wide/from16 v41, v2

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object v2, v0

    move-object/from16 v27, v8

    .end local v38    # "entriesToErase":I
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    goto/16 :goto_1e

    .line 1528
    .end local v32    # "fullFileName":Ljava/lang/String;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v38    # "entriesToErase":I
    :catch_1e
    move-exception v0

    move-object/from16 v32, v4

    move/from16 v4, v38

    move/from16 v18, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    .end local v38    # "entriesToErase":I
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    goto/16 :goto_17

    .line 1524
    .end local v32    # "fullFileName":Ljava/lang/String;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v38    # "entriesToErase":I
    :catch_1f
    move-exception v0

    move-object/from16 v32, v4

    move/from16 v4, v38

    move-wide/from16 v41, v2

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v27, v8

    .end local v38    # "entriesToErase":I
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    goto/16 :goto_18

    .line 1518
    .end local v32    # "fullFileName":Ljava/lang/String;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v38    # "entriesToErase":I
    :catch_20
    move-exception v0

    move-object/from16 v32, v4

    move/from16 v4, v38

    move-wide/from16 v41, v2

    move/from16 v18, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    .end local v38    # "entriesToErase":I
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    goto/16 :goto_1d

    .line 1493
    .end local v2    # "fileLength":J
    .end local v32    # "fullFileName":Ljava/lang/String;
    .restart local v0    # "isKnownObsolete":Z
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v13    # "logLsn":J
    .restart local v18    # "doErase":Z
    .restart local v38    # "entriesToErase":I
    .restart local v39    # "fileOffset":J
    .restart local v41    # "fileLength":J
    :cond_13
    move-object/from16 v32, v4

    move/from16 v4, v38

    move-wide/from16 v9, v39

    move-wide/from16 v2, v41

    .line 1509
    .end local v0    # "isKnownObsolete":Z
    .end local v13    # "logLsn":J
    .end local v18    # "doErase":Z
    .end local v38    # "entriesToErase":I
    .end local v39    # "fileOffset":J
    .end local v41    # "fileLength":J
    .restart local v2    # "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    :goto_b
    move-wide v13, v2

    move v2, v4

    move-object/from16 v9, v30

    move-object/from16 v10, v31

    move-object/from16 v4, v32

    move-object/from16 v3, v34

    move-object/from16 v6, v35

    move-object/from16 v11, v36

    move-object/from16 v12, v37

    goto/16 :goto_0

    .line 1536
    .end local v2    # "fileLength":J
    .end local v32    # "fullFileName":Ljava/lang/String;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v38    # "entriesToErase":I
    .restart local v41    # "fileLength":J
    :catchall_b
    move-exception v0

    move-object/from16 v32, v4

    move/from16 v4, v38

    move-object v2, v0

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v27, v8

    .end local v38    # "entriesToErase":I
    .end local v41    # "fileLength":J
    .restart local v2    # "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    goto/16 :goto_1e

    .line 1528
    .end local v2    # "fileLength":J
    .end local v32    # "fullFileName":Ljava/lang/String;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v38    # "entriesToErase":I
    .restart local v41    # "fileLength":J
    :catch_21
    move-exception v0

    move-object/from16 v32, v4

    move/from16 v4, v38

    move-wide/from16 v2, v41

    move/from16 v18, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    .end local v38    # "entriesToErase":I
    .end local v41    # "fileLength":J
    .restart local v2    # "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    goto/16 :goto_17

    .line 1524
    .end local v2    # "fileLength":J
    .end local v32    # "fullFileName":Ljava/lang/String;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v38    # "entriesToErase":I
    .restart local v41    # "fileLength":J
    :catch_22
    move-exception v0

    move-object/from16 v32, v4

    move/from16 v4, v38

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v27, v8

    .end local v38    # "entriesToErase":I
    .end local v41    # "fileLength":J
    .restart local v2    # "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    goto/16 :goto_18

    .line 1518
    .end local v2    # "fileLength":J
    .end local v32    # "fullFileName":Ljava/lang/String;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v38    # "entriesToErase":I
    .restart local v41    # "fileLength":J
    :catch_23
    move-exception v0

    move-object/from16 v32, v4

    move/from16 v4, v38

    move/from16 v18, v4

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    .end local v38    # "entriesToErase":I
    .end local v41    # "fileLength":J
    .restart local v2    # "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    goto/16 :goto_1d

    .line 1536
    .end local v32    # "fullFileName":Ljava/lang/String;
    .local v2, "entriesToErase":I
    .local v4, "fullFileName":Ljava/lang/String;
    .local v13, "fileLength":J
    :catchall_c
    move-exception v0

    move-object/from16 v32, v4

    move v4, v2

    move-object v2, v0

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    goto/16 :goto_c

    .line 1528
    :catch_24
    move-exception v0

    move-object/from16 v32, v4

    move v4, v2

    move-wide v2, v13

    move/from16 v18, v4

    move-object v10, v12

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    goto/16 :goto_d

    .line 1524
    :catch_25
    move-exception v0

    move-object/from16 v32, v4

    move v4, v2

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    goto/16 :goto_e

    .line 1518
    :catch_26
    move-exception v0

    move-object/from16 v32, v4

    move v4, v2

    move/from16 v18, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    goto/16 :goto_f

    .line 1536
    :catchall_d
    move-exception v0

    move-object/from16 v32, v4

    move v4, v2

    move-object v2, v0

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object v14, v6

    move-object/from16 v6, v27

    :goto_c
    move-object/from16 v27, v8

    .end local v13    # "fileLength":J
    .local v2, "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    goto/16 :goto_1e

    .line 1528
    .end local v32    # "fullFileName":Ljava/lang/String;
    .local v2, "entriesToErase":I
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v13    # "fileLength":J
    :catch_27
    move-exception v0

    move-object/from16 v32, v4

    move v4, v2

    move-wide v2, v13

    move/from16 v18, v4

    move-object v14, v6

    move-object v10, v12

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    .end local v13    # "fileLength":J
    .local v2, "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    :goto_d
    goto/16 :goto_17

    .line 1524
    .end local v32    # "fullFileName":Ljava/lang/String;
    .local v2, "entriesToErase":I
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v13    # "fileLength":J
    :catch_28
    move-exception v0

    move-object/from16 v32, v4

    move v4, v2

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object v14, v6

    move-object/from16 v6, v27

    :goto_e
    move-object/from16 v27, v8

    .end local v13    # "fileLength":J
    .local v2, "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    goto/16 :goto_18

    .line 1518
    .end local v32    # "fullFileName":Ljava/lang/String;
    .local v2, "entriesToErase":I
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v13    # "fileLength":J
    :catch_29
    move-exception v0

    move-object/from16 v32, v4

    move v4, v2

    move/from16 v18, v4

    move-object v10, v12

    move-wide/from16 v41, v13

    move-object/from16 v9, v23

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object v14, v6

    move-object/from16 v6, v27

    :goto_f
    move-object/from16 v27, v8

    move-object/from16 v8, v22

    .end local v13    # "fileLength":J
    .local v2, "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    goto/16 :goto_1d

    .line 1536
    .end local v32    # "fullFileName":Ljava/lang/String;
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .local v2, "entriesToErase":I
    .local v3, "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v13    # "fileLength":J
    :catchall_e
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move v4, v2

    move-object v2, v0

    move-wide/from16 v41, v13

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v27, v8

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    goto/16 :goto_13

    .line 1528
    :catch_2a
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move v4, v2

    move-wide v2, v13

    move/from16 v18, v4

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    goto/16 :goto_14

    .line 1524
    :catch_2b
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move v4, v2

    move-wide/from16 v41, v13

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v27, v8

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    goto/16 :goto_15

    .line 1518
    :catch_2c
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move v4, v2

    move/from16 v18, v4

    move-wide/from16 v41, v13

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    goto/16 :goto_16

    .line 1512
    :cond_14
    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move-object/from16 v35, v6

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move v4, v2

    move-wide v2, v13

    .end local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v13    # "fileLength":J
    .local v2, "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    :try_start_17
    invoke-virtual {v7}, Lcom/sleepycat/je/cleaner/DbCache;->releaseDbImpls()V

    .line 1514
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/sleepycat/je/cleaner/DataEraser;->eraseEntries(Ljava/io/RandomAccessFile;JI)V

    .line 1515
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/DataEraser;->filesErased:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_17
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_17 .. :try_end_17} :catch_30
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_2f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2e
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    .line 1516
    const/16 v21, 0x1

    .line 1536
    cmp-long v0, v19, v28

    if-eqz v0, :cond_16

    .line 1537
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v6, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v37

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v11, v36

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1540
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v12, v31

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1541
    invoke-static/range {v19 .. v20}, Lcom/sleepycat/je/cleaner/DataEraser;->formatTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v13, v30

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v21, :cond_15

    move-object/from16 v10, v16

    goto :goto_10

    :cond_15
    move-object/from16 v10, v17

    :goto_10
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v14, v35

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1537
    invoke-static {v0, v6, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1546
    :cond_16
    invoke-virtual {v7}, Lcom/sleepycat/je/cleaner/DbCache;->releaseDbImpls()V

    .line 1548
    if-eqz v5, :cond_17

    .line 1550
    :try_start_18
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2d

    .line 1556
    :goto_11
    goto :goto_12

    .line 1551
    :catch_2d
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1552
    .local v0, "e":Ljava/io/IOException;
    iget-object v6, v1, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v9, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v27

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1555
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v11, v23

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1552
    invoke-static {v6, v9, v10}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_11

    .line 1559
    :cond_17
    :goto_12
    move-wide/from16 v41, v2

    move v2, v4

    move-object/from16 v27, v8

    goto/16 :goto_1c

    .line 1536
    :catchall_f
    move-exception v0

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-wide/from16 v41, v2

    move-object/from16 v27, v8

    move-object v2, v0

    goto/16 :goto_1e

    .line 1528
    :catch_2e
    move-exception v0

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move/from16 v18, v4

    goto/16 :goto_17

    .line 1524
    :catch_2f
    move-exception v0

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-wide/from16 v41, v2

    move-object/from16 v27, v8

    goto/16 :goto_18

    .line 1518
    :catch_30
    move-exception v0

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v14, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-wide/from16 v41, v2

    move/from16 v18, v4

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    goto/16 :goto_1d

    .line 1536
    .end local v32    # "fullFileName":Ljava/lang/String;
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .local v2, "entriesToErase":I
    .restart local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v13    # "fileLength":J
    :catchall_10
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move v4, v2

    move-wide v2, v13

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    move-wide/from16 v41, v2

    move-object/from16 v27, v8

    move-object v2, v0

    .end local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v13    # "fileLength":J
    .local v2, "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    :goto_13
    goto/16 :goto_1e

    .line 1528
    .end local v32    # "fullFileName":Ljava/lang/String;
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .local v2, "entriesToErase":I
    .restart local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v13    # "fileLength":J
    :catch_31
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move v4, v2

    move-wide v2, v13

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    move/from16 v18, v4

    .end local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v13    # "fileLength":J
    .local v2, "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    :goto_14
    goto/16 :goto_17

    .line 1524
    .end local v32    # "fullFileName":Ljava/lang/String;
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .local v2, "entriesToErase":I
    .restart local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v13    # "fileLength":J
    :catch_32
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move v4, v2

    move-wide v2, v13

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    move-wide/from16 v41, v2

    move-object/from16 v27, v8

    .end local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v13    # "fileLength":J
    .local v2, "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    :goto_15
    goto/16 :goto_18

    .line 1518
    .end local v32    # "fullFileName":Ljava/lang/String;
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .local v2, "entriesToErase":I
    .restart local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v13    # "fileLength":J
    :catch_33
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move v4, v2

    move-wide v2, v13

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    move-wide/from16 v41, v2

    move/from16 v18, v4

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    .end local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v13    # "fileLength":J
    .local v2, "fileLength":J
    .local v4, "entriesToErase":I
    .restart local v32    # "fullFileName":Ljava/lang/String;
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    :goto_16
    goto/16 :goto_1d

    .line 1524
    .end local v2    # "fileLength":J
    .end local v32    # "fullFileName":Ljava/lang/String;
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v13    # "fileLength":J
    .local v18, "entriesToErase":I
    :catch_34
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move-wide v2, v13

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    move-wide/from16 v41, v2

    move-object/from16 v27, v8

    move/from16 v4, v18

    .end local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v4    # "fullFileName":Ljava/lang/String;
    .end local v13    # "fileLength":J
    .restart local v2    # "fileLength":J
    .restart local v32    # "fullFileName":Ljava/lang/String;
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    goto/16 :goto_18

    .line 1518
    .end local v2    # "fileLength":J
    .end local v32    # "fullFileName":Ljava/lang/String;
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v4    # "fullFileName":Ljava/lang/String;
    .restart local v13    # "fileLength":J
    :catch_35
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move-wide v2, v13

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    move-wide/from16 v41, v2

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    .end local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v4    # "fullFileName":Ljava/lang/String;
    .end local v13    # "fileLength":J
    .restart local v2    # "fileLength":J
    .restart local v32    # "fullFileName":Ljava/lang/String;
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    goto/16 :goto_1d

    .line 1536
    .end local v2    # "fileLength":J
    .end local v32    # "fullFileName":Ljava/lang/String;
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v4    # "fullFileName":Ljava/lang/String;
    .restart local v13    # "fileLength":J
    :catchall_11
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move-wide v2, v13

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    move-wide/from16 v41, v2

    move-object/from16 v27, v8

    move/from16 v4, v18

    move-object v2, v0

    .end local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v4    # "fullFileName":Ljava/lang/String;
    .end local v13    # "fileLength":J
    .restart local v2    # "fileLength":J
    .restart local v32    # "fullFileName":Ljava/lang/String;
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    goto/16 :goto_1e

    .line 1528
    .end local v2    # "fileLength":J
    .end local v32    # "fullFileName":Ljava/lang/String;
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v4    # "fullFileName":Ljava/lang/String;
    .restart local v13    # "fileLength":J
    :catch_36
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move-wide v2, v13

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    .line 1529
    .end local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v4    # "fullFileName":Ljava/lang/String;
    .end local v13    # "fileLength":J
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fileLength":J
    .restart local v32    # "fullFileName":Ljava/lang/String;
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    :goto_17
    :try_start_19
    new-instance v4, Lcom/sleepycat/je/EnvironmentFailureException;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_15

    move-wide/from16 v41, v2

    .end local v2    # "fileLength":J
    .restart local v41    # "fileLength":J
    :try_start_1a
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_WRITE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_14

    move-object/from16 v23, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v23, "raf":Ljava/io/RandomAccessFile;
    :try_start_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_13

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    .end local v8    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .local v27, "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    :try_start_1c
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1531
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v15    # "reader":Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;
    .end local v18    # "entriesToErase":I
    .end local v19    # "firstWriteTime":J
    .end local v21    # "completed":Z
    .end local v23    # "raf":Ljava/io/RandomAccessFile;
    .end local v24    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .end local v25    # "nextObsolete":J
    .end local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v32    # "fullFileName":Ljava/lang/String;
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v41    # "fileLength":J
    .end local p1    # "file":Ljava/lang/Long;
    throw v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    .line 1536
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v7    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v15    # "reader":Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;
    .restart local v18    # "entriesToErase":I
    .restart local v19    # "firstWriteTime":J
    .restart local v21    # "completed":Z
    .restart local v23    # "raf":Ljava/io/RandomAccessFile;
    .restart local v24    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .restart local v25    # "nextObsolete":J
    .restart local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v32    # "fullFileName":Ljava/lang/String;
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v41    # "fileLength":J
    .restart local p1    # "file":Ljava/lang/Long;
    :catchall_12
    move-exception v0

    move-object v2, v0

    move/from16 v4, v18

    move-object/from16 v5, v23

    goto/16 :goto_1e

    .end local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v8    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    :catchall_13
    move-exception v0

    move-object/from16 v27, v8

    move-object v2, v0

    move/from16 v4, v18

    move-object/from16 v5, v23

    .end local v8    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    goto/16 :goto_1e

    .end local v23    # "raf":Ljava/io/RandomAccessFile;
    .end local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    :catchall_14
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v27, v8

    move-object v2, v0

    move/from16 v4, v18

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v23    # "raf":Ljava/io/RandomAccessFile;
    .restart local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    goto/16 :goto_1e

    .end local v23    # "raf":Ljava/io/RandomAccessFile;
    .end local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v41    # "fileLength":J
    .restart local v2    # "fileLength":J
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    :catchall_15
    move-exception v0

    move-wide/from16 v41, v2

    move-object/from16 v23, v5

    move-object/from16 v27, v8

    move-object v2, v0

    move/from16 v4, v18

    .end local v2    # "fileLength":J
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v23    # "raf":Ljava/io/RandomAccessFile;
    .restart local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v41    # "fileLength":J
    goto/16 :goto_1e

    .line 1524
    .end local v23    # "raf":Ljava/io/RandomAccessFile;
    .end local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v32    # "fullFileName":Ljava/lang/String;
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v41    # "fileLength":J
    .restart local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v4    # "fullFileName":Ljava/lang/String;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v13    # "fileLength":J
    :catch_37
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move-wide/from16 v41, v13

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v27, v8

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    move/from16 v4, v18

    .line 1526
    .end local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v8    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v13    # "fileLength":J
    .end local v18    # "entriesToErase":I
    .local v0, "e":Ljava/io/FileNotFoundException;
    .local v4, "entriesToErase":I
    .restart local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v32    # "fullFileName":Ljava/lang/String;
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v41    # "fileLength":J
    :goto_18
    :try_start_1d
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/DataEraser;->filesAlreadyDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_16

    .line 1536
    nop

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    cmp-long v0, v19, v28

    if-eqz v0, :cond_19

    .line 1537
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v2, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1540
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1541
    invoke-static/range {v19 .. v20}, Lcom/sleepycat/je/cleaner/DataEraser;->formatTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v21, :cond_18

    move-object/from16 v8, v16

    goto :goto_19

    :cond_18
    move-object/from16 v8, v17

    :goto_19
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1537
    invoke-static {v0, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1546
    :cond_19
    invoke-virtual {v7}, Lcom/sleepycat/je/cleaner/DbCache;->releaseDbImpls()V

    .line 1548
    if-eqz v5, :cond_1a

    .line 1550
    :try_start_1e
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_38

    .line 1556
    :goto_1a
    goto :goto_1b

    .line 1551
    :catch_38
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1552
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v3, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1555
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1552
    invoke-static {v2, v3, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1a

    .line 1559
    :cond_1a
    :goto_1b
    move v2, v4

    .end local v4    # "entriesToErase":I
    .local v2, "entriesToErase":I
    :goto_1c
    return-void

    .line 1536
    .end local v2    # "entriesToErase":I
    .restart local v4    # "entriesToErase":I
    :catchall_16
    move-exception v0

    move-object v2, v0

    goto :goto_1e

    .line 1518
    .end local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v32    # "fullFileName":Ljava/lang/String;
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v41    # "fileLength":J
    .restart local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .local v4, "fullFileName":Ljava/lang/String;
    .restart local v8    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v13    # "fileLength":J
    .restart local v18    # "entriesToErase":I
    :catch_39
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move-wide/from16 v41, v13

    move-object v14, v6

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v6, v27

    move-object/from16 v27, v8

    move-object/from16 v8, v22

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    .line 1519
    .end local v3    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v4    # "fullFileName":Ljava/lang/String;
    .end local v8    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v13    # "fileLength":J
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    .restart local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v32    # "fullFileName":Ljava/lang/String;
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v41    # "fileLength":J
    :goto_1d
    :try_start_1f
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v3, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_18

    move-object/from16 v22, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v22, "raf":Ljava/io/RandomAccessFile;
    :try_start_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1521
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .end local v15    # "reader":Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;
    .end local v18    # "entriesToErase":I
    .end local v19    # "firstWriteTime":J
    .end local v21    # "completed":Z
    .end local v22    # "raf":Ljava/io/RandomAccessFile;
    .end local v24    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .end local v25    # "nextObsolete":J
    .end local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .end local v32    # "fullFileName":Ljava/lang/String;
    .end local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v41    # "fileLength":J
    .end local p1    # "file":Ljava/lang/Long;
    throw v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_17

    .line 1536
    .end local v0    # "e":Lcom/sleepycat/je/log/ChecksumException;
    .restart local v7    # "dbCache":Lcom/sleepycat/je/cleaner/DbCache;
    .restart local v15    # "reader":Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;
    .restart local v18    # "entriesToErase":I
    .restart local v19    # "firstWriteTime":J
    .restart local v21    # "completed":Z
    .restart local v22    # "raf":Ljava/io/RandomAccessFile;
    .restart local v24    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .restart local v25    # "nextObsolete":J
    .restart local v27    # "extinctionScanner":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .restart local v32    # "fullFileName":Ljava/lang/String;
    .restart local v34    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .restart local v41    # "fileLength":J
    .restart local p1    # "file":Ljava/lang/Long;
    :catchall_17
    move-exception v0

    move-object v2, v0

    move/from16 v4, v18

    move-object/from16 v5, v22

    goto :goto_1e

    .end local v22    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catchall_18
    move-exception v0

    move-object/from16 v22, v5

    move-object v2, v0

    move/from16 v4, v18

    .end local v18    # "entriesToErase":I
    .local v4, "entriesToErase":I
    :goto_1e
    cmp-long v0, v19, v28

    if-eqz v0, :cond_1c

    .line 1537
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v3, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1540
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1541
    invoke-static/range {v19 .. v20}, Lcom/sleepycat/je/cleaner/DataEraser;->formatTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v21, :cond_1b

    move-object/from16 v10, v16

    goto :goto_1f

    :cond_1b
    move-object/from16 v10, v17

    :goto_1f
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1537
    invoke-static {v0, v3, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1546
    :cond_1c
    invoke-virtual {v7}, Lcom/sleepycat/je/cleaner/DbCache;->releaseDbImpls()V

    .line 1548
    if-eqz v5, :cond_1d

    .line 1550
    :try_start_21
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_3a

    .line 1556
    goto :goto_20

    .line 1551
    :catch_3a
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 1552
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v8, v1, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1555
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1552
    invoke-static {v3, v8, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1556
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1d
    :goto_20
    throw v2
.end method

.method private static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .line 2206
    sget-object v0, Lcom/sleepycat/je/cleaner/DataEraser;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCycleStatus()Ljava/lang/String;
    .locals 3

    .line 2197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cycle start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->startTime:J

    invoke-static {v1, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->endTime:J

    .line 2198
    invoke-static {v1, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filesCompleted: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesCompleted:Ljava/util/NavigableSet;

    .line 2199
    invoke-static {v1}, Lcom/sleepycat/utilint/FormatUtil;->asHexString(Ljava/util/SortedSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], filesRemaining: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    .line 2200
    invoke-static {v1}, Lcom/sleepycat/utilint/FormatUtil;->asHexString(Ljava/util/SortedSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2197
    return-object v0
.end method

.method private getFileCreationTime(J)J
    .locals 6
    .param p1, "file"    # J

    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/log/FileManager;->getFileHeaderTimestamp(J)Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Timestamp;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 875
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1

    .line 869
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 870
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception erasing file 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 872
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getFileLength(J)J
    .locals 2
    .param p1, "file"    # J

    .line 882
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFileProtectionMessage()Ljava/lang/String;
    .locals 5

    .line 1003
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getFirstFileInRecoveryInterval()J

    move-result-wide v0

    .line 1005
    .local v0, "firstRecoveryFile":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Files protected by the current recovery interval: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    .line 1007
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    .line 1006
    invoke-static {v3}, Lcom/sleepycat/utilint/FormatUtil;->asHexString(Ljava/util/SortedSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]. Other protected files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    .line 1009
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/cleaner/FileProtector;->getProtectedFileMap(Ljava/util/SortedSet;)Ljava/util/NavigableMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". FirstRecoveryFile: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1010
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". FirstVLSNIndexFile: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    .line 1012
    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/FileProtector;->getVLSNIndexStartFile()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1005
    return-object v2
.end method

.method private getFirstFileInRecoveryInterval()J
    .locals 2

    .line 1147
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1148
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCheckpointer()Lcom/sleepycat/je/recovery/Checkpointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/Checkpointer;->getLastCheckpointFirstActiveLsn()J

    move-result-wide v0

    .line 1147
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getNextFile()Ljava/lang/Long;
    .locals 10

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->lastProtectedFilesMsg:Ljava/lang/String;

    .line 908
    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->lastProtectedFilesMsgLevel:Ljava/util/logging/Level;

    .line 910
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    return-object v0

    .line 914
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getNextUnprotectedFile()Ljava/lang/Long;

    move-result-object v0

    .line 915
    .local v0, "file":Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 916
    return-object v0

    .line 919
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/Cleaner;->isFileDeletionEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 925
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getFirstFileInRecoveryInterval()J

    move-result-wide v1

    .line 927
    .local v1, "lastRecoveryFile":J
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-interface {v3}, Ljava/util/NavigableSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    const-string v4, "."

    if-gez v3, :cond_7

    .line 939
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 946
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/FileProtector;->getVLSNIndexStartFile()J

    move-result-wide v5

    .line 948
    .local v5, "vlsnIndexStartFile":J
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-interface {v3}, Ljava/util/NavigableSet;->last()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-gtz v3, :cond_5

    .line 956
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getVLSNIndexTruncationInfo()Lcom/sleepycat/je/utilint/Pair;

    move-result-object v3

    .line 958
    .local v3, "truncateInfo":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/Long;>;"
    if-eqz v3, :cond_4

    .line 969
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 970
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 969
    invoke-virtual {v4, v7, v8, v9}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->tryTruncateVlsnHead(Lcom/sleepycat/je/utilint/VLSN;J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 985
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getNextUnprotectedFile()Ljava/lang/Long;

    move-result-object v0

    .line 986
    if-eqz v0, :cond_2

    .line 987
    return-object v0

    .line 990
    :cond_2
    new-instance v4, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Protected files are not in the recovery interval and VLSNIndex was successfully truncated."

    invoke-direct {v4, v8, v7}, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    throw v4

    .line 980
    :cond_3
    new-instance v4, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v8, "VLSNIndex already truncated or cannot be truncated further."

    invoke-direct {v4, v8, v7}, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    throw v4

    .line 960
    :cond_4
    new-instance v4, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v8, "Cannot truncate VLSNIndex because no remaining files contain VLSNs."

    invoke-direct {v4, v8, v7}, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    throw v4

    .line 949
    .end local v3    # "truncateInfo":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/Long;>;"
    :cond_5
    new-instance v3, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Protected files are not in the recovery interval and not protected by the VLSNIndex vlsnIndexStartFile=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 952
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-direct {v3, v4, v7}, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    throw v3

    .line 941
    .end local v5    # "vlsnIndexStartFile":J
    :cond_6
    new-instance v3, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Protected files are not in the recovery interval."

    invoke-direct {v3, v5, v4}, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    throw v3

    .line 928
    :cond_7
    new-instance v3, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "All remaining files are in the recovery interval, lastRecoveryFile=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 931
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    throw v3

    .line 920
    .end local v1    # "lastRecoveryFile":J
    :cond_8
    new-instance v1, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Test mode prohibits VLSNIndex truncation."

    invoke-direct {v1, v3, v2}, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    throw v1
.end method

.method private getNextUnprotectedFile()Ljava/lang/Long;
    .locals 7

    .line 1023
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFileMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1025
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    .line 1026
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/cleaner/FileProtector;->getFirstUnprotectedFile(Ljava/util/NavigableSet;)Ljava/lang/Long;

    move-result-object v1

    .line 1028
    .local v1, "file":Ljava/lang/Long;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1029
    monitor-exit v0

    return-object v2

    .line 1032
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getFirstFileInRecoveryInterval()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 1033
    monitor-exit v0

    return-object v2

    .line 1036
    :cond_1
    iput-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFile:Ljava/lang/Long;

    .line 1037
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->abortCurrentFile:Z

    .line 1038
    monitor-exit v0

    return-object v1

    .line 1039
    .end local v1    # "file":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getStat(Ljava/util/concurrent/atomic/AtomicInteger;Z)I
    .locals 1
    .param p1, "val"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "clear"    # Z

    .line 632
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getStat(Ljava/util/concurrent/atomic/AtomicLong;Z)J
    .locals 2
    .param p1, "val"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p2, "clear"    # Z

    .line 628
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private getVLSNIndexTruncationInfo()Lcom/sleepycat/je/utilint/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Lcom/sleepycat/je/utilint/VLSN;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1170
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1172
    .local v1, "file":Ljava/lang/Long;
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkContinue()V

    .line 1178
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/cleaner/FileProtector;->getReservedFileLastVLSN(Ljava/lang/Long;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 1180
    .local v2, "lastVlsn":Lcom/sleepycat/je/utilint/VLSN;
    if-eqz v2, :cond_1

    .line 1181
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1182
    goto :goto_0

    .line 1184
    :cond_0
    new-instance v0, Lcom/sleepycat/je/utilint/Pair;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1188
    :cond_1
    invoke-direct {p0, v1}, Lcom/sleepycat/je/cleaner/DataEraser;->searchFileForLastVLSN(Ljava/lang/Long;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 1190
    if-eqz v2, :cond_3

    .line 1191
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1192
    goto :goto_0

    .line 1194
    :cond_2
    new-instance v0, Lcom/sleepycat/je/utilint/Pair;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1196
    .end local v1    # "file":Ljava/lang/Long;
    .end local v2    # "lastVlsn":Lcom/sleepycat/je/utilint/VLSN;
    :cond_3
    goto :goto_0

    .line 1198
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private isBINDead(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;J)Z
    .locals 8
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "binFromLog"    # Lcom/sleepycat/je/tree/BIN;
    .param p3, "logLsn"    # J

    .line 1628
    invoke-virtual {p2, p1}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1630
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v2, v2, v1}, Lcom/sleepycat/je/tree/Tree;->getParentINForChildIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/SearchResult;

    move-result-object v0

    .line 1634
    .local v0, "result":Lcom/sleepycat/je/tree/SearchResult;
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    if-nez v1, :cond_0

    .line 1640
    return v2

    .line 1648
    :cond_0
    :try_start_0
    iget-boolean v1, v0, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-eqz v1, :cond_5

    .line 1654
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    iget v3, v0, Lcom/sleepycat/je/tree/SearchResult;->index:I

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v3

    .line 1656
    .local v3, "treeLsn":J
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/sleepycat/je/tree/BIN;->isBINDelta(Z)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 1661
    cmp-long v5, p3, v3

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1683
    :goto_0
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1661
    return v2

    .line 1668
    :cond_2
    cmp-long v5, p3, v3

    if-nez v5, :cond_3

    .line 1669
    nop

    .line 1683
    iget-object v2, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1669
    return v1

    .line 1677
    :cond_3
    :try_start_1
    iget-object v5, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    iget v6, v0, Lcom/sleepycat/je/tree/SearchResult;->index:I

    sget-object v7, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/je/tree/IN;->fetchIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/BIN;

    .line 1680
    .local v5, "treeBin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v6, p3, v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    .line 1683
    :goto_1
    iget-object v1, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1680
    return v2

    .line 1683
    .end local v3    # "treeLsn":J
    .end local v5    # "treeBin":Lcom/sleepycat/je/tree/BIN;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1648
    :cond_5
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .end local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "binFromLog":Lcom/sleepycat/je/tree/BIN;
    .end local p3    # "logLsn":J
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1683
    .restart local v0    # "result":Lcom/sleepycat/je/tree/SearchResult;
    .restart local p1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "binFromLog":Lcom/sleepycat/je/tree/BIN;
    .restart local p3    # "logLsn":J
    :goto_2
    iget-object v2, v0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v1
.end method

.method private loadFileSet(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/util/NavigableSet;
    .locals 7
    .param p1, "in"    # Lcom/sleepycat/bind/tuple/TupleInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/tuple/TupleInput;",
            ")",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2087
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v0

    .line 2089
    .local v0, "size":I
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 2090
    invoke-static {v1}, Ljava/util/Collections;->synchronizedNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v1

    .line 2092
    .local v1, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    const-wide/16 v2, 0x0

    .line 2094
    .local v2, "file":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 2095
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 2096
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    .line 2094
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2099
    .end local v4    # "i":I
    :cond_0
    return-object v1
.end method

.method private loadState()Z
    .locals 4

    .line 2055
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 2057
    .local v0, "data":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMetadataStore()Lcom/sleepycat/je/dbi/MetadataStore;

    move-result-object v1

    const-string v2, "eraser"

    invoke-virtual {v1, v2, v0}, Lcom/sleepycat/je/dbi/MetadataStore;->get(Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2059
    const/4 v1, 0x0

    return v1

    .line 2062
    :cond_0
    invoke-static {v0}, Lcom/sleepycat/bind/tuple/TupleBase;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v1

    .line 2064
    .local v1, "in":Lcom/sleepycat/bind/tuple/TupleInput;
    invoke-virtual {v1}, Lcom/sleepycat/bind/tuple/TupleInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->startTime:J

    .line 2065
    invoke-virtual {v1}, Lcom/sleepycat/bind/tuple/TupleInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->endTime:J

    .line 2066
    invoke-virtual {v1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->totalCycleWork:J

    .line 2067
    invoke-direct {p0, v1}, Lcom/sleepycat/je/cleaner/DataEraser;->loadFileSet(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/util/NavigableSet;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesCompleted:Ljava/util/NavigableSet;

    .line 2068
    invoke-direct {p0, v1}, Lcom/sleepycat/je/cleaner/DataEraser;->loadFileSet(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/util/NavigableSet;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    .line 2070
    const/4 v2, 0x1

    return v2
.end method

.method private logCycleCannotResume()V
    .locals 4

    .line 2170
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERASER previously incomplete cycle not resumed at startup because end time has passed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2172
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getCycleStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2170
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2174
    sget-object v0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->CANNOT_RESUME:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/DataEraser;->callTestEventHook(Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;)V

    .line 2175
    return-void
.end method

.method private logCycleComplete()V
    .locals 4

    .line 2133
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERASER cycle completed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2134
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getCycleStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2133
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2136
    sget-object v0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->COMPLETE:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/DataEraser;->callTestEventHook(Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;)V

    .line 2137
    return-void
.end method

.method private logCycleIncomplete()V
    .locals 4

    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERASER unable to erase files within the erasure period. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->lastProtectedFilesMsg:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "File protection did not prevent erasure, so probably just ran out of time."

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2147
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getFileProtectionMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2148
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getCycleStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2150
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->lastProtectedFilesMsgLevel:Ljava/util/logging/Level;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_1
    invoke-static {v1, v2, v3, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2156
    sget-object v1, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->INCOMPLETE:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    invoke-direct {p0, v1}, Lcom/sleepycat/je/cleaner/DataEraser;->callTestEventHook(Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;)V

    .line 2157
    return-void
.end method

.method private logCycleInit(I)V
    .locals 4
    .param p1, "filesToExamine"    # I

    .line 2117
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERASER initializing new cycle. Total files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2120
    sget-object v0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->INIT:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/DataEraser;->callTestEventHook(Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;)V

    .line 2121
    return-void
.end method

.method private logCycleResume()V
    .locals 4

    .line 2161
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERASER previously incomplete cycle resumed at startup. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2163
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getCycleStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2161
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2165
    sget-object v0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->RESUME:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/DataEraser;->callTestEventHook(Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;)V

    .line 2166
    return-void
.end method

.method private logCycleStart()V
    .locals 4

    .line 2125
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERASER new cycle started. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2126
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getCycleStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2125
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2128
    sget-object v0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->START:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/DataEraser;->callTestEventHook(Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;)V

    .line 2129
    return-void
.end method

.method private logCycleSuspend()V
    .locals 4

    .line 2179
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERASER incomplete cycle suspended at shutdown. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2181
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getFileProtectionMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getCycleStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2179
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2183
    sget-object v0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->SUSPEND:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/DataEraser;->callTestEventHook(Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;)V

    .line 2184
    return-void
.end method

.method private logPeriodChanged()V
    .locals 4

    .line 2188
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERASER period param was changed, current cycle aborted. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2190
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getCycleStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2188
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2192
    sget-object v0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->PERIOD_CHANGED:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/DataEraser;->callTestEventHook(Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;)V

    .line 2193
    return-void
.end method

.method private resumeCycle()Z
    .locals 11

    .line 736
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->loadState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 737
    return v1

    .line 740
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/je/cleaner/DataEraser;->endTime:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 741
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 742
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->logCycleCannotResume()V

    .line 744
    :cond_1
    return v1

    .line 747
    :cond_2
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->logCycleResume()V

    .line 749
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    .line 750
    invoke-interface {v0}, Ljava/util/NavigableSet;->size()I

    move-result v0

    iget-wide v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->cycleMs:J

    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->createFileInfoThrottle(IJ)Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    move-result-object v0

    .line 753
    .local v0, "throttle":Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 755
    .local v2, "file":Ljava/lang/Long;
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileInfoCache:Ljava/util/NavigableMap;

    new-instance v4, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;

    .line 757
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/sleepycat/je/cleaner/DataEraser;->getFileCreationTime(J)J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sleepycat/je/cleaner/DataEraser;->getFileLength(J)J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;-><init>(JJ)V

    .line 755
    invoke-interface {v3, v2, v4}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->throttle(J)V

    .line 760
    .end local v2    # "file":Ljava/lang/Long;
    goto :goto_0

    .line 762
    :cond_3
    new-instance v1, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    iget-wide v7, p0, Lcom/sleepycat/je/cleaner/DataEraser;->totalCycleWork:J

    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->endTime:J

    iget-wide v4, p0, Lcom/sleepycat/je/cleaner/DataEraser;->startTime:J

    sub-long v9, v2, v4

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;-><init>(Lcom/sleepycat/je/cleaner/DataEraser;JJ)V

    iput-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->cycleThrottle:Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    .line 763
    const/4 v1, 0x1

    return v1
.end method

.method private searchFileForLastVLSN(Ljava/lang/Long;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 25
    .param p1, "file"    # Ljava/lang/Long;

    .line 1210
    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/sleepycat/je/cleaner/DataEraser;->fileInfoCache:Ljava/util/NavigableMap;

    move-object/from16 v14, p1

    invoke-interface {v0, v14}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;

    .line 1212
    .local v15, "fileInfo":Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;
    if-eqz v15, :cond_0

    iget-object v0, v15, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;->lastVlsn:Lcom/sleepycat/je/utilint/VLSN;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, v15, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;->lastVlsn:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0

    .line 1216
    :cond_0
    if-eqz v15, :cond_1

    iget-wide v0, v15, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;->length:J

    goto :goto_0

    .line 1217
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {v13, v0, v1}, Lcom/sleepycat/je/cleaner/DataEraser;->getFileLength(J)J

    move-result-wide v0

    :goto_0
    move-wide v11, v0

    .line 1230
    .local v11, "fileLength":J
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v13, Lcom/sleepycat/je/cleaner/DataEraser;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 1231
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/log/FileManager;->getFileHeaderPrevOffset(J)J

    move-result-wide v2

    .line 1233
    .local v2, "prevOffset":J
    const/4 v0, 0x0

    .line 1234
    .local v0, "forward":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v4

    .line 1235
    .local v4, "startLsn":J
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v1}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v6

    .line 1236
    .local v6, "finishLsn":J
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9, v11, v12}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v8

    .line 1250
    .end local v2    # "prevOffset":J
    .local v1, "endOfFileLsn":J
    move/from16 v16, v0

    move-wide/from16 v17, v1

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    goto :goto_1

    .line 1247
    .end local v0    # "forward":Z
    .end local v1    # "endOfFileLsn":J
    .end local v4    # "startLsn":J
    .end local v6    # "finishLsn":J
    :catch_0
    move-exception v0

    .line 1248
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, v13, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1

    .line 1238
    .end local v0    # "e":Lcom/sleepycat/je/log/ChecksumException;
    :catch_1
    move-exception v0

    .line 1242
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x1

    .line 1243
    .local v2, "forward":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v1}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v4

    .line 1244
    .restart local v4    # "startLsn":J
    const-wide/16 v6, -0x1

    .line 1245
    .restart local v6    # "finishLsn":J
    const-wide/16 v0, -0x1

    .line 1250
    .local v0, "endOfFileLsn":J
    move-wide/from16 v17, v0

    move/from16 v16, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    .line 1252
    .end local v0    # "endOfFileLsn":J
    .end local v2    # "forward":Z
    .end local v4    # "startLsn":J
    .end local v6    # "finishLsn":J
    .local v16, "forward":Z
    .local v17, "endOfFileLsn":J
    .local v19, "startLsn":J
    .local v21, "finishLsn":J
    :goto_1
    new-instance v0, Lcom/sleepycat/je/cleaner/DataEraser$1;

    iget-object v3, v13, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v1, v13, Lcom/sleepycat/je/cleaner/DataEraser;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget v4, v1, Lcom/sleepycat/je/cleaner/Cleaner;->readBufferSize:I

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v5, v16

    move-wide/from16 v6, v19

    move-object/from16 v8, p1

    move-wide/from16 v9, v17

    move-wide/from16 v23, v11

    .end local v11    # "fileLength":J
    .local v23, "fileLength":J
    move-wide/from16 v11, v21

    invoke-direct/range {v1 .. v12}, Lcom/sleepycat/je/cleaner/DataEraser$1;-><init>(Lcom/sleepycat/je/cleaner/DataEraser;Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    .line 1277
    .local v1, "reader":Lcom/sleepycat/je/log/FileReader;
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    move-object v2, v0

    .line 1280
    .local v2, "lastVlsn":Lcom/sleepycat/je/utilint/VLSN;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileReader;->readNextEntryAllowExceptions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1281
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileReader;->getLastVlsn()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    move-object v2, v0

    .line 1283
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1288
    if-nez v16, :cond_2

    .line 1289
    goto :goto_2

    .line 1284
    :cond_3
    const-string v0, "Replicated entries must have a VLSN."

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v1    # "reader":Lcom/sleepycat/je/log/FileReader;
    .end local v2    # "lastVlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local v15    # "fileInfo":Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;
    .end local v16    # "forward":Z
    .end local v17    # "endOfFileLsn":J
    .end local v19    # "startLsn":J
    .end local v21    # "finishLsn":J
    .end local v23    # "fileLength":J
    .end local p1    # "file":Ljava/lang/Long;
    throw v0
    :try_end_1
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1298
    .restart local v1    # "reader":Lcom/sleepycat/je/log/FileReader;
    .restart local v2    # "lastVlsn":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v15    # "fileInfo":Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;
    .restart local v16    # "forward":Z
    .restart local v17    # "endOfFileLsn":J
    .restart local v19    # "startLsn":J
    .restart local v21    # "finishLsn":J
    .restart local v23    # "fileLength":J
    .restart local p1    # "file":Ljava/lang/Long;
    :cond_4
    :goto_2
    nop

    .line 1300
    if-eqz v15, :cond_5

    .line 1301
    iput-object v2, v15, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;->lastVlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 1304
    :cond_5
    return-object v2

    .line 1296
    :catch_2
    move-exception v0

    .line 1297
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    return-object v3

    .line 1292
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 1293
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    new-instance v3, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v4, v13, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v5, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v3, v4, v5, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static setTestEventHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;",
            ">;)V"
        }
    .end annotation

    .line 2219
    .local p0, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;>;"
    sput-object p0, Lcom/sleepycat/je/cleaner/DataEraser;->testEventHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 2220
    return-void
.end method

.method private startCycle()V
    .locals 16

    .line 773
    move-object/from16 v6, p0

    iget-wide v7, v6, Lcom/sleepycat/je/cleaner/DataEraser;->cycleMs:J

    .line 775
    .local v7, "localCycleMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/sleepycat/je/cleaner/DataEraser;->startTime:J

    .line 776
    iget-wide v0, v6, Lcom/sleepycat/je/cleaner/DataEraser;->startTime:J

    add-long/2addr v0, v7

    iput-wide v0, v6, Lcom/sleepycat/je/cleaner/DataEraser;->endTime:J

    .line 777
    iget-wide v0, v6, Lcom/sleepycat/je/cleaner/DataEraser;->startTime:J

    sub-long v9, v0, v7

    .line 778
    .local v9, "fileAgeCutoff":J
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    iput-object v0, v6, Lcom/sleepycat/je/cleaner/DataEraser;->filesCompleted:Ljava/util/NavigableSet;

    .line 779
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    iput-object v0, v6, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    .line 780
    const-wide/16 v0, 0x0

    iput-wide v0, v6, Lcom/sleepycat/je/cleaner/DataEraser;->completionTime:J

    .line 782
    iget-object v0, v6, Lcom/sleepycat/je/cleaner/DataEraser;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    .line 783
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/FileProtector;->getAllCompletedFiles()Ljava/util/NavigableSet;

    move-result-object v11

    .line 785
    .local v11, "allFiles":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    nop

    .line 786
    invoke-interface {v11}, Ljava/util/NavigableSet;->size()I

    move-result v0

    invoke-direct {v6, v0, v7, v8}, Lcom/sleepycat/je/cleaner/DataEraser;->createFileInfoThrottle(IJ)Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    move-result-object v12

    .line 788
    .local v12, "throttle":Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;
    invoke-interface {v11}, Ljava/util/NavigableSet;->size()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/sleepycat/je/cleaner/DataEraser;->logCycleInit(I)V

    .line 794
    invoke-interface {v11}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 801
    .local v1, "file":Ljava/lang/Long;
    iget-object v2, v6, Lcom/sleepycat/je/cleaner/DataEraser;->fileInfoCache:Ljava/util/NavigableMap;

    invoke-interface {v2, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;

    .line 802
    .local v2, "prevInfo":Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;
    if-eqz v2, :cond_1

    .line 803
    iget-wide v3, v2, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;->creationTime:J

    cmp-long v3, v3, v9

    if-gtz v3, :cond_0

    .line 804
    iget-object v3, v6, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-interface {v3, v1}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 809
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v6, v3, v4}, Lcom/sleepycat/je/cleaner/DataEraser;->getFileCreationTime(J)J

    move-result-wide v3

    .line 811
    .local v3, "creationTime":J
    const-wide/16 v13, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->throttle(J)V

    .line 813
    cmp-long v5, v3, v9

    if-lez v5, :cond_2

    .line 814
    goto :goto_0

    .line 817
    :cond_2
    iget-object v5, v6, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-interface {v5, v1}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v5, v6, Lcom/sleepycat/je/cleaner/DataEraser;->fileInfoCache:Ljava/util/NavigableMap;

    new-instance v13, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;

    .line 820
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v6, v14, v15}, Lcom/sleepycat/je/cleaner/DataEraser;->getFileLength(J)J

    move-result-wide v14

    invoke-direct {v13, v3, v4, v14, v15}, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;-><init>(JJ)V

    .line 819
    invoke-interface {v5, v1, v13}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    .end local v1    # "file":Ljava/lang/Long;
    .end local v2    # "prevInfo":Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;
    .end local v3    # "creationTime":J
    goto :goto_0

    .line 827
    :cond_3
    iget-object v0, v6, Lcom/sleepycat/je/cleaner/DataEraser;->fileInfoCache:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, v6, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-interface {v0, v1}, Ljava/util/NavigableSet;->retainAll(Ljava/util/Collection;)Z

    .line 833
    iget-object v0, v6, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda0;

    invoke-direct {v1, v6}, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda0;-><init>(Lcom/sleepycat/je/cleaner/DataEraser;)V

    .line 834
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 835
    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    mul-long/2addr v2, v0

    iput-wide v2, v6, Lcom/sleepycat/je/cleaner/DataEraser;->totalCycleWork:J

    .line 837
    new-instance v13, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    iget-wide v0, v6, Lcom/sleepycat/je/cleaner/DataEraser;->endTime:J

    iget-wide v4, v6, Lcom/sleepycat/je/cleaner/DataEraser;->startTime:J

    sub-long v4, v0, v4

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;-><init>(Lcom/sleepycat/je/cleaner/DataEraser;JJ)V

    iput-object v13, v6, Lcom/sleepycat/je/cleaner/DataEraser;->cycleThrottle:Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    .line 838
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/DataEraser;->logCycleStart()V

    .line 839
    return-void
.end method

.method private storeFileSet(Lcom/sleepycat/bind/tuple/TupleOutput;Ljava/util/NavigableSet;)V
    .locals 7
    .param p1, "out"    # Lcom/sleepycat/bind/tuple/TupleOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/tuple/TupleOutput;",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 2076
    .local p2, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/util/NavigableSet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 2077
    const-wide/16 v0, 0x0

    .line 2079
    .local v0, "priorFile":J
    invoke-interface {p2}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2080
    .local v3, "file":J
    sub-long v5, v3, v0

    invoke-virtual {p1, v5, v6}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 2081
    move-wide v0, v3

    .line 2082
    .end local v3    # "file":J
    goto :goto_0

    .line 2083
    :cond_0
    return-void
.end method

.method private storeState()V
    .locals 4

    .line 2039
    new-instance v0, Lcom/sleepycat/bind/tuple/TupleOutput;

    invoke-direct {v0}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>()V

    .line 2041
    .local v0, "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    iget-wide v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->startTime:J

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 2042
    iget-wide v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->endTime:J

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 2043
    iget-wide v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->totalCycleWork:J

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 2044
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesCompleted:Ljava/util/NavigableSet;

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/cleaner/DataEraser;->storeFileSet(Lcom/sleepycat/bind/tuple/TupleOutput;Ljava/util/NavigableSet;)V

    .line 2045
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/cleaner/DataEraser;->storeFileSet(Lcom/sleepycat/bind/tuple/TupleOutput;Ljava/util/NavigableSet;)V

    .line 2047
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 2048
    .local v1, "data":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {v0, v1}, Lcom/sleepycat/bind/tuple/TupleBase;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 2050
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMetadataStore()Lcom/sleepycat/je/dbi/MetadataStore;

    move-result-object v2

    const-string v3, "eraser"

    invoke-virtual {v2, v3, v1}, Lcom/sleepycat/je/dbi/MetadataStore;->put(Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationResult;

    .line 2051
    return-void
.end method

.method private touchAndFsync(Ljava/io/RandomAccessFile;J)V
    .locals 7
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "fileLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1723
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkContinue()V

    .line 1725
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1726
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    .line 1727
    .local v2, "b":B
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1728
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 1729
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->writes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1730
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->writeBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1732
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 1733
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fSyncs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1734
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->cycleThrottle:Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    const-wide/16 v3, 0x12

    mul-long/2addr v3, p2

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->throttle(J)V

    .line 1737
    return-void
.end method

.method private waitForCycleEnd()V
    .locals 7

    .line 2006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->completionTime:J

    .line 2007
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->logCycleComplete()V

    .line 2009
    iget v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollCheckMs:I

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->endTime:J

    iget-wide v5, p0, Lcom/sleepycat/je/cleaner/DataEraser;->completionTime:J

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollMutex:Ljava/lang/Object;

    new-instance v6, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda5;-><init>(Lcom/sleepycat/je/cleaner/DataEraser;)V

    invoke-static/range {v1 .. v6}, Lcom/sleepycat/je/utilint/PollCondition;->await(JJLjava/lang/Object;Ljava/util/function/Supplier;)Z

    .line 2015
    return-void
.end method

.method private waitForEnabled()V
    .locals 7

    .line 1991
    :goto_0
    iget v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollCheckMs:I

    int-to-long v1, v0

    const-wide/32 v3, 0x493e0

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollMutex:Ljava/lang/Object;

    new-instance v6, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda1;-><init>(Lcom/sleepycat/je/cleaner/DataEraser;)V

    invoke-static/range {v1 .. v6}, Lcom/sleepycat/je/utilint/PollCondition;->await(JJLjava/lang/Object;Ljava/util/function/Supplier;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1997
    return-void

    .line 1991
    :cond_0
    goto :goto_0
.end method

.method private waitForUnprotectedFiles(Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;)V
    .locals 7
    .param p1, "e"    # Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;

    .line 2026
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->lastProtectedFilesMsg:Ljava/lang/String;

    .line 2027
    iget-object v0, p1, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;->logLevel:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->lastProtectedFilesMsgLevel:Ljava/util/logging/Level;

    .line 2029
    iget v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollCheckMs:I

    int-to-long v1, v0

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollMutex:Ljava/lang/Object;

    new-instance v6, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda3;-><init>(Lcom/sleepycat/je/cleaner/DataEraser;)V

    const-wide/16 v3, 0x3e8

    invoke-static/range {v1 .. v6}, Lcom/sleepycat/je/utilint/PollCondition;->await(JJLjava/lang/Object;Ljava/util/function/Supplier;)Z

    .line 2035
    return-void
.end method

.method private writeErasedType(Ljava/io/RandomAccessFile;J)V
    .locals 2
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "headerOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1746
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1747
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkContinue()V

    .line 1748
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_ERASED:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 1750
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->writes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1751
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->writeBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1754
    return-void
.end method


# virtual methods
.method public abortErase(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V
    .locals 6
    .param p1, "fileSet"    # Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    .line 1085
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFileMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1092
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFile:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFile:Ljava/lang/Long;

    const/4 v2, 0x0

    .line 1093
    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->isProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileProtector:Lcom/sleepycat/je/cleaner/FileProtector;

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFile:Ljava/lang/Long;

    .line 1094
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/cleaner/FileProtector;->isReservedFile(Ljava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1096
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->abortCurrentFile:Z

    .line 1097
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFile:Ljava/lang/Long;

    .line 1101
    .local v1, "abortFile":Ljava/lang/Long;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    const-wide/16 v2, 0x1

    iget v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->abortTimeoutMs:I

    int-to-long v4, v0

    new-instance v0, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda4;-><init>(Lcom/sleepycat/je/cleaner/DataEraser;Ljava/lang/Long;)V

    invoke-static {v2, v3, v4, v5, v0}, Lcom/sleepycat/je/utilint/PollCondition;->await(JJLjava/util/function/Supplier;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    return-void

    .line 1132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to abort erasure of file 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1133
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " within "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->abortTimeoutMs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v2, v3, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1137
    new-instance v2, Lcom/sleepycat/je/cleaner/EraserAbortException;

    invoke-direct {v2, v0}, Lcom/sleepycat/je/cleaner/EraserAbortException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1099
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "abortFile":Ljava/lang/Long;
    :cond_1
    :try_start_1
    monitor-exit v0

    return-void

    .line 1101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 7
    .param p1, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p2, "ignore"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 531
    const-string v0, "test.erasePeriod"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "testErasePeriod":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_ERASER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 534
    invoke-virtual {p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->isSpecified(Lcom/sleepycat/je/config/ConfigParam;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    const/4 v2, 0x1

    .line 537
    .local v2, "runErase":Z
    invoke-static {v0}, Lcom/sleepycat/je/utilint/PropUtil;->parseDuration(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->cycleMs:J

    .line 538
    iput-boolean v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseDeletedDbs:Z

    .line 539
    iput-boolean v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseExtinctRecords:Z

    goto :goto_0

    .line 542
    .end local v2    # "runErase":Z
    :cond_0
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_ERASER:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v2

    .line 545
    .restart local v2    # "runErase":Z
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->ERASE_PERIOD:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->cycleMs:J

    .line 548
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->ERASE_DELETED_DATABASES:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseDeletedDbs:Z

    .line 551
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->ERASE_EXTINCT_RECORDS:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseExtinctRecords:Z

    .line 555
    :goto_0
    if-eqz v2, :cond_2

    iget-wide v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->cycleMs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    iget-boolean v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseDeletedDbs:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->eraseExtinctRecords:Z

    if-eqz v3, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->enabled:Z

    .line 558
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_TERMINATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->terminateMillis:I

    .line 561
    const/16 v3, 0x64

    div-int/lit8 v1, v1, 0x4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollCheckMs:I

    .line 563
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ERASE_ABORT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->abortTimeoutMs:I

    .line 565
    return-void
.end method

.method getCurrentFile()Ljava/lang/Long;
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFile:Ljava/lang/Long;

    return-object v0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public initiateSoftShutdown()I
    .locals 2

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->shutdownRequested:Z

    .line 643
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollMutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 645
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    iget v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->terminateMillis:I

    return v0

    .line 645
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isEntryErased(J)Z
    .locals 13
    .param p1, "lsn"    # J

    .line 1823
    const-string v0, ": "

    const-string v1, "DataEraser.isEntryErased exception when closing file 0x"

    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v2

    .line 1824
    .local v2, "file":J
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v4

    .line 1830
    .local v4, "offset":J
    const/4 v6, 0x0

    .line 1832
    .local v6, "fileHandle":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v9, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 1833
    invoke-virtual {v9, v2, v3}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sleepycat/je/log/FileManager$FileMode;->READ_MODE:Lcom/sleepycat/je/log/FileManager$FileMode;

    .line 1834
    invoke-virtual {v10}, Lcom/sleepycat/je/log/FileManager$FileMode;->getModeValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 1836
    const-wide/16 v8, 0x4

    add-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1838
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v8

    sget-object v9, Lcom/sleepycat/je/log/LogEntryType;->LOG_ERASED:Lcom/sleepycat/je/log/LogEntryType;

    .line 1839
    invoke-virtual {v9}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v9
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v8, v9, :cond_0

    const/4 v7, 0x1

    .line 1850
    :cond_0
    nop

    .line 1852
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1858
    goto :goto_0

    .line 1853
    :catch_0
    move-exception v8

    .line 1854
    .local v8, "e":Ljava/io/IOException;
    iget-object v9, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v10, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1857
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1854
    invoke-static {v9, v10, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1838
    .end local v8    # "e":Ljava/io/IOException;
    :goto_0
    return v7

    .line 1850
    :catchall_0
    move-exception v7

    goto :goto_1

    .line 1844
    :catch_1
    move-exception v7

    .line 1845
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v8, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v9, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v10, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_WRITE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception checking erasure file 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1847
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11, v7}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "file":J
    .end local v4    # "offset":J
    .end local v6    # "fileHandle":Ljava/io/RandomAccessFile;
    .end local p1    # "lsn":J
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1850
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "file":J
    .restart local v4    # "offset":J
    .restart local v6    # "fileHandle":Ljava/io/RandomAccessFile;
    .restart local p1    # "lsn":J
    :goto_1
    if-eqz v6, :cond_1

    .line 1852
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1858
    goto :goto_2

    .line 1853
    :catch_2
    move-exception v8

    .line 1854
    .restart local v8    # "e":Ljava/io/IOException;
    iget-object v9, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v10, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1857
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1854
    invoke-static {v9, v10, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1858
    .end local v8    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    throw v7

    .line 1841
    :catch_3
    move-exception v8

    goto :goto_3

    :catch_4
    move-exception v8

    .line 1842
    .restart local v8    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 1850
    if-eqz v6, :cond_2

    .line 1852
    :try_start_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1858
    goto :goto_4

    .line 1853
    :catch_5
    move-exception v9

    .line 1854
    .local v9, "e":Ljava/io/IOException;
    iget-object v10, p0, Lcom/sleepycat/je/cleaner/DataEraser;->logger:Ljava/util/logging/Logger;

    iget-object v11, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1857
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1854
    invoke-static {v10, v11, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1842
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    return v7
.end method

.method synthetic lambda$abortErase$1$com-sleepycat-je-cleaner-DataEraser(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "abortFile"    # Ljava/lang/Long;

    .line 1115
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1116
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->pollMutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1117
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1118
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFileMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1119
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->currentFile:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1117
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method synthetic lambda$startCycle$0$com-sleepycat-je-cleaner-DataEraser(Ljava/lang/Long;)J
    .locals 2
    .param p1, "file"    # Ljava/lang/Long;

    .line 834
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fileInfoCache:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;

    iget-wide v0, v0, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;->length:J

    return-wide v0
.end method

.method synthetic lambda$waitForCycleEnd$3$com-sleepycat-je-cleaner-DataEraser()Ljava/lang/Boolean;
    .locals 1

    .line 2012
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkContinue()V

    .line 2013
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$waitForEnabled$2$com-sleepycat-je-cleaner-DataEraser()Ljava/lang/Boolean;
    .locals 1

    .line 1994
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkShutdown()V

    .line 1995
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$waitForUnprotectedFiles$4$com-sleepycat-je-cleaner-DataEraser()Ljava/lang/Boolean;
    .locals 1

    .line 2032
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkShutdown()V

    .line 2033
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 10
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 569
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Eraser"

    const-string v2, "Obsolete data is erased during each erasure cycle."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .local v0, "statGroup":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-static {}, Lcom/sleepycat/je/utilint/TracerFormatter;->makeDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    .line 576
    .local v1, "dateFormat":Ljava/text/DateFormat;
    new-instance v2, Lcom/sleepycat/je/utilint/StringStat;

    sget-object v3, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_CYCLE_START:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v4, p0, Lcom/sleepycat/je/cleaner/DataEraser;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-string v5, ""

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/Date;

    iget-wide v8, p0, Lcom/sleepycat/je/cleaner/DataEraser;->startTime:J

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 578
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-direct {v2, v0, v3, v4}, Lcom/sleepycat/je/utilint/StringStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;Ljava/lang/String;)V

    .line 580
    new-instance v2, Lcom/sleepycat/je/utilint/StringStat;

    sget-object v3, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_CYCLE_END:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-wide v8, p0, Lcom/sleepycat/je/cleaner/DataEraser;->endTime:J

    cmp-long v4, v8, v6

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lcom/sleepycat/je/cleaner/DataEraser;->endTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 582
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-direct {v2, v0, v3, v5}, Lcom/sleepycat/je/utilint/StringStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;Ljava/lang/String;)V

    .line 584
    new-instance v2, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v3, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_FILES_REMAINING:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    .line 586
    invoke-interface {v4}, Ljava/util/NavigableSet;->size()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 590
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v2

    .line 592
    .local v2, "clear":Z
    new-instance v3, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_FILES_ERASED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesErased:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 594
    invoke-direct {p0, v5, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->getStat(Ljava/util/concurrent/atomic/AtomicInteger;Z)I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 596
    new-instance v3, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_FILES_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 598
    invoke-direct {p0, v5, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->getStat(Ljava/util/concurrent/atomic/AtomicInteger;Z)I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 600
    new-instance v3, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_FILES_ALREADY_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesAlreadyDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 602
    invoke-direct {p0, v5, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->getStat(Ljava/util/concurrent/atomic/AtomicInteger;Z)I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 604
    new-instance v3, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/DataEraser;->fSyncs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 606
    invoke-direct {p0, v5, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->getStat(Ljava/util/concurrent/atomic/AtomicInteger;Z)I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 608
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/DataEraser;->reads:Ljava/util/concurrent/atomic/AtomicLong;

    .line 610
    invoke-direct {p0, v5, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->getStat(Ljava/util/concurrent/atomic/AtomicLong;Z)J

    move-result-wide v5

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 612
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_READ_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/DataEraser;->readBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 614
    invoke-direct {p0, v5, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->getStat(Ljava/util/concurrent/atomic/AtomicLong;Z)J

    move-result-wide v5

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 616
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/DataEraser;->writes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 618
    invoke-direct {p0, v5, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->getStat(Ljava/util/concurrent/atomic/AtomicLong;Z)J

    move-result-wide v5

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 620
    new-instance v3, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_WRITE_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/DataEraser;->writeBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 622
    invoke-direct {p0, v5, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->getStat(Ljava/util/concurrent/atomic/AtomicLong;Z)J

    move-result-wide v5

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 624
    return-object v0
.end method

.method public run()V
    .locals 4

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "isInitialized":Z
    const/4 v1, 0x0

    .line 679
    .local v1, "isStarted":Z
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkShutdown()V
    :try_end_0
    .catch Lcom/sleepycat/je/cleaner/DataEraser$ShutdownRequestedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 681
    if-nez v0, :cond_0

    .line 682
    const/4 v0, 0x1

    .line 683
    :try_start_1
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->resumeCycle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    const/4 v1, 0x1

    goto :goto_1

    .line 718
    :catch_0
    move-exception v2

    goto :goto_2

    .line 715
    :catch_1
    move-exception v2

    goto :goto_3

    .line 713
    :catch_2
    move-exception v2

    goto :goto_4

    .line 711
    :catch_3
    move-exception v2

    goto :goto_5

    .line 687
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 688
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->startCycle()V

    .line 689
    const/4 v1, 0x1

    .line 691
    :cond_1
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->checkForCycleEnd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 692
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->waitForEnabled()V

    .line 693
    const/4 v1, 0x0

    .line 694
    goto :goto_0

    .line 696
    :cond_2
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->getNextFile()Ljava/lang/Long;

    move-result-object v2
    :try_end_1
    .catch Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sleepycat/je/cleaner/DataEraser$ErasureDisabledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sleepycat/je/cleaner/DataEraser$PeriodChangedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sleepycat/je/cleaner/DataEraser$AbortCurrentFileException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sleepycat/je/cleaner/DataEraser$ShutdownRequestedException; {:try_start_1 .. :try_end_1} :catch_4

    .line 697
    .local v2, "file":Ljava/lang/Long;
    if-eqz v2, :cond_3

    .line 699
    :try_start_2
    invoke-direct {p0, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->eraseFile(Ljava/lang/Long;)V

    .line 700
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesCompleted:Ljava/util/NavigableSet;

    invoke-interface {v3, v2}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-interface {v3, v2}, Ljava/util/NavigableSet;->remove(Ljava/lang/Object;)Z

    .line 702
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->storeState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 704
    :try_start_3
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->clearCurrentFile()V

    .line 705
    nop

    .line 704
    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->clearCurrentFile()V

    .end local v0    # "isInitialized":Z
    .end local v1    # "isStarted":Z
    throw v3

    .line 707
    .restart local v0    # "isInitialized":Z
    .restart local v1    # "isStarted":Z
    :cond_3
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->waitForCycleEnd()V

    .line 708
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->waitForEnabled()V
    :try_end_3
    .catch Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sleepycat/je/cleaner/DataEraser$ErasureDisabledException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sleepycat/je/cleaner/DataEraser$PeriodChangedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sleepycat/je/cleaner/DataEraser$AbortCurrentFileException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sleepycat/je/cleaner/DataEraser$ShutdownRequestedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 709
    const/4 v1, 0x0

    .line 720
    .end local v2    # "file":Ljava/lang/Long;
    :goto_2
    goto :goto_0

    .line 716
    .local v2, "e":Lcom/sleepycat/je/cleaner/DataEraser$PeriodChangedException;
    :goto_3
    :try_start_4
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->logPeriodChanged()V

    .line 717
    const/4 v1, 0x0

    .end local v2    # "e":Lcom/sleepycat/je/cleaner/DataEraser$PeriodChangedException;
    goto :goto_2

    .line 714
    .local v2, "e":Lcom/sleepycat/je/cleaner/DataEraser$ErasureDisabledException;
    :goto_4
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->waitForEnabled()V

    .end local v2    # "e":Lcom/sleepycat/je/cleaner/DataEraser$ErasureDisabledException;
    goto :goto_2

    .line 712
    .local v2, "e":Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;
    :goto_5
    invoke-direct {p0, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->waitForUnprotectedFiles(Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;)V
    :try_end_4
    .catch Lcom/sleepycat/je/cleaner/DataEraser$ShutdownRequestedException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v2    # "e":Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;
    goto :goto_2

    .line 722
    :catch_4
    move-exception v2

    .line 723
    .local v2, "e":Lcom/sleepycat/je/cleaner/DataEraser$ShutdownRequestedException;
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser;->filesRemaining:Ljava/util/NavigableSet;

    invoke-interface {v3}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 724
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->logCycleSuspend()V

    .line 727
    .end local v2    # "e":Lcom/sleepycat/je/cleaner/DataEraser$ShutdownRequestedException;
    :cond_4
    return-void
.end method

.method public startThread()V
    .locals 1

    .line 651
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 652
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 653
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMetadataStore()Lcom/sleepycat/je/dbi/MetadataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MetadataStore;->openDb()V

    .line 663
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/DataEraser;->start()V

    .line 665
    :cond_0
    return-void
.end method
