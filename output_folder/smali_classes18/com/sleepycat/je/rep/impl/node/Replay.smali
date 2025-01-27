.class public Lcom/sleepycat/je/rep/impl/node/Replay;
.super Ljava/lang/Object;
.source "Replay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;,
        Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final RBSTATUS_FINISH:Ljava/lang/String; = "Finished rollback"

.field private static final RBSTATUS_INVISIBLE:Ljava/lang/String; = "Finished invisible setting"

.field private static final RBSTATUS_LOG_RBSTART:Ljava/lang/String; = "Logged RollbackStart entry"

.field private static final RBSTATUS_MEM_ROLLBACK:Ljava/lang/String; = "Finished in-memory rollback"

.field private static final RBSTATUS_NO_ACTIVE:Ljava/lang/String; = "No active txns, nothing to rollback"

.field private static final RBSTATUS_RANGE_EQUALS:Ljava/lang/String; = "End of range equals matchpoint, nothing to rollback"

.field private static final RBSTATUS_START:Ljava/lang/String; = "Started Rollback"


# instance fields
.field private final ackTimeoutLogThresholdNs:J

.field private final activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<",
            "Lcom/sleepycat/je/rep/txn/ReplayTxn;",
            ">;"
        }
    .end annotation
.end field

.field final delDataEntry:Lcom/sleepycat/je/DatabaseEntry;

.field private final elapsedTxn95Ms:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

.field private final elapsedTxn99Ms:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

.field private final elapsedTxnAvgMs:Lcom/sleepycat/je/utilint/LongAvgStat;

.field private final elapsedTxnMaxMs:Lcom/sleepycat/je/utilint/LongMaxStat;

.field private final groupCommit:Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;

.field private volatile heartbeatRequestEnqueueTime:J

.field private volatile heartbeatRequestMasterNow:J

.field private volatile heartbeatResponseEnqueueTime:J

.field private lastReplayedDTVLSN:J

.field private volatile lastReplayedTxn:Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;

.field private volatile lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final latestCommitLagMs:Lcom/sleepycat/je/utilint/LongStat;

.field private final logger:Ljava/util/logging/Logger;

.field private final maxCommitProcessingNanos:Lcom/sleepycat/je/utilint/LongMaxStat;

.field private final minCommitProcessingNanos:Lcom/sleepycat/je/utilint/LongMinStat;

.field private final nAborts:Lcom/sleepycat/je/utilint/LongStat;

.field private final nCommitAcks:Lcom/sleepycat/je/utilint/LongStat;

.field private final nCommitNoSyncs:Lcom/sleepycat/je/utilint/LongStat;

.field private final nCommitSyncs:Lcom/sleepycat/je/utilint/LongStat;

.field private final nCommitWriteNoSyncs:Lcom/sleepycat/je/utilint/LongStat;

.field private final nCommits:Lcom/sleepycat/je/utilint/LongStat;

.field private final nLNs:Lcom/sleepycat/je/utilint/LongStat;

.field private final nMessageQueueOverflows:Lcom/sleepycat/je/utilint/LongStat;

.field private final nNameLNs:Lcom/sleepycat/je/utilint/LongStat;

.field private final noAckSyncPolicy:Lcom/sleepycat/je/Durability$SyncPolicy;

.field private final outputQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final outputQueue95DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

.field private final outputQueue99DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

.field private final outputQueueAvgDelayMs:Lcom/sleepycat/je/utilint/LongAvgStat;

.field private final outputQueueMaxDelayMs:Lcom/sleepycat/je/utilint/LongMaxStat;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field final replayDataEntry:Lcom/sleepycat/je/DatabaseEntry;

.field final replayKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

.field private final replayLoggingThresholdNs:J

.field private final replayQueue95DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

.field private final replayQueue99DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

.field private final replayQueueAvgDelayMs:Lcom/sleepycat/je/utilint/LongAvgStat;

.field private final replayQueueMaxDelayMs:Lcom/sleepycat/je/utilint/LongMaxStat;

.field private final statistics:Lcom/sleepycat/je/utilint/StatGroup;

.field private final totalCommitProcessingNanos:Lcom/sleepycat/je/utilint/LongStat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 150
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 7
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->replayKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    .line 173
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->replayDataEntry:Lcom/sleepycat/je/DatabaseEntry;

    .line 174
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->delDataEntry:Lcom/sleepycat/je/DatabaseEntry;

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedTxn:Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;

    .line 235
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 241
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedDTVLSN:J

    .line 247
    sget-object v2, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->noAckSyncPolicy:Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 286
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatRequestEnqueueTime:J

    .line 287
    iput-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatRequestMasterNow:J

    .line 293
    iput-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatResponseEnqueueTime:J

    .line 313
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 319
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    .line 321
    .local v2, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_ACK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 322
    invoke-virtual {v2, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v4

    int-to-long v4, v4

    .line 321
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->ackTimeoutLogThresholdNs:J

    .line 331
    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_MESSAGE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 332
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 333
    .local v3, "outputQueueSize":I
    new-instance v4, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v4, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    .line 341
    new-instance v4, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;-><init>(I)V

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    .line 347
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v4}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    .line 350
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v4, "Replay"

    const-string v5, "The Replay unit applies the incoming replication stream at a Replica. These stats show the load the Replica incurs when processing updates."

    invoke-direct {v0, v4, v5}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    .line 353
    new-instance v4, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;

    invoke-direct {v4, p0, v2, v1}, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;-><init>(Lcom/sleepycat/je/rep/impl/node/Replay;Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/rep/impl/node/Replay$1;)V

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->groupCommit:Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;

    .line 355
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->nCommits:Lcom/sleepycat/je/utilint/LongStat;

    .line 356
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->nCommitAcks:Lcom/sleepycat/je/utilint/LongStat;

    .line 357
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->nCommitSyncs:Lcom/sleepycat/je/utilint/LongStat;

    .line 358
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_NO_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->nCommitNoSyncs:Lcom/sleepycat/je/utilint/LongStat;

    .line 359
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_WRITE_NO_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->nCommitWriteNoSyncs:Lcom/sleepycat/je/utilint/LongStat;

    .line 361
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_ABORTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->nAborts:Lcom/sleepycat/je/utilint/LongStat;

    .line 362
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_NAME_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->nNameLNs:Lcom/sleepycat/je/utilint/LongStat;

    .line 363
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->nLNs:Lcom/sleepycat/je/utilint/LongStat;

    .line 364
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_MESSAGE_QUEUE_OVERFLOWS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->nMessageQueueOverflows:Lcom/sleepycat/je/utilint/LongStat;

    .line 366
    new-instance v1, Lcom/sleepycat/je/rep/utilint/LongMinZeroStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->MIN_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/rep/utilint/LongMinZeroStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->minCommitProcessingNanos:Lcom/sleepycat/je/utilint/LongMinStat;

    .line 368
    new-instance v1, Lcom/sleepycat/je/utilint/LongMaxZeroStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->MAX_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongMaxZeroStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->maxCommitProcessingNanos:Lcom/sleepycat/je/utilint/LongMaxStat;

    .line 370
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->TOTAL_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->totalCommitProcessingNanos:Lcom/sleepycat/je/utilint/LongStat;

    .line 372
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->LATEST_COMMIT_LAG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->latestCommitLagMs:Lcom/sleepycat/je/utilint/LongStat;

    .line 374
    new-instance v1, Lcom/sleepycat/je/utilint/LongAvgStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_AVG_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongAvgStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->replayQueueAvgDelayMs:Lcom/sleepycat/je/utilint/LongAvgStat;

    .line 376
    new-instance v1, Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_95_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const v5, 0x3f733333    # 0.95f

    invoke-direct {v1, v0, v4, v5}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;F)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->replayQueue95DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    .line 378
    new-instance v1, Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_99_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const v6, 0x3f7d70a4    # 0.99f

    invoke-direct {v1, v0, v4, v6}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;F)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->replayQueue99DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    .line 380
    new-instance v1, Lcom/sleepycat/je/utilint/LongMaxStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_MAX_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongMaxStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->replayQueueMaxDelayMs:Lcom/sleepycat/je/utilint/LongMaxStat;

    .line 383
    new-instance v1, Lcom/sleepycat/je/utilint/LongAvgStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_AVG_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongAvgStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->outputQueueAvgDelayMs:Lcom/sleepycat/je/utilint/LongAvgStat;

    .line 385
    new-instance v1, Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_95_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4, v5}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;F)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->outputQueue95DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    .line 387
    new-instance v1, Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_99_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4, v6}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;F)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->outputQueue99DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    .line 389
    new-instance v1, Lcom/sleepycat/je/utilint/LongMaxStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_MAX_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongMaxStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->outputQueueMaxDelayMs:Lcom/sleepycat/je/utilint/LongMaxStat;

    .line 392
    new-instance v1, Lcom/sleepycat/je/utilint/LongAvgStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_AVG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongAvgStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->elapsedTxnAvgMs:Lcom/sleepycat/je/utilint/LongAvgStat;

    .line 393
    new-instance v1, Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_95_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4, v5}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;F)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->elapsedTxn95Ms:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    .line 395
    new-instance v1, Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_99_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4, v6}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;F)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->elapsedTxn99Ms:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    .line 397
    new-instance v1, Lcom/sleepycat/je/utilint/LongMaxStat;

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_MAX_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v4}, Lcom/sleepycat/je/utilint/LongMaxStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->elapsedTxnMaxMs:Lcom/sleepycat/je/utilint/LongMaxStat;

    .line 399
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLAY_LOGGING_THRESHOLD:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 400
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    int-to-long v4, v1

    .line 399
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->replayLoggingThresholdNs:J

    .line 401
    return-void

    .line 314
    .end local v2    # "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local v3    # "outputQueueSize":I
    :cond_0
    nop

    .line 315
    const-string v0, "Replay created with readonly ReplicatedEnvironment"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method static synthetic access$600(Lcom/sleepycat/je/rep/impl/node/Replay;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replay;

    .line 150
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sleepycat/je/rep/impl/node/Replay;)Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replay;

    .line 150
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method

