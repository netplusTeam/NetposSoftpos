.class public Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;
.super Ljava/lang/Object;
.source "Replica.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/Replica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConsistencyTracker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final NULL_VLSN_SEQUENCE:J

.field private final lagLatches:Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;

.field private lastReplayedTxnVLSN:J

.field private lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private volatile masterNow:J

.field private masterTxnEndTime:J

.field private volatile masterTxnEndVLSN:J

.field private final nLagConsistencyWaitMs:Lcom/sleepycat/je/utilint/LongStat;

.field private final nLagConsistencyWaits:Lcom/sleepycat/je/utilint/LongStat;

.field private final nVLSNConsistencyWaitMs:Lcom/sleepycat/je/utilint/LongStat;

.field private final nVLSNConsistencyWaits:Lcom/sleepycat/je/utilint/LongStat;

.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

.field private final vlsnLatches:Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1320
    const-class v0, Lcom/sleepycat/je/rep/impl/node/Replica;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/Replica;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 1320
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1321
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->NULL_VLSN_SEQUENCE:J

    .line 1328
    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedTxnVLSN:J

    .line 1329
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1330
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterTxnEndTime:J

    .line 1334
    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterNow:J

    .line 1336
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "ConsistencyTracker"

    const-string v2, "Statistics on the delays experienced by read requests at the replica in order to conform to the specified ReplicaConsistencyPolicy."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 1340
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_LAG_CONSISTENCY_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->nLagConsistencyWaits:Lcom/sleepycat/je/utilint/LongStat;

    .line 1343
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_LAG_CONSISTENCY_WAIT_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->nLagConsistencyWaitMs:Lcom/sleepycat/je/utilint/LongStat;

    .line 1346
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_VLSN_CONSISTENCY_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->nVLSNConsistencyWaits:Lcom/sleepycat/je/utilint/LongStat;

    .line 1349
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_VLSN_CONSISTENCY_WAIT_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->nVLSNConsistencyWaitMs:Lcom/sleepycat/je/utilint/LongStat;

    .line 1352
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker$1;

    .line 1353
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker$1;-><init>(Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->vlsnLatches:Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;

    .line 1365
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker$2;

    .line 1366
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker$2;-><init>(Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lagLatches:Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;

    .line 1365
    return-void
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    .line 1320
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;
    .param p1, "x1"    # Lcom/sleepycat/je/StatsConfig;

    .line 1320
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    .line 1320
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->resetStats()V

    return-void
.end method

.method private await(Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V
    .locals 4
    .param p1, "consistencyLatch"    # Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    .param p2, "consistencyPolicy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/ReplicaConsistencyException;,
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1543
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1544
    invoke-interface {p2, v0}, Lcom/sleepycat/je/ReplicaConsistencyPolicy;->getTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->awaitOrException(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    return-void

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 1548
    .local v0, "rimpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isActive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1549
    .local v1, "inactive":Z
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1550
    .local v2, "rnName":Ljava/lang/String;
    new-instance v3, Lcom/sleepycat/je/rep/ReplicaConsistencyException;

    invoke-direct {v3, p2, v2, v1}, Lcom/sleepycat/je/rep/ReplicaConsistencyException;-><init>(Lcom/sleepycat/je/ReplicaConsistencyPolicy;Ljava/lang/String;Z)V

    throw v3
.end method

.method private currentLag()J
    .locals 4

    .line 1413
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterNow:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1420
    const-wide/32 v0, 0x7fffffff

    return-wide v0

    .line 1424
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedTxnVLSN:J

    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterTxnEndVLSN:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterTxnEndTime:J

    sub-long/2addr v0, v2

    .local v0, "lag":J
    goto :goto_0

    .line 1426
    .end local v0    # "lag":J
    :cond_1
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedTxnVLSN:J

    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterTxnEndVLSN:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterNow:J

    sub-long/2addr v0, v2

    .restart local v0    # "lag":J
    goto :goto_0

    .line 1435
    .end local v0    # "lag":J
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterNow:J

    sub-long/2addr v0, v2

    .line 1437
    .restart local v0    # "lag":J
    :goto_0
    return-wide v0
.end method

.method private getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 1557
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method private resetStats()V
    .locals 1

    .line 1561
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->clear()V

    .line 1562
    return-void
.end method


# virtual methods
.method public awaitVLSN(JLcom/sleepycat/je/ReplicaConsistencyPolicy;)V
    .locals 7
    .param p1, "vlsn"    # J
    .param p3, "consistencyPolicy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/rep/ReplicaConsistencyException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1513
    .local v0, "waitStart":J
    const/4 v2, 0x0

    .line 1515
    .local v2, "waitVLSNLatch":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    monitor-enter p0

    .line 1516
    :try_start_0
    instance-of v3, p3, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedTxnVLSN:J

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1519
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    :goto_0
    nop

    .line 1520
    .local v3, "compareVLSN":J
    cmp-long v5, p1, v3

    if-gtz v5, :cond_1

    .line 1521
    monitor-exit p0

    return-void

    .line 1523
    :cond_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->vlsnLatches:Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->getOrCreate(Ljava/lang/Long;)Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    move-result-object v5

    move-object v2, v5

    .line 1524
    .end local v3    # "compareVLSN":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    invoke-direct {p0, v2, p3}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->await(Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V

    .line 1527
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->nVLSNConsistencyWaits:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1528
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->nVLSNConsistencyWaitMs:Lcom/sleepycat/je/utilint/LongStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1529
    return-void

    .line 1524
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method close()V
    .locals 0

    .line 1393
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->logStats()V

    .line 1394
    return-void
.end method

.method declared-synchronized forceTripLatches(Lcom/sleepycat/je/DatabaseException;)V
    .locals 3
    .param p1, "exception"    # Lcom/sleepycat/je/DatabaseException;

    monitor-enter p0

    .line 1447
    if-eqz p1, :cond_0

    .line 1448
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->vlsnLatches:Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, p1}, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->trip(JLcom/sleepycat/je/DatabaseException;)V

    .line 1449
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lagLatches:Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->trip(JLcom/sleepycat/je/DatabaseException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    monitor-exit p0

    return-void

    .line 1446
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;
    .end local p1    # "exception":Lcom/sleepycat/je/DatabaseException;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1447
    .restart local p1    # "exception":Lcom/sleepycat/je/DatabaseException;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    .end local p1    # "exception":Lcom/sleepycat/je/DatabaseException;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public getMasterTxnEndVLSN()J
    .locals 2

    .line 1389
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterTxnEndVLSN:J

    return-wide v0
.end method

.method public lagAwait(Lcom/sleepycat/je/rep/TimeConsistencyPolicy;)V
    .locals 10
    .param p1, "consistencyPolicy"    # Lcom/sleepycat/je/rep/TimeConsistencyPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/rep/ReplicaConsistencyException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1488
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->currentLag()J

    move-result-wide v0

    .line 1489
    .local v0, "currentLag":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1490
    invoke-virtual {p1, v2}, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->getPermissibleLag(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 1491
    .local v2, "lag":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 1492
    return-void

    .line 1494
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1495
    .local v4, "waitStart":J
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lagLatches:Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;

    .line 1496
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->getOrCreate(Ljava/lang/Long;)Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    move-result-object v6

    .line 1497
    .local v6, "waitLagLatch":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    invoke-direct {p0, v6, p1}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->await(Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V

    .line 1498
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->nLagConsistencyWaits:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1499
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->nLagConsistencyWaitMs:Lcom/sleepycat/je/utilint/LongStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1500
    return-void
.end method

.method logStats()V
    .locals 5

    .line 1397
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$600(Lcom/sleepycat/je/rep/impl/node/Replica;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 1399
    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$600(Lcom/sleepycat/je/rep/impl/node/Replica;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$500(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replica stats - Lag waits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->nLagConsistencyWaits:Lcom/sleepycat/je/utilint/LongStat;

    .line 1400
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Lag wait time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->nLagConsistencyWaitMs:Lcom/sleepycat/je/utilint/LongStat;

    .line 1401
    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms.  VLSN waits: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->nVLSNConsistencyWaits:Lcom/sleepycat/je/utilint/LongStat;

    .line 1403
    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->nVLSNConsistencyWaitMs:Lcom/sleepycat/je/utilint/LongStat;

    .line 1404
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1399
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1407
    :cond_0
    return-void
.end method

.method reinit(JJ)V
    .locals 1
    .param p1, "matchedTxnVLSN"    # J
    .param p3, "matchedTxnEndTime"    # J

    .line 1383
    new-instance v0, Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v0, p1, p2}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1384
    iput-wide p1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedTxnVLSN:J

    .line 1385
    iput-wide p3, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterTxnEndTime:J

    .line 1386
    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 1572
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 1573
    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getSavedShutdownException()Ljava/lang/Exception;

    move-result-object v0

    .line 1581
    .local v0, "savedShutdownException":Ljava/lang/Exception;
    instance-of v1, v0, Lcom/sleepycat/je/EnvironmentFailureException;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/EnvironmentFailureException;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 1588
    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was shut down."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    :goto_0
    nop

    .line 1591
    .local v1, "latchException":Lcom/sleepycat/je/EnvironmentFailureException;
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->forceTripLatches(Lcom/sleepycat/je/DatabaseException;)V

    .line 1592
    return-void
.end method

.method declared-synchronized trackHeartbeat(Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;)V
    .locals 4
    .param p1, "heartbeat"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;

    monitor-enter p0

    .line 1477
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->getCurrentTxnEndVLSN()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterTxnEndVLSN:J

    .line 1478
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->getMasterNow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterNow:J

    .line 1480
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lagLatches:Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;

    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->currentLag()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->trip(JLcom/sleepycat/je/DatabaseException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    monitor-exit p0

    return-void

    .line 1476
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;
    .end local p1    # "heartbeat":Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized trackTxnEnd()V
    .locals 5

    monitor-enter p0

    .line 1453
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$900(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/Replay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replay;->getLastReplayedTxn()Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;

    move-result-object v0

    .line 1454
    .local v0, "lastReplayedTxn":Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;->getTxnVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedTxnVLSN:J

    .line 1455
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;->getMasterTxnEndTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterTxnEndTime:J

    .line 1457
    iget-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedTxnVLSN:J

    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterTxnEndVLSN:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterTxnEndTime:J

    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterNow:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 1459
    iget-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedTxnVLSN:J

    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterTxnEndVLSN:J

    .line 1460
    iget-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterTxnEndTime:J

    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->masterNow:J

    .line 1467
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->vlsnLatches:Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;

    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedTxnVLSN:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->trip(JLcom/sleepycat/je/DatabaseException;)V

    .line 1468
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lagLatches:Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;

    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->currentLag()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->trip(JLcom/sleepycat/je/DatabaseException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1469
    monitor-exit p0

    return-void

    .line 1452
    .end local v0    # "lastReplayedTxn":Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized trackVLSN()V
    .locals 4

    monitor-enter p0

    .line 1472
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$900(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/Replay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replay;->getLastReplayedVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lastReplayedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1473
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->vlsnLatches:Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->trip(JLcom/sleepycat/je/DatabaseException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    monitor-exit p0

    return-void

    .line 1471
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
