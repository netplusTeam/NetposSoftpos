.class public Lcom/sleepycat/je/rep/impl/RepImpl;
.super Lcom/sleepycat/je/dbi/EnvironmentImpl;
.source "RepImpl.java"

# interfaces
.implements Lcom/sleepycat/je/rep/impl/RepEnvConfigObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;,
        Lcom/sleepycat/je/rep/impl/RepImpl$InternalReplicatedEnvironment;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static clockSkewMs:I

.field private static simulatePreDTVLSNMaster:Z


# instance fields
.field private allowArbiterAck:Z

.field private allowConvert:Z

.field private arbiterAckTimeout:I

.field private volatile authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

.field private backupProhibited:Z

.field private final backups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/util/DbBackup;",
            ">;"
        }
    .end annotation
.end field

.field private final blockLatchLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private volatile blockTxnLatch:Ljava/util/concurrent/CountDownLatch;

.field private cacheVLSN:Z

.field private volatile channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

.field private defaultConsistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;

.field private final feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

.field private final feederTxns:Lcom/sleepycat/je/rep/stream/FeederTxns;

.field private groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private final groupDbLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final hardRecoveryInfoStat:Lcom/sleepycat/je/utilint/StringStat;

.field private final hardRecoveryStat:Lcom/sleepycat/je/utilint/BooleanStat;

.field private insufficientReplicasTimeout:I

.field private isArbiter:Z

.field private isNetworkBackup:Z

.field private isRecordExtinctionAvailable:Z

.field private isSubscriber:Z

.field private isTTLAvailable:Z

.field private final logRewriteListener:Lcom/sleepycat/je/rep/LogFileRewriteListener;

.field private nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private final nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

.field private final nodeStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private preserveVLSN:Z

.field private prevLoggedDTVLSN:J

.field private prevLoggedVLSN:J

.field private final repConfigObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/impl/RepEnvConfigObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

.field private volatile repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

.field private replay:Lcom/sleepycat/je/rep/impl/node/Replay;

.field private replayTxnTimeout:I

.field private replicaAckTimeout:I

.field private final syncupProgressListener:Lcom/sleepycat/je/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/rep/SyncupProgress;",
            ">;"
        }
    .end annotation
.end field

.field private vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

.field private final vlsnIndexAccess:Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 148
    nop

    .line 178
    const/4 v0, 0x0

    sput v0, Lcom/sleepycat/je/rep/impl/RepImpl;->clockSkewMs:I

    .line 301
    sput-boolean v0, Lcom/sleepycat/je/rep/impl/RepImpl;->simulatePreDTVLSNMaster:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/RepConfigProxy;)V
    .locals 4
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

    .line 328
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/RepConfigProxy;)V

    .line 154
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/RepImpl$1;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndexAccess:Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;

    .line 189
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->backupProhibited:Z

    .line 198
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->allowConvert:Z

    .line 208
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->isTTLAvailable:Z

    .line 209
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->isRecordExtinctionAvailable:Z

    .line 212
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->backups:Ljava/util/Set;

    .line 225
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 254
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockTxnLatch:Ljava/util/concurrent/CountDownLatch;

    .line 279
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockLatchLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 307
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->prevLoggedVLSN:J

    .line 308
    iput-wide v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->prevLoggedDTVLSN:J

    .line 320
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    .line 330
    move-object v0, p4

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 331
    invoke-static {v0}, Lcom/sleepycat/je/rep/RepInternal;->getAllowConvert(Lcom/sleepycat/je/rep/ReplicationConfig;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->allowConvert:Z

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repConfigObservers:Ljava/util/List;

    .line 334
    invoke-virtual {p0, p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->addRepConfigObserver(Lcom/sleepycat/je/rep/impl/RepEnvConfigObserver;)V

    .line 336
    move-object v0, p4

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 337
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 338
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/NodeState;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {v0, v2, p0}, Lcom/sleepycat/je/rep/impl/node/NodeState;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    .line 340
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->isArbiter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->isSubscriber:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->isNetworkBackup:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    new-instance v0, Lcom/sleepycat/je/rep/stream/FeederTxns;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/stream/FeederTxns;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->feederTxns:Lcom/sleepycat/je/rep/stream/FeederTxns;

    .line 352
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/Replay;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/rep/impl/node/Replay;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    .line 354
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "ReplicatedEnvironment"

    const-string v2, "General information about a replication node"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 356
    new-instance v1, Lcom/sleepycat/je/utilint/BooleanStat;

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepImplStatDefinition;->HARD_RECOVERY:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/BooleanStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->hardRecoveryStat:Lcom/sleepycat/je/utilint/BooleanStat;

    .line 358
    new-instance v1, Lcom/sleepycat/je/utilint/StringStat;

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepImplStatDefinition;->HARD_RECOVERY_INFO:Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v3, "This node did not incur a hard recovery."

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/StringStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->hardRecoveryInfoStat:Lcom/sleepycat/je/utilint/StringStat;

    .line 362
    move-object v0, p4

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 363
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getSyncupProgressListener()Lcom/sleepycat/je/ProgressListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->syncupProgressListener:Lcom/sleepycat/je/ProgressListener;

    .line 364
    move-object v0, p4

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 365
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getLogFileRewriteListener()Lcom/sleepycat/je/rep/LogFileRewriteListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->logRewriteListener:Lcom/sleepycat/je/rep/LogFileRewriteListener;

    .line 367
    move-object v0, p4

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 368
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getFeederFilter()Lcom/sleepycat/je/rep/stream/FeederFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 370
    move-object v0, p4

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getAuthenticator()Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    .line 371
    return-void

    .line 341
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 342
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->syncupProgressListener:Lcom/sleepycat/je/ProgressListener;

    .line 343
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->logRewriteListener:Lcom/sleepycat/je/rep/LogFileRewriteListener;

    .line 344
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->hardRecoveryStat:Lcom/sleepycat/je/utilint/BooleanStat;

    .line 345
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->hardRecoveryInfoStat:Lcom/sleepycat/je/utilint/StringStat;

    .line 346
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->feederTxns:Lcom/sleepycat/je/rep/stream/FeederTxns;

    .line 347
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 348
    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/impl/RepImpl;)Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 148
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;)Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p1, "x1"    # Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 148
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    return-object p1
.end method

