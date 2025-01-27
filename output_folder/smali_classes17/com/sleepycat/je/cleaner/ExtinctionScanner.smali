.class public Lcom/sleepycat/je/cleaner/ExtinctionScanner;
.super Ljava/lang/Object;
.source "ExtinctionScanner.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/EnvConfigObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;,
        Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteTreeWalker;,
        Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;,
        Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;,
        Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COMMIT_LOCK_TIMEOUT_MS:I = 0x1f4

.field private static final DATABASE_EXTINCTION:I = 0x1

.field private static final MIN_JE_VERSION:Lcom/sleepycat/je/JEVersion;

.field private static final NOLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

.field private static final NO_SYNC_TXN:Lcom/sleepycat/je/TransactionConfig;

.field private static final RECORD_EXTINCTION:I

.field public static TEST_MIN_JE_VERSION:Lcom/sleepycat/je/JEVersion;


# instance fields
.field private final activeRecordTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;",
            ">;"
        }
    .end annotation
.end field

.field private final batchDelayMs:I

.field private final batchSize:I

.field beforeScan1FlushHook:Lcom/sleepycat/je/utilint/TestHook;

.field beforeScan1Hook:Lcom/sleepycat/je/utilint/TestHook;

.field beforeScan2Hook:Lcom/sleepycat/je/utilint/TestHook;

.field private final completedRecordScans:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field dbBeforeDeleteMapLNHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;"
        }
    .end annotation
.end field

.field dbBeforeDeleteTaskLNHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;"
        }
    .end annotation
.end field

.field dbBeforeExecTaskHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;"
        }
    .end annotation
.end field

.field public dbBeforeWriteTaskHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;"
        }
    .end annotation
.end field

.field private final enabled:Z

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final flushObsoleteBytes:J

.field private final lastNonRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lastRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

.field private final logger:Ljava/util/logging/Logger;

.field private volatile recoveredTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;",
            ">;"
        }
    .end annotation
.end field

.field private scanDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private volatile shutdownRequested:Z

.field private terminateMillis:I

.field private final threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 128
    nop

    .line 134
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    const-string v1, "18.1.7"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->MIN_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->TEST_MIN_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 137
    new-instance v0, Lcom/sleepycat/je/ReadOptions;

    invoke-direct {v0}, Lcom/sleepycat/je/ReadOptions;-><init>()V

    sget-object v1, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    .line 138
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/ReadOptions;->setCacheMode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    .line 139
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/ReadOptions;->setLockMode(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->NOLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

    .line 141
    new-instance v0, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/TransactionConfig;->setLocalWrite(Z)Lcom/sleepycat/je/TransactionConfig;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/Durability;->COMMIT_NO_SYNC:Lcom/sleepycat/je/Durability;

    .line 144
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->NO_SYNC_TXN:Lcom/sleepycat/je/TransactionConfig;

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 11
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lastRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

    .line 165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lastNonRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->activeRecordTasks:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 171
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->completedRecordScans:Ljava/util/Set;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->recoveredTasks:Ljava/util/List;

    .line 192
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->logger:Ljava/util/logging/Logger;

    .line 195
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    .line 197
    .local v1, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_EXTINCT_RECORD_SCANNER:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->enabled:Z

    .line 200
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_EXTINCT_SCAN_BATCH_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->batchSize:I

    .line 203
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_EXTINCT_SCAN_BATCH_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->batchDelayMs:I

    .line 206
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_FLUSH_EXTINCT_OBSOLETE:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->flushObsoleteBytes:J

    .line 209
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_TERMINATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->terminateMillis:I

    .line 212
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 215
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/sleepycat/je/utilint/StoppableThreadFactory;

    const-string v2, "JEExtinctRecordScanner"

    invoke-direct {v9, p1, v2, v0}, Lcom/sleepycat/je/utilint/StoppableThreadFactory;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/util/logging/Logger;)V

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object v0, v10

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 223
    return-void
.end method

