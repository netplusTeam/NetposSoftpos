.class public Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
.super Ljava/lang/Object;
.source "ReplicatedEnvironmentStats.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final VALUE_UNAVAILABLE:I = -0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private feederTxnStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private replayStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private final tipsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackerStats:Lcom/sleepycat/je/utilint/StatGroup;

.field private vlsnIndexStats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->tipsMap:Ljava/util/Map;

    .line 195
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/StatsConfig;)V
    .locals 5
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->tipsMap:Ljava/util/Map;

    .line 173
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    .line 174
    .local v0, "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v1

    .line 176
    .local v1, "feederManager":Lcom/sleepycat/je/rep/impl/node/FeederManager;
    invoke-virtual {v1, p2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getFeederManagerStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 177
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getFeederTxns()Lcom/sleepycat/je/rep/stream/FeederTxns;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sleepycat/je/rep/stream/FeederTxns;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederTxnStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 179
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReplica()Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v2

    .line 180
    .local v2, "replica":Lcom/sleepycat/je/rep/impl/node/Replica;
    invoke-virtual {v2, p2}, Lcom/sleepycat/je/rep/impl/node/Replica;->getReplayStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 181
    invoke-virtual {v2, p2}, Lcom/sleepycat/je/rep/impl/node/Replica;->getTrackerStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->trackerStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 182
    invoke-virtual {v1, p2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getProtocolStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 183
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->vlsnIndexStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 185
    iget-object v3, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v2, p2}, Lcom/sleepycat/je/rep/impl/node/Replica;->getProtocolStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 186
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->addMessageRateStats()V

    .line 187
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->addBytesRateStats()V

    .line 188
    return-void
.end method

.method private addBytesRateStats()V
    .locals 22

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_BYTES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v9, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v4, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_BYTES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 317
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v9, v4

    :goto_0
    nop

    .line 318
    .local v9, "numerator":J
    iget-object v1, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v4, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_READ_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v1

    if-nez v1, :cond_1

    move-wide v11, v2

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v4, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_READ_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 319
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v11, v4

    :goto_1
    nop

    .line 321
    .local v11, "denominator":J
    new-instance v1, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    iget-object v7, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v8, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->BYTES_READ_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    const-wide/32 v13, 0x3b9aca00

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;JJJ)V

    .line 329
    .local v1, "bytesReadRate":Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
    iget-object v4, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v5, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_BYTES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v4

    if-nez v4, :cond_2

    move-wide/from16 v16, v2

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v5, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_BYTES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 330
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide/from16 v16, v4

    :goto_2
    nop

    .line 331
    .end local v9    # "numerator":J
    .local v16, "numerator":J
    iget-object v4, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v5, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_WRITE_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v4

    if-nez v4, :cond_3

    move-wide/from16 v18, v2

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v3, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_WRITE_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 332
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide/from16 v18, v2

    :goto_3
    nop

    .line 334
    .end local v11    # "denominator":J
    .local v18, "denominator":J
    new-instance v2, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    iget-object v14, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v15, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->BYTES_WRITE_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    const-wide/32 v20, 0x3b9aca00

    move-object v13, v2

    invoke-direct/range {v13 .. v21}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;JJJ)V

    .line 341
    .local v2, "bytesWriteRate":Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
    return-void
.end method

.method private addMessageRateStats()V
    .locals 22

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v9, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v4, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 286
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v9, v4

    :goto_0
    nop

    .line 287
    .local v9, "numerator":J
    iget-object v1, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v4, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_READ_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v1

    if-nez v1, :cond_1

    move-wide v11, v2

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v4, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_READ_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 288
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v11, v4

    :goto_1
    nop

    .line 290
    .local v11, "denominator":J
    new-instance v1, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    iget-object v7, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v8, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->MESSAGE_READ_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    const-wide/32 v13, 0x3b9aca00

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;JJJ)V

    .line 298
    .local v1, "msgReadRate":Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
    iget-object v4, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v5, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v4

    if-nez v4, :cond_2

    move-wide/from16 v16, v2

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v5, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 299
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide/from16 v16, v4

    :goto_2
    nop

    .line 300
    .end local v9    # "numerator":J
    .local v16, "numerator":J
    iget-object v4, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v5, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_WRITE_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v4

    if-nez v4, :cond_3

    move-wide/from16 v18, v2

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v3, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_WRITE_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 301
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide/from16 v18, v2

    :goto_3
    nop

    .line 303
    .end local v11    # "denominator":J
    .local v18, "denominator":J
    new-instance v2, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    iget-object v14, v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v15, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->MESSAGE_WRITE_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    const-wide/32 v20, 0x3b9aca00

    move-object v13, v2

    invoke-direct/range {v13 .. v21}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;JJJ)V

    .line 310
    .local v2, "msgWriteRate":Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
    return-void