.method private applyLN(Lcom/sleepycat/je/rep/txn/ReplayTxn;Lcom/sleepycat/je/rep/stream/InputWireRecord;)V
    .locals 17
    .param p1, "repTxn"    # Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .param p2, "wireRecord"    # Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1080
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 1081
    .local v3, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v4

    .line 1087
    .local v4, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v5

    const-wide/16 v7, -0x101

    cmp-long v0, v5, v7

    if-nez v0, :cond_0

    .line 1088
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->noteRepGroupDbChange()V

    .line 1097
    :cond_0
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1098
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReplica()Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->getDbCache()Lcom/sleepycat/je/rep/impl/node/DbCache;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/sleepycat/je/rep/impl/node/DbCache;->get(Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    .line 1100
    .local v5, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1102
    new-instance v0, Lcom/sleepycat/je/log/ReplicationContext;

    .line 1103
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/sleepycat/je/log/ReplicationContext;-><init>(Lcom/sleepycat/je/utilint/VLSN;)V

    move-object v6, v0

    .line 1105
    .local v6, "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    const/4 v0, 0x0

    invoke-static {v5, v2, v0}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v15

    .line 1109
    .local v15, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v10

    .line 1112
    .local v10, "ln":Lcom/sleepycat/je/tree/LN;
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v14, " key="

    if-eqz v0, :cond_2

    .line 1113
    :try_start_1
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isEmbeddedLN()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1114
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 1116
    :cond_1
    nop

    .line 1117
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[#25288] emb="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1118
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isEmbeddedLN()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1119
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v8

    invoke-static {v8}, Lcom/sleepycat/je/tree/Key;->getNoFormatString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1120
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v8

    invoke-static {v8}, Lcom/sleepycat/je/tree/Key;->getNoFormatString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vlsn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1121
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1116
    invoke-static {v0, v7}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v3    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v6    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v15    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1105
    .end local v10    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v3    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .restart local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v6    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local v15    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catchall_0
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v16, v4

    move-object v4, v0

    goto/16 :goto_4

    .line 1124
    .restart local v10    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_4

    .line 1130
    :try_start_3
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->replayKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1132
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->replayKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v7, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->delDataEntry:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v8, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    sget-object v9, Lcom/sleepycat/je/dbi/SearchMode;->SET:Lcom/sleepycat/je/dbi/SearchMode;

    invoke-static {v15, v0, v7, v8, v9}, Lcom/sleepycat/je/DbInternal;->searchForReplay(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/dbi/SearchMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1136
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v0, :cond_3

    .line 1137
    nop

    .line 1138
    invoke-static {v15, v6}, Lcom/sleepycat/je/DbInternal;->deleteWithRepContext(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v7

    move-object v0, v14

    goto :goto_1

    .line 1136
    :cond_3
    move-object v7, v0

    move-object v0, v14

    goto :goto_1

    .line 1141
    .end local v0    # "result":Lcom/sleepycat/je/OperationResult;
    :cond_4
    :try_start_4
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->replayKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1142
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->replayDataEntry:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v10}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1144
    iget-object v8, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->replayKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v9, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->replayDataEntry:Lcom/sleepycat/je/DatabaseEntry;

    .line 1146
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getExpiration()I

    move-result v11

    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isExpirationInHours()Z

    move-result v12

    sget-object v13, Lcom/sleepycat/je/dbi/PutMode;->OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    .line 1144
    move-object v7, v15

    move-object v0, v14

    move-object v14, v6

    invoke-static/range {v7 .. v14}, Lcom/sleepycat/je/DbInternal;->putForReplay(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/tree/LN;IZLcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v7

    .line 1164
    .local v7, "result":Lcom/sleepycat/je/OperationResult;
    :goto_1
    if-nez v7, :cond_8

    .line 1166
    iget-object v8, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1167
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/sleepycat/je/rep/impl/RepImpl;->getExtinctionState(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v8

    .line 1169
    .local v8, "extinctionState":Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    iget-object v9, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1170
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getExpiration()I

    move-result v11

    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isExpirationInHours()Z

    move-result v12

    iget-object v13, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1171
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/impl/RepImpl;->getTtlClockTolerance()I

    move-result v13

    int-to-long v13, v13

    .line 1169
    invoke-virtual {v9, v11, v12, v13, v14}, Lcom/sleepycat/je/rep/impl/RepImpl;->expiresWithin(IZJ)Z

    move-result v9

    .line 1173
    .local v9, "isExpired":Z
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getExpiration()I

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v11, :cond_5

    :try_start_5
    const-string v11, "none"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1176
    :cond_5
    :try_start_6
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getExpiration()I

    move-result v11

    .line 1177
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isExpirationInHours()Z

    move-result v12

    .line 1175
    invoke-static {v11, v12}, Lcom/sleepycat/je/dbi/TTL;->formatExpiration(IZ)Ljava/lang/String;

    move-result-object v11

    :goto_2
    nop

    .line 1179
    .local v11, "expTime":Ljava/lang/String;
    if-nez v9, :cond_7

    sget-object v12, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->NOT_EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    if-eq v8, v12, :cond_6

    move-object/from16 v2, p2

    move-object/from16 v16, v4

    goto :goto_3

    .line 1181
    :cond_6
    new-instance v12, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v13, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v14, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INCOMPLETE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v16, v4

    .end local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .local v16, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :try_start_7
    const-string v4, "Replicated operation could  not be applied.  vlsn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1185
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " expirationTime="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1188
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v2, p2

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v13, v14, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .end local v3    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v6    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v15    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v16    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    throw v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1105
    .end local v7    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v8    # "extinctionState":Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    .end local v9    # "isExpired":Z
    .end local v10    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v11    # "expTime":Ljava/lang/String;
    .restart local v3    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .restart local v5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v6    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local v15    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v16    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catchall_1
    move-exception v0

    move-object v4, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v2, p2

    move-object v4, v0

    goto :goto_4

    .line 1179
    .end local v16    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v7    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v8    # "extinctionState":Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    .restart local v9    # "isExpired":Z
    .restart local v10    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v11    # "expTime":Ljava/lang/String;
    :cond_7
    move-object/from16 v2, p2

    move-object/from16 v16, v4

    .end local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v16    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    goto :goto_3

    .line 1164
    .end local v8    # "extinctionState":Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    .end local v9    # "isExpired":Z
    .end local v11    # "expTime":Ljava/lang/String;
    .end local v16    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_8
    move-object/from16 v2, p2

    move-object/from16 v16, v4

    .line 1192
    .end local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v7    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v10    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v16    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :goto_3
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1199
    .end local v15    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_9
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_EXTINCT_SCAN_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1202
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v0

    .line 1203
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getData()[B

    move-result-object v7

    .line 1202
    invoke-virtual {v0, v4, v7}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->replay([B[B)V

    .line 1205
    :cond_a
    return-void

    .line 1105
    .end local v16    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local v15    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_3
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v16, v4

    move-object v4, v0

    .end local v3    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v4    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v6    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v15    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :goto_4
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1192
    .restart local v3    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .restart local v5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v6    # "repContext":Lcom/sleepycat/je/log/ReplicationContext;
    .restart local v15    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v16    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .restart local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catchall_4
    move-exception v0

    move-object v7, v0

    if-eqz v15, :cond_b

    :try_start_a
    invoke-virtual {v15}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v8, v0

    invoke-virtual {v4, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_5
    throw v7
.end method

.method private applyNameLN(Lcom/sleepycat/je/rep/txn/ReplayTxn;Lcom/sleepycat/je/rep/stream/InputWireRecord;)V
    .locals 18
    .param p1, "repTxn"    # Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .param p2, "wireRecord"    # Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 951
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/sleepycat/je/log/entry/NameLNLogEntry;

    .line 952
    .local v9, "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    invoke-virtual {v9}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/sleepycat/je/tree/NameLN;

    .line 954
    .local v10, "nameLN":Lcom/sleepycat/je/tree/NameLN;
    invoke-virtual {v9}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/utilint/StringUtils;->fromUTF8([B)Ljava/lang/String;

    move-result-object v11

    .line 956
    .local v11, "databaseName":Ljava/lang/String;
    new-instance v0, Lcom/sleepycat/je/log/DbOpReplicationContext;

    .line 957
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-direct {v0, v2, v9}, Lcom/sleepycat/je/log/DbOpReplicationContext;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/log/entry/NameLNLogEntry;)V

    move-object v12, v0

    .line 959
    .local v12, "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    invoke-virtual {v12}, Lcom/sleepycat/je/log/DbOpReplicationContext;->getDbOperationType()Lcom/sleepycat/je/log/entry/DbOperationType;

    move-result-object v13

    .line 960
    .local v13, "opType":Lcom/sleepycat/je/log/entry/DbOperationType;
    const/4 v14, 0x0

    .line 962
    .local v14, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/Replay$2;->$SwitchMap$com$sleepycat$je$log$entry$DbOperationType:[I

    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/DbOperationType;->ordinal()I

    move-result v2

    aget v0, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v15, " not found on the Replica."

    const-string v7, " Id: "

    const-string v6, "Database: "

    packed-switch v0, :pswitch_data_0

    .line 1064
    move-object/from16 v17, v9

    .end local v9    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .local v17, "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_3

    .line 1045
    .end local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .restart local v9    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    :pswitch_0
    nop

    .line 1046
    :try_start_2
    invoke-virtual {v12}, Lcom/sleepycat/je/log/DbOpReplicationContext;->getCreateConfig()Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    move-result-object v0

    iget-object v2, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->getReplicaConfig(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    .line 1049
    .local v0, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    iget-object v2, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    invoke-virtual {v10}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    move-object v14, v2

    .line 1050
    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1051
    .local v2, "dbName":Ljava/lang/String;
    iget-object v3, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    .line 1052
    invoke-virtual {v3, v8, v2, v12}, Lcom/sleepycat/je/dbi/DbTree;->updateNameLN(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/log/DbOpReplicationContext;)V

    .line 1055
    iget-object v3, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1056
    invoke-virtual {v14, v8, v2, v0, v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setConfigProperties(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 1058
    iget-object v3, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/sleepycat/je/dbi/DbTree;->modifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1060
    move-object/from16 v17, v9

    goto/16 :goto_2

    .line 1026
    .end local v0    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v2    # "dbName":Ljava/lang/String;
    :pswitch_1
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    invoke-virtual {v10}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v0

    .line 1028
    :try_start_3
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1029
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    .line 1030
    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v3, p1

    move-object v5, v11

    move-object v6, v10

    move-object v7, v12

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/dbi/DbTree;->renameReplicaDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/DbOpReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    move-object v14, v0

    .line 1032
    invoke-static {v8, v14, v11}, Lcom/sleepycat/je/dbi/TriggerManager;->runRenameTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1039
    move-object/from16 v17, v9

    goto/16 :goto_2

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database rename from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1036
    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed, name not found on the Replica."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v9    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .end local v10    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    .end local v11    # "databaseName":Ljava/lang/String;
    .end local v12    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    .end local v13    # "opType":Lcom/sleepycat/je/log/entry/DbOperationType;
    .end local v14    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1069
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    .restart local v9    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .restart local v10    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    .restart local v11    # "databaseName":Ljava/lang/String;
    .restart local v12    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    .restart local v13    # "opType":Lcom/sleepycat/je/log/entry/DbOperationType;
    .restart local v14    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catchall_0
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v17, v9

    goto/16 :goto_4

    .line 1008
    :pswitch_2
    :try_start_5
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    .line 1009
    invoke-virtual {v12}, Lcom/sleepycat/je/log/DbOpReplicationContext;->getTruncateOldDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v14, v0

    .line 1011
    :try_start_6
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1012
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2
    :try_end_6
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v5, 0x0

    .line 1013
    move-object/from16 v3, p1

    move-object v4, v11

    move-object/from16 v16, v6

    move-object v6, v10

    move-object/from16 v17, v9

    move-object v9, v7

    .end local v9    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .restart local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    move-object v7, v12

    :try_start_7
    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/dbi/DbTree;->truncateReplicaDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;ZLcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/DbOpReplicationContext;)Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;

    move-result-object v0

    .line 1014
    .local v0, "result":Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;
    iget-object v2, v0, Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;->newDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-static {v8, v2}, Lcom/sleepycat/je/dbi/TriggerManager;->runTruncateTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_7
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1020
    .end local v0    # "result":Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;
    goto/16 :goto_2

    .line 1015
    :catch_1
    move-exception v0

    goto :goto_0

    .end local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .restart local v9    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    :catch_2
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v17, v9

    move-object v9, v7

    .line 1016
    .end local v9    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .local v0, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    .restart local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    :goto_0
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v16

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1017
    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1018
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1017
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v10    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    .end local v11    # "databaseName":Ljava/lang/String;
    .end local v12    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    .end local v13    # "opType":Lcom/sleepycat/je/log/entry/DbOperationType;
    .end local v14    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .end local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    throw v2

    .line 1069
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    .restart local v9    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .restart local v10    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    .restart local v11    # "databaseName":Ljava/lang/String;
    .restart local v12    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    .restart local v13    # "opType":Lcom/sleepycat/je/log/entry/DbOperationType;
    .restart local v14    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v9

    move-object/from16 v2, p2

    goto/16 :goto_4

    .line 993
    :pswitch_3
    move-object/from16 v17, v9

    move-object v9, v7

    move-object v7, v6

    .end local v9    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .restart local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    invoke-virtual {v10}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v14, v0

    .line 995
    :try_start_9
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    .line 996
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    invoke-virtual {v0, v8, v11, v2, v12}, Lcom/sleepycat/je/dbi/DbTree;->removeReplicaDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/log/DbOpReplicationContext;)V

    .line 997
    invoke-static {v8, v14}, Lcom/sleepycat/je/dbi/TriggerManager;->runRemoveTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_9
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1003
    goto/16 :goto_2

    .line 998
    :catch_3
    move-exception v0

    .line 999
    .restart local v0    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1000
    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1001
    invoke-virtual {v10}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1000
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v10    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    .end local v11    # "databaseName":Ljava/lang/String;
    .end local v12    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    .end local v13    # "opType":Lcom/sleepycat/je/log/entry/DbOperationType;
    .end local v14    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .end local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    throw v2

    .line 965
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    .restart local v9    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .restart local v10    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    .restart local v11    # "databaseName":Ljava/lang/String;
    .restart local v12    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    .restart local v13    # "opType":Lcom/sleepycat/je/log/entry/DbOperationType;
    .restart local v14    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :pswitch_4
    move-object v7, v6

    move-object/from16 v17, v9

    .line 966
    .end local v9    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .restart local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    invoke-virtual {v12}, Lcom/sleepycat/je/log/DbOpReplicationContext;->getCreateConfig()Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    move-result-object v0

    iget-object v2, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->getReplicaConfig(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v5

    .line 968
    .local v5, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    .line 969
    move-object/from16 v3, p1

    move-object v4, v11

    move-object v6, v10

    move-object v9, v7

    move-object v7, v12

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/dbi/DbTree;->createReplicaDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/tree/NameLN;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    move-object v14, v0

    .line 976
    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v2

    const-wide/16 v6, -0x101

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/dbi/DbType;->REP_GROUP:Lcom/sleepycat/je/dbi/DbType;

    .line 977
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v0

    .line 978
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 979
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/sleepycat/je/dbi/DbType;->REP_GROUP:Lcom/sleepycat/je/dbi/DbType;

    .line 981
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is associated with id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 983
    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and not the reserved database id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 980
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v10    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    .end local v11    # "databaseName":Ljava/lang/String;
    .end local v12    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    .end local v13    # "opType":Lcom/sleepycat/je/log/entry/DbOperationType;
    .end local v14    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .end local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    throw v0

    .line 988
    .restart local v10    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    .restart local v11    # "databaseName":Ljava/lang/String;
    .restart local v12    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    .restart local v13    # "opType":Lcom/sleepycat/je/log/entry/DbOperationType;
    .restart local v14    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .restart local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-static {v8, v14, v0}, Lcom/sleepycat/je/dbi/TriggerManager;->runOpenTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 989
    nop

    .line 1069
    .end local v5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :goto_2
    if-eqz v14, :cond_2

    .line 1070
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1073
    :cond_2
    return-void

    .line 1069
    :catchall_2
    move-exception v0

    move-object/from16 v2, p2

    goto :goto_4

    .line 1064
    :goto_3
    :try_start_b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal database op type of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1065
    invoke-virtual {v13}, Lcom/sleepycat/je/log/entry/DbOperationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v2, p2

    :try_start_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " database="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v10    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    .end local v11    # "databaseName":Ljava/lang/String;
    .end local v12    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    .end local v13    # "opType":Lcom/sleepycat/je/log/entry/DbOperationType;
    .end local v14    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .end local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1069
    .restart local v10    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    .restart local v11    # "databaseName":Ljava/lang/String;
    .restart local v12    # "repContext":Lcom/sleepycat/je/log/DbOpReplicationContext;
    .restart local v13    # "opType":Lcom/sleepycat/je/log/entry/DbOperationType;
    .restart local v14    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .restart local p1    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local p2    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catchall_3
    move-exception v0

    goto :goto_4

    .end local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .restart local v9    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    :catchall_4
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v17, v9

    .end local v9    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .restart local v17    # "nameLNEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    :goto_4
    if-eqz v14, :cond_3

    .line 1070
    iget-object v3, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    :cond_3
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private canRefreshGroup(Lcom/sleepycat/je/rep/txn/ReplayTxn;)Z
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/ReplayTxn;

    .line 867
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    monitor-enter v0

    .line 869
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/txn/ReplayTxn;

    .line 870
    .local v2, "atxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    if-ne v2, p1, :cond_0

    .line 871
    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getRepGroupDbChange()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 874
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 876
    .end local v2    # "atxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    :cond_1
    goto :goto_0

    .line 877
    :cond_2
    monitor-exit v0

    .line 878
    const/4 v0, 0x1

    return v0

    .line 877
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkRemoved(Lcom/sleepycat/je/rep/txn/ReplayTxn;)Z
    .locals 3
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/ReplayTxn;

    .line 1383
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->get(J)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1385
    const/4 v0, 0x0

    return v0

    .line 1389
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private copyActiveTxns()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/rep/txn/ReplayTxn;",
            ">;"
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private dumpActiveTxns(J)Ljava/lang/String;
    .locals 6
    .param p1, "matchpointLsn"    # J

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1356
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "matchpointLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replay;->copyActiveTxns()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/txn/ReplayTxn;

    .line 1359
    .local v2, "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    const-string/jumbo v3, "txn id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1360
    const-string v3, " locks="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getWriteLockIds()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1361
    const-string v3, "lastLogged="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getLastLsn()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    .end local v2    # "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    goto :goto_0

    .line 1366
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFileNames(Ljava/util/List;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1370
    .local p1, "lsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1371
    .local v0, "fileNums":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1373
    .local v1, "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    .line 1374
    .local v3, "lsn":J
    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1375
    .end local v3    # "lsn":J
    goto :goto_0

    .line 1376
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1377
    .local v3, "fileNum":J
    new-instance v5, Ljava/io/File;

    invoke-static {v3, v4}, Lcom/sleepycat/je/log/FileManager;->getFileName(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1378
    .end local v3    # "fileNum":J
    goto :goto_1

    .line 1379
    :cond_1
    return-object v1
.end method

.method private logReplay(Lcom/sleepycat/je/rep/txn/ReplayTxn;ZLcom/sleepycat/je/Durability$SyncPolicy;)V
    .locals 5
    .param p1, "repTxn"    # Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .param p2, "needsAck"    # Z
    .param p3, "syncPolicy"    # Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 832
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    return-void

    .line 836
    :cond_0
    const-string v0, "Replay: got commit for txn="

    if-eqz p2, :cond_1

    .line 837
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 838
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", ack needed, replica sync policy="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " vlsn="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-static {v1, v2, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 843
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 844
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ack not needed vlsn="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-static {v1, v2, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 848
    :goto_0
    return-void
.end method

.method private updateCommitStats(ZLcom/sleepycat/je/Durability$SyncPolicy;JJJJ)V
    .locals 13
    .param p1, "needsAck"    # Z
    .param p2, "syncPolicy"    # Lcom/sleepycat/je/Durability$SyncPolicy;
    .param p3, "startTimeNanos"    # J
    .param p5, "masterCommitTimeMs"    # J
    .param p7, "replicaCommitTimeMs"    # J
    .param p9, "masterTxnTimeMs"    # J

    .line 539
    move-object v0, p0

    move-object v1, p2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 540
    .local v2, "now":J
    sub-long v4, v2, p3

    .line 542
    .local v4, "commitNanos":J
    iget-wide v6, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->ackTimeoutLogThresholdNs:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 543
    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 544
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v7, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Replay commit time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/32 v9, 0xf4240

    div-long v11, v4, v9

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " ms exceeded log threshold: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v11, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->ackTimeoutLogThresholdNs:J

    div-long/2addr v11, v9

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 545
    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 551
    :cond_0
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->nCommits:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 553
    if-eqz p1, :cond_1

    .line 554
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->nCommitAcks:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 557
    :cond_1
    sget-object v6, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-ne v1, v6, :cond_2

    .line 558
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->nCommitSyncs:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    goto :goto_0

    .line 559
    :cond_2
    sget-object v6, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-ne v1, v6, :cond_3

    .line 560
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->nCommitNoSyncs:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    goto :goto_0

    .line 561
    :cond_3
    sget-object v6, Lcom/sleepycat/je/Durability$SyncPolicy;->WRITE_NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-ne v1, v6, :cond_4

    .line 562
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->nCommitWriteNoSyncs:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 568
    :goto_0
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->totalCommitProcessingNanos:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v6, v4, v5}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 569
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->minCommitProcessingNanos:Lcom/sleepycat/je/utilint/LongMinStat;

    invoke-virtual {v6, v4, v5}, Lcom/sleepycat/je/utilint/LongMinStat;->setMin(J)V

    .line 570
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->maxCommitProcessingNanos:Lcom/sleepycat/je/utilint/LongMaxStat;

    invoke-virtual {v6, v4, v5}, Lcom/sleepycat/je/utilint/LongMaxStat;->setMax(J)Z

    .line 572
    move-wide/from16 v6, p9

    invoke-direct {p0, v6, v7}, Lcom/sleepycat/je/rep/impl/node/Replay;->updateElapsedTxnStats(J)V

    .line 580
    sub-long v8, p7, p5

    .line 581
    .local v8, "replicaLagMs":J
    iget-object v10, v0, Lcom/sleepycat/je/rep/impl/node/Replay;->latestCommitLagMs:Lcom/sleepycat/je/utilint/LongStat;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sleepycat/je/utilint/LongStat;->set(Ljava/lang/Long;)V

    .line 582
    return-void

    .line 564
    .end local v8    # "replicaLagMs":J
    :cond_4
    move-wide/from16 v6, p9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown sync policy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 565
    invoke-static {v8}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v8

    throw v8
.end method

.method private updateDTVLSN(Lcom/sleepycat/je/txn/TxnEnd;)J
    .locals 9
    .param p1, "txnEnd"    # Lcom/sleepycat/je/txn/TxnEnd;

    .line 769
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/TxnEnd;->getDTVLSN()J

    move-result-wide v0

    .line 771
    .local v0, "txnDTVLSN":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-string v5, " at VLSN:"

    if-nez v4, :cond_1

    .line 775
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->setDTVLSN(J)J

    move-result-wide v6

    .line 776
    .local v6, "prevDTVLSN":J
    cmp-long v2, v6, v2

    if-eqz v2, :cond_0

    .line 777
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transitioned to pre DTVLSN stream. DTVLSN:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 783
    :cond_0
    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedDTVLSN:J

    .line 784
    return-wide v0

    .line 788
    .end local v6    # "prevDTVLSN":J
    :cond_1
    iget-wide v6, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedDTVLSN:J

    cmp-long v4, v0, v6

    if-ltz v4, :cond_3

    .line 796
    cmp-long v4, v6, v2

    if-nez v4, :cond_2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 798
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transitioned to post DTVLSN stream. DTVLSN:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 804
    :cond_2
    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedDTVLSN:J

    .line 805
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->setDTVLSN(J)J

    .line 807
    return-wide v0

    .line 789
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTVLSNs must be in ascending order in the stream.  prev DTVLSN:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedDTVLSN:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " next DTVLSN:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at VLSN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 792
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 793
    .local v2, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v3, v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3
.end method

.method private updateElapsedTxnStats(J)V
    .locals 1
    .param p1, "masterTxnTimeMs"    # J

    .line 585
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->elapsedTxnAvgMs:Lcom/sleepycat/je/utilint/LongAvgStat;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/utilint/LongAvgStat;->add(J)V

    .line 586
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->elapsedTxn95Ms:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->add(J)V

    .line 587
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->elapsedTxn99Ms:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->add(J)V

    .line 588
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->elapsedTxnMaxMs:Lcom/sleepycat/je/utilint/LongMaxStat;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/utilint/LongMaxStat;->setMax(J)Z

    .line 589
    return-void
.end method

.method private updateReplicaSequences(Lcom/sleepycat/je/log/entry/LogEntry;)V
    .locals 4
    .param p1, "logEntry"    # Lcom/sleepycat/je/log/entry/LogEntry;

    .line 893
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/sleepycat/je/log/entry/LogEntry;->getTransactionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/txn/TxnManager;->updateFromReplay(J)V

    .line 896
    instance-of v0, p1, Lcom/sleepycat/je/log/entry/NameLNLogEntry;

    if-eqz v0, :cond_0

    .line 897
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/log/entry/NameLNLogEntry;

    .line 898
    .local v0, "nameLogEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->postFetchInit(Z)V

    .line 899
    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/NameLN;

    .line 900
    .local v1, "nameLN":Lcom/sleepycat/je/tree/NameLN;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbTree;->updateFromReplay(Lcom/sleepycat/je/dbi/DatabaseId;)V

    .line 902
    .end local v0    # "nameLogEntry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .end local v1    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    :cond_0
    return-void
.end method


# virtual methods
.method public abortOldTxns()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNodeId()I

    move-result v0

    .line 519
    .local v0, "masterNodeId":I
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replay;->copyActiveTxns()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/txn/ReplayTxn;

    .line 525
    .local v2, "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    sget-object v3, Lcom/sleepycat/je/log/ReplicationContext;->MASTER:Lcom/sleepycat/je/log/ReplicationContext;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->abort(Lcom/sleepycat/je/log/ReplicationContext;IJ)J

    .line 527
    .end local v2    # "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    goto :goto_0

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    return-void

    .line 528
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected txns in activeTxns = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public close()V
    .locals 8

    .line 1407
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replay;->copyActiveTxns()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/txn/ReplayTxn;

    .line 1409
    .local v1, "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1410
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unregistering open replay txn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1412
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1410
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1414
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->cleanup()V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    goto :goto_1

    .line 1415
    :catch_0
    move-exception v2

    .line 1416
    .local v2, "e":Lcom/sleepycat/je/DatabaseException;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Replay txn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1417
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " unregistration failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1418
    invoke-virtual {v2}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1416
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1420
    .end local v1    # "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v2    # "e":Lcom/sleepycat/je/DatabaseException;
    :goto_1
    goto :goto_0

    .line 1421
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1422
    return-void

    .line 1421
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public dumpState()Ljava/lang/String;
    .locals 3

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1444
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "lastReplayedTxn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedTxn:Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1445
    const-string v1, " lastReplayedVLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1446
    const-string v1, " numActiveReplayTxns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1447
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method flushPendingAcks(J)V
    .locals 1
    .param p1, "nowNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1461
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->groupCommit:Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;

    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->access$400(Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;J)V

    .line 1462
    return-void
.end method

.method public getActiveTxns()Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<",
            "Lcom/sleepycat/je/rep/txn/ReplayTxn;",
            ">;"
        }
    .end annotation

    .line 1439
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    return-object v0
.end method

.method public getLastReplayedTxn()Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedTxn:Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;

    return-object v0
.end method

.method public getLastReplayedVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method getMessageQueueOverflows()Lcom/sleepycat/je/utilint/LongStat;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->nMessageQueueOverflows:Lcom/sleepycat/je/utilint/LongStat;

    return-object v0
.end method

.method public getOutputQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method getPollIntervalNs(J)J
    .locals 2
    .param p1, "defaultNs"    # J

    .line 1468
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->groupCommit:Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;

    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->access$500(Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReplayTxn(JZ)Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .locals 11
    .param p1, "txnId"    # J
    .param p3, "registerTxnImmediately"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 910
    const/4 v0, 0x0

    .line 911
    .local v0, "useTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    monitor-enter v1

    .line 912
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    invoke-virtual {v2, p1, p2}, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->get(J)Lcom/sleepycat/je/txn/Txn;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/txn/ReplayTxn;

    move-object v0, v2

    .line 913
    if-nez v0, :cond_1

    .line 920
    if-eqz p3, :cond_0

    .line 921
    new-instance v9, Lcom/sleepycat/je/rep/txn/ReplayTxn;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v4, Lcom/sleepycat/je/TransactionConfig;->DEFAULT:Lcom/sleepycat/je/TransactionConfig;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    move-object v2, v9

    move-wide v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/rep/txn/ReplayTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;JLcom/sleepycat/je/rep/utilint/SimpleTxnMap;Ljava/util/logging/Logger;)V

    move-object v0, v9

    goto :goto_0

    .line 924
    :cond_0
    new-instance v2, Lcom/sleepycat/je/rep/impl/node/Replay$1;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v6, Lcom/sleepycat/je/TransactionConfig;->DEFAULT:Lcom/sleepycat/je/TransactionConfig;

    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    move-object v3, v2

    move-object v4, p0

    move-wide v7, p1

    invoke-direct/range {v3 .. v10}, Lcom/sleepycat/je/rep/impl/node/Replay$1;-><init>(Lcom/sleepycat/je/rep/impl/node/Replay;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;JLcom/sleepycat/je/rep/utilint/SimpleTxnMap;Ljava/util/logging/Logger;)V

    move-object v0, v2

    .line 934
    :cond_1
    :goto_0
    monitor-exit v1

    .line 935
    return-object v0

    .line 934
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 1428
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    .line 1430
    .local v0, "ret":Lcom/sleepycat/je/utilint/StatGroup;
    return-object v0
.end method

.method noteDequeueHeartbeatRequest(Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;)Z
    .locals 8
    .param p1, "heartbeat"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;

    .line 430
    const-wide/16 v0, 0x0

    .line 431
    .local v0, "now":J
    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatRequestEnqueueTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatRequestMasterNow:J

    .line 432
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->getMasterNow()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 434
    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatRequestEnqueueTime:J

    sub-long v2, v0, v2

    .line 435
    .local v2, "delay":J
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->replayQueueAvgDelayMs:Lcom/sleepycat/je/utilint/LongAvgStat;

    invoke-virtual {v6, v2, v3}, Lcom/sleepycat/je/utilint/LongAvgStat;->add(J)V

    .line 436
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->replayQueue95DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    invoke-virtual {v6, v2, v3}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->add(J)V

    .line 437
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->replayQueue99DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    invoke-virtual {v6, v2, v3}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->add(J)V

    .line 438
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->replayQueueMaxDelayMs:Lcom/sleepycat/je/utilint/LongMaxStat;

    invoke-virtual {v6, v2, v3}, Lcom/sleepycat/je/utilint/LongMaxStat;->setMax(J)Z

    .line 439
    iput-wide v4, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatRequestEnqueueTime:J

    .line 441
    .end local v2    # "delay":J
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatResponseEnqueueTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 442
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    iput-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatResponseEnqueueTime:J

    .line 444
    const/4 v2, 0x1

    return v2

    .line 446
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method noteDequeueHeartbeatResponse()V
    .locals 6

    .line 455
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatResponseEnqueueTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatResponseEnqueueTime:J

    sub-long/2addr v0, v4

    .line 458
    .local v0, "delay":J
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->outputQueueAvgDelayMs:Lcom/sleepycat/je/utilint/LongAvgStat;

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/je/utilint/LongAvgStat;->add(J)V

    .line 459
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->outputQueue95DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->add(J)V

    .line 460
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->outputQueue99DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->add(J)V

    .line 461
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->outputQueueMaxDelayMs:Lcom/sleepycat/je/utilint/LongMaxStat;

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/je/utilint/LongMaxStat;->setMax(J)Z

    .line 462
    iput-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatResponseEnqueueTime:J

    .line 464
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method noteEnqueueHeartbeatRequest(Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;)V
    .locals 4
    .param p1, "heartbeat"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;

    .line 412
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatRequestEnqueueTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatRequestEnqueueTime:J

    .line 414
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->getMasterNow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->heartbeatRequestMasterNow:J

    .line 416
    :cond_0
    return-void
.end method

.method public preRecoveryCheckpointInit(Lcom/sleepycat/je/recovery/RecoveryInfo;)V
    .locals 4
    .param p1, "recoveryInfo"    # Lcom/sleepycat/je/recovery/RecoveryInfo;

    .line 486
    iget-object v0, p1, Lcom/sleepycat/je/recovery/RecoveryInfo;->replayTxns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Txn;

    .line 495
    .local v1, "txn":Lcom/sleepycat/je/txn/Txn;
    move-object v2, v1

    check-cast v2, Lcom/sleepycat/je/rep/txn/ReplayTxn;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->activeTxns:Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->registerWithActiveTxns(Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;)V

    .line 496
    .end local v1    # "txn":Lcom/sleepycat/je/txn/Txn;
    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 498
    return-void
.end method

.method queueAck(J)V
    .locals 3
    .param p1, "txnId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    nop

    .line 823
    return-void

    .line 816
    :catch_0
    move-exception v0

    .line 821
    .local v0, "ie":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Ack I/O interrupted"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public replayEntry(JLcom/sleepycat/je/rep/stream/BaseProtocol$Entry;)V
    .locals 39
    .param p1, "startNs"    # J
    .param p3, "entry"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
        }
    .end annotation

    .line 601
    move-object/from16 v12, p0

    move-wide/from16 v13, p1

    const-string v15, "ms"

    const-string v10, "ms exceeded threshold:"

    const-string v11, " "

    const-string v8, "Replay time for entry type:"

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->getWireRecord()Lcom/sleepycat/je/rep/stream/InputWireRecord;

    move-result-object v9

    .line 602
    .local v9, "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v6

    .line 608
    .local v6, "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iget-object v1, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->follows(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 616
    iget-object v0, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v1, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replaying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 620
    :cond_0
    invoke-interface {v6}, Lcom/sleepycat/je/log/entry/LogEntry;->getTransactionId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {v12, v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/Replay;->getReplayTxn(JZ)Lcom/sleepycat/je/rep/txn/ReplayTxn;

    move-result-object v7

    .line 621
    .local v7, "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    invoke-direct {v12, v6}, Lcom/sleepycat/je/rep/impl/node/Replay;->updateReplicaSequences(Lcom/sleepycat/je/log/entry/LogEntry;)V

    .line 622
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getEntryType()B

    move-result v4

    .line 624
    .local v4, "entryType":B
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iput-object v0, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 627
    :try_start_0
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v0

    move-wide v2, v0

    .line 629
    .local v2, "txnId":J
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    if-eqz v0, :cond_6

    .line 630
    :try_start_1
    move-object/from16 v0, p3

    check-cast v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;

    .line 632
    .local v0, "commitEntry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->getNeedsAck()Z

    move-result v5

    .line 633
    .local v5, "needsAck":Z
    nop

    .line 634
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->getReplicaSyncPolicy()Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v16
    :try_end_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 v22, v16

    .line 635
    .local v22, "txnSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    if-eqz v5, :cond_1

    :try_start_2
    iget-object v1, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->groupCommit:Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;

    .line 637
    move-object/from16 v24, v0

    move-object/from16 v0, v22

    .end local v22    # "txnSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    .local v0, "txnSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    .local v24, "commitEntry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;
    invoke-static {v1, v0}, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->access$100(Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;Lcom/sleepycat/je/Durability$SyncPolicy;)Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v1
    :try_end_2
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 738
    .end local v0    # "txnSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    .end local v2    # "txnId":J
    .end local v5    # "needsAck":Z
    .end local v24    # "commitEntry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;
    :catchall_0
    move-exception v0

    move v3, v4

    move-object/from16 v18, v6

    move-object v4, v9

    move-object v9, v10

    move-object v10, v15

    move-object v15, v7

    move-object v7, v8

    move-object v8, v11

    goto/16 :goto_9

    .line 734
    :catch_0
    move-exception v0

    move v3, v4

    move-object/from16 v18, v6

    move-object v4, v9

    move-object v9, v10

    move-object v10, v15

    move-object v15, v7

    move-object v7, v8

    move-object v8, v11

    goto/16 :goto_8

    .line 637
    .local v0, "commitEntry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;
    .restart local v2    # "txnId":J
    .restart local v5    # "needsAck":Z
    .restart local v22    # "txnSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    :cond_1
    move-object/from16 v24, v0

    move-object/from16 v0, v22

    .end local v22    # "txnSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    .local v0, "txnSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    .restart local v24    # "commitEntry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;
    :try_start_3
    iget-object v1, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->noAckSyncPolicy:Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 640
    .local v1, "implSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    :goto_0
    invoke-direct {v12, v7, v5, v1}, Lcom/sleepycat/je/rep/impl/node/Replay;->logReplay(Lcom/sleepycat/je/rep/txn/ReplayTxn;ZLcom/sleepycat/je/Durability$SyncPolicy;)V

    .line 642
    invoke-interface {v6}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sleepycat/je/txn/TxnCommit;
    :try_end_3
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object/from16 v22, v16

    .line 643
    .local v22, "commit":Lcom/sleepycat/je/txn/TxnCommit;
    move-object/from16 v25, v15

    move-object/from16 v15, v22

    .end local v22    # "commit":Lcom/sleepycat/je/txn/TxnCommit;
    .local v15, "commit":Lcom/sleepycat/je/txn/TxnCommit;
    :try_start_4
    invoke-direct {v12, v15}, Lcom/sleepycat/je/rep/impl/node/Replay;->updateDTVLSN(Lcom/sleepycat/je/txn/TxnEnd;)J

    move-result-wide v20
    :try_end_4
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 645
    .local v20, "dtvlsn":J
    if-eqz v5, :cond_2

    .line 651
    move-wide/from16 v26, v2

    .end local v2    # "txnId":J
    .local v26, "txnId":J
    :try_start_5
    iget-object v2, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNFreezeLatch()Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->awaitThaw()Z

    .line 652
    iget-object v2, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/MasterStatus;->assertSync()V
    :try_end_5
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 738
    .end local v0    # "txnSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    .end local v1    # "implSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    .end local v5    # "needsAck":Z
    .end local v15    # "commit":Lcom/sleepycat/je/txn/TxnCommit;
    .end local v20    # "dtvlsn":J
    .end local v24    # "commitEntry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;
    .end local v26    # "txnId":J
    :catchall_1
    move-exception v0

    move v3, v4

    move-object/from16 v18, v6

    move-object v15, v7

    move-object v7, v8

    move-object v4, v9

    move-object v9, v10

    move-object v8, v11

    move-object/from16 v10, v25

    goto/16 :goto_9

    .line 734
    :catch_1
    move-exception v0

    move v3, v4

    move-object/from16 v18, v6

    move-object v15, v7

    move-object v7, v8

    move-object v4, v9

    move-object v9, v10

    move-object v8, v11

    move-object/from16 v10, v25

    goto/16 :goto_8

    .line 645
    .restart local v0    # "txnSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    .restart local v1    # "implSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    .restart local v2    # "txnId":J
    .restart local v5    # "needsAck":Z
    .restart local v15    # "commit":Lcom/sleepycat/je/txn/TxnCommit;
    .restart local v20    # "dtvlsn":J
    .restart local v24    # "commitEntry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;
    :cond_2
    move-wide/from16 v26, v2

    .line 655
    .end local v2    # "txnId":J
    .restart local v26    # "txnId":J
    :goto_1
    :try_start_6
    new-instance v2, Lcom/sleepycat/je/log/ReplicationContext;

    iget-object v3, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v2, v3}, Lcom/sleepycat/je/log/ReplicationContext;-><init>(Lcom/sleepycat/je/utilint/VLSN;)V

    .line 657
    invoke-virtual {v15}, Lcom/sleepycat/je/txn/TxnCommit;->getMasterNodeId()I

    move-result v19

    .line 655
    move-object/from16 v16, v7

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-virtual/range {v16 .. v21}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->commit(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/log/ReplicationContext;IJ)J

    .line 660
    invoke-virtual {v15}, Lcom/sleepycat/je/txn/TxnCommit;->getTime()Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/Timestamp;->getTime()J

    move-result-wide v2

    .line 661
    .local v2, "masterCommitTimeMs":J
    move-object/from16 v16, v1

    .end local v1    # "implSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    .local v16, "implSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;
    :try_end_6
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move/from16 v17, v4

    .end local v4    # "entryType":B
    .local v17, "entryType":B
    :try_start_7
    iget-object v4, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_7
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v18, v6

    const/4 v6, 0x0

    .end local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .local v18, "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    :try_start_8
    invoke-direct {v1, v4, v2, v3, v6}, Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;-><init>(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/rep/impl/node/Replay$1;)V

    iput-object v1, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedTxn:Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;

    .line 664
    nop

    .line 665
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getEndTime()J

    move-result-wide v22

    .line 666
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->elapsedTime()J

    move-result-wide v28
    :try_end_8
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 664
    move-object/from16 v1, p0

    move-wide/from16 v37, v2

    move-wide/from16 v3, v26

    move-wide/from16 v26, v37

    .end local v2    # "masterCommitTimeMs":J
    .local v3, "txnId":J
    .local v26, "masterCommitTimeMs":J
    move v2, v5

    move-wide/from16 v30, v3

    .end local v3    # "txnId":J
    .local v30, "txnId":J
    move-object/from16 v3, v16

    move/from16 v6, v17

    move/from16 v17, v5

    .end local v5    # "needsAck":Z
    .local v6, "entryType":B
    .local v17, "needsAck":Z
    move-wide/from16 v4, p1

    move/from16 v32, v6

    move-object/from16 v19, v15

    move-object v15, v7

    .end local v6    # "entryType":B
    .end local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .local v15, "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .local v19, "commit":Lcom/sleepycat/je/txn/TxnCommit;
    .local v32, "entryType":B
    move-wide/from16 v6, v26

    move-object/from16 v34, v8

    move-object/from16 v33, v9

    .end local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .local v33, "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    move-wide/from16 v8, v22

    move-object/from16 v36, v10

    move-object/from16 v35, v11

    move-wide/from16 v10, v28

    :try_start_9
    invoke-direct/range {v1 .. v11}, Lcom/sleepycat/je/rep/impl/node/Replay;->updateCommitStats(ZLcom/sleepycat/je/Durability$SyncPolicy;JJJJ)V

    .line 669
    if-eqz v17, :cond_4

    .line 674
    iget-object v1, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->groupCommit:Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;

    invoke-static {v1, v13, v14, v15, v0}, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->access$300(Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;JLcom/sleepycat/je/rep/txn/ReplayTxn;Lcom/sleepycat/je/Durability$SyncPolicy;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 676
    move-wide/from16 v1, v30

    .end local v30    # "txnId":J
    .local v1, "txnId":J
    invoke-virtual {v12, v1, v2}, Lcom/sleepycat/je/rep/impl/node/Replay;->queueAck(J)V

    goto :goto_2

    .line 674
    .end local v1    # "txnId":J
    .restart local v30    # "txnId":J
    :cond_3
    move-wide/from16 v1, v30

    .end local v30    # "txnId":J
    .restart local v1    # "txnId":J
    goto :goto_2

    .line 669
    .end local v1    # "txnId":J
    .restart local v30    # "txnId":J
    :cond_4
    move-wide/from16 v1, v30

    .line 684
    .end local v30    # "txnId":J
    .restart local v1    # "txnId":J
    :goto_2
    invoke-virtual {v15}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getRepGroupDbChange()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {v12, v15}, Lcom/sleepycat/je/rep/impl/node/Replay;->canRefreshGroup(Lcom/sleepycat/je/rep/txn/ReplayTxn;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 685
    iget-object v3, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->refreshCachedGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 686
    iget-object v3, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->recalculateGlobalCBVLSN()V
    :try_end_9
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 689
    .end local v0    # "txnSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    .end local v16    # "implSyncPolicy":Lcom/sleepycat/je/Durability$SyncPolicy;
    .end local v17    # "needsAck":Z
    .end local v19    # "commit":Lcom/sleepycat/je/txn/TxnCommit;
    .end local v20    # "dtvlsn":J
    .end local v24    # "commitEntry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;
    .end local v26    # "masterCommitTimeMs":J
    :cond_5
    move/from16 v3, v32

    move-object/from16 v4, v33

    goto/16 :goto_5

    .line 738
    .end local v1    # "txnId":J
    :catchall_2
    move-exception v0

    move-object/from16 v10, v25

    move/from16 v3, v32

    move-object/from16 v4, v33

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v36

    goto/16 :goto_9

    .line 734
    :catch_2
    move-exception v0

    move-object/from16 v10, v25

    move/from16 v3, v32

    move-object/from16 v4, v33

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v36

    goto/16 :goto_8

    .line 738
    .end local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v32    # "entryType":B
    .end local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .local v17, "entryType":B
    :catchall_3
    move-exception v0

    move-object v15, v7

    move-object v7, v8

    move-object v4, v9

    move-object v9, v10

    move-object v8, v11

    move/from16 v3, v17

    move-object/from16 v10, v25

    .end local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .end local v17    # "entryType":B
    .restart local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v32    # "entryType":B
    .restart local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    goto/16 :goto_9

    .line 734
    .end local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v32    # "entryType":B
    .end local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v17    # "entryType":B
    :catch_3
    move-exception v0

    move-object v15, v7

    move-object v7, v8

    move-object v4, v9

    move-object v9, v10

    move-object v8, v11

    move/from16 v3, v17

    move-object/from16 v10, v25

    .end local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .end local v17    # "entryType":B
    .restart local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v32    # "entryType":B
    .restart local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    goto/16 :goto_8

    .line 738
    .end local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v32    # "entryType":B
    .end local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .local v6, "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v17    # "entryType":B
    :catchall_4
    move-exception v0

    move-object/from16 v18, v6

    move-object v15, v7

    move-object v7, v8

    move-object v4, v9

    move-object v9, v10

    move-object v8, v11

    move/from16 v3, v17

    move-object/from16 v10, v25

    .end local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .end local v17    # "entryType":B
    .restart local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v32    # "entryType":B
    .restart local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    goto/16 :goto_9

    .line 734
    .end local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v32    # "entryType":B
    .end local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v17    # "entryType":B
    :catch_4
    move-exception v0

    move-object/from16 v18, v6

    move-object v15, v7

    move-object v7, v8

    move-object v4, v9

    move-object v9, v10

    move-object v8, v11

    move/from16 v3, v17

    move-object/from16 v10, v25

    .end local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .end local v17    # "entryType":B
    .restart local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v32    # "entryType":B
    .restart local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    goto/16 :goto_8

    .line 738
    .end local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v32    # "entryType":B
    .end local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v4    # "entryType":B
    .restart local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catchall_5
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_3

    .line 734
    :catch_5
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_4

    .line 738
    :catchall_6
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v25, v15

    :goto_3
    move-object v15, v7

    move v3, v4

    move-object v7, v8

    move-object v4, v9

    move-object v9, v10

    move-object v8, v11

    move-object/from16 v10, v25

    .end local v4    # "entryType":B
    .end local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v32    # "entryType":B
    .restart local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    goto/16 :goto_9

    .line 734
    .end local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v32    # "entryType":B
    .end local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v4    # "entryType":B
    .restart local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catch_6
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v25, v15

    :goto_4
    move-object v15, v7

    move v3, v4

    move-object v7, v8

    move-object v4, v9

    move-object v9, v10

    move-object v8, v11

    move-object/from16 v10, v25

    .end local v4    # "entryType":B
    .end local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v32    # "entryType":B
    .restart local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    goto/16 :goto_8

    .line 689
    .end local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v32    # "entryType":B
    .end local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .local v2, "txnId":J
    .restart local v4    # "entryType":B
    .restart local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :cond_6
    move-wide v1, v2

    move/from16 v32, v4

    move-object/from16 v18, v6

    move-object/from16 v34, v8

    move-object/from16 v33, v9

    move-object/from16 v36, v10

    move-object/from16 v35, v11

    move-object/from16 v25, v15

    move-object v15, v7

    .end local v2    # "txnId":J
    .end local v4    # "entryType":B
    .end local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v1    # "txnId":J
    .restart local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v32    # "entryType":B
    .restart local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :try_start_a
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_ABORT:Lcom/sleepycat/je/log/LogEntryType;
    :try_end_a
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    move/from16 v3, v32

    .end local v32    # "entryType":B
    .local v3, "entryType":B
    :try_start_b
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v0
    :try_end_b
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    if-eqz v0, :cond_9

    .line 691
    :try_start_c
    iget-object v0, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->nAborts:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 692
    invoke-interface/range {v18 .. v18}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/TxnAbort;

    .line 693
    .local v0, "abort":Lcom/sleepycat/je/txn/TxnAbort;
    new-instance v4, Lcom/sleepycat/je/log/ReplicationContext;

    .line 694
    invoke-virtual/range {v33 .. v33}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sleepycat/je/log/ReplicationContext;-><init>(Lcom/sleepycat/je/utilint/VLSN;)V

    .line 695
    .local v4, "abortContext":Lcom/sleepycat/je/log/ReplicationContext;
    iget-object v5, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 696
    iget-object v5, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v6, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "abort called for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " masterId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 699
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnAbort;->getMasterNodeId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " repContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 696
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 703
    :cond_7
    invoke-direct {v12, v0}, Lcom/sleepycat/je/rep/impl/node/Replay;->updateDTVLSN(Lcom/sleepycat/je/txn/TxnEnd;)J

    move-result-wide v5

    .line 704
    .local v5, "dtvlsn":J
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnAbort;->getMasterNodeId()I

    move-result v7

    invoke-virtual {v15, v4, v7, v5, v6}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->abort(Lcom/sleepycat/je/log/ReplicationContext;IJ)J

    .line 705
    new-instance v7, Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;

    iget-object v8, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 706
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnAbort;->getTime()Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/utilint/Timestamp;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;-><init>(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/rep/impl/node/Replay$1;)V

    iput-object v7, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedTxn:Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;

    .line 707
    invoke-virtual {v15}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getRepGroupDbChange()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-direct {v12, v15}, Lcom/sleepycat/je/rep/impl/node/Replay;->canRefreshGroup(Lcom/sleepycat/je/rep/txn/ReplayTxn;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 714
    iget-object v7, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->refreshCachedGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 716
    :cond_8
    invoke-virtual {v15}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->elapsedTime()J

    move-result-wide v7

    invoke-direct {v12, v7, v8}, Lcom/sleepycat/je/rep/impl/node/Replay;->updateElapsedTxnStats(J)V
    :try_end_c
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 718
    .end local v0    # "abort":Lcom/sleepycat/je/txn/TxnAbort;
    .end local v4    # "abortContext":Lcom/sleepycat/je/log/ReplicationContext;
    .end local v5    # "dtvlsn":J
    move-object/from16 v4, v33

    goto :goto_5

    .line 738
    .end local v1    # "txnId":J
    :catchall_7
    move-exception v0

    move-object/from16 v10, v25

    move-object/from16 v4, v33

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v36

    goto/16 :goto_9

    .line 734
    :catch_7
    move-exception v0

    move-object/from16 v10, v25

    move-object/from16 v4, v33

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v36

    goto/16 :goto_8

    .line 718
    .restart local v1    # "txnId":J
    :cond_9
    :try_start_d
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_NAMELN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v0
    :try_end_d
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-eqz v0, :cond_a

    .line 720
    :try_start_e
    iget-object v0, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReplica()Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->clearDbTreeCache()V

    .line 721
    iget-object v0, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->nNameLNs:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_e
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 722
    move-object/from16 v4, v33

    .end local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .local v4, "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :try_start_f
    invoke-direct {v12, v15, v4}, Lcom/sleepycat/je/rep/impl/node/Replay;->applyNameLN(Lcom/sleepycat/je/rep/txn/ReplayTxn;Lcom/sleepycat/je/rep/stream/InputWireRecord;)V

    goto :goto_5

    .line 738
    .end local v1    # "txnId":J
    .end local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catchall_8
    move-exception v0

    move-object/from16 v4, v33

    move-object/from16 v10, v25

    goto/16 :goto_6

    .line 734
    :catch_8
    move-exception v0

    move-object/from16 v4, v33

    move-object/from16 v10, v25

    goto/16 :goto_7

    .line 725
    .restart local v1    # "txnId":J
    :cond_a
    move-object/from16 v4, v33

    .end local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    iget-object v0, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->nLNs:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 727
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    if-eqz v0, :cond_c

    .line 728
    invoke-direct {v12, v15, v4}, Lcom/sleepycat/je/rep/impl/node/Replay;->applyLN(Lcom/sleepycat/je/rep/txn/ReplayTxn;Lcom/sleepycat/je/rep/stream/InputWireRecord;)V

    .line 732
    :goto_5
    iget-object v0, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v15, v0}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->setLastAppliedVLSN(Lcom/sleepycat/je/utilint/VLSN;)V
    :try_end_f
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 738
    .end local v1    # "txnId":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v13

    .line 739
    .local v0, "elapsedNs":J
    iget-wide v5, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->replayLoggingThresholdNs:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_b

    .line 740
    iget-object v2, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v5, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v34

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 742
    invoke-static {v3}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v8, v35

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 743
    invoke-virtual {v7, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v9, v36

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->replayLoggingThresholdNs:J

    .line 746
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v10, v25

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 740
    invoke-static {v2, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 749
    .end local v0    # "elapsedNs":J
    :cond_b
    nop

    .line 750
    return-void

    .line 727
    .restart local v1    # "txnId":J
    :cond_c
    move-object/from16 v10, v25

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v36

    :try_start_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "entryType":B
    .end local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .end local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local p1    # "startNs":J
    .end local p3    # "entry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;
    throw v0
    :try_end_10
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    .line 734
    .end local v1    # "txnId":J
    .restart local v3    # "entryType":B
    .restart local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local p1    # "startNs":J
    .restart local p3    # "entry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;
    :catch_9
    move-exception v0

    goto/16 :goto_8

    .line 738
    :catchall_9
    move-exception v0

    move-object/from16 v10, v25

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v36

    goto/16 :goto_9

    .line 734
    :catch_a
    move-exception v0

    move-object/from16 v10, v25

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v36

    goto/16 :goto_8

    .line 738
    .end local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catchall_a
    move-exception v0

    move-object/from16 v10, v25

    move-object/from16 v4, v33

    :goto_6
    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v36

    .end local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    goto/16 :goto_9

    .line 734
    .end local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catch_b
    move-exception v0

    move-object/from16 v10, v25

    move-object/from16 v4, v33

    :goto_7
    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v36

    .end local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    goto :goto_8

    .line 738
    .end local v3    # "entryType":B
    .end local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v32    # "entryType":B
    .restart local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catchall_b
    move-exception v0

    move-object/from16 v10, v25

    move/from16 v3, v32

    move-object/from16 v4, v33

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v36

    .end local v32    # "entryType":B
    .end local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v3    # "entryType":B
    .restart local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    goto :goto_9

    .line 734
    .end local v3    # "entryType":B
    .end local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v32    # "entryType":B
    .restart local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catch_c
    move-exception v0

    move-object/from16 v10, v25

    move/from16 v3, v32

    move-object/from16 v4, v33

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v36

    .end local v32    # "entryType":B
    .end local v33    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v3    # "entryType":B
    .restart local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    goto :goto_8

    .line 738
    .end local v3    # "entryType":B
    .end local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .local v4, "entryType":B
    .restart local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catchall_c
    move-exception v0

    move v3, v4

    move-object/from16 v18, v6

    move-object v4, v9

    move-object v9, v10

    move-object v10, v15

    move-object v15, v7

    move-object v7, v8

    move-object v8, v11

    .end local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v3    # "entryType":B
    .local v4, "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    goto :goto_9

    .line 734
    .end local v3    # "entryType":B
    .end local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .local v4, "entryType":B
    .restart local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :catch_d
    move-exception v0

    move v3, v4

    move-object/from16 v18, v6

    move-object v4, v9

    move-object v9, v10

    move-object v10, v15

    move-object v15, v7

    move-object v7, v8

    move-object v8, v11

    .line 735
    .end local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v7    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    .restart local v3    # "entryType":B
    .local v4, "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    :goto_8
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem seen replaying entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseException;->addErrorMessage(Ljava/lang/String;)V

    .line 736
    nop

    .end local v3    # "entryType":B
    .end local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .end local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local p1    # "startNs":J
    .end local p3    # "entry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    .line 738
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    .restart local v3    # "entryType":B
    .restart local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local p1    # "startNs":J
    .restart local p3    # "entry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;
    :catchall_d
    move-exception v0

    :goto_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v13

    .line 739
    .local v1, "elapsedNs":J
    iget-wide v5, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->replayLoggingThresholdNs:J

    cmp-long v5, v1, v5

    if-lez v5, :cond_d

    .line 740
    iget-object v5, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v6, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 742
    invoke-static {v3}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 743
    invoke-virtual {v8, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v13, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->replayLoggingThresholdNs:J

    .line 746
    invoke-virtual {v8, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 740
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 749
    .end local v1    # "elapsedNs":J
    :cond_d
    throw v0

    .line 609
    .end local v3    # "entryType":B
    .end local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .end local v15    # "repTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v18    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v6    # "logEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    :cond_e
    move-object v4, v9

    .end local v9    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .restart local v4    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    iget-object v0, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rep stream not sequential. Current VLSN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " next log entry VLSN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 613
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->outputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 475
    return-void
.end method

.method public resetStats()V
    .locals 1

    .line 1434
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->clear()V

    .line 1435
    return-void
.end method

.method public rollback(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 21
    .param p1, "matchpointVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "matchpointLsn"    # J

    .line 1235
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v5, " status="

    const-string v6, " at "

    const-string v7, "Rollback to matchpoint "

    const-string v8, "Started Rollback"

    .line 1237
    .local v8, "rollbackStatus":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/rep/impl/node/Replay;->copyActiveTxns()Ljava/util/Map;

    move-result-object v9

    .line 1239
    .local v9, "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    :try_start_0
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v0, :cond_0

    .line 1241
    :try_start_1
    const-string v0, "No active txns, nothing to rollback"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1345
    .end local v8    # "rollbackStatus":Ljava/lang/String;
    .local v0, "rollbackStatus":Ljava/lang/String;
    iput-object v2, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1346
    iget-object v8, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v10, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1348
    invoke-static/range {p2 .. p3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1346
    invoke-static {v8, v10, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1242
    return-void

    .line 1345
    .end local v0    # "rollbackStatus":Ljava/lang/String;
    .restart local v8    # "rollbackStatus":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v9

    goto/16 :goto_1

    .line 1245
    :cond_0
    :try_start_2
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    .line 1246
    .local v0, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v10, :cond_1

    .line 1248
    :try_start_3
    const-string v10, "End of range equals matchpoint, nothing to rollback"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v10

    .line 1345
    iput-object v2, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1346
    iget-object v10, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v11, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1348
    invoke-static/range {p2 .. p3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1346
    invoke-static {v10, v11, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1249
    return-void

    .line 1252
    :cond_1
    :try_start_4
    iget-object v10, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v11, Lcom/sleepycat/je/rep/SyncupProgress;->DO_ROLLBACK:Lcom/sleepycat/je/rep/SyncupProgress;

    invoke-virtual {v10, v11}, Lcom/sleepycat/je/rep/impl/RepImpl;->setSyncupProgress(Lcom/sleepycat/je/rep/SyncupProgress;)V

    .line 1258
    iget-object v10, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/node/RepNode;->shutdownNetworkBackup()V

    .line 1264
    iget-object v10, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sleepycat/je/rep/impl/RepImpl;->setBackupProhibited(Z)V

    .line 1265
    iget-object v10, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static/range {p2 .. p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/sleepycat/je/rep/impl/RepImpl;->invalidateBackups(J)V

    .line 1274
    iget-object v10, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v10

    .line 1275
    .local v10, "logManager":Lcom/sleepycat/je/log/LogManager;
    sget-object v12, Lcom/sleepycat/je/log/LogEntryType;->LOG_ROLLBACK_START:Lcom/sleepycat/je/log/LogEntryType;

    new-instance v13, Lcom/sleepycat/je/txn/RollbackStart;

    .line 1278
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v13, v2, v3, v4, v14}, Lcom/sleepycat/je/txn/RollbackStart;-><init>(Lcom/sleepycat/je/utilint/VLSN;JLjava/util/Set;)V

    .line 1275
    invoke-static {v12, v13}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v12

    .line 1279
    .local v12, "rollbackStart":Lcom/sleepycat/je/log/entry/LogEntry;
    sget-object v13, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    .line 1280
    invoke-virtual {v10, v12, v11, v13}, Lcom/sleepycat/je/log/LogManager;->logForceFlush(Lcom/sleepycat/je/log/entry/LogEntry;ZLcom/sleepycat/je/log/ReplicationContext;)J

    move-result-wide v13

    .line 1283
    .local v13, "rollbackStartLsn":J
    const-string v15, "Logged RollbackStart entry"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v8, v15

    .line 1291
    :try_start_5
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    .local v15, "rollbackLsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sleepycat/je/rep/txn/ReplayTxn;

    move-object/from16 v18, v17

    .line 1293
    .local v18, "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    nop

    .line 1294
    move-object/from16 v11, v18

    .end local v18    # "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .local v11, "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    invoke-virtual {v11, v3, v4}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->rollback(J)Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v19, v18

    .line 1300
    .local v19, "txnRollbackLsns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-direct {v1, v11}, Lcom/sleepycat/je/rep/impl/node/Replay;->checkRemoved(Lcom/sleepycat/je/rep/txn/ReplayTxn;)Z

    move-result v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v18, :cond_2

    .line 1303
    move-object/from16 v18, v0

    move-object/from16 v0, v19

    .end local v19    # "txnRollbackLsns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .local v0, "txnRollbackLsns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .local v18, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    :try_start_6
    invoke-interface {v15, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1304
    move-object/from16 v0, v18

    const/4 v11, 0x1

    .end local v0    # "txnRollbackLsns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .end local v11    # "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    goto :goto_0

    .line 1300
    .end local v18    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .local v0, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .restart local v11    # "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .restart local v19    # "txnRollbackLsns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    :cond_2
    move-object/from16 v18, v0

    move-object/from16 v0, v19

    .end local v19    # "txnRollbackLsns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .local v0, "txnRollbackLsns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .restart local v18    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    move-object/from16 v16, v0

    .end local v0    # "txnRollbackLsns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .local v16, "txnRollbackLsns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    :try_start_7
    new-instance v0, Ljava/lang/AssertionError;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v19, v8

    .end local v8    # "rollbackStatus":Ljava/lang/String;
    .local v19, "rollbackStatus":Ljava/lang/String;
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v20, v9

    .end local v9    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    .local v20, "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    :try_start_9
    const-string v9, "Should have removed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v19    # "rollbackStatus":Ljava/lang/String;
    .end local v20    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    .end local p1    # "matchpointVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "matchpointLsn":J
    throw v0

    .line 1345
    .end local v10    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v11    # "replayTxn":Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .end local v12    # "rollbackStart":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v13    # "rollbackStartLsn":J
    .end local v15    # "rollbackLsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v16    # "txnRollbackLsns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .end local v18    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .restart local v9    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    .restart local v19    # "rollbackStatus":Ljava/lang/String;
    .restart local p1    # "matchpointVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p2    # "matchpointLsn":J
    :catchall_1
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v8, v19

    .end local v9    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    .restart local v20    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    goto/16 :goto_1

    .line 1305
    .end local v19    # "rollbackStatus":Ljava/lang/String;
    .end local v20    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    .local v0, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .restart local v8    # "rollbackStatus":Ljava/lang/String;
    .restart local v9    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    .restart local v10    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v12    # "rollbackStart":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v13    # "rollbackStartLsn":J
    .restart local v15    # "rollbackLsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    move-object/from16 v18, v0

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .end local v0    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v8    # "rollbackStatus":Ljava/lang/String;
    .end local v9    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    .restart local v18    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .restart local v19    # "rollbackStatus":Ljava/lang/String;
    .restart local v20    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    const-string v0, "Finished in-memory rollback"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v8, v0

    .line 1306
    .end local v19    # "rollbackStatus":Ljava/lang/String;
    .restart local v8    # "rollbackStatus":Ljava/lang/String;
    :try_start_a
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1316
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLogRewriteListener()Lcom/sleepycat/je/rep/LogFileRewriteListener;

    move-result-object v0

    .line 1317
    .local v0, "listener":Lcom/sleepycat/je/rep/LogFileRewriteListener;
    if-eqz v0, :cond_4

    .line 1318
    invoke-direct {v1, v15}, Lcom/sleepycat/je/rep/impl/node/Replay;->getFileNames(Ljava/util/List;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/sleepycat/je/rep/LogFileRewriteListener;->rewriteLogFiles(Ljava/util/Set;)V

    .line 1320
    :cond_4
    iget-object v9, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v9, v15}, Lcom/sleepycat/je/recovery/RollbackTracker;->makeInvisible(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/List;)V

    .line 1321
    const-string v9, "Finished invisible setting"

    move-object v8, v9

    .line 1328
    sget-object v9, Lcom/sleepycat/je/log/LogEntryType;->LOG_ROLLBACK_END:Lcom/sleepycat/je/log/LogEntryType;

    new-instance v11, Lcom/sleepycat/je/txn/RollbackEnd;

    invoke-direct {v11, v3, v4, v13, v14}, Lcom/sleepycat/je/txn/RollbackEnd;-><init>(JJ)V

    .line 1329
    invoke-static {v9, v11}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v9

    sget-object v11, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    .line 1328
    move-object/from16 v16, v0

    const/4 v0, 0x1

    .end local v0    # "listener":Lcom/sleepycat/je/rep/LogFileRewriteListener;
    .local v16, "listener":Lcom/sleepycat/je/rep/LogFileRewriteListener;
    invoke-virtual {v10, v9, v0, v11}, Lcom/sleepycat/je/log/LogManager;->logForceFlush(Lcom/sleepycat/je/log/entry/LogEntry;ZLcom/sleepycat/je/log/ReplicationContext;)J

    .line 1339
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->restartNetworkBackup()V

    .line 1340
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/sleepycat/je/rep/impl/RepImpl;->setBackupProhibited(Z)V

    .line 1341
    const-string v0, "Finished rollback"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1345
    .end local v8    # "rollbackStatus":Ljava/lang/String;
    .end local v10    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v12    # "rollbackStart":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v13    # "rollbackStartLsn":J
    .end local v15    # "rollbackLsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v16    # "listener":Lcom/sleepycat/je/rep/LogFileRewriteListener;
    .end local v18    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .local v0, "rollbackStatus":Ljava/lang/String;
    iput-object v2, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1346
    iget-object v8, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v9, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1348
    invoke-static/range {p2 .. p3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1346
    invoke-static {v8, v9, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1350
    nop

    .line 1351
    return-void

    .line 1345
    .end local v0    # "rollbackStatus":Ljava/lang/String;
    .restart local v8    # "rollbackStatus":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 1306
    .restart local v10    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .restart local v12    # "rollbackStart":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v13    # "rollbackStartLsn":J
    .restart local v15    # "rollbackLsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v18    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    :cond_5
    :try_start_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/impl/node/Replay;->dumpActiveTxns(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v8    # "rollbackStatus":Ljava/lang/String;
    .end local v20    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    .end local p1    # "matchpointVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "matchpointLsn":J
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1345
    .end local v10    # "logManager":Lcom/sleepycat/je/log/LogManager;
    .end local v12    # "rollbackStart":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v13    # "rollbackStartLsn":J
    .end local v15    # "rollbackLsns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v18    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .restart local v19    # "rollbackStatus":Ljava/lang/String;
    .restart local v20    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    .restart local p1    # "matchpointVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p2    # "matchpointLsn":J
    :catchall_3
    move-exception v0

    move-object/from16 v8, v19

    goto :goto_1

    .end local v19    # "rollbackStatus":Ljava/lang/String;
    .end local v20    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    .restart local v8    # "rollbackStatus":Ljava/lang/String;
    .restart local v9    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .end local v8    # "rollbackStatus":Ljava/lang/String;
    .end local v9    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    .restart local v19    # "rollbackStatus":Ljava/lang/String;
    .restart local v20    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    goto :goto_1

    .end local v19    # "rollbackStatus":Ljava/lang/String;
    .end local v20    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    .restart local v8    # "rollbackStatus":Ljava/lang/String;
    .restart local v9    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v20, v9

    .end local v9    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    .restart local v20    # "localActiveTxns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/rep/txn/ReplayTxn;>;"
    :goto_1
    iput-object v2, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1346
    iget-object v9, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->logger:Ljava/util/logging/Logger;

    iget-object v10, v1, Lcom/sleepycat/je/rep/impl/node/Replay;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1348
    invoke-static/range {p2 .. p3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1346
    invoke-static {v9, v10, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    throw v0
.end method
