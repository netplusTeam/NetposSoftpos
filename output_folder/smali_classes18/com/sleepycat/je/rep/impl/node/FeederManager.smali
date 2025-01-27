.class public final Lcom/sleepycat/je/rep/impl/node/FeederManager;
.super Ljava/lang/Object;
.source "FeederManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;,
        Lcom/sleepycat/je/rep/impl/node/FeederManager$MatchElectableFeeders;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FEEDER_SERVICE:Ljava/lang/String; = "Feeder"

.field private static final FEEDER_SHUTDOWN_WAIT_MILLIS:I = 0x7530

.field private static final MOVING_AVG_PERIOD_MILLIS:J = 0x2710L

.field private static NULL_TXN_CONFIG:Lcom/sleepycat/je/TransactionConfig;

.field private static volatile delayCBVLSNUpdateHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/impl/node/NameIdPair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ackFeeders:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/rep/impl/node/Feeder;",
            ">;"
        }
    .end annotation
.end field

.field private arbiterFeederName:Ljava/lang/String;

.field private final arbiterFeeders:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final channelQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sleepycat/je/rep/net/DataChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final dtvlsnFlusher:Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;

.field private final logger:Ljava/util/logging/Logger;

.field private final managedFeederCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final nFeedersCreated:Lcom/sleepycat/je/utilint/IntStat;

.field private final nFeedersShutdown:Lcom/sleepycat/je/utilint/IntStat;

.field private final nascentFeeders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/node/Feeder;",
            ">;"
        }
    .end annotation
.end field

.field public final pollTimeoutMs:J

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

.field private repNodeShutdownException:Ljava/lang/RuntimeException;

.field private final replica95DelayMsMap:Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

.field private final replica99DelayMsMap:Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

.field private final replicaAvgDelayMsMap:Lcom/sleepycat/je/utilint/LongAvgMapStat;

.field private final replicaDelayMap:Lcom/sleepycat/je/utilint/LongDiffMapStat;

.field private final replicaLastCommitTimestampMap:Lcom/sleepycat/je/utilint/AtomicLongMapStat;

.field private final replicaLastCommitVLSNMap:Lcom/sleepycat/je/utilint/AtomicLongMapStat;

.field private final replicaMaxDelayMsMap:Lcom/sleepycat/je/utilint/LongMaxMapStat;

.field private final replicaVLSNLagMap:Lcom/sleepycat/je/utilint/LongDiffMapStat;

.field private final replicaVLSNRateMap:Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

.field shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;