.end method

.method public static getStatGroupTitles()[Ljava/lang/String;
    .locals 6

    .line 272
    const-string v0, "FeederManager"

    const-string v1, "FeederTxns"

    const-string v2, "BinaryProtocol"

    const-string v3, "Replay"

    const-string v4, "ConsistencyTracker"

    const-string v5, "VLSNIndex"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAckWaitMs()J
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederTxnStats:Lcom/sleepycat/je/utilint/StatGroup;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->ACK_WAIT_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 593
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 591
    :goto_0
    return-wide v0
.end method

.method public getElapsedTxn95Ms()J
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_95_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getElapsedTxn99Ms()J
    .locals 2

    .line 910
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_99_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getElapsedTxnAvgMs()J
    .locals 2

    .line 890
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_AVG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getElapsedTxnMaxMs()J
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_MAX_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastCommitTimestamp()J
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederTxnStats:Lcom/sleepycat/je/utilint/StatGroup;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->LAST_COMMIT_TIMESTAMP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 617
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 615
    :goto_0
    return-wide v0
.end method

.method public getLastCommitVLSN()J
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederTxnStats:Lcom/sleepycat/je/utilint/StatGroup;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->LAST_COMMIT_VLSN:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 605
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 603
    :goto_0
    return-wide v0
.end method

.method public getNFeedersCreated()I
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->N_FEEDERS_CREATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNFeedersShutdown()I
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->N_FEEDERS_SHUTDOWN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNMaxReplicaLag()J
    .locals 2

    .line 370
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNMaxReplicaLagName()Ljava/lang/String;
    .locals 1

    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNProtocolBytesRead()J
    .locals 2

    .line 934
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_BYTES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNProtocolBytesWritten()J
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_BYTES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNProtocolEntriesWrittenOldVersion()J
    .locals 2

    .line 1081
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_ENTRIES_WRITTEN_OLD_VERSION:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNProtocolMessageBatches()J
    .locals 2

    .line 982
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGE_BATCHES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNProtocolMessagesBatched()J
    .locals 2

    .line 971
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_BATCHED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNProtocolMessagesRead()J
    .locals 2

    .line 945
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNProtocolMessagesWritten()J
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReplayAborts()J
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_ABORTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReplayCommitAcks()J
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReplayCommitNoSyncs()J
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_NO_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReplayCommitSyncs()J
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReplayCommitWriteNoSyncs()J
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_WRITE_NO_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReplayCommits()J
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReplayGroupCommitMaxExceeded()J
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMIT_MAX_EXCEEDED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReplayGroupCommitTimeouts()J
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMIT_TIMEOUTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReplayGroupCommitTxns()J
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMIT_TXNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReplayGroupCommits()J
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReplayLNs()J
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNReplayNameLNs()J
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_NAME_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNTxnsAcked()J
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederTxnStats:Lcom/sleepycat/je/utilint/StatGroup;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->TXNS_ACKED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 555
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 553
    :goto_0
    return-wide v0
.end method

.method public getNTxnsNotAcked()J
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederTxnStats:Lcom/sleepycat/je/utilint/StatGroup;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->TXNS_NOT_ACKED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 567
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 565
    :goto_0
    return-wide v0
.end method

.method public getOutputQueue95DelayMs()J
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_95_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputQueue99DelayMs()J
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_99_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputQueueAvgDelayMs()J
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_AVG_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputQueueMaxDelayMs()J
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_MAX_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtocolBytesReadRate()J
    .locals 3

    .line 1056
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->BYTES_READ_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 1057
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getIntegralLongAvgStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    move-result-object v0

    .line 1058
    .local v0, "rstat":Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->get()Lcom/sleepycat/je/utilint/IntegralLongAvg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public getProtocolBytesWriteRate()J
    .locals 3

    .line 1070
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->BYTES_WRITE_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 1071
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getIntegralLongAvgStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    move-result-object v0

    .line 1072
    .local v0, "rstat":Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->get()Lcom/sleepycat/je/utilint/IntegralLongAvg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public getProtocolMessageReadRate()J
    .locals 3

    .line 1028
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->MESSAGE_READ_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 1029
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getIntegralLongAvgStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    move-result-object v0

    .line 1030
    .local v0, "rstat":Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->get()Lcom/sleepycat/je/utilint/IntegralLongAvg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public getProtocolMessageWriteRate()J
    .locals 3

    .line 1042
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->MESSAGE_WRITE_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 1043
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getIntegralLongAvgStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    move-result-object v0

    .line 1044
    .local v0, "rstat":Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->get()Lcom/sleepycat/je/utilint/IntegralLongAvg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public getProtocolReadNanos()J
    .locals 2

    .line 1005
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_READ_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtocolWriteNanos()J
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_WRITE_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReplayElapsedTxnTime()J
    .locals 2

    .line 712
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getReplayLatestCommitLagMs()J
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->LATEST_COMMIT_LAG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReplayMaxCommitProcessingNanos()J
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->MAX_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReplayMinCommitProcessingNanos()J
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->MIN_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReplayQueue95DelayMs()J
    .locals 2

    .line 812
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_95_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReplayQueue99DelayMs()J
    .locals 2

    .line 823
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_99_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReplayQueueAvgDelayMs()J
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_AVG_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReplayQueueMaxDelayMs()J
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_MAX_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReplayTotalCommitProcessingNanos()J
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->TOTAL_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReplica95DelayMsMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_95_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 434
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    .line 435
    .local v0, "stat":Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    if-nez v0, :cond_0

    .line 436
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1

    .line 438
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->getMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public getReplica99DelayMsMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_99_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 454
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    .line 455
    .local v0, "stat":Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    if-nez v0, :cond_0

    .line 456
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1

    .line 458
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->getMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public getReplicaAvgDelayMsMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_AVG_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 414
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LongAvgMapStat;

    .line 415
    .local v0, "stat":Lcom/sleepycat/je/utilint/LongAvgMapStat;
    if-nez v0, :cond_0

    .line 416
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1

    .line 418
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongAvgMapStat;->getMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public getReplicaDelayMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_DELAY_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 394
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LongDiffMapStat;

    .line 395
    .local v0, "stat":Lcom/sleepycat/je/utilint/LongDiffMapStat;
    if-nez v0, :cond_0

    .line 396
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1

    .line 398
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongDiffMapStat;->getMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public getReplicaLastCommitTimestampMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_LAST_COMMIT_TIMESTAMP_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 490
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    .line 491
    .local v0, "stat":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    if-nez v0, :cond_0

    .line 492
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1

    .line 494
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->getMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public getReplicaLastCommitVLSNMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_LAST_COMMIT_VLSN_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 506
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    .line 507
    .local v0, "stat":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    if-nez v0, :cond_0

    .line 508
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1

    .line 510
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->getMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public getReplicaMaxDelayMsMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_MAX_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 474
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LongMaxMapStat;

    .line 475
    .local v0, "stat":Lcom/sleepycat/je/utilint/LongMaxMapStat;
    if-nez v0, :cond_0

    .line 476
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1

    .line 478
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongMaxMapStat;->getMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public getReplicaVLSNLagMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_VLSN_LAG_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 522
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LongDiffMapStat;

    .line 523
    .local v0, "stat":Lcom/sleepycat/je/utilint/LongDiffMapStat;
    if-nez v0, :cond_0

    .line 524
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1

    .line 526
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongDiffMapStat;->getMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public getReplicaVLSNRateMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_VLSN_RATE_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 538
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    .line 539
    .local v0, "stat":Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    if-nez v0, :cond_0

    .line 540
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1

    .line 542
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->getMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public getStatGroups()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederTxnStats:Lcom/sleepycat/je/utilint/StatGroup;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-eqz v0, :cond_0

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/sleepycat/je/utilint/StatGroup;

    iget-object v8, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v8, v7, v5

    aput-object v0, v7, v4

    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v0, v7, v3

    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->trackerStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v0, v7, v2

    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v0, v7, v1

    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->vlsnIndexStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v0, v7, v6

    .line 203
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v6, [Lcom/sleepycat/je/utilint/StatGroup;

    iget-object v6, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v6, v0, v5

    iget-object v5, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->trackerStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->vlsnIndexStats:Lcom/sleepycat/je/utilint/StatGroup;

    aput-object v2, v0, v1

    .line 209
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0
.end method

.method public getStatGroupsMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v0, "statmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->trackerStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->trackerStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->vlsnIndexStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->vlsnIndexStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederTxnStats:Lcom/sleepycat/je/utilint/StatGroup;

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederTxnStats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_0
    return-object v0
.end method

.method public getTips()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1154
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->getStatGroups()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/utilint/StatGroup;

    .line 1155
    .local v1, "group":Lcom/sleepycat/je/utilint/StatGroup;
    iget-object v2, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->tipsMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatGroup;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatGroup;->getStats()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/StatDefinition;

    .line 1157
    .local v3, "def":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v4, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->tipsMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/StatDefinition;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    .end local v3    # "def":Lcom/sleepycat/je/utilint/StatDefinition;
    goto :goto_1

    .line 1159
    .end local v1    # "group":Lcom/sleepycat/je/utilint/StatGroup;
    :cond_0
    goto :goto_0

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->tipsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getTotalTxnMs()J
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederTxnStats:Lcom/sleepycat/je/utilint/StatGroup;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->TOTAL_TXN_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 580
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 578
    :goto_0
    return-wide v0
.end method

.method public getTrackerLagConsistencyWaitMs()J
    .locals 2

    .line 1101
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->trackerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_LAG_CONSISTENCY_WAIT_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackerLagConsistencyWaits()J
    .locals 2

    .line 1092
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->trackerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_LAG_CONSISTENCY_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackerVLSNConsistencyWaitMs()J
    .locals 2

    .line 1119
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->trackerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_VLSN_CONSISTENCY_WAIT_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackerVLSNConsistencyWaits()J
    .locals 2

    .line 1110
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->trackerStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_VLSN_CONSISTENCY_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVLSNRate()J
    .locals 3

    .line 628
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederTxnStats:Lcom/sleepycat/je/utilint/StatGroup;

    if-nez v0, :cond_0

    .line 629
    const-wide/16 v0, -0x1

    return-wide v0

    .line 631
    :cond_0
    sget-object v1, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->VLSN_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 632
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LongAvgRateStat;

    .line 633
    .local v0, "stat":Lcom/sleepycat/je/utilint/LongAvgRateStat;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongAvgRateStat;->get()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public setStatGroup(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 2
    .param p1, "sg"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 239
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeederManager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederManagerStats:Lcom/sleepycat/je/utilint/StatGroup;

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Replay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->replayStats:Lcom/sleepycat/je/utilint/StatGroup;

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConsistencyTracker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->trackerStats:Lcom/sleepycat/je/utilint/StatGroup;

    goto :goto_0

    .line 248
    :cond_2
    nop

    .line 249
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v1, "BinaryProtocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->protocolStats:Lcom/sleepycat/je/utilint/StatGroup;

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VLSNIndex"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->vlsnIndexStats:Lcom/sleepycat/je/utilint/StatGroup;

    goto :goto_0

    .line 256
    :cond_4
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeederTxns"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->feederTxnStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 263
    :goto_0
    return-void

    .line 260
    :cond_5
    const-string v0, "Internal error stat context is not registered"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1130
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->getStatGroups()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/StatGroup;

    .line 1131
    .local v2, "group":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/StatGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    .end local v2    # "group":Lcom/sleepycat/je/utilint/StatGroup;
    goto :goto_0

    .line 1134
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toStringVerbose()Ljava/lang/String;
    .locals 4

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1144
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->getStatGroups()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/StatGroup;

    .line 1145
    .local v2, "group":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/StatGroup;->toStringVerbose()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    .end local v2    # "group":Lcom/sleepycat/je/utilint/StatGroup;
    goto :goto_0

    .line 1148
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
