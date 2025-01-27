.class Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;
.super Ljava/lang/Object;
.source "Replay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/Replay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupCommit"
.end annotation


# instance fields
.field private final groupCommitIntervalNs:J

.field private limitGroupCommitNs:J

.field private final nGroupCommitMaxExceeded:Lcom/sleepycat/je/utilint/LongStat;

.field private final nGroupCommitTimeouts:Lcom/sleepycat/je/utilint/LongStat;

.field private final nGroupCommitTxns:Lcom/sleepycat/je/utilint/LongStat;

.field private final nGroupCommits:Lcom/sleepycat/je/utilint/LongStat;

.field private nPendingAcks:I

.field private final pendingCommitAcks:[J

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/Replay;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/impl/node/Replay;Lcom/sleepycat/je/dbi/DbConfigManager;)V
    .locals 5
    .param p2, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 1505
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->this$0:Lcom/sleepycat/je/rep/impl/node/Replay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1495
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->limitGroupCommitNs:J

    .line 1506
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_MAX_GROUP_COMMIT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1507
    invoke-virtual {p2, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->pendingCommitAcks:[J

    .line 1509
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nPendingAcks:I

    .line 1511
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_GROUP_COMMIT_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1512
    invoke-virtual {p2, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    int-to-long v0, v0

    .line 1514
    .local v0, "groupCommitIntervalMs":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1515
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->groupCommitIntervalNs:J

    .line 1516
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    .line 1517
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Replay;->access$600(Lcom/sleepycat/je/rep/impl/node/Replay;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMIT_TIMEOUTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nGroupCommitTimeouts:Lcom/sleepycat/je/utilint/LongStat;

    .line 1519
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    .line 1520
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Replay;->access$600(Lcom/sleepycat/je/rep/impl/node/Replay;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMIT_MAX_EXCEEDED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nGroupCommitMaxExceeded:Lcom/sleepycat/je/utilint/LongStat;

    .line 1522
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    .line 1523
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Replay;->access$600(Lcom/sleepycat/je/rep/impl/node/Replay;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMIT_TXNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nGroupCommitTxns:Lcom/sleepycat/je/utilint/LongStat;

    .line 1525
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    .line 1526
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Replay;->access$600(Lcom/sleepycat/je/rep/impl/node/Replay;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object p1

    sget-object v3, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, p1, v3}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nGroupCommits:Lcom/sleepycat/je/utilint/LongStat;

    .line 1527
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/impl/node/Replay;Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/rep/impl/node/Replay$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replay;
    .param p2, "x1"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p3, "x2"    # Lcom/sleepycat/je/rep/impl/node/Replay$1;

    .line 1483
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;-><init>(Lcom/sleepycat/je/rep/impl/node/Replay;Lcom/sleepycat/je/dbi/DbConfigManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;Lcom/sleepycat/je/Durability$SyncPolicy;)Lcom/sleepycat/je/Durability$SyncPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;
    .param p1, "x1"    # Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 1483
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->getImplSyncPolicy(Lcom/sleepycat/je/Durability$SyncPolicy;)Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;JLcom/sleepycat/je/rep/txn/ReplayTxn;Lcom/sleepycat/je/Durability$SyncPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .param p4, "x3"    # Lcom/sleepycat/je/Durability$SyncPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1483
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->bufferAck(JLcom/sleepycat/je/rep/txn/ReplayTxn;Lcom/sleepycat/je/Durability$SyncPolicy;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1483
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->flushPendingAcks(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;J)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;
    .param p1, "x1"    # J

    .line 1483
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->getPollIntervalNs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final bufferAck(JLcom/sleepycat/je/rep/txn/ReplayTxn;Lcom/sleepycat/je/Durability$SyncPolicy;)Z
    .locals 4
    .param p1, "nowNs"    # J
    .param p3, "ackTxn"    # Lcom/sleepycat/je/rep/txn/ReplayTxn;
    .param p4, "txnSyncPolicy"    # Lcom/sleepycat/je/Durability$SyncPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1586
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-eq p4, v0, :cond_0

    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nPendingAcks:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->pendingCommitAcks:[J

    iget v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nPendingAcks:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nPendingAcks:I

    invoke-virtual {p3}, Lcom/sleepycat/je/rep/txn/ReplayTxn;->getId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1593
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nPendingAcks:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1595
    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->groupCommitIntervalNs:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->limitGroupCommitNs:J

    goto :goto_0

    .line 1597
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->flushPendingAcks(J)V

    .line 1599
    :goto_0
    return v1

    .line 1588
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private final flushPendingAcks(J)V
    .locals 6
    .param p1, "nowNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1611
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nPendingAcks:I

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->pendingCommitAcks:[J

    array-length v1, v1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->limitGroupCommitNs:J

    .line 1613
    invoke-static {p1, p2, v0, v1}, Lcom/sleepycat/je/utilint/NanoTimeUtil;->compare(JJ)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_2

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nGroupCommits:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1620
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nGroupCommitTxns:Lcom/sleepycat/je/utilint/LongStat;

    iget v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nPendingAcks:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1621
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->limitGroupCommitNs:J

    invoke-static {p1, p2, v0, v1}, Lcom/sleepycat/je/utilint/NanoTimeUtil;->compare(JJ)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1622
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nGroupCommitTimeouts:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    goto :goto_0

    .line 1623
    :cond_1
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nPendingAcks:I

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->pendingCommitAcks:[J

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1624
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nGroupCommitMaxExceeded:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1628
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->this$0:Lcom/sleepycat/je/rep/impl/node/Replay;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replay;->access$700(Lcom/sleepycat/je/rep/impl/node/Replay;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogManager;->flushSync()V

    .line 1631
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nPendingAcks:I

    if-ge v0, v1, :cond_3

    .line 1632
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->this$0:Lcom/sleepycat/je/rep/impl/node/Replay;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->pendingCommitAcks:[J

    aget-wide v4, v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/sleepycat/je/rep/impl/node/Replay;->queueAck(J)V

    .line 1633
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->pendingCommitAcks:[J

    aput-wide v2, v1, v0

    .line 1631
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1636
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nPendingAcks:I

    .line 1637
    iput-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->limitGroupCommitNs:J

    .line 1638
    return-void

    .line 1615
    :cond_4
    :goto_2
    return-void
.end method

.method private getImplSyncPolicy(Lcom/sleepycat/je/Durability$SyncPolicy;)Lcom/sleepycat/je/Durability$SyncPolicy;
    .locals 1
    .param p1, "txnSyncPolicy"    # Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 1565
    sget-object v0, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private getPollIntervalNs(J)J
    .locals 6
    .param p1, "defaultNs"    # J

    .line 1546
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->nPendingAcks:I

    if-nez v0, :cond_0

    .line 1547
    return-wide p1

    .line 1549
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1551
    .local v0, "now":J
    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->limitGroupCommitNs:J

    sub-long/2addr v2, v0

    .line 1552
    .local v2, "interval":J
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method private isEnabled()Z
    .locals 1

    .line 1533
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$GroupCommit;->pendingCommitAcks:[J

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