.field private testDelayMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 97
    nop

    .line 980
    new-instance v0, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->NULL_TXN_CONFIG:Lcom/sleepycat/je/TransactionConfig;

    .line 982
    new-instance v1, Lcom/sleepycat/je/Durability;

    sget-object v2, Lcom/sleepycat/je/Durability$SyncPolicy;->WRITE_NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v3, Lcom/sleepycat/je/Durability$SyncPolicy;->WRITE_NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v4, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->NONE:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 985
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;)V
    .locals 9
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 120
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nascentFeeders:Ljava/util/Set;

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->managedFeederCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->ackFeeders:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->arbiterFeeders:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 161
    iput v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->testDelayMs:I

    .line 164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 220
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 221
    new-instance v0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    .line 222
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    new-instance v2, Lcom/sleepycat/je/rep/impl/node/FeederManager$MatchElectableFeeders;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager$MatchElectableFeeders;-><init>(Lcom/sleepycat/je/rep/impl/node/FeederManager;Lcom/sleepycat/je/rep/impl/node/FeederManager$1;)V

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/utilint/SizeAwaitMap$Predicate;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    .line 224
    new-instance v2, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v0, "FeederManager"

    const-string v1, "A feeder is a replication stream connection between a master and replica nodes."

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 226
    new-instance v0, Lcom/sleepycat/je/rep/utilint/IntRunningTotalStat;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->N_FEEDERS_CREATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/IntRunningTotalStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nFeedersCreated:Lcom/sleepycat/je/utilint/IntStat;

    .line 227
    new-instance v0, Lcom/sleepycat/je/rep/utilint/IntRunningTotalStat;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->N_FEEDERS_SHUTDOWN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/IntRunningTotalStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nFeedersShutdown:Lcom/sleepycat/je/utilint/IntStat;

    .line 233
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getHeartbeatInterval()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v7, v0

    .line 234
    .local v7, "validityMillis":J
    new-instance v0, Lcom/sleepycat/je/utilint/LongDiffMapStat;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_DELAY_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1, v7, v8}, Lcom/sleepycat/je/utilint/LongDiffMapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaDelayMap:Lcom/sleepycat/je/utilint/LongDiffMapStat;

    .line 236
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvgMapStat;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_AVG_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/utilint/LongAvgMapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaAvgDelayMsMap:Lcom/sleepycat/je/utilint/LongAvgMapStat;

    .line 238
    new-instance v0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_95_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    const v3, 0x3f733333    # 0.95f

    invoke-direct {v0, v2, v1, v3}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;F)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replica95DelayMsMap:Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    .line 240
    new-instance v0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_99_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    const v3, 0x3f7d70a4    # 0.99f

    invoke-direct {v0, v2, v1, v3}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;F)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replica99DelayMsMap:Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    .line 242
    new-instance v0, Lcom/sleepycat/je/utilint/LongMaxMapStat;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_MAX_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/utilint/LongMaxMapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaMaxDelayMsMap:Lcom/sleepycat/je/utilint/LongMaxMapStat;

    .line 244
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_LAST_COMMIT_TIMESTAMP_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaLastCommitTimestampMap:Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    .line 246
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_LAST_COMMIT_VLSN_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaLastCommitVLSNMap:Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    .line 248
    new-instance v0, Lcom/sleepycat/je/utilint/LongDiffMapStat;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_VLSN_LAG_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1, v7, v8}, Lcom/sleepycat/je/utilint/LongDiffMapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaVLSNLagMap:Lcom/sleepycat/je/utilint/LongDiffMapStat;

    .line 250
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    sget-object v3, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_VLSN_RATE_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2710

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaVLSNRateMap:Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    .line 253
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->FEEDER_MANAGER_POLL_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 254
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->pollTimeoutMs:J

    .line 255
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;-><init>(Lcom/sleepycat/je/rep/impl/node/FeederManager;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->dtvlsnFlusher:Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;

    .line 256
    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Lcom/sleepycat/je/rep/impl/node/RepNode;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/FeederManager;

    .line 97
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/FeederManager;

    .line 97
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->managedFeederCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/FeederManager;

    .line 97
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$400()Lcom/sleepycat/je/TransactionConfig;
    .locals 1

    .line 97
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->NULL_TXN_CONFIG:Lcom/sleepycat/je/TransactionConfig;

    return-object v0
.end method

.method public static setDelayCBVLSNUpdateHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/impl/node/NameIdPair;",
            ">;)V"
        }
    .end annotation

    .line 973
    .local p0, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Lcom/sleepycat/je/rep/impl/node/NameIdPair;>;"
    sput-object p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->delayCBVLSNUpdateHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 974
    return-void
.end method