.method private checkBlock(Lcom/sleepycat/je/rep/txn/MasterTxn;)V
    .locals 6
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;

    .line 1341
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->lockOnce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockLatchLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lockInterruptibly()V

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockTxnLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->envLogger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block transaction: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1347
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " pending master transfer. Write locks = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1349
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getWriteLockIds()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1346
    invoke-static {v0, p0, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1352
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getTxnTimeout()J

    move-result-wide v0

    .line 1353
    .local v0, "txnTimeout":J
    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 1354
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockTxnLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_0

    .line 1355
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockTxnLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1365
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->checkIfInvalid()V

    .line 1373
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->checkIfMaster(Lcom/sleepycat/je/txn/Locker;)V

    .line 1377
    .end local v0    # "txnTimeout":J
    nop

    .line 1378
    return-void

    .line 1358
    .restart local v0    # "txnTimeout":J
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timed out waiting for master transfer. Configured transaction timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1362
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Lcom/sleepycat/je/TransactionTimeoutException;

    invoke-direct {v3, p1, v2}, Lcom/sleepycat/je/TransactionTimeoutException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V

    .end local p1    # "txn":Lcom/sleepycat/je/rep/txn/MasterTxn;
    throw v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    .end local v0    # "txnTimeout":J
    .end local v2    # "message":Ljava/lang/String;
    .restart local p1    # "txn":Lcom/sleepycat/je/rep/txn/MasterTxn;
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private checkFeatureAvailable(Ljava/lang/String;Lcom/sleepycat/je/JEVersion;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requiredJEVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 2322
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0, p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->setMinJEVersion(Lcom/sleepycat/je/JEVersion;)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2340
    nop

    .line 2341
    return-void

    .line 2323
    :catch_0
    move-exception v0

    .line 2324
    .local v0, "e":Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;
    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->nodeVersion:Lcom/sleepycat/je/JEVersion;

    const-string v2, " or later."

    if-nez v1, :cond_0

    .line 2325
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not currently supported. The version running on node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->nodeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " could not be determined, but this feature requires version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2330
    invoke-virtual {p2}, Lcom/sleepycat/je/JEVersion;->getNumericVersionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2333
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not currently supported. Node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->nodeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is running version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->nodeVersion:Lcom/sleepycat/je/JEVersion;

    .line 2336
    invoke-virtual {v4}, Lcom/sleepycat/je/JEVersion;->getNumericVersionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but this feature requires version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2338
    invoke-virtual {p2}, Lcom/sleepycat/je/JEVersion;->getNumericVersionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getClockSkewMs()I
    .locals 1

    .line 1541
    sget v0, Lcom/sleepycat/je/rep/impl/RepImpl;->clockSkewMs:I

    return v0
.end method

.method private getLsnForVLSN(Lcom/sleepycat/je/utilint/VLSN;I)J
    .locals 9
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "readBufferSize"    # I

    .line 1610
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getLTEFileNumber(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v0

    .line 1613
    .local v0, "fileNumber":J
    new-instance v8, Lcom/sleepycat/je/rep/stream/FeederReader;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 1616
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v5

    move-object v2, v8

    move-object v3, p0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/je/rep/stream/FeederReader;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;JI)V

    .line 1620
    .local v2, "feederReader":Lcom/sleepycat/je/rep/stream/FeederReader;
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/sleepycat/je/rep/stream/FeederReader;->initScan(Lcom/sleepycat/je/utilint/VLSN;)J

    .line 1626
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/FeederReader;->readNextEntry()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 1632
    nop

    .line 1634
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/FeederReader;->getLastLsn()J

    move-result-wide v3

    return-wide v3

    .line 1627
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VLSN not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1628
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local v0    # "fileNumber":J
    .end local v2    # "feederReader":Lcom/sleepycat/je/rep/stream/FeederReader;
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "readBufferSize":I
    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1630
    .restart local v0    # "fileNumber":J
    .restart local v2    # "feederReader":Lcom/sleepycat/je/rep/stream/FeederReader;
    .restart local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p2    # "readBufferSize":I
    :catch_0
    move-exception v3

    .line 1631
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4
.end method

.method public static isSimulatePreDTVLSNMaster()Z
    .locals 1

    .line 2184
    sget-boolean v0, Lcom/sleepycat/je/rep/impl/RepImpl;->simulatePreDTVLSNMaster:Z

    return v0
.end method

.method private openGroupDb(Z)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 7
    .param p1, "doLockProbe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1945
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1946
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1948
    return-object v0

    .line 1951
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    :cond_1
    nop

    .line 1957
    const/4 v1, 0x0

    .line 1959
    .local v1, "txn":Lcom/sleepycat/je/txn/Txn;
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 1960
    nop

    .line 1982
    if-eqz v1, :cond_2

    .line 1983
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 1985
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1960
    return-object v2

    .line 1963
    :cond_3
    const/4 v2, 0x0

    .line 1964
    .local v2, "newDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_2
    new-instance v3, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 1965
    .local v3, "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    sget-object v4, Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;->NO_CONSISTENCY:Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/TransactionConfig;->setConsistencyPolicy(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Lcom/sleepycat/je/TransactionConfig;

    .line 1966
    new-instance v4, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;

    invoke-direct {v4, p0, v3}, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)V

    move-object v1, v4

    .line 1968
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/dbi/DbType;->REP_GROUP:Lcom/sleepycat/je/dbi/DbType;

    .line 1969
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1968
    invoke-virtual {v4, v1, v5, v0, v6}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/txn/HandleLocker;Z)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1972
    .end local v2    # "newDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v0, "newDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v0, :cond_5

    .line 1976
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->commit()J

    .line 1977
    const/4 v1, 0x0

    .line 1979
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1980
    nop

    .line 1982
    if-eqz v1, :cond_4

    .line 1983
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 1985
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1980
    return-object v0

    .line 1973
    :cond_5
    :try_start_3
    new-instance v2, Lcom/sleepycat/je/DatabaseNotFoundException;

    sget-object v4, Lcom/sleepycat/je/dbi/DbType;->REP_GROUP:Lcom/sleepycat/je/dbi/DbType;

    .line 1974
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sleepycat/je/DatabaseNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v1    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local p1    # "doLockProbe":Z
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1982
    .end local v0    # "newDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v3    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .restart local v1    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local p1    # "doLockProbe":Z
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    .line 1983
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 1985
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 1953
    .end local v1    # "txn":Lcom/sleepycat/je/txn/Txn;
    :catch_0
    move-exception v0

    .line 1954
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method private postLogCommitHookInternal(Lcom/sleepycat/je/rep/txn/MasterTxn;Lcom/sleepycat/je/log/LogItem;I)V
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;
    .param p2, "commitItem"    # Lcom/sleepycat/je/log/LogItem;
    .param p3, "ackTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/InsufficientAcksException;,
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/EnvironmentFailureException;
        }
    .end annotation

    .line 1412
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->unlockOnce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockLatchLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1416
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1417
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDurabilityQuorum()Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    move-result-object v0

    .line 1418
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getCommitDurability()Lcom/sleepycat/je/Durability;

    move-result-object v1

    .line 1419
    invoke-virtual {v1}, Lcom/sleepycat/je/Durability;->getReplicaAck()Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    move-result-object v1

    .line 1418
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->getCurrentRequiredAckCount(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)I

    move-result v0

    .line 1420
    .local v0, "currentRequiredAckCount":I
    if-gtz v0, :cond_1

    .line 1429
    return-void

    .line 1422
    :cond_1
    const-string v1, "Acks could not be obtained because the environmentwas invalidated"

    .line 1425
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->envLogger:Ljava/util/logging/Logger;

    const-string v3, "Acks could not be obtained because the environmentwas invalidated"

    invoke-static {v2, p0, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1426
    new-instance v2, Lcom/sleepycat/je/rep/InsufficientAcksException;

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/InsufficientAcksException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1433
    .end local v0    # "currentRequiredAckCount":I
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getArbiterAck()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1435
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getArbiterFeeder()Lcom/sleepycat/je/rep/impl/node/Feeder;

    move-result-object v0

    .line 1436
    .local v0, "arbFeeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    if-eqz v0, :cond_3

    .line 1437
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getArbiterFeederSource()Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;

    move-result-object v1

    .line 1438
    .local v1, "as":Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;
    invoke-virtual {v1, p2}, Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;->addCommit(Lcom/sleepycat/je/log/LogItem;)V

    .line 1444
    .end local v0    # "arbFeeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    .end local v1    # "as":Lcom/sleepycat/je/rep/stream/ArbiterFeederSource;
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->feederTxns:Lcom/sleepycat/je/rep/stream/FeederTxns;

    invoke-virtual {v0, p1, p3}, Lcom/sleepycat/je/rep/stream/FeederTxns;->awaitReplicaAcks(Lcom/sleepycat/je/rep/txn/MasterTxn;I)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/InsufficientAcksException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    nop

    .line 1454
    return-void

    .line 1445
    :catch_0
    move-exception v0

    .line 1446
    .local v0, "e":Lcom/sleepycat/je/rep/InsufficientAcksException;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getArbiterAck()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->useArbiter(Lcom/sleepycat/je/rep/txn/MasterTxn;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1447
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->setArbiterAck(Z)V

    .line 1448
    iget v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->arbiterAckTimeout:I

    invoke-direct {p0, p1, p2, v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->postLogCommitHookInternal(Lcom/sleepycat/je/rep/txn/MasterTxn;Lcom/sleepycat/je/log/LogItem;I)V

    .line 1449
    return-void

    .line 1451
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->envLogger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/InsufficientAcksException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1452
    throw v0
.end method

.method public static setSimulatePreDTVLSNMaster(Z)V
    .locals 0
    .param p0, "simulatePreDTVLSNMaster"    # Z

    .line 2180
    sput-boolean p0, Lcom/sleepycat/je/rep/impl/RepImpl;->simulatePreDTVLSNMaster:Z

    .line 2181
    return-void
.end method

.method public static setSkewMs(I)V
    .locals 0
    .param p0, "skewMs"    # I

    .line 1537
    sput p0, Lcom/sleepycat/je/rep/impl/RepImpl;->clockSkewMs:I

    .line 1538
    return-void
.end method

.method private useArbiter(Lcom/sleepycat/je/rep/txn/MasterTxn;)Z
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;

    .line 2366
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->allowArbiterAck:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 2367
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAckGroupSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 2368
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeAckArbiterCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2369
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getCommitDurability()Lcom/sleepycat/je/Durability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/Durability;->getReplicaAck()Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    if-ne v0, v1, :cond_0

    .line 2371
    const/4 v0, 0x1

    return v0

    .line 2373
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abnormalClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 798
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->shutdownDaemons()V

    .line 801
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMonitorEventManager()Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->disableLeaveGroupEvent()V

    .line 809
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->shutdown()V

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :cond_0
    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 817
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndexAccess:Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->abnormalCloseVLSNIndex()V
    :try_end_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 820
    goto :goto_1

    .line 818
    :catch_1
    move-exception v0

    .line 823
    :goto_1
    :try_start_2
    invoke-super {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->abnormalClose()V
    :try_end_2
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 826
    goto :goto_2

    .line 824
    :catch_2
    move-exception v0

    .line 827
    :goto_2
    return-void
.end method

.method public addDbBackup(Lcom/sleepycat/je/util/DbBackup;)Z
    .locals 3
    .param p1, "backup"    # Lcom/sleepycat/je/util/DbBackup;

    .line 2001
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->backups:Ljava/util/Set;

    monitor-enter v0

    .line 2002
    :try_start_0
    iget-boolean v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->backupProhibited:Z

    if-eqz v1, :cond_0

    .line 2003
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2005
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->backups:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 2006
    .local v1, "added":Z
    if-eqz v1, :cond_1

    .line 2007
    .end local v1    # "added":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2009
    invoke-super {p0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addDbBackup(Lcom/sleepycat/je/util/DbBackup;)Z

    .line 2010
    const/4 v0, 0x1

    return v0

    .line 2006
    .restart local v1    # "added":Z
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "backup":Lcom/sleepycat/je/util/DbBackup;
    throw v2

    .line 2007
    .end local v1    # "added":Z
    .restart local p1    # "backup":Lcom/sleepycat/je/util/DbBackup;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized addRepConfigObserver(Lcom/sleepycat/je/rep/impl/RepEnvConfigObserver;)V
    .locals 1
    .param p1, "o"    # Lcom/sleepycat/je/rep/impl/RepEnvConfigObserver;

    monitor-enter p0

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repConfigObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 522
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local p1    # "o":Lcom/sleepycat/je/rep/impl/RepEnvConfigObserver;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public assignVLSNs(Lcom/sleepycat/je/log/entry/LogEntry;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 11
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;

    .line 890
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->bump()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 892
    .local v0, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    invoke-interface {p1}, Lcom/sleepycat/je/log/entry/LogEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v1

    .line 893
    .local v1, "itemType":B
    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_ABORT:Lcom/sleepycat/je/log/LogEntryType;

    .line 894
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v2

    if-eq v1, v2, :cond_0

    .line 895
    return-object v0

    .line 905
    :cond_0
    sget-boolean v2, Lcom/sleepycat/je/rep/impl/RepImpl;->simulatePreDTVLSNMaster:Z

    if-eqz v2, :cond_1

    .line 906
    const-wide/16 v2, 0x0

    .local v2, "dtvlsn":J
    goto :goto_0

    .line 907
    .end local v2    # "dtvlsn":J
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isNeedsAcks()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 912
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDTVLSN()J

    move-result-wide v2

    .restart local v2    # "dtvlsn":J
    goto :goto_0

    .line 919
    .end local v2    # "dtvlsn":J
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->updateDTVLSN(J)J

    move-result-wide v2

    .line 922
    .restart local v2    # "dtvlsn":J
    :goto_0
    nop

    .line 923
    invoke-interface {p1}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;

    .line 929
    .local v4, "txnEnd":Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->getDTVLSN()J

    move-result-wide v5

    .line 930
    .local v5, "checkDTVLSN":J
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_5

    .line 935
    invoke-virtual {v4, v2, v3}, Lcom/sleepycat/je/txn/VersionedWriteTxnEnd;->setDTVLSN(J)V

    .line 938
    iget-wide v7, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->prevLoggedVLSN:J

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    .line 939
    iget-wide v7, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->prevLoggedDTVLSN:J

    cmp-long v7, v2, v7

    if-ltz v7, :cond_3

    goto :goto_1

    .line 940
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DTVLSNs must be in ascending order in the stream.  prev DTVLSN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->prevLoggedDTVLSN:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " next DTVLSN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at VLSN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 944
    .local v7, "msg":Ljava/lang/String;
    invoke-static {p0, v7}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v8

    throw v8

    .line 947
    .end local v7    # "msg":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->prevLoggedVLSN:J

    .line 948
    iput-wide v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->prevLoggedDTVLSN:J

    .line 950
    return-object v0

    .line 931
    :cond_5
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NULL DTVLSN expected at VLSN:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public awaitVLSNConsistency()V
    .locals 1

    .line 2151
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->awaitConsistency()V

    .line 2152
    return-void
.end method

.method public blockTxnCompletion(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2
    .param p1, "blocker"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockLatchLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 1184
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lockInterruptibly()V

    .line 1186
    :try_start_0
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockTxnLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1189
    nop

    .line 1190
    return-void

    .line 1188
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public checkIfMaster(Lcom/sleepycat/je/txn/Locker;)V
    .locals 3
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/UnknownMasterException;,
            Lcom/sleepycat/je/rep/ReplicaWriteException;
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getStateChangeEvent()Lcom/sleepycat/je/rep/StateChangeEvent;

    move-result-object v0

    .line 1082
    .local v0, "event":Lcom/sleepycat/je/rep/StateChangeEvent;
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepImpl$1;->$SwitchMap$com$sleepycat$je$rep$ReplicatedEnvironment$State:[I

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getRepEnvState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    .line 1097
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getRepEnvState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 1093
    :pswitch_0
    new-instance v1, Lcom/sleepycat/je/rep/UnknownMasterException;

    invoke-direct {v1, p1, v0}, Lcom/sleepycat/je/rep/UnknownMasterException;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)V

    throw v1

    .line 1090
    :pswitch_1
    new-instance v1, Lcom/sleepycat/je/rep/UnknownMasterException;

    invoke-direct {v1, p1, v0}, Lcom/sleepycat/je/rep/UnknownMasterException;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)V

    throw v1

    .line 1087
    :pswitch_2
    new-instance v1, Lcom/sleepycat/je/rep/ReplicaWriteException;

    invoke-direct {v1, p1, v0}, Lcom/sleepycat/je/rep/ReplicaWriteException;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)V

    throw v1

    .line 1084
    :pswitch_3
    nop

    .line 1099
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public checkRecordExtinctionAvailable()V
    .locals 2

    .line 2311
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->isRecordExtinctionAvailable:Z

    if-eqz v0, :cond_0

    .line 2312
    return-void

    .line 2314
    :cond_0
    nop

    .line 2315
    invoke-static {}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->getMinJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    .line 2314
    const-string v1, "Record Extinction"

    invoke-direct {p0, v1, v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->checkFeatureAvailable(Ljava/lang/String;Lcom/sleepycat/je/JEVersion;)V

    .line 2316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->isRecordExtinctionAvailable:Z

    .line 2317
    return-void
.end method

.method public checkRulesForExistingEnv(ZZ)V
    .locals 3
    .param p1, "dbTreeReplicatedBit"    # Z
    .param p2, "dbTreePreserveVLSN"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1741
    if-eqz p1, :cond_1

    .line 1753
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getPreserveVLSN()Z

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1760
    return-void

    .line 1754
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->PRESERVE_RECORD_VERSION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1755
    invoke-virtual {v2}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameter may not be changed. Previous value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " New value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1758
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getPreserveVLSN()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1747
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This environment must be converted for replication. using com.sleepycat.je.rep.util.DbEnableReplication."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkTTLAvailable()V
    .locals 2

    .line 2302
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->isTTLAvailable:Z

    if-eqz v0, :cond_0

    .line 2303
    return-void

    .line 2305
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/dbi/TTL;->getMinJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    const-string v1, "TTL"

    invoke-direct {p0, v1, v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->checkFeatureAvailable(Ljava/lang/String;Lcom/sleepycat/je/JEVersion;)V

    .line 2306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->isTTLAvailable:Z

    .line 2307
    return-void
.end method

.method public clearedCachedFileChecksum(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 1567
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    .line 1568
    .local v0, "rn":Lcom/sleepycat/je/rep/impl/node/RepNode;
    if-eqz v0, :cond_0

    .line 1569
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->clearedCachedFileChecksum(Ljava/lang/String;)V

    .line 1571
    :cond_0
    return-void
.end method

.method public cloneRepConfig()Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepConfigManager;

    .line 456
    .local v0, "repConfigManager":Lcom/sleepycat/je/rep/impl/RepConfigManager;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepConfigManager;->makeReplicationConfig()Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object v1

    return-object v1
.end method

.method public cloneRepMutableConfig()Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepConfigManager;

    .line 468
    .local v0, "repConfigManager":Lcom/sleepycat/je/rep/impl/RepConfigManager;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepConfigManager;->makeReplicationConfig()Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createDatabasePreemptedException(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/OperationFailureException;
    .locals 0

    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/RepImpl;->createDatabasePreemptedException(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/rep/DatabasePreemptedException;

    move-result-object p1

    return-object p1
.end method

.method public createDatabasePreemptedException(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/rep/DatabasePreemptedException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "db"    # Lcom/sleepycat/je/Database;

    .line 2051
    new-instance v0, Lcom/sleepycat/je/rep/DatabasePreemptedException;

    invoke-direct {v0, p1, p2, p3}, Lcom/sleepycat/je/rep/DatabasePreemptedException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Database;)V

    return-object v0
.end method

.method public createGroupDb()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1855
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->isMaster()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1858
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1861
    nop

    .line 1864
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    .line 1869
    const/4 v0, 0x0

    .line 1870
    .local v0, "newDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/4 v1, 0x0

    .line 1872
    .local v1, "txn":Lcom/sleepycat/je/txn/Txn;
    :try_start_2
    new-instance v2, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v2}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 1873
    .local v2, "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    new-instance v3, Lcom/sleepycat/je/Durability;

    sget-object v4, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v5, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v6, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->NONE:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v3, v4, v5, v6}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 1876
    sget-object v3, Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;->NO_CONSISTENCY:Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/TransactionConfig;->setConsistencyPolicy(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Lcom/sleepycat/je/TransactionConfig;

    .line 1877
    new-instance v3, Lcom/sleepycat/je/rep/txn/MasterTxn;

    .line 1879
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-direct {v3, p0, v2, v4}, Lcom/sleepycat/je/rep/txn/MasterTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    move-object v1, v3

    .line 1882
    new-instance v3, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 1883
    .local v3, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1884
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/DatabaseConfig;->setTransactional(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1885
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/DatabaseConfig;->setExclusiveCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1886
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/DatabaseConfig;->setReplicated(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1888
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/dbi/DbType;->REP_GROUP:Lcom/sleepycat/je/dbi/DbType;

    .line 1889
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v3}, Lcom/sleepycat/je/dbi/DbTree;->createInternalDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    move-object v0, v4

    .line 1890
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->commit()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1891
    const/4 v1, 0x0

    .line 1893
    .end local v2    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .end local v3    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    if-eqz v1, :cond_0

    .line 1894
    :try_start_3
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 1898
    :cond_0
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1900
    .end local v0    # "newDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "txn":Lcom/sleepycat/je/txn/Txn;
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1901
    nop

    .line 1902
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0

    .line 1893
    .restart local v0    # "newDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v1    # "txn":Lcom/sleepycat/je/txn/Txn;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 1894
    :try_start_4
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->abort()V

    :cond_1
    throw v2

    .line 1865
    .end local v0    # "newDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "txn":Lcom/sleepycat/je/txn/Txn;
    :cond_2
    const-string v0, "GroupDb should not exist."

    .line 1866
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1900
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 1859
    :catch_0
    move-exception v0

    .line 1860
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 1855
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected createInternalEnvironment()Lcom/sleepycat/je/Environment;
    .locals 4

    .line 650
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepImpl$InternalReplicatedEnvironment;

    .line 651
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getEnvironmentHome()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->cloneRepConfig()Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->cloneConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sleepycat/je/rep/impl/RepImpl$InternalReplicatedEnvironment;-><init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/rep/impl/RepImpl;)V

    .line 650
    return-object v0
.end method

.method public bridge synthetic createLockPreemptedException(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Throwable;)Lcom/sleepycat/je/OperationFailureException;
    .locals 0

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/RepImpl;->createLockPreemptedException(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Throwable;)Lcom/sleepycat/je/rep/LockPreemptedException;

    move-result-object p1

    return-object p1
.end method

.method public createLockPreemptedException(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Throwable;)Lcom/sleepycat/je/rep/LockPreemptedException;
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 2042
    new-instance v0, Lcom/sleepycat/je/rep/LockPreemptedException;

    invoke-direct {v0, p1, p2}, Lcom/sleepycat/je/rep/LockPreemptedException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public bridge synthetic createLogOverwriteException(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->createLogOverwriteException(Ljava/lang/String;)Lcom/sleepycat/je/rep/LogOverwriteException;

    move-result-object p1

    return-object p1
.end method

.method public createLogOverwriteException(Ljava/lang/String;)Lcom/sleepycat/je/rep/LogOverwriteException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 2057
    new-instance v0, Lcom/sleepycat/je/rep/LogOverwriteException;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/LogOverwriteException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createRepThreadLocker()Lcom/sleepycat/je/txn/ThreadLocker;
    .locals 1

    .line 1118
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->isMaster()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sleepycat/je/rep/txn/MasterThreadLocker;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/txn/MasterThreadLocker;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sleepycat/je/rep/txn/ReplicaThreadLocker;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/txn/ReplicaThreadLocker;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    :goto_0
    return-object v0
.end method

.method public createRepUserTxn(Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1142
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->isMaster()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    invoke-virtual {p1}, Lcom/sleepycat/je/TransactionConfig;->getLocalWrite()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1145
    invoke-static {p0, p1, v0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->create(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/rep/txn/MasterTxn;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)V

    .line 1142
    :goto_0
    return-object v0
.end method

.method public createReplayTxn(J)Lcom/sleepycat/je/txn/Txn;
    .locals 7
    .param p1, "txnId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1511
    new-instance v6, Lcom/sleepycat/je/rep/txn/ReplayTxn;

    sget-object v2, Lcom/sleepycat/je/TransactionConfig;->DEFAULT:Lcom/sleepycat/je/TransactionConfig;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->envLogger:Ljava/util/logging/Logger;

    move-object v0, v6

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/txn/ReplayTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;JLjava/util/logging/Logger;)V

    return-object v6
.end method

.method public createStatManager()Lcom/sleepycat/je/statcap/StatManager;
    .locals 1

    .line 1046
    new-instance v0, Lcom/sleepycat/je/rep/RepStatManager;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/RepStatManager;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    return-object v0
.end method

.method public declared-synchronized doCloseAfterInvalid()V
    .locals 1

    monitor-enter p0

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->shutdown()V

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/RepImpl;
    :cond_0
    goto :goto_0

    .line 771
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 776
    :catch_0
    move-exception v0

    .line 779
    :goto_0
    :try_start_1
    invoke-super {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->doCloseAfterInvalid()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    monitor-exit p0

    return-void

    .line 771
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public dumpAckFeederState()Ljava/lang/String;
    .locals 2

    .line 2127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 2128
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->dumpAckFeederState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2127
    return-object v0
.end method

.method public dumpState()Ljava/lang/String;
    .locals 3

    .line 2100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2102
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2103
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    if-eqz v1, :cond_0

    .line 2106
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->dumpState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2109
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    if-eqz v1, :cond_1

    .line 2110
    const-string/jumbo v1, "vlsnRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    if-eqz v1, :cond_2

    .line 2115
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replay;->dumpState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAllowRepConvert()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->allowConvert:Z

    return v0
.end method

.method public getAuthenticator()Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;
    .locals 1

    .line 2381
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    return-object v0
.end method

.method public getCacheVLSN()Z
    .locals 1

    .line 1695
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->preserveVLSN:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->cacheVLSN:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChangeListener()Lcom/sleepycat/je/rep/StateChangeListener;
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getChangeListener()Lcom/sleepycat/je/rep/StateChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .locals 1

    .line 2196
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->initializeChannelFactory()V

    .line 2197
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    return-object v0
.end method

.method public getConsistencyPolicy(Ljava/lang/String;)Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .locals 1
    .param p1, "propValue"    # Ljava/lang/String;

    .line 1594
    invoke-static {p1}, Lcom/sleepycat/je/rep/utilint/RepUtils;->getReplicaConsistencyPolicy(Ljava/lang/String;)Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 2

    .line 1827
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->TEST_JE_VERSION:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 1828
    .local v0, "testJEVersion":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sleepycat/je/JEVersion;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public getDefaultConsistencyPolicy()Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .locals 1

    .line 1589
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->defaultConsistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    return-object v0
.end method

.method public getDiagnosticsClassName()Ljava/lang/String;
    .locals 1

    .line 431
    const-string v0, "com.sleepycat.je.rep.jmx.RepJEDiagnostics"

    return-object v0
.end method

.method public getEndOfLog()J
    .locals 2

    .line 1679
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExistingMasterTxns()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/txn/MasterTxn;",
            ">;"
        }
    .end annotation

    .line 2243
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/rep/txn/MasterTxn;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/TxnManager;->getTxns(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFeederConnectOptions()Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    .locals 4

    .line 1795
    new-instance v0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;-><init>()V

    .line 1796
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setTcpNoDelay(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_RECEIVE_BUFFER_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1798
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v2

    .line 1797
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setReceiveBufferSize(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->REPSTREAM_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1799
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setOpenTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v0

    .line 1800
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setBlocking(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v0

    .line 1795
    return-object v0
.end method

.method public getFeederFilter()Lcom/sleepycat/je/rep/stream/FeederFilter;
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    return-object v0
.end method

.method public getFeederTxns()Lcom/sleepycat/je/rep/stream/FeederTxns;
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->feederTxns:Lcom/sleepycat/je/rep/stream/FeederTxns;

    return-object v0
.end method

.method public getGroupDb()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1912
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->openGroupDb(Z)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHelperSockets()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 1840
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->HELPER_HOSTS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 1841
    .local v0, "helperHosts":Ljava/lang/String;
    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getSockets(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getHostAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 1781
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 3

    .line 1768
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 1769
    .local v0, "hostAndPort":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1770
    .local v1, "colonToken":I
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 1771
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 1770
    :goto_0
    return-object v2
.end method

.method public getIsMaster()Z
    .locals 1

    .line 1713
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isMaster()Z

    move-result v0

    return v0
.end method

.method public getLastTxnEnd()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 2207
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndexAccess:Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->getLastTxnEnd()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    return-object v0
.end method

.method public getLogRewriteListener()Lcom/sleepycat/je/rep/LogFileRewriteListener;
    .locals 1

    .line 2188
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->logRewriteListener:Lcom/sleepycat/je/rep/LogFileRewriteListener;

    return-object v0
.end method

.method public getLoggedDTVLSN()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1652
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLastTxnEnd()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 1654
    .local v0, "lastTxnEnd":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 1656
    return-wide v2

    .line 1659
    :cond_0
    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLsnForVLSN(Lcom/sleepycat/je/utilint/VLSN;I)J

    move-result-wide v4

    .line 1661
    .local v4, "lsn":J
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v1

    .line 1662
    invoke-virtual {v1, v4, v5}, Lcom/sleepycat/je/log/LogManager;->getLogEntryHandleNotFound(J)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    invoke-interface {v1}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/TxnEnd;

    .line 1664
    .local v1, "txnEnd":Lcom/sleepycat/je/txn/TxnEnd;
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/TxnEnd;->getDTVLSN()J

    move-result-wide v6

    .line 1665
    .local v6, "dtvlsn":J
    cmp-long v2, v6, v2

    if-eqz v2, :cond_1

    .line 1666
    return-wide v6

    .line 1670
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->envLogger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v8, "Pre DTVLSN log, starting with zero dtvlsn"

    invoke-static {v2, p0, v3, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1673
    return-wide v6
.end method

.method public getMonitorClassName()Ljava/lang/String;
    .locals 1

    .line 426
    const-string v0, "com.sleepycat.je.rep.jmx.RepJEMonitor"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 1578
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getNodeId()I
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 1708
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeState()Lcom/sleepycat/je/rep/impl/node/NodeState;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    return-object v0
.end method

.method public getNodeStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1

    .line 2141
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeStats:Lcom/sleepycat/je/utilint/StatGroup;

    return-object v0
.end method

.method public getPort()I
    .locals 4

    .line 1809
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 1810
    .local v0, "hostAndPort":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1811
    .local v1, "colonToken":I
    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 1812
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->DEFAULT_PORT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1813
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v2

    .line 1811
    :goto_0
    return v2
.end method

.method public getPreserveVLSN()Z
    .locals 1

    .line 1687
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->preserveVLSN:Z

    return v0
.end method

.method public getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 1

    .line 2192
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    return-object v0
.end method

.method public getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    return-object v0
.end method

.method public getRepStatGroups(Lcom/sleepycat/je/StatsConfig;Ljava/lang/Integer;)Ljava/util/Collection;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .param p2, "statKey1"    # Ljava/lang/Integer;
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

    .line 1035
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStats(Lcom/sleepycat/je/StatsConfig;Ljava/lang/Integer;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;

    move-result-object v0

    .line 1036
    .local v0, "res":Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->getStatGroups()Ljava/util/Collection;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getReplay()Lcom/sleepycat/je/rep/impl/node/Replay;
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    return-object v0
.end method

.method public getReplayFreeDiskPercent()I
    .locals 2

    .line 2062
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLAY_FREE_DISK_PERCENT:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    return v0
.end method

.method public getReplayTxnTimeout()J
    .locals 2

    .line 1583
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->replayTxnTimeout:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSocket()Ljava/net/InetSocketAddress;
    .locals 3

    .line 1818
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

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

    .line 1041
    new-instance v0, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;-><init>()V

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->getStatisticProjections()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getRepEnvState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    return-object v0
.end method

.method public getStateChangeEvent()Lcom/sleepycat/je/rep/StateChangeEvent;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getStateChangeEvent()Lcom/sleepycat/je/rep/StateChangeEvent;

    move-result-object v0

    return-object v0
.end method

.method public getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 1029
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->statKey:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStats(Lcom/sleepycat/je/StatsConfig;Ljava/lang/Integer;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;

    move-result-object v0

    return-object v0
.end method

.method public getStats(Lcom/sleepycat/je/StatsConfig;Ljava/lang/Integer;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .param p2, "contextKey"    # Ljava/lang/Integer;

    .line 1063
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->statManager:Lcom/sleepycat/je/statcap/StatManager;

    check-cast v0, Lcom/sleepycat/je/rep/RepStatManager;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/RepStatManager;->getRepStats(Lcom/sleepycat/je/StatsConfig;Ljava/lang/Integer;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;

    move-result-object v0

    return-object v0
.end method

.method public getStatsInternal(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 1054
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    if-nez v0, :cond_0

    .line 1055
    const/4 v0, 0x0

    return-object v0

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;

    move-result-object v0

    return-object v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .line 1530
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    return-object v0
.end method

.method public getVLSNProxy()Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;
    .locals 4

    .line 1522
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->VLSN_STRIDE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 1523
    .local v0, "stride":I
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->VLSN_MAX_MAP:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    .line 1524
    .local v1, "maxMappings":I
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->VLSN_MAX_DIST:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v2

    .line 1526
    .local v2, "maxDist":I
    new-instance v3, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;III)V

    return-object v3
.end method

.method public handleRestoreRequired(Lcom/sleepycat/je/log/entry/RestoreRequired;)V
    .locals 4
    .param p1, "restoreRequired"    # Lcom/sleepycat/je/log/entry/RestoreRequired;

    .line 2349
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepImpl$1;->$SwitchMap$com$sleepycat$je$log$entry$RestoreRequired$FailureType:[I

    invoke-virtual {p1}, Lcom/sleepycat/je/log/entry/RestoreRequired;->getFailureType()Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2361
    invoke-super {p0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->handleRestoreRequired(Lcom/sleepycat/je/log/entry/RestoreRequired;)V

    .line 2363
    return-void

    .line 2355
    :pswitch_0
    new-instance v0, Lcom/sleepycat/je/rep/InsufficientLogException;

    .line 2356
    invoke-virtual {p1}, Lcom/sleepycat/je/log/entry/RestoreRequired;->getProperties()Ljava/util/Properties;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->HELPER_HOSTS:Lcom/sleepycat/je/config/ConfigParam;

    .line 2357
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/InsufficientLogException;-><init>(Ljava/util/Properties;Ljava/lang/String;Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected initConfigManager(Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)Lcom/sleepycat/je/dbi/DbConfigManager;
    .locals 1
    .param p1, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p2, "repConfigProxy"    # Lcom/sleepycat/je/dbi/RepConfigProxy;

    .line 438
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepConfigManager;

    invoke-direct {v0, p1, p2}, Lcom/sleepycat/je/rep/impl/RepConfigManager;-><init>(Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)V

    return-object v0
.end method

.method protected initConfigParams(Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)V
    .locals 2
    .param p1, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p2, "repConfigProxy"    # Lcom/sleepycat/je/dbi/RepConfigProxy;

    .line 384
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->initConfigParams(Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)V

    .line 387
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_ACK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 388
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->replicaAckTimeout:I

    .line 389
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->INSUFFICIENT_REPLICAS_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 390
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->insufficientReplicasTimeout:I

    .line 391
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLAY_TXN_LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 392
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->replayTxnTimeout:I

    .line 393
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->CONSISTENCY_POLICY:Lcom/sleepycat/je/config/ConfigParam;

    .line 394
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->getReplicaConsistencyPolicy(Ljava/lang/String;)Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->defaultConsistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 395
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->PRESERVE_RECORD_VERSION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 396
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->preserveVLSN:Z

    .line 397
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->CACHE_RECORD_VERSION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 398
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->cacheVLSN:Z

    .line 399
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ALLOW_ARBITER_ACK:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 400
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->allowArbiterAck:Z

    .line 401
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ARBITER_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 402
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->isArbiter:Z

    .line 403
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SUBSCRIBER_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 404
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->isSubscriber:Z

    .line 405
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NETWORKBACKUP_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 406
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->isNetworkBackup:Z

    .line 407
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ARBITER_ACK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 408
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->arbiterAckTimeout:I

    .line 409
    return-void
.end method

.method protected initFormatter()Ljava/util/logging/Formatter;
    .locals 3

    .line 420
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 421
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    return-object v0
.end method

.method public initializeChannelFactory()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    if-eqz v0, :cond_0

    .line 635
    return-void

    .line 638
    :cond_0
    monitor-enter p0

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    if-nez v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 643
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->makeLoggerFactory(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/rep/net/LoggerFactory;

    move-result-object v1

    .line 641
    invoke-static {v0, v1}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->construct(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Lcom/sleepycat/je/rep/net/LoggerFactory;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 645
    :cond_1
    monitor-exit p0

    .line 646
    return-void

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidate(Lcom/sleepycat/je/EnvironmentFailureException;)V
    .locals 0
    .param p1, "e"    # Lcom/sleepycat/je/EnvironmentFailureException;

    .line 2202
    invoke-super {p0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Lcom/sleepycat/je/EnvironmentFailureException;)V

    .line 2203
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->unblockTxnCompletion()V

    .line 2204
    return-void
.end method

.method public invalidateBackups(J)V
    .locals 3
    .param p1, "fileNumber"    # J

    .line 2024
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->backups:Ljava/util/Set;

    monitor-enter v0

    .line 2025
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->backups:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/util/DbBackup;

    .line 2026
    .local v2, "backup":Lcom/sleepycat/je/util/DbBackup;
    invoke-virtual {v2, p1, p2}, Lcom/sleepycat/je/util/DbBackup;->invalidate(J)V

    .line 2027
    .end local v2    # "backup":Lcom/sleepycat/je/util/DbBackup;
    goto :goto_0

    .line 2028
    :cond_0
    monitor-exit v0

    .line 2029
    return-void

    .line 2028
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isArbiter()Z
    .locals 1

    .line 1729
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->isArbiter:Z

    return v0
.end method

.method public isDesignatedPrimary()Z
    .locals 2

    .line 1996
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->DESIGNATED_PRIMARY:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    return v0
.end method

.method public isMaster()Z
    .locals 2

    .line 983
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 984
    .local v0, "useNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    if-nez v0, :cond_0

    .line 985
    const/4 v1, 0x0

    return v1

    .line 987
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isMaster()Z

    move-result v1

    return v1
.end method

.method public isReplicated()Z
    .locals 1

    .line 1721
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized joinGroup(Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;)Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 3
    .param p1, "consistency"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .param p2, "initialElectionPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/ReplicaConsistencyException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_JOIN_GROUP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->start(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 614
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_0

    .line 615
    :try_start_2
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/RepNode;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/Replay;Lcom/sleepycat/je/rep/impl/node/NodeState;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 619
    :catch_0
    move-exception v0

    goto :goto_1

    .line 618
    :cond_0
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->joinGroup(Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;)Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 623
    :try_start_4
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_JOIN_GROUP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 618
    monitor-exit p0

    return-object v0

    .line 623
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/RepImpl;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 619
    :catch_1
    move-exception v0

    .line 620
    .local v0, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem attempting to join on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 621
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getSocket()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local p1    # "consistency":Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .end local p2    # "initialElectionPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 623
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local p1    # "consistency":Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .restart local p2    # "initialElectionPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    :goto_2
    :try_start_6
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->startupTracker:Lcom/sleepycat/je/dbi/StartupTracker;

    sget-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_JOIN_GROUP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/StartupTracker;->stop(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 611
    .end local p1    # "consistency":Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .end local p2    # "initialElectionPolicy":Lcom/sleepycat/je/rep/QuorumPolicy;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public makeEnvironment()Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    .locals 4

    .line 461
    new-instance v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getEnvironmentHome()Ljava/io/File;

    move-result-object v1

    .line 462
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->cloneRepConfig()Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object v2

    .line 463
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->cloneConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;-><init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 461
    return-object v0
.end method

.method protected declared-synchronized postCheckpointClose(Z)V
    .locals 1
    .param p1, "checkpointed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replay;->close()V

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    .line 701
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/RepImpl;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndexAccess:Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->closeVLSNIndex(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    monitor-exit p0

    return-void

    .line 695
    .end local p1    # "checkpointed":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public postLogAbortHook(Lcom/sleepycat/je/rep/txn/MasterTxn;)V
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;

    .line 1485
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->unlockOnce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockLatchLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1488
    :cond_0
    return-void
.end method

.method public postLogCommitAbortHook(Lcom/sleepycat/je/rep/txn/MasterTxn;)V
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;

    .line 1496
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->envLogger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post log abort hook for txn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1497
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1496
    invoke-static {v0, p0, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->unlockOnce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockLatchLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->feederTxns:Lcom/sleepycat/je/rep/stream/FeederTxns;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/stream/FeederTxns;->clearTransactionAcks(Lcom/sleepycat/je/txn/Txn;)V

    .line 1502
    return-void
.end method

.method public postLogCommitHook(Lcom/sleepycat/je/rep/txn/MasterTxn;Lcom/sleepycat/je/log/LogItem;)V
    .locals 5
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;
    .param p2, "commitItem"    # Lcom/sleepycat/je/log/LogItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/InsufficientAcksException;,
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/EnvironmentFailureException;
        }
    .end annotation

    .line 1397
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getTxnTimeout()J

    move-result-wide v0

    .line 1398
    .local v0, "txnTimeout":J
    iget v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->replicaAckTimeout:I

    .line 1400
    .local v2, "timeout":I
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->replicaAckTimeout:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 1401
    long-to-int v2, v0

    .line 1403
    :cond_0
    invoke-direct {p0, p1, p2, v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->postLogCommitHookInternal(Lcom/sleepycat/je/rep/txn/MasterTxn;Lcom/sleepycat/je/log/LogItem;I)V

    .line 1404
    return-void
.end method

.method protected postRecoveryConversion()V
    .locals 6

    .line 715
    invoke-super {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->postRecoveryConversion()V

    .line 717
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->needRepConvert:Z

    if-eqz v0, :cond_7

    .line 719
    const/4 v0, 0x0

    .line 721
    .local v0, "nameDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    sget-object v2, Lcom/sleepycat/je/dbi/DbTree;->NAME_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    move-object v0, v1

    .line 722
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 723
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setIsReplicatedBit()V

    .line 724
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 727
    :cond_0
    if-eqz v0, :cond_1

    .line 728
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbTree;->getDbNamesAndIds()Ljava/util/Map;

    move-result-object v1

    .line 734
    .local v1, "idNameMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/dbi/DatabaseId;

    .line 735
    .local v3, "id":Lcom/sleepycat/je/dbi/DatabaseId;
    const/4 v4, 0x0

    .line 737
    .local v4, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v5, v3}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    move-object v4, v5

    .line 738
    if-eqz v4, :cond_2

    .line 739
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/sleepycat/je/dbi/DbTree;->isReservedDbName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 741
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setIsReplicatedBit()V

    .line 742
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDirty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 745
    :cond_2
    if-eqz v4, :cond_3

    .line 746
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v5, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 749
    .end local v3    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v4    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_3
    goto :goto_0

    .line 745
    .restart local v3    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v4    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v2

    if-eqz v4, :cond_4

    .line 746
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v5, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    :cond_4
    throw v2

    .line 755
    .end local v3    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v4    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_5
    new-instance v2, Lcom/sleepycat/je/CheckpointConfig;

    invoke-direct {v2}, Lcom/sleepycat/je/CheckpointConfig;-><init>()V

    .line 756
    .local v2, "ckptConfig":Lcom/sleepycat/je/CheckpointConfig;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/CheckpointConfig;->setForce(Z)Lcom/sleepycat/je/CheckpointConfig;

    .line 757
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/CheckpointConfig;->setMinimizeRecoveryTime(Z)Lcom/sleepycat/je/CheckpointConfig;

    .line 758
    const-string v3, "Environment conversion"

    invoke-virtual {p0, v2, v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->invokeCheckpoint(Lcom/sleepycat/je/CheckpointConfig;Ljava/lang/String;)V

    goto :goto_1

    .line 727
    .end local v1    # "idNameMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Ljava/lang/String;>;"
    .end local v2    # "ckptConfig":Lcom/sleepycat/je/CheckpointConfig;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 728
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->dbMapTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    :cond_6
    throw v1

    .line 760
    .end local v0    # "nameDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_7
    :goto_1
    return-void
.end method

.method public preCheckpointEndFlush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 969
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    if-eqz v0, :cond_0

    .line 970
    sget-object v1, Lcom/sleepycat/je/Durability;->COMMIT_NO_SYNC:Lcom/sleepycat/je/Durability;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->flushToDatabase(Lcom/sleepycat/je/Durability;)V

    .line 972
    :cond_0
    return-void
.end method

.method public preLogAbortHook(Lcom/sleepycat/je/rep/txn/MasterTxn;)V
    .locals 0
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentFailureException;,
            Lcom/sleepycat/je/rep/ReplicaWriteException;,
            Lcom/sleepycat/je/rep/UnknownMasterException;
        }
    .end annotation

    .line 1474
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->checkIfInvalid()V

    .line 1475
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->checkIfMaster(Lcom/sleepycat/je/txn/Locker;)V

    .line 1476
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->checkBlock(Lcom/sleepycat/je/rep/txn/MasterTxn;)V

    .line 1477
    return-void
.end method

.method public preLogCommitHook(Lcom/sleepycat/je/rep/txn/MasterTxn;)V
    .locals 8
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/InsufficientReplicasException;,
            Lcom/sleepycat/je/rep/RestartRequiredException;,
            Lcom/sleepycat/je/rep/UnknownMasterException;,
            Lcom/sleepycat/je/rep/ReplicaWriteException;,
            Lcom/sleepycat/je/EnvironmentFailureException;
        }
    .end annotation

    .line 1265
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->checkIfInvalid()V

    .line 1266
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->checkIfMaster(Lcom/sleepycat/je/txn/Locker;)V

    .line 1267
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->checkBlock(Lcom/sleepycat/je/rep/txn/MasterTxn;)V

    .line 1270
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 1271
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeAckReplicaCount()I

    move-result v0

    .line 1272
    .local v0, "activeReplicaCount":I
    nop

    .line 1273
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getCommitDurability()Lcom/sleepycat/je/Durability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/Durability;->getReplicaAck()Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    move-result-object v1

    .line 1274
    .local v1, "ackPolicy":Lcom/sleepycat/je/Durability$ReplicaAckPolicy;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getRequiredAckCount()I

    move-result v2

    .line 1276
    .local v2, "requiredAckCount":I
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->envLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1277
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->envLogger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Txn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1278
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requires: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " active: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " replica acks. Commit Policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1277
    invoke-static {v3, p0, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1284
    :cond_0
    if-le v2, v0, :cond_4

    .line 1286
    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 1287
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getArbiter()Lcom/sleepycat/je/rep/arbitration/Arbiter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbitration/Arbiter;->activateArbitration()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1288
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->resetRequiredAckCount()V

    goto :goto_0

    .line 1289
    :cond_1
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->useArbiter(Lcom/sleepycat/je/rep/txn/MasterTxn;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1296
    invoke-virtual {p1, v4}, Lcom/sleepycat/je/rep/txn/MasterTxn;->setArbiterAck(Z)V

    goto :goto_0

    .line 1302
    :cond_2
    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->ALL:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 1303
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    .line 1304
    .local v3, "includeArbiters":Z
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 1305
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeAckReplicas(Z)Ljava/util/Set;

    move-result-object v4

    .line 1307
    .local v4, "activeAckRepSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-gt v2, v5, :cond_3

    goto :goto_0

    .line 1309
    :cond_3
    new-instance v5, Lcom/sleepycat/je/rep/InsufficientReplicasException;

    invoke-direct {v5, p1, v1, v2, v4}, Lcom/sleepycat/je/rep/InsufficientReplicasException;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;ILjava/util/Set;)V

    .line 1312
    .local v5, "ire":Lcom/sleepycat/je/rep/InsufficientReplicasException;
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->envLogger:Ljava/util/logging/Logger;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/InsufficientReplicasException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p0, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1313
    throw v5

    .line 1322
    .end local v3    # "includeArbiters":Z
    .end local v4    # "activeAckRepSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "ire":Lcom/sleepycat/je/rep/InsufficientReplicasException;
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->feederTxns:Lcom/sleepycat/je/rep/stream/FeederTxns;

    invoke-virtual {v3, p1}, Lcom/sleepycat/je/rep/stream/FeederTxns;->setupForAcks(Lcom/sleepycat/je/rep/txn/MasterTxn;)V

    .line 1323
    return-void
.end method

.method public preRecoveryCheckpointInit(Lcom/sleepycat/je/recovery/RecoveryInfo;)V
    .locals 12
    .param p1, "recoveryInfo"    # Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 564
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->VLSN_STRIDE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 565
    .local v0, "stride":I
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->VLSN_MAX_MAP:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    .line 566
    .local v1, "maxMappings":I
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->VLSN_MAX_DIST:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v10

    .line 572
    .local v10, "maxDist":I
    new-instance v5, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_NAME:Lcom/sleepycat/je/config/ConfigParam;

    .line 573
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;)V

    .line 575
    .local v5, "useNameIdPair":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    new-instance v11, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    sget-object v2, Lcom/sleepycat/je/dbi/DbType;->VLSN_MAP:Lcom/sleepycat/je/dbi/DbType;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v11

    move-object v3, p0

    move v6, v0

    move v7, v1

    move v8, v10

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;IIILcom/sleepycat/je/recovery/RecoveryInfo;)V

    iput-object v11, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 578
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/rep/impl/node/Replay;->preRecoveryCheckpointInit(Lcom/sleepycat/je/recovery/RecoveryInfo;)V

    .line 579
    return-void
.end method

.method public probeGroupDb()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1926
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->openGroupDb(Z)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1927
    :catch_0
    move-exception v0

    .line 1929
    .local v0, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public registerVLSN(Lcom/sleepycat/je/log/LogItem;)V
    .locals 5
    .param p1, "logItem"    # Lcom/sleepycat/je/log/LogItem;

    .line 836
    iget-object v0, p1, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 837
    .local v0, "header":Lcom/sleepycat/je/log/LogEntryHeader;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    .line 848
    .local v1, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v2

    invoke-static {v2}, Lcom/sleepycat/je/log/LogEntryType;->isSyncPoint(B)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->FIRST_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 849
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 850
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    iget-wide v3, p1, Lcom/sleepycat/je/log/LogItem;->lsn:J

    invoke-virtual {v2, v1, v3, v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->trackSyncableVLSN(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 852
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->put(Lcom/sleepycat/je/log/LogItem;)V

    .line 853
    return-void
.end method

.method public removeDbBackup(Lcom/sleepycat/je/util/DbBackup;)V
    .locals 3
    .param p1, "backup"    # Lcom/sleepycat/je/util/DbBackup;

    .line 2015
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->backups:Ljava/util/Set;

    monitor-enter v0

    .line 2016
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->backups:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 2017
    .local v1, "removed":Z
    if-eqz v1, :cond_0

    .line 2018
    .end local v1    # "removed":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2019
    invoke-super {p0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->removeDbBackup(Lcom/sleepycat/je/util/DbBackup;)V

    .line 2020
    return-void

    .line 2017
    .restart local v1    # "removed":Z
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "backup":Lcom/sleepycat/je/util/DbBackup;
    throw v2

    .line 2018
    .end local v1    # "removed":Z
    .restart local p1    # "backup":Lcom/sleepycat/je/util/DbBackup;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public repEnvConfigUpdate(Lcom/sleepycat/je/rep/impl/RepConfigManager;Lcom/sleepycat/je/rep/ReplicationMutableConfig;)V
    .locals 2
    .param p1, "configMgr"    # Lcom/sleepycat/je/rep/impl/RepConfigManager;
    .param p2, "newConfig"    # Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 504
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ALLOW_ARBITER_ACK:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 505
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/rep/impl/RepConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->allowArbiterAck:Z

    .line 507
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    if-nez v0, :cond_0

    .line 508
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getArbiter()Lcom/sleepycat/je/rep/arbitration/Arbiter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sleepycat/je/rep/arbitration/Arbiter;->processConfigChange(Lcom/sleepycat/je/rep/ReplicationMutableConfig;)V

    .line 513
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getElectionQuorum()Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;

    move-result-object v0

    .line 514
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->getElectableGroupSizeOverride()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/node/ElectionQuorum;->setElectableGroupSizeOverride(I)V

    .line 517
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLogFlusher()Lcom/sleepycat/je/log/LogFlusher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/log/LogFlusher;->configFlushTask(Lcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 519
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReplica()Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->getDbCache()Lcom/sleepycat/je/rep/impl/node/DbCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/node/DbCache;->setConfig(Lcom/sleepycat/je/rep/impl/RepConfigManager;)V

    .line 520
    return-void
.end method

.method protected resetConfigManager(Lcom/sleepycat/je/EnvironmentConfig;)Lcom/sleepycat/je/dbi/DbConfigManager;
    .locals 3
    .param p1, "newConfig"    # Lcom/sleepycat/je/EnvironmentConfig;

    .line 449
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepConfigManager;

    .line 450
    .local v0, "repConfigManager":Lcom/sleepycat/je/rep/impl/RepConfigManager;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepConfigManager;->makeReplicationConfig()Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object v1

    .line 451
    .local v1, "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepConfigManager;

    invoke-direct {v2, p1, v1}, Lcom/sleepycat/je/rep/impl/RepConfigManager;-><init>(Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)V

    return-object v2
.end method

.method public setAuthenticator(Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;)V
    .locals 0
    .param p1, "authenticator"    # Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    .line 2377
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->authenticator:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    .line 2378
    return-void
.end method

.method public setBackupProhibited(Z)V
    .locals 2
    .param p1, "backupProhibited"    # Z

    .line 2033
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->backups:Ljava/util/Set;

    monitor-enter v0

    .line 2034
    :try_start_0
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->backupProhibited:Z

    .line 2035
    monitor-exit v0

    .line 2036
    return-void

    .line 2035
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setChangeListener(Lcom/sleepycat/je/rep/StateChangeListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/sleepycat/je/rep/StateChangeListener;

    .line 991
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getChangeListener()Lcom/sleepycat/je/rep/StateChangeListener;

    move-result-object v0

    .line 992
    .local v0, "prevListener":Lcom/sleepycat/je/rep/StateChangeListener;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/impl/node/NodeState;->setChangeListener(Lcom/sleepycat/je/rep/StateChangeListener;)V

    .line 999
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    .line 1000
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NodeState;->getStateChangeEvent()Lcom/sleepycat/je/rep/StateChangeEvent;

    move-result-object v1

    .line 1003
    .local v1, "stateChangeEvent":Lcom/sleepycat/je/rep/StateChangeEvent;
    :try_start_0
    invoke-interface {p1, v1}, Lcom/sleepycat/je/rep/StateChangeListener;->stateChange(Lcom/sleepycat/je/rep/StateChangeEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    nop

    .line 1014
    return-void

    .line 1004
    :catch_0
    move-exception v2

    .line 1006
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nodeState:Lcom/sleepycat/je/rep/impl/node/NodeState;

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/rep/impl/node/NodeState;->setChangeListener(Lcom/sleepycat/je/rep/StateChangeListener;)V

    .line 1007
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->envLogger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "State Change listener exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1009
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1008
    invoke-static {v3, p0, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1011
    new-instance v3, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LISTENER_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v3, p0, v4, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setDefaultConsistencyPolicy(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V
    .locals 0
    .param p1, "policy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 1604
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->defaultConsistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 1605
    return-void
.end method

.method public setHardRecoveryInfo(Lcom/sleepycat/je/rep/RollbackException;)V
    .locals 2
    .param p1, "e"    # Lcom/sleepycat/je/rep/RollbackException;

    .line 2136
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->hardRecoveryStat:Lcom/sleepycat/je/utilint/BooleanStat;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/BooleanStat;->set(Ljava/lang/Boolean;)V

    .line 2137
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->hardRecoveryInfoStat:Lcom/sleepycat/je/utilint/StringStat;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/RollbackException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StringStat;->set(Ljava/lang/String;)V

    .line 2138
    return-void
.end method

.method public setRepMutableConfig(Lcom/sleepycat/je/rep/ReplicationMutableConfig;)V
    .locals 4
    .param p1, "config"    # Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepConfigManager;

    .line 476
    .local v0, "repConfigManager":Lcom/sleepycat/je/rep/impl/RepConfigManager;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepConfigManager;->makeReplicationConfig()Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object v1

    .line 479
    .local v1, "newConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->copyMutablePropsTo(Lcom/sleepycat/je/rep/ReplicationMutableConfig;)V

    .line 480
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepConfigManager;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->configManager:Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 481
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getEnvironmentConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/je/rep/impl/RepConfigManager;-><init>(Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)V

    move-object v0, v2

    .line 493
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repConfigObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 494
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repConfigObservers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/RepEnvConfigObserver;

    .line 495
    .local v3, "o":Lcom/sleepycat/je/rep/impl/RepEnvConfigObserver;
    invoke-interface {v3, v0, v1}, Lcom/sleepycat/je/rep/impl/RepEnvConfigObserver;->repEnvConfigUpdate(Lcom/sleepycat/je/rep/impl/RepConfigManager;Lcom/sleepycat/je/rep/ReplicationMutableConfig;)V

    .line 493
    .end local v3    # "o":Lcom/sleepycat/je/rep/impl/RepEnvConfigObserver;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 497
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public setSyncupProgress(Lcom/sleepycat/je/rep/SyncupProgress;)V
    .locals 6
    .param p1, "progress"    # Lcom/sleepycat/je/rep/SyncupProgress;

    .line 2155
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->setSyncupProgress(Lcom/sleepycat/je/rep/SyncupProgress;JJ)V

    .line 2156
    return-void
.end method

.method public setSyncupProgress(Lcom/sleepycat/je/rep/SyncupProgress;JJ)V
    .locals 6
    .param p1, "progress"    # Lcom/sleepycat/je/rep/SyncupProgress;
    .param p2, "n"    # J
    .param p4, "total"    # J

    .line 2159
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->syncupProgressListener:Lcom/sleepycat/je/ProgressListener;

    if-nez v0, :cond_0

    .line 2160
    return-void

    .line 2163
    :cond_0
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sleepycat/je/ProgressListener;->progress(Ljava/lang/Enum;JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2168
    return-void

    .line 2164
    :cond_1
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->PROGRESS_LISTENER_HALT:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v2, "ReplicatedEnvironmentConfig.syncupProgressListener: "

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized setupClose(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "errors"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 671
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 672
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->envLogger:Ljava/util/logging/Logger;

    const-string v2, "Group member database shutdown"

    .line 673
    invoke-static {v0, p0, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/RepImpl;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->shutdown()V

    .line 679
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    :cond_1
    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutting down node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->appendException(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 684
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit p0

    return-void

    .line 668
    .end local p1    # "errors":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public shutdownGroupSetup(J)V
    .locals 5
    .param p1, "timeoutMs"    # J

    .line 2072
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getAppOpenCount()I

    move-result v0

    .line 2073
    .local v0, "openCount":I
    const-string v1, "Environment has "

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    .line 2079
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getBackupCount()I

    move-result v2

    .line 2080
    .local v2, "backupCount":I
    if-gtz v2, :cond_0

    .line 2086
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->shutdownGroupOnClose(J)V

    .line 2087
    return-void

    .line 2081
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " DbBackups in progress."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2074
    .end local v2    # "backupCount":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " additional open handles."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public transferMaster(Ljava/util/Set;JZ)Ljava/lang/String;
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;JZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2092
    .local p1, "replicas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->transferMaster(Ljava/util/Set;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryTruncateVlsnHead(Lcom/sleepycat/je/utilint/VLSN;J)Z
    .locals 1
    .param p1, "deleteEnd"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "deleteFileNum"    # J

    .line 1558
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tryTruncateFromHead(Lcom/sleepycat/je/utilint/VLSN;J)Z

    move-result v0

    return v0
.end method

.method public tryVlsnHeadTruncate(J)Z
    .locals 1
    .param p1, "bytesNeeded"    # J

    .line 1549
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->tryTruncateFromHead(J)Z

    move-result v0

    return v0
.end method

.method public txnBeginHook(Lcom/sleepycat/je/rep/txn/MasterTxn;)V
    .locals 5
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1163
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->checkIfInvalid()V

    .line 1164
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getTxnTimeout()J

    move-result-wide v0

    .line 1165
    .local v0, "txnTimeout":J
    iget v2, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->insufficientReplicasTimeout:I

    .line 1167
    .local v2, "timeout":I
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->insufficientReplicasTimeout:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 1168
    long-to-int v2, v0

    .line 1171
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDurabilityQuorum()Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->ensureReplicasForCommit(Lcom/sleepycat/je/rep/txn/MasterTxn;I)V

    .line 1172
    return-void
.end method

.method public unblockTxnCompletion()V
    .locals 2

    .line 1227
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->envLogger:Ljava/util/logging/Logger;

    const-string v1, "Releasing commit block latch"

    invoke-static {v0, p0, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockTxnLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1229
    return-void
.end method

.method public updateCBVLSN(Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;)V
    .locals 5
    .param p1, "updater"    # Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;

    .line 1207
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isGlobalCBVLSNDefunct()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    return-void

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockLatchLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 1212
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1214
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepImpl;->blockTxnLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1219
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1215
    return-void

    .line 1217
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->update()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1219
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1220
    nop

    .line 1221
    return-void

    .line 1219
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method
