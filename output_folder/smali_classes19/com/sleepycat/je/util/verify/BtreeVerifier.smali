.class public Lcom/sleepycat/je/util/verify/BtreeVerifier;
.super Ljava/lang/Object;
.source "BtreeVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;,
        Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException;,
        Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;,
        Lcom/sleepycat/je/util/verify/BtreeVerifier$VerifierStatsAccumulator;,
        Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;,
        Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;,
        Lcom/sleepycat/je/util/verify/BtreeVerifier$UPFileSizeCache;,
        Lcom/sleepycat/je/util/verify/BtreeVerifier$DirectFileSizeCache;,
        Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeCache;,
        Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;,
        Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOCKTYPE_NOLOCK:Lcom/sleepycat/je/txn/LockType;

.field private static final NOLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

.field private static final READLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

.field public static databaseOperBeforeBatchCheckHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/Database;",
            ">;"
        }
    .end annotation
.end field

.field public static databaseOperDuringBatchCheckHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/Database;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

.field private final configMgr:Lcom/sleepycat/je/dbi/DbConfigManager;

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final fileManager:Lcom/sleepycat/je/log/FileManager;

.field private final fsCache:Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeCache;

.field private final logManager:Lcom/sleepycat/je/log/LogManager;

.field private final logger:Ljava/util/logging/Logger;

.field private final ooCache:Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;

.field private final repairLockConflictLogger:Lcom/sleepycat/je/utilint/RateLimitingLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/RateLimitingLogger<",
            "Lcom/sleepycat/je/util/verify/BtreeVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private repairLockConflicts:I

.field private repairMaybeExtinct:I

.field private repairRuntimeExceptions:I

.field private final secondaryExceptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/SecondaryIntegrityException;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stopVerify:Z

