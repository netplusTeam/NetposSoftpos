.class public Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
.super Ljava/lang/Object;
.source "VLSNIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/vlsn/VLSNIndex$WaitTimeOutException;,
        Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;,
        Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;,
        Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;,
        Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNScanner;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static AWAIT_CONSISTENCY_MS:I


# instance fields
.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final flushSynchronizer:Ljava/lang/Object;

.field private final logItemCache:Lcom/sleepycat/je/rep/vlsn/LogItemCache;

.field private final logger:Ljava/util/logging/Logger;

.field private mappingDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private final mappingSynchronizer:Ljava/lang/Object;

.field private final nHeadBucketsDeleted:Lcom/sleepycat/je/utilint/LongStat;

.field private final nTailBucketsDeleted:Lcom/sleepycat/je/utilint/LongStat;

.field private nextVLSNCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private putWaitVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private searchGTEHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;"
        }
    .end annotation
.end field

.field private final statistics:Lcom/sleepycat/je/utilint/StatGroup;

.field private tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

.field private vlsnPutLatch:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 324
    nop

    .line 330
    const v0, 0xea60

    sput v0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->AWAIT_CONSISTENCY_MS:I

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;IIILcom/sleepycat/je/recovery/RecoveryInfo;)V
    .locals 7
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "mappingDbName"    # Ljava/lang/String;
    .param p3, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p4, "vlsnStride"    # I
    .param p5, "vlsnMaxMappings"    # I
    .param p6, "vlsnMaxDistance"    # I
    .param p7, "recoveryInfo"    # Lcom/sleepycat/je/recovery/RecoveryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->vlsnPutLatch:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;

    .line 343
    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->putWaitVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 349
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingSynchronizer:Ljava/lang/Object;

    .line 350
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->flushSynchronizer:Ljava/lang/Object;

    .line 409
    iput-object p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 415
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logger:Ljava/util/logging/Logger;

    .line 417
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "VLSNIndex"

    const-string v2, "VLSN Index related stats."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    .line 419
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_HEAD_BUCKETS_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->nHeadBucketsDeleted:Lcom/sleepycat/je/utilint/LongStat;

    .line 422
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_TAIL_BUCKETS_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->nTailBucketsDeleted:Lcom/sleepycat/je/utilint/LongStat;

    .line 426
    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->init(Ljava/lang/String;IIILcom/sleepycat/je/recovery/RecoveryInfo;)V

    .line 432
    new-instance v1, Lcom/sleepycat/je/rep/vlsn/LogItemCache;

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->VLSN_LOG_CACHE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 433
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/rep/vlsn/LogItemCache;-><init>(ILcom/sleepycat/je/utilint/StatGroup;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logItemCache:Lcom/sleepycat/je/rep/vlsn/LogItemCache;

    .line 435
    return-void
.end method

.method private dumpMsg(ZLjava/lang/String;)V
    .locals 1
    .param p1, "verbose"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .line 2081
    if-eqz p1, :cond_0

    .line 2082
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2084
    :cond_0
    return-void
.end method

.method private examineGTEBucket(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .locals 6
    .param p1, "target"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "cursor"    # Lcom/sleepycat/je/Cursor;

    .line 1138
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1139
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1140
    .local v1, "data":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/sleepycat/bind/tuple/LongBinding;->longToEntry(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 1141
    sget-object v2, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    .line 1142
    invoke-virtual {p2, v0, v1, v2}, Lcom/sleepycat/je/Cursor;->getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 1144
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v3, :cond_2

    .line 1145
    invoke-static {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v3

    .line 1146
    .local v3, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v3, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1147
    return-object v3

    .line 1154
    :cond_0
    sget-object v4, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {p2, v0, v1, v4}, Lcom/sleepycat/je/Cursor;->getPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 1155
    invoke-direct {p0, v2, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->isValidBucket(Lcom/sleepycat/je/OperationStatus;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1156
    invoke-static {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v4

    .line 1157
    .local v4, "prevBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v4, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1158
    return-object v4

    .line 1166
    .end local v4    # "prevBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_1
    return-object v3

    .line 1170
    .end local v3    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method private flushToDatabase(Lcom/sleepycat/je/txn/Txn;)V
    .locals 3
    .param p1, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1772
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->flushSynchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 1773
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1, v2, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->flushToDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)V

    .line 1774
    monitor-exit v0

    .line 1775
    return-void

    .line 1774
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getGTEBucketFromDatabase(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .locals 16
    .param p1, "target"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "currentBucketInUse"    # Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1025
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "\n"

    const/4 v3, 0x0

    .line 1026
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    const/4 v4, 0x0

    .line 1028
    .local v4, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v5, 0x1

    :try_start_0
    iget-object v6, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v6}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v6

    move-object v4, v6

    .line 1029
    invoke-direct {v1, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->makeCursor(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/Cursor;

    move-result-object v6

    move-object v3, v6

    .line 1035
    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->examineGTEBucket(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1036
    .local v6, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    if-eqz v6, :cond_2

    .line 1037
    nop

    .line 1120
    if-eqz v3, :cond_0

    .line 1121
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1124
    :cond_0
    if-eqz v4, :cond_1

    .line 1125
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1037
    :cond_1
    return-object v6

    .line 1059
    :cond_2
    :try_start_1
    iget-object v7, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->searchGTEHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v7}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1060
    const/4 v7, 0x0

    .line 1061
    .local v7, "endBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    new-instance v8, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v8}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1062
    .local v8, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v9, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v9}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1063
    .local v9, "data":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v10, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v3, v8, v9, v10}, Lcom/sleepycat/je/Cursor;->getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v10

    .line 1065
    .local v10, "status":Lcom/sleepycat/je/OperationStatus;
    invoke-direct {v1, v10, v8}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->isValidBucket(Lcom/sleepycat/je/OperationStatus;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1066
    invoke-static {v9}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v11

    move-object v7, v11

    .line 1067
    invoke-virtual {v7, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v11, :cond_5

    .line 1068
    nop

    .line 1120
    if-eqz v3, :cond_3

    .line 1121
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1124
    :cond_3
    if-eqz v4, :cond_4

    .line 1125
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1068
    :cond_4
    return-object v7

    .line 1079
    :cond_5
    :try_start_2
    invoke-virtual {v7, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->follows(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1080
    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->examineGTEBucket(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v11

    .line 1081
    if-eqz v6, :cond_8

    .line 1082
    nop

    .line 1120
    if-eqz v3, :cond_6

    .line 1121
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1124
    :cond_6
    if-eqz v4, :cond_7

    .line 1125
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1082
    :cond_7
    return-object v6

    .line 1093
    :cond_8
    const/4 v11, 0x0

    .line 1094
    .local v11, "count":I
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    .local v12, "sb":Ljava/lang/StringBuilder;
    sget-object v13, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v3, v8, v9, v13}, Lcom/sleepycat/je/Cursor;->getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v13

    move-object v10, v13

    .line 1096
    :goto_0
    sget-object v13, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v10, v13, :cond_a

    .line 1097
    invoke-static {v8}, Lcom/sleepycat/bind/tuple/LongBinding;->entryToLong(Lcom/sleepycat/je/DatabaseEntry;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 1098
    .local v13, "keyValue":Ljava/lang/Long;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "key => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    if-nez v11, :cond_9

    .line 1101
    invoke-static {v9}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v14

    .line 1102
    .local v14, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "range =>"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    nop

    .end local v14    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    goto :goto_1

    .line 1104
    :cond_9
    invoke-static {v9}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v5

    .line 1105
    .end local v6    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .local v5, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bucket => "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v5

    .line 1108
    .end local v5    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .restart local v6    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 1109
    sget-object v5, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v3, v8, v9, v5}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v5

    move-object v10, v5

    .line 1110
    .end local v13    # "keyValue":Ljava/lang/Long;
    const/4 v5, 0x1

    goto :goto_0

    .line 1112
    :cond_a
    iget-object v0, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logger:Ljava/util/logging/Logger;

    iget-object v5, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VLSNIndex Dump: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1113
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1112
    invoke-static {v0, v5, v13}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1115
    iget-object v0, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find bucket for GTE VLSN "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " in database. EndBucket="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "currentBucket="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v13, p2

    :try_start_4
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " tracker = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v14, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1116
    invoke-static {v0, v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "target":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "currentBucketInUse":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    throw v0

    .line 1059
    .end local v7    # "endBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v9    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v10    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v11    # "count":I
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "target":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p2    # "currentBucketInUse":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_b
    move-object/from16 v13, p2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "target":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "currentBucketInUse":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1120
    .end local v6    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "target":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p2    # "currentBucketInUse":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v13, p2

    :goto_2
    if-eqz v3, :cond_c

    .line 1121
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1124
    :cond_c
    if-eqz v4, :cond_d

    .line 1125
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    :cond_d
    throw v0
.end method

.method private init(Ljava/lang/String;IIILcom/sleepycat/je/recovery/RecoveryInfo;)V
    .locals 8
    .param p1, "mappingDbName"    # Ljava/lang/String;
    .param p2, "vlsnStride"    # I
    .param p3, "vlsnMaxMappings"    # I
    .param p4, "vlsnMaxDistance"    # I
    .param p5, "recoveryInfo"    # Lcom/sleepycat/je/recovery/RecoveryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1510
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->openMappingDatabase(Ljava/lang/String;)V

    .line 1512
    new-instance v7, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    move-object v0, v7

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;IIILcom/sleepycat/je/utilint/StatGroup;)V

    iput-object v7, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    .line 1534
    iget-object v0, p5, Lcom/sleepycat/je/recovery/RecoveryInfo;->vlsnProxy:Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;

    check-cast v0, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->merge(Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;)V

    .line 1537
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    .line 1538
    .local v0, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1539
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getLTEFileNumber(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v1

    .line 1540
    .local v1, "firstFile":J
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->initProtectedFileRange(J)V

    .line 1547
    .end local v1    # "firstFile":J
    :cond_0
    iget-object v1, p5, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastMissingFileVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1548
    iget-object v1, p5, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastMissingFileVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-wide v2, p5, Lcom/sleepycat/je/recovery/RecoveryInfo;->lastMissingFileNumber:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->truncateFromHead(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 1552
    :cond_1
    return-void
.end method

.method private isValidBucket(Lcom/sleepycat/je/OperationStatus;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 4
    .param p1, "status"    # Lcom/sleepycat/je/OperationStatus;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 954
    sget-object v0, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne p1, v0, :cond_0

    .line 955
    invoke-static {p2}, Lcom/sleepycat/bind/tuple/LongBinding;->entryToLong(Lcom/sleepycat/je/DatabaseEntry;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 954
    :goto_0
    return v0
.end method

.method private makeCursor(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/Cursor;
    .locals 3
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 2347
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    sget-object v1, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    invoke-static {v0, p1, v1}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    .line 2350
    .local v0, "cursor":Lcom/sleepycat/je/Cursor;
    invoke-static {v0}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->setAllowEviction(Z)V

    .line 2351
    return-object v0
.end method

.method private openMappingDatabase(Ljava/lang/String;)V
    .locals 6
    .param p1, "mappingDbName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1680
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v1, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 1681
    invoke-static {v0, v1}, Lcom/sleepycat/je/txn/Txn;->createLocalAutoTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    .line 1684
    .local v0, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    .line 1685
    .local v2, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, p1, v3, v4}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/txn/HandleLocker;Z)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    .line 1689
    .local v3, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v3, :cond_1

    .line 1690
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1695
    new-instance v5, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v5}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 1696
    .local v5, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v5, v4}, Lcom/sleepycat/je/DatabaseConfig;->setReplicated(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1697
    invoke-virtual {v2, v0, p1, v5}, Lcom/sleepycat/je/dbi/DbTree;->createInternalDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 1692
    .end local v5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :cond_0
    const-string v4, "A replicated environment can\'t be opened read only."

    .line 1693
    invoke-static {v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    .end local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "mappingDbName":Ljava/lang/String;
    throw v4

    .line 1699
    .restart local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "mappingDbName":Ljava/lang/String;
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1701
    .end local v2    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v3    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1702
    nop

    .line 1703
    return-void

    .line 1701
    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    throw v2
.end method

.method private positionAfterOrEqual(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 4
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1229
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    invoke-static {v0, v1, p3}, Lcom/sleepycat/bind/tuple/LongBinding;->longToEntry(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 1230
    const/4 v0, 0x0

    .line 1233
    .local v0, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    sget-object v1, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    .line 1234
    invoke-virtual {p1, p3, p4, v1}, Lcom/sleepycat/je/Cursor;->getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 1236
    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 1237
    invoke-static {p4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v0

    .line 1238
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1239
    return v3

    .line 1250
    :cond_0
    sget-object v2, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {p1, p3, p4, v2}, Lcom/sleepycat/je/Cursor;->getPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 1251
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v1, v2, :cond_2

    .line 1253
    invoke-direct {p0, v1, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->isValidBucket(Lcom/sleepycat/je/OperationStatus;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1254
    invoke-static {p4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v0

    .line 1255
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1256
    return v3

    .line 1264
    :cond_1
    sget-object v2, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {p1, p3, p4, v2}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 1265
    return v3

    .line 1251
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1271
    :cond_3
    sget-object v2, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {p1, p3, p4, v2}, Lcom/sleepycat/je/Cursor;->getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 1272
    invoke-direct {p0, v1, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->isValidBucket(Lcom/sleepycat/je/OperationStatus;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1273
    invoke-static {p4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v0

    .line 1274
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1275
    return v3

    .line 1279
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private positionBeforeOrEqual(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 5
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1184
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    invoke-static {v0, v1, p3}, Lcom/sleepycat/bind/tuple/LongBinding;->longToEntry(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 1185
    const/4 v0, 0x0

    .line 1188
    .local v0, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    sget-object v1, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    .line 1189
    invoke-virtual {p1, p3, p4, v1}, Lcom/sleepycat/je/Cursor;->getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 1191
    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    .line 1192
    invoke-static {p4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v0

    .line 1193
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1194
    return v4

    .line 1198
    :cond_0
    sget-object v2, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {p1, p3, p4, v2}, Lcom/sleepycat/je/Cursor;->getPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 1199
    invoke-direct {p0, v1, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->isValidBucket(Lcom/sleepycat/je/OperationStatus;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1200
    return v4

    .line 1204
    :cond_1
    return v3

    .line 1210
    :cond_2
    sget-object v2, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {p1, p3, p4, v2}, Lcom/sleepycat/je/Cursor;->getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 1211
    invoke-direct {p0, v1, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->isValidBucket(Lcom/sleepycat/je/OperationStatus;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1212
    return v4

    .line 1215
    :cond_3
    return v3
.end method

.method private pruneDatabaseHead(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/txn/Txn;)V
    .locals 24
    .param p1, "deleteEnd"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "deleteFileNum"    # J
    .param p4, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1289
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1292
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    move-object/from16 v4, p4

    :try_start_0
    invoke-direct {v1, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->makeCursor(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    move-object v3, v0

    .line 1294
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1295
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1297
    .local v5, "data":Lcom/sleepycat/je/DatabaseEntry;
    invoke-direct {v1, v3, v2, v0, v5}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->positionBeforeOrEqual(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_1

    .line 1369
    if-eqz v3, :cond_0

    .line 1370
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1299
    :cond_0
    return-void

    .line 1305
    :cond_1
    :try_start_1
    new-instance v6, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v6}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1306
    .local v6, "noData":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8, v7}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 1307
    const/4 v9, 0x0

    .line 1310
    .local v9, "deleteCount":I
    :goto_0
    invoke-static {v0}, Lcom/sleepycat/bind/tuple/LongBinding;->entryToLong(Lcom/sleepycat/je/DatabaseEntry;)J

    move-result-wide v10

    .line 1311
    .local v10, "keyValue":J
    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_2

    .line 1312
    goto :goto_1

    .line 1315
    :cond_2
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->delete()Lcom/sleepycat/je/OperationStatus;

    move-result-object v12

    .line 1317
    .local v12, "status":Lcom/sleepycat/je/OperationStatus;
    add-int/lit8 v9, v9, 0x1

    .line 1318
    sget-object v13, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v12, v13, :cond_a

    .line 1324
    .end local v10    # "keyValue":J
    .end local v12    # "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v10, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v3, v0, v6, v10}, Lcom/sleepycat/je/Cursor;->getPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v10

    sget-object v11, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-eq v10, v11, :cond_9

    .line 1327
    :goto_1
    iget-object v10, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->nHeadBucketsDeleted:Lcom/sleepycat/je/utilint/LongStat;

    int-to-long v11, v9

    invoke-virtual {v10, v11, v12}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1333
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v10

    .line 1334
    .local v10, "newStart":Lcom/sleepycat/je/utilint/VLSN;
    const-wide/16 v11, 0x1

    invoke-static {v11, v12, v0}, Lcom/sleepycat/bind/tuple/LongBinding;->longToEntry(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 1335
    sget-object v11, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    .line 1336
    invoke-virtual {v3, v0, v5, v11}, Lcom/sleepycat/je/Cursor;->getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v11

    move-object v13, v11

    .line 1339
    .local v13, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v11, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v13, v11, :cond_4

    .line 1369
    if-eqz v3, :cond_3

    .line 1370
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1340
    :cond_3
    return-void

    .line 1343
    :cond_4
    :try_start_2
    invoke-static {v5}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v11

    move-object v14, v11

    .line 1345
    .local v14, "firstBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v11, :cond_6

    .line 1369
    if-eqz v3, :cond_5

    .line 1370
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1346
    :cond_5
    return-void

    .line 1349
    :cond_6
    :try_start_3
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v11

    if-ltz v11, :cond_8

    .line 1359
    iget-object v11, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v11}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1360
    move/from16 v18, v9

    move-wide/from16 v8, p2

    .end local v9    # "deleteCount":I
    .local v18, "deleteCount":I
    :try_start_4
    invoke-virtual {v11, v8, v9, v7}, Lcom/sleepycat/je/log/FileManager;->getFollowingFileNum(JZ)Ljava/lang/Long;

    move-result-object v7

    .line 1359
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1362
    .local v11, "nextFile":J
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    invoke-virtual {v14, v7}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v15

    .line 1363
    .local v15, "lastPossibleLsn":J
    new-instance v7, Lcom/sleepycat/je/rep/vlsn/GhostBucket;

    .line 1364
    move-object/from16 v19, v0

    const/4 v0, 0x0

    .end local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .local v19, "key":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {v11, v12, v0}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v20

    move-wide/from16 v22, v11

    .end local v11    # "nextFile":J
    .local v22, "nextFile":J
    move-object v11, v7

    move-object v12, v10

    move-object/from16 v17, v13

    move-object v0, v14

    .end local v13    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v14    # "firstBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .local v0, "firstBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .local v17, "status":Lcom/sleepycat/je/OperationStatus;
    move-wide/from16 v13, v20

    invoke-direct/range {v11 .. v16}, Lcom/sleepycat/je/rep/vlsn/GhostBucket;-><init>(Lcom/sleepycat/je/utilint/VLSN;JJ)V

    .line 1366
    .local v7, "placeholder":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    iget-object v11, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v7, v11, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->writeToDatabase(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1369
    .end local v0    # "firstBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v5    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "noData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v7    # "placeholder":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v10    # "newStart":Lcom/sleepycat/je/utilint/VLSN;
    .end local v15    # "lastPossibleLsn":J
    .end local v17    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v18    # "deleteCount":I
    .end local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v22    # "nextFile":J
    if-eqz v3, :cond_7

    .line 1370
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1373
    :cond_7
    return-void

    .line 1350
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v5    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v6    # "noData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v9    # "deleteCount":I
    .restart local v10    # "newStart":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v13    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v14    # "firstBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_8
    move-object/from16 v19, v0

    move/from16 v18, v9

    move-object/from16 v17, v13

    move-object v0, v14

    move-wide/from16 v8, p2

    .end local v9    # "deleteCount":I
    .end local v13    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v14    # "firstBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .local v0, "firstBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .restart local v17    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v18    # "deleteCount":I
    .restart local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    :try_start_5
    iget-object v7, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newStart "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " should be < first bucket:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1351
    invoke-static {v7, v11}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v7

    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "deleteEnd":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "deleteFileNum":J
    .end local p4    # "txn":Lcom/sleepycat/je/txn/Txn;
    throw v7

    .line 1324
    .end local v10    # "newStart":Lcom/sleepycat/je/utilint/VLSN;
    .end local v17    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v18    # "deleteCount":I
    .end local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v9    # "deleteCount":I
    .restart local p1    # "deleteEnd":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p2    # "deleteFileNum":J
    .restart local p4    # "txn":Lcom/sleepycat/je/txn/Txn;
    :cond_9
    move-object/from16 v19, v0

    move v0, v8

    move v13, v9

    move-wide/from16 v8, p2

    .end local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v9    # "deleteCount":I
    .local v13, "deleteCount":I
    .restart local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    move v8, v0

    move v9, v13

    move-object/from16 v0, v19

    goto/16 :goto_0

    .line 1319
    .end local v13    # "deleteCount":I
    .end local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v9    # "deleteCount":I
    .local v10, "keyValue":J
    .restart local v12    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_a
    move-object/from16 v19, v0

    move v13, v9

    move-wide/from16 v8, p2

    .end local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v9    # "deleteCount":I
    .restart local v13    # "deleteCount":I
    .restart local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v0, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t delete, got status of "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " for delete of bucket "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " deleteEnd="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1320
    invoke-static {v0, v7}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "deleteEnd":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "deleteFileNum":J
    .end local p4    # "txn":Lcom/sleepycat/je/txn/Txn;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1369
    .end local v5    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "noData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v10    # "keyValue":J
    .end local v12    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v13    # "deleteCount":I
    .end local v19    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "deleteEnd":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p2    # "deleteFileNum":J
    .restart local p4    # "txn":Lcom/sleepycat/je/txn/Txn;
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-wide/from16 v8, p2

    :goto_2
    if-eqz v3, :cond_b

    .line 1370
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    :cond_b
    throw v0
.end method

.method private setupWait(Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 3
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 610
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->vlsnPutLatch:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;

    if-nez v0, :cond_0

    .line 611
    iput-object p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->putWaitVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 612
    new-instance v0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->vlsnPutLatch:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;

    goto :goto_0

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->putWaitVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected get for VLSN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already waiting for VLSN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->putWaitVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current range="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 619
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private declared-synchronized truncateDatabaseFromHead(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 5
    .param p1, "deleteEnd"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "deleteFileNum"    # J

    monitor-enter p0

    .line 753
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 754
    .local v0, "config":Lcom/sleepycat/je/TransactionConfig;
    sget-object v1, Lcom/sleepycat/je/Durability;->COMMIT_NO_SYNC:Lcom/sleepycat/je/Durability;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 755
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1, v0}, Lcom/sleepycat/je/txn/Txn;->createLocalTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 756
    .local v1, "txn":Lcom/sleepycat/je/txn/Txn;
    const/4 v2, 0x0

    .line 758
    .local v2, "success":Z
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->flushSynchronizer:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 759
    :try_start_2
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->pruneDatabaseHead(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/txn/Txn;)V

    .line 760
    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->flushToDatabase(Lcom/sleepycat/je/txn/Txn;)V

    .line 761
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 762
    :try_start_3
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->commit()J

    .line 763
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->flushLog(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 764
    const/4 v2, 0x1

    .line 766
    if-nez v2, :cond_0

    .line 767
    :try_start_4
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->abort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 770
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    :cond_0
    monitor-exit p0

    return-void

    .line 761
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "config":Lcom/sleepycat/je/TransactionConfig;
    .end local v1    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v2    # "success":Z
    .end local p1    # "deleteEnd":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "deleteFileNum":J
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 766
    .restart local v0    # "config":Lcom/sleepycat/je/TransactionConfig;
    .restart local v1    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local v2    # "success":Z
    .restart local p1    # "deleteEnd":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p2    # "deleteFileNum":J
    :catchall_1
    move-exception v3

    if-nez v2, :cond_1

    .line 767
    :try_start_7
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->abort()V

    :cond_1
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 752
    .end local v0    # "config":Lcom/sleepycat/je/TransactionConfig;
    .end local v1    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v2    # "success":Z
    .end local p1    # "deleteEnd":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "deleteFileNum":J
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static verifyDb(Lcom/sleepycat/je/Environment;Ljava/io/PrintStream;Z)V
    .locals 20
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1860
    move-object/from16 v1, p1

    const-string v0, "/"

    new-instance v2, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 1861
    .local v2, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1862
    sget-object v3, Lcom/sleepycat/je/dbi/DbType;->VLSN_MAP:Lcom/sleepycat/je/dbi/DbType;

    .line 1863
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v5, p0

    invoke-virtual {v5, v4, v3, v2}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v3

    .line 1864
    .local v3, "db":Lcom/sleepycat/je/Database;
    const/4 v6, 0x0

    .line 1866
    .local v6, "cursor":Lcom/sleepycat/je/Cursor;
    if-eqz p2, :cond_0

    .line 1867
    :try_start_0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Verifying VLSN index"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1942
    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_4

    .line 1870
    :cond_0
    :goto_0
    :try_start_1
    sget-object v7, Lcom/sleepycat/je/CursorConfig;->READ_COMMITTED:Lcom/sleepycat/je/CursorConfig;

    invoke-virtual {v3, v4, v7}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v7

    move-object v6, v7

    .line 1872
    new-instance v7, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v7}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1873
    .local v7, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v8, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v8}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1879
    .local v8, "data":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v9, 0x0

    .line 1880
    .local v9, "count":I
    const/4 v10, 0x0

    .line 1881
    .local v10, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    const/4 v11, 0x0

    .line 1882
    .local v11, "lastBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    const/4 v12, 0x0

    .line 1883
    .local v12, "lastKey":Ljava/lang/Long;
    sget-object v13, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1884
    .local v13, "firstVLSNSeen":Lcom/sleepycat/je/utilint/VLSN;
    sget-object v14, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1885
    .local v14, "lastVLSNSeen":Lcom/sleepycat/je/utilint/VLSN;
    :goto_1
    invoke-virtual {v6, v7, v8, v4}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v15

    sget-object v4, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v15, v4, :cond_7

    .line 1888
    invoke-static {v7}, Lcom/sleepycat/bind/tuple/LongBinding;->entryToLong(Lcom/sleepycat/je/DatabaseEntry;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1890
    .local v4, "keyValue":Ljava/lang/Long;
    if-nez v9, :cond_3

    .line 1891
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, -0x1

    cmp-long v15, v16, v18

    if-eqz v15, :cond_1

    .line 1892
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v16, v2

    .end local v2    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .local v16, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :try_start_2
    const-string v2, "Wrong key value for range! "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1891
    .end local v16    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v2    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :cond_1
    move-object/from16 v16, v2

    .line 1894
    .end local v2    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v16    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :goto_2
    invoke-static {v8}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v2

    .line 1895
    .end local v10    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .local v2, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    if-eqz p2, :cond_2

    .line 1896
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "range=>"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1923
    :cond_2
    move-object v10, v2

    goto/16 :goto_3

    .line 1899
    .end local v16    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .local v2, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v10    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    :cond_3
    move-object/from16 v16, v2

    .end local v2    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v16    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-static {v8}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v2

    .line 1900
    .local v2, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    if-eqz p2, :cond_4

    .line 1901
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=> "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1902
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " bucket=>"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1905
    :cond_4
    if-eqz v11, :cond_5

    .line 1906
    invoke-virtual {v11}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v5

    if-ltz v5, :cond_5

    .line 1908
    const-string v5, "Buckets out of order."

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1909
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Last = "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1911
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Current = "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1916
    :cond_5
    move-object v5, v2

    .line 1917
    .end local v11    # "lastBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .local v5, "lastBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    move-object v11, v4

    .line 1918
    .end local v12    # "lastKey":Ljava/lang/Long;
    .local v11, "lastKey":Ljava/lang/Long;
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1919
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v12

    move-object v13, v12

    .line 1921
    :cond_6
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v12

    move-object v14, v12

    move-object v12, v11

    move-object v11, v5

    .line 1923
    .end local v2    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v5    # "lastBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .local v11, "lastBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .restart local v12    # "lastKey":Ljava/lang/Long;
    :goto_3
    nop

    .end local v4    # "keyValue":Ljava/lang/Long;
    add-int/lit8 v9, v9, 0x1

    .line 1924
    const/4 v4, 0x0

    move-object/from16 v5, p0

    move-object/from16 v2, v16

    goto/16 :goto_1

    .line 1926
    .end local v16    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .local v2, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :cond_7
    move-object/from16 v16, v2

    .end local v2    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v16    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    if-nez v9, :cond_9

    .line 1927
    const-string v0, "VLSNIndex not on disk"

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1942
    if-eqz v6, :cond_8

    .line 1943
    invoke-virtual {v6}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1946
    :cond_8
    invoke-virtual {v3}, Lcom/sleepycat/je/Database;->close()V

    .line 1928
    return-void

    .line 1931
    :cond_9
    :try_start_3
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v2, " and doesn\'t match range "

    if-eqz v0, :cond_a

    .line 1932
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First VLSN in bucket = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1933
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1932
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1936
    :cond_a
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 1937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last VLSN in bucket = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1938
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1937
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1942
    .end local v7    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v8    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v9    # "count":I
    .end local v10    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v11    # "lastBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v12    # "lastKey":Ljava/lang/Long;
    .end local v13    # "firstVLSNSeen":Lcom/sleepycat/je/utilint/VLSN;
    .end local v14    # "lastVLSNSeen":Lcom/sleepycat/je/utilint/VLSN;
    :cond_b
    if-eqz v6, :cond_c

    .line 1943
    invoke-virtual {v6}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1946
    :cond_c
    invoke-virtual {v3}, Lcom/sleepycat/je/Database;->close()V

    .line 1947
    nop

    .line 1948
    return-void

    .line 1942
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v16    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v2    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v16    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :goto_4
    if-eqz v6, :cond_d

    .line 1943
    invoke-virtual {v6}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1946
    :cond_d
    invoke-virtual {v3}, Lcom/sleepycat/je/Database;->close()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized abnormalClose()V
    .locals 1

    monitor-enter p0

    .line 1710
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1711
    monitor-exit p0

    return-void

    .line 1709
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public awaitConsistency()V
    .locals 8

    .line 2140
    const-string v0, " with ckpt consistency target of "

    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->nextVLSNCounter:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v1, :cond_0

    .line 2141
    return-void

    .line 2144
    :cond_0
    const/4 v1, 0x0

    .line 2153
    .local v1, "vlsnAllocatedBeforeCkpt":Lcom/sleepycat/je/utilint/VLSN;
    :goto_0
    if-nez v1, :cond_1

    .line 2154
    new-instance v2, Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getLatestAllocatedVal()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    move-object v1, v2

    goto :goto_1

    .line 2156
    :cond_1
    new-instance v2, Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getLatestAllocatedVal()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    .line 2157
    .local v2, "latestAllocated":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    if-gez v3, :cond_2

    .line 2158
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reducing awaitConsistency VLSN from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2162
    move-object v1, v2

    .line 2173
    .end local v2    # "latestAllocated":Lcom/sleepycat/je/utilint/VLSN;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 2174
    .local v2, "endOfRangePlusOne":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    if-gez v3, :cond_3

    .line 2179
    goto :goto_2

    .line 2182
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2183
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "awaitConsistency target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " allocatedBeforeCkpt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2190
    :cond_4
    :try_start_0
    sget v3, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->AWAIT_CONSISTENCY_MS:I

    invoke-virtual {p0, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->waitForVLSN(Lcom/sleepycat/je/utilint/VLSN;I)Lcom/sleepycat/je/log/LogItem;

    .line 2191
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3
    :try_end_0
    .catch Lcom/sleepycat/je/rep/vlsn/VLSNIndex$WaitTimeOutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_5

    .line 2193
    nop

    .line 2224
    :goto_2
    return-void

    .line 2207
    :catch_0
    move-exception v3

    .line 2208
    .local v3, "e":Ljava/lang/InterruptedException;
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Interrupted while awaiting vlsn index consistency before checkpoint, awaiting vlsn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", will retry"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_3

    .line 2200
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 2201
    .local v3, "e":Lcom/sleepycat/je/rep/vlsn/VLSNIndex$WaitTimeOutException;
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrying for vlsn index consistency  before checkpoint, awaiting vlsn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2214
    .end local v3    # "e":Lcom/sleepycat/je/rep/vlsn/VLSNIndex$WaitTimeOutException;
    :cond_5
    nop

    .line 2222
    :goto_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkIfInvalid()V

    goto/16 :goto_0
.end method

.method public bump()Lcom/sleepycat/je/utilint/VLSN;
    .locals 3

    .line 486
    new-instance v0, Lcom/sleepycat/je/utilint/VLSN;

    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->nextVLSNCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 1706
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1707
    monitor-exit p0

    return-void

    .line 1705
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close(Z)V
    .locals 4
    .param p1, "doFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1717
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1718
    :try_start_0
    sget-object v1, Lcom/sleepycat/je/Durability;->COMMIT_SYNC:Lcom/sleepycat/je/Durability;

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->flushToDatabase(Lcom/sleepycat/je/Durability;)V

    .line 1721
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->vlsnPutLatch:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;

    if-eqz v1, :cond_1

    .line 1728
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->terminate()V

    .line 1729
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v3, "Outstanding VLSN put latch cleared at close"

    .line 1730
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1734
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-eqz v1, :cond_2

    .line 1735
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1736
    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1738
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->close()V

    .line 1739
    nop

    .line 1740
    return-void

    .line 1734
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-eqz v2, :cond_3

    .line 1735
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1736
    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1738
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->close()V

    throw v1
.end method

.method public dumpDb(Z)Ljava/util/Map;
    .locals 17
    .param p1, "display"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/utilint/VLSN;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1783
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1784
    .local v2, "cursor":Lcom/sleepycat/je/Cursor;
    const/4 v3, 0x0

    .line 1785
    .local v3, "locker":Lcom/sleepycat/je/txn/Locker;
    if-eqz p1, :cond_0

    .line 1786
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1789
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 1792
    .local v4, "mappings":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/Long;>;"
    const/4 v5, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v0

    move-object v3, v0

    .line 1793
    invoke-direct {v1, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->makeCursor(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 1795
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1796
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v6, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v6}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1802
    .local v6, "data":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v7, 0x0

    .line 1803
    .local v7, "count":I
    :goto_0
    sget-object v8, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v2, v0, v6, v8}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v8

    sget-object v9, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v8, v9, :cond_7

    .line 1806
    invoke-static {v0}, Lcom/sleepycat/bind/tuple/LongBinding;->entryToLong(Lcom/sleepycat/je/DatabaseEntry;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1808
    .local v8, "keyValue":Ljava/lang/Long;
    if-eqz p1, :cond_1

    .line 1809
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "key => "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1811
    :cond_1
    if-nez v7, :cond_3

    .line 1812
    invoke-static {v6}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v9

    .line 1813
    .local v9, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    if-eqz p1, :cond_2

    .line 1814
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v11, "range =>"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1815
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1817
    .end local v9    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    :cond_2
    goto :goto_2

    .line 1818
    :cond_3
    invoke-static {v6}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v9

    .line 1819
    .local v9, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v10

    .line 1820
    .local v10, "i":J
    :goto_1
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-gtz v12, :cond_5

    .line 1822
    new-instance v12, Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v12, v10, v11}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    .line 1823
    .local v12, "v":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v9, v12}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v13

    .line 1825
    .local v13, "lsn":J
    const-wide/16 v15, -0x1

    cmp-long v15, v13, v15

    if-eqz v15, :cond_4

    .line 1826
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v4, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    .end local v12    # "v":Lcom/sleepycat/je/utilint/VLSN;
    .end local v13    # "lsn":J
    :cond_4
    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    goto :goto_1

    .line 1829
    .end local v10    # "i":J
    :cond_5
    if-eqz p1, :cond_6

    .line 1830
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "bucket =>"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1831
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v10}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->dump(Ljava/io/PrintStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1834
    .end local v9    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_6
    :goto_2
    nop

    .end local v8    # "keyValue":Ljava/lang/Long;
    add-int/lit8 v7, v7, 0x1

    .line 1835
    goto/16 :goto_0

    .line 1837
    .end local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v7    # "count":I
    :cond_7
    if-eqz v2, :cond_8

    .line 1838
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1841
    :cond_8
    if-eqz v3, :cond_9

    .line 1842
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1846
    :cond_9
    return-object v4

    .line 1837
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_a

    .line 1838
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1841
    :cond_a
    if-eqz v3, :cond_b

    .line 1842
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    :cond_b
    throw v0
.end method

.method public flushToDatabase(Lcom/sleepycat/je/Durability;)V
    .locals 4
    .param p1, "useDurability"    # Lcom/sleepycat/je/Durability;

    .line 1752
    new-instance v0, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 1753
    .local v0, "config":Lcom/sleepycat/je/TransactionConfig;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 1754
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1, v0}, Lcom/sleepycat/je/txn/Txn;->createLocalTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v1

    .line 1755
    .local v1, "txn":Lcom/sleepycat/je/txn/Txn;
    const/4 v2, 0x0

    .line 1757
    .local v2, "success":Z
    :try_start_0
    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->flushToDatabase(Lcom/sleepycat/je/txn/Txn;)V

    .line 1758
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->commit()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1759
    const/4 v2, 0x1

    .line 1761
    if-nez v2, :cond_0

    .line 1762
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 1765
    :cond_0
    return-void

    .line 1761
    :catchall_0
    move-exception v3

    if-nez v2, :cond_1

    .line 1762
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->abort()V

    :cond_1
    throw v3
.end method

.method public getDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1

    .line 1744
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method public getGTEBucket(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .locals 2
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "currentBucketInUse"    # Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getGTEBucket(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v0

    .line 924
    .local v0, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    if-nez v0, :cond_0

    .line 925
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getGTEBucketFromDatabase(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v1

    return-object v1

    .line 928
    :cond_0
    return-object v0
.end method

.method public getGTEFileNumber(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 3
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 888
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getGTEBucket(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v0

    .line 889
    .local v0, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getGTEFileNumber()J

    move-result-wide v1

    return-wide v1
.end method

.method public getGTELsn(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 3
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getGTEBucket(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v0

    .line 898
    .local v0, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getGTELsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v1

    return-wide v1
.end method

.method getLTEBucket(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .locals 2
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getLTEBucket(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v0

    .line 940
    .local v0, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    if-nez v0, :cond_0

    .line 941
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getLTEBucketFromDatabase(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v1

    return-object v1

    .line 943
    :cond_0
    return-object v0
.end method

.method public getLTEBucketFromDatabase(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .locals 8
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 966
    const/4 v0, 0x0

    .line 967
    .local v0, "cursor":Lcom/sleepycat/je/Cursor;
    const/4 v1, 0x0

    .line 968
    .local v1, "locker":Lcom/sleepycat/je/txn/Locker;
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 969
    .local v2, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 971
    .local v3, "data":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v5}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v5

    move-object v1, v5

    .line 972
    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->makeCursor(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/Cursor;

    move-result-object v5

    move-object v0, v5

    .line 974
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->positionBeforeOrEqual(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 975
    invoke-static {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->close()V

    .line 987
    :cond_0
    if-eqz v1, :cond_1

    .line 988
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 975
    :cond_1
    return-object v5

    .line 979
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find bucket for LTE VLSN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in database. tracker="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 980
    invoke-static {v5, v6}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    .end local v0    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 983
    .restart local v0    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    .line 984
    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->close()V

    .line 987
    :cond_3
    if-eqz v1, :cond_4

    .line 988
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    :cond_4
    throw v5
.end method

.method public getLTEFileNumber(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 3
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 877
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getLTEBucket(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v0

    .line 878
    .local v0, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLTEFileNumber()J

    move-result-wide v1

    return-wide v1
.end method

.method public getLatestAllocatedVal()J
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->nextVLSNCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtectedRangeStartFile()J
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getProtectedRangeStartFile()J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized getPutWaitVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->putWaitVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 603
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    return-object v0
.end method

.method public getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 864
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method public initAsMaster()V
    .locals 4

    .line 446
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 447
    .local v0, "last":Lcom/sleepycat/je/utilint/VLSN;
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->needRepConvert()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    :goto_0
    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->nextVLSNCounter:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_1

    .line 458
    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->nextVLSNCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 460
    :goto_1
    return-void
.end method

.method public declared-synchronized initAsReplica()V
    .locals 2

    monitor-enter p0

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->vlsnPutLatch:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->terminate()V

    .line 474
    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->vlsnPutLatch:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;

    .line 477
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    :cond_0
    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->putWaitVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 478
    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->nextVLSNCounter:Ljava/util/concurrent/atomic/AtomicLong;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    monitor-exit p0

    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFlushedToDisk()Z
    .locals 1

    .line 2091
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->isFlushedToDisk()Z

    move-result v0

    return v0
.end method

.method merge(Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;)V
    .locals 8
    .param p1, "recoveryTracker"    # Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;

    .line 1576
    if-nez p1, :cond_0

    .line 1577
    sget-object v0, Lcom/sleepycat/je/Durability;->COMMIT_SYNC:Lcom/sleepycat/je/Durability;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->flushToDatabase(Lcom/sleepycat/je/Durability;)V

    .line 1578
    return-void

    .line 1581
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1597
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->getLastMatchpointVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 1598
    .local v0, "lastMatchpointVLSN":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1599
    return-void

    .line 1609
    :cond_1
    nop

    .line 1610
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->getLastMatchpointLsn()J

    move-result-wide v1

    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_MATCHPOINT:Lcom/sleepycat/je/log/LogEntryType;

    .line 1611
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v3

    .line 1609
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->track(Lcom/sleepycat/je/utilint/VLSN;JB)V

    .line 1634
    .end local v0    # "lastMatchpointVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 1635
    .local v0, "persistentLast":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    .line 1636
    .local v1, "recoveryFirst":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isRepConverted()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1637
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isRepConverted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1638
    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    if-gtz v2, :cond_8

    .line 1646
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v2

    .line 1647
    .local v2, "currentRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1649
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v3, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->append(Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;)V

    .line 1650
    sget-object v3, Lcom/sleepycat/je/Durability;->COMMIT_SYNC:Lcom/sleepycat/je/Durability;

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->flushToDatabase(Lcom/sleepycat/je/Durability;)V

    .line 1651
    return-void

    .line 1658
    :cond_5
    new-instance v3, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 1659
    .local v3, "config":Lcom/sleepycat/je/TransactionConfig;
    sget-object v4, Lcom/sleepycat/je/Durability;->COMMIT_SYNC:Lcom/sleepycat/je/Durability;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 1660
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v4, v3}, Lcom/sleepycat/je/txn/Txn;->createLocalTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v4

    .line 1661
    .local v4, "txn":Lcom/sleepycat/je/txn/Txn;
    const/4 v5, 0x0

    .line 1664
    .local v5, "success":Z
    const-wide/16 v6, -0x1

    :try_start_0
    invoke-virtual {p0, v1, v6, v7, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->pruneDatabaseTail(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    .line 1666
    .local v6, "lastOnDiskVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v7, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v7, v6, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->merge(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;)V

    .line 1667
    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->flushToDatabase(Lcom/sleepycat/je/txn/Txn;)V

    .line 1668
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Txn;->commit()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    const/4 v5, 0x1

    .line 1671
    if-nez v5, :cond_6

    .line 1672
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 1675
    :cond_6
    return-void

    .line 1671
    .end local v6    # "lastOnDiskVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception v6

    if-nez v5, :cond_7

    .line 1672
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Txn;->abort()V

    :cond_7
    throw v6

    .line 1640
    .end local v2    # "currentRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v3    # "config":Lcom/sleepycat/je/TransactionConfig;
    .end local v4    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v5    # "success":Z
    :cond_8
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recoveryTracker should overlap or follow on disk last VLSN of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " recoveryFirst= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1641
    invoke-static {v2, v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method public protectRangeHead(Ljava/lang/String;)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    .locals 1
    .param p1, "lockerName"    # Ljava/lang/String;

    .line 643
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->protectRangeHead(Ljava/lang/String;)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    move-result-object v0

    return-object v0
.end method

.method pruneDatabaseTail(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 11
    .param p1, "deleteStart"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "lastLsn"    # J
    .param p4, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getLastOnDisk()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 1398
    .local v0, "lastOnDiskVLSN":Lcom/sleepycat/je/utilint/VLSN;
    const/4 v1, 0x0

    .line 1401
    .local v1, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->makeCursor(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 1403
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1404
    .local v2, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1406
    .local v3, "data":Lcom/sleepycat/je/DatabaseEntry;
    invoke-direct {p0, v1, p1, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->positionAfterOrEqual(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 1411
    nop

    .line 1484
    if-eqz v1, :cond_0

    .line 1485
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1411
    :cond_0
    return-object v0

    .line 1418
    :cond_1
    :try_start_1
    invoke-static {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v4

    .line 1420
    .local v4, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v5

    if-gez v5, :cond_4

    .line 1421
    invoke-virtual {v4, p1, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->removeFromTail(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 1422
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    move-object v0, v5

    .line 1423
    invoke-virtual {v4, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fillDataEntry(Lcom/sleepycat/je/DatabaseEntry;)V

    .line 1425
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/Cursor;->putCurrent(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v5

    .line 1427
    .local v5, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v6, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v5, v6, :cond_3

    .line 1432
    sget-object v6, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v1, v2, v3, v6}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v6

    move-object v5, v6

    .line 1433
    sget-object v6, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v5, v6, :cond_4

    .line 1434
    nop

    .line 1484
    if-eqz v1, :cond_2

    .line 1485
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1434
    :cond_2
    return-object v0

    .line 1428
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t update "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1429
    invoke-static {v6, v7}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v6

    .end local v0    # "lastOnDiskVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "deleteStart":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "lastLsn":J
    .end local p4    # "txn":Lcom/sleepycat/je/txn/Txn;
    throw v6

    .line 1441
    .end local v5    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v0    # "lastOnDiskVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "deleteStart":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p2    # "lastLsn":J
    .restart local p4    # "txn":Lcom/sleepycat/je/txn/Txn;
    :cond_4
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1442
    .local v5, "noData":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v6}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 1443
    const/4 v6, 0x0

    .line 1446
    .local v6, "deleteCount":I
    :cond_5
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->delete()Lcom/sleepycat/je/OperationStatus;

    move-result-object v7

    .line 1448
    .local v7, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v8, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v7, v8, :cond_8

    .line 1453
    nop

    .end local v7    # "status":Lcom/sleepycat/je/OperationStatus;
    add-int/lit8 v6, v6, 0x1

    .line 1455
    sget-object v7, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v1, v2, v5, v7}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v7

    sget-object v8, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-eq v7, v8, :cond_5

    .line 1458
    iget-object v7, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->nTailBucketsDeleted:Lcom/sleepycat/je/utilint/LongStat;

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1467
    sget-object v7, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v1, v2, v3, v7}, Lcom/sleepycat/je/Cursor;->getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v7

    .line 1470
    .restart local v7    # "status":Lcom/sleepycat/je/OperationStatus;
    invoke-direct {p0, v7, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->isValidBucket(Lcom/sleepycat/je/OperationStatus;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1472
    invoke-static {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v8

    move-object v4, v8

    .line 1473
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 1480
    :cond_6
    sget-object v8, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v8

    .line 1484
    .end local v2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v5    # "noData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "deleteCount":I
    .end local v7    # "status":Lcom/sleepycat/je/OperationStatus;
    :goto_0
    if-eqz v1, :cond_7

    .line 1485
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1488
    :cond_7
    return-object v0

    .line 1449
    .restart local v2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .restart local v5    # "noData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v6    # "deleteCount":I
    .restart local v7    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_8
    :try_start_3
    iget-object v8, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t delete after vlsn "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1450
    invoke-static {v8, v9}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v8

    .end local v0    # "lastOnDiskVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "deleteStart":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "lastLsn":J
    .end local p4    # "txn":Lcom/sleepycat/je/txn/Txn;
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1484
    .end local v2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v5    # "noData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "deleteCount":I
    .end local v7    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v0    # "lastOnDiskVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "deleteStart":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p2    # "lastLsn":J
    .restart local p4    # "txn":Lcom/sleepycat/je/txn/Txn;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_9

    .line 1485
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    :cond_9
    throw v2
.end method

.method public put(Lcom/sleepycat/je/log/LogItem;)V
    .locals 8
    .param p1, "logItem"    # Lcom/sleepycat/je/log/LogItem;

    .line 500
    iget-object v0, p1, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 501
    .local v0, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    iget-wide v1, p1, Lcom/sleepycat/je/log/LogItem;->lsn:J

    .line 502
    .local v1, "lsn":J
    iget-object v3, p1, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v3

    .line 504
    .local v3, "entryType":B
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logItemCache:Lcom/sleepycat/je/rep/vlsn/LogItemCache;

    invoke-virtual {v4, v0, p1}, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->put(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/log/LogItem;)V

    .line 506
    monitor-enter p0

    .line 507
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->track(Lcom/sleepycat/je/utilint/VLSN;JB)V

    .line 509
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingSynchronizer:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 517
    :try_start_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->vlsnPutLatch:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->putWaitVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 518
    invoke-virtual {v0, v5}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 519
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->vlsnPutLatch:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;

    invoke-virtual {v5, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->setLogItem(Lcom/sleepycat/je/log/LogItem;)V

    .line 520
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->vlsnPutLatch:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->countDown()V

    .line 521
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->vlsnPutLatch:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;

    .line 522
    iput-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->putWaitVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 524
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 527
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 528
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vlsnIndex put "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 530
    :cond_1
    return-void

    .line 524
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local v1    # "lsn":J
    .end local v3    # "entryType":B
    .end local p1    # "logItem":Lcom/sleepycat/je/log/LogItem;
    :try_start_4
    throw v5

    .line 525
    .restart local v0    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v1    # "lsn":J
    .restart local v3    # "entryType":B
    .restart local p1    # "logItem":Lcom/sleepycat/je/log/LogItem;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method setGTEHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;)V"
        }
    .end annotation

    .line 2227
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<*>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->searchGTEHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 2228
    return-void
.end method

.method public declared-synchronized truncateFromHead(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 4
    .param p1, "deleteEnd"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "deleteFileNum"    # J

    monitor-enter p0

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "head truncate with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delete file#:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logItemCache:Lcom/sleepycat/je/rep/vlsn/LogItemCache;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->truncateFromHead(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/rep/vlsn/LogItemCache;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 733
    monitor-exit p0

    return-void

    .line 736
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->truncateDatabaseFromHead(Lcom/sleepycat/je/utilint/VLSN;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    monitor-exit p0

    return-void

    .line 721
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .end local p1    # "deleteEnd":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "deleteFileNum":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized truncateFromTail(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 7
    .param p1, "deleteStart"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "lastLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logItemCache:Lcom/sleepycat/je/rep/vlsn/LogItemCache;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->clear()V

    .line 783
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    .line 784
    .local v0, "currentRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 790
    monitor-exit p0

    return-void

    .line 798
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->truncateFromTail(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 800
    new-instance v1, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 808
    .local v1, "config":Lcom/sleepycat/je/TransactionConfig;
    sget-object v2, Lcom/sleepycat/je/Durability;->COMMIT_SYNC:Lcom/sleepycat/je/Durability;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 809
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v2, v1}, Lcom/sleepycat/je/txn/Txn;->createLocalTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 810
    .local v2, "txn":Lcom/sleepycat/je/txn/Txn;
    const/4 v3, 0x0

    .line 820
    .local v3, "success":Z
    :try_start_2
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->pruneDatabaseTail(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    .line 821
    .local v4, "lastOnDisk":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v5, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->setLastOnDiskVLSN(Lcom/sleepycat/je/utilint/VLSN;)V

    .line 837
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getPrev()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    invoke-virtual {v5, v6, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->ensureRangeEndIsMapped(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 838
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->flushToDatabase(Lcom/sleepycat/je/txn/Txn;)V

    .line 839
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Txn;->commit()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 840
    const/4 v3, 0x1

    .line 842
    .end local v4    # "lastOnDisk":Lcom/sleepycat/je/utilint/VLSN;
    if-nez v3, :cond_1

    .line 843
    :try_start_3
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Txn;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 846
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    :cond_1
    monitor-exit p0

    return-void

    .line 842
    :catchall_0
    move-exception v4

    if-nez v3, :cond_2

    .line 843
    :try_start_4
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Txn;->abort()V

    :cond_2
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 781
    .end local v0    # "currentRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v1    # "config":Lcom/sleepycat/je/TransactionConfig;
    .end local v2    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v3    # "success":Z
    .end local p1    # "deleteStart":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "lastLsn":J
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tryTruncateFromHead(J)Z
    .locals 4
    .param p1, "bytesNeeded"    # J

    monitor-enter p0

    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logItemCache:Lcom/sleepycat/je/rep/vlsn/LogItemCache;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->tryTruncateFromHead(JLcom/sleepycat/je/rep/vlsn/LogItemCache;)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    .local v0, "truncateInfo":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 688
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 691
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->truncateDatabaseFromHead(Lcom/sleepycat/je/utilint/VLSN;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 682
    .end local v0    # "truncateInfo":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/Long;>;"
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .end local p1    # "bytesNeeded":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tryTruncateFromHead(Lcom/sleepycat/je/utilint/VLSN;J)Z
    .locals 2
    .param p1, "deleteEnd"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "deleteFileNum"    # J

    monitor-enter p0

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logItemCache:Lcom/sleepycat/je/rep/vlsn/LogItemCache;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->tryTruncateFromHead(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/rep/vlsn/LogItemCache;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 704
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 707
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->truncateDatabaseFromHead(Lcom/sleepycat/je/utilint/VLSN;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 700
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .end local p1    # "deleteEnd":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "deleteFileNum":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized verify(Z)Z
    .locals 20
    .param p1, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    monitor-enter p0

    .line 1955
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->verify(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1956
    monitor-exit p0

    return v3

    .line 1960
    :cond_0
    const/4 v4, 0x0

    .line 1961
    .local v4, "dbRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1962
    .local v5, "firstVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 1963
    .local v6, "lastVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    iget-object v0, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v0

    move-object v7, v0

    .line 1964
    .local v7, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v8, 0x0

    .line 1970
    .local v8, "cursor":Lcom/sleepycat/je/Cursor;
    iget-object v9, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->flushSynchronizer:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1977
    const/4 v10, 0x1

    :try_start_2
    invoke-direct {v1, v7}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->makeCursor(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 1979
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1980
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v11, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v11}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1985
    .local v11, "data":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v12, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    .line 1986
    invoke-virtual {v8, v0, v11, v12}, Lcom/sleepycat/je/Cursor;->getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v12

    .line 1987
    .local v12, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v13, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v12, v13, :cond_3

    .line 1988
    :try_start_3
    new-instance v13, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;

    invoke-direct {v13}, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;-><init>()V

    .line 1989
    .local v13, "rangeBinding":Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;
    invoke-virtual {v13, v11}, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-object v4, v14

    .line 1992
    :goto_0
    sget-object v14, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v8, v0, v11, v14}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v14

    sget-object v15, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v14, v15, :cond_3

    .line 1995
    invoke-static {v11}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v14

    .line 1997
    .local v14, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-static {v0}, Lcom/sleepycat/bind/tuple/LongBinding;->entryToLong(Lcom/sleepycat/je/DatabaseEntry;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1998
    .local v15, "keyValue":Ljava/lang/Long;
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v16

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_2

    .line 1999
    nop

    .line 2007
    if-eqz v8, :cond_1

    .line 2008
    :try_start_4
    invoke-virtual {v8}, Lcom/sleepycat/je/Cursor;->close()V

    .line 2011
    :cond_1
    invoke-virtual {v7, v10}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1999
    monitor-exit p0

    return v3

    .line 2002
    :cond_2
    :try_start_5
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2003
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2004
    const/4 v3, 0x0

    .end local v14    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v15    # "keyValue":Ljava/lang/Long;
    goto :goto_0

    .line 2007
    .end local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v11    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v12    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v13    # "rangeBinding":Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_3
    if-eqz v8, :cond_4

    .line 2008
    :try_start_6
    invoke-virtual {v8}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 2021
    :catchall_1
    move-exception v0

    goto/16 :goto_3

    .line 2011
    :cond_4
    :goto_1
    :try_start_7
    invoke-virtual {v7, v10}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 2012
    nop

    .line 2017
    iget-object v0, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    .line 2018
    .local v0, "trackerRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {v0, v2, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->verifySubset(ZLcom/sleepycat/je/rep/vlsn/VLSNRange;)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v3, :cond_5

    .line 2019
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    const/4 v3, 0x0

    return v3

    .line 2021
    .end local v0    # "trackerRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    :cond_5
    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2023
    :try_start_a
    iget-object v0, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getFirstTracked()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 2026
    .local v0, "firstTracked":Lcom/sleepycat/je/utilint/VLSN;
    const/4 v3, 0x0

    .line 2027
    .local v3, "firstOnDisk":Lcom/sleepycat/je/utilint/VLSN;
    const/4 v9, 0x0

    .line 2028
    .local v9, "lastOnDisk":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_9

    .line 2030
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v10

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sleepycat/je/utilint/VLSN;

    move-object v9, v11

    .line 2031
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sleepycat/je/utilint/VLSN;

    move-object v3, v12

    .line 2033
    invoke-static {v5, v6}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->verifyBucketBoundaries(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-nez v11, :cond_6

    .line 2034
    monitor-exit p0

    const/4 v10, 0x0

    return v10

    .line 2052
    :cond_6
    :try_start_b
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v11

    if-eqz v11, :cond_7

    .line 2053
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Range doesn\'t match buckets "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " firstOnDisk = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v2, v10}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->dumpMsg(ZLjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 2055
    monitor-exit p0

    const/4 v10, 0x0

    return v10

    .line 2059
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    :cond_7
    :try_start_c
    iget-object v11, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v11}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getLastOnDisk()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 2060
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lastOnDisk="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tracker="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    .line 2061
    invoke-virtual {v11}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getLastOnDisk()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2060
    invoke-direct {v1, v2, v10}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->dumpMsg(ZLjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 2062
    monitor-exit p0

    const/4 v10, 0x0

    return v10

    .line 2065
    :cond_8
    :try_start_d
    sget-object v11, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v11}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 2070
    invoke-virtual {v9}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v11

    if-gez v11, :cond_9

    .line 2071
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lastOnDisk="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " firstTracked="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v2, v10}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->dumpMsg(ZLjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 2073
    monitor-exit p0

    const/4 v10, 0x0

    return v10

    .line 2077
    :cond_9
    monitor-exit p0

    return v10

    .line 2007
    .end local v0    # "firstTracked":Lcom/sleepycat/je/utilint/VLSN;
    .end local v3    # "firstOnDisk":Lcom/sleepycat/je/utilint/VLSN;
    .end local v9    # "lastOnDisk":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_2
    move-exception v0

    :goto_2
    if-eqz v8, :cond_a

    .line 2008
    :try_start_e
    invoke-virtual {v8}, Lcom/sleepycat/je/Cursor;->close()V

    .line 2011
    :cond_a
    invoke-virtual {v7, v10}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .end local v4    # "dbRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v5    # "firstVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    .end local v6    # "lastVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    .end local v7    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v8    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "verbose":Z
    throw v0

    .line 2021
    .restart local v4    # "dbRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .restart local v5    # "firstVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    .restart local v6    # "lastVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    .restart local v7    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v8    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "verbose":Z
    :catchall_3
    move-exception v0

    :goto_3
    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1954
    .end local v4    # "dbRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v5    # "firstVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    .end local v6    # "lastVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    .end local v7    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v8    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "verbose":Z
    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForVLSN(Lcom/sleepycat/je/utilint/VLSN;I)Lcom/sleepycat/je/log/LogItem;
    .locals 5
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "waitTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/rep/vlsn/VLSNIndex$WaitTimeOutException;
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    .line 548
    .local v0, "useRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logItemCache:Lcom/sleepycat/je/rep/vlsn/LogItemCache;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->get(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v1

    return-object v1

    .line 552
    :cond_0
    const/4 v1, 0x0

    .line 553
    .local v1, "waitLatch":Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;
    monitor-enter p0

    .line 554
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v2

    move-object v0, v2

    .line 555
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 556
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->logItemCache:Lcom/sleepycat/je/rep/vlsn/LogItemCache;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->get(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 559
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->mappingSynchronizer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 561
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->setupWait(Lcom/sleepycat/je/utilint/VLSN;)V

    .line 564
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->vlsnPutLatch:Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;

    move-object v1, v3

    .line 565
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 573
    int-to-long v2, p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 574
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 579
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 585
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->getLogItem()Lcom/sleepycat/je/log/LogItem;

    move-result-object v2

    .line 587
    .local v2, "logItem":Lcom/sleepycat/je/log/LogItem;
    iget-object v3, v2, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 580
    .end local v2    # "logItem":Lcom/sleepycat/je/log/LogItem;
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waited for vlsn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " should be greater than last in range:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tracker:Lcom/sleepycat/je/rep/vlsn/VLSNTracker;

    .line 583
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 581
    invoke-static {v2, v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 576
    :cond_4
    new-instance v2, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$WaitTimeOutException;

    invoke-direct {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$WaitTimeOutException;-><init>()V

    throw v2

    .line 565
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "useRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v1    # "waitLatch":Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "waitTime":I
    :try_start_4
    throw v3

    .line 566
    .restart local v0    # "useRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .restart local v1    # "waitLatch":Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;
    .restart local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p2    # "waitTime":I
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method