.method static synthetic access$1000(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 128
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->shutdownRequested:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 128
    iget v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->batchDelayMs:I

    return v0
.end method

.method static synthetic access$1200()Lcom/sleepycat/je/ReadOptions;
    .locals 1

    .line 128
    sget-object v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->NOLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 128
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->flushObsoleteBytes:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 128
    iget v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->batchSize:I

    return v0
.end method

.method static synthetic access$1500()Lcom/sleepycat/je/TransactionConfig;
    .locals 1

    .line 128
    sget-object v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->NO_SYNC_TXN:Lcom/sleepycat/je/TransactionConfig;

    return-object v0
.end method

.method static synthetic access$1600([B[BLcom/sleepycat/je/dbi/DatabaseImpl;)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 128
    invoke-static {p0, p1, p2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->compareMainKey([B[BLcom/sleepycat/je/dbi/DatabaseImpl;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sleepycat/je/cleaner/ExtinctionScanner;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    .param p1, "x1"    # J

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->deleteTask(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->scanDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method static synthetic access$400(JLcom/sleepycat/je/DatabaseEntry;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 128
    invoke-static {p0, p1, p2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->serializeKey(JLcom/sleepycat/je/DatabaseEntry;)V

    return-void
.end method

.method static synthetic access$500(I)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p0, "x0"    # I

    .line 128
    invoke-static {p0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->serializeType(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->activeRecordTasks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->completedRecordScans:Ljava/util/Set;

    return-object v0
.end method

.method private assertOrWarn(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 401
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static compareMainKey([B[BLcom/sleepycat/je/dbi/DatabaseImpl;)I
    .locals 1
    .param p0, "key1"    # [B
    .param p1, "key2"    # [B
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1672
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1676
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 1674
    invoke-static {p0, p1, v0}, Lcom/sleepycat/je/dbi/DupKeyData;->compareMainKey([B[BLjava/util/Comparator;)I

    move-result v0

    goto :goto_0

    .line 1680
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 1678
    invoke-static {p0, p1, v0}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v0

    .line 1672
    :goto_0
    return v0
.end method

.method private dbNamesToIds(Ljava/util/Set;)Ljava/util/NavigableSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 673
    .local p1, "dbNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    .line 674
    .local v0, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 676
    .local v1, "dbIds":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 678
    .local v3, "dbName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v4}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v4

    .line 681
    .local v4, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 682
    :try_start_0
    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/sleepycat/je/dbi/DbTree;->getDbIdFromName(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/txn/HandleLocker;Z)Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v5

    .line 684
    .local v5, "id":Lcom/sleepycat/je/dbi/DatabaseId;
    if-eqz v5, :cond_0

    .line 689
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    nop

    .end local v5    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 693
    nop

    .line 694
    .end local v3    # "dbName":Ljava/lang/String;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    goto :goto_0

    .line 685
    .restart local v3    # "dbName":Ljava/lang/String;
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v5    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/sleepycat/je/DatabaseNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DB does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/sleepycat/je/DatabaseNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v1    # "dbIds":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    .end local v3    # "dbName":Ljava/lang/String;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "dbNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    .end local v5    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v0    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v1    # "dbIds":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    .restart local v3    # "dbName":Ljava/lang/String;
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "dbNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    throw v2

    .line 696
    .end local v3    # "dbName":Ljava/lang/String;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    :cond_1
    return-object v1
.end method

.method private deleteTask(J)V
    .locals 7
    .param p1, "id"    # J

    .line 406
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 408
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->NO_SYNC_TXN:Lcom/sleepycat/je/TransactionConfig;

    invoke-static {v0, v1}, Lcom/sleepycat/je/txn/Txn;->createLocalAutoTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    .line 416
    .local v0, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v1, 0x0

    .line 418
    .local v1, "success":Z
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->scanDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 419
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 418
    .local v2, "cursor":Lcom/sleepycat/je/Cursor;
    nop

    .line 421
    :try_start_1
    new-instance v4, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v4}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 422
    .local v4, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {p1, p2, v4}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->serializeKey(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 424
    sget-object v5, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    sget-object v6, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    .line 425
    invoke-virtual {v6}, Lcom/sleepycat/je/LockMode;->toReadOptions()Lcom/sleepycat/je/ReadOptions;

    move-result-object v6

    .line 424
    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3

    if-nez v3, :cond_2

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Completed extinction task not found in DB, id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->assertOrWarn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 439
    :cond_1
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 430
    return-void

    .line 433
    :cond_2
    :try_start_3
    sget-object v3, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-static {v2, v3}, Lcom/sleepycat/je/DbInternal;->deleteWithRepContext(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    const/4 v1, 0x1

    .line 438
    .end local v4    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 439
    .end local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_3
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 440
    nop

    .line 441
    return-void

    .line 418
    .restart local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v3

    .end local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v1    # "success":Z
    .end local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "id":J
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 438
    .restart local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v1    # "success":Z
    .restart local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "id":J
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_7
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v1    # "success":Z
    .end local p1    # "id":J
    :cond_4
    :goto_0
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 439
    .end local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v1    # "success":Z
    .restart local p1    # "id":J
    :catchall_3
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    throw v2
.end method

.method public static getMinJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 147
    sget-object v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->TEST_MIN_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    if-eqz v0, :cond_0

    .line 148
    return-object v0

    .line 150
    :cond_0
    sget-object v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->MIN_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    return-object v0
.end method

.method public static materializeKey(Lcom/sleepycat/je/DatabaseEntry;)J
    .locals 2
    .param p0, "keyEntry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 606
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/SortedPackedLongBinding;->entryToLong(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private materializeTask(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;
    .locals 4
    .param p1, "keyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "dataEntry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 565
    invoke-static {p1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->materializeKey(Lcom/sleepycat/je/DatabaseEntry;)J

    move-result-wide v0

    .line 577
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lastRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lastRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    .line 582
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lastNonRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 583
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lastNonRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 587
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/sleepycat/bind/tuple/TupleBase;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v2

    .line 589
    .local v2, "in":Lcom/sleepycat/bind/tuple/TupleInput;
    invoke-virtual {v2}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 595
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3

    .line 593
    :pswitch_0
    new-instance v3, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;-><init>(Lcom/sleepycat/je/cleaner/ExtinctionScanner;JLcom/sleepycat/bind/tuple/TupleInput;)V

    return-object v3

    .line 591
    :pswitch_1
    new-instance v3, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;-><init>(Lcom/sleepycat/je/cleaner/ExtinctionScanner;JLcom/sleepycat/bind/tuple/TupleInput;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized openDb()V
    .locals 7

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->scanDb:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 316
    monitor-exit p0

    return-void

    .line 319
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    .line 320
    .local v0, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    new-instance v1, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 322
    .local v1, "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v2, v1}, Lcom/sleepycat/je/txn/Txn;->createLocalAutoTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 325
    .local v2, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v3, 0x1

    :try_start_2
    sget-object v4, Lcom/sleepycat/je/dbi/DbType;->EXTINCT_SCANS:Lcom/sleepycat/je/dbi/DbType;

    .line 326
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 325
    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/txn/HandleLocker;Z)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->scanDb:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 329
    :try_start_3
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 330
    nop

    .line 332
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->scanDb:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_1

    .line 333
    monitor-exit p0

    return-void

    .line 336
    :cond_1
    :try_start_4
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_3

    .line 341
    new-instance v4, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v4}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 342
    .local v4, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v4, v3}, Lcom/sleepycat/je/DatabaseConfig;->setReplicated(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 343
    invoke-virtual {v4, v3}, Lcom/sleepycat/je/DatabaseConfig;->setTransactional(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 345
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sleepycat/je/log/ReplicationContext;->MASTER:Lcom/sleepycat/je/log/ReplicationContext;

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    :cond_2
    sget-object v3, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    .line 348
    .local v3, "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    :goto_0
    sget-object v5, Lcom/sleepycat/je/Durability;->COMMIT_WRITE_NO_SYNC:Lcom/sleepycat/je/Durability;

    invoke-virtual {v1, v5}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 350
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v6, "NoConsistencyRequiredPolicy"

    .line 351
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConsistencyPolicy(Ljava/lang/String;)Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    move-result-object v5

    .line 350
    invoke-virtual {v1, v5}, Lcom/sleepycat/je/TransactionConfig;->setConsistencyPolicy(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Lcom/sleepycat/je/TransactionConfig;

    .line 353
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v5, v1, v3}, Lcom/sleepycat/je/txn/Txn;->createAutoTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v5

    .line 355
    const/4 v5, 0x0

    .line 357
    .local v5, "success":Z
    :try_start_5
    sget-object v6, Lcom/sleepycat/je/dbi/DbType;->EXTINCT_SCANS:Lcom/sleepycat/je/dbi/DbType;

    .line 358
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v6

    .line 357
    invoke-virtual {v0, v2, v6, v4}, Lcom/sleepycat/je/dbi/DbTree;->createInternalDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v6

    iput-object v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->scanDb:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 359
    const/4 v5, 0x1

    .line 361
    :try_start_6
    invoke-virtual {v2, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 362
    nop

    .line 363
    monitor-exit p0

    return-void

    .line 361
    :catchall_0
    move-exception v6

    :try_start_7
    invoke-virtual {v2, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    throw v6

    .line 338
    .end local v3    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v4    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v5    # "success":Z
    :cond_3
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3

    .line 329
    :catchall_1
    move-exception v4

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 314
    .end local v0    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v1    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static serializeKey(JLcom/sleepycat/je/DatabaseEntry;)V
    .locals 0
    .param p0, "id"    # J
    .param p2, "keyEntry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 602
    invoke-static {p0, p1, p2}, Lcom/sleepycat/bind/tuple/SortedPackedLongBinding;->longToEntry(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 603
    return-void
.end method

.method private static serializeType(I)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p0, "taskType"    # I

    .line 610
    new-instance v0, Lcom/sleepycat/bind/tuple/TupleOutput;

    invoke-direct {v0}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>()V

    .line 611
    .local v0, "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    invoke-virtual {v0, p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 612
    return-object v0
.end method


# virtual methods
.method public deleteCompletedRecordScans(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 731
    .local p1, "scanIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->scanDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-eqz v0, :cond_2

    .line 737
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 738
    .local v1, "id":J
    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->deleteTask(J)V

    .line 739
    .end local v1    # "id":J
    goto :goto_0

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->completedRecordScans:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 742
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->activeRecordTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 744
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted complete extinct record scans after checkpoint, ids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 748
    return-void

    .line 735
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public discardExtinctRecords(Lcom/sleepycat/je/txn/Locker;Ljava/util/Set;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/ScanFilter;Ljava/lang/String;)J
    .locals 18
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "beginKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "endKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "filter"    # Lcom/sleepycat/je/ScanFilter;
    .param p6, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/txn/Locker;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/ScanFilter;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 638
    .local p2, "dbNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    iget-boolean v0, v9, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->enabled:Z

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, v9, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 641
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->openDb()V

    .line 643
    iget-object v0, v9, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lastRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

    .line 644
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, v9, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lastNonRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

    .line 645
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    nop

    .line 647
    .local v2, "id":J
    new-instance v10, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;

    .line 648
    move-object/from16 v11, p2

    invoke-direct {v9, v11}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->dbNamesToIds(Ljava/util/Set;)Ljava/util/NavigableSet;

    move-result-object v4

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;-><init>(Lcom/sleepycat/je/cleaner/ExtinctionScanner;JLjava/util/NavigableSet;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/ScanFilter;Ljava/lang/String;)V

    .line 651
    .local v0, "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;
    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object v12, v0

    move-object/from16 v16, p1

    invoke-virtual/range {v12 .. v17}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->writeTask(J[BLcom/sleepycat/je/txn/Locker;Z)V

    .line 653
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->activeRecordTasks:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-object v1, v9, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 663
    invoke-static {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->access$000(Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;)J

    move-result-wide v4

    return-wide v4

    .line 639
    .end local v0    # "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;
    .end local v2    # "id":J
    :cond_1
    move-object/from16 v11, p2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 638
    :cond_2
    move-object/from16 v11, p2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public ensureDbExtinction(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 4
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1790
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->recoveredTasks:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1791
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    .line 1793
    .local v0, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->recoveredTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;

    .line 1794
    .local v2, "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;
    invoke-interface {v2, v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;->isExtinctionForDb(Lcom/sleepycat/je/dbi/DatabaseId;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1795
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1796
    return-void

    .line 1798
    .end local v2    # "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;
    :cond_0
    goto :goto_0

    .line 1800
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDeleteStarted()V

    .line 1801
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->startDbExtinction(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1802
    return-void

    .line 1790
    .end local v0    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 1
    .param p1, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p2, "ignore"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 273
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_TERMINATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->terminateMillis:I

    .line 275
    return-void
.end method

.method public declared-synchronized executeRecoveredTasks()V
    .locals 3

    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->enabled:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_3

    .line 510
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 511
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->recoveredTasks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 512
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 515
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->recoveredTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;

    .line 516
    .local v1, "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 517
    .end local v1    # "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;
    goto :goto_0

    .line 519
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->recoveredTasks:Ljava/util/List;

    .line 520
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 521
    monitor-exit p0

    return-void

    .line 520
    :catchall_0
    move-exception v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .end local p0    # "this":Lcom/sleepycat/je/cleaner/ExtinctionScanner;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 504
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 501
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 499
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCompletedRecordScans()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->completedRecordScans:Ljava/util/Set;

    monitor-enter v0

    .line 721
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->completedRecordScans:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 722
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastLocalId()J
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lastNonRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastReplicatedId()J
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lastRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 284
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    .line 282
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->enabled:Z

    return v0
.end method

.method isRecordExtinctionIncomplete(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Z
    .locals 4
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "key"    # [B

    .line 705
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->activeRecordTasks:Ljava/util/Map;

    monitor-enter v0

    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->activeRecordTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;

    .line 707
    .local v2, "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;
    invoke-static {v2, p1, p2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->access$100(Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 708
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 710
    .end local v2    # "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;
    :cond_0
    goto :goto_0

    .line 711
    :cond_1
    monitor-exit v0

    .line 712
    const/4 v0, 0x0

    return v0

    .line 711
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isScanTaskActive(J)Z
    .locals 7
    .param p1, "id"    # J

    .line 372
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->openDb()V
    :try_end_0
    .catch Lcom/sleepycat/je/OperationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    nop

    .line 381
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 382
    .local v1, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {p1, p2, v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->serializeKey(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 384
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 385
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v2

    .line 387
    .local v2, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_1
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->scanDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 388
    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 387
    .local v4, "cursor":Lcom/sleepycat/je/Cursor;
    nop

    .line 390
    :try_start_2
    sget-object v6, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    invoke-virtual {v4, v1, v5, v6, v5}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 392
    :goto_0
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 393
    :cond_1
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 390
    return v0

    .line 387
    :catchall_0
    move-exception v0

    .end local v1    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v4    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "id":J
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 392
    .restart local v1    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v4    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "id":J
    :catchall_1
    move-exception v3

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v5

    :try_start_6
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "id":J
    :cond_2
    :goto_1
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 393
    .end local v4    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v1    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "id":J
    :catchall_3
    move-exception v0

    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    throw v0

    .line 373
    .end local v1    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Lcom/sleepycat/je/OperationFailureException;
    invoke-virtual {v1}, Lcom/sleepycat/je/OperationFailureException;->isReplicaWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    return v0

    .line 378
    :cond_3
    throw v1
.end method

.method synthetic lambda$replay$0$com-sleepycat-je-cleaner-ExtinctionScanner(Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;)V
    .locals 0
    .param p1, "task"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;

    .line 552
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->openDb()V

    .line 553
    invoke-interface {p1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;->run()V

    .line 554
    return-void
.end method

.method public prepareForDbExtinction(Lcom/sleepycat/je/log/ReplicationContext;)V
    .locals 2
    .param p1, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 1703
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->openDb()V
    :try_end_0
    .catch Lcom/sleepycat/je/OperationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1710
    nop

    .line 1711
    return-void

    .line 1704
    :catch_0
    move-exception v0

    .line 1705
    .local v0, "e":Lcom/sleepycat/je/OperationFailureException;
    invoke-virtual {v0}, Lcom/sleepycat/je/OperationFailureException;->isReplicaWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/je/log/ReplicationContext;->inReplicationStream()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1707
    return-void

    .line 1709
    :cond_0
    throw v0
.end method

.method public recoverIncompleteTasks()V
    .locals 10

    .line 452
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->recoveredTasks:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 454
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->enabled:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 459
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->openDb()V
    :try_end_0
    .catch Lcom/sleepycat/je/OperationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    nop

    .line 468
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 469
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 471
    .local v1, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v3, 0x0

    .line 472
    invoke-static {v2, v3}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v2

    .line 474
    .local v2, "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->scanDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 475
    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 474
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    nop

    .line 477
    :goto_0
    :try_start_2
    sget-object v5, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    invoke-virtual {v3, v0, v1, v5, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 480
    nop

    .line 481
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->materializeTask(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;

    move-result-object v5

    .line 483
    .local v5, "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;
    instance-of v6, v5, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;

    if-eqz v6, :cond_1

    .line 484
    move-object v6, v5

    check-cast v6, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;

    .line 485
    .local v6, "rTask":Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;
    iget-object v7, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->activeRecordTasks:Ljava/util/Map;

    invoke-static {v6}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->access$000(Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .end local v6    # "rTask":Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;
    :cond_1
    iget-object v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->recoveredTasks:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 489
    nop

    .end local v5    # "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;
    goto :goto_0

    .line 490
    :cond_2
    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 491
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_3
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 492
    nop

    .line 493
    return-void

    .line 474
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v4

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 490
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v6

    :try_start_6
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    :cond_4
    :goto_1
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 491
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_3
    move-exception v3

    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    throw v3

    .line 460
    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Lcom/sleepycat/je/OperationFailureException;
    invoke-virtual {v0}, Lcom/sleepycat/je/OperationFailureException;->isReplicaWrite()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 463
    return-void

    .line 465
    :cond_5
    throw v0

    .line 455
    .end local v0    # "e":Lcom/sleepycat/je/OperationFailureException;
    :cond_6
    :goto_2
    return-void

    .line 452
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public replay([B[B)V
    .locals 5
    .param p1, "scanKey"    # [B
    .param p2, "scanData"    # [B

    .line 531
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    .line 534
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->enabled:Z

    if-nez v0, :cond_0

    .line 535
    return-void

    .line 538
    :cond_0
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1, p2}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->materializeTask(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;

    move-result-object v0

    .line 542
    .local v0, "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;
    instance-of v1, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;

    if-eqz v1, :cond_1

    .line 543
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;

    .line 544
    .local v1, "rTask":Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->activeRecordTasks:Ljava/util/Map;

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->access$000(Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .end local v1    # "rTask":Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/sleepycat/je/cleaner/ExtinctionScanner$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$$ExternalSyntheticLambda0;-><init>(Lcom/sleepycat/je/cleaner/ExtinctionScanner;Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 555
    return-void

    .line 532
    .end local v0    # "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 531
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public requestShutdown()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 261
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->shutdownRequested:Z

    .line 265
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 266
    return-void
.end method

.method public setLastIds(JJ)V
    .locals 3
    .param p1, "lastRepScanID"    # J
    .param p3, "lastNonRepScanID"    # J

    .line 297
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lastRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

    .line 298
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 297
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 299
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lastNonRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

    .line 300
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 299
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 301
    return-void
.end method

.method public shutdown()V
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 228
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->shutdownRequested:Z

    .line 237
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "shutdownFinished":Z
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->terminateMillis:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 252
    if-nez v0, :cond_2

    .line 253
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    goto :goto_1

    .line 252
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 253
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_1
    throw v1

    .line 249
    :catch_0
    move-exception v1

    .line 252
    if-nez v0, :cond_2

    .line 253
    goto :goto_0

    .line 256
    :cond_2
    :goto_1
    return-void
.end method

.method public startDbExtinction(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 3
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1745
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1746
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleteFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1747
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_3

    .line 1749
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->dbBeforeWriteTaskHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1760
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->scanDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-nez v0, :cond_0

    .line 1762
    new-instance v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;-><init>(Lcom/sleepycat/je/cleaner/ExtinctionScanner;JLcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1763
    .local v0, "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->run()V

    .line 1764
    .end local v0    # "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;
    goto :goto_0

    .line 1766
    :cond_0
    new-instance v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lastNonRepScanID:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1767
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;-><init>(Lcom/sleepycat/je/cleaner/ExtinctionScanner;JLcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1769
    .restart local v0    # "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->writeTask()V

    .line 1775
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->recoveredTasks:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1776
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1778
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->recoveredTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1781
    .end local v0    # "task":Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;
    :goto_0
    return-void

    .line 1749
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1747
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1746
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1745
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
