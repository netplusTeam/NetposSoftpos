.class public Lcom/sleepycat/je/rep/stream/FeederTxns;
.super Ljava/lang/Object;
.source "FeederTxns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MOVING_AVG_PERIOD_MILLIS:J = 0x2710L


# instance fields
.field private final ackWaitMs:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final lastCommitTimestamp:Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;

.field private final lastCommitVLSN:Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private final statistics:Lcom/sleepycat/je/utilint/StatGroup;

.field private final totalTxnMs:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final txnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final txnsAcked:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final txnsNotAcked:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final vlsnRate:Lcom/sleepycat/je/utilint/LongAvgRateStat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 7
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->txnMap:Ljava/util/Map;

    .line 76
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 77
    new-instance v2, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v0, "FeederTxns"

    const-string v1, "FeederTxns statistics"

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    .line 79
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v1, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->TXNS_ACKED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->txnsAcked:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 80
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v1, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->TXNS_NOT_ACKED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->txnsNotAcked:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 81
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v1, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->ACK_WAIT_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->ackWaitMs:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 82
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v1, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->TOTAL_TXN_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->totalTxnMs:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 83
    new-instance v0, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;

    sget-object v1, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->LAST_COMMIT_VLSN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->lastCommitVLSN:Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;

    .line 85
    new-instance v0, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;

    sget-object v1, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->LAST_COMMIT_TIMESTAMP:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->lastCommitTimestamp:Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;

    .line 87
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvgRateStat;

    sget-object v3, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->VLSN_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2710

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/utilint/LongAvgRateStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->vlsnRate:Lcom/sleepycat/je/utilint/LongAvgRateStat;

    .line 89
    return-void
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/stream/FeederTxns;)Lcom/sleepycat/je/utilint/AtomicLongStat;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/FeederTxns;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->txnsAcked:Lcom/sleepycat/je/utilint/AtomicLongStat;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/stream/FeederTxns;)Lcom/sleepycat/je/utilint/AtomicLongStat;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/FeederTxns;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->ackWaitMs:Lcom/sleepycat/je/utilint/AtomicLongStat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/rep/stream/FeederTxns;)Lcom/sleepycat/je/utilint/AtomicLongStat;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/FeederTxns;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->totalTxnMs:Lcom/sleepycat/je/utilint/AtomicLongStat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/rep/stream/FeederTxns;)Lcom/sleepycat/je/utilint/AtomicLongStat;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/FeederTxns;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->txnsNotAcked:Lcom/sleepycat/je/utilint/AtomicLongStat;

    return-object v0
.end method


# virtual methods
.method public awaitReplicaAcks(Lcom/sleepycat/je/rep/txn/MasterTxn;I)V
    .locals 8
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;
    .param p2, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getCommitVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    .line 175
    .local v0, "vlsn":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 176
    .local v2, "ackAwaitStartMs":J
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->lastCommitVLSN:Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;->set(Ljava/lang/Long;)V

    .line 177
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->lastCommitTimestamp:Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;->set(Ljava/lang/Long;)V

    .line 178
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->vlsnRate:Lcom/sleepycat/je/utilint/LongAvgRateStat;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/LongAvgRateStat;->add(JJ)V

    .line 180
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->txnMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;

    .line 181
    .local v4, "txnInfo":Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;
    if-nez v4, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    invoke-static {v4, p2, v2, v3}, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->access$100(Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;IJ)Z

    .line 185
    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->txnMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v5

    .line 187
    .local v5, "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    if-eqz v5, :cond_1

    .line 188
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDurabilityQuorum()Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    move-result-object v6

    invoke-virtual {v6, v4, p2}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->ensureSufficientAcks(Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;I)V

    .line 191
    :cond_1
    return-void
.end method

.method public clearTransactionAcks(Lcom/sleepycat/je/txn/Txn;)V
    .locals 3
    .param p1, "txn"    # Lcom/sleepycat/je/txn/Txn;

    .line 133
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->txnMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public getAckTxn(J)Lcom/sleepycat/je/rep/txn/MasterTxn;
    .locals 2
    .param p1, "txnId"    # J

    .line 124
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->txnMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;

    .line 125
    .local v0, "txnInfo":Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->txn:Lcom/sleepycat/je/rep/txn/MasterTxn;

    :goto_0
    return-object v1
.end method

.method public getLastCommitTimestamp()Lcom/sleepycat/je/utilint/AtomicLongStat;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->lastCommitTimestamp:Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;

    return-object v0
.end method

.method public getLastCommitVLSN()Lcom/sleepycat/je/utilint/AtomicLongStat;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->lastCommitVLSN:Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;

    return-object v0
.end method

.method public getStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    .line 259
    .local v0, "ret":Lcom/sleepycat/je/utilint/StatGroup;
    return-object v0
.end method

.method public getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 268
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    .line 270
    .local v0, "cloneStats":Lcom/sleepycat/je/utilint/StatGroup;
    return-object v0
.end method

.method public getVLSNRate()Lcom/sleepycat/je/utilint/LongAvgRateStat;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->vlsnRate:Lcom/sleepycat/je/utilint/LongAvgRateStat;

    return-object v0
.end method

.method public noteReplicaAck(Lcom/sleepycat/je/rep/impl/RepNodeImpl;J)Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;
    .locals 4
    .param p1, "replica"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .param p2, "txnId"    # J

    .line 147
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 148
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDurabilityQuorum()Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    move-result-object v0

    .line 149
    .local v0, "durabilityQuorum":Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->replicaAcksQualify(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 150
    return-object v2

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->txnMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;

    .line 153
    .local v1, "txnInfo":Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;
    if-nez v1, :cond_1

    .line 154
    return-object v2

    .line 156
    :cond_1
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->countDown()V

    .line 157
    return-object v1
.end method

.method public resetStats()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->clear()V

    .line 264
    return-void
.end method

.method public setupForAcks(Lcom/sleepycat/je/rep/txn/MasterTxn;)V
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;

    .line 110
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getRequiredAckCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;-><init>(Lcom/sleepycat/je/rep/stream/FeederTxns;Lcom/sleepycat/je/rep/txn/MasterTxn;Lcom/sleepycat/je/rep/stream/FeederTxns$1;)V

    .line 115
    .local v0, "txnInfo":Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederTxns;->txnMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;

    .line 116
    .local v1, "prevInfo":Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;
    if-nez v1, :cond_1

    .line 117
    return-void

    .line 116
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method