.method private shutdownFeeders(Ljava/lang/Exception;)V
    .locals 11
    .param p1, "feederShutdownException"    # Ljava/lang/Exception;

    .line 739
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 740
    .local v0, "changed":Z
    if-nez v0, :cond_0

    .line 741
    return-void

    .line 747
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nascentFeeders:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 748
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 749
    :try_start_2
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 750
    .local v4, "feederSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/node/Feeder;>;"
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nascentFeeders:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 751
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 752
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 754
    :try_start_4
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Feeder Manager shutting down feeders. Active and nascent feeders:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 756
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Managed feeders:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->managedFeederCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 757
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 754
    invoke-static {v2, v3, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 759
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 760
    .local v3, "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nFeedersShutdown:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v5}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 761
    invoke-virtual {v3, p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->shutdown(Ljava/lang/Exception;)V

    .line 762
    .end local v3    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    goto :goto_0

    .line 774
    :cond_1
    new-instance v2, Lcom/sleepycat/je/rep/impl/node/FeederManager$1;

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x7530

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/sleepycat/je/rep/impl/node/FeederManager$1;-><init>(Lcom/sleepycat/je/rep/impl/node/FeederManager;JJ)V

    .line 781
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/FeederManager$1;->await()Z

    move-result v2

    .line 783
    .local v2, "shutdownCompleted":Z
    if-eqz v2, :cond_3

    .line 795
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    const-string v6, "Feeder Manager completed shutting down feeders."

    invoke-static {v3, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 800
    .end local v2    # "shutdownCompleted":Z
    .end local v4    # "feederSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/node/Feeder;>;"
    if-nez p1, :cond_2

    .line 805
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->clear(Ljava/lang/Exception;)V

    goto :goto_1

    .line 807
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->clear(Ljava/lang/Exception;)V

    .line 809
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nascentFeeders:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 810
    nop

    .line 811
    return-void

    .line 784
    .restart local v2    # "shutdownCompleted":Z
    .restart local v4    # "feederSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/node/Feeder;>;"
    :cond_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Feeder Manager shutdown failed to quiesce. Feeder count:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->managedFeederCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 786
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " after waiting for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x7530

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ms."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 789
    .local v3, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 790
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->fullThreadDump(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;)V

    .line 792
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "changed":Z
    .end local p1    # "feederShutdownException":Ljava/lang/Exception;
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 751
    .end local v2    # "shutdownCompleted":Z
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "feederSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/node/Feeder;>;"
    .restart local v0    # "changed":Z
    .restart local p1    # "feederShutdownException":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "changed":Z
    .end local p1    # "feederShutdownException":Ljava/lang/Exception;
    :try_start_7
    throw v4

    .line 752
    .restart local v0    # "changed":Z
    .restart local p1    # "feederShutdownException":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v0    # "changed":Z
    .end local p1    # "feederShutdownException":Ljava/lang/Exception;
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 800
    .restart local v0    # "changed":Z
    .restart local p1    # "feederShutdownException":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    if-nez p1, :cond_4

    .line 805
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v3, v1}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->clear(Ljava/lang/Exception;)V

    goto :goto_2

    .line 807
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->clear(Ljava/lang/Exception;)V

    .line 809
    :goto_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nascentFeeders:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    throw v2
.end method


# virtual methods
.method activateFeeder(Lcom/sleepycat/je/rep/impl/node/Feeder;)V
    .locals 8
    .param p1, "feeder"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 493
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nascentFeeders:Ljava/util/Set;

    monitor-enter v0

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 495
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nascentFeeders:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 496
    .local v2, "removed":Z
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->isShutdown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 499
    :cond_0
    if-eqz v2, :cond_8

    .line 500
    :try_start_3
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "replicaName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 502
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 503
    .local v4, "dup":Lcom/sleepycat/je/rep/impl/node/Feeder;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->isShutdown()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 504
    :cond_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 505
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is present in both nascent and active feeder sets"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 505
    invoke-static {v5, v6}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    .end local p1    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    throw v5

    .line 510
    .restart local p1    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v5, v3, p1}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/NodeType;->isArbiter()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 512
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->arbiterFeeders:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_3

    .line 513
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->arbiterFeeders:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 514
    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->arbiterFeederName:Ljava/lang/String;

    goto :goto_1

    .line 512
    :cond_3
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    throw v5

    .line 516
    .restart local p1    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    :cond_4
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 517
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->ackFeeders:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 520
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getActiveTransfer()Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    move-result-object v5

    .line 521
    .local v5, "xfr":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    if-eqz v5, :cond_6

    .line 522
    invoke-virtual {v5, p1}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;->addFeeder(Lcom/sleepycat/je/rep/impl/node/Feeder;)V

    .line 524
    .end local v2    # "removed":Z
    .end local v3    # "replicaName":Ljava/lang/String;
    .end local v4    # "dup":Lcom/sleepycat/je/rep/impl/node/Feeder;
    .end local v5    # "xfr":Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
    :cond_6
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 525
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 526
    return-void

    .line 501
    .restart local v2    # "removed":Z
    .restart local v3    # "replicaName":Ljava/lang/String;
    :cond_7
    :try_start_5
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    throw v4

    .line 499
    .end local v3    # "replicaName":Ljava/lang/String;
    .restart local p1    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    :cond_8
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    throw v3

    .line 524
    .end local v2    # "removed":Z
    .restart local p1    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p1    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    :try_start_6
    throw v2

    .line 525
    .restart local p1    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public activeAckArbiterCount()I
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->arbiterFeeders:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public activeAckReplicaCount()I
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->ackFeeders:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public activeAckReplicas(Z)Ljava/util/Set;
    .locals 7
    .param p1, "includeArbiters"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 454
    .local v0, "nodeNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 457
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/Feeder;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 460
    .local v4, "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v5

    .line 461
    .local v5, "replica":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 462
    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/NodeType;->isArbiter()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 466
    if-eqz p1, :cond_0

    .line 467
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getArbiter()Lcom/sleepycat/je/rep/arbitration/Arbiter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/arbitration/Arbiter;->isActive()Z

    move-result v6

    if-nez v6, :cond_2

    .line 469
    goto :goto_0

    .line 473
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/Feeder;>;"
    .end local v4    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    .end local v5    # "replica":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    goto :goto_0

    .line 475
    :cond_3
    monitor-exit v1

    .line 476
    return-object v0

    .line 475
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public activeReplicaCount()I
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->size()I

    move-result v0

    return v0
.end method

.method public activeReplicas()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    monitor-enter v0

    .line 437
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 438
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public activeReplicasMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/rep/impl/node/Feeder;",
            ">;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    monitor-enter v0

    .line 481
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    .line 482
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method awaitFeederReplicaConnections(IJ)Z
    .locals 2
    .param p1, "requiredReplicaCount"    # I
    .param p2, "insufficientReplicasTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->sizeAwait(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method decrementManagedFeederCount()V
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->managedFeederCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 1118
    return-void
.end method

.method public dumpState(Z)Ljava/lang/String;
    .locals 8
    .param p1, "acksOnly"    # Z

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    monitor-enter v1

    .line 854
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 855
    .local v2, "feeds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/Feeder;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 856
    const-string v3, "No feeders."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 858
    :cond_0
    const-string v3, "Current feeds:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 860
    .local v4, "feedEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/Feeder;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 866
    .local v5, "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    if-eqz p1, :cond_2

    .line 867
    nop

    .line 868
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v6

    .line 869
    .local v6, "nodeType":Lcom/sleepycat/je/rep/NodeType;
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/NodeType;->isSecondary()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/NodeType;->isExternal()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 870
    goto :goto_0

    .line 873
    .end local v6    # "nodeType":Lcom/sleepycat/je/rep/NodeType;
    :cond_2
    const-string v6, "\n "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    nop

    .end local v4    # "feedEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/Feeder;>;"
    .end local v5    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    goto :goto_0

    .line 877
    .end local v2    # "feeds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/Feeder;>;>;"
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 877
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getArbiterFeeder()Lcom/sleepycat/je/rep/impl/node/Feeder;
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->arbiterFeederName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/node/Feeder;

    monitor-exit v0

    return-object v1

    .line 349
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFeeder(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/node/Feeder;
    .locals 1
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/node/Feeder;

    return-object v0
.end method

.method public getFeederManagerStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 3
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 280
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNumCurrentAckFeeders(Lcom/sleepycat/je/utilint/VLSN;)I
    .locals 6
    .param p1, "commitVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 889
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 890
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDurabilityQuorum()Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    move-result-object v0

    .line 891
    .local v0, "durabilityQuorum":Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;
    const/4 v1, 0x0

    .line 892
    .local v1, "count":I
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    monitor-enter v2

    .line 893
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 894
    .local v4, "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v5

    if-gtz v5, :cond_0

    .line 896
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v5

    .line 895
    invoke-virtual {v0, v5}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->replicaAcksQualify(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 897
    add-int/lit8 v1, v1, 0x1

    .line 899
    .end local v4    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    :cond_0
    goto :goto_0

    .line 900
    :cond_1
    monitor-exit v2

    return v1

    .line 901
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getProtocolStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 5
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 288
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "BinaryProtocol"

    const-string v2, "Network traffic due to the replication stream."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v0, "protocolStats":Lcom/sleepycat/je/utilint/StatGroup;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    monitor-enter v1

    .line 292
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 293
    .local v3, "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    invoke-virtual {v3, p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getProtocolStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 294
    .end local v3    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    goto :goto_0

    .line 295
    :cond_0
    monitor-exit v1

    .line 297
    return-object v0

    .line 295
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getReplica95DelayMsMap()Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replica95DelayMsMap:Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    return-object v0
.end method

.method getReplica99DelayMsMap()Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replica99DelayMsMap:Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    return-object v0
.end method

.method getReplicaAvgDelayMsMap()Lcom/sleepycat/je/utilint/LongAvgMapStat;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaAvgDelayMsMap:Lcom/sleepycat/je/utilint/LongAvgMapStat;

    return-object v0
.end method

.method getReplicaDelayMap()Lcom/sleepycat/je/utilint/LongDiffMapStat;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaDelayMap:Lcom/sleepycat/je/utilint/LongDiffMapStat;

    return-object v0
.end method

.method getReplicaLastCommitTimestampMap()Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaLastCommitTimestampMap:Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    return-object v0
.end method

.method getReplicaLastCommitVLSNMap()Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaLastCommitVLSNMap:Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    return-object v0
.end method

.method getReplicaMaxDelayMsMap()Lcom/sleepycat/je/utilint/LongMaxMapStat;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaMaxDelayMsMap:Lcom/sleepycat/je/utilint/LongMaxMapStat;

    return-object v0
.end method

.method getReplicaVLSNLagMap()Lcom/sleepycat/je/utilint/LongDiffMapStat;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaVLSNLagMap:Lcom/sleepycat/je/utilint/LongDiffMapStat;

    return-object v0
.end method

.method getReplicaVLSNRateMap()Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->replicaVLSNRateMap:Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    return-object v0
.end method

.method public getTestDelayMs()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->testDelayMs:I

    return v0
.end method

.method incStats(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 2
    .param p1, "feederStats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 317
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    monitor-enter v0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 319
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putFeeder(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/Feeder;
    .locals 1
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "feeder"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 360
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->ackFeeders:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 361
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/node/Feeder;

    return-object v0
.end method

.method removeFeeder(Lcom/sleepycat/je/rep/impl/node/Feeder;)V
    .locals 4
    .param p1, "feeder"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 535
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 536
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "replicaName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nascentFeeders:Ljava/util/Set;

    monitor-enter v1

    .line 538
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 539
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nascentFeeders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 540
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 541
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->arbiterFeederName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 542
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->arbiterFeeders:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 544
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->arbiterFeederName:Ljava/lang/String;

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 546
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->ackFeeders:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 549
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 552
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v1

    .line 553
    .local v1, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->removeTransientNode(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 556
    :cond_2
    return-void

    .line 549
    .end local v1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "replicaName":Ljava/lang/String;
    .end local p1    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    :try_start_4
    throw v3

    .line 550
    .restart local v0    # "replicaName":Ljava/lang/String;
    .restart local p1    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 535
    .end local v0    # "replicaName":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method repNode()Lcom/sleepycat/je/rep/impl/node/RepNode;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    return-object v0
.end method

.method public resetStats()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatGroup;->clear()V

    .line 304
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 305
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    monitor-enter v1

    .line 306
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 307
    .local v2, "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->resetStats()V

    .line 308
    .end local v2    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    goto :goto_0

    .line 309
    :cond_0
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 304
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method runFeeders()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 592
    const-string v0, "Feeder manager exited. CurrentTxnEnd VLSN: "

    const-string v1, "Feeder"

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_6

    .line 596
    const/4 v2, 0x0

    .line 597
    .local v2, "feederShutdownException":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    const-string v5, "Feeder manager accepting requests."

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 601
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    iget-object v3, v3, Lcom/sleepycat/je/rep/impl/node/RepNode;->globalCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMinJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->init(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/JEVersion;)V

    .line 605
    new-instance v3, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 606
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-direct {v3, v4, v5, v6}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    .line 607
    .local v3, "updater":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCBVLSNTracker()Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;

    move-result-object v4

    .line 616
    .local v4, "tracker":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;
    :try_start_0
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->updateForMaster(Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;)V

    .line 618
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    .line 619
    invoke-virtual {v5, v1, v6}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->register(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    .line 625
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReadyLatch()Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->countDown()V

    .line 628
    :goto_0
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    iget-wide v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->pollTimeoutMs:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 629
    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/rep/net/DataChannel;

    .line 631
    .local v5, "feederReplicaChannel":Lcom/sleepycat/je/rep/net/DataChannel;
    sget-object v6, Lcom/sleepycat/je/rep/utilint/RepUtils;->CHANNEL_EOF_MARKER:Lcom/sleepycat/je/rep/net/DataChannel;

    if-ne v5, v6, :cond_0

    .line 632
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v7

    const-string v8, "Feeder manager soft shutdown."

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6, v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->resetReadyLatch(Ljava/lang/Exception;)V

    .line 724
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 725
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->shutdownFeeders(Ljava/lang/Exception;)V

    .line 726
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 728
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {v1, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 634
    return-void

    .line 638
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/stream/MasterStatus;->assertSync()V
    :try_end_1
    .catch Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    nop

    .line 643
    if-nez v5, :cond_3

    .line 644
    :try_start_2
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdownOrInvalid()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 646
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v7

    const-string v8, "Feeder manager forced shutdown."

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 723
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6, v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->resetReadyLatch(Ljava/lang/Exception;)V

    .line 724
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 725
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->shutdownFeeders(Ljava/lang/Exception;)V

    .line 726
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 728
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {v1, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 648
    return-void

    .line 657
    :cond_1
    :try_start_3
    sget-object v6, Lcom/sleepycat/je/rep/impl/node/FeederManager;->delayCBVLSNUpdateHook:Lcom/sleepycat/je/utilint/TestHook;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 658
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v7

    .line 657
    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_2

    .line 661
    nop

    .line 670
    :try_start_4
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->updateForMaster(Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;)V

    .line 673
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->dtvlsnFlusher:Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->flush()V

    .line 679
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    iget-object v6, v6, Lcom/sleepycat/je/rep/impl/node/RepNode;->globalCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->setDefunctJEVersion(Lcom/sleepycat/je/rep/impl/node/RepNode;)V
    :try_end_4
    .catch Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 681
    goto/16 :goto_0

    .line 657
    :cond_2
    :try_start_5
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "feederShutdownException":Ljava/lang/Exception;
    .end local v3    # "updater":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;
    .end local v4    # "tracker":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;
    .end local v5    # "feederReplicaChannel":Lcom/sleepycat/je/rep/net/DataChannel;
    throw v6
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 659
    .restart local v2    # "feederShutdownException":Ljava/lang/Exception;
    .restart local v3    # "updater":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;
    .restart local v4    # "tracker":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;
    .restart local v5    # "feederReplicaChannel":Lcom/sleepycat/je/rep/net/DataChannel;
    :catch_0
    move-exception v6

    .line 660
    .local v6, "e":Ljava/lang/IllegalStateException;
    goto/16 :goto_0

    .line 686
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    :try_start_6
    new-instance v6, Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-direct {v6, p0, v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;-><init>(Lcom/sleepycat/je/rep/impl/node/FeederManager;Lcom/sleepycat/je/rep/net/DataChannel;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 690
    .local v6, "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    nop

    .line 691
    :try_start_7
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nFeedersCreated:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 692
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nascentFeeders:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->managedFeederCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 694
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->startFeederThreads()V

    .line 695
    .end local v5    # "feederReplicaChannel":Lcom/sleepycat/je/rep/net/DataChannel;
    .end local v6    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    goto/16 :goto_0

    .line 687
    .restart local v5    # "feederReplicaChannel":Lcom/sleepycat/je/rep/net/DataChannel;
    :catch_1
    move-exception v6

    .line 688
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v5}, Lcom/sleepycat/je/rep/utilint/RepUtils;->shutdownChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 689
    goto/16 :goto_0

    .line 639
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 640
    .local v6, "mse":Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
    invoke-static {v5}, Lcom/sleepycat/je/rep/utilint/RepUtils;->shutdownChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 641
    nop

    .end local v2    # "feederShutdownException":Ljava/lang/Exception;
    .end local v3    # "updater":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;
    .end local v4    # "tracker":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;
    throw v6
    :try_end_7
    .catch Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 723
    .end local v5    # "feederReplicaChannel":Lcom/sleepycat/je/rep/net/DataChannel;
    .end local v6    # "mse":Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
    .restart local v2    # "feederShutdownException":Ljava/lang/Exception;
    .restart local v3    # "updater":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;
    .restart local v4    # "tracker":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;
    :catchall_0
    move-exception v5

    goto/16 :goto_3

    .line 703
    :catch_3
    move-exception v5

    .line 704
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_8
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNodeShutdownException:Ljava/lang/RuntimeException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v7, "Feeder manager unexpected interrupt"

    if-nez v6, :cond_5

    .line 714
    :try_start_9
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdown()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 715
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v7

    const-string v8, "Feeder manager interrupted for shutdown"

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 723
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6, v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->resetReadyLatch(Ljava/lang/Exception;)V

    .line 724
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 725
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->shutdownFeeders(Ljava/lang/Exception;)V

    .line 726
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 728
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {v1, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 717
    return-void

    .line 719
    :cond_4
    move-object v2, v5

    .line 720
    :try_start_a
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v8

    invoke-static {v6, v8, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 723
    .end local v5    # "e":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5, v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->resetReadyLatch(Ljava/lang/Exception;)V

    .line 724
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 725
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->shutdownFeeders(Ljava/lang/Exception;)V

    .line 726
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 728
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {v1, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 729
    goto/16 :goto_2

    .line 710
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_b
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v8

    invoke-static {v6, v8, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 712
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNodeShutdownException:Ljava/lang/RuntimeException;

    .end local v2    # "feederShutdownException":Ljava/lang/Exception;
    .end local v3    # "updater":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;
    .end local v4    # "tracker":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;
    throw v6

    .line 696
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "feederShutdownException":Ljava/lang/Exception;
    .restart local v3    # "updater":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;
    .restart local v4    # "tracker":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;
    :catch_4
    move-exception v5

    .line 697
    .local v5, "e":Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Master change: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 698
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 697
    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 700
    new-instance v6, Lcom/sleepycat/je/rep/UnknownMasterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 701
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/RepImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a master anymore"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sleepycat/je/rep/UnknownMasterException;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v2, v6

    .line 723
    .end local v5    # "e":Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5, v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->resetReadyLatch(Ljava/lang/Exception;)V

    .line 724
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 725
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->shutdownFeeders(Ljava/lang/Exception;)V

    .line 726
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    .line 730
    :goto_2
    return-void

    .line 723
    :goto_3
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6, v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->resetReadyLatch(Ljava/lang/Exception;)V

    .line 724
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 725
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->shutdownFeeders(Ljava/lang/Exception;)V

    .line 726
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 728
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {v1, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    throw v5

    .line 593
    .end local v2    # "feederShutdownException":Ljava/lang/Exception;
    .end local v3    # "updater":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;
    .end local v4    # "tracker":Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;
    :cond_6
    nop

    .line 594
    const-string v0, "Feeder manager was shutdown"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method setRepNodeShutdownException(Ljava/lang/RuntimeException;)V
    .locals 0
    .param p1, "rNSE"    # Ljava/lang/RuntimeException;

    .line 401
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNodeShutdownException:Ljava/lang/RuntimeException;

    .line 402
    return-void
.end method

.method public setTestDelayMs(I)V
    .locals 0
    .param p1, "testDelayMs"    # I

    .line 327
    iput p1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->testDelayMs:I

    .line 328
    return-void
.end method

.method public shutdownFeeder(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 2
    .param p1, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 818
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 819
    .local v0, "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    if-nez v0, :cond_0

    .line 820
    return-void

    .line 822
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->nFeedersShutdown:Lcom/sleepycat/je/utilint/IntStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 823
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->shutdown(Ljava/lang/Exception;)V

    .line 824
    return-void
.end method

.method shutdownQueue()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 569
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/RepUtils;->CHANNEL_EOF_MARKER:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 570
    return-void

    .line 564
    :cond_0
    nop

    .line 565
    const-string v0, "Rep node is still active"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public updateDTVLSN(J)V
    .locals 13
    .param p1, "heartbeatVLSN"    # J

    .line 920
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDTVLSN()J

    move-result-wide v0

    .line 921
    .local v0, "currDTVLSN":J
    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 923
    return-void

    .line 926
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDurabilityQuorum()Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    move-result-object v2

    .line 927
    .local v2, "durabilityQuorum":Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;
    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 928
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->getCurrentRequiredAckCount(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)I

    move-result v3

    .line 930
    .local v3, "durableAckCount":I
    const-wide v4, 0x7fffffffffffffffL

    .line 932
    .local v4, "min":J
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    monitor-enter v6

    .line 934
    const/4 v7, 0x0

    .line 935
    .local v7, "ackCount":I
    :try_start_0
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeFeeders:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 937
    .local v9, "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    nop

    .line 938
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->replicaAcksQualify(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 939
    goto :goto_0

    .line 942
    :cond_1
    nop

    .line 943
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v10

    .line 945
    .local v10, "replicaTxnVLSN":J
    cmp-long v12, v10, v0

    if-gtz v12, :cond_2

    .line 946
    goto :goto_0

    .line 949
    :cond_2
    cmp-long v12, v10, v4

    if-gez v12, :cond_3

    .line 950
    move-wide v4, v10

    .line 953
    :cond_3
    add-int/lit8 v7, v7, 0x1

    if-lt v7, v3, :cond_4

    .line 958
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v8, v4, v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->updateDTVLSN(J)J

    .line 959
    monitor-exit v6

    return-void

    .line 961
    .end local v9    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    .end local v10    # "replicaTxnVLSN":J
    :cond_4
    goto :goto_0

    .line 964
    :cond_5
    monitor-exit v6

    return-void

    .line 965
    .end local v7    # "ackCount":I
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