.field private final up:Lcom/sleepycat/je/cleaner/UtilizationProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    nop

    .line 88
    sget-object v0, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    sput-object v0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->LOCKTYPE_NOLOCK:Lcom/sleepycat/je/txn/LockType;

    .line 89
    new-instance v0, Lcom/sleepycat/je/ReadOptions;

    invoke-direct {v0}, Lcom/sleepycat/je/ReadOptions;-><init>()V

    sput-object v0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->NOLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

    .line 90
    new-instance v1, Lcom/sleepycat/je/ReadOptions;

    invoke-direct {v1}, Lcom/sleepycat/je/ReadOptions;-><init>()V

    sput-object v1, Lcom/sleepycat/je/util/verify/BtreeVerifier;->READLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

    .line 93
    sget-object v2, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/ReadOptions;->setCacheMode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/ReadOptions;

    .line 94
    sget-object v2, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/ReadOptions;->setLockMode(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    .line 96
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/ReadOptions;->setCacheMode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/ReadOptions;

    .line 97
    sget-object v0, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/ReadOptions;->setLockMode(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 5
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->stopVerify:Z

    .line 119
    new-instance v0, Lcom/sleepycat/je/VerifyConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/VerifyConfig;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 128
    iput-object p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 129
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 130
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->configMgr:Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 131
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->logManager:Lcom/sleepycat/je/log/LogManager;

    .line 132
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->logger:Ljava/util/logging/Logger;

    .line 133
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->up:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    .line 134
    invoke-direct {p0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->createFileSizeCache()Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeCache;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->fsCache:Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeCache;

    .line 135
    new-instance v1, Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;-><init>(Lcom/sleepycat/je/util/verify/BtreeVerifier;)V

    iput-object v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->ooCache:Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->secondaryExceptions:Ljava/util/Map;

    .line 139
    new-instance v1, Lcom/sleepycat/je/utilint/RateLimitingLogger;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 140
    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/utilint/RateLimitingLogger;-><init>(IILjava/util/logging/Logger;)V

    iput-object v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairLockConflictLogger:Lcom/sleepycat/je/utilint/RateLimitingLogger;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/util/verify/BtreeVerifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/BtreeVerifier;

    .line 86
    iget-boolean v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->stopVerify:Z

    return v0
.end method

.method static synthetic access$100()Lcom/sleepycat/je/txn/LockType;
    .locals 1

    .line 86
    sget-object v0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->LOCKTYPE_NOLOCK:Lcom/sleepycat/je/txn/LockType;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sleepycat/je/util/verify/BtreeVerifier;Lcom/sleepycat/je/tree/Node;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/BtreeVerifier;
    .param p1, "x1"    # Lcom/sleepycat/je/tree/Node;

    .line 86
    invoke-direct {p0, p1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->basicBtreeVerify(Lcom/sleepycat/je/tree/Node;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sleepycat/je/util/verify/BtreeVerifier;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Ljava/io/PrintStream;Z)Lcom/sleepycat/je/BtreeStats;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/BtreeVerifier;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p3, "x3"    # Ljava/io/PrintStream;
    .param p4, "x4"    # Z

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyOneDb(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Ljava/io/PrintStream;Z)Lcom/sleepycat/je/BtreeStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/util/verify/BtreeVerifier;)Lcom/sleepycat/je/log/FileManager;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/BtreeVerifier;

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->fileManager:Lcom/sleepycat/je/log/FileManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/util/verify/BtreeVerifier;)Lcom/sleepycat/je/cleaner/UtilizationProfile;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/BtreeVerifier;

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->up:Lcom/sleepycat/je/cleaner/UtilizationProfile;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sleepycat/je/util/verify/BtreeVerifier;)Lcom/sleepycat/je/VerifyConfig;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/BtreeVerifier;

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    return-object v0
.end method

.method private addSecondaryException(Lcom/sleepycat/je/SecondaryDatabase;)V
    .locals 3
    .param p1, "db"    # Lcom/sleepycat/je/SecondaryDatabase;

    .line 1821
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->getCorruptedCause(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/SecondaryIntegrityException;

    move-result-object v0

    .line 1822
    .local v0, "e":Lcom/sleepycat/je/SecondaryIntegrityException;
    iget-object v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->secondaryExceptions:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryIntegrityException;->getSecondaryDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    return-void
.end method

.method private basicBtreeVerify(Lcom/sleepycat/je/tree/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/sleepycat/je/tree/Node;

    .line 467
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/Node;->isUpperIN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-direct {p0, p1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyDanglingLSNAndObsoleteRecordsAllSlots(Lcom/sleepycat/je/tree/Node;)V

    .line 475
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyCommonStructure(Lcom/sleepycat/je/tree/Node;)V

    .line 476
    return-void
.end method

.method private checkOneSecondaryKeyExists(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/CursorImpl;Ljava/lang/String;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryAssociation;)Z
    .locals 16
    .param p1, "secDb"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "secDbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "secKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "priCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p6, "errMsg"    # Ljava/lang/String;
    .param p7, "priDb"    # Lcom/sleepycat/je/Database;
    .param p8, "secAssoc"    # Lcom/sleepycat/je/SecondaryAssociation;

    .line 2101
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    iget-object v0, v8, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 2102
    invoke-static {v0}, Lcom/sleepycat/je/txn/LockerFactory;->getInternalReadOperationLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v10

    .line 2104
    .local v10, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v11, 0x0

    move-object/from16 v12, p2

    :try_start_0
    invoke-direct {v8, v12, v10, v11}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Z)Lcom/sleepycat/je/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v13, v0

    .line 2107
    .local v13, "checkCursor":Lcom/sleepycat/je/Cursor;
    :try_start_1
    sget-object v0, Lcom/sleepycat/je/Get;->SEARCH_BOTH:Lcom/sleepycat/je/Get;

    sget-object v1, Lcom/sleepycat/je/util/verify/BtreeVerifier;->NOLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v14, p4

    :try_start_2
    invoke-virtual {v13, v14, v9, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_5

    .line 2112
    move-object/from16 v15, p8

    :try_start_3
    invoke-interface {v15, v9}, Lcom/sleepycat/je/SecondaryAssociation;->getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;

    move-result-object v0

    move-object/from16 v7, p7

    if-ne v0, v7, :cond_2

    .line 2113
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/SecondaryDatabase;->isIncrementalPopulationEnabled()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2118
    :cond_0
    nop

    .line 2124
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    :try_start_4
    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->setSecondaryDbCorrupt(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/CursorImpl;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2127
    nop

    .line 2129
    if-eqz v13, :cond_1

    :try_start_5
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 2130
    :cond_1
    invoke-virtual {v10}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 2127
    return v11

    .line 2114
    :cond_2
    :goto_0
    nop

    .line 2129
    if-eqz v13, :cond_3

    :try_start_6
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 2130
    :cond_3
    invoke-virtual {v10}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 2114
    return v11

    .line 2104
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 2116
    :catch_0
    move-exception v0

    .line 2117
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 2129
    if-eqz v13, :cond_4

    :try_start_7
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 2130
    :cond_4
    invoke-virtual {v10}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 2117
    return v11

    .line 2129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v15, p8

    if-eqz v13, :cond_6

    :try_start_8
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 2130
    .end local v13    # "checkCursor":Lcom/sleepycat/je/Cursor;
    :cond_6
    invoke-virtual {v10}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 2131
    nop

    .line 2133
    const/4 v0, 0x1

    return v0

    .line 2104
    .restart local v13    # "checkCursor":Lcom/sleepycat/je/Cursor;
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v14, p4

    :goto_1
    move-object/from16 v15, p8

    :goto_2
    move-object v1, v0

    .end local v10    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v13    # "checkCursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local p2    # "secDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p3    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local p6    # "errMsg":Ljava/lang/String;
    .end local p7    # "priDb":Lcom/sleepycat/je/Database;
    .end local p8    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2129
    .restart local v10    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v13    # "checkCursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local p2    # "secDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p3    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local p6    # "errMsg":Ljava/lang/String;
    .restart local p7    # "priDb":Lcom/sleepycat/je/Database;
    .restart local p8    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    :catchall_3
    move-exception v0

    move-object v2, v0

    if-eqz v13, :cond_7

    :try_start_a
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_b
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v10    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local p2    # "secDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p3    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local p6    # "errMsg":Ljava/lang/String;
    .end local p7    # "priDb":Lcom/sleepycat/je/Database;
    .end local p8    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    :cond_7
    :goto_3
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 2130
    .end local v13    # "checkCursor":Lcom/sleepycat/je/Cursor;
    .restart local v10    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local p2    # "secDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p3    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p5    # "priCursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local p6    # "errMsg":Ljava/lang/String;
    .restart local p7    # "priDb":Lcom/sleepycat/je/Database;
    .restart local p8    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    :catchall_5
    move-exception v0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object/from16 v14, p4

    move-object/from16 v15, p8

    :goto_4
    invoke-virtual {v10}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    throw v0
.end method

.method private checkSecondaryKeysExist(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Map;Lcom/sleepycat/je/SecondaryAssociation;Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 22
    .param p1, "priDb"    # Lcom/sleepycat/je/Database;
    .param p2, "secDb"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p3, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "priData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "secAssoc"    # Lcom/sleepycat/je/SecondaryAssociation;
    .param p7, "priCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/je/SecondaryDatabase;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;",
            "Lcom/sleepycat/je/SecondaryAssociation;",
            "Lcom/sleepycat/je/dbi/CursorImpl;",
            ")V"
        }
    .end annotation

    .line 2003
    .local p5, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-static/range {p2 .. p2}, Lcom/sleepycat/je/DbInternal;->isCorrupted(Lcom/sleepycat/je/Database;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2008
    return-void

    .line 2011
    :cond_0
    nop

    .line 2012
    invoke-static/range {p2 .. p2}, Lcom/sleepycat/je/DbInternal;->getPrivateSecondaryConfig(Lcom/sleepycat/je/SecondaryDatabase;)Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v14

    .line 2013
    .local v14, "secondaryConfig":Lcom/sleepycat/je/SecondaryConfig;
    invoke-virtual {v14}, Lcom/sleepycat/je/SecondaryConfig;->getKeyCreator()Lcom/sleepycat/je/SecondaryKeyCreator;

    move-result-object v15

    .line 2014
    .local v15, "keyCreator":Lcom/sleepycat/je/SecondaryKeyCreator;
    nop

    .line 2015
    invoke-virtual {v14}, Lcom/sleepycat/je/SecondaryConfig;->getMultiKeyCreator()Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    move-result-object v9

    .line 2017
    .local v9, "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    if-nez v15, :cond_2

    if-nez v9, :cond_2

    .line 2018
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getConfig()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2019
    return-void

    .line 2018
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2024
    :cond_2
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/sleepycat/je/DbInternal;->getDbImpl(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/OperationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    .local v0, "secDbId":Lcom/sleepycat/je/dbi/DatabaseId;
    nop

    .line 2033
    iget-object v1, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkOpen()V

    .line 2034
    iget-object v1, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v8

    .line 2035
    .local v8, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    const-wide/16 v1, -0x1

    move-object/from16 v7, p5

    invoke-virtual {v8, v0, v1, v2, v7}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;JLjava/util/Map;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v16

    .line 2037
    .local v16, "secDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v18, v8

    move-object v10, v9

    goto/16 :goto_1

    .line 2045
    :cond_3
    const-string v17, "Secondary is corrupt: the primary record contains a key that is not present in this secondary database."

    .line 2049
    .local v17, "errMsg":Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 2051
    if-nez v9, :cond_5

    .line 2053
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v6, v1

    .line 2054
    .local v6, "secKey":Lcom/sleepycat/je/DatabaseEntry;
    invoke-interface {v15, v11, v12, v13, v6}, Lcom/sleepycat/je/SecondaryKeyCreator;->createSecondaryKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2057
    return-void

    .line 2060
    :cond_4
    const-string v18, "Secondary is corrupt: the primary record contains a key that is not present in this secondary database."

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    move-object v5, v6

    move-object/from16 v19, v6

    .end local v6    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v19, "secKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v6, p7

    move-object/from16 v7, v18

    move-object/from16 v18, v8

    .end local v8    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .local v18, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    move-object/from16 v8, p1

    move-object v10, v9

    .end local v9    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .local v10, "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->checkOneSecondaryKeyExists(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/CursorImpl;Ljava/lang/String;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryAssociation;)Z

    .line 2064
    return-void

    .line 2051
    .end local v10    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .end local v18    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v19    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v8    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v9    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2070
    :cond_6
    move-object/from16 v18, v8

    move-object v10, v9

    .end local v8    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v9    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .restart local v10    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .restart local v18    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v9, v1

    .line 2071
    .local v9, "secKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    invoke-interface {v10, v11, v12, v13, v9}, Lcom/sleepycat/je/SecondaryMultiKeyCreator;->createSecondaryKeys(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Set;)V

    .line 2073
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2075
    return-void

    .line 2081
    :cond_7
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/sleepycat/je/DatabaseEntry;

    .line 2083
    .local v20, "secKey":Lcom/sleepycat/je/DatabaseEntry;
    const-string v7, "Secondary is corrupt: the primary record contains a key that is not present in this secondary database."

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    move-object/from16 v5, v20

    move-object/from16 v6, p7

    move-object/from16 v8, p1

    move-object/from16 v21, v9

    .end local v9    # "secKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .local v21, "secKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->checkOneSecondaryKeyExists(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/CursorImpl;Ljava/lang/String;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryAssociation;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2086
    return-void

    .line 2088
    .end local v20    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    :cond_8
    move-object/from16 v9, v21

    goto :goto_0

    .line 2089
    .end local v21    # "secKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    .restart local v9    # "secKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/DatabaseEntry;>;"
    :cond_9
    return-void

    .line 2037
    .end local v10    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .end local v17    # "errMsg":Ljava/lang/String;
    .end local v18    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v8    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .local v9, "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    :cond_a
    move-object/from16 v18, v8

    move-object v10, v9

    .line 2042
    .end local v8    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v9    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .restart local v10    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .restart local v18    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    :goto_1
    return-void

    .line 2025
    .end local v0    # "secDbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v10    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .end local v16    # "secDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v18    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v9    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    move-object v10, v9

    .line 2030
    .end local v9    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v10    # "multiKeyCreator":Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    return-void
.end method

.method private createFileSizeCache()Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeCache;
    .locals 2

    .line 913
    const/4 v0, 0x0

    .line 917
    .local v0, "USE_UP":Z
    new-instance v1, Lcom/sleepycat/je/util/verify/BtreeVerifier$DirectFileSizeCache;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/util/verify/BtreeVerifier$DirectFileSizeCache;-><init>(Lcom/sleepycat/je/util/verify/BtreeVerifier;)V

    return-object v1
.end method

.method private static findFirstRecord(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 7
    .param p0, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "keyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "dataEntry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1274
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1276
    sget-object v0, Lcom/sleepycat/je/Get;->FIRST:Lcom/sleepycat/je/Get;

    sget-object v3, Lcom/sleepycat/je/util/verify/BtreeVerifier;->NOLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

    invoke-virtual {p1, p2, p3, v0, v3}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1280
    :cond_1
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    .line 1281
    .local v0, "lastKeyBytes":[B
    nop

    .line 1282
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 1285
    .local v3, "lastDataBytes":[B
    :goto_0
    sget-object v4, Lcom/sleepycat/je/Get;->SEARCH_ANY_GTE:Lcom/sleepycat/je/Get;

    sget-object v5, Lcom/sleepycat/je/util/verify/BtreeVerifier;->NOLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

    invoke-virtual {p1, p2, p3, v4, v5}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v4

    .line 1288
    .local v4, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v4, :cond_3

    .line 1290
    return v1

    .line 1293
    :cond_3
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1295
    return v2

    .line 1298
    :cond_4
    if-eqz v3, :cond_5

    .line 1299
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1301
    return v2

    .line 1305
    :cond_5
    sget-object v6, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    invoke-virtual {p1, p2, p3, v6, v5}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v5

    if-eqz v5, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method private getFileSize(J)Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;
    .locals 7
    .param p1, "fileNum"    # J

    .line 888
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getNextLsn()J

    move-result-wide v0

    .line 889
    .local v0, "nextLsn":J
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 890
    new-instance v2, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;

    const/4 v4, 0x1

    .line 891
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-direct {v2, v4, v3, v5}, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;-><init>(ZZI)V

    .line 890
    return-object v2

    .line 893
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->fsCache:Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeCache;

    invoke-interface {v2, p1, p2}, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeCache;->getFileSize(J)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v2

    .line 894
    .local v2, "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    new-instance v4, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v3, v5, v6}, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;-><init>(ZZI)V

    return-object v4
.end method

.method private getINFromFile(Lcom/sleepycat/je/utilint/Pair;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;)Lcom/sleepycat/je/tree/IN;
    .locals 6
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sleepycat/je/tree/IN;"
        }
    .end annotation

    .line 1205
    .local p1, "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 1209
    .local v0, "optionalFullBinEntry":Lcom/sleepycat/je/log/WholeEntry;
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->logManager:Lcom/sleepycat/je/log/LogManager;

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/log/LogManager;->getLogEntryDirectFromFile(J)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v1

    .line 1210
    .local v1, "entry":Lcom/sleepycat/je/log/WholeEntry;
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1211
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->logManager:Lcom/sleepycat/je/log/LogManager;

    .line 1212
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/log/LogManager;->getLogEntryDirectFromFile(J)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v2

    move-object v0, v2

    .line 1214
    :cond_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1215
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1216
    invoke-direct {p0, p3}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->transientMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1215
    invoke-static {v2, v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v0    # "optionalFullBinEntry":Lcom/sleepycat/je/log/WholeEntry;
    .end local p1    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p3    # "msg":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    .restart local v0    # "optionalFullBinEntry":Lcom/sleepycat/je/log/WholeEntry;
    .restart local p1    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p3    # "msg":Ljava/lang/String;
    :cond_2
    :goto_0
    nop

    .line 1222
    const/4 v2, 0x0

    .line 1223
    .local v2, "inFromFile":Lcom/sleepycat/je/tree/IN;
    if-eqz v1, :cond_3

    .line 1224
    invoke-virtual {v1}, Lcom/sleepycat/je/log/WholeEntry;->getEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v3

    invoke-interface {v3}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/sleepycat/je/tree/IN;

    .line 1227
    :cond_3
    if-eqz v0, :cond_5

    .line 1228
    nop

    .line 1229
    invoke-virtual {v0}, Lcom/sleepycat/je/log/WholeEntry;->getEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v3

    invoke-interface {v3}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/BIN;

    .line 1230
    .local v3, "optionalFullBin":Lcom/sleepycat/je/tree/BIN;
    if-eqz v2, :cond_4

    .line 1231
    move-object v4, v2

    check-cast v4, Lcom/sleepycat/je/tree/BIN;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v3, v5}, Lcom/sleepycat/je/tree/BIN;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;Z)V

    .line 1234
    :cond_4
    move-object v2, v3

    .line 1237
    .end local v3    # "optionalFullBin":Lcom/sleepycat/je/tree/BIN;
    :cond_5
    invoke-virtual {v2, p2}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1238
    return-object v2

    .line 1218
    .end local v1    # "entry":Lcom/sleepycat/je/log/WholeEntry;
    .end local v2    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    :catch_0
    move-exception v1

    .line 1219
    .local v1, "ce":Lcom/sleepycat/je/log/ChecksumException;
    new-instance v2, Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getTargetLsns(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/utilint/Pair;
    .locals 7
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/tree/IN;",
            ")",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1167
    const-wide/16 v0, -0x1

    .line 1168
    .local v0, "targetLsn2":J
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1169
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getLastFullLsn()J

    move-result-wide v2

    .line 1170
    .local v2, "targetLsn1":J
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1172
    .end local v2    # "targetLsn1":J
    :cond_0
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/tree/BIN;

    .line 1173
    .local v2, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getLastDeltaLsn()J

    move-result-wide v3

    .line 1174
    .local v3, "lastDeltaVersion":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    .line 1179
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v5

    move-wide v2, v5

    .local v5, "targetLsn1":J
    goto :goto_0

    .line 1185
    .end local v5    # "targetLsn1":J
    :cond_1
    move-wide v5, v3

    .line 1186
    .restart local v5    # "targetLsn1":J
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v0

    move-wide v2, v5

    .line 1189
    .end local v3    # "lastDeltaVersion":J
    .end local v5    # "targetLsn1":J
    .local v2, "targetLsn1":J
    :goto_0
    new-instance v4, Lcom/sleepycat/je/utilint/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Z)Lcom/sleepycat/je/Cursor;
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "retainNonTxnLocks"    # Z

    .line 2272
    nop

    .line 2273
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    .line 2275
    .local v0, "cursor":Lcom/sleepycat/je/Cursor;
    invoke-static {v0}, Lcom/sleepycat/je/DbInternal;->excludeFromOpStats(Lcom/sleepycat/je/Cursor;)V

    .line 2277
    return-object v0
.end method

.method private persistentMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Btree corruption was detected and is persistent. Re-opening the Environment is not possible without restoring from backup  or from another node. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setSecondaryDbCorrupt(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 17
    .param p1, "secDb"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "errMsg"    # Ljava/lang/String;
    .param p4, "secKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "priCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 2144
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/DbInternal;->isCorrupted(Lcom/sleepycat/je/Database;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2146
    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/dbi/CursorImpl;->getDb()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    .line 2148
    .local v1, "priDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    new-instance v15, Lcom/sleepycat/je/SecondaryIntegrityException;

    .line 2150
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/SecondaryDatabase;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    .line 2151
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2152
    invoke-static/range {p6 .. p6}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLsn(Lcom/sleepycat/je/dbi/CursorImpl;)J

    move-result-wide v10

    .line 2153
    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/dbi/CursorImpl;->getExpirationTime()J

    move-result-wide v12

    .line 2154
    move-object/from16 v14, p5

    invoke-static {v1, v14}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionStatus(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v16

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v14, v16

    invoke-direct/range {v2 .. v14}, Lcom/sleepycat/je/SecondaryIntegrityException;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V

    .line 2156
    .local v2, "sie":Lcom/sleepycat/je/SecondaryIntegrityException;
    iget-object v3, v0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->logger:Ljava/util/logging/Logger;

    iget-object v4, v0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Secondary corruption is detected during btree verification. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2161
    .end local v1    # "priDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v2    # "sie":Lcom/sleepycat/je/SecondaryIntegrityException;
    :cond_0
    return-void
.end method

.method private transientMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Btree corruption was detected in memory, but does not appearto be persistent. Re-opening the Environment may be possible. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private verifyCommonStructure(Lcom/sleepycat/je/tree/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/sleepycat/je/tree/Node;

    .line 512
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/Node;->isIN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 515
    .local v0, "in":Lcom/sleepycat/je/tree/IN;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyOrderedKeys(Lcom/sleepycat/je/tree/IN;)V

    .line 516
    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyIdentifierKey(Lcom/sleepycat/je/tree/IN;)V

    .line 517
    return-void

    .line 512
    .end local v0    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private verifyDanglingLSN(ILcom/sleepycat/je/tree/IN;Z)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "isBin"    # Z

    .line 726
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    return-void

    .line 730
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 732
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    nop

    .line 733
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyDanglingLSNInternal(ILcom/sleepycat/je/tree/IN;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;

    move-result-object v1

    .line 735
    .local v1, "result":Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;
    iget v2, v1, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->problematicIndex:I

    if-gez v2, :cond_1

    .line 736
    return-void

    .line 739
    :cond_1
    invoke-direct {p0, p2}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->getTargetLsns(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v2

    .line 742
    .local v2, "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string v3, "LSN is invalid. "

    .line 743
    .local v3, "label":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LSN is invalid. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 744
    invoke-virtual {v1}, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    new-array v7, v6, [I

    iget v8, v1, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->problematicIndex:I

    const/4 v9, 0x0

    aput v8, v7, v9

    .line 745
    invoke-virtual {p2, v7}, Lcom/sleepycat/je/tree/IN;->toSafeString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 747
    .local v4, "msg1":Ljava/lang/String;
    invoke-direct {p0, v2, v0, v4}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->getINFromFile(Lcom/sleepycat/je/utilint/Pair;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;)Lcom/sleepycat/je/tree/IN;

    move-result-object v7

    .line 750
    .local v7, "inFromFile":Lcom/sleepycat/je/tree/IN;
    const/4 v8, 0x0

    .line 751
    .local v8, "findAgain":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 752
    nop

    .line 753
    invoke-direct {p0, v10, v7, p3, v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyDanglingLSNInternal(ILcom/sleepycat/je/tree/IN;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;

    move-result-object v11

    move-object v1, v11

    .line 754
    iget v11, v1, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->problematicIndex:I

    if-ltz v11, :cond_2

    .line 755
    const/4 v8, 0x1

    .line 756
    goto :goto_1

    .line 751
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 760
    .end local v10    # "i":I
    :cond_3
    :goto_1
    if-nez v8, :cond_4

    .line 761
    iget-object v5, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 762
    invoke-direct {p0, v4}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->transientMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 761
    invoke-static {v5, v6}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "result":Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;
    .end local v2    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "msg1":Ljava/lang/String;
    .end local v7    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "index":I
    .end local p2    # "in":Lcom/sleepycat/je/tree/IN;
    .end local p3    # "isBin":Z
    throw v5

    .line 764
    .restart local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v1    # "result":Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;
    .restart local v2    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v4    # "msg1":Ljava/lang/String;
    .restart local v7    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "index":I
    .restart local p2    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local p3    # "isBin":Z
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 765
    invoke-virtual {v1}, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v6, [I

    iget v10, v1, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->problematicIndex:I

    aput v10, v6, v9

    .line 766
    invoke-virtual {v7, v6}, Lcom/sleepycat/je/tree/IN;->toSafeString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 768
    .local v5, "msg2":Ljava/lang/String;
    new-instance v6, Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;

    invoke-direct {p0, v5}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->persistentMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "result":Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;
    .end local v2    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "msg1":Ljava/lang/String;
    .end local v7    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "index":I
    .end local p2    # "in":Lcom/sleepycat/je/tree/IN;
    .end local p3    # "isBin":Z
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    .end local v5    # "msg2":Ljava/lang/String;
    .end local v8    # "findAgain":Z
    .restart local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v1    # "result":Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;
    .restart local v2    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v4    # "msg1":Ljava/lang/String;
    .restart local v7    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "index":I
    .restart local p2    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local p3    # "isBin":Z
    :catchall_0
    move-exception v5

    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    throw v5
.end method

.method private verifyDanglingLSNAndObsoleteRecordsAllSlots(Lcom/sleepycat/je/tree/Node;)V
    .locals 4
    .param p1, "node"    # Lcom/sleepycat/je/tree/Node;

    .line 694
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/Node;->isUpperIN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 696
    .local v0, "in":Lcom/sleepycat/je/tree/IN;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 697
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyDanglingLSNAndObsoleteRecordsOneSlot(ILcom/sleepycat/je/tree/IN;ZLcom/sleepycat/je/Cursor;)V

    .line 696
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 694
    .end local v0    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private verifyDanglingLSNAndObsoleteRecordsOneSlot(ILcom/sleepycat/je/tree/IN;ZLcom/sleepycat/je/Cursor;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "isBin"    # Z
    .param p4, "cursor"    # Lcom/sleepycat/je/Cursor;

    .line 709
    if-eqz p3, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    return-void

    .line 713
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyDanglingLSN(ILcom/sleepycat/je/tree/IN;Z)V

    .line 714
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyObsoleteRecords(ILcom/sleepycat/je/tree/IN;ZLcom/sleepycat/je/Cursor;)V

    .line 715
    return-void
.end method

.method private verifyDanglingLSNInternal(ILcom/sleepycat/je/tree/IN;ZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;
    .locals 15
    .param p1, "index"    # I
    .param p2, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "isBin"    # Z
    .param p4, "databaseImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 786
    move/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz p3, :cond_1

    .line 787
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v2

    if-nez v2, :cond_0

    .line 788
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sleepycat/je/tree/BIN;

    .line 789
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->access$300()Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;

    move-result-object v2

    return-object v2

    .line 793
    :cond_1
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v2

    .line 794
    .local v2, "curLsn":J
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->isTransientOrNull(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 795
    invoke-static {}, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->access$300()Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;

    move-result-object v4

    return-object v4

    .line 797
    :cond_2
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v4

    .line 798
    .local v4, "fileNum":J
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v6

    .line 804
    .local v6, "fileOffset":J
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/tree/IN;->getLastLoggedSize(I)I

    move-result v8

    .line 805
    .local v8, "lastLoggedSize":I
    move-object v9, p0

    invoke-direct {p0, v4, v5}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->getFileSize(J)Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;

    move-result-object v10

    .line 806
    .local v10, "fsInfo":Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;
    int-to-long v11, v8

    add-long/2addr v11, v6

    iget v13, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;->size:I

    int-to-long v13, v13

    cmp-long v11, v11, v13

    if-lez v11, :cond_4

    .line 807
    iget v11, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;->size:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 808
    new-instance v11, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;

    const/4 v12, 0x1

    invoke-direct {v11, v0, v12, v10}, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;-><init>(IZLcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;)V

    return-object v11

    .line 810
    :cond_3
    new-instance v11, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v12, v10}, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;-><init>(IZLcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;)V

    return-object v11

    .line 813
    :cond_4
    invoke-static {}, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->access$300()Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;

    move-result-object v11

    return-object v11
.end method

.method private verifyForeignConstraint(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Map;)V
    .locals 19
    .param p1, "secDb"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p3, "secKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/SecondaryDatabase;",
            "Lcom/sleepycat/je/Cursor;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;
        }
    .end annotation

    .line 1832
    .local p4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    move-object/from16 v8, p0

    if-eqz p1, :cond_6

    .line 1834
    nop

    .line 1835
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/DbInternal;->getPrivateSecondaryConfig(Lcom/sleepycat/je/SecondaryDatabase;)Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyDatabase()Lcom/sleepycat/je/Database;

    move-result-object v9

    .line 1836
    .local v9, "foreignDb":Lcom/sleepycat/je/Database;
    if-nez v9, :cond_0

    .line 1837
    return-void

    .line 1842
    :cond_0
    const/4 v10, 0x0

    :try_start_0
    invoke-static {v9}, Lcom/sleepycat/je/DbInternal;->getDbImpl(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/OperationFailureException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v0

    .line 1845
    .local v11, "foreignDbId":Lcom/sleepycat/je/dbi/DatabaseId;
    nop

    .line 1847
    iget-object v0, v8, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkOpen()V

    .line 1848
    iget-object v0, v8, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v12

    .line 1849
    .local v12, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    const-wide/16 v0, -0x1

    .line 1850
    move-object/from16 v13, p4

    invoke-virtual {v12, v11, v0, v1, v13}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;JLjava/util/Map;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v14

    .line 1852
    .local v14, "foreignDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1861
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v15, v0

    .line 1862
    .local v15, "tmpData":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v15, v0, v0, v1}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 1865
    iget-object v0, v8, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1866
    invoke-static {v0}, Lcom/sleepycat/je/txn/LockerFactory;->getInternalReadOperationLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v7

    .line 1867
    .local v7, "locker":Lcom/sleepycat/je/txn/Locker;
    invoke-virtual {v7, v1}, Lcom/sleepycat/je/txn/Locker;->setDefaultNoWait(Z)V

    .line 1869
    invoke-direct {v8, v14, v7, v1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Z)Lcom/sleepycat/je/Cursor;

    move-result-object v6

    .line 1874
    .local v6, "foreignCursor":Lcom/sleepycat/je/Cursor;
    :try_start_1
    sget-object v0, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    sget-object v1, Lcom/sleepycat/je/util/verify/BtreeVerifier;->READLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

    move-object/from16 v5, p3

    invoke-virtual {v6, v5, v15, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_1
    .catch Lcom/sleepycat/je/LockNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1880
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    :try_start_2
    invoke-virtual {v7}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1881
    nop

    .line 1890
    if-eqz v0, :cond_2

    .line 1903
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1904
    .end local v6    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    :cond_1
    return-void

    .line 1892
    .restart local v0    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v6    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    :cond_2
    nop

    .line 1894
    :try_start_3
    invoke-static/range {p2 .. p2}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Secondary key does not exist in foreign database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1896
    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x0

    .line 1899
    invoke-static/range {p2 .. p2}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1892
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v18, v6

    .end local v6    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .local v18, "foreignCursor":Lcom/sleepycat/je/Cursor;
    move-object/from16 v6, v16

    move-object/from16 v16, v7

    .end local v7    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v16, "locker":Lcom/sleepycat/je/txn/Locker;
    move-object/from16 v7, v17

    :try_start_4
    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->setSecondaryDbCorrupt(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 1901
    new-instance v1, Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;

    invoke-direct {v1, v10}, Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;-><init>(Lcom/sleepycat/je/util/verify/BtreeVerifier$1;)V

    .end local v9    # "foreignDb":Lcom/sleepycat/je/Database;
    .end local v11    # "foreignDbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v12    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v14    # "foreignDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v15    # "tmpData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v16    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v18    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local p2    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p3    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    throw v1

    .line 1869
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v6    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .restart local v7    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v9    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v11    # "foreignDbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v12    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v14    # "foreignDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v15    # "tmpData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p1    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local p2    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p3    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v16, v7

    move-object v1, v0

    .end local v6    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .end local v7    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v16    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v18    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    goto :goto_0

    .line 1880
    .end local v16    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v18    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .restart local v6    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .restart local v7    # "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v16, v7

    .end local v6    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .end local v7    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v16    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v18    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .end local v9    # "foreignDb":Lcom/sleepycat/je/Database;
    .end local v11    # "foreignDbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v12    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v14    # "foreignDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v15    # "tmpData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v16    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v18    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local p2    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p3    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    throw v0

    .line 1876
    .restart local v6    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .restart local v7    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v9    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v11    # "foreignDbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v12    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v14    # "foreignDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v15    # "tmpData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p1    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local p2    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p3    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :catch_0
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v16, v7

    .line 1880
    .end local v6    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .end local v7    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v0, "lnae":Lcom/sleepycat/je/LockNotAvailableException;
    .restart local v16    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v18    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1903
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1878
    :cond_3
    return-void

    .line 1869
    .end local v0    # "lnae":Lcom/sleepycat/je/LockNotAvailableException;
    :catchall_2
    move-exception v0

    move-object v1, v0

    .end local v9    # "foreignDb":Lcom/sleepycat/je/Database;
    .end local v11    # "foreignDbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v12    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v14    # "foreignDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v15    # "tmpData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v16    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v18    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local p2    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p3    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :goto_0
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1903
    .restart local v9    # "foreignDb":Lcom/sleepycat/je/Database;
    .restart local v11    # "foreignDbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v12    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v14    # "foreignDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v15    # "tmpData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v16    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v18    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local p2    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p3    # "secKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :catchall_3
    move-exception v0

    move-object v2, v0

    if-eqz v18, :cond_4

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2

    .line 1854
    .end local v15    # "tmpData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v16    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v18    # "foreignCursor":Lcom/sleepycat/je/Cursor;
    :cond_5
    new-instance v0, Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;

    invoke-direct {v0, v10}, Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;-><init>(Lcom/sleepycat/je/util/verify/BtreeVerifier$1;)V

    throw v0

    .line 1843
    .end local v11    # "foreignDbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v12    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v14    # "foreignDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    move-object/from16 v13, p4

    .line 1844
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;

    invoke-direct {v1, v10}, Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;-><init>(Lcom/sleepycat/je/util/verify/BtreeVerifier$1;)V

    throw v1

    .line 1832
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v9    # "foreignDb":Lcom/sleepycat/je/Database;
    :cond_6
    move-object/from16 v13, p4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private verifyIdentifierKey(Lcom/sleepycat/je/tree/IN;)V
    .locals 8
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    .line 575
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 576
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyIdentifierKeyInternal(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    return-void

    .line 580
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->getTargetLsns(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v1

    .line 583
    .local v1, "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string v2, "IdentifierKey not present in any slot. "

    .line 584
    .local v2, "label":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IdentifierKey not present in any slot. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/sleepycat/je/tree/IN;->toSafeString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, "msg1":Ljava/lang/String;
    invoke-direct {p0, v1, v0, v3}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->getINFromFile(Lcom/sleepycat/je/utilint/Pair;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;)Lcom/sleepycat/je/tree/IN;

    move-result-object v6

    .line 589
    .local v6, "inFromFile":Lcom/sleepycat/je/tree/IN;
    :try_start_0
    invoke-direct {p0, v6, v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyIdentifierKeyInternal(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 590
    iget-object v4, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 591
    invoke-direct {p0, v3}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->transientMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 590
    invoke-static {v4, v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "msg1":Ljava/lang/String;
    .end local v6    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "in":Lcom/sleepycat/je/tree/IN;
    throw v4

    .line 593
    .restart local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v1    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v2    # "label":Ljava/lang/String;
    .restart local v3    # "msg1":Ljava/lang/String;
    .restart local v6    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6, v5}, Lcom/sleepycat/je/tree/IN;->toSafeString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "msg2":Ljava/lang/String;
    new-instance v5, Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;

    invoke-direct {p0, v4}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->persistentMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "msg1":Ljava/lang/String;
    .end local v6    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "in":Lcom/sleepycat/je/tree/IN;
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    .end local v4    # "msg2":Ljava/lang/String;
    .restart local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v1    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v2    # "label":Ljava/lang/String;
    .restart local v3    # "msg1":Ljava/lang/String;
    .restart local v6    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "in":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception v4

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    throw v4
.end method

.method private verifyIdentifierKeyInternal(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/dbi/DatabaseImpl;)Z
    .locals 7
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 608
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isUpperIN()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 612
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getIdentifierKey()[B

    move-result-object v0

    .line 613
    .local v0, "identifierKey":[B
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 614
    return v2

    .line 670
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DbTree;->getInitialLogVersion()I

    move-result v3

    const/16 v4, 0xf

    if-ge v3, v4, :cond_2

    .line 671
    return v1

    .line 674
    :cond_2
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v3

    .line 676
    .local v3, "userCompareToFcn":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 677
    invoke-virtual {p1, v4}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v5

    .line 678
    .local v5, "key":[B
    invoke-static {v0, v5, v3}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v6

    if-nez v6, :cond_3

    .line 679
    return v1

    .line 676
    .end local v5    # "key":[B
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 683
    .end local v4    # "i":I
    :cond_4
    return v2

    .line 609
    .end local v0    # "identifierKey":[B
    .end local v3    # "userCompareToFcn":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_5
    :goto_1
    return v1
.end method

.method private verifyIndex(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 20
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "secDb"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p3, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p4, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;
        }
    .end annotation

    .line 1733
    move-object/from16 v1, p0

    move-object/from16 v14, p2

    if-eqz v14, :cond_2

    .line 1736
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    .line 1737
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1740
    nop

    .line 1743
    nop

    .line 1744
    const/4 v15, 0x0

    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/sleepycat/je/DbInternal;->getSecondaryAssociation(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/SecondaryAssociation;

    move-result-object v0

    move-object v13, v0

    .line 1745
    .local v13, "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    invoke-interface {v13}, Lcom/sleepycat/je/SecondaryAssociation;->isEmpty()Z

    move-result v0
    :try_end_1
    .catch Lcom/sleepycat/je/SecondaryIntegrityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_0

    .line 1816
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1746
    return-void

    .line 1749
    :cond_0
    move-object/from16 v12, p5

    :try_start_2
    invoke-interface {v13, v12}, Lcom/sleepycat/je/SecondaryAssociation;->getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;

    move-result-object v0
    :try_end_2
    .catch Lcom/sleepycat/je/SecondaryIntegrityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v16, v0

    .line 1750
    .local v16, "priDb":Lcom/sleepycat/je/Database;
    if-nez v16, :cond_1

    .line 1816
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1751
    return-void

    .line 1758
    :cond_1
    :try_start_3
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v11, v0

    .line 1759
    .local v11, "priData":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v11, v2, v2, v0}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 1768
    iget-object v2, v1, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1769
    invoke-static {v2}, Lcom/sleepycat/je/txn/LockerFactory;->getInternalReadOperationLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    move-object v10, v2

    .line 1770
    .local v10, "locker":Lcom/sleepycat/je/txn/Locker;
    invoke-virtual {v10, v0}, Lcom/sleepycat/je/txn/Locker;->setDefaultNoWait(Z)V
    :try_end_3
    .catch Lcom/sleepycat/je/SecondaryIntegrityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1778
    :try_start_4
    sget-object v7, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;
    :try_end_4
    .catch Lcom/sleepycat/je/LockNotAvailableException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x1

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v11

    move-object/from16 v17, v10

    .end local v10    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v17, "locker":Lcom/sleepycat/je/txn/Locker;
    move v10, v0

    move-object/from16 v18, v11

    .end local v11    # "priData":Lcom/sleepycat/je/DatabaseEntry;
    .local v18, "priData":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v11, v17

    move-object/from16 v12, p2

    move-object/from16 v19, v13

    .end local v13    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    .local v19, "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    :try_start_5
    invoke-static/range {v2 .. v13}, Lcom/sleepycat/je/DbInternal;->readPrimaryAfterGet(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;ZZZLcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/SecondaryAssociation;)Z
    :try_end_5
    .catch Lcom/sleepycat/je/LockNotAvailableException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1786
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1782
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1786
    .end local v17    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v18    # "priData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v19    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    .restart local v10    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v11    # "priData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v13    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v13

    .end local v10    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v11    # "priData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v13    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    .restart local v17    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v18    # "priData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v19    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    :goto_0
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local p3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p5    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    throw v0

    .line 1782
    .end local v17    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v18    # "priData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v19    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    .restart local v10    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v11    # "priData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v13    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local p3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p5    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    :catch_1
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v13

    .line 1786
    .end local v10    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v11    # "priData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v13    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    .restart local v17    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v18    # "priData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v19    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V
    :try_end_6
    .catch Lcom/sleepycat/je/SecondaryIntegrityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1787
    nop

    .line 1816
    .end local v16    # "priDb":Lcom/sleepycat/je/Database;
    .end local v17    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v18    # "priData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v19    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1817
    nop

    .line 1818
    return-void

    .line 1816
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 1803
    :catch_2
    move-exception v0

    .line 1814
    .local v0, "ise":Ljava/lang/IllegalStateException;
    :try_start_7
    new-instance v2, Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;

    invoke-direct {v2, v15}, Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;-><init>(Lcom/sleepycat/je/util/verify/BtreeVerifier$1;)V

    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local p3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p5    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    throw v2

    .line 1788
    .end local v0    # "ise":Ljava/lang/IllegalStateException;
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local p3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p5    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    :catch_3
    move-exception v0

    .line 1795
    .local v0, "sie":Lcom/sleepycat/je/SecondaryIntegrityException;
    iget-object v2, v1, Lcom/sleepycat/je/util/verify/BtreeVerifier;->logger:Ljava/util/logging/Logger;

    iget-object v3, v1, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Secondary corruption is detected during btree verification. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1800
    invoke-direct {v1, v14}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->addSecondaryException(Lcom/sleepycat/je/SecondaryDatabase;)V

    .line 1801
    new-instance v2, Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;

    invoke-direct {v2, v15}, Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;-><init>(Lcom/sleepycat/je/util/verify/BtreeVerifier$1;)V

    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local p3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p5    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1816
    .end local v0    # "sie":Lcom/sleepycat/je/SecondaryIntegrityException;
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local p3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p5    # "priKey":Lcom/sleepycat/je/DatabaseEntry;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 1738
    :catch_4
    move-exception v0

    .line 1739
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Lcom/sleepycat/je/ThreadInterruptedException;

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v2

    .line 1733
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private verifyObsoleteRecords(ILcom/sleepycat/je/tree/IN;ZLcom/sleepycat/je/Cursor;)V
    .locals 22
    .param p1, "index"    # I
    .param p2, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "isBin"    # Z
    .param p4, "cursor"    # Lcom/sleepycat/je/Cursor;

    .line 1016
    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    if-eqz p3, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-nez p3, :cond_e

    if-nez v3, :cond_e

    .line 1018
    :cond_1
    iget-object v4, v1, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v4}, Lcom/sleepycat/je/VerifyConfig;->getVerifyObsoleteRecords()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1019
    return-void

    .line 1026
    :cond_2
    iget-object v4, v1, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1027
    return-void

    .line 1030
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    .line 1036
    .local v4, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz p3, :cond_5

    .line 1037
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1038
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v5

    if-nez v5, :cond_4

    move-object v5, v2

    check-cast v5, Lcom/sleepycat/je/tree/BIN;

    .line 1039
    invoke-virtual {v5, v0}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1040
    :cond_4
    return-void

    .line 1043
    :cond_5
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v5

    .line 1044
    .local v5, "curLsn":J
    invoke-static {v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->isTransientOrNull(J)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1045
    return-void

    .line 1047
    :cond_6
    invoke-static {v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v7

    .line 1048
    .local v7, "fileNum":J
    iget-object v9, v1, Lcom/sleepycat/je/util/verify/BtreeVerifier;->ooCache:Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;

    invoke-virtual {v9, v7, v8}, Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;->getCachedOffsets(J)[J

    move-result-object v9

    .line 1049
    .local v9, "offsets":[J
    if-nez v9, :cond_a

    .line 1054
    if-nez p3, :cond_7

    .line 1055
    return-void

    .line 1065
    :cond_7
    iget-object v10, v1, Lcom/sleepycat/je/util/verify/BtreeVerifier;->ooCache:Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;

    invoke-virtual {v10, v7, v8, v3}, Lcom/sleepycat/je/util/verify/BtreeVerifier$ObsoleteOffsetsCache;->fetchOffsets(JLcom/sleepycat/je/Cursor;)[J

    move-result-object v9

    .line 1066
    invoke-static/range {p4 .. p4}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v10

    .line 1067
    .local v10, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v2

    .line 1068
    .end local p2    # "in":Lcom/sleepycat/je/tree/IN;
    .local v2, "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v0

    .line 1069
    .end local p1    # "index":I
    .local v0, "index":I
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v5

    .line 1070
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/tree/IN;->isEmbeddedLN(I)Z

    move-result v11

    if-nez v11, :cond_9

    move-object v11, v2

    check-cast v11, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v11, v0}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_0

    :cond_8
    move-object/from16 v19, v2

    move v2, v0

    move-wide/from16 v20, v5

    move-object/from16 v5, v19

    move-object v6, v9

    move-wide/from16 v9, v20

    goto :goto_1

    .line 1071
    :cond_9
    :goto_0
    return-void

    .line 1049
    .end local v0    # "index":I
    .end local v2    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v10    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local p1    # "index":I
    .restart local p2    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_a
    move-object/from16 v19, v2

    move v2, v0

    move-wide/from16 v20, v5

    move-object/from16 v5, v19

    move-object v6, v9

    move-wide/from16 v9, v20

    .line 1080
    .end local p1    # "index":I
    .end local p2    # "in":Lcom/sleepycat/je/tree/IN;
    .local v2, "index":I
    .local v5, "in":Lcom/sleepycat/je/tree/IN;
    .local v6, "offsets":[J
    .local v9, "curLsn":J
    :goto_1
    nop

    .line 1081
    invoke-static {v9, v10}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v11

    .line 1080
    invoke-static {v6, v11, v12}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_d

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Active lsn is obsolete: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1083
    invoke-static {v9, v10}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1084
    .local v11, "label":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ". "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v13, 0x1

    new-array v14, v13, [I

    const/4 v15, 0x0

    aput v2, v14, v15

    invoke-virtual {v5, v14}, Lcom/sleepycat/je/tree/IN;->toSafeString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1093
    .local v14, "msg1":Ljava/lang/String;
    invoke-direct {v1, v5}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->getTargetLsns(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v15

    .line 1094
    .local v15, "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-direct {v1, v15, v4, v14}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->getINFromFile(Lcom/sleepycat/je/utilint/Pair;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;)Lcom/sleepycat/je/tree/IN;

    move-result-object v13

    .line 1096
    .local v13, "inFromFile":Lcom/sleepycat/je/tree/IN;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    move/from16 v16, v2

    .end local v2    # "index":I
    .local v16, "index":I
    :try_start_0
    invoke-virtual {v13}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 1097
    invoke-virtual {v13, v0}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v17

    cmp-long v2, v17, v9

    if-eqz v2, :cond_b

    .line 1096
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v16

    goto :goto_2

    .line 1098
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/16 v17, 0x0

    aput v0, v12, v17

    .line 1099
    invoke-virtual {v13, v12}, Lcom/sleepycat/je/tree/IN;->toSafeString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1100
    .local v2, "msg2":Ljava/lang/String;
    new-instance v12, Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;

    .line 1101
    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    invoke-direct {v1, v2}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->persistentMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;-><init>(Ljava/lang/String;)V

    .end local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v6    # "offsets":[J
    .end local v7    # "fileNum":J
    .end local v9    # "curLsn":J
    .end local v11    # "label":Ljava/lang/String;
    .end local v13    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .end local v14    # "msg1":Ljava/lang/String;
    .end local v15    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v16    # "index":I
    .end local p3    # "isBin":Z
    .end local p4    # "cursor":Lcom/sleepycat/je/Cursor;
    throw v12

    .line 1096
    .end local v2    # "msg2":Ljava/lang/String;
    .end local v17    # "i":I
    .restart local v0    # "i":I
    .restart local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v6    # "offsets":[J
    .restart local v7    # "fileNum":J
    .restart local v9    # "curLsn":J
    .restart local v11    # "label":Ljava/lang/String;
    .restart local v13    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .restart local v14    # "msg1":Ljava/lang/String;
    .restart local v15    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v16    # "index":I
    .restart local p3    # "isBin":Z
    .restart local p4    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_c
    move/from16 v17, v0

    .line 1105
    .end local v0    # "i":I
    iget-object v0, v1, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1106
    invoke-direct {v1, v14}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->transientMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1105
    invoke-static {v0, v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v6    # "offsets":[J
    .end local v7    # "fileNum":J
    .end local v9    # "curLsn":J
    .end local v11    # "label":Ljava/lang/String;
    .end local v13    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .end local v14    # "msg1":Ljava/lang/String;
    .end local v15    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v16    # "index":I
    .end local p3    # "isBin":Z
    .end local p4    # "cursor":Lcom/sleepycat/je/Cursor;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    .restart local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v6    # "offsets":[J
    .restart local v7    # "fileNum":J
    .restart local v9    # "curLsn":J
    .restart local v11    # "label":Ljava/lang/String;
    .restart local v13    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .restart local v14    # "msg1":Ljava/lang/String;
    .restart local v15    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v16    # "index":I
    .restart local p3    # "isBin":Z
    .restart local p4    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    throw v0

    .line 1111
    .end local v11    # "label":Ljava/lang/String;
    .end local v13    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .end local v14    # "msg1":Ljava/lang/String;
    .end local v15    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v16    # "index":I
    .local v2, "index":I
    :cond_d
    return-void

    .line 1016
    .end local v2    # "index":I
    .end local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v6    # "offsets":[J
    .end local v7    # "fileNum":J
    .end local v9    # "curLsn":J
    .restart local p1    # "index":I
    .restart local p2    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_e
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private verifyOneDb(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Ljava/io/PrintStream;Z)Lcom/sleepycat/je/BtreeStats;
    .locals 23
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p3, "out"    # Ljava/io/PrintStream;
    .param p4, "verifyAll"    # Z

    .line 299
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start verify database: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 300
    .local v14, "startMsg":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End verify database: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 302
    .local v15, "stopMsg":Ljava/lang/String;
    iget-object v0, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/VerifyConfig;->getPrintInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    :cond_0
    if-nez p4, :cond_1

    .line 306
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v1, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0, v1, v14}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 310
    :cond_1
    :try_start_0
    iget-object v0, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/VerifyConfig;->getBatchSize()I

    move-result v9

    .line 311
    .local v9, "batchSize":I
    iget-object v0, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 312
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/VerifyConfig;->getBatchDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    move-wide/from16 v16, v0

    .line 317
    .local v16, "batchDelay":J
    new-instance v6, Lcom/sleepycat/je/util/verify/BtreeVerifier$VerifierStatsAccumulator;

    iget-object v0, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 319
    invoke-virtual {v0}, Lcom/sleepycat/je/VerifyConfig;->getShowProgressInterval()I

    move-result v0

    invoke-direct {v6, v10, v13, v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier$VerifierStatsAccumulator;-><init>(Lcom/sleepycat/je/util/verify/BtreeVerifier;Ljava/io/PrintStream;I)V

    .line 322
    .local v6, "statsAcc":Lcom/sleepycat/je/util/verify/BtreeVerifier$VerifierStatsAccumulator;
    iget-object v0, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkOpen()V

    .line 323
    iget-object v0, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    move-object v1, v0

    .line 324
    .local v1, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    invoke-virtual {v1, v12}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v2, v0

    .line 326
    .local v2, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/4 v3, 0x0

    .line 327
    .local v3, "isSecondaryDb":Z
    const/4 v4, 0x0

    .line 328
    .local v4, "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    const/4 v5, 0x0

    .line 330
    .local v5, "priDb":Lcom/sleepycat/je/Database;
    if-eqz v2, :cond_12

    :try_start_1
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_8

    .line 334
    :cond_2
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 335
    invoke-virtual {v0}, Lcom/sleepycat/je/VerifyConfig;->getRepairReservedFiles()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 336
    new-instance v0, Lcom/sleepycat/je/BtreeStats;

    invoke-direct {v0}, Lcom/sleepycat/je/BtreeStats;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 350
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_2
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 441
    iget-object v7, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v7}, Lcom/sleepycat/je/VerifyConfig;->getPrintInfo()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 442
    invoke-virtual {v13, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    :cond_3
    if-nez p4, :cond_4

    .line 445
    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v8, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v7, v8, v15}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 336
    :cond_4
    return-object v0

    .line 339
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getReferringHandles()Ljava/util/Set;

    move-result-object v0

    .line 340
    .local v0, "referringHandles":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/Database;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/Database;

    .line 341
    .local v8, "db":Lcom/sleepycat/je/Database;
    move-object v5, v8

    .line 342
    move-object/from16 v18, v0

    .end local v0    # "referringHandles":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/Database;>;"
    .local v18, "referringHandles":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/Database;>;"
    instance-of v0, v8, Lcom/sleepycat/je/SecondaryDatabase;

    if-eqz v0, :cond_6

    .line 343
    const/4 v3, 0x1

    .line 344
    move-object v0, v8

    check-cast v0, Lcom/sleepycat/je/SecondaryDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v4, v0

    .line 345
    const/4 v5, 0x0

    .line 346
    move/from16 v18, v3

    move-object v8, v4

    move-object v7, v5

    goto :goto_1

    .line 348
    .end local v8    # "db":Lcom/sleepycat/je/Database;
    :cond_6
    move-object/from16 v0, v18

    goto :goto_0

    .line 340
    .end local v18    # "referringHandles":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/Database;>;"
    .restart local v0    # "referringHandles":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/Database;>;"
    :cond_7
    move-object/from16 v18, v0

    .end local v0    # "referringHandles":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/Database;>;"
    .restart local v18    # "referringHandles":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/Database;>;"
    move/from16 v18, v3

    move-object v8, v4

    move-object v7, v5

    .line 350
    .end local v3    # "isSecondaryDb":Z
    .end local v4    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local v5    # "priDb":Lcom/sleepycat/je/Database;
    .local v7, "priDb":Lcom/sleepycat/je/Database;
    .local v8, "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .local v18, "isSecondaryDb":Z
    :goto_1
    :try_start_4
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 351
    nop

    .line 353
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 354
    .local v0, "lastKey":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    .line 357
    .end local v0    # "lastKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v19, "lastKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v20, "lastData":Lcom/sleepycat/je/DatabaseEntry;
    :goto_2
    iget-object v0, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkOpen()V

    .line 358
    iget-object v0, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    move-object v5, v0

    .line 359
    .end local v1    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .local v5, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    invoke-virtual {v5, v12}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0
    :try_end_4
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v4, v0

    .line 362
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v4, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_5
    iget-boolean v0, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->stopVerify:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_8

    .line 389
    :try_start_6
    invoke-virtual {v5, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_6
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    goto/16 :goto_6

    .line 366
    :cond_8
    if-eqz v4, :cond_e

    :try_start_7
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    goto/16 :goto_5

    .line 370
    :cond_9
    sget-object v0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->databaseOperBeforeBatchCheckHook:Lcom/sleepycat/je/utilint/TestHook;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_b

    .line 371
    if-eqz v7, :cond_a

    .line 372
    :try_start_8
    invoke-interface {v0, v7}, Lcom/sleepycat/je/utilint/TestHook;->doHook(Ljava/lang/Object;)V

    goto :goto_3

    .line 374
    :cond_a
    invoke-interface {v0, v8}, Lcom/sleepycat/je/utilint/TestHook;->doHook(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 389
    :catchall_0
    move-exception v0

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    goto/16 :goto_7

    .line 378
    :cond_b
    :goto_3
    move-object/from16 v1, p0

    move-object v2, v4

    move/from16 v3, v18

    move-object v11, v4

    .end local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v11, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    move-object v4, v7

    move-object v12, v5

    .end local v5    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .local v12, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    move-object v5, v8

    move-object/from16 v21, v7

    .end local v7    # "priDb":Lcom/sleepycat/je/Database;
    .local v21, "priDb":Lcom/sleepycat/je/Database;
    move-object/from16 v7, v19

    move-object/from16 v22, v8

    .end local v8    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .local v22, "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    move-object/from16 v8, v20

    :try_start_9
    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->walkDatabaseTree(Lcom/sleepycat/je/dbi/DatabaseImpl;ZLcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;I)Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;

    move-result-object v0

    .line 382
    .local v0, "result":Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;
    iget-boolean v1, v0, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->noMoreRecords:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_c

    .line 389
    :try_start_a
    invoke-virtual {v12, v11}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_a
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_6

    .line 386
    :cond_c
    :try_start_b
    iget-object v1, v0, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->lastKey:Lcom/sleepycat/je/DatabaseEntry;

    move-object/from16 v19, v1

    .line 387
    iget-object v1, v0, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->lastData:Lcom/sleepycat/je/DatabaseEntry;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v20, v1

    .line 389
    .end local v0    # "result":Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;
    :try_start_c
    invoke-virtual {v12, v11}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_c
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 390
    nop

    .line 392
    const-wide/16 v0, 0x0

    cmp-long v0, v16, v0

    if-lez v0, :cond_d

    .line 394
    :try_start_d
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 397
    goto :goto_4

    .line 395
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 396
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_e
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    .end local v14    # "startMsg":Ljava/lang/String;
    .end local v15    # "stopMsg":Ljava/lang/String;
    .end local p1    # "dbName":Ljava/lang/String;
    .end local p2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local p3    # "out":Ljava/io/PrintStream;
    .end local p4    # "verifyAll":Z
    throw v1

    .line 357
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v14    # "startMsg":Ljava/lang/String;
    .restart local v15    # "stopMsg":Ljava/lang/String;
    .restart local p1    # "dbName":Ljava/lang/String;
    .restart local p2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local p3    # "out":Ljava/io/PrintStream;
    .restart local p4    # "verifyAll":Z
    :cond_d
    :goto_4
    move-object v2, v11

    move-object v1, v12

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    goto/16 :goto_2

    .line 389
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 366
    .end local v11    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v12    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v21    # "priDb":Lcom/sleepycat/je/Database;
    .end local v22    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v7    # "priDb":Lcom/sleepycat/je/Database;
    .restart local v8    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    :cond_e
    move-object v11, v4

    move-object v12, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    .line 389
    .end local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v7    # "priDb":Lcom/sleepycat/je/Database;
    .end local v8    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local v11    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v12    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v21    # "priDb":Lcom/sleepycat/je/Database;
    .restart local v22    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    :goto_5
    invoke-virtual {v12, v11}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 401
    :goto_6
    new-instance v0, Lcom/sleepycat/je/BtreeStats;

    invoke-virtual {v6}, Lcom/sleepycat/je/util/verify/BtreeVerifier$VerifierStatsAccumulator;->getStats()Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/BtreeStats;-><init>(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 403
    .local v0, "stats":Lcom/sleepycat/je/BtreeStats;
    iget-object v1, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v1}, Lcom/sleepycat/je/VerifyConfig;->getPrintInfo()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 408
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V
    :try_end_e
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 411
    :cond_f
    nop

    .line 441
    iget-object v1, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v1}, Lcom/sleepycat/je/VerifyConfig;->getPrintInfo()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 442
    invoke-virtual {v13, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    :cond_10
    if-nez p4, :cond_11

    .line 445
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v2, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1, v2, v15}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 411
    :cond_11
    return-object v0

    .line 389
    .end local v0    # "stats":Lcom/sleepycat/je/BtreeStats;
    .end local v11    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v12    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v21    # "priDb":Lcom/sleepycat/je/Database;
    .end local v22    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v7    # "priDb":Lcom/sleepycat/je/Database;
    .restart local v8    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    :catchall_2
    move-exception v0

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    .end local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v7    # "priDb":Lcom/sleepycat/je/Database;
    .end local v8    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local v11    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v12    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v21    # "priDb":Lcom/sleepycat/je/Database;
    .restart local v22    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    :goto_7
    :try_start_f
    invoke-virtual {v12, v11}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .end local v14    # "startMsg":Ljava/lang/String;
    .end local v15    # "stopMsg":Ljava/lang/String;
    .end local p1    # "dbName":Ljava/lang/String;
    .end local p2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local p3    # "out":Ljava/io/PrintStream;
    .end local p4    # "verifyAll":Z
    throw v0
    :try_end_f
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 331
    .end local v11    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v12    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v18    # "isSecondaryDb":Z
    .end local v19    # "lastKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "lastData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v21    # "priDb":Lcom/sleepycat/je/Database;
    .end local v22    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local v1    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v3    # "isSecondaryDb":Z
    .local v4, "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .local v5, "priDb":Lcom/sleepycat/je/Database;
    .restart local v14    # "startMsg":Ljava/lang/String;
    .restart local v15    # "stopMsg":Ljava/lang/String;
    .restart local p1    # "dbName":Ljava/lang/String;
    .restart local p2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local p3    # "out":Ljava/io/PrintStream;
    .restart local p4    # "verifyAll":Z
    :cond_12
    :goto_8
    :try_start_10
    new-instance v0, Lcom/sleepycat/je/BtreeStats;

    invoke-direct {v0}, Lcom/sleepycat/je/BtreeStats;-><init>()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 350
    :try_start_11
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_11
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 441
    iget-object v7, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v7}, Lcom/sleepycat/je/VerifyConfig;->getPrintInfo()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 442
    invoke-virtual {v13, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    :cond_13
    if-nez p4, :cond_14

    .line 445
    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v8, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v7, v8, v15}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 331
    :cond_14
    return-object v0

    .line 350
    :catchall_3
    move-exception v0

    :try_start_12
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .end local v14    # "startMsg":Ljava/lang/String;
    .end local v15    # "stopMsg":Ljava/lang/String;
    .end local p1    # "dbName":Ljava/lang/String;
    .end local p2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local p3    # "out":Ljava/io/PrintStream;
    .end local p4    # "verifyAll":Z
    throw v0
    :try_end_12
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 441
    .end local v1    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v3    # "isSecondaryDb":Z
    .end local v4    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local v5    # "priDb":Lcom/sleepycat/je/Database;
    .end local v6    # "statsAcc":Lcom/sleepycat/je/util/verify/BtreeVerifier$VerifierStatsAccumulator;
    .end local v9    # "batchSize":I
    .end local v16    # "batchDelay":J
    .restart local v14    # "startMsg":Ljava/lang/String;
    .restart local v15    # "stopMsg":Ljava/lang/String;
    .restart local p1    # "dbName":Ljava/lang/String;
    .restart local p2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local p3    # "out":Ljava/io/PrintStream;
    .restart local p4    # "verifyAll":Z
    :catchall_4
    move-exception v0

    goto :goto_9

    .line 413
    :catch_1
    move-exception v0

    .line 420
    .local v0, "bve":Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;
    :try_start_13
    invoke-virtual {v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/sleepycat/je/log/ChecksumException;

    if-eqz v1, :cond_15

    .line 428
    sget-object v1, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->LOG_CHECKSUM:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    .line 430
    invoke-virtual {v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 428
    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/util/verify/VerifierUtils;->createMarkerFileFromException(Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;Ljava/lang/Throwable;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local v14    # "startMsg":Ljava/lang/String;
    .end local v15    # "stopMsg":Ljava/lang/String;
    .end local p1    # "dbName":Ljava/lang/String;
    .end local p2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local p3    # "out":Ljava/io/PrintStream;
    .end local p4    # "verifyAll":Z
    throw v1

    .line 434
    .restart local v14    # "startMsg":Ljava/lang/String;
    .restart local v15    # "stopMsg":Ljava/lang/String;
    .restart local p1    # "dbName":Ljava/lang/String;
    .restart local p2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local p3    # "out":Ljava/io/PrintStream;
    .restart local p4    # "verifyAll":Z
    :cond_15
    sget-object v1, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->BTREE_CORRUPTION:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    iget-object v2, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->BTREE_CORRUPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-static {v1, v0, v2, v3}, Lcom/sleepycat/je/util/verify/VerifierUtils;->createMarkerFileFromException(Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;Ljava/lang/Throwable;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local v14    # "startMsg":Ljava/lang/String;
    .end local v15    # "stopMsg":Ljava/lang/String;
    .end local p1    # "dbName":Ljava/lang/String;
    .end local p2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local p3    # "out":Ljava/io/PrintStream;
    .end local p4    # "verifyAll":Z
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 441
    .end local v0    # "bve":Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;
    .restart local v14    # "startMsg":Ljava/lang/String;
    .restart local v15    # "stopMsg":Ljava/lang/String;
    .restart local p1    # "dbName":Ljava/lang/String;
    .restart local p2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local p3    # "out":Ljava/io/PrintStream;
    .restart local p4    # "verifyAll":Z
    :goto_9
    iget-object v1, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v1}, Lcom/sleepycat/je/VerifyConfig;->getPrintInfo()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 442
    invoke-virtual {v13, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    :cond_16
    if-nez p4, :cond_17

    .line 445
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v2, v10, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1, v2, v15}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    :cond_17
    throw v0
.end method

.method private verifyOrderedKeys(Lcom/sleepycat/je/tree/IN;)V
    .locals 12
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    .line 539
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 540
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyOrderedKeysInternal(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/dbi/DatabaseImpl;)I

    move-result v1

    .line 541
    .local v1, "corruptIndex":I
    if-nez v1, :cond_0

    .line 542
    return-void

    .line 545
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->getTargetLsns(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v2

    .line 548
    .local v2, "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string v3, "IN keys are out of order. "

    .line 549
    .local v3, "label":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IN keys are out of order. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x2

    new-array v7, v6, [I

    add-int/lit8 v8, v1, -0x1

    const/4 v9, 0x0

    aput v8, v7, v9

    const/4 v8, 0x1

    aput v1, v7, v8

    .line 550
    invoke-virtual {p1, v7}, Lcom/sleepycat/je/tree/IN;->toSafeString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, "msg1":Ljava/lang/String;
    invoke-direct {p0, v2, v0, v4}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->getINFromFile(Lcom/sleepycat/je/utilint/Pair;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;)Lcom/sleepycat/je/tree/IN;

    move-result-object v7

    .line 555
    .local v7, "inFromFile":Lcom/sleepycat/je/tree/IN;
    nop

    .line 556
    :try_start_0
    invoke-direct {p0, v7, v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyOrderedKeysInternal(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/dbi/DatabaseImpl;)I

    move-result v10

    .line 558
    .local v10, "newCorruptIndex":I
    if-nez v10, :cond_1

    .line 559
    iget-object v5, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 560
    invoke-direct {p0, v4}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->transientMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 559
    invoke-static {v5, v6}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "corruptIndex":I
    .end local v2    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "msg1":Ljava/lang/String;
    .end local v7    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "in":Lcom/sleepycat/je/tree/IN;
    throw v5

    .line 562
    .restart local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v1    # "corruptIndex":I
    .restart local v2    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v4    # "msg1":Ljava/lang/String;
    .restart local v7    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v6, [I

    add-int/lit8 v11, v10, -0x1

    aput v11, v6, v9

    aput v10, v6, v8

    .line 563
    invoke-virtual {v7, v6}, Lcom/sleepycat/je/tree/IN;->toSafeString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 566
    .local v5, "msg2":Ljava/lang/String;
    new-instance v6, Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;

    invoke-direct {p0, v5}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->persistentMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "corruptIndex":I
    .end local v2    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "msg1":Ljava/lang/String;
    .end local v7    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "in":Lcom/sleepycat/je/tree/IN;
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    .end local v5    # "msg2":Ljava/lang/String;
    .end local v10    # "newCorruptIndex":I
    .restart local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v1    # "corruptIndex":I
    .restart local v2    # "targetLsns":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v4    # "msg1":Ljava/lang/String;
    .restart local v7    # "inFromFile":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "in":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception v5

    invoke-virtual {v7}, Lcom/sleepycat/je/tree/IN;->releaseLatchIfOwner()V

    throw v5
.end method

.method private verifyOrderedKeysInternal(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/dbi/DatabaseImpl;)I
    .locals 5
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 524
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 526
    .local v0, "userCompareToFcn":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 527
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v2

    .line 528
    .local v2, "key1":[B
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/tree/IN;->getKey(I)[B

    move-result-object v3

    .line 530
    .local v3, "key2":[B
    invoke-static {v2, v3, v0}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v4

    .line 531
    .local v4, "s":I
    if-gtz v4, :cond_0

    .line 532
    return v1

    .line 526
    .end local v2    # "key1":[B
    .end local v3    # "key2":[B
    .end local v4    # "s":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private verifyPrimaryData(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Cursor;Ljava/util/Map;)V
    .locals 14
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "priDb"    # Lcom/sleepycat/je/Database;
    .param p3, "cursor"    # Lcom/sleepycat/je/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/je/Cursor;",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;)V"
        }
    .end annotation

    .line 1912
    .local p4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    move-object/from16 v9, p2

    if-eqz v9, :cond_5

    .line 1915
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    .line 1916
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1919
    nop

    .line 1922
    nop

    .line 1923
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/sleepycat/je/DbInternal;->getSecondaryAssociation(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/SecondaryAssociation;

    move-result-object v0

    move-object v10, v0

    .line 1924
    .local v10, "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    invoke-interface {v10}, Lcom/sleepycat/je/SecondaryAssociation;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 1990
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1925
    return-void

    .line 1928
    :cond_0
    :try_start_2
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v11, v0

    .line 1929
    .local v11, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v12, v0

    .line 1941
    .local v12, "data":Lcom/sleepycat/je/DatabaseEntry;
    :try_start_3
    sget-object v0, Lcom/sleepycat/je/Get;->CURRENT:Lcom/sleepycat/je/Get;

    sget-object v1, Lcom/sleepycat/je/util/verify/BtreeVerifier;->READLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;
    :try_end_3
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v13, p3

    :try_start_4
    invoke-virtual {v13, v11, v12, v0, v1}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_4
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_1

    .line 1990
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1943
    return-void

    .line 1947
    :cond_1
    nop

    .line 1956
    :try_start_5
    invoke-interface {v10, v11}, Lcom/sleepycat/je/SecondaryAssociation;->getSecondaries(Lcom/sleepycat/je/DatabaseEntry;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/sleepycat/je/SecondaryDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1967
    .local v3, "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    :try_start_6
    invoke-interface {v10, v11}, Lcom/sleepycat/je/SecondaryAssociation;->getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eq v1, v9, :cond_2

    .line 1990
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1968
    return-void

    .line 1972
    :cond_2
    nop

    .line 1981
    :try_start_7
    invoke-virtual {v3}, Lcom/sleepycat/je/SecondaryDatabase;->isIncrementalPopulationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1982
    goto :goto_0

    .line 1985
    :cond_3
    nop

    .line 1987
    invoke-static/range {p3 .. p3}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v8

    .line 1985
    move-object v1, p0

    move-object/from16 v2, p2

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, p4

    move-object v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->checkSecondaryKeysExist(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Map;Lcom/sleepycat/je/SecondaryAssociation;Lcom/sleepycat/je/dbi/CursorImpl;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1988
    .end local v3    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    goto :goto_0

    .line 1970
    .restart local v3    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1990
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1971
    return-void

    .line 1990
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local v10    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    .end local v11    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v12    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :cond_4
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1991
    nop

    .line 1992
    return-void

    .line 1990
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1945
    .restart local v10    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    .restart local v11    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v12    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v13, p3

    .line 1990
    .local v0, "e":Lcom/sleepycat/je/LockConflictException;
    :goto_1
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1946
    return-void

    .line 1990
    .end local v0    # "e":Lcom/sleepycat/je/LockConflictException;
    .end local v10    # "secAssoc":Lcom/sleepycat/je/SecondaryAssociation;
    .end local v11    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v12    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_1
    move-exception v0

    move-object/from16 v13, p3

    :goto_2
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 1917
    :catch_3
    move-exception v0

    move-object/from16 v13, p3

    .line 1918
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1

    .line 1912
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_5
    move-object/from16 v13, p3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private walkDatabaseTree(Lcom/sleepycat/je/dbi/DatabaseImpl;ZLcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;I)Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;
    .locals 27
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "isSecondaryDb"    # Z
    .param p3, "priDb"    # Lcom/sleepycat/je/Database;
    .param p4, "secDb"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p5, "statsAcc"    # Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .param p6, "lastKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p7, "lastData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p8, "batchSize"    # I

    .line 1323
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p8

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v13

    .line 1324
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incThreadLocalReferenceCount()V

    .line 1325
    iget-object v0, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1326
    invoke-static {v0}, Lcom/sleepycat/je/txn/LockerFactory;->getInternalReadOperationLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v14

    .line 1327
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    nop

    .line 1328
    const/4 v15, 0x0

    invoke-direct {v7, v8, v14, v15}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Z)Lcom/sleepycat/je/Cursor;

    move-result-object v6

    .line 1329
    .local v6, "cursor":Lcom/sleepycat/je/Cursor;
    invoke-static {v6}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v5

    .line 1330
    .local v5, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    invoke-virtual {v5, v11}, Lcom/sleepycat/je/dbi/CursorImpl;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1331
    invoke-virtual {v13, v11}, Lcom/sleepycat/je/tree/Tree;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 1383
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :try_start_0
    iget-object v0, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 1384
    invoke-virtual {v0}, Lcom/sleepycat/je/VerifyConfig;->getRepairReservedFiles()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    move/from16 v16, v0

    .line 1390
    .local v16, "repairReservedFiles":Z
    const/4 v2, 0x1

    if-nez v16, :cond_0

    if-eqz v9, :cond_0

    :try_start_1
    iget-object v0, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 1393
    invoke-virtual {v0}, Lcom/sleepycat/je/VerifyConfig;->getVerifySecondaries()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 1394
    invoke-virtual {v0}, Lcom/sleepycat/je/VerifyConfig;->getVerifyDataRecords()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    .line 1713
    .end local v16    # "repairReservedFiles":Z
    :catchall_0
    move-exception v0

    :goto_0
    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object v14, v5

    move-object v13, v6

    goto/16 :goto_26

    .line 1394
    .restart local v16    # "repairReservedFiles":Z
    :cond_0
    move v0, v15

    :goto_1
    move/from16 v17, v0

    .line 1395
    .local v17, "verifyPrimaryDataRecords":Z
    if-nez v16, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 1398
    invoke-virtual {v0}, Lcom/sleepycat/je/VerifyConfig;->getVerifySecondaries()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_2

    :cond_1
    move v0, v15

    :goto_2
    move/from16 v18, v0

    .line 1399
    .local v18, "verifySecondary":Z
    :try_start_2
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v1, v0

    .line 1400
    .local v1, "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 1402
    .local v0, "foundData":Lcom/sleepycat/je/DatabaseEntry;
    if-nez v16, :cond_2

    if-nez v18, :cond_3

    if-eqz v9, :cond_2

    :try_start_3
    iget-object v3, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 1405
    invoke-virtual {v3}, Lcom/sleepycat/je/VerifyConfig;->getVerifyDataRecords()Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_3

    .line 1407
    :cond_2
    :try_start_4
    invoke-virtual {v0, v15, v15, v2}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 1410
    :cond_3
    if-eqz v16, :cond_4

    .line 1412
    :try_start_5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x14

    invoke-virtual {v3, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-virtual {v14, v10, v11}, Lcom/sleepycat/je/txn/Locker;->setLockTimeout(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1416
    :cond_4
    move-object/from16 v10, p6

    move-object/from16 v11, p7

    :try_start_6
    invoke-static {v8, v6, v10, v11}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->findFirstRecord(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    if-nez v3, :cond_5

    .line 1417
    :try_start_7
    invoke-static {}, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->access$600()Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1713
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1714
    invoke-virtual {v13, v3}, Lcom/sleepycat/je/tree/Tree;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1715
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->decThreadLocalReferenceCount()V

    .line 1717
    invoke-virtual {v6}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1718
    invoke-virtual {v14}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1721
    iget-object v3, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 1417
    return-object v2

    .line 1443
    :cond_5
    if-nez v16, :cond_7

    if-eqz p2, :cond_6

    if-eqz v18, :cond_6

    goto :goto_3

    :cond_6
    move v3, v15

    goto :goto_4

    :cond_7
    :goto_3
    move v3, v2

    :goto_4
    move/from16 v20, v3

    .line 1446
    .local v20, "needReadLock":Z
    const/4 v3, 0x0

    move/from16 v26, v3

    move-object v3, v0

    move/from16 v0, v26

    .line 1447
    .local v0, "recordCount":I
    .local v3, "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :goto_5
    add-int/lit8 v15, v0, 0x1

    .end local v0    # "recordCount":I
    .local v15, "recordCount":I
    if-gt v15, v12, :cond_1a

    .line 1450
    :try_start_8
    iget-boolean v0, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->stopVerify:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    if-eqz v0, :cond_8

    .line 1451
    :try_start_9
    invoke-static {}, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->access$600()Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1713
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1714
    invoke-virtual {v13, v2}, Lcom/sleepycat/je/tree/Tree;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1715
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->decThreadLocalReferenceCount()V

    .line 1717
    invoke-virtual {v6}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1718
    invoke-virtual {v14}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1721
    iget-object v2, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 1451
    return-object v0

    .line 1488
    :cond_8
    const-string v2, ", verification of all dbs will stop. "

    const-string v10, "Exception aborted btree verification of db "

    if-nez v20, :cond_9

    .line 1489
    move-object/from16 v22, v2

    const/4 v2, 0x1

    if-ne v15, v2, :cond_a

    .line 1490
    :try_start_a
    sget-object v0, Lcom/sleepycat/je/Get;->CURRENT:Lcom/sleepycat/je/Get;

    sget-object v2, Lcom/sleepycat/je/util/verify/BtreeVerifier;->NOLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

    invoke-virtual {v6, v1, v3, v0, v2}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;
    :try_end_a
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_6

    .line 1687
    :catch_0
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v23, v10

    move-object/from16 v24, v14

    move-object v10, v4

    move-object v14, v5

    move-object v4, v13

    move-object v13, v6

    goto/16 :goto_1c

    .line 1683
    :catch_1
    move-exception v0

    move-object/from16 v11, p4

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object v14, v5

    move-object v13, v6

    goto/16 :goto_1f

    :catch_2
    move-exception v0

    move-object/from16 v11, p4

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object v14, v5

    move-object v13, v6

    goto/16 :goto_1f

    .line 1619
    :catch_3
    move-exception v0

    move-object/from16 v11, p4

    move-object v8, v10

    move-object/from16 v24, v14

    move-object/from16 v2, v22

    move-object v10, v4

    move-object v14, v5

    move-object v4, v13

    move-object v5, v3

    move-object v13, v6

    const/4 v3, 0x1

    goto/16 :goto_21

    :catch_4
    move-exception v0

    move-object/from16 v11, p4

    move-object v8, v10

    move-object/from16 v24, v14

    move-object/from16 v2, v22

    move-object v10, v4

    move-object v14, v5

    move-object v4, v13

    move-object v5, v3

    move-object v13, v6

    const/4 v3, 0x1

    goto/16 :goto_21

    .line 1599
    :catch_5
    move-exception v0

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object v14, v5

    move-object v13, v6

    goto/16 :goto_23

    .line 1495
    :cond_9
    move-object/from16 v22, v2

    :try_start_b
    sget-object v0, Lcom/sleepycat/je/Get;->CURRENT:Lcom/sleepycat/je/Get;
    :try_end_b
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_b .. :try_end_b} :catch_44
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_b .. :try_end_b} :catch_42
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_b .. :try_end_b} :catch_41
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_b .. :try_end_b} :catch_40
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_b .. :try_end_b} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3e
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    sget-object v2, Lcom/sleepycat/je/util/verify/BtreeVerifier;->READLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

    invoke-virtual {v6, v1, v3, v0, v2}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_c
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_c .. :try_end_c} :catch_3d
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_c .. :try_end_c} :catch_3c
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_c .. :try_end_c} :catch_3b
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_c .. :try_end_c} :catch_40
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_c .. :try_end_c} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3e
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1498
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v0, :cond_15

    .line 1508
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_a
    :goto_6
    if-eqz v16, :cond_c

    .line 1509
    :try_start_d
    iget-object v0, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v0

    .line 1510
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    .line 1509
    invoke-virtual {v0, v8, v5, v2}, Lcom/sleepycat/je/cleaner/Cleaner;->repairReservedFile(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;[B)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1511
    iget v0, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairMaybeExtinct:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairMaybeExtinct:I
    :try_end_d
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_d .. :try_end_d} :catch_4
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_d .. :try_end_d} :catch_3
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v23, v3

    const/4 v3, 0x1

    goto :goto_7

    .line 1509
    :cond_b
    move-object/from16 v23, v3

    const/4 v3, 0x1

    goto :goto_7

    .line 1514
    :cond_c
    :try_start_e
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 1515
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v0
    :try_end_e
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_e .. :try_end_e} :catch_3d
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_e .. :try_end_e} :catch_3c
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_e .. :try_end_e} :catch_3b
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_e .. :try_end_e} :catch_40
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_e .. :try_end_e} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-object v2, v0

    .line 1517
    .local v2, "bin":Lcom/sleepycat/je/tree/BIN;
    nop

    .line 1518
    :try_start_f
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1517
    move-object/from16 v23, v3

    const/4 v3, 0x1

    .end local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .local v23, "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :try_start_10
    invoke-direct {v7, v0, v2, v3, v6}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyDanglingLSNAndObsoleteRecordsOneSlot(ILcom/sleepycat/je/tree/IN;ZLcom/sleepycat/je/Cursor;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 1520
    :try_start_11
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1521
    nop

    .line 1524
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    :goto_7
    sget-object v0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->databaseOperDuringBatchCheckHook:Lcom/sleepycat/je/utilint/TestHook;
    :try_end_11
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_11 .. :try_end_11} :catch_34
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_11 .. :try_end_11} :catch_33
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_11 .. :try_end_11} :catch_32
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_11 .. :try_end_11} :catch_31
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_11 .. :try_end_11} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2f
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    if-eqz v0, :cond_e

    .line 1525
    if-eqz v9, :cond_d

    .line 1526
    :try_start_12
    invoke-interface {v0, v9}, Lcom/sleepycat/je/utilint/TestHook;->doHook(Ljava/lang/Object;)V
    :try_end_12
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_12 .. :try_end_12} :catch_10
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object/from16 v2, p4

    goto/16 :goto_b

    .line 1687
    :catch_6
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v24, v14

    move-object/from16 v3, v23

    move-object v14, v5

    move-object/from16 v23, v10

    move-object v10, v4

    move-object v4, v13

    move-object v13, v6

    goto/16 :goto_1c

    .line 1683
    :catch_7
    move-exception v0

    move-object/from16 v11, p4

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object/from16 v3, v23

    move-object v14, v5

    move-object v13, v6

    goto/16 :goto_1f

    :catch_8
    move-exception v0

    move-object/from16 v11, p4

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object/from16 v3, v23

    move-object v14, v5

    move-object v13, v6

    goto/16 :goto_1f

    .line 1619
    :catch_9
    move-exception v0

    goto :goto_8

    :catch_a
    move-exception v0

    :goto_8
    move-object/from16 v11, p4

    goto :goto_a

    .line 1528
    :cond_d
    move-object/from16 v2, p4

    :try_start_13
    invoke-interface {v0, v2}, Lcom/sleepycat/je/utilint/TestHook;->doHook(Ljava/lang/Object;)V
    :try_end_13
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_13 .. :try_end_13} :catch_f
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_13 .. :try_end_13} :catch_e
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_13 .. :try_end_13} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_b

    .line 1687
    :catch_b
    move-exception v0

    move-object v11, v2

    move-object/from16 v24, v14

    move-object/from16 v3, v23

    move-object v14, v5

    move-object/from16 v23, v10

    move-object v10, v4

    move-object v4, v13

    move-object v13, v6

    goto/16 :goto_1c

    .line 1683
    :catch_c
    move-exception v0

    move-object v11, v2

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object/from16 v3, v23

    move-object v14, v5

    move-object v13, v6

    goto/16 :goto_1f

    :catch_d
    move-exception v0

    move-object v11, v2

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object/from16 v3, v23

    move-object v14, v5

    move-object v13, v6

    goto/16 :goto_1f

    .line 1619
    :catch_e
    move-exception v0

    goto :goto_9

    :catch_f
    move-exception v0

    :goto_9
    move-object v11, v2

    :goto_a
    move-object v8, v10

    move-object/from16 v24, v14

    move-object/from16 v2, v22

    move-object v10, v4

    move-object v14, v5

    move-object v4, v13

    move-object/from16 v5, v23

    move-object v13, v6

    goto/16 :goto_21

    .line 1599
    :catch_10
    move-exception v0

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object/from16 v3, v23

    move-object v14, v5

    move-object v13, v6

    goto/16 :goto_23

    .line 1524
    :cond_e
    move-object/from16 v2, p4

    .line 1547
    :goto_b
    if-eqz v18, :cond_10

    .line 1554
    :try_start_14
    invoke-static/range {p4 .. p4}, Lcom/sleepycat/je/DbInternal;->isCorrupted(Lcom/sleepycat/je/Database;)Z

    move-result v0
    :try_end_14
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_14 .. :try_end_14} :catch_22
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_14 .. :try_end_14} :catch_21
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_14 .. :try_end_14} :catch_20
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_14 .. :try_end_14} :catch_1f
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_14 .. :try_end_14} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    if-eqz v0, :cond_f

    .line 1555
    :try_start_15
    invoke-direct {v7, v2}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->addSecondaryException(Lcom/sleepycat/je/SecondaryDatabase;)V
    :try_end_15
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_15 .. :try_end_15} :catch_16
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_15 .. :try_end_15} :catch_15
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_15 .. :try_end_15} :catch_14
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_15 .. :try_end_15} :catch_13
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_11
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1556
    :try_start_16
    invoke-static {}, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->access$600()Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;

    move-result-object v0
    :try_end_16
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_16 .. :try_end_16} :catch_16
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_16 .. :try_end_16} :catch_15
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_16 .. :try_end_16} :catch_14
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_16 .. :try_end_16} :catch_13
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_16 .. :try_end_16} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_11
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1713
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1714
    invoke-virtual {v13, v3}, Lcom/sleepycat/je/tree/Tree;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1715
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->decThreadLocalReferenceCount()V

    .line 1717
    invoke-virtual {v6}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1718
    invoke-virtual {v14}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1721
    iget-object v3, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 1556
    return-object v0

    .line 1713
    .end local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "recordCount":I
    .end local v16    # "repairReservedFiles":Z
    .end local v17    # "verifyPrimaryDataRecords":Z
    .end local v18    # "verifySecondary":Z
    .end local v20    # "needReadLock":Z
    .end local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_1
    move-exception v0

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1687
    .restart local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "recordCount":I
    .restart local v16    # "repairReservedFiles":Z
    .restart local v17    # "verifyPrimaryDataRecords":Z
    .restart local v18    # "verifySecondary":Z
    .restart local v20    # "needReadLock":Z
    .restart local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :catch_11
    move-exception v0

    const/16 v19, 0x0

    move-object v11, v2

    move-object/from16 v24, v14

    move-object/from16 v3, v23

    move-object v14, v5

    move-object/from16 v23, v10

    move-object v10, v4

    move-object v4, v13

    move-object v13, v6

    goto/16 :goto_1c

    .line 1683
    :catch_12
    move-exception v0

    const/16 v19, 0x0

    move-object v11, v2

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object/from16 v3, v23

    move-object v14, v5

    move-object v13, v6

    goto/16 :goto_1f

    :catch_13
    move-exception v0

    const/16 v19, 0x0

    move-object v11, v2

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object/from16 v3, v23

    move-object v14, v5

    move-object v13, v6

    goto/16 :goto_1f

    .line 1619
    :catch_14
    move-exception v0

    goto :goto_c

    :catch_15
    move-exception v0

    :goto_c
    const/16 v19, 0x0

    goto :goto_9

    .line 1599
    :catch_16
    move-exception v0

    const/16 v19, 0x0

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object/from16 v3, v23

    move-object v14, v5

    move-object v13, v6

    goto/16 :goto_23

    .line 1560
    :cond_f
    const/16 v19, 0x0

    move-object/from16 v21, v1

    .end local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v21, "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v1, p0

    move-object v3, v2

    move-object/from16 v11, v22

    move-object/from16 v2, p1

    move-object v11, v3

    move-object/from16 v26, v23

    move-object/from16 v23, v10

    move-object/from16 v10, v19

    move-object/from16 v19, v26

    .end local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .local v19, "foundData":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v3, p4

    move-object v10, v4

    .end local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v10, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    move-object v4, v6

    move-object/from16 v24, v14

    move-object v14, v5

    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v24, "locker":Lcom/sleepycat/je/txn/Locker;
    move-object/from16 v5, v21

    move-object/from16 v25, v13

    move-object v13, v6

    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v25, "tree":Lcom/sleepycat/je/tree/Tree;
    move-object/from16 v6, v19

    :try_start_17
    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyIndex(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_17
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_17 .. :try_end_17} :catch_1c
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_17 .. :try_end_17} :catch_1b
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_17 .. :try_end_17} :catch_1a
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_17 .. :try_end_17} :catch_19
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_17 .. :try_end_17} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 1564
    move-object/from16 v1, v21

    .end local v21    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    :try_start_18
    invoke-direct {v7, v11, v13, v1, v10}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyForeignConstraint(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Map;)V

    goto/16 :goto_11

    .line 1687
    .end local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v21    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    :catch_17
    move-exception v0

    move-object/from16 v1, v21

    move-object/from16 v3, v19

    move-object/from16 v4, v25

    .end local v21    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    goto/16 :goto_1c

    .line 1683
    .end local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v21    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    :catch_18
    move-exception v0

    goto :goto_d

    :catch_19
    move-exception v0

    :goto_d
    move-object/from16 v1, v21

    move-object/from16 v3, v19

    move-object/from16 v4, v25

    .end local v21    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    goto/16 :goto_1f

    .line 1619
    .end local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v21    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    :catch_1a
    move-exception v0

    goto :goto_e

    :catch_1b
    move-exception v0

    :goto_e
    move-object/from16 v1, v21

    move-object/from16 v5, v19

    move-object/from16 v2, v22

    move-object/from16 v8, v23

    move-object/from16 v4, v25

    const/4 v3, 0x1

    .end local v21    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    goto/16 :goto_21

    .line 1599
    .end local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v21    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    :catch_1c
    move-exception v0

    move-object/from16 v1, v21

    move-object/from16 v3, v19

    move-object/from16 v4, v25

    .end local v21    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    goto/16 :goto_23

    .line 1713
    .end local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v15    # "recordCount":I
    .end local v16    # "repairReservedFiles":Z
    .end local v17    # "verifyPrimaryDataRecords":Z
    .end local v18    # "verifySecondary":Z
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "needReadLock":Z
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_2
    move-exception v0

    move-object v11, v2

    move-object v10, v4

    move-object/from16 v25, v13

    move-object/from16 v24, v14

    move-object v14, v5

    move-object v13, v6

    move-object/from16 v4, v25

    .end local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto/16 :goto_26

    .line 1687
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v15    # "recordCount":I
    .restart local v16    # "repairReservedFiles":Z
    .restart local v17    # "verifyPrimaryDataRecords":Z
    .restart local v18    # "verifySecondary":Z
    .restart local v20    # "needReadLock":Z
    .restart local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :catch_1d
    move-exception v0

    move-object v11, v2

    move-object/from16 v25, v13

    move-object/from16 v24, v14

    move-object/from16 v19, v23

    move-object v14, v5

    move-object v13, v6

    move-object/from16 v23, v10

    move-object v10, v4

    move-object/from16 v3, v19

    move-object/from16 v4, v25

    .end local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto/16 :goto_1c

    .line 1683
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :catch_1e
    move-exception v0

    goto :goto_f

    :catch_1f
    move-exception v0

    :goto_f
    move-object v11, v2

    move-object v10, v4

    move-object/from16 v25, v13

    move-object/from16 v24, v14

    move-object/from16 v19, v23

    move-object v14, v5

    move-object v13, v6

    move-object/from16 v3, v19

    move-object/from16 v4, v25

    .end local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto/16 :goto_1f

    .line 1619
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :catch_20
    move-exception v0

    goto :goto_10

    :catch_21
    move-exception v0

    :goto_10
    move-object v11, v2

    move-object/from16 v25, v13

    move-object/from16 v24, v14

    move-object/from16 v19, v23

    move-object v14, v5

    move-object v13, v6

    move-object/from16 v23, v10

    move-object v10, v4

    move-object/from16 v5, v19

    move-object/from16 v2, v22

    move-object/from16 v8, v23

    move-object/from16 v4, v25

    .end local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto/16 :goto_21

    .line 1599
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :catch_22
    move-exception v0

    move-object v11, v2

    move-object v10, v4

    move-object/from16 v25, v13

    move-object/from16 v24, v14

    move-object/from16 v19, v23

    move-object v14, v5

    move-object v13, v6

    move-object/from16 v3, v19

    move-object/from16 v4, v25

    .end local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto/16 :goto_23

    .line 1547
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :cond_10
    move-object v11, v2

    move-object/from16 v25, v13

    move-object/from16 v24, v14

    move-object/from16 v19, v23

    move-object v14, v5

    move-object v13, v6

    move-object/from16 v23, v10

    move-object v10, v4

    .line 1569
    .end local v4    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    :goto_11
    if-eqz v17, :cond_11

    .line 1570
    invoke-direct {v7, v8, v9, v13, v10}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyPrimaryData(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Cursor;Ljava/util/Map;)V

    goto :goto_13

    .line 1713
    .end local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "recordCount":I
    .end local v16    # "repairReservedFiles":Z
    .end local v17    # "verifyPrimaryDataRecords":Z
    .end local v18    # "verifySecondary":Z
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "needReadLock":Z
    :catchall_3
    move-exception v0

    move-object/from16 v4, v25

    goto/16 :goto_26

    .line 1687
    .restart local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "recordCount":I
    .restart local v16    # "repairReservedFiles":Z
    .restart local v17    # "verifyPrimaryDataRecords":Z
    .restart local v18    # "verifySecondary":Z
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "needReadLock":Z
    :catch_23
    move-exception v0

    move-object/from16 v3, v19

    move-object/from16 v4, v25

    goto/16 :goto_1c

    .line 1683
    :catch_24
    move-exception v0

    goto :goto_12

    :catch_25
    move-exception v0

    :goto_12
    move-object/from16 v3, v19

    move-object/from16 v4, v25

    goto/16 :goto_1f

    .line 1619
    :catch_26
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v2, v22

    move-object/from16 v8, v23

    move-object/from16 v4, v25

    const/4 v3, 0x1

    goto/16 :goto_21

    :catch_27
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v2, v22

    move-object/from16 v8, v23

    move-object/from16 v4, v25

    const/4 v3, 0x1

    goto/16 :goto_21

    .line 1599
    :catch_28
    move-exception v0

    move-object/from16 v3, v19

    move-object/from16 v4, v25

    goto/16 :goto_23

    .line 1580
    :cond_11
    :goto_13
    add-int/lit8 v0, v12, -0x1

    if-ne v15, v0, :cond_12

    .line 1581
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V
    :try_end_18
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_18 .. :try_end_18} :catch_28
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_18 .. :try_end_18} :catch_27
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_18 .. :try_end_18} :catch_26
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_18 .. :try_end_18} :catch_25
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_18 .. :try_end_18} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_23
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    move-object v3, v0

    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .local v0, "foundData":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_14

    .line 1580
    .end local v0    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :cond_12
    move-object/from16 v3, v19

    .line 1589
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :goto_14
    if-ne v15, v12, :cond_13

    .line 1590
    move-object/from16 v4, v25

    goto/16 :goto_24

    .line 1593
    :cond_13
    :try_start_19
    sget-object v0, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    sget-object v2, Lcom/sleepycat/je/util/verify/BtreeVerifier;->NOLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

    invoke-virtual {v13, v1, v3, v0, v2}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    if-nez v0, :cond_14

    .line 1596
    invoke-static {}, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->access$600()Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;

    move-result-object v0
    :try_end_19
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_19 .. :try_end_19} :catch_2e
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_19 .. :try_end_19} :catch_2d
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_19 .. :try_end_19} :catch_2c
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_19 .. :try_end_19} :catch_2b
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_19 .. :try_end_19} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_29
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 1713
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1714
    move-object/from16 v4, v25

    .end local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    invoke-virtual {v4, v2}, Lcom/sleepycat/je/tree/Tree;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1715
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->decThreadLocalReferenceCount()V

    .line 1717
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1718
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1721
    iget-object v2, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 1596
    return-object v0

    .line 1707
    .end local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    :cond_14
    move-object/from16 v4, v25

    .end local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    move-object/from16 v11, p7

    move-object v6, v13

    move-object v5, v14

    move v0, v15

    move-object/from16 v14, v24

    const/4 v2, 0x1

    const/4 v15, 0x0

    move-object v13, v4

    move-object v4, v10

    move-object/from16 v10, p6

    goto/16 :goto_5

    .line 1713
    .end local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v15    # "recordCount":I
    .end local v16    # "repairReservedFiles":Z
    .end local v17    # "verifyPrimaryDataRecords":Z
    .end local v18    # "verifySecondary":Z
    .end local v20    # "needReadLock":Z
    .restart local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    :catchall_4
    move-exception v0

    move-object/from16 v4, v25

    .end local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto/16 :goto_26

    .line 1687
    .end local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "recordCount":I
    .restart local v16    # "repairReservedFiles":Z
    .restart local v17    # "verifyPrimaryDataRecords":Z
    .restart local v18    # "verifySecondary":Z
    .restart local v20    # "needReadLock":Z
    .restart local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    :catch_29
    move-exception v0

    move-object/from16 v4, v25

    .end local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto/16 :goto_1c

    .line 1683
    .end local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    :catch_2a
    move-exception v0

    goto :goto_15

    :catch_2b
    move-exception v0

    :goto_15
    move-object/from16 v4, v25

    .end local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto/16 :goto_1f

    .line 1619
    .end local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    :catch_2c
    move-exception v0

    goto :goto_16

    :catch_2d
    move-exception v0

    :goto_16
    move-object/from16 v4, v25

    move-object v5, v3

    move-object/from16 v2, v22

    move-object/from16 v8, v23

    const/4 v3, 0x1

    .end local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto/16 :goto_21

    .line 1599
    .end local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    :catch_2e
    move-exception v0

    move-object/from16 v4, v25

    .end local v25    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    goto/16 :goto_23

    .line 1687
    .end local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :catch_2f
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v24, v14

    move-object/from16 v19, v23

    move-object v14, v5

    move-object/from16 v23, v10

    move-object v10, v4

    move-object v4, v13

    move-object v13, v6

    move-object/from16 v3, v19

    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    goto/16 :goto_1c

    .line 1683
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :catch_30
    move-exception v0

    goto :goto_17

    :catch_31
    move-exception v0

    :goto_17
    move-object/from16 v11, p4

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object/from16 v19, v23

    move-object v14, v5

    move-object v13, v6

    move-object/from16 v3, v19

    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    goto/16 :goto_1f

    .line 1619
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :catch_32
    move-exception v0

    goto :goto_18

    :catch_33
    move-exception v0

    :goto_18
    move-object/from16 v11, p4

    move-object/from16 v24, v14

    move-object/from16 v19, v23

    move-object v14, v5

    move-object/from16 v23, v10

    move-object v10, v4

    move-object v4, v13

    move-object v13, v6

    move-object/from16 v5, v19

    move-object/from16 v2, v22

    move-object/from16 v8, v23

    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    goto/16 :goto_21

    .line 1599
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :catch_34
    move-exception v0

    move-object/from16 v11, p4

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object/from16 v19, v23

    move-object v14, v5

    move-object v13, v6

    move-object/from16 v3, v19

    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    goto/16 :goto_23

    .line 1520
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_5
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v24, v14

    move-object/from16 v19, v23

    move-object v14, v5

    move-object/from16 v23, v10

    move-object v10, v4

    move-object v4, v13

    move-object v13, v6

    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v23    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    goto :goto_19

    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_6
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v19, v3

    move-object/from16 v23, v10

    move-object/from16 v24, v14

    move-object v10, v4

    move-object v14, v5

    move-object v4, v13

    move-object v13, v6

    .end local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    :goto_19
    :try_start_1a
    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .end local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v14    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v15    # "recordCount":I
    .end local v16    # "repairReservedFiles":Z
    .end local v17    # "verifyPrimaryDataRecords":Z
    .end local v18    # "verifySecondary":Z
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "needReadLock":Z
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "isSecondaryDb":Z
    .end local p3    # "priDb":Lcom/sleepycat/je/Database;
    .end local p4    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local p5    # "statsAcc":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local p6    # "lastKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p7    # "lastData":Lcom/sleepycat/je/DatabaseEntry;
    .end local p8    # "batchSize":I
    throw v0

    .line 1499
    .end local v2    # "bin":Lcom/sleepycat/je/tree/BIN;
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    .restart local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v15    # "recordCount":I
    .restart local v16    # "repairReservedFiles":Z
    .restart local v17    # "verifyPrimaryDataRecords":Z
    .restart local v18    # "verifySecondary":Z
    .restart local v20    # "needReadLock":Z
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "isSecondaryDb":Z
    .restart local p3    # "priDb":Lcom/sleepycat/je/Database;
    .restart local p4    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local p5    # "statsAcc":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .restart local p6    # "lastKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p7    # "lastData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p8    # "batchSize":I
    :cond_15
    move-object/from16 v11, p4

    move-object/from16 v19, v3

    move-object/from16 v23, v10

    move-object/from16 v24, v14

    move-object v10, v4

    move-object v14, v5

    move-object v4, v13

    move-object v13, v6

    .end local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    new-instance v2, Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException;-><init>(Lcom/sleepycat/je/util/verify/BtreeVerifier$1;)V

    .end local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v14    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v15    # "recordCount":I
    .end local v16    # "repairReservedFiles":Z
    .end local v17    # "verifyPrimaryDataRecords":Z
    .end local v18    # "verifySecondary":Z
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "needReadLock":Z
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "isSecondaryDb":Z
    .end local p3    # "priDb":Lcom/sleepycat/je/Database;
    .end local p4    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local p5    # "statsAcc":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local p6    # "lastKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p7    # "lastData":Lcom/sleepycat/je/DatabaseEntry;
    .end local p8    # "batchSize":I
    throw v2
    :try_end_1a
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException; {:try_start_1a .. :try_end_1a} :catch_3a
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_1a .. :try_end_1a} :catch_39
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException; {:try_start_1a .. :try_end_1a} :catch_38
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_1a .. :try_end_1a} :catch_37
    .catch Lcom/sleepycat/je/util/verify/BtreeVerifier$BtreeVerificationException; {:try_start_1a .. :try_end_1a} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_35
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 1687
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v14    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v15    # "recordCount":I
    .restart local v16    # "repairReservedFiles":Z
    .restart local v17    # "verifyPrimaryDataRecords":Z
    .restart local v18    # "verifySecondary":Z
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "needReadLock":Z
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "isSecondaryDb":Z
    .restart local p3    # "priDb":Lcom/sleepycat/je/Database;
    .restart local p4    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local p5    # "statsAcc":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .restart local p6    # "lastKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p7    # "lastData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p8    # "batchSize":I
    :catch_35
    move-exception v0

    move-object/from16 v3, v19

    goto/16 :goto_1c

    .line 1683
    :catch_36
    move-exception v0

    goto :goto_1a

    :catch_37
    move-exception v0

    :goto_1a
    move-object/from16 v3, v19

    goto/16 :goto_1f

    .line 1619
    :catch_38
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v2, v22

    move-object/from16 v8, v23

    const/4 v3, 0x1

    goto/16 :goto_21

    :catch_39
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v2, v22

    move-object/from16 v8, v23

    const/4 v3, 0x1

    goto/16 :goto_21

    .line 1599
    :catch_3a
    move-exception v0

    move-object/from16 v3, v19

    goto/16 :goto_23

    .line 1619
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    :catch_3b
    move-exception v0

    goto :goto_1b

    :catch_3c
    move-exception v0

    :goto_1b
    move-object/from16 v11, p4

    move-object/from16 v19, v3

    move-object/from16 v23, v10

    move-object/from16 v24, v14

    move-object v10, v4

    move-object v14, v5

    move-object v4, v13

    move-object v13, v6

    move-object/from16 v5, v19

    move-object/from16 v2, v22

    move-object/from16 v8, v23

    const/4 v3, 0x1

    goto/16 :goto_21

    .line 1599
    :catch_3d
    move-exception v0

    move-object/from16 v11, p4

    goto/16 :goto_22

    .line 1713
    .end local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "recordCount":I
    .end local v16    # "repairReservedFiles":Z
    .end local v17    # "verifyPrimaryDataRecords":Z
    .end local v18    # "verifySecondary":Z
    .end local v20    # "needReadLock":Z
    :catchall_7
    move-exception v0

    move-object/from16 v11, p4

    goto/16 :goto_25

    .line 1687
    .restart local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v15    # "recordCount":I
    .restart local v16    # "repairReservedFiles":Z
    .restart local v17    # "verifyPrimaryDataRecords":Z
    .restart local v18    # "verifySecondary":Z
    .restart local v20    # "needReadLock":Z
    :catch_3e
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v19, v3

    move-object/from16 v23, v10

    move-object/from16 v24, v14

    move-object v10, v4

    move-object v14, v5

    move-object v4, v13

    move-object v13, v6

    .line 1695
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v0, "e":Ljava/lang/RuntimeException;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    :goto_1c
    :try_start_1b
    iget-object v2, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->logger:Ljava/util/logging/Logger;

    iget-object v5, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    move-object/from16 v19, v3

    .end local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v23

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1698
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v8, v22

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1695
    invoke-static {v2, v5, v6, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1701
    if-eqz v16, :cond_16

    .line 1702
    iget v2, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairRuntimeExceptions:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairRuntimeExceptions:I

    goto :goto_1d

    .line 1701
    :cond_16
    const/4 v3, 0x1

    .line 1705
    :goto_1d
    invoke-virtual {v7, v3}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->setStopVerifyFlag(Z)V

    .line 1706
    invoke-static {}, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->access$600()Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 1713
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1714
    invoke-virtual {v4, v3}, Lcom/sleepycat/je/tree/Tree;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1715
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->decThreadLocalReferenceCount()V

    .line 1717
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1718
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1721
    iget-object v3, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 1706
    return-object v2

    .line 1683
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v19    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    :catch_3f
    move-exception v0

    goto :goto_1e

    :catch_40
    move-exception v0

    :goto_1e
    move-object/from16 v11, p4

    move-object/from16 v19, v3

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object v14, v5

    move-object v13, v6

    .line 1685
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    :goto_1f
    nop

    .end local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v13    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v14    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "isSecondaryDb":Z
    .end local p3    # "priDb":Lcom/sleepycat/je/Database;
    .end local p4    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .end local p5    # "statsAcc":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .end local p6    # "lastKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p7    # "lastData":Lcom/sleepycat/je/DatabaseEntry;
    .end local p8    # "batchSize":I
    :try_start_1c
    throw v0

    .line 1619
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "isSecondaryDb":Z
    .restart local p3    # "priDb":Lcom/sleepycat/je/Database;
    .restart local p4    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    .restart local p5    # "statsAcc":Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;
    .restart local p6    # "lastKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p7    # "lastData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p8    # "batchSize":I
    :catch_41
    move-exception v0

    goto :goto_20

    :catch_42
    move-exception v0

    :goto_20
    move-object/from16 v11, p4

    move-object/from16 v19, v3

    move-object v8, v10

    move-object/from16 v24, v14

    move-object/from16 v2, v22

    const/4 v3, 0x1

    move-object v10, v4

    move-object v14, v5

    move-object v4, v13

    move-object v13, v6

    move-object/from16 v5, v19

    .end local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v5, "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    :goto_21
    move-object v6, v0

    .line 1632
    .local v6, "e":Ljava/lang/Exception;
    if-eqz v16, :cond_17

    instance-of v0, v6, Lcom/sleepycat/je/LockConflictException;

    if-eqz v0, :cond_17

    .line 1635
    iget v0, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairLockConflicts:I

    add-int/2addr v0, v3

    iput v0, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairLockConflicts:I

    .line 1637
    iget-object v0, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairLockConflictLogger:Lcom/sleepycat/je/utilint/RateLimitingLogger;

    iget-object v3, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to lock record during repair of reserved files:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v3, v7, v9, v11}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Lcom/sleepycat/je/utilint/RateLimitingLogger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Object;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 1663
    :cond_17
    :try_start_1d
    sget-object v0, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    sget-object v3, Lcom/sleepycat/je/util/verify/BtreeVerifier;->NOLOCK_UNCHANGED:Lcom/sleepycat/je/ReadOptions;

    invoke-virtual {v13, v1, v5, v0, v3}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    if-nez v0, :cond_18

    .line 1666
    invoke-static {}, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->access$600()Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_43
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 1713
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1714
    invoke-virtual {v4, v2}, Lcom/sleepycat/je/tree/Tree;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1715
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->decThreadLocalReferenceCount()V

    .line 1717
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1718
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1721
    iget-object v2, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 1666
    return-object v0

    .line 1681
    :cond_18
    nop

    .line 1707
    .end local v6    # "e":Ljava/lang/Exception;
    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object v3, v5

    move-object v6, v13

    move-object v5, v14

    move v0, v15

    move-object/from16 v14, v24

    const/4 v2, 0x1

    const/4 v15, 0x0

    move-object v13, v4

    move-object v4, v10

    move-object/from16 v10, p6

    goto/16 :goto_5

    .line 1668
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_43
    move-exception v0

    .line 1669
    .local v0, "re":Ljava/lang/RuntimeException;
    :try_start_1e
    iget-object v3, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->logger:Ljava/util/logging/Logger;

    iget-object v9, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v11, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1672
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1669
    invoke-static {v3, v9, v11, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1675
    if-eqz v16, :cond_19

    .line 1676
    iget v2, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairRuntimeExceptions:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairRuntimeExceptions:I

    .line 1679
    :cond_19
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->setStopVerifyFlag(Z)V

    .line 1680
    invoke-static {}, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->access$600()Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 1713
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1714
    invoke-virtual {v4, v3}, Lcom/sleepycat/je/tree/Tree;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1715
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->decThreadLocalReferenceCount()V

    .line 1717
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1718
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1721
    iget-object v3, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 1680
    return-object v2

    .line 1599
    .end local v0    # "re":Ljava/lang/RuntimeException;
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v5, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .local v6, "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    :catch_44
    move-exception v0

    :goto_22
    move-object/from16 v19, v3

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object v14, v5

    move-object v13, v6

    .line 1617
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v0, "sve":Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    :goto_23
    :try_start_1f
    invoke-static {}, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;->access$600()Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 1713
    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Lcom/sleepycat/je/dbi/CursorImpl;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1714
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/tree/Tree;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1715
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->decThreadLocalReferenceCount()V

    .line 1717
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1718
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1721
    iget-object v5, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 1617
    return-object v2

    .line 1447
    .end local v0    # "sve":Lcom/sleepycat/je/util/verify/BtreeVerifier$StopDbVerificationException;
    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    :cond_1a
    move-object/from16 v19, v3

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object v14, v5

    move-object v13, v6

    .line 1710
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    :goto_24
    :try_start_20
    new-instance v0, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sleepycat/je/util/verify/BtreeVerifier$WalkDatabaseTreeResult;-><init>(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Z)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 1713
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1714
    invoke-virtual {v4, v2}, Lcom/sleepycat/je/tree/Tree;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1715
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->decThreadLocalReferenceCount()V

    .line 1717
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1718
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1721
    iget-object v2, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 1710
    return-object v0

    .line 1713
    .end local v1    # "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "foundData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v15    # "recordCount":I
    .end local v16    # "repairReservedFiles":Z
    .end local v17    # "verifyPrimaryDataRecords":Z
    .end local v18    # "verifySecondary":Z
    .end local v20    # "needReadLock":Z
    :catchall_8
    move-exception v0

    goto :goto_26

    .end local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .end local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    .local v4, "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v13, "tree":Lcom/sleepycat/je/tree/Tree;
    .local v14, "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_9
    move-exception v0

    :goto_25
    move-object v10, v4

    move-object v4, v13

    move-object/from16 v24, v14

    move-object v14, v5

    move-object v13, v6

    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v10    # "dbCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    .local v13, "cursor":Lcom/sleepycat/je/Cursor;
    .local v14, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v24    # "locker":Lcom/sleepycat/je/txn/Locker;
    :goto_26
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/sleepycat/je/dbi/CursorImpl;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1714
    invoke-virtual {v4, v1}, Lcom/sleepycat/je/tree/Tree;->setTreeStatsAccumulator(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V

    .line 1715
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->decThreadLocalReferenceCount()V

    .line 1717
    invoke-virtual {v13}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1718
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1721
    iget-object v1, v7, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    throw v0
.end method


# virtual methods
.method getRepairLockConflicts()I
    .locals 1

    .line 2178
    iget v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairLockConflicts:I

    return v0
.end method

.method getRepairMaybeExtinct()I
    .locals 1

    .line 2182
    iget v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairMaybeExtinct:I

    return v0
.end method

.method getRepairRuntimeExceptions()I
    .locals 1

    .line 2186
    iget v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairRuntimeExceptions:I

    return v0
.end method

.method getStopVerifyFlag()Z
    .locals 1

    .line 2168
    iget-boolean v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->stopVerify:Z

    return v0
.end method

.method hasRepairWarnings()Z
    .locals 1

    .line 2172
    iget v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairRuntimeExceptions:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairLockConflicts:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->repairMaybeExtinct:I

    if-lez v0, :cond_0

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

.method public setBtreeVerifyConfig(Lcom/sleepycat/je/VerifyConfig;)V
    .locals 0
    .param p1, "btreeVerifyConfig"    # Lcom/sleepycat/je/VerifyConfig;

    .line 2190
    iput-object p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 2191
    return-void
.end method

.method setStopVerifyFlag(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 2164
    iput-boolean p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->stopVerify:Z

    .line 2165
    return-void
.end method

.method public verifyAll()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 179
    const-string v0, "End verify all databases"

    iget-boolean v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->stopVerify:Z

    if-eqz v1, :cond_0

    .line 180
    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    .line 185
    .local v1, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 186
    invoke-virtual {v2}, Lcom/sleepycat/je/VerifyConfig;->getShowProgressStream()Ljava/io/PrintStream;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 187
    invoke-virtual {v2}, Lcom/sleepycat/je/VerifyConfig;->getShowProgressStream()Ljava/io/PrintStream;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 189
    .local v2, "out":Ljava/io/PrintStream;
    :goto_0
    const-string v3, "Start verify all databases"

    .line 190
    .local v3, "startMsg":Ljava/lang/String;
    const-string v4, "End verify all databases"

    .line 192
    .local v4, "stopMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v5}, Lcom/sleepycat/je/VerifyConfig;->getPrintInfo()Z

    move-result v5

    const-string v6, "Start verify all databases"

    if-eqz v5, :cond_2

    .line 193
    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_2
    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v7, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v5, v7, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 199
    :try_start_0
    sget-object v5, Lcom/sleepycat/je/dbi/DbType;->ID:Lcom/sleepycat/je/dbi/DbType;

    .line 200
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 199
    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyOneDb(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Ljava/io/PrintStream;Z)Lcom/sleepycat/je/BtreeStats;

    .line 203
    sget-object v5, Lcom/sleepycat/je/dbi/DbType;->NAME:Lcom/sleepycat/je/dbi/DbType;

    .line 204
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/dbi/DbTree;->NAME_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 203
    invoke-direct {p0, v5, v6, v2, v7}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyOneDb(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Ljava/io/PrintStream;Z)Lcom/sleepycat/je/BtreeStats;

    .line 248
    new-instance v5, Lcom/sleepycat/je/util/verify/BtreeVerifier$1Traversal;

    invoke-direct {v5, p0, v2}, Lcom/sleepycat/je/util/verify/BtreeVerifier$1Traversal;-><init>(Lcom/sleepycat/je/util/verify/BtreeVerifier;Ljava/io/PrintStream;)V

    .line 250
    .local v5, "traversal":Lcom/sleepycat/je/util/verify/BtreeVerifier$1Traversal;
    nop

    .line 251
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbTree;->getNameDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v6

    sget-object v8, Lcom/sleepycat/je/util/verify/BtreeVerifier;->LOCKTYPE_NOLOCK:Lcom/sleepycat/je/txn/LockType;

    .line 250
    invoke-static {v6, v8, v7, v5}, Lcom/sleepycat/je/dbi/CursorImpl;->traverseDbWithCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/LockType;ZLcom/sleepycat/je/dbi/CursorImpl$WithCursor;)V

    .line 254
    iget-object v6, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->secondaryExceptions:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_4

    .line 259
    .end local v5    # "traversal":Lcom/sleepycat/je/util/verify/BtreeVerifier$1Traversal;
    iget-object v5, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v5}, Lcom/sleepycat/je/VerifyConfig;->getPrintInfo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 260
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    :cond_3
    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v6, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v5, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 263
    nop

    .line 264
    return-void

    .line 255
    .restart local v5    # "traversal":Lcom/sleepycat/je/util/verify/BtreeVerifier$1Traversal;
    :cond_4
    :try_start_1
    new-instance v6, Lcom/sleepycat/je/CorruptSecondariesException;

    iget-object v7, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->secondaryExceptions:Ljava/util/Map;

    invoke-direct {v6, v7}, Lcom/sleepycat/je/CorruptSecondariesException;-><init>(Ljava/util/Map;)V

    .end local v1    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v2    # "out":Ljava/io/PrintStream;
    .end local v3    # "startMsg":Ljava/lang/String;
    .end local v4    # "stopMsg":Ljava/lang/String;
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    .end local v5    # "traversal":Lcom/sleepycat/je/util/verify/BtreeVerifier$1Traversal;
    .restart local v1    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v2    # "out":Ljava/io/PrintStream;
    .restart local v3    # "startMsg":Ljava/lang/String;
    .restart local v4    # "stopMsg":Ljava/lang/String;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v6}, Lcom/sleepycat/je/VerifyConfig;->getPrintInfo()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 260
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    :cond_5
    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v7, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v6, v7, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    throw v5
.end method

.method public verifyDatabase(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/BtreeStats;
    .locals 4
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 271
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->btreeVerifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/VerifyConfig;->getShowProgressStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 272
    .local v0, "out":Ljava/io/PrintStream;
    if-nez v0, :cond_0

    .line 273
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 276
    :cond_0
    const/4 v1, 0x0

    .line 277
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyOneDb(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Ljava/io/PrintStream;Z)Lcom/sleepycat/je/BtreeStats;

    move-result-object v1

    .line 279
    .local v1, "stats":Lcom/sleepycat/je/BtreeStats;
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->secondaryExceptions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 280
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->secondaryExceptions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier;->secondaryExceptions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/SecondaryIntegrityException;

    throw v2

    .line 284
    :cond_2
    return-object v1
.end method
